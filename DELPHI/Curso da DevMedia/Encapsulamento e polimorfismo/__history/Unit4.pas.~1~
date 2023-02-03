unit Unit4;

interface

type

  TProduto = class
  private
    FNome: String;
    FModelo: String;
    FPreço: String;
    procedure SetNome(const Value: String);
    procedure SetModelo(const Value: String);
    procedure SetPreço(const Value: String);
    function GetPreço: String;
  protected
  published
    function ExibeDados: String;virtual;abstract;
    property Nome: String read FNome write SetNome;
    property Modelo: String read FModelo write SetModelo;
    property Preço: String read GetPreço write SetPreço;
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
  SysUtils;

{ TProduto }

function TProduto.GetPreço: String;
begin
  Result := 'R$ '+FPreço;
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

procedure TProduto.SetPreço(const Value: String);
begin
  FPreço := Value;
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
