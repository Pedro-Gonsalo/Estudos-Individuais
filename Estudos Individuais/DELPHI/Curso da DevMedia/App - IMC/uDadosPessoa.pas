unit uDadosPessoa;

// Variáveis
interface

uses
  System.SysUtils;

Type
  RDados_Pessoa = record
    Altura: Double;
    Peso: Double;
    Sexo: String;
    IMC: String;
    Conclusao_imc: String;
  end;

function Conclusao_imc(p_Peso, p_Altura: Double; p_Sexo: String): String;
function Calcular_IMC(p_Peso, p_Altura: Double; p_Sexo: String): String;

var
  P_Dados_Pessoa: RDados_Pessoa;

  // Métodos
implementation

function Calcular_imc(p_Peso, p_Altura: Double; p_Sexo: String): String;
var
  l_IMC: Double;
begin

  try
    l_IMC := StrToFloat(Format('%.2f', [p_Peso / (p_Altura * p_Altura)]));

    Result := FloatToStr(l_IMC);
  except
    raise Exception.Create('Erro ao calcular o IMC');
  end;
end;

function Conclusao_IMC(p_Peso, p_Altura: Double; p_Sexo: String): String;
var
  l_IMC: Double;
  l_StrIMC: String;

begin
  if p_Sexo = '' then
    raise Exception.Create('Obrigatório informar o sexo');
  try
    //l_IMC := StrToFloat(Format('%.2f', [p_Peso / (p_Altura * p_Altura)]));
    l_IMC := StrtoFloat(Calcular_imc(p_Peso, p_Altura, p_Sexo));

    if p_Sexo = 'F' then
    begin
      if (l_IMC < 19) then
        l_StrIMC := 'Abaixo do peso'
      else if (l_IMC >= 19) and (l_IMC < 24) then
        l_StrIMC := 'Peso normal'
      else if (l_IMC >= 24) and (l_IMC <= 28.9) then
        l_StrIMC := 'Obesidade leve'
      else if (l_IMC >= 29) and (l_IMC <= 38.9) then
        l_StrIMC := 'Obesidade moderada'
      else if (l_IMC >= 39) then
        l_StrIMC := 'Obesidade mórbida';
    end
    else
    begin
      if p_Sexo = 'M' then
      begin
        if (l_IMC < 20) then
          l_StrIMC := 'Abaixo do peso'
        else if (l_IMC >= 20) and (l_IMC <= 24.9) then
          l_StrIMC := 'Peso normal'
        else if (l_IMC > 25) and (l_IMC <= 29.9) then
          l_StrIMC := 'Obesidade leve'
        else if (l_IMC > 30) and (l_IMC <= 39.9) then
          l_StrIMC := 'Obesidade moderada'
        else if (l_IMC >= 40) then
          l_StrIMC := 'Obesidade mórbida';
      end;
    end;

    Result := l_StrIMC;

  except
    raise Exception.Create('Erro ao calcular o IMC');
  end;
end;

end.
