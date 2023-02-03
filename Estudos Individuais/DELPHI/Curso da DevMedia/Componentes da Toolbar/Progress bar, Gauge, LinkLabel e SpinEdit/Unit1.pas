unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Gauges, Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ProgressBar1: TProgressBar;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Gauge1: TGauge;
    SpinEdit1: TSpinEdit;
    LinkLabel1: TLinkLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LinkLabel1Click(Sender: TObject);
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
  I: Integer;
begin
  ProgressBar1.Position := 0;

  for I := 0 to 1000 do
  begin
    if RadioButton1.Checked then
      ProgressBar1.State := pbsNormal;
    if RadioButton2.Checked then
      ProgressBar1.State := pbsPaused;
    if RadioButton3.Checked then
      ProgressBar1.State := pbsError;

    if CheckBox1.Checked then
      ProgressBar1.Style := pbstMarquee
    else
      ProgressBar1.Style := pbstNormal;


    ProgressBar1.Position := ProgressBar1.Position + 1;

    Sleep(100);
    Application.ProcessMessages;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I: Integer;
begin
    for I := 0 to 1000 do
    begin
      Gauge1.Progress := I;
      Sleep(100);
      Application.ProcessMessages;
    end;
end;
procedure TForm1.LinkLabel1Click(Sender: TObject);
begin
  // Abrir o link no navegador
  // ShellExecute(Handle, 'Open', Pchar(Link), '', '', SW_NORMAL);
end;

end.
