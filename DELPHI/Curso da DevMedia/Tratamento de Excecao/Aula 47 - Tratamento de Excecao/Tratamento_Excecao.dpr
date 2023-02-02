program Tratamento_Excecao;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {Form1},
  uCalc in 'uCalc.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
