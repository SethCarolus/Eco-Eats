unit iSupplier_u;

interface
  type
    iSupplier = interface
      function getId: Integer;
      procedure setId(const id: Integer);

      function getUsername: string;
      procedure setUsername(const username: string);

      property Id: Integer read getId write setId;
      property Username: string read getUsername write setUsername;
    end;

implementation

end.
