object Form4: TForm4
  Left = 398
  Top = 177
  Caption = 'Form4'
  ClientHeight = 439
  ClientWidth = 697
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
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 665
    Height = 377
    ActivePage = TabSheet3
    TabOrder = 0
    object tbLista: TTabSheet
      Caption = 'tbLista'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Button1: TButton
        Left = 358
        Top = 288
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Animate1: TAnimate
        Left = 40
        Top = 32
        Width = 272
        Height = 60
        CommonAVI = aviCopyFiles
        StopFrame = 34
      end
      object BitBtn1: TBitBtn
        Left = 40
        Top = 110
        Width = 75
        Height = 25
        Caption = 'BitBtn1'
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object tabCadastro: TTabSheet
      Caption = 'tabCadastro'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Button2: TButton
        Left = 344
        Top = 313
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 0
        OnClick = Button2Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 96
        Top = 40
        Width = 225
        Height = 21
        Date = 41350.959061701390000000
        Time = 41350.959061701390000000
        DateFormat = dfLong
        TabOrder = 1
      end
      object MonthCalendar1: TMonthCalendar
        Left = 88
        Top = 96
        Width = 247
        Height = 160
        Date = 41350.806225173610000000
        TabOrder = 2
      end
      object Button3: TButton
        Left = 352
        Top = 160
        Width = 75
        Height = 25
        Caption = 'Button3'
        TabOrder = 3
        OnClick = Button3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
    end
  end
  object ShellResources1: TShellResources
    Left = 608
    Top = 120
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 344
    Top = 200
  end
end
