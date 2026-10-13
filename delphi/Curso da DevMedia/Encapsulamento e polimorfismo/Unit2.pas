unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit4, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Produto: TProduto;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
var
  DELL, HP: TComputador;
begin
  DELL := TComputador.Create;
  DELL.Nome := 'Optiplex';
  DELL.Modelo := '3010';
  DELL.SistemaOperacional := 'Windows 8.1';
  DELL.PlacaRede := 'Sim';
  DELL.Preço := '1000';
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Produto := TDispositivo.Create;
  ShowMessage(Produto.ExibeDados);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Produto := TComputador.Create;
  ShowMessage(Produto.ExibeDados);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Produto := TCelular.Create;
  ShowMessage(Produto.ExibeDados);
end;

end.
