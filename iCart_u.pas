unit iCart_u;

interface
  uses IProduct_u, Generics.Collections;
  type
    ICart = interface
      function getProducts(): TList<IProduct>;
      procedure remove(const product: IProduct);
      procedure add(const product: IProduct);
      function getTotal(): Double;
      function getProductAt(index: Integer): IProduct;
      procedure clear();
      function isEmpty: Boolean;

      property Products: TList<IProduct> read getProducts;
      property Cart[index: Integer]: IProduct read getProductAt;default;
    end;

implementation

end.
