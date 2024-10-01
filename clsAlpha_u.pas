unit clsAlpha_u;

interface
  uses iAlpha_u;
  type
    TAlpha = class(TInterfacedObject, iAlpha)
      private
        fId : Integer;
        fUsername : string;

        function getId: Integer;
        procedure setId(const id: Integer);

        function getUsername: string;
        procedure setUsername(const username: string);

      public
        constructor create(const id : Integer; const username : string);
        property Id: Integer read getId write setId;
        property Username: string read getUsername write setUsername;
    end;

implementation
  uses SysUtils;

{ TAlpha }

constructor TAlpha.create(const id: Integer; const username: string);
begin
   if (string.IsNullOrEmpty(username)) then
      raise Exception.Create('username cannot be null or empty');
  Self.Id := id;
  Self.Username := username;
end;

function TAlpha.getId: Integer;
begin
  Result := fId;
end;

function TAlpha.getUsername: string;
begin
  Result := fUsername;
end;

procedure TAlpha.setId(const id: Integer);
begin
  fId := id;
end;

procedure TAlpha.setUsername(const username: string);
begin
   if (string.IsNullOrEmpty(username)) then
      raise Exception.Create('username cannot be null or empty');
   fUsername := username;
end;

end.
