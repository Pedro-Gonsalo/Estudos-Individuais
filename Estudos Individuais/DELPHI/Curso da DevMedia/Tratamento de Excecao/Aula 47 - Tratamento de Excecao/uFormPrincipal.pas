unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  uCalc;

type
  TForm1 = class(TForm)
    LEditValor1: TLabeledEdit;
    LEditValor2: TLabeledEdit;
    LEditResultado: TLabeledEdit;
    SBsoma: TSpeedButton;
    SBsubtrai: TSpeedButton;
    SBmultiplica: TSpeedButton;
    SBdividi: TSpeedButton;
    procedure SBsubtraiClick(Sender: TObject);
    procedure SBsomaClick(Sender: TObject);
    procedure SBmultiplicaClick(Sender: TObject);
    procedure SBdividiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Calculadora: TCalculadora;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SBsomaClick(Sender: TObject);
begin
    Calculadora.Valor1 := LEditValor1.Text;
    Calculadora.Valor2 := LEditValor2.Text;
    Calculadora.ExecutaOperacao(opSomar);
    LEditResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.SBsubtraiClick(Sender: TObject);
begin
    Calculadora.Valor1 := LEditValor1.Text;
    Calculadora.Valor2 := LEditValor2.Text;
    Calculadora.ExecutaOperacao(opSubtrair);
    LEditResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.SBmultiplicaClick(Sender: TObject);
begin
    Calculadora.Valor1 := LEditValor1.Text;
    Calculadora.Valor2 := LEditValor2.Text;
    Calculadora.ExecutaOperacao(opMultiplicar);
    LEditResultado.Text := Calculadora.Resultado;
end;

procedure TForm1.SBdividiClick(Sender: TObject);
begin
    Calculadora.Valor1 := LEditValor1.Text;
    Calculadora.Valor2 := LEditValor2.Text;
    Calculadora.ExecutaOperacao(opDividir);
    LEditResultado.Text := Calculadora.Resultado;
end;

end.
