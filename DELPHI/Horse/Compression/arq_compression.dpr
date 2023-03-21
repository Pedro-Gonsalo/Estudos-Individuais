program arq_compression;

{$APPTYPE CONSOLE}

{$R *.res}

uses Horse, Horse.BasicAuthentication, Horse.Compression, Horse.Jhonson, Horse.Commons, System.JSON, System.SysUtils;

var
  App: THorse;
  Users: TJSONArray;

begin
  App := THorse.Create();

  App.Use(Compression());
  App.Use(Jhonson);

  App.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      I: Integer;
      LPong: TJSONArray;
    begin
      LPong := TJSONArray.Create;
      for I := 0 to 1000 do
        LPong.Add(TJSONObject.Create(TJSONPair.Create('ping', 'pong')));
      Res.Send(LPong);
    end);

  App.Use(HorseBasicAuthentication(
    function(const AUsername, APassword: string): Boolean
    begin
      Result := AUsername.Equals('user') and APassword.Equals('password');
    end));

  Users := TJSONArray.Create;

  // Select
  App.Get('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send<TJSONAncestor>(Users.Clone);
    end);

  // Create
  App.Post('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      User: TJSONObject;
    begin
      User := Req.Body<TJSONObject>.Clone as TJSONObject;
      Users.AddElement(User);
      Res.Send<TJSONAncestor>(User.Clone).Status(THTTPStatus.Created);
    end);

  // Delete
  App.Delete('/users/:id',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      Id: integer;
    begin
      Id := Req.Params.Items['id'].ToInteger;
      Users.Remove(Pred(Id)).Free; // Pred() ou Id - 1
      Res.Send<TJSONAncestor>(Users.Clone).Status(THTTPStatus.NoContent);
    end);

  App.Listen(9000);
end.
