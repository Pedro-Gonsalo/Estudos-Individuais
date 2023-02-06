program Teste_FireDac;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {Form1},
  uDataModule in 'uDataModule.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
