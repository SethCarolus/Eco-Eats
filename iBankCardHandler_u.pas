unit iBankCardHandler_u;

interface
  uses iBankCard_u;
  type
    IBankCardHandler = interface
      function getBankCardWith(const accountNumber : string) : IBankCard;
      function getBankCardBy(const id: Integer): IBankCard;
      procedure insertBankCard(const bankCard : IBankCard);
      procedure updateBankCard(const bankCard: IBankCard);
    end;

implementation

end.
