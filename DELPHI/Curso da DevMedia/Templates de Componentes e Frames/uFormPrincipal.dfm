object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 578
  ClientWidth = 653
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
  inline Frame11: TFrame1
    Left = 32
    Top = 24
    Width = 121
    Height = 121
    Color = clRed
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 24
    ExplicitWidth = 121
    ExplicitHeight = 121
    inherited Button1: TButton
      Left = 24
      Top = 16
      ExplicitLeft = 24
      ExplicitTop = 16
    end
    inherited Button2: TButton
      Left = 24
      Top = 47
      OnClick = Frame11Button2Click
      ExplicitLeft = 24
      ExplicitTop = 47
    end
    inherited Button3: TButton
      Left = 24
      Top = 78
      ExplicitLeft = 24
      ExplicitTop = 78
    end
  end
  inline Frame12: TFrame1
    Left = 224
    Top = 55
    Width = 362
    Height = 72
    Color = clRed
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 55
    inherited Button2: TButton
      OnClick = Frame12Button2Click
    end
  end
  object Panel1: TPanel
    Left = 240
    Top = 248
    Width = 385
    Height = 185
    Color = clHighlight
    ParentBackground = False
    TabOrder = 2
    inline Frame13: TFrame1
      Left = 16
      Top = 64
      Width = 362
      Height = 72
      Color = clRed
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 64
    end
  end
end
