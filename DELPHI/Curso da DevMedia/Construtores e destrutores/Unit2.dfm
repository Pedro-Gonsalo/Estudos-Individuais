object Form2: TForm2
  Left = 390
  Top = 165
  Caption = 'Form2'
  ClientHeight = 453
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 208
    Top = 280
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object Button1: TButton
    Left = 56
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Dispositivo'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 145
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Computador'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Celular'
    TabOrder = 3
    OnClick = Button3Click
  end
end
