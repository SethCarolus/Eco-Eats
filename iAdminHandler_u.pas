unit iAdminHandler_u;

interface
  uses iAdmin_u;
  type
    IAdminHandler = interface

    function getAdmin(const username : string) : IAdmin;
  end;

implementation

end.
