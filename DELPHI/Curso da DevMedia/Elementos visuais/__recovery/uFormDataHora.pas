unit uFormDataHora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFormDataHora = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    LDataHora: TLabel;
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataHora: TFormDataHora;

implementation

{$R *.dfm}

procedure TFormDataHora.FormShow(Sender: TObject);
begin
  Timer1.Enabled := true;
  LDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

procedure TFormDataHora.Timer1Timer(Sender: TObject);
begin
  LDataHora.Caption := FormatDateTime('dd/mm/yyyy hh:mm:ss', now);
end;

procedure TFormDataHora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := false;
end;

end.
