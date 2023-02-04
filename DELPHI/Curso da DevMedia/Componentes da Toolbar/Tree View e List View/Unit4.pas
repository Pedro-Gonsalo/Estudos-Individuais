unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ImgList,
  System.ImageList;

type
  TForm4 = class(TForm)
    TreeView1: TTreeView;
    Button1: TButton;
    Button2: TButton;
    ImageList1: TImageList;
    ListView1: TListView;
    ImageList2: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  TreeView1.LoadFromFile('Tecnologias.txt');
end;

procedure TForm4.Button2Click(Sender: TObject);
var
  Node, SubNo: TTreeNode;
begin
  TreeView1.Items.Clear;
  Node := TreeView1.Items.Add(nil,'N� Principal'); // nil - porque � o primeiro item
  SubNo := TreeView1.Items.AddChild(Node,'Primeiro N�');
  TreeView1.Items.AddChild(SubNo,'Segundo N�');
  TreeView1.Items.AddChild(SubNo,'Terceiro N�');
  TreeView1.Items.AddChild(SubNo,'Quarto N�');
  SubNo := TreeView1.Items.AddChild(Node,'Novo SubN�');
end;

end.
