unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, uDM,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    DBid: TDBEdit;
    DBnome: TDBEdit;
    DBsetor: TDBEdit;
    EditFiltro: TEdit;
    Button1: TButton;
    procedure SpeedButton1Click(Sender: TObject);
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
begin
  DM.FDQueryFunc.Open('select * from Funcionario where id = ' + EditFiltro.Text);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  DM.FDQueryFunc.Open('select * from Funcionario');
end;

end.
