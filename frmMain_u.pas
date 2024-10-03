unit frmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Imaging.pngimage, jpeg, ilogin_u, Vcl.Buttons;

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
    Label8: TLabel;
    btnCustomerViewProfileClose: TBitBtn;
    btnCustomerViewProfileBack: TBitBtn;
    edtCustomerViewProfileBankCardNameOnCard: TEdit;
    edtCustomerViewProfileBankCardExpireyDate: TEdit;
    edtCustomerViewProfileBankCardSecurityCode: TEdit;
    edtCustomerViewProfileBankCardBalance: TEdit;
    edtCustomerViewProfileBankLongName: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure btnLoginLoginClick(Sender: TObject);
    procedure cCustomerViewProfileEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCustomerViewProfileBackClick(Sender: TObject);
  private
    { Private declarations }
    procedure NavigateToFirstPage(const username: string; const login : ILogin);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
  uses iCustomer_u, clsFactory_u, global_u, users_u;

{$R *.dfm}

procedure TfrmMain.btnCustomerViewProfileBackClick(Sender: TObject);
begin
  cplMain.ActiveCard := cLogin;
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


  except
    on E: Exception do
    begin
      ShowMessage('An error occurred during the login process: ' + E.Message);
    end;
  end;
end;

procedure TfrmMain.cCustomerViewProfileEnter(Sender: TObject);
begin
  try
      ImgViewProfile.Picture.LoadFromFile(GetCurrentDir +  '/CustomerProfilePictures/' + currentCustomer.ProfilePicture);
  except
    on e :Exception do
      begin
        ImgViewProfile.Picture.LoadFromFile(GetCurrentDir + '/CustomerProfilePictures/ProfilePicture.jpg');
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
  cplMain.ActiveCard := cLogin;
end;

procedure TfrmMain.NavigateToFirstPage(const username: string; const login : ILogin);
begin
    var userType := login.getUserType(username);

    case userType of
        utCustomer:
          begin
            login.setupCustomer(username);
            cplMain.ActiveCard := cCustomerViewProfile;
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

end.
