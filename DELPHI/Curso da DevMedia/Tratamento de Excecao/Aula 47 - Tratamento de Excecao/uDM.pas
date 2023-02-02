unit uDM;

interface

uses
  System.SysUtils, System.Classes, Vcl.AppEvnts, Vcl.Forms, Vcl.Dialogs,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage,
  System.IniFiles, idAttachmentFile;

type
  TDataModule1 = class(TDataModule)
    ApplicationEvents1: TApplicationEvents;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
    IniFiles: TIniFile;
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TDataModule1.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
var
  Log: TStrings;
  Anexo: TidAttachmentFile;
begin
  try
    Log := TStringList.Create;

    if FileExists(ExtractFilePath(Application.ExeName) + 'log.txt') then
      Log.LoadFromFile(ExtractFilePath(Application.ExeName) + 'log.txt');

    Log.Add('Data: ' + DateToStr(Now));
    Log.Add('Classe do Erro: ' + E.ClassName);
    Log.Add('Mensagem do erro: ' + E.Message + #13#10);
    Log.SaveToFile(ExtractFilePath(Application.ExeName) + 'log.txt');

    // Gerar imagem do formulário
    TForm(Sender).GetFormImage.SaveToFile('printscreen.bmp');

    // ENVIANDO EMAIL
    IdMessage1.Body.Add
      ('Este é um email automático para te notificar que ocorreu um erro na aplicação');
    IdMessage1.Body.Add
      ('Anexo neste email está o arquivo de log de todos os erros');
    Anexo := TidAttachmentFile.Create(IdMessage1.MessageParts,
      ExtractFilePath(Application.ExeName) + 'log.txt');

    IdSMTP1.Connect;
    IdSMTP1.Send(IdMessage1);

    IdSMTP1.Disconnect;

    ShowMessage
      ('Um erro ocorreu, verifique o log na pasta para mais informações' + #13 +
      'Um email foi enviado para o administrador do sistema');
  except
    ShowMessage('Erro ao enviar email!');
  end;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  IniFiles := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'config.ini');

  // TALVEZ NÃO PEGUEI DEVIDO AO PROVEDOR (É O DO PROFESSOR DO CURSO)
  IdSMTP1.Host := IniFiles.ReadString('SMTP', 'host', '');
  IdSMTP1.Username := IniFiles.ReadString('SMTP', 'username', '');
  IdSMTP1.Password := IniFiles.ReadString('SMTP', 'password', '');
  IdSMTP1.AuthType := satDefault;

  IdMessage1.From.Name := IniFiles.ReadString('REMETENTE', 'remetente', '');
  IdMessage1.From.Address := IniFiles.ReadString('REMETENTE', 'email', '');

  IdMessage1.Recipients.Add.Address := IniFiles.ReadString('DESTINATARIO',
    'email', '');
end;

end.
