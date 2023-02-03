unit uFormConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, IniFiles;

type
  TForm2 = class(TForm)
    leHost: TLabeledEdit;
    leUserName: TLabeledEdit;
    lePassword: TLabeledEdit;
    leRemetente: TLabeledEdit;
    leEmail: TLabeledEdit;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    IniFiles: TIniFile;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
   IniFiles.WriteString('SMTP', 'host', leHost.Text);
   IniFiles.WriteString('SMTP', 'username', leUserName.Text);
   IniFiles.WriteString('SMTP', 'password', lePassword.Text);
   IniFiles.WriteString('REMETENTE', 'remetente', leRemetente.Text);
   IniFiles.WriteString('REMETENTE', 'email', leEmail.Text);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  IniFiles := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
  leHost.Text := IniFiles.ReadString('SMTP', 'host', 'smtp.host.com.br');
  leUserName.Text := IniFiles.ReadString('SMTP', 'username', 'smtp.host.com.br');
  lePassword.Text := IniFiles.ReadString('SMTP', 'password', 'smtp.host.com.br');
  leRemetente.Text := IniFiles.ReadString('REMETENTE', 'remetente', 'smtp.host.com.br');
  leEmail.Text := IniFiles.ReadString('REMETENTE', 'email', 'smtp.host.com.br');

end;

end.
