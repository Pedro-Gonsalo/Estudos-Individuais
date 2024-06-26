unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  System.Actions, Vcl.ActnList, Vcl.CustomizeDlg, Vcl.Menus,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    PopupMenu1: TPopupMenu;
    CustomizeDlg1: TCustomizeDlg;
    Action3: TAction;
    Action4: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Personalizar1: TMenuItem;
    ActionToolBar1: TActionToolBar;
    Panel4: TPanel;
    Panel5: TPanel;
    Button1: TButton;
    Button2: TButton;
    Action1: TAction;
    Action2: TAction;
    procedure Personalizar1Click(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  ShowMessage('Clientes !!!!');
end;

procedure TForm1.Action3Execute(Sender: TObject);
begin
  ShowMessage('Produtos !!!!');
end;

procedure TForm1.Action4Execute(Sender: TObject);
begin
  ShowMessage('Contas a receber !!!!');
end;

procedure TForm1.Action5Execute(Sender: TObject);
begin
  ShowMessage('Relat�rios !!!!');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Bot�o do painel da esquerda !!!!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Bot�o do painel da direita !!!!');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ActionManager1.SaveToFile('Menu.dsk');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ActionManager1.LoadFromFile('Menu.dsk');
end;

procedure TForm1.Personalizar1Click(Sender: TObject);
begin
  CustomizeDlg1.Show;
end;

end.
