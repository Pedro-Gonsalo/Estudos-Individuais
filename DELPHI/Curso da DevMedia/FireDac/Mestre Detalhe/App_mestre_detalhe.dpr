program App_mestre_detalhe;

uses
  Vcl.Forms,
  PrincipalFrm in 'PrincipalFrm.pas' {frmPrincipal},
  ConexaoDtm in 'ConexaoDtm.pas' {dtmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.Run;
end.
