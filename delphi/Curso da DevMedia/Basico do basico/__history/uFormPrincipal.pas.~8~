unit uFormPrincipal;

interface

uses // Parecido com o Import do Vue.js
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations, ou seja, declarar aqui tudo que só pode ser usado nesse form }

  public
    { Public declarations, ou seja, declarar aqui tudo que será utilizado nesse e em outros forms }

    // O 1° integer é o tipo dos parametros. E o 2° Integer é o tipo de dado que a função vai retornar
    function Somar(v1, v2: Integer): Integer;

    // Função com parametros que esperam uma referência (recebem variaveis)
    function Somar2(var v1, v2: Integer): Integer;

    // Função com parametros constantes
    function Somar3(const v1, v2: Integer): Integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm} // Diretiva de compilação - {$ ...}

procedure TForm1.Button1Click(Sender: TObject);
// Declaração de variáveis
// var
// s: String;
// b: Boolean;
// d: Double;
// i: Integer;

begin
  // Referente a divisão no delphi
  ShowMessage('Divisão com /: ' + FloatToStr(9 / 2) + ' - Divisão com div: ' +
    IntToStr(4 div 2) + ' - Resto da divisão: ' + IntToStr(10 mod 3));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  x: Integer;
  y: Integer;

begin
  x := 10;
  y := 5;

  ShowMessage(IntToStr(Somar(10, 5)));
//  ShowMessage(IntToStr(Somar2(v1, v2)));
//  ShowMessage(IntToStr(Somar3(x, y)));

  ShowMessage('x: ' + IntToStr(x));
  ShowMessage('y: ' + IntToStr(y));
end;

// MÉTODOS
function TForm1.Somar(v1, v2: Integer): Integer;
begin
  Result := v1 + v2;

  v1 := 20;
  v2 := 30;
end;

function TForm1.Somar2(var v1, v2: Integer): Integer;
begin
  Result := v1 + v2;

  // É possível trocar o valor das variaveis passadas daqui de dentro da função
  v1 := 20;
  v2 := 30;
end;

function TForm1.Somar3(const v1, v2: Integer): Integer;
begin
  // Não deixa alterar o valor das variaveis passadas como parametros
//  v1 := 40;
//  v2 := 60;
end;

end.






(* ANOTAÇÕES

  1. Formas de comentários
  - //
  - {  }
  - e o jeito que foi comentado esse bloco de código


  2. '/' - div - mod
  - '/' : Retorna a divisao exata, do jeito que vier.
  Exemplo: 9 / 2 = 4.5

  - div : Retorna a parte inteira da divisao.
  Exemplo: 9 div 2 = 4

  - Mod = resto de uma divisão


  3. Operadores Lógicos
  - not: negativa
  - and: tipo &&
  - or: tipo ||
  - xor: exclusivo verdade


  4. Operadores de atribuição
  - = igual
  - <> diferente
  - NADA MUDOU: <, >, <=, >=


  5. Chamada de métodos e tipos de parâmetros

*)
