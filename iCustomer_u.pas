unit iCustomer_u;

interface
  type
    iCustomer = interface
      function getId: Integer;
      procedure setId(const id: Integer);

      function getUsername: string;
      procedure setUsername(const username: string);

      function getFirstName: string;
      procedure setFirstName(const firstName : string);

      function getLastName: string;
      procedure setLastName(const lastName : string);

      function getProfilePicture: string;
      procedure setProfilePicture(const profilePicture : string);

      function getBankCardId: Integer;
      procedure setBankCardId(const id : Integer);

      property Id : Integer read getId write setId;
      property Username: string read getUsername write setUsername;
      property FirstName: string read getFirstName write setFirstName;
      property LastName: string read getLastName write setLastName;
      property ProfilePicture: string read getProfilePicture write setProfilePicture;
      property BankCardId: Integer read getBankCardId write setBankCardId;
      
    end;

implementation

end.
