unit uSistema;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.SysUtils;

Type

  TSistema = class
  private
      FIDUsuario: Integer;
    { private declarations }
  protected
    { protected declarations }
    FDQuery1: TFDQuery;
  public
    { public declarations }
    property IDUsuario: Integer read FIDUsuario write FIDUsuario;
    constructor create;
    destructor destroy; override;
  published
    { published declarations }
  end;

implementation

{ TSistema }

constructor TSistema.create;
begin
  inherited;
  FIDUsuario := 0;
  FDQuery1 := TFDQuery.Create(Nil);
end;

destructor TSistema.destroy;
begin
  FreeAndNil(FDQuery1);
  inherited;
end;

end.
