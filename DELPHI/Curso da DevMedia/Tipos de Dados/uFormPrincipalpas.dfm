object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 40
    Top = 24
    Width = 75
    Height = 25
    Caption = 'ORD'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 24
    Width = 75
    Height = 25
    Caption = 'PRED'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 232
    Top = 24
    Width = 75
    Height = 25
    Caption = 'SUCC'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 326
    Top = 24
    Width = 75
    Height = 25
    Caption = 'HIGH'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 422
    Top = 24
    Width = 75
    Height = 25
    Caption = 'LOW'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 40
    Top = 72
    Width = 153
    Height = 25
    Caption = 'TIPO ORDINAL'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 216
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Arrays'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Edit1: TEdit
    Left = 326
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 7
    TextHint = 'Testar o set'
    OnKeyPress = Edit1KeyPress
  end
  object Button8: TButton
    Left = 40
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Record'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 240
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Ponteiro'
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 408
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Variant'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 32
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Generics'
    TabOrder = 11
    OnClick = Button11Click
  end
end