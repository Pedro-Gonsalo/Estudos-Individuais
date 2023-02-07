program App_ReportMemoryLeaksOnShutdown_v2;

uses
  Vcl.Forms,
  uFrmLembrete in 'uFrmLembrete.pas' {Form1},
  uVenda in 'uVenda.pas',
  uVendaItem in 'uVendaItem.pas',
  uSistema in 'uSistema.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
