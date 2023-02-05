object FrmBase: TFrmBase
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderStyle = bsSizeToolWin
  ClientHeight = 378
  ClientWidth = 568
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FadeIn: TTimer
    Enabled = False
    Interval = 10
    OnTimer = FadeInTimer
    Left = 176
    Top = 72
  end
  object FadeOut: TTimer
    Enabled = False
    Interval = 10
    OnTimer = FadeOutTimer
    Left = 232
    Top = 72
  end
end
