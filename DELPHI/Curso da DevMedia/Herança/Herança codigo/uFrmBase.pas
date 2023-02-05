unit uFrmBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TFrmBase = class(TForm)
    FadeIn: TTimer;
    FadeOut: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FadeInTimer(Sender: TObject);
    procedure FadeOutTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure FormataControles;
  protected
    function GetCaption: String;virtual;abstract;
  public
    { Public declarations }

  end;

var
  FrmBase: TFrmBase;

implementation

{$R *.dfm}

procedure TFrmBase.FadeInTimer(Sender: TObject);
begin
  AlphaBlendValue := AlphaBlendValue + 15;
  FadeIn.Enabled := Not (AlphaBlendValue = 255);
end;

procedure TFrmBase.FadeOutTimer(Sender: TObject);
begin
  AlphaBlendValue := AlphaBlendValue - 15;
  if  AlphaBlendValue = 0 then
    Close;
end;

procedure TFrmBase.FormataControles;
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TEdit then
    begin
      TEdit(Components[I]).BevelKind := bkFlat;
      TEdit(Components[i]).BorderStyle := bsNone;
    end;
end;

procedure TFrmBase.FormCreate(Sender: TObject);
begin
  FormataControles;
  Caption := GetCaption;
end;

procedure TFrmBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
   VK_ESCAPE: FadeOut.Enabled := true;
   VK_RETURN: Perform(WM_NEXTDLGCTL,0,1);
  end;
end;

procedure TFrmBase.FormShow(Sender: TObject);
begin
  FadeIn.Enabled := True;
end;

end.
