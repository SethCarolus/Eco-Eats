unit clsLogout_u;

interface
  uses iLogout_u, IUserHabitHandler_u;
  type
    TLogout = class(TInterfacedObject, ILogout)
      private
        fHabitHandler: IUserHabitHandler;
      public
        constructor create(const habitHandler: IUserHabitHandler);
        procedure LogTimeSpent(const username : string;
                                const timeSpentInMinutes : Integer);
    end;

implementation
{ TLogout }

constructor TLogout.create(const habitHandler: IUserHabitHandler);
begin
  fHabitHandler := habitHandler;
end;

procedure TLogout.LogTimeSpent(const username: string;
                                const timeSpentInMinutes: Integer);
begin
  fHabitHandler.insertTimeSpentOnApplicationFor(username, timeSpentInMinutes);
end;

end.
