program Tipos_de_Dados;

uses
  Vcl.Forms,
  uFormPrincipalpas in 'uFormPrincipalpas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
