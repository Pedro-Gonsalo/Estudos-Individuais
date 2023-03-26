program sample;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.CORS,
  Horse.GBSwagger,
  System.SysUtils,
  Controllers.User in 'src\controllers\Controllers.User.pas',
  Models.User in 'src\models\Models.User.pas';

begin
  THorse
    .Use(CORS)
    .Use(HorseSwagger);

  Swagger
    .Info
      .Title('Minha API')
      .Description('Documentação da minha API')
      .Contact
        .Name('Pedro Gonçalo')
        .Email('pedro.gonsalo939@gmail.com')
        .URL('https://www.fiorilli.com.br')
      .&End
    .&End
    .BasePath('v1');

  THorseGBSwaggerRegister.RegisterPath(TUserController);

  THorse.Listen(9000);
end.
