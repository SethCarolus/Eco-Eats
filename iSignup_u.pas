unit iSignup_u;
interface
  uses Generics.Collections, iBank_u, iCustomer_u, iBankCard_u;
  type
    ISignup = interface

      function getAllBanks() :  TList<IBank>;
      procedure insertCustomer(const customer: iCustomer;const password : string);
      procedure insertBankCard(const bankCard: IBankCard);
      function getBankCardWith(const accountNumber: string) : IBankCard;
    end;
implementation

end.
