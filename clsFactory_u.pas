unit clsFactory_u;

interface
  uses iLogin_u, iDatabaseManager_u, iCustomer_u, iAdmin_u, iSupplier_u, iAlpha_u;
  type
    TFactory = class

    class function createLogin() : ILogin;
    class function createDatabaseManager : IDatabaseManager;
    class function createCustomer(const id: Integer; const username : string; const firstName : string;
                                  const lastName : string; const profilePicture : string; const bankCardId : Integer) : iCustomer;
    class function createAdmin(const id : Integer; const username : string) : iAdmin;
    class function createSupplier(const id : Integer; const username : string) : iSupplier;
    class function createAlpha(const id : Integer; const username : string) : iAlpha;


  end;

implementation
  uses SysUtils, clsDatabaseManager_u, clsMockLogin_u , clsLogin_u, clsCustomer_u, clsAdmin_u, clsSupplier_u, clsAlpha_u;

{ Factory }

class function TFactory.createAdmin(const id : Integer; const username : string): iAdmin;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');
  Result := TAdmin.create(id, username);
end;

class function TFactory.createAlpha(const id: Integer;
  const username: string): iAlpha;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');

  Result := TAlpha.create(id, username);
end;

class function TFactory.createCustomer(const id: Integer;const username, firstName,
  lastName, profilePicture: string; const bankCardId: Integer): iCustomer;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');
  if (string.IsNullOrEmpty(firstName)) then raise Exception.Create('firstName cannot be null or empty');
  if (string.IsNullOrEmpty(lastName)) then raise Exception.Create('lastName cannot be null or empty');
  if (string.IsNullOrEmpty(profilePicture)) then raise Exception.Create('profilePicture cannot be null or empty');

  Result := TCustomer.create(id, username, firstName, lastName, profilePicture, bankCardId);
end;

class function TFactory.createDatabaseManager: IDatabaseManager;
begin
  Result := TDatabaseManager.create();
end;

class function TFactory.createLogin: ILogin;
begin
    Result := TLogin.create(createDatabaseManager());
end;

class function TFactory.createSupplier(const id: Integer;
  const username: string): iSupplier;
begin
  if (string.IsNullOrEmpty(username)) then raise Exception.Create('username cannot be null or empty');
  Result := TSupplier.Create(id, username);
end;

end.
