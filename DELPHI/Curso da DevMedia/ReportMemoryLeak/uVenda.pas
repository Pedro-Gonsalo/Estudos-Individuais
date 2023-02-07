unit uVenda;

interface

uses
  System.Generics.Collections, System.SysUtils, uVendaItem, uSistema;
Type

  TVenda = class(TSistema)
  private
    FIDVenda: Integer;
    FData: TDateTime;
    FListaVendaItem: TObjectList<TVendaItem>;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property IDVenda: Integer read FIDVenda write FIDVenda;
    property Data   : TDateTime read FData write FData;
    property ListaVendaItem: TObjectList<TVendaItem> read FListaVendaItem write FListaVendaItem;

    constructor Create;
    destructor Destroy; override;

    procedure AdicionarVendaItem(pProduto: String);
  published
    { published declarations }
  end;

implementation

{ TVenda }

procedure TVenda.AdicionarVendaItem(pProduto: String);
var
  I: Integer;
begin
  FListaVendaItem.Add(TVendaItem.Create);
  I := FListaVendaItem.Count -1;
  FListaVendaItem[I].IDVendaItem := I;
  FListaVendaItem[I].IDVenda     := FIDVenda;
  FListaVendaItem[I].Produto     := pProduto;
end;

constructor TVenda.Create;
begin
  inherited;
  FIDVenda        := 0;
  FData           := EncodeDate(1900,1,1);
  FListaVendaItem := TObjectList<TVendaItem>.Create;
end;

destructor TVenda.Destroy;
begin
  FreeAndNil(FListaVendaItem);
  inherited;
end;

end.
