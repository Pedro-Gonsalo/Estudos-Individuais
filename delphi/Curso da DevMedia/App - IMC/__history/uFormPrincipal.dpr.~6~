program uFormPrincipal;

uses
  Vcl.Forms,
  App_IMC in 'App_IMC.pas' {FormPrincipal},
  uFormRequisitos in 'uFormRequisitos.pas' {FormRequisitos},
  uFormResultado in 'uFormResultado.pas' {FormResultado},
  uDadosPessoa in 'uDadosPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormRequisitos, FormRequisitos);
  Application.CreateForm(TFormResultado, FormResultado);
  Application.Run;
end.
