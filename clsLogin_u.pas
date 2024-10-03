unit clsLogin_u;

interface
  uses global_u, iDatabaseManager_u, iLogin_u, iCustomer_u, iAdmin_u,
      iSupplier_u, iAlpha_u, iBankCard_u, iBank_u;
  type
    TLogin = class(TInterfacedObject, ILogin)
      private
        fDatabaseManager : IDatabaseManager;
        function userExists(const username : string) : Boolean;
        function passwordCorrect(const username : string; const password : string) : Boolean;

       public
        constructor create(databaseManager : IDatabaseManager);
        function getUserType(const username : string) : TUserType;
        function getCustomer(const username : string) : iCustomer;
        function getAdmin(const username : string) : IAdmin;
        function getSupplier(const username : string) : ISupplier;
        function getAlpha(const username : string) : IAlpha;
        function getBankCard(const id: Integer): IBankCard;
        function getBank(const id: Integer): IBank;

        procedure setupCustomer(const username : string);

    end;
implementation

uses SysUtils, users_u;

{ TLogin }

constructor TLogin.create(databaseManager: IDatabaseManager);
begin
    fDatabaseManager := databaseManager;
end;
function TLogin.userExists(const username : string) : Boolean;
begin
  Result := fDatabaseManager.userExists(username);
end;
function TLogin.getAdmin(const username: string): IAdmin;
begin
  Result := fDatabaseManager.getAdmin(username);
end;

function TLogin.getAlpha(const username: string): IAlpha;
begin
  Result := fDatabaseManager.getAlpha(username);
end;

function TLogin.getBank(const id: Integer): IBank;
begin
  Result := fDatabaseManager.getBank(id);
end;

function TLogin.getBankCard(const id: Integer): IBankCard;
begin
  Result := fDatabaseManager.getBankCard(id);
end;

function TLogin.getCustomer(const username : string): iCustomer;
begin
  Result := fDatabaseManager.getCustomer(username);
end;

function TLogin.getSupplier(const username: string): ISupplier;
begin
  Result := fDatabaseManager.getSupplier(username);
end;

function TLogin.getUserType(const username: string): TUserType;
begin
  Result := fDatabaseManager.getUserType(username);
end;

function TLogin.passwordCorrect(const username : string; const password : string) : Boolean;
begin
  Result := fDatabaseManager.passwordCorrect(username, password);
end;

procedure TLogin.setupCustomer(const username: string);
begin
  if (string.IsNullOrWhiteSpace(username)) then
    raise EArgumentNilException.Create('username cannot be null or whitespace');

  currentCustomer := getCustomer(username);

  if (currentCustomer = nil) then
    raise Exception.Create('current cannot be null');

  currentBankCard  := getBankCard(currentCustomer.BankCardId);
  currentBank := getBank(currentBankCard.BankId);
end;

end.
