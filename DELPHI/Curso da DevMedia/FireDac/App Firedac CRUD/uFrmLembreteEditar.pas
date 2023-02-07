unit uFrmLembreteEditar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDM, uLembreteDAO, uLembrete, generics.defaults, generics.collections,
  Vcl.ComCtrls;

type
  TFrmLembreteEditar = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdtTitulo: TEdit;
    MmDescricao: TMemo;
    Panel7: TPanel;
    BtnSalvar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DtpDataHora: TDateTimePicker;
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    _LembreteDAO: TLembreteDAO;
    _Lembrete: TLembrete;
    procedure PreencherLembrete;
    procedure PreencherTela;

    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; pLembrete: TLembrete);
  end;

var
  FrmLembreteEditar: TFrmLembreteEditar;

implementation

{$R *.dfm}

constructor TFrmLembreteEditar.Create(AOwner: TComponent; pLembrete: TLembrete);
begin
  inherited Create(AOwner);
  _LembreteDAO := TLembreteDAO.Create;

  try
    if Assigned(pLembrete) then
    begin
      _Lembrete := pLembrete;
      PreencherTela;
    end;
  except
    on e: exception do
       raise Exception.Create(E.Message);
  end;

end;

procedure TFrmLembreteEditar.FormDestroy(Sender: TObject);
begin
  try
    if Assigned(_LembreteDAO) then
      FreeAndNil(_LembreteDAO);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

procedure TFrmLembreteEditar.BtnSalvarClick(Sender: TObject);
begin
  PreencherLembrete;
  if _LembreteDAO.Alterar(_Lembrete) then
  begin
    ShowMessage('Registro editado com sucesso');
    Close;
  end;
end;

procedure TFrmLembreteEditar.BtnDeletarClick(Sender: TObject);
begin
  if _LembreteDAO.Deletar(_Lembrete) then
  begin
    ShowMessage('Registro excluído com sucesso');
    Close;
  end;
end;

procedure TFrmLembreteEditar.PreencherLembrete;
begin
  _Lembrete.Titulo    := EdtTitulo.Text;
  _Lembrete.Descricao := MmDescricao.Text;
  _Lembrete.DataHora  := DtpDataHora.DateTime;
end;

procedure TFrmLembreteEditar.PreencherTela;
begin
  EdtTitulo.Text       := _Lembrete.Titulo;
  MmDescricao.Text     := _Lembrete.Descricao;
  DtpDataHora.DateTime := _Lembrete.DataHora;
end;

end.
