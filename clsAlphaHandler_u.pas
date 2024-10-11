unit clsAlphaHandler_u;

interface
  uses IAlphaHandler_u, iAlpha_u;
    type
      TAlphaHandler = class(TInterfacedObject, IAlphaHandler)
        function getAlphaBy(const username : string) : IAlpha;
      end;

implementation
  uses dmMain_u, SysUtils, clsFactory_u;

{ TAlphaHandler }

function TAlphaHandler.getAlphaBy(const username: string): IAlpha;
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

end.
