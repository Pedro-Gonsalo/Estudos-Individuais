program arquivos;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Logger,
  Horse.Logger.Provider.LogFile,
  Horse.OctetStream, // It's necessary to use the unit
  System.Classes,
  System.SysUtils;

var
  LLogFileConfig: THorseLoggerLogFileConfig;

begin
  // It's necessary to add the middleware in the Horse:
  THorse.Use(OctetStream);

  LLogFileConfig := THorseLoggerLogFileConfig.New
    .SetLogFormat('${time} - ${request_method} ${request_path_info}')
    .SetDir('C:\Users\pedro\OneDrive\Área de Trabalho\Gerando LOG\log\');

  THorseLoggerManager.RegisterProvider(THorseLoggerProviderLogFile.New(LLogFileConfig));

  // It's necessary to add the middleware in the Horse:
  THorse.Use(THorseLoggerManager.HorseCallback);

  THorse.Get('/arquivos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TFileStream;
    begin
      LStream := TFileStream.Create
        ('C:\Users\pedro\OneDrive\Área de Trabalho\Gerando LOG\img\img_exemplo.jpg',
        fmOpenRead);
      Res.Send<TStream>(LStream);
    end);

  THorse.Post('/arquivos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TMemoryStream;
    begin
      LStream := Req.Body<TMemoryStream>;
      LStream.SaveToFile('C:\Users\pedro\OneDrive\Área de Trabalho\Gerando LOG\img\copia.jpg');
      Res.Send('Imagem cadastrada com sucesso').Status(201);
    end);

  THorse.Listen(9000);
end.
