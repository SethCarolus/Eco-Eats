unit clsSupplier_u;

interface
  uses iSupplier_u;
  type
    TSupplier = class(TInterfacedObject, iSupplier)
      private

        fId: Integer;
        fUsername: string;
        fDisplayName: string;

        function getId: Integer;
        procedure setId(const id: Integer);

        function getUsername: string;
        procedure setUsername(const username: string);

        function getDisplayName: string;
        procedure setDisplayName(const displayName: string);
      public
        constructor create(const id: Integer; const username: string;
                              const displayName: string);

        property Id: Integer read getId write setId;
        property Username: string read getUsername write setUsername;
        property DisplayName: string read getDisplayName write setDisplayName;
    end;

implementation
  uses SysUtils;

{ TSupplier }

constructor TSupplier.create(const id: Integer; const username: string;
                              const displayName: string);
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  if (string.IsNullOrEmpty(displayName)) then
    raise Exception.Create('displayName cannot be null or empty');


  Self.Id := id;
  Self.Username := username;
  Self.DisplayName := displayName;
end;

function TSupplier.getDisplayName: string;
begin
  Result := fDisplayName;
end;

function TSupplier.getId: Integer;
begin
  Result := fId;
end;

function TSupplier.getUsername: string;
begin
  Result := fUsername;
end;

procedure TSupplier.setDisplayName(const displayName: string);
begin
  fDisplayName := displayName;
end;

procedure TSupplier.setId(const id: Integer);
begin
  fId := id;
end;

procedure TSupplier.setUsername(const username: string);
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  fUsername := username;
end;

end.
