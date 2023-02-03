unit uFormPrincipalpas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  // Dados do tipo ordinário
  tCor = (tcAzul, tcVerde, tcAmarelo);

  TMyClass<T> = class
  private
    FGeneric: T;
    FDofoo: String;
    procedure SetDofoo(const Value: String);
  published
    Property Dofoo: String read FDofoo write SetDofoo;
    Property Generic: T read FGeneric write FGeneric;
  end;

  tNumero = 1 .. 100;
  tNumSet = set of char;

  TCliente = record
    Codigo: Cardinal;
    Nome: String;
    Email: String;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Edit1: TEdit;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }

    i: Integer;
  end;

var
  Form1: TForm1;

const
  NumSet: tNumSet = ['0' .. '9'];

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  i := 94165165;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(IntToStr(ord(i)));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage(IntToStr(pred(i)));
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage(IntToStr(Succ(i)));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowMessage(IntToStr(High(i)));
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ShowMessage(IntToStr(Low(i)));
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  cor: tCor;
  n: tNumero;
begin
  cor := tcAzul;
  n := 100;

  ShowMessage(IntToStr(n));
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  arrayInt: array [1 .. 10] of Integer;
  matrizInt: array [1 .. 3, 1 .. 3] of Integer;
  arrayDinamico: array of Integer;
begin
  // Array Estático
  arrayInt[1] := 50;

  // Matriz
  matrizInt[1, 1] := 100;
  matrizInt[2, 2] := 150;

  // Array Dinâmico
  SetLength(arrayDinamico, length(arrayDinamico) + 1);
  arrayDinamico[High(arrayDinamico)] := 200;

  ShowMessage(IntToStr(arrayInt[1]));
  ShowMessage(IntToStr(matrizInt[1, 1]));
  ShowMessage(IntToStr(arrayDinamico[High(arrayDinamico)]));
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  Cliente: TCliente;
begin
  Cliente.Codigo := 1;
  Cliente.Nome := 'Pedro Gonçalo';
  Cliente.Email := 'email123@gmail.com';

  ShowMessage(IntToStr(Cliente.Codigo) + ' - ' + Cliente.Nome + ' - ' +
    Cliente.Email);
end;

procedure TForm1.Button9Click(Sender: TObject);
var
  Nome: String;
  PNome: ^String; // Defininfo ponteiro
begin
  // DEBUGAR

  Nome := 'Rodrigo';
  ShowMessage(Nome);

  PNome := @Nome;

  PNome^ := 'Mariana'; // Mudando o valor de Nome através do ponteiro PNome

  ShowMessage(Nome);

end;

procedure TForm1.Button10Click(Sender: TObject);
var
  V: Variant;
begin
  V := 'Isso é uma String';
  ShowMessage(V);

  V := 250;
  ShowMessage(V);

  V := 450.20;
  ShowMessage(V);
end;

procedure TForm1.Button11Click(Sender: TObject);
var
  C: TMyClass<Integer>;
begin
  C := TMyClass<Integer>.Create;
  C.Generic := 1;
  C.Dofoo := 'Rodrigo';

  ShowMessage(IntToStr(C.Generic));
  ShowMessage(C.Dofoo);
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if not(Key in NumSet) then
    raise Exception.Create('Caracter inválido: "' + QuotedStr(Key) +
      '". Só aceita números');

end;

// METHODS
procedure TMyClass<T>.SetDofoo(const Value: String);
begin
  FDofoo := Value;
end;

end.

// ANOTAÇÕES
(*
  1. Trabalhar com variaveis
  - ord, pred, Succ, High, Low

  2. Array estático, array dinâmico, Matriz

  3. Generics
  - Permiti declarar o tipo de objetos, propriedades ou parâmetros só na hora em que forem utilizados
*)
