unit clsProductHandler_u;

interface
  uses IProduct_u ,iProductHandler_u, Generics.Collections;
  type
    TProductHandler = class(TInterfacedObject, IProductHandler)
      public
        constructor create();
        function getProductsIdToQuantity
                                (const products: TList<IProduct>)
                                : TDictionary<Integer, Integer>;
        function getAllProducts(): TList<IProduct>;
        procedure updateProducts(const products: TList<IProduct>);
        procedure updateProduct(const product: IProduct);
    end;

implementation
  uses SysUtils, dmMain_u, clsFactory_u;

{ TProductHandler }

constructor TProductHandler.create();
begin
end;

function TProductHandler.getAllProducts: TList<IProduct>;
begin
  With dmMain.qryProduct do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblProduct';
      Open;

      Result := TList<IProduct>.Create();
      First;
      while not Eof do
        begin
          var product :=  TFactory.createProduct(
                                            FieldByName('id').AsInteger,
                                            FieldByName('product_name').AsString,
                                            FieldByName('description').AsString,
                                            FieldByName('price').AsFloat,
                                            FieldByName('quantity').AsInteger,
                                            FieldByName('picture').AsString,
                                            FieldByName('supplier_id').AsInteger);
          Result.Add(product);
          product.SupplierId;
          Next;
        end;

    end;
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

procedure TProductHandler.updateProduct(const product: IProduct);
begin
  with dmMain.tblProduct do
    begin
      Open;
      First;
      while not Eof do
        begin
          if (FieldByName('id').AsInteger = product.Id) then
            begin
              Edit;
              FieldByName('product_name').AsString := Product.Name;
              FieldByName('description').AsString := Product.Description;
              FieldByName('price').AsCurrency := product.Price;
              FieldByName('quantity').AsInteger := product.Quantity;
              FieldByName('picture').AsString := product.Picture;
              Post;
              Break;
            end;
            Next;
        end;
        Close;
    end;
end;

procedure TProductHandler.updateProducts(const products: TList<IProduct>);
begin
  if (products = nil) then
    raise EArgumentException.Create('products cannot be null');

  for var p in products do
    begin
      updateProduct(p);
    end;

end;

end.
