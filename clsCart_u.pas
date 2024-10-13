unit clsCart_u;

interface
  uses iCart_u, IProduct_u, Generics.Collections;

    type
      TCart = class(TInterfacedObject, ICart)
        private
          fProducts: TList<IProduct>;
          function getProducts(): TList<IProduct>;
        public
          constructor create();
          procedure remove(const product: IProduct);
          procedure add(const product: IProduct);overload;
          procedure add(const product: IProduct; const quantity: Integer);overload;
          function getTotal(): Double;
          procedure clear();
          function isEmpty: Boolean;
          function getProductAt(index: Integer): IProduct;

          property Products: TList<IProduct> read getProducts;
          property Cart[index: Integer]: IProduct read getProductAt;default;
      end;

implementation
  uses SysUtils, Exceptions_u;

{ TCart }

procedure TCart.add(const product: IProduct);
begin
  if (product = nil) then
    raise EArgumentNilException.Create('product cannot be null');

  fProducts.Add(product);
end;

procedure TCart.add(const product: IProduct; const quantity: Integer);
begin
  if (product = nil) then
    raise EArgumentException.Create('product cannot be null');

  var iQuantInCart := 0;
  for var p in Products do
      begin
        if (p.Id = product.Id) then
          iQuantInCart := iQuantInCart + 1;
      end;

  if (product.Quantity < iQuantInCart + quantity) then
    raise ENotEnoughStockException.Create('Not Enough stock!');

  for var i := 0 to quantity - 1 do
    begin
      add(product);
    end;
end;

procedure TCart.clear;
begin
  if (fProducts = nil) then
    raise Exception.Create('fProducts cannot be null!');
  fProducts.Clear;
end;

constructor TCart.create;
begin
  fProducts := TList<IProduct>.Create();
end;

function TCart.getProductAt(index: Integer): IProduct;
begin
  Result := fProducts[index];
end;

function TCart.getProducts(): TList<IProduct>;
begin
  Result := TList<IProduct>.Create;
  try
    for var Product in fProducts do
      Result.Add(Product);
  except
    Result.Free;
    raise;
  end;
end;

function TCart.getTotal: Double;
begin
  if (fProducts = nil) then
    raise Exception.Create('fProducts cannot be null!');

  Result := 0;
  for var p in fProducts do
    begin
      Result := Result + p.Price;
    end;
end;

function TCart.isEmpty: Boolean;
begin
  Result := (fProducts = nil) or  fProducts.IsEmpty;
end;

procedure TCart.remove(const product: IProduct);
begin
  if (fProducts = nil) then
    raise Exception.Create('fProducts cannot be null!');
  fProducts.Remove(product);
end;
end.
