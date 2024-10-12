unit frmMain_u;

interface

uses
  iLogin_u, iSignup_u, iProduct_u,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Imaging.pngimage, jpeg, Vcl.Buttons,
  Vcl.NumberBox, Vcl.Samples.Spin, IOUtils, Vcl.ComCtrls, Math;

type
  TfrmMain = class(TForm)
    cplMain: TCardPanel;
    cLogin: TCard;
    edtLoginPassword: TLabeledEdit;
    edtLoginUsername: TLabeledEdit;
    btnLoginLogin: TButton;
    btnLoginSignup: TButton;
    Panel1: TPanel;
    cCustomerViewProfile: TCard;
    StackPanel1: TStackPanel;
    ImgViewProfile: TImage;
    StackPanel2: TStackPanel;
    edtCustomerViewProfileLastName: TEdit;
    edtCustomerViewProfileFirstName: TEdit;
    edtCustomerViewProfileUsername: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    StackPanel3: TStackPanel;
    edtCustomerViewProfileBankShortName: TEdit;
    Label4: TLabel;
    edtCustomerViewProfilePhoneNumber: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    StackPanel4: TStackPanel;
    btnCustomerViewProfileBack: TBitBtn;
    edtCustomerViewProfileBankCardNameOnCard: TEdit;
    edtCustomerViewProfileBankCardExpireyDate: TEdit;
    edtCustomerViewProfileBankCardSecurityCode: TEdit;
    edtCustomerViewProfileBankCardBalance: TEdit;
    edtCustomerViewProfileBankLongName: TEdit;
    Button1: TButton;
    btnCustomerViewProfileStore: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    cCustomerSignup: TCard;
    imgCustomerSignup: TImage;
    StackPanel5: TStackPanel;
    Label12: TLabel;
    edtCustomerSignupUsername: TEdit;
    Label13: TLabel;
    edtCustomerSignupFirstName: TEdit;
    Label14: TLabel;
    edtCustomerSignupLastName: TEdit;
    StackPanel7: TStackPanel;
    Label19: TLabel;
    edtCustomerSignupNameOnCard: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    edtCustomerSignupSecurityCode: TEdit;
    Label22: TLabel;
    btnSignupBack: TBitBtn;
    btnSignupSignup: TButton;
    lstCustomerSignupBanks: TListBox;
    Label15: TLabel;
    nbxCustomerSignupBalance: TNumberBox;
    btnSignupAddProfilePicture: TButton;
    btnClose: TBitBtn;
    btnAboutUs: TBitBtn;
    Label16: TLabel;
    edtCustomerSignupPassword: TEdit;
    dtpCustomerSignupExpireyDate: TDateTimePicker;
    Label17: TLabel;
    edtCustomerSignupAccountNumber: TEdit;
    ScrollBox1: TScrollBox;
    btnCustomerViewHabits: TButton;
    cViewHabits: TCard;
    redViewHabits: TRichEdit;
    Panel2: TPanel;
    btnViewHabitsBack: TBitBtn;
    cStore: TCard;
    GridPanel1: TGridPanel;
    StackPanel6: TStackPanel;
    Panel3: TPanel;
    lstStoreProducts: TListBox;
    btnStoreAddToCart: TButton;
    StackPanel8: TStackPanel;
    imgStoreProduct: TImage;
    memStoreProductDescription: TMemo;
    pnlStoreProductSuplierName: TPanel;
    Panel4: TPanel;
    spdStoreProductQuantity: TSpinEdit;
    Panel5: TPanel;
    pnlStoreProductPrice: TPanel;
    btnStoreBack: TBitBtn;
    StackPanel9: TStackPanel;
    lstStoreCart: TListBox;
    Panel6: TPanel;
    btnStorePurchase: TButton;
    GridPanel2: TGridPanel;
    btnStoreClear: TButton;
    btnStoreRemove: TButton;
    Panel7: TPanel;
    pnlStoreCartTotal: TPanel;
    pnlStockOfProduct: TPanel;
    cCustomerEditProfile: TCard;
    imgCustomerEditProfile: TImage;
    Label18: TLabel;
    StackPanel10: TStackPanel;
    Label23: TLabel;
    edtCustomerEditProfileUsername: TEdit;
    Label24: TLabel;
    edtCustomerEditProfilePassword: TEdit;
    Label25: TLabel;
    edtCustomerEditProfileFirstName: TEdit;
    Label26: TLabel;
    edtCustomerEditProfileLastName: TEdit;
    btnCustomerEditProfileBack: TBitBtn;
    btnCustomerEditProfileMakeChanges: TButton;
    lstCustomerEditProfileBanks: TListBox;
    ScrollBox2: TScrollBox;
    StackPanel11: TStackPanel;
    Label27: TLabel;
    edtCustomerEditProfileAccountNumber: TEdit;
    Label28: TLabel;
    edtCustomerEditProfileNameOnCard: TEdit;
    Label29: TLabel;
    dtpCustomerEditProfileExpireyDate: TDateTimePicker;
    Label30: TLabel;
    edtCustomerEditProfileSecurityCode: TEdit;
    Label31: TLabel;
    nbxCustomerEditProfileBalance: TNumberBox;
    Label32: TLabel;
    edtCustomerViewProfilePassword: TEdit;
    cSupplierViewProducts: TCard;
    lstSupplierViewProducts: TListBox;
    imgSupplierViewProducts: TImage;
    memSupplierViewProductsDescription: TMemo;
    Panel9: TPanel;
    pnlSupplierViewProductsSupplierName: TPanel;
    edtSupplierViewProductsPrice: TLabeledEdit;
    edtSupplierViewProductsQuantity: TLabeledEdit;
    btnSupplierViewProducts: TBitBtn;
    btnSupplierViewProductsEdit: TButton;
    btnSupplierViewProductsAdd: TButton;
    btnSupplierViewProductsDelete: TButton;
    cSupplierAddProduct: TCard;
    StackPanel12: TStackPanel;
    Label33: TLabel;
    edtSupplierAddProductName: TEdit;
    Label34: TLabel;
    redSupplierAddProductDescription: TRichEdit;
    Label35: TLabel;
    nbxSupplierAddProductPrice: TNumberBox;
    Label36: TLabel;
    btnSupplierAddProductAdd: TButton;
    nbxSupplierAddProductQuantity: TNumberBox;
    imgSupplierAddProduct: TImage;
    btnSupplierAddProductAddProductImage: TButton;
    Panel8: TPanel;
    btnSupplierAddProductBack: TBitBtn;
    procedure btnLoginLoginClick(Sender: TObject);
    procedure cCustomerViewProfileEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCustomerViewProfileBackClick(Sender: TObject);
    procedure btnLoginSignupClick(Sender: TObject);
    procedure cCustomerSignupEnter(Sender: TObject);
    procedure cLoginEnter(Sender: TObject);
    procedure edtLoginUsernameChange(Sender: TObject);
    procedure edtLoginPasswordChange(Sender: TObject);
    procedure edtCustomerSignupUsernameChange(Sender: TObject);
    procedure edtCustomerSignupPasswordChange(Sender: TObject);
    procedure edtCustomerSignupFirstNameChange(Sender: TObject);
    procedure edtCustomerSignupLastNameChange(Sender: TObject);
    procedure edtCustomerSignupNameOnCardChange(Sender: TObject);
    procedure edtCustomerSignupExpireyDateChange(Sender: TObject);
    procedure edtCustomerSignupSecurityCodeChange(Sender: TObject);
    procedure nbxCustomerSignupBalanceChange(Sender: TObject);
    procedure lstCustomerSignupBanksClick(Sender: TObject);
    procedure btnSignupAddProfilePictureClick(Sender: TObject);
    procedure btnSignupSignupClick(Sender: TObject);
    procedure dtpCustomerSignupExpireyDateChange(Sender: TObject);
    procedure btnAboutUsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCustomerViewHabitsClick(Sender: TObject);
    procedure cLoginExit(Sender: TObject);
    procedure btnViewHabitsBackClick(Sender: TObject);
    procedure redViewHabitsClick(Sender: TObject);
    procedure cViewHabitsEnter(Sender: TObject);
    procedure redViewHabitsMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure redViewHabitsMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure redViewHabitsMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure btnCustomerViewProfileStoreClick(Sender: TObject);
    procedure btnStoreBackClick(Sender: TObject);
    procedure cStoreEnter(Sender: TObject);
    procedure lstStoreProductsClick(Sender: TObject);
    procedure btnStoreAddToCartClick(Sender: TObject);
    procedure btnStoreClearClick(Sender: TObject);
    procedure btnStoreRemoveClick(Sender: TObject);
    procedure lstStoreCartClick(Sender: TObject);
    procedure btnStorePurchaseClick(Sender: TObject);
    procedure cCustomerEditProfileEnter(Sender: TObject);
    procedure btnCustomerEditProfileBackClick(Sender: TObject);
    procedure btnCustomerEditProfileMakeChangesClick(Sender: TObject);
    procedure lstCustomerEditProfileBanksClick(Sender: TObject);
    procedure cSupplierViewProductsEnter(Sender: TObject);
    procedure lstSupplierViewProductsClick(Sender: TObject);
    procedure btnSupplierViewProductsClick(Sender: TObject);
    procedure btnSupplierViewProductsDeleteClick(Sender: TObject);
    procedure btnSupplierViewProductsAddClick(Sender: TObject);
    procedure edtSupplierAddProductNameChange(Sender: TObject);
    procedure redSupplierAddProductDescriptionChange(Sender: TObject);
    procedure edtSupplierAddProductQuantityChange(Sender: TObject);
    procedure nbxSupplierAddProductPriceChange(Sender: TObject);
    procedure cSupplierAddProductEnter(Sender: TObject);
    procedure btnSupplierAddProductAddClick(Sender: TObject);
    procedure btnSupplierAddProductAddProductImageClick(Sender: TObject);
    procedure btnSupplierAddProductBackClick(Sender: TObject);
  private
    { Private declarations }
    procedure NavigateToFirstPage(const username: string; const login : ILogin);
    procedure UpdateLoginPageComponents();
    procedure UpdateCustomerSignupComponents();
    procedure UpdateHabits();
    procedure SaveProfilePicture(const username: string);
    procedure LogOut();
    procedure DisplayCart();
    procedure DisplayProductInStore();
    procedure UpdateStoreComponents();
    procedure DisplayProductInSupplierViewProducts();
    procedure DisplayProductsInSupplierViewProducts();
    procedure UpdateSupplierAddProductComponents();
    procedure SaveProductPicture(const product: IProduct);

    // Current Card Property
    function getCurrentCard: TCard;
    procedure setCurrentCard(const Value: TCard);
    property CurrentCard: TCard read getCurrentCard write setCurrentCard;

    // Selected Product In Store Property
    function getSelectedProductInStore(): IProduct;
    procedure setSelectedProductInStore(const product: IProduct);
    property SelectedProductInStore: IProduct
            read getSelectedProductInStore
            write setSelectedProductInStore;

    // Selected Product In Cart Property
    function getSelectedProductInCart(): IProduct;
    procedure setSelectedProductInCart(const product: IProduct);
    property SelectedProductInCart: IProduct
          read getSelectedProductInCart
          write setSelectedProductInCart;

    // Selected Product In SupplierViewProducts  Property
    function getSelectedProductInSupplierViewProducts(): IProduct;
    procedure setSelectedProductInSupplierViewProducts(const product: IProduct);
    property SelectedProductInSupplierViewProducts: IProduct
            read getSelectedProductInSupplierViewProducts
            write setSelectedProductInSupplierViewProducts;

  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
  uses clsFactory_u, global_u, users_u,
    DatabaseExceptions_u, DateUtils, storeExceptions_u;

  var iSelectedIndexofBankOnSignupPage: Integer;
  var iSelectedIndexofBankOnEditPage: Integer;
  var sProfilePictureSignupPage: string;
  var _currentCard: TCard;
  var _selectedProductInStore: IProduct = nil;
  var _selectedProductInCart: IProduct = nil;
  var _selectedProductInSupplierViewProducts: IProduct = nil;
  var sProfilePictureEditPage: string;
  var sProductPictureAddProductPage: string;

