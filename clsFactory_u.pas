unit clsFactory_u;

interface
  uses iLogin_u, iCustomer_u, iAdmin_u, iSupplier_u,
    iAlpha_u, iBankCard_u, iBank_u, iSignup_u, ITimer_u, iLogout_u,
    IUserHabitHandler_u, iProduct_u, iProductHandler_u, iSupplierHandler_u,
    iCart_u, iPaymentHandler_u, iUserHandler_u, iAdminHandler_u,
    IAlphaHandler_u, ICustomerHandler_u, iBankCardHandler_u, iBankHandler_u;
  type
    TFactory = class

    // Data Objects
    class function createCustomer(const id: Integer; const username : string; const firstName : string;
                                  const lastName : string; const profilePicture : string; const bankCardId : Integer) : iCustomer;
    class function createAdmin(const id : Integer; const username : string) : iAdmin;
    class function createSupplier(const id: Integer; const username: string;
                              const displayName: string) : iSupplier;
    class function createAlpha(const id : Integer; const username : string) : iAlpha;
    class function createBankCard(const id: integer; const accountNumber : string;
                            const nameOnCard: string;
                            const expireyDate: TDateTime;
                            const securityCode: string; const balance: Double;
                            const bankId: Integer): IBankCard;
    class function createBank(const id: Integer; const shortName: string;
                            const longName: string; const phoneNumber: string) : IBank;
    class function createProduct(id: Integer; name: string; description: string;
                              price: Double; quantity: UInt32; picture: string;
                              supplierId: Integer): IProduct;

    // Handlers
    class function createProductHandler(): IProductHandler;
    class function createSupplierHandler(): ISupplierHandler;
    class function createUserHandler(): IUserHandler;
    class function createCustomerHandler(): ICustomerHandler;
    class function createAdminHandler(): IAdminHandler;
    class function createAlphaHandler(): IAlphaHandler;
    class function createBankCardHandler(): IBankCardHandler;
    class function createBankHandler(): IBankHandler;
    class function createUserHabitHandler(): IUserHabitHandler;
    class function createPaymentHandler():IPaymentHandler;


    // Other objects
    class function createLogin(): ILogin;
    class function createSignup(): ISignup;
    class function createTimer(): ITimer;
    class function createLogout(): ILogout;
    class function createCart(): ICart;


  end;

implementation
  uses SysUtils, clsMockLogin_u , clsLogin_u,
  clsCustomer_u, clsAdmin_u, clsSupplier_u, clsAlpha_u, clsBankCard_u,
  clsBank_u, clsSignup, clsTimer_u, clsLogout_u, clsUserHabitHandler_u,
  clsProduct_u, clsProductHandler_u, clsSupplierHandler_u, clsCart_u,
  clsPaymentHandler_u, clsUserHandler_u, clsCustomerHandler_u,
  clsAdminHandler_u, clsAlphaHandler_u, clsBankCardHandler_u,
  clsBankHandler_u;
{ Factory }

class function TFactory.createAdmin(const id : Integer; const username : string): iAdmin;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');
  Result := TAdmin.create(id, username);
end;

class function TFactory.createAdminHandler: iAdminHandler;
begin
  Result := TAdminHandler.create();
end;

class function TFactory.createAlpha(const id: Integer;
  const username: string): iAlpha;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');

  Result := TAlpha.create(id, username);
end;

class function TFactory.createAlphaHandler: IAlphaHandler;
begin
  Result := TAlphaHandler.create();
end;

class function TFactory.createBank(const id: Integer; const shortName, longName,
  phoneNumber: string): IBank;
begin
  Result := TBank.create(id, shortName, longName, phoneNumber);
end;

class function TFactory.createBankCard(const id: integer;
  const accountNumber : string;
  const nameOnCard: string; const expireyDate: TDateTime;
  const securityCode: string; const balance: Double;
  const bankId: Integer): IBankCard;
begin
    Result := TBankCard.Create(id, accountNumber ,nameOnCard, expireyDate ,securityCode, balance, bankId);
end;

class function TFactory.createBankCardHandler: IBankCardHandler;
begin
  Result := TBankCardHandler.create();
end;

class function TFactory.createBankHandler: IBankHandler;
begin
  Result := TBankHandler.create();
end;

class function TFactory.createCart: ICart;
begin
  Result := TCart.create();
end;

class function TFactory.createCustomer(const id: Integer;const username, firstName,
  lastName, profilePicture: string; const bankCardId: Integer): iCustomer;
begin
  if (string.IsNullOrWhiteSpace(username)) then raise EArgumentNilException.Create('username cannot be null or whitespace');
  if (string.IsNullOrWhiteSpace(firstName)) then raise EArgumentNilException.Create('firstName cannot be null or whitespace');
  if (string.IsNullOrWhiteSpace(lastName)) then raise EArgumentNilException.Create('lastName cannot be null or whitespace');
  if (string.IsNullOrWhiteSpace(profilePicture)) then raise EArgumentNilException.Create('profilePicture cannot be null or whitespace');

  Result := TCustomer.create(id, username, firstName, lastName, profilePicture, bankCardId);
end;

class function TFactory.createCustomerHandler: ICustomerHandler;
begin
  Result := TCustomerHandler.create(createUserHandler());
end;

class function TFactory.createLogin: ILogin;
begin
    Result := TLogin.create(createUserHandler(), createCustomerHandler(),
                            createAdminHandler(), createAlphaHandler(),
                            createSupplierHandler(), createBankCardHandler(),
                            createBankHandler());
end;

class function TFactory.createLogout: ILogout;
begin
  Result := TLogout.create(createUserHabitHandler());
end;

class function TFactory.createPaymentHandler(): IPaymentHandler;
begin
  Result := TPaymentHandler.create(createProductHandler(), createBankCardHandler());
end;

class function TFactory.createProduct(id: Integer; name: string; description: string;
                              price: Double; quantity: UInt32; picture: string;
                              supplierId: Integer): IProduct;
begin
  Result := TProduct.create(id, name, description, price, quantity, picture ,supplierId);
end;

class function TFactory.createProductHandler: IProductHandler;
begin
  Result := TProductHandler.create();
end;

class function TFactory.createSignup: ISignup;
begin
  Result := TSignup.create(createBankCardHandler(),
                            createCustomerHandler(),
                            createBankHandler());
end;

class function TFactory.createSupplier(const id: Integer; const username: string;
                              const displayName: string): iSupplier;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');
  if (string.IsNullOrEmpty(displayName)) then
    raise Exception.Create('displayName cannot be null or empty');
  Result := TSupplier.Create(id, username, displayName);
end;

class function TFactory.createSupplierHandler: ISupplierHandler;
begin
  Result := TSupplierHandler.create();
end;

class function TFactory.createTimer: ITimer;
begin
  Result := TTimer.create();
end;

class function TFactory.createUserHabitHandler: IUserHabitHandler;
begin
   Result := TUserHabitHandler.create();
end;

class function TFactory.createUserHandler: IUserHandler;
begin
  Result := TUserHandler.Create();
end;

end.
