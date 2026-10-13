program App_Elementos_Visuais;

uses
  Vcl.Forms,
  uFormPrincipal in 'uFormPrincipal.pas' {FormPrincipal},
  uFormDataHora in 'uFormDataHora.pas' {FormDataHora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormDataHora, FormDataHora);
  Application.Run;
end.
