unit uFrmTela1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmBase, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrmTela1 = class(TFrmBase)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Memo1: TMemo;
  private
  protected
    function GetCaption: string; override;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FrmTela1: TFrmTela1;

implementation

{$R *.dfm}

{ TFrmTela1 }

function TFrmTela1.GetCaption: string;
begin
   result := 'Cadasto de Cliente';
end;

end.
