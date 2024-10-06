program EcoEats_p;

uses
  Vcl.Forms,
  global_u in 'global_u.pas',
  iAdmin_u in 'iAdmin_u.pas',
  iAlpha_u in 'iAlpha_u.pas',
  iCustomer_u in 'iCustomer_u.pas',
  iDatabaseManager_u in 'iDatabaseManager_u.pas',
  iLogin_u in 'iLogin_u.pas',
  iSupplier_u in 'iSupplier_u.pas',
  users_u in 'users_u.pas',
  clsAdmin_u in 'clsAdmin_u.pas',
  clsAlpha_u in 'clsAlpha_u.pas',
  clsCustomer_u in 'clsCustomer_u.pas',
  clsDatabaseManager_u in 'clsDatabaseManager_u.pas',
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
  clsUserHabitHandler_u in 'clsUserHabitHandler_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
