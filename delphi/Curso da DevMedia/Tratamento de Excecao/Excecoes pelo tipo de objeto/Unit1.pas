unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    EditValor1: TEdit;
    EditValor2: TEdit;
    EditResultado: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  n1, n2, Resultado: Double;
begin
  try
    n1 := StrToFloat(EditValor1.Text);
    n2 := StrToFloat(EditValor2.Text);
    Resultado := n1 / n2;

    EditResultado.Text := FloatToStr(Resultado);
  except
    on E: EConvertError do // Exceção ao converter o valor

      // #13 = quebra de linha
      ShowMessage('Falha ao tentar converter os valores. ' + #13 +
                  'Verifique se os valores são válidos. ' + #13 +
                  'Erro: ' + E.Message);

    on E: EZeroDivide do

      ShowMessage('Não é possível dividir por zero. ' + #13 +
                  'Erro: ' + E.Message);

    on E: Exception do

      ShowMessage('Uma falha não esperada ocorreu. ' + #13 + 'Erro: ' +
        E.Message);

  end;
  ShowMessage('Fim da Rotina');
end;

end.
