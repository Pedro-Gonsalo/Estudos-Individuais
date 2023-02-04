unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ImgList, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ComCtrls, System.Actions, System.ImageList;

type
  TForm4 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Item21: TMenuItem;
    Salvar1: TMenuItem;
    Edtar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N1: TMenuItem;
    SalvarComo1: TMenuItem;
    SalvarTodos1: TMenuItem;
    Gravar1: TMenuItem;
    ImageList1: TImageList;
    Button1: TButton;
    ActionList1: TActionList;
    AcFechar: TAction;
    Fechar1: TMenuItem;
    StatusBar1: TStatusBar;
    procedure Gravar1Click(Sender: TObject);
    procedure AcFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.AcFecharExecute(Sender: TObject);
begin
  close;

end;

procedure TForm4.Gravar1Click(Sender: TObject);
begin
  if Gravar1.Checked then
    ShowMessage('Grava��o Iniciada')
  else
    ShowMessage('Grava��o Interrompida');
end;

end.

(* ANOTA��ES

 - Componente Actionlist = cria a��es que podem ser reaproveitadas, por exemplo: o bot�o fechar e o
fechar do menu fazem a mesma coisa (fecham a aplica��o), portanto, ao inv�s de colocar c�digo no clique
dos dois, � s� criar a a��o fechar e atribuil� � eles.



*)