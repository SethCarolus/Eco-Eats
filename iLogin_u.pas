unit iLogin_u;

interface
  uses global_u, iCustomer_u, iAdmin_u, iSupplier_u, iAlpha_u, iBankCard_u, iBank_u;
  type
    ILogin = interface
        function userExists(const username: string): Boolean;
        function passwordCorrect(const username: string; const password: string): Boolean;
        function getUserType(const username: string): TUserType;
        function getCustomerBy(const username: string): iCustomer;
        function getAdminBy(const username: string): IAdmin;
        function getSupplierBy(const username: string): ISupplier;
        function getAlphaBy(const username: string): IAlpha;
        function getBankCardBy(const id: Integer): IBankCard;
        function getBankBy(const id: Integer): IBank;

        procedure setupCustomer(const username : string);
    end;
implementation

end.
