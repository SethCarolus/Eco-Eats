program EcoEats_p;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {Form9},
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
  dmMain_u in 'dmMain_u.pas' {dmMain: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
