object Form2: TForm2
  Left = 390
  Top = 110
  Caption = 'Form2'
  ClientHeight = 517
  ClientWidth = 723
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
  object Splitter1: TSplitter
    Left = 429
    Top = 0
    Height = 517
    ExplicitLeft = 368
    ExplicitTop = 232
    ExplicitHeight = 100
  end
  object Splitter2: TSplitter
    Left = 241
    Top = 0
    Height = 517
    ExplicitLeft = 238
    ExplicitTop = -8
  end
  object CategoryButtons1: TCategoryButtons
    Left = 0
    Top = 0
    Width = 241
    Height = 517
    Align = alLeft
    ButtonFlow = cbfVertical
    ButtonOptions = [boAllowReorder, boAllowCopyingButtons, boFullSize, boShowCaptions, boVerticalCategoryCaptions, boUsePlusMinus]
    Categories = <
      item
        Caption = 'Cadastros'
        Color = clScrollBar
        Collapsed = False
        GradientColor = clInfoBk
        Items = <
          item
            Caption = 'Cliente'
          end
          item
            Caption = 'Produto'
          end
          item
            Caption = 'Fornecedor'
          end
          item
            Caption = 'Funcionario'
          end>
      end
      item
        Caption = 'Consultas'
        Color = 16771818
        Collapsed = False
        Items = <>
      end
      item
        Caption = 'Relatorios'
        Color = 16771839
        Collapsed = False
        Items = <>
      end>
    RegularButtonColor = clWhite
    SelectedButtonColor = 15132390
    TabOrder = 0
    ExplicitLeft = -3
  end
  object Panel1: TPanel
    Left = 244
    Top = 0
    Width = 185
    Height = 517
    Align = alLeft
    Caption = 'Panel1'
    Color = 4227072
    ParentBackground = False
    TabOrder = 1
  end
  object Panel2: TPanel
    Left = 432
    Top = 0
    Width = 291
    Height = 517
    Align = alClient
    Caption = 'Panel2'
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 2
  end
end
