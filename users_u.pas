unit users_u;

interface
  uses iCustomer_u, iAdmin_u, iSupplier_u, iAlpha_u, iBankCard_u, iBank_u, global_u;

  var currentCustomer : iCustomer = nil;
  var currentSupplier : iSupplier = nil;
  var currentAdmin : iAdmin = nil;
  var currentAlpha : iAlpha = nil;

  var currentBankCard : IBankCard = nil;
  var currentBank: IBank = nil;

  var currentUserType : TUserType = utInvalid;

implementation

end.
