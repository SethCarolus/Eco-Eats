unit clsSupplierHandler_u;

interface
  uses iSupplierHandler_u, iSupplier_u;
    type
      TSupplierHandler = class(TInterfacedObject, ISupplierHandler)
        public
          constructor create();
          function getSupplierBy(const id: Integer): ISupplier;overload;
          function getSupplierBy(const username: string): ISupplier;overload;
      end;

implementation
  uses SysUtils, dmMain_u, clsFactory_u;

{ TSupplierHandler }

constructor TSupplierHandler.create();
begin
end;

function TSupplierHandler.getSupplierBy(const id: Integer): ISupplier;
begin
  with dmMain.qrySupplier do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblSupplier WHERE id = ' + id.ToString();
      Open;
      Result := TFactory.createSupplier(FieldByName('id').AsInteger,
      FieldByName('username').AsString,
      FieldByName('display_name').AsString);
    end;
end;

function TSupplierHandler.getSupplierBy(const username: string): ISupplier;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null');

  with dmMain.qrySupplier do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblSupplier WHERE username = ' + QuotedStr(username);
      ExecSQL;
      Open;
      Result := TFactory.createSupplier(FieldByName('ID').AsInteger,
                FieldByName('username').AsString,
                FieldByName('display_name').AsString);
    end;
end;
end.
