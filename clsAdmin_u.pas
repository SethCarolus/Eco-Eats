unit clsAdmin_u;

interface
  uses iAdmin_u;

  type
    TAdmin = class(TInterfacedObject, IAdmin)
      private
        fId : Integer;
        fUsername : string;
        function getUsername: string;
        procedure setUsername(const username: string);
        function getId: Integer;
        procedure setId(const id: Integer);

      public
        constructor create(const id : Integer; const username : string);

        property Id: Integer read getId write setId;
        property Username: string read getUsername write setUsername;
    end;

implementation
  uses SysUtils;

{ TAdmin }

constructor TAdmin.create(const id: Integer; const username: string);
begin
  Self.Id := id;
  Self.Username := username;
end;

function TAdmin.getId: Integer;
begin
  Result := Id;
end;

function TAdmin.getUsername: string;
begin
  Result := fUsername;
end;

procedure TAdmin.setId(const id: Integer);
begin
  fId := id;
end;

procedure TAdmin.setUsername(const username: string);
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');
  fUsername := username;
end;

end.
