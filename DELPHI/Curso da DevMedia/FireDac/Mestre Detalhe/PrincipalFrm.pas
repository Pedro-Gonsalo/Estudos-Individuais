unit PrincipalFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ConexaoDtm, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    tblFuncoes: TToolBar;
    btnGravar: TButton;
    btnRestaurarSavePoint: TButton;
    btnCriarSavePoint: TButton;
    btnCancelar: TButton;
    btnReverter: TButton;
    btnUltimaAlteracao: TButton;
    btnVerAlteracoes: TButton;
    grdVendas: TDBGrid;
    grdVendaProdutos: TDBGrid;
    grdCache: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnVerAlteracoesClick(Sender: TObject);
    procedure btnUltimaAlteracaoClick(Sender: TObject);
    procedure btnReverterClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnRestaurarSavePointClick(Sender: TObject);
    procedure btnCriarSavePointClick(Sender: TObject);
  private
    { Private declarations }
    FSavePoint: Integer;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  dtmConexao.memCache.CloneCursor(dtmConexao.qryVendas, true);
  dtmConexao.memCache.FilterChanges := [rtModified, rtInserted, rtDeleted];

  // rtModified = responsável pelos registros alterados após a busca ou após a última operação de
  // um CommitUpdates ou CancelUpdates
  //
  // rtInserted = mostra os novos registros, ainda não lançados no banco de dados e
  // adicionados depois que o conjunto de dados foi aberto ou após a última operação CommitUpdates.
  //
  // rtDeleted = mostra os registros que foram excluídos na aplicação, mas não do banco de
  // dados.
end;

procedure TfrmPrincipal.btnVerAlteracoesClick(Sender: TObject);
begin
  ShowMessage('Valor antigo: ' + IntToStr(dtmConexao.qryVendas.FieldByName
    ('idcliente').OldValue) + ' Valor novo: ' +
    IntToStr(dtmConexao.qryVendas.FieldByName('idcliente').Value));
end;

procedure TfrmPrincipal.btnUltimaAlteracaoClick(Sender: TObject);
begin
  dtmConexao.qryVendas.UndoLastChange(True);
end;

procedure TfrmPrincipal.btnReverterClick(Sender: TObject);
begin
  dtmConexao.qryVendas.RevertRecord;
end;

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  dtmConexao.qryVendas.CancelUpdates;
end;

procedure TfrmPrincipal.btnCriarSavePointClick(Sender: TObject);
begin
  FSavePoint := dtmConexao.qryVendas.SavePoint;
end;

procedure TfrmPrincipal.btnRestaurarSavePointClick(Sender: TObject);
begin
   dtmConexao.qryVendas.SavePoint := FSavePoint;
end;


procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
var
  AErros: Integer;
begin
  AErros := dtmConexao.adapter.ApplyUpdates(-1);
  if AErros > 0 then
    dtmConexao.memCache.FilterChanges := [rtHasErrors];
  dtmConexao.qryVendas.CommitUpdates;
end;

end.
