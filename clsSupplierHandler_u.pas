unit clsSupplierHandler_u;

interface
  uses iSupplierHandler_u, iSupplier_u, iDatabaseManager_u;
    type
      TSupplierHandler = class(TInterfacedObject, ISupplierHandler)
        private
          fDatabaseManager: IDatabaseManager;
        public
          constructor create(const databaseManager: IDatabaseManager);
          function getSupplierBy(const id: Integer): ISupplier;
      end;

implementation

{ TSupplierHandler }

constructor TSupplierHandler.create(const databaseManager: IDatabaseManager);
begin
  fDatabaseManager := databaseManager;
end;

function TSupplierHandler.getSupplierBy(const id: Integer): ISupplier;
begin
  Result := fDatabaseManager.getSupplierBy(id);
end;

end.
