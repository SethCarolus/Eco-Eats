unit iProductHandler_u;

interface
  uses Generics.Collections, IProduct_u;
  type
    IProductHandler = interface
      function getAllProducts(): TList<IProduct>;
      function getProductsBy(const supplierId: Integer): TList<IProduct>;
      procedure updateProducts(const products: TList<IProduct>);
      function getProductsIdToQuantity
                                (const products: TList<IProduct>)
                                : TDictionary<Integer, Integer>;
      procedure updateProduct(const product: IProduct);
      procedure deleteProduct(const product: IProduct);
    end;

implementation

end.
