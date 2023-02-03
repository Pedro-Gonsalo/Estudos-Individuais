object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Primeiro Sistema'
  ClientHeight = 103
  ClientWidth = 264
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 84
    Height = 13
    Caption = 'Digite seu nome'
  end
  object Edit1: TEdit
    Left = 24
    Top = 35
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 166
    Top = 62
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
