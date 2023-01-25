unit App_IMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFormResultado, uFormRequisitos;

type
  TFormPrincipal = class(TForm)
    BtnResultado: TButton;
    BtnRequisitos: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    EditAltura: TEdit;
    EditPeso: TEdit;
    CBSexo: TComboBox;
    procedure BtnRequisitosClick(Sender: TObject);
    procedure BtnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

procedure TFormPrincipal.BtnResultadoClick(Sender: TObject);
begin
  FormResultado.ShowModal;
end;

procedure TFormPrincipal.BtnRequisitosClick(Sender: TObject);
begin
  FormRequisitos.ShowModal;
end;

end.
