program Heranca;

uses
  Forms,
  uFrmMain in 'uFrmMain.pas' {Form1},
  uFrmBase in 'uFrmBase.pas' {FrmBase},
  uFrmTela1 in 'uFrmTela1.pas' {FrmTela1},
  uFrmTela2 in 'uFrmTela2.pas' {FrmTela2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
