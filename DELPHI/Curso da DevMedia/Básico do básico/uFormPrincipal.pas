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
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);

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
  // ShowMessage(IntToStr(Somar2(v1, v2)));
  // ShowMessage(IntToStr(Somar3(x, y)));

  ShowMessage('x: ' + IntToStr(x));
  ShowMessage('y: ' + IntToStr(y));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin

  // Ao invés de se referir a um objeto várias vezes usar o With
  // Edit1.Width = 200;
  // Edit1.Color = clBlue;
  // Edit1.Font.Size = 16;
  // Edit1.Font.Color = clWhite;

  with Edit1, Button3 do // o mais à direita tem prioridade
  begin
    Width := 200;
    Color := clBlue;
    Font.Size := 16;
    Font.Color := clWhite;
    Caption := 'Clicado';
    Default := true;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  // TOMAR CUIDADO, MAIS DE 1 LINHA USAR BEGIN END
  if true then
  begin
    ShowMessage('LINHA 1 TRUE');
    ShowMessage('LINHA 2 TRUE');
  end
  else
  begin
    ShowMessage('LINHA 1 FALSE');
    ShowMessage('LINHA 2 FALSE');
  end;

end;

procedure TForm1.Button5Click(Sender: TObject);
var
  x: Integer;
begin
  x := 5;

  case x of
    1:
      ShowMessage('x é 1');
    2:
      ShowMessage('x é 2');
    3:
      ShowMessage('x é 3');
    4:
      ShowMessage('x é 4');
    5 .. 7:
      begin
        ShowMessage('x é 5');
        ShowMessage('ou x é 6');
        ShowMessage('ou x é 7');
      end
  else
    ShowMessage('Não sei o valor de x');
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  I: Integer;
begin
  I := 0;

  // Igual o do while
  repeat
    ShowMessage('Contador: ' + IntToStr(I));
    Inc(I);
  until (I > 3);
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  I: Integer;
begin
  I := 0;

  while I <= 3 do
  begin
    ShowMessage('Contador: ' + IntToStr(I));
    Inc(I) // Inc = incremento
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  I: Integer;
begin
  // Incremental
  // for I := 3 downto 0 do
  // begin
  // ShowMessage('Contador: ' + IntToStr(I));
  // end;

  // Decremental
  for I := 0 to 5 do
  begin
    ShowMessage('Contador: ' + IntToStr(I));

    if (I mod 2 <> 0) or (I = 0) then
      continue; // continue volta para o inicio do loop
    begin
      ShowMessage(IntToStr(I) + ' é Par');
    end;

    if I = 4 then
      break; // break saí do loop
  end;

  ShowMessage('Saiu do loop for');
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  S: String;
  L: char;
  I: Integer;

begin
  S := 'PALAVRA';

  for L in S do // Utilizado para varrer listas
  begin
    ShowMessage(L);
  end;

  // For in é igual fazer o código abaixo
  for I := 1 to Length(S) do
  begin
    ShowMessage(S[I]);
  end;
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
  // v1 := 40;
  // v2 := 60;
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