{$R *.dfm}

procedure TfrmMain.btnAboutUsClick(Sender: TObject);
begin
  var signup := TFactory.createSignup();
end;
procedure TfrmMain.btnCustomerEditProfileBackClick(Sender: TObject);
begin
  CurrentCard := cCustomerViewProfile;
end;

procedure TfrmMain.btnCustomerEditProfileMakeChangesClick(Sender: TObject);
begin
  var customerId := currentCustomer.Id;
  var bankCardId := currentBankCard.Id;

  var bankHandler := TFactory.createBankHandler();
  var bank := bankHandler.getAllBanks()[iSelectedIndexofBankOnEditPage];

  var customer := TFactory.createCustomer(customerId,edtCustomerEditProfileUsername.Text,
                                          edtCustomerEditProfileFirstName.Text,
                                          edtCustomerEditProfileLastName.Text,
                                          sProfilePictureEditPage,
                                          bankCardId);
  var password := currentCustomerPassword;
  var bankCard := TFactory.createBankCard(bankCardId,
                                          edtCustomerEditProfileAccountNumber.Text,
                                          edtCustomerEditProfileAccountNumber.Text,
                                          dtpCustomerEditProfileExpireyDate.DateTime,
                                          edtCustomerEditProfileSecurityCode.Text,
                                          nbxCustomerEditProfileBalance.Value,
                                          bank.Id);

  var customerHandler := TFactory.createCustomerHandler();
  var bankCardHandler := TFactory.createBankCardHandler();

  try
    customerHandler.editCustomer(customer, password);
    bankCardHandler.updateBankCard(bankCard);
    SaveProfilePicture(customer.ProfilePicture);
  except

  end;

  ShowMessage('The changes were saved successfully!');

  with TFactory.createLogin do
    begin
      setupCustomer(customer.Username);
      currentCustomerPassword := password;
    end;
