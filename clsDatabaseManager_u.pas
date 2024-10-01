unit clsDatabaseManager_u;

interface
  uses dmMain_u, global_u, iDatabaseManager_u, iCustomer_u, clsFactory_u, iAdmin_u, iSupplier_u, iAlpha_u;

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
    end;

implementation

uses SysUtils;

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
      Result := TFactory.CreateAlpha(FieldByName('ID').AsInteger, FieldByName('username').AsString);
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
      Result := TFactory.createCustomer(FieldByName('Id').AsInteger
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

function TDatabaseManager.getUserType(const username: string): TUserType;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null');
    
  with dmMain.qryCustomer do
    begin
      Close;
      SQL.Text := 'SELECT * FROM tblCustomer WHERE username = ' + QuotedStr(username);
      ExecSQL;
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
      ExecSQL;
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
      ExecSQL;
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
      ExecSQL;
      Open;

      if (RecordCount <> 0) then
        begin
          Result := utAlpha;
          Exit;
        end;
    end;

    Result := utInvalid;

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
            ExecSQL;
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
            ExecSQL;
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
            ExecSQL;
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
            ExecSQL;
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
