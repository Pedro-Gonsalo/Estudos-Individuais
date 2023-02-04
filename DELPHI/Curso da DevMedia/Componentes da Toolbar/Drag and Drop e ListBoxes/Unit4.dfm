object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 358
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 23
    Width = 56
    Height = 13
    Caption = '&Tecnologias'
  end
  object Label2: TLabel
    Left = 296
    Top = 23
    Width = 54
    Height = 13
    Caption = '&Habilidades'
  end
  object BtnToHabilidade: TSpeedButton
    Left = 238
    Top = 43
    Width = 38
    Height = 28
    Caption = '>'
    OnClick = BtnToHabilidadeClick
  end
  object BtnToAllTecnologias: TSpeedButton
    Left = 238
    Top = 169
    Width = 38
    Height = 28
    Caption = '<<'
    OnClick = BtnToAllTecnologiasClick
  end
  object BtnToAllHabilidade: TSpeedButton
    Left = 238
    Top = 77
    Width = 38
    Height = 28
    Caption = '>>'
    OnClick = BtnToAllHabilidadeClick
  end
  object BtnToTecnologias: TSpeedButton
    Left = 238
    Top = 121
    Width = 38
    Height = 28
    Caption = '<'
    OnClick = BtnToTecnologiasClick
  end
  object Bevel1: TBevel
    Left = 32
    Top = 295
    Width = 449
    Height = 13
    Shape = bsTopLine
  end
  object lbxTecnologias: TListBox
    Left = 32
    Top = 40
    Width = 185
    Height = 249
    DragMode = dmAutomatic
    ItemHeight = 13
    Items.Strings = (
      'Delphi'
      'FireBird'
      'SqlSever'
      'JBuilder'
      'NetBeans'
      'C#'
      'PHP'
      'Java'
      'Oracle'
      'Crystal Report')
    TabOrder = 0
    OnDragDrop = lbxTecnologiasDragDrop
    OnDragOver = lbxTecnologiasDragOver
  end
  object lbxHabilidades: TListBox
    Left = 296
    Top = 40
    Width = 185
    Height = 249
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 1
    OnDragDrop = lbxHabilidadesDragDrop
    OnDragOver = lbxHabilidadesDragOver
  end
  object BitBtn1: TBitBtn
    Left = 406
    Top = 321
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
