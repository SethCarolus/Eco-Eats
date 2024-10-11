unit iSupplierHandler_u;

interface
  uses iSupplier_u;
  type
    ISupplierHandler = interface
      function getSupplierBy(const id: Integer) : ISupplier;overload;
      function getSupplierBy(const username: string): ISupplier;overload;
    end;

implementation

end.