end;

procedure TfrmMain.btnCustomerViewHabitsClick(Sender: TObject);
begin
  UpdateHabits();
  CurrentCard := cViewHabits;
end;

procedure TfrmMain.btnCustomerViewProfileBackClick(Sender: TObject);
begin
  LogOut;
  CurrentCard := cLogin;
end;

procedure TfrmMain.btnLoginLoginClick(Sender: TObject);
begin
  var username : string := edtLoginUsername.Text;
  var password : string := edtLoginPassword.Text;

  if (string.IsNullOrEmpty(username)) then
    begin
      ShowMessage('Enter in a username');
      Exit;
    end;

  if (string.IsNullOrEmpty(password)) then
    begin
      ShowMessage('Enter in a password');
      Exit;
    end;

  try
    var login : ILogin := TFactory.CreateLogin();

    if (not login.userExists(username)) or (not login.passwordCorrect(username, password)) then
      begin
        ShowMessage('Username or password incorrect');
        Exit;
      end;

    NavigateToFirstPage(username, login);
    Timer := TFactory.createTimer();
  except
    on E: Exception do
    begin
      ShowMessage('An error occurred during the login process: ' + E.Message);
    end;
  end;
end;

procedure TfrmMain.btnLoginSignupClick(Sender: TObject);
begin
  cplMain.ActiveCard := cCustomerSignup;
end;

procedure TfrmMain.btnSignupAddProfilePictureClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  sFilePath: string;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Title := 'Select a JPEG File';
    OpenDialog.InitialDir := GetCurrentDir; // Set the initial directory
    OpenDialog.Filter := 'JPEG files (*.jpg; *.jpeg)|*.jpg;*.jpeg'; // Filter for JPEG files
    OpenDialog.DefaultExt := 'jpg'; // Default extension

    if OpenDialog.Execute then
    begin
      sFilePath := OpenDialog.FileName;
      // Load the image into the img component
      if FileExists(sFilePath) then
        imgCustomerSignup.Picture.LoadFromFile(sFilePath)
      else
        ShowMessage('File not found: ' + sFilePath);
    end;
  finally
    OpenDialog.Free;
  end;

  sProfilePictureSignupPage := sFilePath;
