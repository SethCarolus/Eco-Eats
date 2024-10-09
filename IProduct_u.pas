unit IProduct_u;

interface
  type
    IProduct = interface
      function getId(): Integer;
      procedure setId(const id: Integer);

      function getName(): string;
      procedure setName(const name: string);

      function getDescription(): string;
      procedure setDescription(const description: string);

      function getPrice(): Double;
      procedure setPrice(const price: Double);

      function getQuantity(): UInt32;
      procedure setQuantity(const quantity: UInt32);

      function getPicture() : string;
      procedure setPicture(const picture: string);

      function getSupplierId(): Integer;
      procedure setSupplierId(const id: Integer);

      property Id: Integer read getId write setId;
      property Name: string read getName write setName;
      property Description: string read getDescription write setDescription;
      property Price: Double read getPrice write setPrice;
      property Quantity: UInt32 read getQuantity write setQuantity;
      property Picture: string read getPicture write setPicture;
      property SupplierId: Integer read getSupplierId write setSupplierId;
    end;

implementation

end.
