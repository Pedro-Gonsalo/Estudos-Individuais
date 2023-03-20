program introducao;

{$APPTYPE CONSOLE}
{$R *.res}

uses Horse;

begin
     THorse.Get('/ping',
         procedure(Req: THorseRequest; Res: THorseResponse)
         begin
               Res.Send('<h1>Isso é um teste</h1>');
         end);

     THorse.Listen(9000);
end.
