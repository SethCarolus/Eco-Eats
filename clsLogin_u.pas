unit clsLogin_u;

interface
  uses global_u, iDatabaseManager_u, iLogin_u, iCustomer_u, iAdmin_u, iSupplier_u, iAlpha_u;
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

    end;



implementation

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

end.
