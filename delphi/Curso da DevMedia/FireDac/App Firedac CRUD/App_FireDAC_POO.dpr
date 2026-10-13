program App_FireDAC_POO;

uses
  Vcl.Forms,
  uDM in 'uDM.pas' {DM: TDataModule},
  uFrmConsulta in 'uFrmConsulta.pas' {FrmConsulta},
  uLembrete in 'Model\uLembrete.pas',
  uBaseDAO in 'DAO\uBaseDAO.pas',
  uLembreteDAO in 'DAO\uLembreteDAO.pas',
  uFrmLembreteInserir in 'uFrmLembreteInserir.pas' {FrmLembreteInserir},
  uFrmLembreteEditar in 'uFrmLembreteEditar.pas' {FrmLembreteEditar};

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.CreateForm(TFrmLembreteEditar, FrmLembreteEditar);
  Application.Run;
end.
