program Componentes_Frames;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {Form1},
  uFrame in 'uFrame.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
