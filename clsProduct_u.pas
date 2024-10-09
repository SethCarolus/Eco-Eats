unit clsProduct_u;

interface
  uses IProduct_u;

    type
      TProduct = class(TInterfacedObject, IProduct)
        private
          fId: Integer;
          fName: string;
          fDescription: string;
          fPrice: Double;
          fQuantity: UInt32;
          fPicture: string;
          fSupplierId: Integer;

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

        public
          constructor create(id: Integer; name: string; description: string;
                              price: Double; quantity: UInt32; picture: string;
                              supplierId: Integer);
          property Id: Integer read getId write setId;
          property Name: string read getName write setName;
          property Description: string read getDescription write setDescription;
          property Price: Double read getPrice write setPrice;
          property Quantity: UInt32 read getQuantity write setQuantity;
          property Picture: string read getPicture write setPicture;
          property SupplierId: Integer read getSupplierId write setSupplierId;
      end;

implementation
  uses SysUtils;

{ TProduct }

constructor TProduct.create(id: Integer; name: string; description: string;
                    price: Double; quantity: UInt32; picture: string;
                    supplierId: Integer);
begin
  Self.Id := id;
  Self.Name := name;
  Self.Description := description;
  Self.Price := price;
  Self.Quantity := quantity;
  Self.Picture := picture;
  Self.SupplierId := supplierId;
end;

function TProduct.getDescription: string;
begin
  Result := fDescription;
end;

function TProduct.getId: Integer;
begin
  Result := fId;
end;

function TProduct.getName: string;
begin
  Result := fName;
end;

function TProduct.getPicture: string;
begin
  Result := fPicture;
end;

function TProduct.getPrice: Double;
begin
  Result := fPrice;
end;

function TProduct.getQuantity: UInt32;
begin
  Result := fQuantity;
end;

function TProduct.getSupplierId: Integer;
begin
  Result := fSupplierId;
end;

procedure TProduct.setDescription(const description: string);
begin
  if (string.IsNullOrWhiteSpace(name)) then
    raise EArgumentNilException.Create('description cannot be null or whitespace');
  fDescription := description;
end;

procedure TProduct.setId(const id: Integer);
begin
  fId := id;
end;

procedure TProduct.setName(const name: string);
begin
  if (string.IsNullOrWhiteSpace(name)) then
    raise EArgumentNilException.Create('name cannot be null or whitespace');
  fName := name;
end;

procedure TProduct.setPicture(const picture: string);
begin
  fPicture := picture;
end;

procedure TProduct.setPrice(const price: Double);
begin
  fPrice := price;
end;

procedure TProduct.setQuantity(const quantity: UInt32);
begin
  fQuantity := quantity;
end;

procedure TProduct.setSupplierId(const id: Integer);
begin
  fSupplierId := id;
end;

end.
