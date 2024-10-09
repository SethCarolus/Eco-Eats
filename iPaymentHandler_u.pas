unit iPaymentHandler_u;

interface
  uses iBankCard_u, iCart_u;
  type
    IPaymentHandler = interface
      procedure makePayment(const bankCard: IBankCard; const cart: ICart);
    end;

implementation

end.
