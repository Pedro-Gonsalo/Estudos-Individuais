object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 475
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Gauge1: TGauge
    Left = 56
    Top = 176
    Width = 201
    Height = 169
    ForeColor = clBlue
    Kind = gkPie
    Progress = 0
  end
  object ProgressBar1: TProgressBar
    Left = 56
    Top = 72
    Width = 350
    Height = 41
    TabOrder = 0
  end
  object RadioButton1: TRadioButton
    Left = 56
    Top = 40
    Width = 105
    Height = 17
    Caption = 'Verde'
    Checked = True
    TabOrder = 1
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 167
    Top = 40
    Width = 113
    Height = 17
    Caption = 'Amarelo'
    TabOrder = 2
  end
  object RadioButton3: TRadioButton
    Left = 312
    Top = 40
    Width = 113
    Height = 17
    Caption = 'Vermelho'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 440
    Top = 64
    Width = 107
    Height = 49
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 56
    Top = 128
    Width = 97
    Height = 17
    Caption = 'Marquee'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 280
    Top = 232
    Width = 107
    Height = 49
    Caption = 'Button2'
    TabOrder = 6
    OnClick = Button2Click
  end
  object SpinEdit1: TSpinEdit
    Left = 520
    Top = 323
    Width = 121
    Height = 22
    MaxValue = 50
    MinValue = 1
    TabOrder = 7
    Value = 0
  end
  object LinkLabel1: TLinkLabel
    Left = 520
    Top = 208
    Width = 89
    Height = 29
    Caption = '<a href="https://github.com/">GITHUB</a>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = LinkLabel1Click
  end
end
