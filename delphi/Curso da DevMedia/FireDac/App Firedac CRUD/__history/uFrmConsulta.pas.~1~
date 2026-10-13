unit uFrmConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uDM, uLembreteDAO, uLembrete, generics.defaults,
  generics.collections;

type
  TFrmConsulta = class(TForm)
    Panel8: TPanel;
    BtnDeletar: TSpeedButton;
    BtnNovo: TSpeedButton;
    ListView1: TListView;
    Panel3: TPanel;
    Panel1: TPanel;
    BtnListarPorTitulo_Descricao: TSpeedButton;
    Panel6: TPanel;
    Label5: TLabel;
    EdtListarTitulo_Descricao: TEdit;
    BtnEditar: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure BtnListarPorTitulo_DescricaoClick(Sender: TObject);
    procedure ListView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnDeletarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
  private
    { Private declarations }
    _LembreteDAO: TLembreteDAO;
    procedure PreencherListView(pListaLembrete: TList<TLembrete>);
    procedure CarregarColecao;
    procedure EditarLembrete;
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

uses uFrmLembreteInserir, uFrmLembreteEditar;

procedure TFrmConsulta.FormCreate(Sender: TObject);
begin
  DM := TDM.Create(Self);
  _LembreteDAO := TLembreteDAO.Create;
end;

procedure TFrmConsulta.FormDestroy(Sender: TObject);
begin
  try
    // Função assigned =

    if Assigned(_LembreteDAO) then
      FreeAndNil(_LembreteDAO);
    if Assigned(DM) then
      FreeAndNil(DM);
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

procedure TFrmConsulta.BtnNovoClick(Sender: TObject);
begin
  try
    FrmLembreteInserir := TFrmLembreteInserir.Create(Self);
    FrmLembreteInserir.ShowModal;
    CarregarColecao;
  finally
    FreeAndNil(FrmLembreteInserir);
  end;
end;

procedure TFrmConsulta.BtnEditarClick(Sender: TObject);
begin
  EditarLembrete;
end;

procedure TFrmConsulta.ListView1DblClick(Sender: TObject);
begin
  EditarLembrete;
end;

procedure TFrmConsulta.BtnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja remover este item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    if ListView1.ItemIndex > -1 then
    begin
      if _LembreteDAO.Deletar(TLembrete(ListView1.ItemFocused.Data)) then
        CarregarColecao;
    end;
  end;
end;

procedure TFrmConsulta.BtnListarPorTitulo_DescricaoClick(Sender: TObject);
begin
  CarregarColecao;
end;


// Métodos
procedure TFrmConsulta.PreencherListView(pListaLembrete: TList<TLembrete>);
var
  I: Integer;
  tempItem: TListItem;
begin
  if Assigned(pListaLembrete) then
  begin
    ListView1.Clear;
    for I := 0 to pListaLembrete.Count - 1 do
    begin
      tempItem := ListView1.Items.Add;
      tempItem.Caption := IntToStr(TLembrete(pListaLembrete[I]).IDLembrete);
      tempItem.SubItems.Add(TLembrete(pListaLembrete[I]).Titulo);
      tempItem.SubItems.Add(FormatDateTime('dd/mm/yyyy hh:mm',
        TLembrete(pListaLembrete[I]).DataHora));
      tempItem.Data := TLembrete(pListaLembrete[I]);
    end;
  end
  else
    ShowMessage('Nenhum lembrete encontrado.');
end;

procedure TFrmConsulta.CarregarColecao;
begin
  try
    PreencherListView(_LembreteDAO.ListarPorTitulo_Descricao
      (EdtListarTitulo_Descricao.Text));
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

procedure TFrmConsulta.EditarLembrete;
begin
  try
    FrmLembreteEditar := TFrmLembreteEditar.Create(Self,
      TLembrete(ListView1.ItemFocused.Data));
    FrmLembreteEditar.ShowModal;
    CarregarColecao;
  finally
    FreeAndNil(FrmLembreteEditar);
  end;
end;

end.
