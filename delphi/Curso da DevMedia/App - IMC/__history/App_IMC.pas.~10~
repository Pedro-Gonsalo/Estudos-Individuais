unit App_IMC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uFormResultado, uFormRequisitos,
  uDadosPessoa;

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
  try
    P_Dados_Pessoa.Altura := StrToFloat(EditAltura.Text);
    P_Dados_Pessoa.Peso := StrToFloat(EditPeso.Text);
    P_Dados_Pessoa.Sexo := CBSexo.Text;
    p_Dados_Pessoa.IMC := Calcular_IMC(p_Dados_Pessoa.Peso,
                                       p_Dados_Pessoa.Altura,
                                       p_Dados_Pessoa.Sexo);

    p_Dados_Pessoa.Conclusao_imc := Conclusao_IMC(p_Dados_Pessoa.Peso,
                                       p_Dados_Pessoa.Altura,
                                       p_Dados_Pessoa.Sexo);
    FormResultado.ShowModal;
  except
    MessageDlg('Dados inválidos!', mtError, [mbOK], 0);
  end;
end;

procedure TFormPrincipal.BtnRequisitosClick(Sender: TObject);
begin
  FormRequisitos.ShowModal;
end;

end.
