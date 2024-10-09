unit iProductHandler_u;

interface
  uses Generics.Collections, IProduct_u;
  type
    IProductHandler = interface
      function getAllProducts(): TList<IProduct>;
      procedure updateProducts(const products: TList<IProduct>);
      function getProductsIdToQuantity
                                (const products: TList<IProduct>)
                                : TDictionary<Integer, Integer>;
    end;

implementation

end.
