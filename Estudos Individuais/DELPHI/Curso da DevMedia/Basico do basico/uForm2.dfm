object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 237
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 64
    Top = 25
    Width = 121
    Height = 25
    Caption = 'Escopo Local Teste'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Constante Tipificada'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 64
    Top = 114
    Width = 121
    Height = 25
    Caption = 'Dobro'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 64
    Top = 145
    Width = 121
    Height = 25
    Caption = 'DobroRef'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 64
    Top = 176
    Width = 121
    Height = 25
    Caption = 'DobroConst'
    TabOrder = 4
    OnClick = Button5Click
  end
end
