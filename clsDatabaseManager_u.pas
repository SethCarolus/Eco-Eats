unit clsDatabaseManager_u;

interface
  uses dmMain_u, global_u, iDatabaseManager_u, iCustomer_u, clsFactory_u, iAdmin_u,
      iSupplier_u, iAlpha_u, iBankCard_u, iBank_u, Generics.Collections, DatabaseExceptions_u;

  type
    TDatabaseManager = class(TInterfacedObject, IDatabaseManager)
      private
        constructor create;
      public
        function userExists(const username : string) : Boolean;
        function passwordCorrect(const username : string; const password : string) : Boolean;
        function getUserType(const username : string) : TUserType;
        function getCustomer(const username : string) : ICustomer;
        function getAdmin(const username : string) : IAdmin;
        function getSupplier(const username : string) : ISupplier;
        function getAlpha(const username : string) : IAlpha;
        function getBankCard(const id: Integer): IBankCard;
        function getBank(const id: Integer): IBank;
        function getAllBanks() : TList<IBank>;
        procedure insertCustomer(const customer : iCustomer; const password : string);
        procedure insertBankCard(const bankCard : IBankCard);
        function getBankCardWith(const accountNumber : string) : IBankCard;
        procedure insertTimeSpentOnApplicatiom(const username: string; elapsedMinutes: Integer);
        function getTimeSpentOnAplicationFor(const username : string) : TList<UInt64>;
    end;

implementation

uses SysUtils, IOUtils;

{ TDatabaseManager }

constructor TDatabaseManager.create;
begin

end;
function TDatabaseManager.getAdmin(const username: string): IAdmin;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  with dmMain.qryAdmin do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblAdmin WHERE username = ' + QuotedStr(username);
      ExecSQL;
      Open;
      Result := TFactory.createAdmin(FieldByName('ID').AsInteger, FieldByName('username').AsString);
    end;
end;

function TDatabaseManager.getAllBanks: TList<IBank>;
begin
  Result := TList<IBank>.Create();
  With dmMain.qryBank do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblBank';
      ExecSQL;
      Open;


      First;
      while not (Eof) do
        begin 
          Result.Add(TFactory.createBank(FieldByName('id').AsInteger, FieldByName('short_name').AsString, 
                                          FieldByName('long_name').AsString, 
                                          FieldByName('phone_number').AsString));
          Next;
        end;
    end;
end;

function TDatabaseManager.getAlpha(const username: string): IAlpha;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  with dmMain.qryAlpha do
    begin
      Close;
      Sql.Text := 'SELECT * FROM  tblAlpha WHERE username = ' + QuotedStr(username);
      ExecSQL;
      Open;
      Result := TFactory.CreateAlpha(FieldByName('id').AsInteger, FieldByName('username').AsString);
    end;
end;

function TDatabaseManager.getBank(const id: Integer): IBank;
begin
  with dmMain.qryBank do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblBank WHERE id = ' + id.ToString();
      ExecSQL;
      Open;
      Result := TFactory.createBank(FieldByName('id').AsInteger,
                                    FieldByName('short_name').AsString,
                                    FieldByName('long_name').AsString,
                                    FieldByName('phone_number').AsString);
    end;
end;

function TDatabaseManager.getBankCard(const id: Integer): IBankCard;
begin
  with dmMain.qryBankCard do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblBankCard WHERE id = ' + id.ToString();
      ExecSQL;
      Open;
      Result := TFactory.createBankCard(FieldByName('id').AsInteger,
                                        FieldByName('account_number').AsString,
                                        FieldByName('name_on_card').AsString,
                                        FieldByName('expirey_date').AsDateTime,
                                        FieldByName('security_code').AsString,
                                        FieldByName('balance').AsCurrency,
                                        FieldByName('bank_id').AsInteger);
    end;
end;

function TDatabaseManager.getBankCardWith(const accountNumber: string): IBankCard;
begin
  if (string.IsNullOrWhiteSpace(accountNumber)) then
    raise Exception.Create('accountNumber cannot be null or whitespace');

  with dmMain.qryBankCard do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblBankCard WHERE account_number = ' +
       QuotedStr(accountNumber);
      ExecSQL;
      Open;
      Result := TFactory.createBankCard(FieldByName('id').AsInteger,
                                        FieldByName('account_number').AsString,
                                        FieldByName('name_on_card').AsString,
                                        FieldByName('expirey_date').AsDateTime,
                                        FieldByName('security_code').AsString,
                                        FieldByName('balance').AsCurrency,
                                        FieldByName('bank_id').AsInteger);
    end;


end;

function TDatabaseManager.getCustomer(const username: string): ICustomer;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  with dmMain.qryCustomer do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblCustomer WHERE username = ' + QuotedStr(username);
      ExecSQL;
      Open;
      Result := TFactory.createCustomer(FieldByName('id').AsInteger
                                        ,FieldByName('username').AsString,
                                        FieldByName('first_name').AsString,
                                        FieldByName('last_name').AsString,
                                        FieldByName('profile_picture').AsString,
                                        FieldByName('bank_card_id').AsInteger);
    end;
end;

function TDatabaseManager.getSupplier(const username: string): ISupplier;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null');

  with dmMain.qrySupplier do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblSupplier WHERE username = ' + QuotedStr(username);
      ExecSQL;
      Open;
      Result := TFactory.createSupplier(FieldByName('ID').AsInteger, FieldByName('username').AsString);
    end;
end;
function TDatabaseManager.getTimeSpentOnAplicationFor(
  const username: string): TList<UInt64>;
