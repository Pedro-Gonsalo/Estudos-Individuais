unit uFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrame1 = class(TFrame)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrame1.Button1Click(Sender: TObject);
begin
  ShowMessage('Botão 1 clicado');
end;

procedure TFrame1.Button2Click(Sender: TObject);
begin
  ShowMessage('Botão 2 clicado');
end;

procedure TFrame1.Button3Click(Sender: TObject);
begin
   ShowMessage('Botão 3 clicado');
end;

end.
