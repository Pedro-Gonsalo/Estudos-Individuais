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
      .Description('Documenta��o da minha API')
      .Contact
        .Name('Pedro Gon�alo')
        .Email('pedro.gonsalo939@gmail.com')
        .URL('https://www.fiorilli.com.br')
      .&End
    .&End
    .BasePath('v1');

  THorseGBSwaggerRegister.RegisterPath(TUserController);

  THorse.Listen(9000);
end.