end;
procedure TfrmMain.btnSignupSignupClick(Sender: TObject);
begin
  var sprofilePicture := edtCustomerSignupUsername.Text + TPath.GetExtension(sProfilePictureSignupPage);

  var signup : ISignup := TFactory.createSignup();

  var bank := signup.getAllBanks()[iSelectedIndexofBankOnSignupPage];

  var bankCard := TFactory.createBankCard(-1,
                                          edtCustomerSignupAccountNumber.Text,
                                          edtCustomerSignupNameOnCard.Text,
                                          dtpCustomerSignupExpireyDate.DateTime,
                                          edtCustomerSignupSecurityCode.Text,
                                          nbxCustomerSignupBalance.Value,

                                         bank.Id);


                                          // Make Provision for accountNumber
  var customer := TFactory.createCustomer( -1,
                                          edtCustomerSignupUsername.Text,
                                          edtCustomerSignupFirstName.Text,
                                          edtCustomerSignupLastName.Text,
                                          sprofilePicture,
                                          0);

  var login : ILogin := TFactory.createLogin();

  if (login.userExists(customer.Username)) then
    begin
      ShowMessage('User with your username already exists!');
      Exit;
    end;

  try
    signup.insertBankCard(bankCard);
    customer.BankCardId := signup.getBankCardWith(bankCard.AccountNumber).Id;
    signup.insertCustomer(customer, edtCustomerSignupPassword.Text);
  except
    on e : EUserExistsException do
      begin
        ShowMessage('User with your username already exists!');
        Exit;
      end;
      {
    on e : EBankCardExissException do
      begin

      end;
      }
  end;

  SaveProfilePicture(customer.Username);

  ShowMessage('Sign Up Completed');
end;

procedure TfrmMain.btnStoreAddToCartClick(Sender: TObject);
begin
  if (lstStoreProducts.ItemIndex = -1) then
    begin
      ShowMessage('Please select a product!');
      Exit;
    end;

  for var i := 0 to spdStoreProductQuantity.Value - 1 do
    begin
      Cart.add(SelectedProductInStore);
    end;
  UpdateStoreComponents;

end;

procedure TfrmMain.btnStoreBackClick(Sender: TObject);
begin
  lstStoreCart.Clear;
  CurrentCard := cCustomerViewProfile;
end;

procedure TfrmMain.btnStoreClearClick(Sender: TObject);
begin
  if (Cart.isEmpty()) then
    begin
      ShowMessage('Cart is Empty!');
      SelectedProductInCart := nil;
      Exit;
    end;

  Cart.clear();
  DisplayCart();
end;

