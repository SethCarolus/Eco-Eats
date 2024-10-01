program EcoEats_p;

uses
  Vcl.Forms,
  frmMain_u in 'frmMain_u.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
