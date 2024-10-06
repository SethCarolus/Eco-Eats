unit frmMain_u;

interface

uses
  iLogin_u, iSignup_u,
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
    Button2: TButton;
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
  private
    { Private declarations }
    procedure NavigateToFirstPage(const username: string; const login : ILogin);
    procedure UpdateLoginPageComponents();
    procedure UpdateCustomerSignupComponents();
    procedure UpdateHabits();
    procedure SaveProfilePicture(const username: string);
    function getCurrentCard: TCard;
    procedure setCurrentCard(const Value: TCard);
    property CurrentCard: TCard read getCurrentCard write setCurrentCard;
    procedure LogOut();
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
  uses clsFactory_u, global_u, users_u, iBankCard_u, iBank_u,
    DatabaseExceptions_u, DateUtils, iLogout_u, IUserHabitHandler_u;
  var iSelectedIndexofBankOnSignupPage : Integer;
  var sProfilePictureSignupPage : string;
  var _currentCard : TCard;

{$R *.dfm}

procedure TfrmMain.btnAboutUsClick(Sender: TObject);
begin
  var signup := TFactory.createSignup();
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
  end;

  SaveProfilePicture(customer.Username);

  ShowMessage('Sign Up Completed');
end;

procedure TfrmMain.btnViewHabitsBackClick(Sender: TObject);
begin
  if (currentUserType = utCustomer) then
    CurrentCard := cCustomerViewProfile;
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

procedure TfrmMain.cViewHabitsEnter(Sender: TObject);
begin
  btnViewHabitsBack.SetFocus();
end;

procedure TfrmMain.dtpCustomerSignupExpireyDateChange(Sender: TObject);
begin
  UpdateCustomerSignupComponents();
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

  var logOut : ILogout := TFactory.createLogout;

  logOut.LogTimeSpent(username, Ceil(Timer.elapsedSeconds / 60));
end;

procedure TfrmMain.lstCustomerSignupBanksClick(Sender: TObject);
begin
  // No Change Has occured
  if (iSelectedIndexofBankOnSignupPage =  lstCustomerSignupBanks.ItemIndex) then
      Exit;
  iSelectedIndexofBankOnSignupPage := lstCustomerSignupBanks.ItemIndex;
  UpdateCustomerSignupComponents();
end;

procedure TfrmMain.NavigateToFirstPage(const username: string; const login : ILogin);
begin
  currentUserType := login.getUserType(username);

    case currentUserType of
        utCustomer:
          begin
            login.setupCustomer(username);
            CurrentCard := cCustomerViewProfile;
          end;
        utSupplier:
          begin
            currentSupplier := login.getSupplier(username);
            // cplMain.ActiveCard :=
          end;
        utAdmin:
          begin
            currentAdmin := login.getAdmin(username);
            //cplMain.ActiveCard :=
          end;
        utAlpha:
          begin
            currentAlpha := login.getAlpha(username);
            //cplMain.ActiveCard :=
          end;
    end;
end;

procedure TfrmMain.nbxCustomerSignupBalanceChange(Sender: TObject);
begin
    UpdateCustomerSignupComponents();
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

procedure TfrmMain.SaveProfilePicture(const username: string);
var
  DestinationDir: string;
begin
  // Set the destination directory relative to the application's executable
  DestinationDir := ExtractFilePath(Application.ExeName) + 'CustomerProfilePictures';

  // Ensure the destination directory exists
  if not TDirectory.Exists(DestinationDir) then
    TDirectory.CreateDirectory(DestinationDir);

  // Get the original file extension
  var sExtension := TPath.GetExtension(sProfilePictureSignupPage);

  // Copy the file to the destination directory
  try
    TFile.Copy(sProfilePictureSignupPage, TPath.Combine(DestinationDir, username + sExtension, True));
    TPath.Combine(DestinationDir, TPath.GetFileName(sProfilePictureSignupPage)); // Return the path of the saved file
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

end.
