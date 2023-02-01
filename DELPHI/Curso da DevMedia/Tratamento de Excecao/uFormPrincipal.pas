unit uFormPrincipal;

interface

uses
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
  v1, v2: Integer;
  resultado: Double;
begin
  try
    v1 := 10;
    v2 := 2;

    resultado := v1 / v2;
    ShowMessage('Resultado: ' + FloatToStr(resultado));
    ShowMessage('Após o código');
  except
    ShowMessage('Ocorreu um erro');
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  v1, v2: Integer;
  resultado: Double;
begin
  try
    Screen.Cursor := crHourGlass;
    try
      Sleep(1000);

      v1 := 10;
      v2 := 2;

      resultado := v1 / v2;
      ShowMessage('Resultado: ' + FloatToStr(resultado));
      ShowMessage('Após o código');
    except
      ShowMessage('Ocorreu um erro');
    end;
  finally
     Screen.Cursor := crDefault;
  end;
end;

end.


// ANOTAÇÕES

(*
  1. Try - Except: o except só é executado caso de erro no try

  2. Try - Finaly: finaly é executado, independentemente, se ocorrer um erro ou não no try
*)
