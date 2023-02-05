program ProjDefault;

uses
  Forms,
  uFrmMain in 'uFrmMain.pas' {FrmMain},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
