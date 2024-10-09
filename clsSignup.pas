unit clsSignup;

interface
  uses iSignup_u, iBank_u, iDatabaseManager_u ,Generics.Collections, iCustomer_u,
   iBankCard_u;
  type
    TSignup = class(TInterfacedObject, ISignup)
    fDatabaseManager : IDatabaseManager;
    public
      constructor create(const databaseManager : IDatabaseManager);
      function getAllBanks() :  TList<IBank>;
      procedure insertCustomer(const customer : iCustomer; const password : string);
      procedure insertBankCard(const bankCard : IBankCard);
      function getBankCardWith(const accountNumber : string) : IBankCard;
    end;

implementation

{ TSignup }

constructor TSignup.create(const databaseManager : IDatabaseManager);
begin
  fDatabaseManager := databaseManager;
end;

function TSignup.getAllBanks: TList<IBank>;
begin
  Result := fDatabaseManager.getAllBanks();
end;

function TSignup.getBankCardWith(const accountNumber : string): IBankCard;
begin
  Result := fDatabaseManager.getBankCardWith(accountNumber);
end;

procedure TSignup.insertBankCard(const bankCard: IBankCard);
begin
  fDatabaseManager.insertBankCard(bankCard);
end;


procedure TSignup.insertCustomer(const customer: iCustomer;
  const password: string);
begin
  fDatabaseManager.insertCustomer(customer, password);
end;

end.
