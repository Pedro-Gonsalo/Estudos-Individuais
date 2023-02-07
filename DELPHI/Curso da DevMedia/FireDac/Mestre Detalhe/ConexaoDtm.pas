unit ConexaoDtm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef;

type
  TdtmConexao = class(TDataModule)
    cnnConexao: TFDConnection;
    qryVendas: TFDQuery;
    qryVendaProdutos: TFDQuery;
    memCache: TFDMemTable;
    adapter: TFDSchemaAdapter;
    dsVendas: TDataSource;
    dsVendaProdutos: TDataSource;
    dsCache: TDataSource;
    qryVendasidvenda: TFDAutoIncField;
    qryVendasidcliente: TIntegerField;
    qryVendasdata_venda: TDateField;
    qryVendaProdutosidvenda_produtos: TFDAutoIncField;
    qryVendaProdutosidvenda: TIntegerField;
    qryVendaProdutosidproduto: TIntegerField;
    qryVendaProdutosquantidade: TIntegerField;
    memCachestatus: TStringField;
    memCacheidvenda: TFDAutoIncField;
    memCacheidcliente: TIntegerField;
    memCachedata_venda: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure memCacheCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LimpaCache(Sender: TObject);
  public
    { Public declarations }
  end;

var
  dtmConexao: TdtmConexao;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdtmConexao }

procedure TdtmConexao.DataModuleCreate(Sender: TObject);
begin
  adapter.AfterApplyUpdate := LimpaCache;
  qryVendas.Open();
  qryVendaProdutos.Open();
end;

// Métodos
procedure TdtmConexao.LimpaCache(Sender: TObject);
begin
  qryVendas.CommitUpdates;
  qryVendaProdutos.CommitUpdates;
end;

procedure TdtmConexao.memCacheCalcFields(DataSet: TDataSet);
begin
  if DataSet.UpdateStatus = usModified then
    DataSet.FieldByName('status').AsString := 'Modificado'
  else if DataSet.UpdateStatus = usInserted then
    DataSet.FieldByName('status').AsString := 'Inserido'
  else if DataSet.UpdateStatus = usDeleted then
    DataSet.FieldByName('status').AsString := 'Excluído';
end;

end.
