unit Unit4;

interface

type

  TProduto = class
  private
    FNome: String;
    FModelo: String;
    FPre�o: String;
    procedure SetNome(const Value: String);
    procedure SetModelo(const Value: String);
    procedure SetPre�o(const Value: String);
    function GetPre�o: String;

  protected
  public
    destructor Destroy; override;
  published
    constructor Create;

    function ExibeDados: String;virtual;abstract;
    property Nome: String read FNome write SetNome;
    property Modelo: String read FModelo write SetModelo;
    property Pre�o: String read GetPre�o write SetPre�o;
  end;

  TDispositivo = class(TProduto)
  public
    MemoriaRam: String;
    MemoriaInterna: String;
    SistemaOperacional: String;

  published

    function ExibeDados: string; override;
  end;

  TComputador = class(TDispositivo)
  public
    Monitor: String;
    PlacaRede: String;

  published
    function ExibeDados: string; override;
  end;

  TCelular = class(TDispositivo)
  public
    Camera: String;
    Tela: String;
    SistemaOperacional: String;

  published
    function ExibeDados: string; override;
  end;

implementation

uses
  SysUtils, Dialogs;

{ TProduto }

constructor TProduto.Create;
begin
  ShowMessage('Produto Criado');
end;

destructor TProduto.Destroy;
begin
  ShowMessage('Objeto Destruido');
  inherited;
end;

function TProduto.GetPre�o: String;
begin
  Result := 'R$ '+FPre�o;
end;

procedure TProduto.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TProduto.SetNome(const Value: String);
begin
  if Length(Value) < 5 then
    raise Exception.Create('Nome Muito Curto!');

  FNome := Value;
end;

procedure TProduto.SetPre�o(const Value: String);
begin
  FPre�o := Value;
end;

{ TDispositivo }

function TDispositivo.ExibeDados: string;
begin
  Result := 'Exibindo dados de Dispositivo';
end;

{ TComputador }

function TComputador.ExibeDados: string;
begin
 Result := 'Exibindo dados de Computador';
end;

{ TCelular }

function TCelular.ExibeDados: string;
begin
 Result := 'Exibindo dados de Celular';
end;

end.
