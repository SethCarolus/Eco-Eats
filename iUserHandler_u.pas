unit iUserHandler_u;

interface
  uses global_u;
  type
    IUserHandler = interface
        function userExists(const username : string) : Boolean;
        function passwordCorrect(const username : string; const password : string) : Boolean;
        function getUserType(const username : string) : TUserType;
    end;

implementation

end.
