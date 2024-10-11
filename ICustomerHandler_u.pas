unit ICustomerHandler_u;

interface
  uses iCustomer_u;
  type
    ICustomerHandler = interface
        function getCustomer(const username : string) : ICustomer;
        procedure insertCustomer(const customer : iCustomer; const password : string);
        procedure editCustomer(const customer: ICustomer;
                              const password: string);
    end;

implementation

end.
