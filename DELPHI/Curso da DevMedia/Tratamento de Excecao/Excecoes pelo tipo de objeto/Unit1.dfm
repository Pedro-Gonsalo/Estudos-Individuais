object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 231
  ClientWidth = 261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 72
    Top = 71
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 72
    Top = 125
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object EditValor1: TEdit
    Left = 72
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditValor2: TEdit
    Left = 72
    Top = 90
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditResultado: TEdit
    Left = 72
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 72
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
