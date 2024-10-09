unit global_u;

interface
  uses ITimer_u, IProduct_u, Generics.Collections, iCart_u;
  type
    TUserType = (utInvalid = -1, utCustomer = 0, utSupplier = 1, utAdmin = 2, utAlpha = 3);

  const FILE_NAME = 'UserHabits.txt';

  var Timer : ITimer;
  var Products : TList<IProduct>;
  var Cart: ICart;
implementation

end.
