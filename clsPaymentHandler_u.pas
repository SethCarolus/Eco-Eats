unit clsPaymentHandler_u;

interface
  uses storeExceptions_u, iBankCard_u, iCart_u, iPaymentHandler_u, iDatabaseManager_u,
    iProductHandler_u;

    type
      TPaymentHandler = class(TInterfacedObject, IPaymentHandler)
        private
          fDatabaseManager: IDatabaseManager;
          fProductHandler: IProductHandler;
        public
          constructor create(const databaseManager: IDatabaseManager;
          const productHandler: IProductHandler);
          procedure makePayment(const bankCard: IBankCard; const cart: ICart);
      end;
implementation
  uses SysUtils;

{ TPaymentHandler }

constructor TPaymentHandler.create(const databaseManager: IDatabaseManager;
                                  const productHandler: IProductHandler);
begin
  fDatabaseManager := databaseManager;
  fProductHandler := productHandler;
end;

procedure TPaymentHandler.makePayment(const bankCard: IBankCard;
  const cart: ICart);
begin
  if (bankCard = nil) then
    raise EArgumentNilException.Create('bankCard cannot be null here!');

  if (cart = nil) then
    raise EArgumentNilException.Create('cart cannot be null here!');

  if (cart.getTotal() > bankCard.Balance) then
    raise ECustomerInsuffientFunds.Create('Insufficient Funds!');

  bankCard.Balance := bankCard.Balance - cart.getTotal();
  var productIdToQuantity :=
          fProductHandler.getProductsIdToQuantity(cart.Products);

  for var kv in productIdToQuantity do
    begin
       for var p  in cart.Products do
        begin
          if (p.Id = kv.Key) then
            begin
              p.Quantity := p.Quantity - kv.Value;
              break;
            end;
        end;
    end;

  try
    // fProductHandler.

    fProductHandler.updateProducts(cart.Products);
  except

  end;

    // Update the bank card information in the database
    fDatabaseManager.updateBankCard(bankCard);
end;

end.

//// Deduct the total cart amount from the bank card balance
//  bankCard.Balance := bankCard.Balance - cart.getTotal();
//
//  // Initialize the dictionary to tally products
//  var productTally := TDictionary<Integer, Integer>.Create;
//  try
//    // Loop through products in the cart to tally the quantities
//    for var i := 0 to cart.Products.Count - 1 do
//    begin
//      var product := cart[i];  // Access the product in the cart
//      var currentProductID := product.Id;  // Assuming each product has an ID property
//
//      if productTally.ContainsKey(currentProductID) then
//        productTally[currentProductID] := productTally[currentProductID] + product.Quantity
//      else
//        productTally.Add(currentProductID, product.Quantity);
//    end;
//
//    // Get available products from the database
//    var availableProducts := fDatabaseManager.getAllProducts();
//
//    // Now update each product in the database based on the tally
//    for var kvp in productTally do
//    begin
//      var productToUpdate: IProduct := nil;
//
//      // Search for the product in the available products using a for loop
//      for var j := 0 to availableProducts.Count - 1 do
//      begin
//        if availableProducts[j].Id = kvp.Key then
//        begin
//          productToUpdate := availableProducts[j];
//          Break;  // Exit the loop once the product is found
//        end;
//      end;
//
//      if productToUpdate <> nil then
//      begin
//        var productQuantity := kvp.Value;
//        // Update the product's quantity in the database
//        productToUpdate.Quantity := productToUpdate.Quantity - productQuantity;
//        fDatabaseManager.updateProduct(productToUpdate);
//      end;
//    end;
