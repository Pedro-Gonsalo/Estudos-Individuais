program arquivos;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.OctetStream, // It's necessary to use the unit
  System.Classes,
  System.SysUtils;

begin
  // It's necessary to add the middleware in the Horse:
  THorse.Use(OctetStream);

  THorse.Get('/arquivos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TFileStream;
    begin
      // Now you can send your stream:

      LStream := TFileStream.Create
        ('C:\Users\pedro\OneDrive\Área de Trabalho\Trafegando Stream\img\img_exemplo.jpg',
        fmOpenRead);
      Res.Send<TStream>(LStream);
    end);

  THorse.Post('/arquivos',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LStream: TMemoryStream;
    begin
      // Now you can send your stream:

      LStream := Req.Body<TMemoryStream>;
      LStream.SaveToFile('C:\Users\pedro\OneDrive\Área de Trabalho\Trafegando Stream\img\copia.jpg');
      Res.Send('Imagem cadastrada com sucesso').Status(201);
    end);

  THorse.Listen(9000);

end.
