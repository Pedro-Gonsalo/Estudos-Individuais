unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFrame, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Frame11: TFrame1;
    Frame12: TFrame1;
    Panel1: TPanel;
    Frame13: TFrame1;
    procedure Frame11Button2Click(Sender: TObject);
    procedure Frame12Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Frame11Button2Click(Sender: TObject);
begin
  Frame11.Button2Click(Sender);
  ShowMessage('Mais uma mensagem');
end;

procedure TForm1.Frame12Button2Click(Sender: TObject);
begin
//  Frame12.Button2Click(Sender);
   ShowMessage('Outra mensagem');
end;

end.
