unit uFrmTela2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmBase, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrmTela2 = class(TFrmBase)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
  private
  protected
    function GetCaption: string; override;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmTela2: TFrmTela2;

implementation

{$R *.dfm}

function TFrmTela2.GetCaption: string;
begin
  Result := 'Cadastro de Fornecedor';
end;

end.
