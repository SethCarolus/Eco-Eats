unit clsLogin_u;

interface
  uses iLogin_u, global_u, iCustomer_u, iAdmin_u,
    iSupplier_u, iAlpha_u, iBankCard_u, iBank_u,
    iUserHandler_u, ICustomerHandler_u, iAdminHandler_u,
    IAlphaHandler_u, iSupplierHandler_u, iBankCardHandler_u, iBankHandler_u;
  type
    TLogin = class(TInterfacedObject, ILogin)
      private
        fUserHandler: IUserHandler;
        fCustomerHandler: ICustomerHandler;
        fAdminHandler: iAdminHandler;
        fAlphaHandler: IAlphaHandler;
        fSupplierHandler: ISupplierHandler;
        fBankCardHandler: IBankCardHandler;
        fBankHandler: IBankHandler;
        function userExists(const username : string) : Boolean;
        function passwordCorrect(const username : string; const password : string) : Boolean;

       public
        constructor create(const userHandler: IUserHandler;
                          const customerHandler: ICustomerHandler;
                          const adminHandler: IAdminHandler;
                          const alphaHandler: IAlphaHandler;
                          const supplierHandler: ISupplierHandler;
                          const bankCardHandler: IBankCardHandler;
                          const bankHandler: IBankHandler);
        function getUserType(const username : string) : TUserType;
        function getCustomerBy(const username : string) : iCustomer;
        function getAdminBy(const username : string) : IAdmin;
        function getSupplierBy(const username : string) : ISupplier;
        function getAlphaBy(const username : string) : IAlpha;
        function getBankCardBy(const id: Integer): IBankCard;
        function getBankBy(const id: Integer): IBank;

        procedure setupCustomer(const username : string);

    end;
implementation

uses SysUtils, users_u;

{ TLogin }

function TLogin.userExists(const username : string) : Boolean;
begin
  Result := fUserHandler.userExists(username);
end;
constructor TLogin.create(const userHandler: IUserHandler;
  const customerHandler: ICustomerHandler; const adminHandler: IAdminHandler;
  const alphaHandler: IAlphaHandler; const supplierHandler: ISupplierHandler;
  const bankCardHandler: IBankCardHandler; const bankHandler: IBankHandler);
begin
  fUserHandler := userHandler;
  fCustomerHandler := customerHandler;
  fAdminHandler := adminHandler;
  fAlphaHandler := alphaHandler;
  fSupplierHandler := supplierHandler;
  fBankCardHandler := bankCardHandler;
  fBankHandler := bankHandler;
end;

function TLogin.getAdminBy(const username: string): IAdmin;
begin
  Result := fAdminHandler.getAdmin(username);
end;

function TLogin.getAlphaBy(const username: string): IAlpha;
begin
  Result := fAlphaHandler.getAlphaBy(username);
end;

function TLogin.getBankBy(const id: Integer): IBank;
begin
  Result := fBankHandler.getBankBy(id);
end;

function TLogin.getBankCardBy(const id: Integer): IBankCard;
begin
  Result := fBankCardHandler.getBankCardBy(id);
end;

function TLogin.getCustomerBy(const username : string): iCustomer;
begin
  Result := fCustomerHandler.getCustomer(username);
end;

function TLogin.getSupplierBy(const username: string): ISupplier;
begin
  Result := fSupplierHandler.getSupplierBy(username);
end;

function TLogin.getUserType(const username: string): TUserType;
begin
  Result := fUserHandler.getUserType(username);
end;

function TLogin.passwordCorrect(const username : string; const password : string) : Boolean;
begin
  Result := fUserHandler.passwordCorrect(username, password);
end;

procedure TLogin.setupCustomer(const username: string);
begin
  if (string.IsNullOrWhiteSpace(username)) then
    raise EArgumentNilException.Create('username cannot be null or whitespace');

  currentCustomer := getCustomerBy(username);

  if (currentCustomer = nil) then
    raise Exception.Create('current cannot be null');

  currentBankCard  := getBankCardBy(currentCustomer.BankCardId);
  currentBank := getBankBy(currentBankCard.BankId);
end;

end.
