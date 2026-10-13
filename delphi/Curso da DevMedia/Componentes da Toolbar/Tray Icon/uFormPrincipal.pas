unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.AppEvnts, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    TrayIcon1: TTrayIcon;
    Encerrar1: TMenuItem;
    Exibir1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Encerrar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Minimize(Sender: TObject);
    procedure Exibir1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ApplicationEvents1Minimize(Sender: TObject);
begin
  Hide;
  TrayIcon1.ShowBalloonHint
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TrayIcon1.BalloonHint := 'Aplicação em estado de alerta';
  TrayIcon1.BalloonFlags := bfWarning;
  TrayIcon1.BalloonTitle := 'Alerta';

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TrayIcon1.BalloonHint := 'Erro na aplicação';
  TrayIcon1.BalloonFlags := bfError;
  TrayIcon1.BalloonTitle := 'ERRO';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  TrayIcon1.BalloonHint := 'Aplicação em estado normal';
  TrayIcon1.BalloonFlags := bfInfo;
  TrayIcon1.BalloonTitle := 'Info';
end;

procedure TForm1.Encerrar1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Exibir1Click(Sender: TObject);
begin
  Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//  TrayIcon1.ShowBalloonHint;
end;

end.


// ANOTAÇÕES
(*

  Depois verificar a propriedade Animate do TrayIcon

*)
