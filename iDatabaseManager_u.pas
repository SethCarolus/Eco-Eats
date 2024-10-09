unit iDatabaseManager_u;

interface
  uses global_u, iCustomer_u, iAdmin_u, iSupplier_u, iAlpha_u, iBankCard_u,
  iBank_u, Generics.Collections, IProduct_u;
  type
    IDatabaseManager = interface
      function userExists(const username: string): Boolean;
      function passwordCorrect(const username: string; const password: string): Boolean;
      function getUserType(const username: string): TUserType;
      function getCustomer(const username: string): iCustomer;
      function getAdmin(const username: string): IAdmin;
      function getSupplier(const username: string): ISupplier;
      function getAlpha(const username: string): IAlpha;
      function getBankCard(const id: Integer): IBankCard;
      function getBank(const id: Integer): IBank;
      function getAllBanks() : TList<IBank>;
      procedure insertCustomer(const customer : iCustomer; const password : string);
      procedure insertBankCard(const bankCard : IBankCard);
      function getBankCardWith(const accountNumber: string) : IBankCard;
      procedure insertTimeSpentOnApplicatiom(const username: string; elapsedMinutes: Integer);
      function getTimeSpentOnAplicationFor(const username : string) : TList<UInt64>;
      function getAllProducts(): TList<IProduct>;
      function getSupplierBy(const id: Integer): iSupplier;
      procedure updateProduct(const product: IProduct);
      procedure updateBankCard(const bankCard: IBankCard);
    end;

implementation

end.
