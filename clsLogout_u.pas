unit clsLogout_u;

interface
  uses iLogout_u, iDatabaseManager_u;
  type
    TLogout = class(TInterfacedObject, ILogout)
      private
        fDatabaseManager : IDatabaseManager;
      public
        constructor create(const databaseManager : IDatabaseManager);
        procedure LogTimeSpent(const username : string;
                                const timeSpentInMinutes : Integer);
    end;

implementation
{ TLogout }
constructor TLogout.create(const databaseManager: IDatabaseManager);
begin
  fDatabaseManager := databaseManager;
end;

procedure TLogout.LogTimeSpent(const username: string;
                                const timeSpentInMinutes: Integer);
begin
  fDatabaseManager.insertTimeSpentOnApplicatiom(username, timeSpentInMinutes);
end;

end.
