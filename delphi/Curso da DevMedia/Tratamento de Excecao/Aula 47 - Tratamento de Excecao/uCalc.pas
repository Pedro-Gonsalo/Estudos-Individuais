unit uCalc;

interface

uses
  SysUtils;

type

  ESomaError = class(Exception);
  ESubtraiError = class(Exception);
  EMultiplicaError = class(Exception);
  EDividiError = class(Exception);

  tOperacao = (opSomar, opSubtrair, opMultiplicar, opDividir);

  TCalculadora = class

  private
    { private declaration }
    FN1: Double;
    FN2: Double;
    FResultado: string;
    FValor2: string;
    FValor1: string;
    procedure SetValor1(const Value: string);
    procedure SetValor2(const Value: string);

  public
    { public declaration }
    procedure ExecutaOperacao(OP: tOperacao);

  protected
    { protected declaration }
    procedure Somar;
    procedure Subtrair;
    procedure Multiplicar;
    procedure Dividir;

  published
    { published declaration }
    property Valor1: string read FValor1 write SetValor1;
    property Valor2: string read FValor2 write SetValor2;
    property Resultado: string read FResultado; // read = apenas leitura
  end;

implementation

{ TCalculadora }

procedure TCalculadora.Somar;
begin
  try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);

    FResultado := FloatToStr(FN1 + FN2);
    except
    raise ESomaError.Create('Ocorreu um erro ao tentar somar os números');
  end;
end;

procedure TCalculadora.Subtrair;
begin
   try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);

    FResultado := FloatToStr(FN1 - FN2);
    except
    raise ESubtraiError.Create('Ocorreu um erro ao tentar subtrair os números');
  end;
end;

procedure TCalculadora.Multiplicar;
begin
    try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);

    FResultado := FloatToStr(FN1 * FN2);
    except
    raise EMultiplicaError.Create('Ocorreu um erro ao tentar multiplicar os números');
  end;
end;

procedure TCalculadora.Dividir;
begin
    try
    FN1 := StrToFloat(FValor1);
    FN2 := StrToFloat(FValor2);

    FResultado := FloatToStr(FN1 / FN2);
    except
      raise EDividiError.Create('Ocorreu um erro ao tentar dividir os números');
  end;
end;

procedure TCalculadora.ExecutaOperacao(OP: tOperacao);
begin
   case Op of
     opSomar: Somar;
     opSubtrair: Subtrair;
     opMultiplicar: Multiplicar;
     opDividir: Dividir;
   end;
end;

procedure TCalculadora.SetValor1(const Value: string);
begin
  FValor1 := Value;
end;

procedure TCalculadora.SetValor2(const Value: string);
begin
  FValor2 := Value;
end;

end.
