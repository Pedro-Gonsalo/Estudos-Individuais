program Tratamento_Excecao;

uses
  Vcl.Forms,
  uFormPrincipal in '..\..\..\..\..\backups\uFormPrincipal.pas' {Form1},
  uCalc in 'uCalc.pas',
  uDM in 'uDM.pas' {DataModule1: TDataModule},
  uFormConfig in 'uFormConfig.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
