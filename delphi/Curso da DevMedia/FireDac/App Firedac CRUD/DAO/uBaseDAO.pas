unit uBaseDAO;

interface

uses FireDAC.Comp.Client, System.SysUtils, uDM, Data.DB, Vcl.Dialogs,
     System.Classes;

type
  TBaseDAO = Class(TObject)
  private

  protected
    _FQry: TFDQuery;
    constructor Create;
    destructor Destroy; override;
    function RetornarDataSet(pSQL: String): TFDQuery;
    function ExecutarComando(pSQL: String): Integer;
  end;

implementation

{ TBaseDAO }

constructor TBaseDAO.Create;
begin
  inherited Create;
  _FQry            := TFDQuery.Create(Nil);
  _FQry.Connection := DM.FDConnection;
end;

destructor TBaseDAO.Destroy;
begin
  try
    if Assigned(_FQry) then
      FreeAndNil(_FQry);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

function TBaseDAO.ExecutarComando(pSQL: String): Integer;
begin
  try
    DM.FDConnection.StartTransaction;
    _FQry.SQL.Text := pSQL;
    _FQry.ExecSQL;
    Result := _FQry.RowsAffected;
    DM.FDConnection.Commit;
  except
    DM.FDConnection.Rollback;
  end;
end;

function TBaseDAO.RetornarDataSet(pSQL: String): TFDQuery;
begin
  _FQry.SQL.Text := pSQL;
  _FQry.Active   := True;
  Result         := _FQry;
end;

end.

(* ANOTAÇÕES

DAO = é um padrão para aplicações implementadas com linguagens de programação orientada a objetos e
arquitetura MVC. E que utilizam persistência de dados, onde existe a separação das regras de negócio
 das regras de acesso a banco de dados.

*)
