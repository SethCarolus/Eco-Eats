unit clsBank_u;

interface
  uses iBank_u;

  type
    TBank = class(TInterfacedObject, IBank)
      private
        fId : Integer;
        fShortName : string;
        fLongName : string;
        fPhoneNumber : string;

        function getId(): Integer;
        procedure setId(const id: Integer);

        function getShortName() : string;
        procedure setShortName(const name: string);

        function getLongName() : string;
        procedure setLongName(const name: string);

        function getPhoneNumber() : string;
        procedure setPhoneNumber(const number: string);

      public
        property Id: Integer read getId write setId;
        property ShortName: string read getShortName write setShortName;
        property LongName: string read getLongName write setLongName;
        property PhoneNumber: string read getPhoneNumber write setPhoneNumber;

        constructor create(const id: Integer; const shortName: string;
                            const longName: string; const phoneNumber: string);
    end;


implementation

{ TBank }

constructor TBank.create(const id: Integer; const shortName, longName,
  phoneNumber: string);
begin
  Self.Id := id;
  Self.ShortName := shortName;
  Self.LongName := longName;
  Self.PhoneNumber := phoneNumber;
end;

function TBank.getId: Integer;
begin
  result := fId;
end;

function TBank.getLongName: string;
begin
  Result :=  fLongName;
end;

function TBank.getPhoneNumber: string;
begin
  Result := fPhoneNumber;
end;

function TBank.getShortName: string;
begin
  Result := fShortName;
end;

procedure TBank.setId(const id: Integer);
begin
  fId := id;
end;

procedure TBank.setLongName(const name: string);
begin
  fLongName := name;
end;

procedure TBank.setPhoneNumber(const number: string);
begin
  fPhoneNumber := number;
end;

procedure TBank.setShortName(const name: string);
begin
  fShortName := name;
end;

end.
