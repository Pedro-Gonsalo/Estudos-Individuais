unit uFrmLembreteInserir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDM, uLembreteDAO, uLembrete, generics.defaults, generics.collections,
  Vcl.ComCtrls;

type
  TFrmLembreteInserir = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtTitulo: TEdit;
    MmDescricao: TMemo;
    Panel7: TPanel;
    BtnSalvar: TSpeedButton;
    DtpDataHora: TDateTimePicker;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    _LembreteDAO: TLembreteDAO;
    _Lembrete: TLembrete;
    procedure PreencherLembrete;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLembreteInserir: TFrmLembreteInserir;

implementation

{$R *.dfm}

procedure TFrmLembreteInserir.FormCreate(Sender: TObject);
begin
  DtpDataHora.DateTime := Now;
  _Lembrete    := TLembrete.Create;
  _LembreteDAO := TLembreteDAO.Create;
end;

procedure TFrmLembreteInserir.FormDestroy(Sender: TObject);
begin
  try
    if Assigned(_Lembrete) then
      FreeAndNil(_Lembrete);
    if Assigned(_LembreteDAO) then
      FreeAndNil(_LembreteDAO);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TFrmLembreteInserir.BtnSalvarClick(Sender: TObject);
begin
  PreencherLembrete;
  if _LembreteDAO.Inserir(_Lembrete) then
  begin
    ShowMessage('Registro Inserido com sucesso');
    Close;
  end;
end;

procedure TFrmLembreteInserir.PreencherLembrete;
begin
  _Lembrete.Titulo    := EdtTitulo.Text;
  _Lembrete.Descricao := MmDescricao.Text;
  _Lembrete.DataHora  := DtpDataHora.DateTime;
end;

end.
