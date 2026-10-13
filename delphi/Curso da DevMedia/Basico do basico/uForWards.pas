unit uForWards;

interface

uses
  System.SysUtils;

type
  {Forward declarações}

  // Declaração prévia da classe para evitar que o compilador de erro
  TCliente = class;

  TClienteEndereco = class
    Logadouro: String;
    Numero: String;
    Complemento: String;
    Cliente: TCliente;
  end;

  TCliente = class
    Nome: String;
    Telefone: String;
    Endereco: TClienteEndereco;
  end;

var
  Cliente: Tcliente;

implementation

initialization // Construtor
  Cliente := TCliente.Create;

finalization // Destrutor
  FreeAndNil(Cliente);

end.
