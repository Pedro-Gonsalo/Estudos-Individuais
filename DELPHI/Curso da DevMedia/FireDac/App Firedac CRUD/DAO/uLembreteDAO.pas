unit uLembreteDAO;

interface

uses uLembrete, classes, DB, SysUtils, generics.defaults,
     generics.collections, Dialogs, uDM, uBaseDAO, FireDAC.Comp.Client;

type
  TLembreteDAO = class(TBaseDAO)
  private
    FListaLembrete: TObjectList<TLembrete>;
    procedure PreencherColecao(Ds: TFDQuery);
  public
    constructor Create;
    destructor Destroy; override;
    function Inserir(pLembrete: TLembrete): Boolean;
    function Deletar(pLembrete: TLembrete): Boolean;
    function Alterar(pLembrete: TLembrete): Boolean;
    function ListarPorTitulo_Descricao(pConteudo: String): TObjectList<TLembrete>;
  end;

implementation

constructor TLembreteDAO.Create;
begin
  inherited;
  FListaLembrete := TObjectList<TLembrete>.Create;
end;

destructor TLembreteDAO.Destroy;
begin
  try
    inherited;
    if Assigned(FListaLembrete) then
      FreeAndNil(FListaLembrete);
  except
    on e: exception do
      raise Exception.Create(E.Message);
  end;
end;

function TLembreteDAO.Inserir(pLembrete: TLembrete): Boolean;
var
  Sql: String;
begin
  Sql := ' INSERT INTO Lembrete (Titulo, Descricao, DataHora) '+
         ' VALUES ( '+
                   QuotedStr(pLembrete.Titulo)    + ',' +
                   QuotedStr(pLembrete.Descricao) + ',' +
                   QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm', pLembrete.DataHora)) +
                   ')';
  Result := ExecutarComando(Sql) > 0;
end;

function TLembreteDAO.Alterar(pLembrete: TLembrete): Boolean;
var
  Sql: String;
begin
  Sql := ' UPDATE Lembrete     ' +
         '    SET Titulo     = ' + QuotedStr(pLembrete.Titulo)    + ', ' +
         '        Descricao  = ' + QuotedStr(pLembrete.Descricao) + ', '+
         '        DataHora   = ' + QuotedStr(FormatDateTime('yyyy-mm-dd hh:mm', pLembrete.DataHora)) +
         '  WHERE IDLembrete = ' + IntToStr(pLembrete.IDLembrete);
  Result := ExecutarComando(Sql) > 0;
end;

function TLembreteDAO.Deletar(pLembrete: TLembrete): Boolean;
var
  Sql: String;
begin
  Sql := ' DELETE                                 '+
         '   FROM Lembrete                        '+
         '  WHERE IDLembrete = ' + IntToStr(pLembrete.IDLembrete) ;
  Result := ExecutarComando(Sql) > 0;
end;

function TLembreteDAO.ListarPorTitulo_Descricao(pConteudo: String): TObjectList<TLembrete>;
var
  Sql: String;
begin
  Result := Nil;
  Sql := ' SELECT IDLembrete, Titulo,             '+
         '        Descricao, DataHora             '+
         '   FROM Lembrete                         ';
   if pConteudo = '' then
   begin
     Sql := Sql + ' WHERE DataHora <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', Now));
   end
   else
   begin
      // quotedstr = retorna a string desejada dentro de aspas simples
     Sql := Sql + '  WHERE Titulo    like ' + QuotedStr('%'+pConteudo+'%')+
                  '     OR Descricao like ' + QuotedStr('%'+pConteudo+'%');
   end;

   Sql := Sql + '  ORDER BY DataHora     ';
  _FQry := RetornarDataSet(Sql);

  if not (_FQry.IsEmpty) then
  begin
    PreencherColecao(_FQry);
    Result := FListaLembrete;
  end;
end;

procedure TLembreteDAO.PreencherColecao(Ds: TFDQuery);
var
  I: Integer;
begin
  I := 0;
  FListaLembrete.Clear;
  while not Ds.eof do
  begin
    FListaLembrete.Add(TLembrete.Create);
    FListaLembrete[I].IDLembrete := Ds.FieldByName('IDLembrete').AsInteger;
    FListaLembrete[I].Titulo     := Ds.FieldByName('Titulo'    ).AsString;
    FListaLembrete[I].Descricao  := Ds.FieldByName('Descricao' ).AsString;
    FListaLembrete[I].DataHora   := Ds.FieldByName('DataHora'  ).AsDateTime;
    Ds.Next;
    I := I + 1;
  end;
end;

end.
