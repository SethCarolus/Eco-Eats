unit clsCustomerHandler_u;

interface
  uses ICustomerHandler_u, iCustomer_u, iUserHandler_u;
  type
    TCustomerHandler = class(TInterfacedObject, ICustomerHandler)
      private
        fUserHandler: IUserHandler;
      public
        constructor create(const userHandler: IUserHandler);
        function getCustomer(const username : string) : ICustomer;
        procedure insertCustomer(const customer : ICustomer; const password : string);
        procedure editCustomer(const customer: ICustomer;
                              const password: string);
    end;

implementation

uses dmMain_u, clsFactory_u, SysUtils, DatabaseExceptions_u;

{ TCustomerHandler }

constructor TCustomerHandler.create(const userHandler: IUserHandler);
begin
  fUserHandler := userHandler;
end;

procedure TCustomerHandler.editCustomer(const customer: ICustomer;
                                        const password: string);
begin
  if (customer = nil) then
    raise EArgumentNilException.Create('customer cannot be null');

  if (string.IsNullOrWhiteSpace(password)) then
    raise EArgumentNilException.Create('password cannot be null');

  with dmMain.tblCustomer do
    begin
      Close;
      while not Eof do
        begin
          if (FieldByName('id').AsInteger = customer.Id) then
            begin
              FieldByName('password').AsString := password;
              FieldByName('first_name').AsString := customer.FirstName;
              FieldByName('last_name').AsString := customer.LastName;
              FieldByName('profile_picture').AsString := customer.ProfilePicture;
            end;
          Next;
        end;

    end;
end;

function TCustomerHandler.getCustomer(const username: string): ICustomer;
begin
  if (string.IsNullOrEmpty(username)) then
    raise Exception.Create('username cannot be null or empty');

  with dmMain.qryCustomer do
    begin
      Close;
      Sql.Text := 'SELECT * FROM tblCustomer WHERE username = ' + QuotedStr(username);
      ExecSQL;
      Open;
      Result := TFactory.createCustomer(FieldByName('id').AsInteger
                                        ,FieldByName('username').AsString,
                                        FieldByName('first_name').AsString,
                                        FieldByName('last_name').AsString,
                                        FieldByName('profile_picture').AsString,
                                        FieldByName('bank_card_id').AsInteger);
    end;
end;

procedure TCustomerHandler.insertCustomer(const customer: ICustomer;
  const password: string);
begin
  if (customer = nil) then
    raise EArgumentNilException.Create('customer cannot be null');

  if (fUserHandler.userExists(customer.Username)) then
    raise EUserExistsException.Create('user already exists with this username');

    with dmMain.tblCustomer do
      begin
        // Make sure the table is active
        if not Active then Open;

        // Start appending a new record
        Append;

        // Assign the values to the fields
        FieldByName('username').AsString := customer.Username;
        FieldByName('password').AsString := password;
        FieldByName('first_name').AsString := customer.FirstName;
        FieldByName('last_name').AsString := customer.LastName;
        FieldByName('profile_picture').AsString := customer.ProfilePicture;
        FieldByName('bank_card_id').AsInteger := customer.BankCardId;

        // Post the new record to save it
        Post;
      end;
end;

end.
