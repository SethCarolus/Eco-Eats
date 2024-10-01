unit users_u;

interface
  uses iCustomer_u, iAdmin_u, iSupplier_u, iAlpha_u;

  var currentCustomer : iCustomer = nil;
  var currentSupplier : iSupplier = nil;
  var currentAdmin : iAdmin = nil;
  var currentAlpha : iAlpha = nil;

implementation

end.
