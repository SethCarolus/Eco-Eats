unit clsAdminHandler_u;

interface
  uses iAdminHandler_u, iAdmin_u;
    type
      TAdminHandler = class(TInterfacedObject, IAdminHandler)

        public
          function getAdmin(const username : string) : IAdmin;      
      end;
implementation

  uses SysUtils, dmMain_u, clsFactory_u;

{ TAdminHandler }

function TAdminHandler.getAdmin(const username: string): IAdmin;
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

end.
