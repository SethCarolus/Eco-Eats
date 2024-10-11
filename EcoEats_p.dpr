program EcoEats_p;

uses
  Vcl.Forms,
  global_u in 'global_u.pas',
  iAdmin_u in 'iAdmin_u.pas',
  iAlpha_u in 'iAlpha_u.pas',
  iCustomer_u in 'iCustomer_u.pas',
  iLogin_u in 'iLogin_u.pas',
  iSupplier_u in 'iSupplier_u.pas',
  users_u in 'users_u.pas',
  clsAdmin_u in 'clsAdmin_u.pas',
  clsAlpha_u in 'clsAlpha_u.pas',
  clsCustomer_u in 'clsCustomer_u.pas',
  clsFactory_u in 'clsFactory_u.pas',
  clsLogin_u in 'clsLogin_u.pas',
  clsMockLogin_u in 'clsMockLogin_u.pas',
  clsSupplier_u in 'clsSupplier_u.pas',
  Vcl.Themes,
  Vcl.Styles,
  frmMain_u in 'frmMain_u.pas' {frmMain},
  dmMain_u in 'dmMain_u.pas' {dmMain: TDataModule},
  clsBankCard_u in 'clsBankCard_u.pas',
  iBankCard_u in 'iBankCard_u.pas',
  iBank_u in 'iBank_u.pas',
  clsBank_u in 'clsBank_u.pas',
  clsSignup in 'clsSignup.pas',
  iSignup_u in 'iSignup_u.pas',
  DatabaseExceptions_u in 'DatabaseExceptions_u.pas',
  clsTimer_u in 'clsTimer_u.pas',
  ITimer_u in 'ITimer_u.pas',
  iLogout_u in 'iLogout_u.pas',
  clsLogout_u in 'clsLogout_u.pas',
  IUserHabitHandler_u in 'IUserHabitHandler_u.pas',
  clsUserHabitHandler_u in 'clsUserHabitHandler_u.pas',
  clsProduct_u in 'clsProduct_u.pas',
  IProduct_u in 'IProduct_u.pas',
  iProductHandler_u in 'iProductHandler_u.pas',
  clsProductHandler_u in 'clsProductHandler_u.pas',
  clsSupplierHandler_u in 'clsSupplierHandler_u.pas',
  iSupplierHandler_u in 'iSupplierHandler_u.pas',
  iCart_u in 'iCart_u.pas',
  clsCart_u in 'clsCart_u.pas',
  iPaymentHandler_u in 'iPaymentHandler_u.pas',
  clsPaymentHandler_u in 'clsPaymentHandler_u.pas',
  storeExceptions_u in 'storeExceptions_u.pas',
  clsCustomerHandler_u in 'clsCustomerHandler_u.pas',
  ICustomerHandler_u in 'ICustomerHandler_u.pas',
  iAdminHandler_u in 'iAdminHandler_u.pas',
  clsAdminHandler_u in 'clsAdminHandler_u.pas',
  clsBankCardHandler_u in 'clsBankCardHandler_u.pas',
  iBankCardHandler_u in 'iBankCardHandler_u.pas',
  clsBankHandler_u in 'clsBankHandler_u.pas',
  iBankHandler_u in 'iBankHandler_u.pas',
  clsAlphaHandler_u in 'clsAlphaHandler_u.pas',
  IAlphaHandler_u in 'IAlphaHandler_u.pas',
  clsUserHandler_u in 'clsUserHandler_u.pas',
  iUserHandler_u in 'iUserHandler_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
