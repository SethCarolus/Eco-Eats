unit clsMockLogin_u;

interface
  uses global_u, iDatabaseManager_u, iLogin_u, iCustomer_u, iAdmin_u,
      iSupplier_u, iAlpha_u, iBank_u, iBankCard_u;
  type
    TMockLogin = class(TInterfacedObject, ILogin)
      private
        fDatabaseManager : IDatabaseManager;
       public
        constructor create();
        function userExists(const username : string) : Boolean;
        function passwordCorrect(const username : string; const password : string) : Boolean;
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
  uses SysUtils, clsFactory_u, users_u;

{ TMockLogin }

constructor TMockLogin.create();
begin

end;

function TMockLogin.getAdmin(const username: string): IAdmin;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  Result := TFactory.createAdmin(-1, 'username');
end;

function TMockLogin.getAlpha(const username: string): IAlpha;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  Result := TFactory.createAlpha(-1, 'username');
end;

function TMockLogin.getBank(const id: Integer): IBank;
begin

end;

function TMockLogin.getBankCard(const id: Integer): IBankCard;
begin

end;

function TMockLogin.getCustomer(const username: string): iCustomer;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  Result := TFactory.createCustomer(-1 ,username, 'Customer', 'Smith', 'profilePicture.jpeg', -1);

end;

function TMockLogin.getSupplier(const username: string): ISupplier;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  Result := TFactory.createSupplier(-1 ,username);
end;

function TMockLogin.getUserType(const username: string): TUserType;
begin

end;
/// <summary>
///   This function will return true if the username = 'username' and password = 'password'
/// </summary>
function TMockLogin.passwordCorrect(const username, password: string): Boolean;
begin
  if (string.IsNullOrWhiteSpace(username)) then
    raise Exception.Create('Username cannot be empty or whitespace.');

  if (string.IsNullOrWhiteSpace(password)) then
    raise Exception.Create('Password cannot be empty or whitespace.');

  if (not userExists(username)) then
    begin
      Result := false;
      Exit;
    end;
  if (password = 'password') then
    begin
       Result := True;
       Exit;
    end;



end;
/// <summary>
///   This function will setup variables to do with a mock customer entity
/// </summary>
procedure TMockLogin.setupCustomer(const username: string);
begin
   currentCustomer := TFactory.createCustomer(0, 'username', 'user', 'name', 'ProfilePicture.jpeg', 0);
   currentBankCard := TFactory.createBankCard(0, 'USERNAME', '12345678' ,Now,'123', 39_000, 0);
   currentBank := TFactory.createBank(0, 'FB', 'Fake Bank', '0722634804');
end;

/// <summary>
///   This function will return true if the username = 'username'
/// </summary>
function TMockLogin.userExists(const username: string): Boolean;
begin
  if (string.IsNullOrWhiteSpace(username)) then
    raise Exception.Create('Username cannot be empty or whitespace.');

    if (username = 'username') then
      begin
        Result := True;
        Exit;
      end;
    Result := false;

end;

end.
