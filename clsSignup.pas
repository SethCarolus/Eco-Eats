unit clsSignup;

interface
  uses iSignup_u, iBank_u, Generics.Collections, iCustomer_u,
   iBankCard_u, iBankCardHandler_u, ICustomerHandler_u, iBankHandler_u;
  type
    TSignup = class(TInterfacedObject, ISignup)
      private
        fBankCardHandler: IBankCardHandler;
        fCustomerHandler: ICustomerHandler;
        fBankHandler:  IBankHandler;
    public
      constructor create(const bankCardHandler: IBankCardHandler;
                          const customerHandler: ICustomerHandler;
                          const bankHandler: IBankHandler);
      function getAllBanks() :  TList<IBank>;
      procedure insertCustomer(const customer : iCustomer; const password : string);
      procedure insertBankCard(const bankCard : IBankCard);
      function getBankCardWith(const accountNumber : string) : IBankCard;
    end;

implementation

{ TSignup }

constructor TSignup.create(const bankCardHandler: IBankCardHandler;
                    const customerHandler: ICustomerHandler;
                    const bankHandler: IBankHandler);
begin
   fBankCardHandler := bankCardHandler;
   fCustomerHandler := customerHandler;
   fBankHandler := bankHandler;
end;

function TSignup.getAllBanks: TList<IBank>;
begin
  Result := fBankHandler.getAllBanks();
end;

function TSignup.getBankCardWith(const accountNumber : string): IBankCard;
begin
  Result := fBankCardHandler.getBankCardWith(accountNumber);
end;

procedure TSignup.insertBankCard(const bankCard: IBankCard);
begin
  fBankCardHandler.insertBankCard(bankCard);
end;


procedure TSignup.insertCustomer(const customer: iCustomer;
  const password: string);
begin
  fCustomerHandler.insertCustomer(customer, password);
end;

end.