begin
  if not (FileExists(FILE_NAME)) then
    raise Exception.Create('File does not exist');

  var textFile : TextFile;
  AssignFile(textFile, FILE_NAME);

  Reset(textFile);

  var sLine : string;

  Result := TList<UInt64>.Create();
  while (not Eof(textFile)) do
    begin
      Readln(textFile, sLine);

      var iPos :=  Pos('#', sLine);

      if not (Copy(sLine, 0, iPos - 1) = username) then
        continue;

      Result.Add(Copy(sLine, Pos('#', sLine) + 1).ToInteger());
    end;
  CloseFile(textFile);
end;

function TDatabaseManager.getUserType(const username: string): TUserType;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null');

  with dmMain.qryCustomer do
    begin
      Close;
      SQL.Text := 'SELECT * FROM tblCustomer WHERE username = ' + QuotedStr(username);
      Open;

      if (RecordCount <> 0) then
        begin
          Result := utCustomer;
          Exit;
        end;
    end;
    
  with dmMain.qrySupplier do
    begin
      Close;
      SQL.Text := 'SELECT * FROM tblSupplier WHERE username = ' + QuotedStr(username);
      Open;

      if (RecordCount <> 0) then
        begin
          Result := utSupplier;
          Exit;
        end;
    end;
    

  with dmMain.qryAdmin do
    begin
      Close;
      SQL.Text := 'SELECT * FROM tblAdmin WHERE username = ' + QuotedStr(username);
      Open;

      if (RecordCount <> 0) then
        begin
          Result := utAdmin;
          Exit;
        end;
    end;

  with dmMain.qryAlpha do
    begin
      Close;
      SQL.Text := 'SELECT * FROM tblAlpha WHERE username = ' + QuotedStr(username);
      Open;

      if (RecordCount <> 0) then
        begin
          Result := utAlpha;
          Exit;
        end;
    end;

    Result := utInvalid;

end;
procedure TDatabaseManager.insertBankCard(const bankCard: IBankCard);
begin
  if (bankCard = nil) then
    raise EArgumentNilException.Create('bankCard cannot be null');

    with dmMain.qryBankCard do
      begin
        Close;
        Sql.Text :=
        '''
            INSERT
            INTO tblBankCard (account_number, name_on_card,expirey_date,security_code,balance, bank_id)
            VALUES (
        ''' + QuotedStr(bankCard.AccountNumber) + ',' + QuotedStr(bankCard.NameOnCard) + ',' +
         '#' + DateToStr(bankCard.ExpireyDate) + '#' + ',' +
          QuotedStr(bankCard.SecurityCode) + ',' +
          bankCard.Balance.ToString + ',' + bankCard.BankId.ToString + ')';
        ExecSQL;
      end;
end;

procedure TDatabaseManager.insertCustomer(const customer: iCustomer;
  const password : string);
begin
  if (customer = nil) then
    raise EArgumentNilException.Create('customer cannot be null');

  if (userExists(customer.Username)) then
    raise EUserExistsException.Create('user already exists with this username');

    with dmMain.tblCustomer do
      begin
        // Make sure the table is active
        if not Active then Open;

        // Start appending a new record
        Append;

        // Assign the values to the fields
        FieldByName('username').AsString := customer.Username;
        FieldByName('password').AsString := password;
        FieldByName('first_name').AsString := customer.FirstName;
        FieldByName('last_name').AsString := customer.LastName;
        FieldByName('profile_picture').AsString := customer.ProfilePicture;
        FieldByName('bank_card_id').AsInteger := customer.BankCardId;

        // Post the new record to save it
        Post;
      end;
end;

procedure TDatabaseManager.insertTimeSpentOnApplicatiom(const username: string;
  elapsedMinutes: Integer);
begin
  TFile.AppendAllText(FILE_NAME, username + '#' + IntToStr(elapsedMinutes) +
                      sLineBreak);
end;

function TDatabaseManager.passwordCorrect(const username,
  password: string): Boolean;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null');

  if (string.IsNullOrEmpty(password)) then
    raise Exception.Create('password cannot be null');

  var userType := getUserType(username);
  

  case userType of
    utInvalid:
      begin
        Result := False;
        Exit;
      end;
    utCustomer:
      begin
        with dmMain.qryCustomer do
          begin
            Close;
            SQL.Text := 'SELECT * FROM tblCustomer WHERE username = ' + QuotedStr(username);
            Open;
            Result := FieldByName('password').AsString = password;
            Exit;
          end;
      end;
    utSupplier:
      begin
        with dmMain.qrySupplier do
          begin
            Close;
            SQL.Text := 'SELECT * FROM tblSupplier WHERE username = ' + QuotedStr(username);
            Open;
            Result := FieldByName('password').AsString = password;
            Exit;
          end;
      end;
    utAdmin:
      begin
        with dmMain.qryAdmin do
          begin
            Close;
            SQL.Text := 'SELECT * FROM tblAdmin WHERE username = ' + QuotedStr(username);
            Open;
            Result := FieldByName('password').AsString = password;
            Exit;
          end;
      end;
    utAlpha:
      begin
        with dmMain.qryAlpha do
          begin
            Close;
            SQL.Text := 'SELECT * FROM tblAlpha WHERE username = ' + QuotedStr(username);
            Open;
            Result := FieldByName('password').AsString = password;
            Exit;
          end;
      end;
  end;
  Result := False;
end;

function TDatabaseManager.userExists(const username: string): Boolean;
begin
  Result := getUserType(username) <> utInvalid;
end;

end.