procedure TfrmMain.btnStorePurchaseClick(Sender: TObject);
begin
  var paymentHandler := TFactory.createPaymentHandler();
  try
    paymentHandler.makePayment(currentBankCard, Cart);
  except
    on ECustomerInsuffientFunds do
      begin
        ShowMessage('You have Insuffient Funds');
        Exit;
      end;
    on EArgumentNilException do
      begin
        ShowMessage('Internal Program Error!' + #13 + 'If this continues, lodge a complaint or contact the developers.');
        Exit;
      end;
  end;
  ShowMessage('Payment was successful!');
  Cart.clear;
  UpdateStoreComponents();
  DisplayProductInStore()

end;

procedure TfrmMain.btnStoreRemoveClick(Sender: TObject);
begin
  Cart.remove(SelectedProductInCart);

  if (Cart.isEmpty()) then
    begin
      if (SelectedProductInCart = nil) then
        ShowMessage('Cart is Empty!');
      SelectedProductInCart := nil;
    end;

  UpdateStoreComponents();
end;

procedure TfrmMain.btnSupplierAddProductAddClick(Sender: TObject);
begin
  var product := TFactory.createProduct(-1, edtSupplierAddProductName.Text,
                                      redSupplierAddProductDescription.Text,
                                      StrToFloat(nbxSupplierAddProductPrice.Value.ToString()),
                                      StrToInt(nbxSupplierAddProductQuantity.Value.ToString()),
                                      sProductPictureAddProductPage,
                                      currentSupplier.Id);

  var productHandler := TFactory.createProductHandler();
  product.Id := productHandler.getNextAvailableId();
  product.Picture := product.Name + product.Id.ToString() + '.jpeg';

  productHandler.insertProduct(product);
  SaveProductPicture(product);

  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.btnSupplierAddProductAddProductImageClick(Sender: TObject);
var
  OpenDialog: TOpenDialog;
  sFilePath: string;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Title := 'Select a JPEG File';
    OpenDialog.InitialDir := GetCurrentDir; // Set the initial directory
    OpenDialog.Filter := 'JPEG files (*.jpg; *.jpeg)|*.jpg;*.jpeg'; // Filter for JPEG files
    OpenDialog.DefaultExt := 'jpg'; // Default extension

    if OpenDialog.Execute then
    begin
      sFilePath := OpenDialog.FileName;
      // Load the image into the img component
      if FileExists(sFilePath) then
        imgSupplierAddProduct.Picture.LoadFromFile(sFilePath)
      else
        ShowMessage('File not found: ' + sFilePath);
    end;
  finally
    OpenDialog.Free;
  end;

  sProductPictureAddProductPage := sFilePath;

  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.btnSupplierAddProductBackClick(Sender: TObject);
begin
  DisplayProductsInSupplierViewProducts();
  SelectedProductInSupplierViewProducts := Products[0];
end;

procedure TfrmMain.btnSupplierViewProductsAddClick(Sender: TObject);
begin
  CurrentCard := cSupplierAddProduct;
end;

procedure TfrmMain.btnSupplierViewProductsClick(Sender: TObject);
begin
  LogOut();
  currentSupplier := nil;
  Products := nil;
  CurrentCard := cLogin;
end;

procedure TfrmMain.btnSupplierViewProductsDeleteClick(Sender: TObject);
begin
  var productHandler  := TFactory.createProductHandler();

  if (SelectedProductInSupplierViewProducts = nil) then
    begin
      ShowMessage('Select a product!');
      Exit;
    end;
  try
    productHandler.deleteProduct(SelectedProductInSupplierViewProducts);
  except
    on E: Exception do
      begin
        ShowMessage('Error Deleting Product!');
        Exit;
      end;
  end;

  DisplayProductsInSupplierViewProducts();

end;

procedure TfrmMain.btnViewHabitsBackClick(Sender: TObject);
begin
  if (currentUserType = utCustomer) then
    CurrentCard := cCustomerViewProfile;
end;

procedure TfrmMain.btnCustomerViewProfileStoreClick(Sender: TObject);
begin
  CurrentCard := cStore;
end;

procedure TfrmMain.cCustomerSignupEnter(Sender: TObject);
begin
  iSelectedIndexofBankOnSignupPage := -1;

  lstCustomerSignupBanks.Items.Clear;
  var signup : ISignup := TFactory.CreateSignup();
  for var bank in signup.getAllBanks() do
    begin
      lstCustomerSignupBanks.Items.Add(bank.ShortName)
    end;

  edtCustomerSignupUsername.Clear;
  edtCustomerSignupPassword.Clear;
  edtCustomerSignupFirstName.Clear;
  edtCustomerSignupLastName.Clear;

  edtCustomerSignupNameOnCard.Clear;
  dtpCustomerSignupExpireyDate.DateTime := Today + 360;
  edtCustomerSignupSecurityCode.Clear;
  nbxCustomerSignupBalance.Value := 0;

  UpdateCustomerSignupComponents();
  edtCustomerSignupUsername.SetFocus;
end;

procedure TfrmMain.cCustomerViewProfileEnter(Sender: TObject);
begin
  try
      ImgViewProfile.Picture.LoadFromFile(GetCurrentDir +  '/CustomerProfilePictures/' + currentCustomer.ProfilePicture);
  except
    on e :Exception do
      begin
        ShowMessage('Error in loading Profile Picture.');
        Exit;
      end;
  end;

  edtCustomerViewProfileUsername.Text := currentCustomer.Username;
  edtCustomerViewProfilePassword.Text :=  currentCustomerPassword;
  edtCustomerViewProfileFirstName.Text := currentCustomer.FirstName;
  edtCustomerViewProfileLastName.Text := currentCustomer.LastName;

  edtCustomerViewProfileBankShortName.Text := currentBank.ShortName;
  edtCustomerViewProfileBankLongName.Text := currentBank.LongName;
  edtCustomerViewProfilePhoneNumber.Text := currentBank.PhoneNumber;

  edtCustomerViewProfileBankCardNameOnCard.Text := currentBankCard.NameOnCard;
  edtCustomerViewProfileBankCardExpireyDate.Text := DateToStr(currentBankCard.ExpireyDate);
  edtCustomerViewProfileBankCardSecurityCode.Text := currentBankCard.SecurityCode;
  edtCustomerViewProfileBankCardBalance.Text :=
                                                currentBankCard.Balance.
                                                ToString(ffCurrency, 10, 2);

end;

procedure TfrmMain.cLoginEnter(Sender: TObject);
begin
  UpdateLoginPageComponents();
end;

procedure TfrmMain.cLoginExit(Sender: TObject);
begin
  edtLoginUsername.Clear;
  edtLoginPassword.Clear;
end;

procedure TfrmMain.cStoreEnter(Sender: TObject);
begin
  var productHandler := TFactory.createProductHandler();
  Products := productHandler.getAllProducts();

  lstStoreProducts.Clear;

  for var p in Products do
    begin
      lstStoreProducts.Items.Add(p.Name);
      imgStoreProduct.Picture.LoadFromFile(GetCurrentDir + '/ProductPictures/' + p.Picture)
    end;

  lstStoreProducts.ItemIndex := 0;
  SelectedProductInStore := Products[0];
  Cart := TFactory.createCart();

  UpdateStoreComponents;
end;

procedure TfrmMain.cSupplierAddProductEnter(Sender: TObject);
begin
  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.cSupplierViewProductsEnter(Sender: TObject);
begin
  pnlSupplierViewProductsSupplierName.Caption := currentSupplier.DisplayName;

  DisplayProductsInSupplierViewProducts();
end;

procedure TfrmMain.cViewHabitsEnter(Sender: TObject);
begin
  btnViewHabitsBack.SetFocus();
end;

procedure TfrmMain.DisplayCart;
begin
  lstStoreCart.Clear;

  if Cart.isEmpty then
  begin
    pnlStoreCartTotal.Caption := '';
    Exit;
  end;

  for var ap in Products do
    begin
      var iCount := 0;
      for var p in Cart.Products do
        begin
          if (p.Id = ap.Id) then
            Inc(iCount);
        end;

      if (iCount <= 0) then
        Continue;
      lstStoreCart.Items.Add(ap.Name + ' * ' + iCount.ToString)
    end;

  pnlStoreCartTotal.Caption := Cart.getTotal().ToString(ffCurrency, 10, 2);

end;

procedure TfrmMain.DisplayProductInStore;
begin
  var supplierHandler := TFactory.createSupplierHandler();
  var supplierOfCurrentProduct := supplierHandler.getSupplierBy(SelectedProductInStore.SupplierId);

  imgStoreProduct.Picture.LoadFromFile(GetCurrentDir + '/ProductPictures/' + SelectedProductInStore.Picture);
  memStoreProductDescription.Clear;
  memStoreProductDescription.Lines.Add(SelectedProductInStore.Description);
  pnlStoreProductSuplierName.Caption := supplierOfCurrentProduct.DisplayName;
  pnlStockOfProduct.Caption := SelectedProductInStore.Quantity.ToString() + ' Items in Stock';
  pnlStoreProductPrice.Caption := SelectedProductInStore.Price.ToString(ffCurrency, 10, 2);

  spdStoreProductQuantity.Value := 1;
  spdStoreProductQuantity.MaxValue := SelectedProductInStore.Quantity;
end;

procedure TfrmMain.DisplayProductInSupplierViewProducts;
begin
  imgSupplierViewProducts.Picture.LoadFromFile(GetCurrentDir + '/ProductPictures/' + SelectedProductInSupplierViewProducts.Picture);
  
  edtSupplierViewProductsPrice.Text := 
    SelectedProductInSupplierViewProducts.Price.ToString(ffCurrency, 10, 2);
    
  edtSupplierViewProductsQuantity.Text := 
    SelectedProductInSupplierViewProducts.Quantity.ToString();
    
  memSupplierViewProductsDescription.Text :=
    SelectedProductInSupplierViewProducts.Description;
end;

procedure TfrmMain.DisplayProductsInSupplierViewProducts;
begin
  var productHandler := TFactory.createProductHandler();
  Products := productHandler.getProductsBy(currentSupplier.Id);

  lstSupplierViewProducts.Clear;
  for var p in Products do
    begin
      lstSupplierViewProducts.Items.Add(p.Name);
    end;

  if (not Products.IsEmpty) then
    SelectedProductInSupplierViewProducts := Products[0];
end;

procedure TfrmMain.dtpCustomerSignupExpireyDateChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.cCustomerEditProfileEnter(Sender: TObject);
begin
  try
      imgCustomerEditProfile.Picture.LoadFromFile(GetCurrentDir +  '/CustomerProfilePictures/' + currentCustomer.ProfilePicture);
  except
    on e :Exception do
      begin
        ShowMessage('Error in loading Profile Picture.');
        Exit;
      end;
  end;

  var signup : ISignup := TFactory.CreateSignup();
  var banks :=  signup.getAllBanks();

  lstCustomerEditProfileBanks.Clear;

  for var bank in banks do
    begin
      lstCustomerEditProfileBanks.Items.Add(bank.ShortName);
    end;

  for var i := 0 to banks.Count -1 do
    begin
      if (currentBank.Id = banks[i].Id) then
        begin
          lstCustomerEditProfileBanks.ItemIndex := i;
          break;
        end;
    end;

  edtCustomerEditProfileUsername.Text := currentCustomer.Username;
  edtCustomerEditProfileFirstname.Text := currentCustomer.FirstName;
  edtCustomerEditProfileLastName.Text := currentCustomer.LastName;
  edtCustomerEditProfilePassword.Text := currentCustomerPassword;

  edtCustomerEditProfileAccountNumber.Text := currentBankCard.AccountNumber;
  edtCustomerEditProfileNameOnCard.Text := currentBankCard.NameOnCard;
  dtpCustomerEditProfileExpireyDate.DateTime := currentBankCard.ExpireyDate;
  edtCustomerEditProfileSecurityCode.Text := currentBankCard.SecurityCode;
  nbxCustomerEditProfileBalance.Value := currentBankCard.Balance;

  sProfilePictureEditPage := currentCustomer.ProfilePicture;
end;

procedure TfrmMain.edtCustomerSignupExpireyDateChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtCustomerSignupFirstNameChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtCustomerSignupLastNameChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtCustomerSignupNameOnCardChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtCustomerSignupPasswordChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtCustomerSignupSecurityCodeChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtCustomerSignupUsernameChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.edtLoginPasswordChange(Sender: TObject);
begin
  UpdateLoginPageComponents();
end;

procedure TfrmMain.edtLoginUsernameChange(Sender: TObject);
begin
  UpdateLoginPageComponents();
end;

procedure TfrmMain.edtSupplierAddProductNameChange(Sender: TObject);
begin
  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.edtSupplierAddProductQuantityChange(Sender: TObject);
begin
  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Logout();
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  edtCustomerViewProfileUsername.Text := '';
  edtCustomerViewProfileFirstName.Text := '';
  edtCustomerViewProfileLastName.Text := '';

  edtCustomerViewProfileBankShortName.Text := '';
  edtCustomerViewProfileBankLongName.Text := '';
  edtCustomerViewProfilePhoneNumber.Text := '';

  edtCustomerViewProfileBankCardNameOnCard.Text := '';
  edtCustomerViewProfileBankCardExpireyDate.Text := '';
  edtCustomerViewProfileBankCardSecurityCode.Text := '';
  edtCustomerViewProfileBankCardBalance.Text := '';

  CurrentCard := cLogin;
end;

function TfrmMain.getCurrentCard: TCard;
begin
  Result := _currentCard;
end;

procedure TfrmMain.setSelectedProductInCart(const product: IProduct);
begin
  _selectedProductInCart := product;
end;

procedure TfrmMain.setSelectedProductInStore(const product: IProduct);
begin
  _selectedProductInStore := product;
  DisplayProductInStore();
end;

procedure TfrmMain.setSelectedProductInSupplierViewProducts(
  const product: IProduct);
begin
  _selectedProductInSupplierViewProducts := product;
  DisplayProductInSupplierViewProducts();
end;

function TfrmMain.getSelectedProductInCart: IProduct;
begin
  Result := _selectedProductInCart;
end;

function TfrmMain.getSelectedProductInStore: IProduct;
begin
  Result := _selectedProductInStore;
end;

function TfrmMain.getSelectedProductInSupplierViewProducts: IProduct;
begin
  Result := _selectedProductInSupplierViewProducts;
end;

procedure TfrmMain.LogOut;
begin
  if (Timer = nil) then
    Exit;

  var username : string;

  case currentUserType of
    utCustomer:
      begin
        username  := currentCustomer.Username;
      end;
    utSupplier:
      begin
        username := currentSupplier.Username;
      end;
    utAdmin:
      begin
        username := currentAdmin.Username;
      end;
    utAlpha:
      begin
        username := currentAlpha.Username;
      end;
  end;

  var logOut := TFactory.createLogout;
  logOut.LogTimeSpent(username, Ceil(Timer.elapsedSeconds / 60));
  timer := nil;
end;

procedure TfrmMain.lstCustomerEditProfileBanksClick(Sender: TObject);
begin
  // No Change Has occured
  if (iSelectedIndexofBankOnEditPage =  lstCustomerEditProfileBanks.ItemIndex) then
      Exit;
  iSelectedIndexofBankOnEditPage := lstCustomerEditProfileBanks.ItemIndex;
end;

procedure TfrmMain.lstCustomerSignupBanksClick(Sender: TObject);
begin
  // No Change Has occured
  if (iSelectedIndexofBankOnSignupPage =  lstCustomerSignupBanks.ItemIndex) then
      Exit;
  iSelectedIndexofBankOnSignupPage := lstCustomerSignupBanks.ItemIndex;
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.lstStoreCartClick(Sender: TObject);
begin
  var itemIndex := lstStoreCart.ItemIndex;

  if (itemIndex = -1 ) then
    begin
      SelectedProductInCart := nil;
      UpdateStoreComponents();
      Exit;
    end;
   

  var sProductLine := lstStoreCart.Items[lstStoreCart.ItemIndex];
  var iPos := Pos('*', sProductLine);
  var  sProductName := Copy(sProductLine, 0, iPos - 1 ).Trim;

  for var p in Cart.Products do
    begin
      if (p.Name = sProductName) then
        begin
          SelectedProductInCart := p;
          Break;
        end;
    end;
  UpdateStoreComponents();
end;

procedure TfrmMain.lstStoreProductsClick(Sender: TObject);
begin
  SelectedProductInStore := Products[lstStoreProducts.ItemIndex];
end;

procedure TfrmMain.lstSupplierViewProductsClick(Sender: TObject);
begin
  SelectedProductInSupplierViewProducts := Products[lstSupplierViewProducts.ItemIndex];  
end;

procedure TfrmMain.NavigateToFirstPage(const username: string; const login : ILogin);
begin
  currentUserType := login.getUserType(username);

    case currentUserType of
        utCustomer:
          begin
            login.setupCustomer(username);
            currentCustomerPassword := edtLoginPassword.Text;
            CurrentCard := cCustomerViewProfile;
          end;
        utSupplier:
          begin
            currentSupplier := login.getSupplierBy(username);
            CurrentCard := cSupplierViewProducts;
          end;
        utAdmin:
          begin
            currentAdmin := login.getAdminBy(username);
            //cplMain.ActiveCard :=
          end;
        utAlpha:
          begin
            currentAlpha := login.getAlphaBy(username);
            //cplMain.ActiveCard :=
          end;
    end;
end;

procedure TfrmMain.nbxCustomerSignupBalanceChange(Sender: TObject);
begin
    UpdateCustomerSignupComponents();
end;

procedure TfrmMain.nbxSupplierAddProductPriceChange(Sender: TObject);
begin
  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.redSupplierAddProductDescriptionChange(Sender: TObject);
begin
  UpdateSupplierAddProductComponents();
end;

procedure TfrmMain.redViewHabitsClick(Sender: TObject);
begin
  HideCaret(redViewHabits.Handle);
end;

procedure TfrmMain.redViewHabitsMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  HideCaret(redViewHabits.Handle);
end;

procedure TfrmMain.redViewHabitsMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  HideCaret(redViewHabits.Handle);
end;

procedure TfrmMain.redViewHabitsMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  HideCaret(redViewHabits.Handle);
end;

procedure TfrmMain.SaveProductPicture(const product: IProduct);
var
  sDestinationDir: string;
begin
  if (product = nil) then
    raise EArgumentException.Create('product cannot be null!');

  // Set the destination directory relative to the application's executable
  sDestinationDir := ExtractFilePath(Application.ExeName) + 'ProductPictures';

  // Ensure the destination directory exists
  if not TDirectory.Exists(sDestinationDir) then
    TDirectory.CreateDirectory(sDestinationDir);

  // Copy the file to the destination directory
  try
    if (FileExists(TPath.Combine(sDestinationDir, product.Picture, True))) then
      Exit;
    TFile.Copy(sProductPictureAddProductPage, TPath.Combine(sDestinationDir, product.Picture, True));
    TPath.Combine(sDestinationDir, TPath.GetFileName(sProfilePictureSignupPage)); // Return the path of the saved file
  except
    on E: Exception do
    begin
      ShowMessage('Error copying file: ' + E.Message);
    end;
  end;
end;


procedure TfrmMain.SaveProfilePicture(const username: string);
var
  sDestinationDir: string;
begin
  // Set the destination directory relative to the application's executable
  sDestinationDir := ExtractFilePath(Application.ExeName) + 'CustomerProfilePictures';

  // Ensure the destination directory exists
  if not TDirectory.Exists(sDestinationDir) then
    TDirectory.CreateDirectory(sDestinationDir);

  // Get the original file extension
  var sExtension := TPath.GetExtension(sProfilePictureSignupPage);

  // Copy the file to the destination directory
  try
    TFile.Copy(sProfilePictureSignupPage, TPath.Combine(sDestinationDir, username + sExtension, True));
    TPath.Combine(sDestinationDir, TPath.GetFileName(sProfilePictureSignupPage)); // Return the path of the saved file
  except
    on E: Exception do
    begin
      ShowMessage('Error copying file: ' + E.Message);
    end;
  end;
end;

procedure TfrmMain.setCurrentCard(const Value: TCard);
begin
  _currentCard := Value;
  cplMain.ActiveCard := CurrentCard;
end;

procedure TfrmMain.UpdateCustomerSignupComponents;
begin
  if (string.IsNullOrWhiteSpace(edtCustomerSignupUsername.Text)) or
      (string.IsNullOrWhiteSpace(edtCustomerSignupPassword.Text)) or
      (string.IsNullOrWhiteSpace(edtCustomerSignupFirstName.Text)) or
      (string.IsNullOrWhiteSpace(edtCustomerSignupLastName.Text)) or
      (string.IsNullOrWhiteSpace(edtCustomerSignupNameOnCard.Text)) or
      (dtpCustomerSignupExpireyDate.DateTime <= Today) or
      (string.IsNullOrWhiteSpace(edtCustomerSignupSecurityCode.Text)) or
      (nbxCustomerSignupBalance.Value < 0)
      or (lstCustomerSignupBanks.ItemIndex = -1) then
  begin
    btnSignupSignup.Enabled := False;
    Exit;
  end;

  btnSignupSignup.Enabled := True;

end;

procedure TfrmMain.UpdateHabits();
begin
  var habitHandler := TFactory.createUserHabitHandler();


  var habits := habitHandler.getUserHabitsFor(currentCustomer.Username);


  if (habits.IsEmpty) then
    begin
      ShowMessage('Welcome to Eco Eats. This is your first Time using our App! We truly apprieciate your support!');
      Exit;
    end;

  HideCaret(redViewHabits.Handle);
  redViewHabits.Paragraph.TabCount := 1;
  redViewHabits.Paragraph.Tab[0] := 100;
  redViewHabits.Clear;
  for var i := 0 to High(habits.ToArray()) do
    begin
      redViewHabits.Lines.Add('Session ' + (i + 1).ToString()+ ' :' + #9 + habits[i].ToString + ' minute/s')
    end;

end;

procedure TfrmMain.UpdateLoginPageComponents;
begin
  if not (currentCard = cLogin) then
    begin
      edtLoginUsername.Clear;
      edtLoginPassword.Clear;
    end;

  if (string.IsNullOrWhiteSpace(edtLoginUsername.Text)) or
    (string.IsNullOrWhiteSpace(edtLoginPassword.Text)) then
    begin
      btnLoginLogin.Enabled := False;
      Exit;
    end;
  btnLoginLogin.Enabled := True;
end;

procedure TfrmMain.UpdateStoreComponents;
begin
  if (SelectedProductInStore = nil) then
    begin
      btnStoreAddToCart.Enabled := False;
    end
  else
    begin
      btnStoreAddToCart.Enabled := True;
    end;

  if (Cart.isEmpty) then
    begin
      btnStorePurchase.Enabled := False;
      btnStoreClear.Enabled := False;
    end
  else
    begin
      btnStorePurchase.Enabled := True;
      btnStoreClear.Enabled := True;
    end;

  if (SelectedProductInCart = nil) then
    begin
      btnStoreRemove.Enabled := False;
    end
  else
    begin
      btnStoreRemove.Enabled := True;
    end;

  DisplayCart();
end;

procedure TfrmMain.UpdateSupplierAddProductComponents;
begin
  if (
    (string.IsNullOrWhiteSpace(edtSupplierAddProductName.Text) or
    (nbxSupplierAddProductQuantity.Value < 1) or
    (string.IsNullOrWhiteSpace(redSupplierAddProductDescription.Text)) or
    (nbxSupplierAddProductPrice.Value <= 0)) or
    (string.IsNullOrWhiteSpace(sProductPictureAddProductPage))
    ) then
    begin
      btnSupplierAddProductAdd.Enabled := False;
    end
  else
    begin
      btnSupplierAddProductAdd.Enabled := True;
    end;

end;

end.
