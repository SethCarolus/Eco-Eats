unit clsCustomer_u;

interface
  uses iCustomer_u;
  type
    TCustomer = class(TInterfacedObject, ICustomer)
    private
      fId : Integer;
      fUsername: string;
      fFirstName : string;
      fLastName : string;
      fProfilePicture : string;
      fBankCardId : Integer;

      function getId: Integer;
      procedure setId(const id: Integer);

      function getUsername: string;
      procedure setUsername(const username : string);

      function getFirstName: string;
      procedure setFirstName(const firstName : string);

      function getLastName: string;
      procedure setLastName(const lastName : string);

      function getProfilePicture: string;
      procedure setProfilePicture(const profilePicture : string);

      function getBankCardId: Integer;
      procedure setBankCardId(const id : Integer);

    public
      constructor create;overload;
      constructor create(const id : Integer; const username, firstName, lastName, profilePicture : string;
                          const bankCardId : Integer);overload;


      property Id : Integer read getId write setId;
      property Username: string read getUsername write setUsername;
      property FirstName: string read getFirstName write setFirstName;
      property LastName: string read getLastName write setLastName;
      property ProfilePicture: string read getProfilePicture write setProfilePicture;
      property BankCardId: Integer read getBankCardId write setBankCardId;
    end;

implementation
  uses SysUtils;

{ TCustomer }

constructor TCustomer.create;
begin

end;

constructor TCustomer.create(const id : Integer;const username, firstName, lastName,
  profilePicture: string; const bankCardId: Integer);
begin
  if (string.IsNullOrWhiteSpace(username)) then raise EArgumentNilException.Create('username cannot be null or whitespace');
  if (string.IsNullOrWhiteSpace(firstName)) then raise EArgumentNilException.Create('firstName cannot be null or whitespace');
  if (string.IsNullOrWhiteSpace(lastName)) then raise EArgumentNilException.Create('lastName cannot be null or whitespace');
  if (string.IsNullOrWhiteSpace(profilePicture)) then raise EArgumentNilException.Create('profilePicture cannot be null or whitespace');

  Self.Id := id;
  Self.Username := username;
  Self.FirstName := firstName;
  Self.LastName := lastName;
  Self.ProfilePicture := profilePicture;
  Self.BankCardId := bankCardId;

end;

function TCustomer.getBankCardId: Integer;
begin
  Result := fBankCardId;
end;

function TCustomer.getFirstName: string;
begin
  Result := fFirstName;
end;

function TCustomer.getId: Integer;
begin
  Result := fId;
end;

function TCustomer.getLastName: string;
begin
  Result := fLastName;
end;

function TCustomer.getProfilePicture: string;
begin
  Result := fProfilePicture;
end;

function TCustomer.getUsername: string;
begin
  Result := fUsername;
end;

procedure TCustomer.setBankCardId(const id: Integer);
begin
  fBankCardId := id;
end;

procedure TCustomer.setFirstName(const firstName: string);
begin
  if (string.IsNullOrWhiteSpace(firstName)) then
    raise EArgumentNilException.Create('firstName cannot be null or whitespace');
  fFirstName := firstName;
end;

procedure TCustomer.setId(const id: Integer);
begin

end;

procedure TCustomer.setLastName(const lastName: string);
begin
  if (string.IsNullOrWhiteSpace(lastName)) then
    raise EArgumentNilException.Create('lastName cannot be null or whitespace');
  fLastName := lastName;
end;

procedure TCustomer.setProfilePicture(const profilePicture: string);
begin
 if (string.IsNullOrWhiteSpace(profilePicture)) then
  raise EArgumentNilException.Create('profilePicture cannot be null or whitespace');
  fProfilePicture := profilePicture;
end;

procedure TCustomer.setUsername(const username: string);
begin
  if (string.IsNullOrWhiteSpace(username)) then
    raise EArgumentNilException.Create('username cannot be null or whitespace');
  fUsername := username;
end;

end.
