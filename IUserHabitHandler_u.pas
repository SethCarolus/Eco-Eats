unit IUserHabitHandler_u;

interface
  uses Generics.Collections;
  type
    IUserHabitHandler = interface
      function getUserHabitsFor(const username : string) :  TList<Uint64>;
    end;
implementation

end.
