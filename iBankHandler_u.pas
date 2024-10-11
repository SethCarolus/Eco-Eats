unit iBankHandler_u;

interface
  uses iBank_u, Generics.Collections;
  type
    IBankHandler = interface
      function getAllBanks() : TList<IBank>;
      function getBankBy(const id: Integer): IBank;
    end;

implementation

end.
