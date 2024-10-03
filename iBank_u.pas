unit iBank_u;

interface
  type
    IBank = interface

      function getId(): Integer;
      procedure setId(const id: Integer);

      function getShortName() : string;
      procedure setShortName(const name: string);

      function getLongName() : string;
      procedure setLongName(const name: string);

      function getPhoneNumber() : string;
      procedure setPhoneNumber(const number: string);

      property Id: Integer read getId write setId;
      property ShortName: string read getShortName write setShortName;
      property LongName: string read getLongName write setLongName;
      property PhoneNumber: string read getPhoneNumber write setPhoneNumber;
    end;

implementation

end.
