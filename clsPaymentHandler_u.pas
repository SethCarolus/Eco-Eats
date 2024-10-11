unit clsPaymentHandler_u;

interface
  uses storeExceptions_u, iBankCard_u, iCart_u, iPaymentHandler_u,
    iProductHandler_u, iBankCardHandler_u;

    type
      TPaymentHandler = class(TInterfacedObject, IPaymentHandler)
        private
          fProductHandler: IProductHandler;
          fBankCardHandler: IBankCardHandler;
        public
          constructor create(const productHandler: IProductHandler;
                              const bankCardHandler: IBankCardHandler);
          procedure makePayment(const bankCard: IBankCard; const cart: ICart);
      end;
implementation
  uses SysUtils;

{ TPaymentHandler }

constructor TPaymentHandler.create(const productHandler: IProductHandler;
                    const bankCardHandler: IBankCardHandler);
begin
  fProductHandler := productHandler;
  fBankCardHandler := bankCardHandler;
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
    fBankCardHandler.updateBankCard(bankCard);
end;

end.
