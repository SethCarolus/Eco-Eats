unit iLogout_u;

interface
  type
    ILogout = interface
        procedure LogTimeSpent(const username : string;
                                const timeSpentInMinutes : Integer);
    end;

implementation

end.
