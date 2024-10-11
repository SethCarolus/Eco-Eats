unit clsUserHandler_u;

interface
  uses iUserHandler_u, global_u;
  type
    TUserHandler = class(TInterfacedObject, IUserHandler)
      public
        constructor create();
        function userExists(const username : string) : Boolean;
        function passwordCorrect(const username : string; const password : string) : Boolean;
        function getUserType(const username : string) : TUserType;
    end;
implementation
  uses dmMain_u, SysUtils;

{ TUserHandler }

constructor TUserHandler.create;
begin

end;

function TUserHandler.getUserType(const username: string): TUserType;
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

function TUserHandler.passwordCorrect(const username,
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

function TUserHandler.userExists(const username: string): Boolean;
begin
  Result := getUserType(username) <> utInvalid;
end;

end.
