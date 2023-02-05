unit uFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uFrmTela1, uFrmTela2;

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
begin
  FrmTela1 := TFrmTela1.Create(Self);
  FrmTela1.ShowModal;
  FreeAndNil(FrmTela1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FrmTela2 := TFrmTela2.Create(Self);
  FrmTela2.ShowModal;
  FreeAndNil(FrmTela2);
end;

end.
