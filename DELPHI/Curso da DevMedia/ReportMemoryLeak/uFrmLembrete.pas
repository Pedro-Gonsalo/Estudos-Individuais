unit uFrmLembrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uVenda, uVendaItem, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
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
  tempVenda: TVenda;
begin
  tempVenda := TVenda.Create;
  tempVenda.IDVenda := 1;
  tempVenda.Data    := Now;
  tempVenda.AdicionarVendaItem('Sony Vaio XR8472');

  //salvar no banco de dados

  FreeAndNil(tempVenda);
end;

end.
