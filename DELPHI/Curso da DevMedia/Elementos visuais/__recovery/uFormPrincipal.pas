unit uFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, uFormDataHora;

type
  TFormPrincipal = class(TForm)
    PnlTitulo: TPanel;
    PgCntrlPrincipal: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditCaracteres: TEdit;
    BtnExibirDataHora: TButton;
    ImageList1: TImageList;
    PanelAba1: TPanel;
    AvancarAba1: TButton;
    RGopcoes: TRadioGroup;
    BtnLimpar: TButton;
    LOpcaoSelecionada: TLabel;
    LBopcaoSelecionada: TListBox;
    PanelAba2: TPanel;
    AvancarAba2: TButton;
    BtnAddItem: TButton;
    VoltarAba2: TButton;
    MemoObservacao: TMemo;
    Label2: TLabel;
    BtnSelecionaTudo: TButton;
    BtnLimparAba3: TButton;
    PanelAba3: TPanel;
    VoltarAba3: TButton;
    procedure FormShow(Sender: TObject);
    procedure EditCaracteresEnter(Sender: TObject);
    procedure EditCaracteresExit(Sender: TObject);
    procedure AvancarAba1Click(Sender: TObject);
    procedure BtnLimparClick(Sender: TObject);
    procedure BtnAddItemClick(Sender: TObject);
    procedure AvancarAba2Click(Sender: TObject);
    procedure VoltarAba2Click(Sender: TObject);
    procedure VoltarAba3Click(Sender: TObject);
    procedure BtnLimparAba3Click(Sender: TObject);
    procedure BtnSelecionaTudoClick(Sender: TObject);
    procedure BtnExibirDataHoraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

// ABA 1
procedure TFormPrincipal.AvancarAba1Click(Sender: TObject);
begin
  PgCntrlPrincipal.ActivePageIndex := 1;
end;

procedure TFormPrincipal.EditCaracteresEnter(Sender: TObject);
begin
  EditCaracteres.Color := $00B9FFFF;
end;

procedure TFormPrincipal.BtnExibirDataHoraClick(Sender: TObject);
begin
    FormDataHora.ShowModal;
end;

procedure TFormPrincipal.EditCaracteresExit(Sender: TObject);
begin
  if EditCaracteres.Text = '' then
  begin
    MessageDlg('A caixa de texto está vazia', mtInformation ,[mbOK], 0);
    EditCaracteres.SetFocus;
  end
  else
    if Length(EditCaracteres.Text) <> 4 then
    begin
        MessageDlg('Você não digitou 4 caracteres', mtError ,[mbOK], 0);
        EditCaracteres.SetFocus;
        EditCaracteres.SelectAll;
    end
    else
      EditCaracteres.Color := clWindow;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
  PnlTitulo.Caption := 'Mudando o Caption do Panel no OnShow';
  PnlTitulo.Color   := $00B9FFFF;
end;

// ABA 2
procedure TFormPrincipal.BtnAddItemClick(Sender: TObject);
begin
  if RGopcoes.ItemIndex > 0 then
  begin
    LBopcaoSelecionada.Items.Add(RGopcoes.Items[RGopcoes.ItemIndex]);
    RGopcoes.ItemIndex := -1;
  end
  else
    MessageDlg('Você não selecionou uma opção', mtError, [mbOK], 0);
end;

procedure TFormPrincipal.BtnLimparClick(Sender: TObject);
begin
  LBopcaoSelecionada.Items.Clear;
end;

procedure TFormPrincipal.AvancarAba2Click(Sender: TObject);
begin
    PgCntrlPrincipal.ActivePageIndex := 2;
end;

procedure TFormPrincipal.VoltarAba2Click(Sender: TObject);
begin
    PgCntrlPrincipal.ActivePageIndex := 0;
end;

// ABA 3
procedure TFormPrincipal.BtnSelecionaTudoClick(Sender: TObject);
begin
  MemoObservacao.SelectAll;
  MemoObservacao.SetFocus;
end;

procedure TFormPrincipal.BtnLimparAba3Click(Sender: TObject);
begin
  MemoObservacao.Lines.Clear;
end;

procedure TFormPrincipal.VoltarAba3Click(Sender: TObject);
begin
   PgCntrlPrincipal.ActivePageIndex := 1;
end;

end.
