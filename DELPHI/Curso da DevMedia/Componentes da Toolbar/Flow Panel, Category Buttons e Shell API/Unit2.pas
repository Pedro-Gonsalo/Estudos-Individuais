unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    CategoryButtons1: TCategoryButtons;
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.

(* ANOTA��ES

CategoryButtons: categoria de bot�es
  - Propriedades: ButtonOptions

Splitter: mudar o tamanho dos componentes din�micamente com a aplica��o rodando

*)
