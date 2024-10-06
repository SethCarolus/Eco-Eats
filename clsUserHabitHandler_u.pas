unit clsUserHabitHandler_u;

interface
  uses IUserHabitHandler_u, iDatabaseManager_u, Generics.Collections;
  type
    TUserHabitHandler = class(TInterfacedObject, IUserHabitHandler)
      private
        fDatabaseManager :  IDatabaseManager;
      public
        constructor create(databaseManager : IDatabaseManager);
        function getUserHabitsFor(const username : string):  TList<Uint64>;
    end;
implementation

{ TUserHabitHandler }

constructor TUserHabitHandler.create(databaseManager: IDatabaseManager);
begin
  fDatabaseManager := databaseManager;
end;

function TUserHabitHandler.getUserHabitsFor(const username: string): TList<Uint64>;
begin
  Result := fDatabaseManager.getTimeSpentOnAplicationFor(username);
end;

end.
