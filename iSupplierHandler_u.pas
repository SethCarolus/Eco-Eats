unit iSupplierHandler_u;

interface
  uses iSupplier_u;
  type
    ISupplierHandler = interface
      function getSupplierBy(const id: Integer) : ISupplier;
    end;

implementation

end.
