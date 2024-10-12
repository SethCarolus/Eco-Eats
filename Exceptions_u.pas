                                        unit Exceptions_u;

interface
  uses SysUtils;
  Type
    EUserExistsException = class(Exception)
    end;
  Type
    ENotEnoughStockException = class(Exception)
  end;

implementation

end.
