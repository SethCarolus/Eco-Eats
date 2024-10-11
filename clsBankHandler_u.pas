unit clsBankHandler_u;

interface
  uses iBankHandler_u, Generics.Collections, iBank_u;

    type
      TBankHandler = class(TInterfacedObject, IBankHandler)
        function getAllBanks() : TList<IBank>;
        function getBankBy(const id: Integer): IBank;
      end;

implementation
  uses dmMain_u, clsFactory_u, SysUtils;

{ TBankHandler }

function TBankHandler.getAllBanks: TList<IBank>;
begin
  Result := TList<IBank>.Create();
  With dmMain.qryBank do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblBank';
      Open;

      First;
      while not Eof do
        begin
          Result.Add(TFactory.createBank(FieldByName('id').AsInteger, FieldByName('short_name').AsString,
                                          FieldByName('long_name').AsString,
                                          FieldByName('phone_number').AsString));
          Next;
        end;
    end;
end;

function TBankHandler.getBankBy(const id: Integer): IBank;
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

end.
