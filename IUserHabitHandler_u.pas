unit IUserHabitHandler_u;

interface
  uses Generics.Collections;
  type
    IUserHabitHandler = interface
      function getUserHabitsFor(const username : string) :  TList<Uint64>;
      procedure insertTimeSpentOnApplicationFor(const username: string; elapsedMinutes: Integer);
    end;
implementation

end.
