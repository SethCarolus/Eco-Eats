unit clsProductHandler_u;

interface
  uses iDatabaseManager_u, IProduct_u ,iProductHandler_u, Generics.Collections;
  type
    TProductHandler = class(TInterfacedObject, IProductHandler)
      fDatabaseManager: IDatabaseManager;
      public
        constructor create(const databaseManager: IDatabaseManager);
        function getProductsIdToQuantity
                                (const products: TList<IProduct>)
                                : TDictionary<Integer, Integer>;
        function getAllProducts(): TList<IProduct>;
        procedure updateProducts(const products: TList<IProduct>);
    end;

implementation
  uses SysUtils;

{ TProductHandler }

constructor TProductHandler.create(const databaseManager: IDatabaseManager);
begin
  fDatabaseManager := databaseManager;
end;

function TProductHandler.getAllProducts: TList<IProduct>;
begin
  Result := fDatabaseManager.getAllProducts();
end;

function TProductHandler.getProductsIdToQuantity
                                (const products: TList<IProduct>)
                                : TDictionary<Integer, Integer>;
begin
  Result := TDictionary<Integer, Integer>.Create;

  for var i := 0 to products.Count - 1 do
  begin
    if Result.ContainsKey(products[i].Id) then
      Result[products[i].Id] := Result[products[i].Id] + 1
    else
      Result.Add(products[i].Id, 1);
  end;
end;

procedure TProductHandler.updateProducts(const products: TList<IProduct>);
begin
  if (products = nil) then
    raise EArgumentException.Create('products cannot be null');

  for var p in products do
    begin
      fDatabaseManager.updateProduct(p);
    end;

end;

end.
