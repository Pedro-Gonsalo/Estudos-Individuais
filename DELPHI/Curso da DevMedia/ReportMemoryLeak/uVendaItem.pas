unit uVendaItem;

interface

Type

  TVendaItem = class
  private
    FIDVendaItem: Integer;
    FIDVenda: Integer;
    FProduto: String;
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    property IDVendaItem: Integer read FIDVendaItem write FIDVendaItem;
    property IDVenda: Integer read FIDVenda write FIDVenda;
    property Produto: string read FProduto write FProduto;
  published
    { published declarations }
  end;

implementation

{ TVenda }
end.

