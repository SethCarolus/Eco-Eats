unit clsBankCard_u;

interface
  uses iBankCard_u;
  type
    TBankCard = class(TInterfacedObject, IBankCard)
      private

        fId: Integer;
        fNameOnCard: string;
        fExpireyDate: TDateTime;
        fSecurityCode: String;
        fBalance: Double;
        fBankId: Integer;

        function getId: Integer;
        procedure setId(const id: Integer);

        function getNameOnCard(): string;
        procedure setNameOnCard(const nameOnCard: string);

        function getExpireyDate(): TDateTime;
        procedure setExpireyDate(const date: TDateTime);

        function getSecurityCode(): string;
        procedure setSecurityCode(const securityCode: string);

        function getBalance(): Double;
        procedure setBalance(const balance:  Double);

        function getBankId: Integer;
        procedure setBankId(const id: Integer);
      public
        property Id: Integer read getId write setId;
        property NameOnCard: string read getNameOnCard write setNameOnCard;
        property ExpireyDate: TDateTime read getExpireyDate write setExpireyDate;
        property SecurityCode: string read getSecurityCode write setSecurityCode;
        property Balance: Double read getBalance write setBalance;
        property BankId : Integer read getBankId write setBankId;

        constructor Create(const id: integer; const nameOnCard: string;
                            const expireyDate: TDateTime;
                            const securityCode: string; const balance: Double;
                            const bankId: Integer);
    end;

implementation
  uses SysUtils;

{ TBankCard }

constructor TBankCard.Create(const id: integer; const nameOnCard: string;
  const expireyDate: TDateTime; const securityCode: string;
  const balance: Double; const bankId: Integer);
begin
  Self.Id := id;
  Self.ExpireyDate := expireyDate;
  Self.NameOnCard := nameOnCard;
  Self.SecurityCode := securityCode;
  Self.Balance := balance;
  Self.BankId := bankId;
end;

function TBankCard.getBalance: Double;
begin
  Result := fBalance;
end;

function TBankCard.getBankId: Integer;
begin
  Result := fBankId;
end;

function TBankCard.getExpireyDate: TDateTime;
begin
  Result := fExpireyDate;
end;

function TBankCard.getId: Integer;
begin
  Result := fId;
end;

function TBankCard.getNameOnCard: string;
begin
  Result := fNameOnCard;
end;

function TBankCard.getSecurityCode: string;
begin
  Result := fSecurityCode;
end;

procedure TBankCard.setBalance(const balance: Double);
begin
  if balance < 0  then
    raise EArgumentOutOfRangeException.Create('balance cannot be negative');
  
  fBalance := balance;
end;

procedure TBankCard.setBankId(const id: Integer);
begin
   fBankId := id;
end;

procedure TBankCard.setExpireyDate(const date: TDateTime);
begin
  fExpireyDate := date;
end;

procedure TBankCard.setId(const id: Integer);
begin
  fId := id;
end;

procedure TBankCard.setNameOnCard(const nameOnCard: string);
begin
  if string.IsNullOrWhiteSpace(nameOnCard) then
    raise EArgumentNilException.Create('nameOnCard cannot be null or whitespace');

  fNameOnCard := nameOnCard;
end;

procedure TBankCard.setSecurityCode(const securityCode: string);
begin
  if string.IsNullOrWhiteSpace(nameOnCard) then
    raise EArgumentNilException.Create('nameOnCard cannot be null or whitespace');
    
   fSecurityCode := securityCode;
end;

end.
