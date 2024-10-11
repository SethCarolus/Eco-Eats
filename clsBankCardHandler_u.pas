unit clsBankCardHandler_u;

interface
  uses iBankCardHandler_u, iBankCard_u;
    type
      TBankCardHandler = class(TInterfacedObject, IBankCardHandler)
        public
          function getBankCardWith(const accountNumber : string) : IBankCard;
          procedure insertBankCard(const bankCard : IBankCard);
          function getBankCardBy(const id: Integer): IBankCard;
          procedure updateBankCard(const bankCard: IBankCard);
      end;

implementation
  uses clsFactory_u, SysUtils, dmMain_u;

{ BankCardHandler }

function TBankCardHandler.getBankCardBy(const id: Integer): IBankCard;
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

function TBankCardHandler.getBankCardWith(
  const accountNumber: string): IBankCard;
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

procedure TBankCardHandler.insertBankCard(const bankCard: IBankCard);
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
procedure TBankCardHandler.updateBankCard(const bankCard: IBankCard);
begin
  with dmMain.tblBankCard do
    begin
      Open;
      First;
      while not Eof do
        begin
          if (FieldByName('id').AsInteger = bankCard.Id) then
            begin
              Edit;
              FieldByName('name_on_card').AsString := bankCard.NameOnCard;
              FieldByName('account_number').AsString := bankCard.AccountNumber;
              FieldByName('expirey_date').AsDateTime := bankCard.ExpireyDate;
              FieldByName('security_code').AsString := bankCard.SecurityCode;
              FieldByName('balance').AsCurrency := bankCard.Balance;
              FieldByName('bank_id').AsInteger := bankCard.BankId;
              Post;
              Break;
            end;
          Next;
        end;
        Close;
    end;
end;

end.
