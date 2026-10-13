object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 364
  ClientWidth = 731
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
  object SpeedButton1: TSpeedButton
    Left = 0
    Top = 325
    Width = 731
    Height = 39
    Align = alBottom
    Caption = 'Carregar dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
    ExplicitTop = 198
    ExplicitWidth = 505
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 731
    Height = 183
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Width = 10
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'setor'
        Title.Caption = 'Setor'
        Width = 200
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 41
    Align = alTop
    Caption = 'Minha primeira aplica'#231#227'o com FireDac'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 160
    ExplicitTop = 24
    ExplicitWidth = 185
  end
  object Panel2: TPanel
    Left = 0
    Top = 224
    Width = 731
    Height = 101
    Align = alBottom
    TabOrder = 2
    object EditFiltro: TEdit
      Left = 32
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 192
      Top = 62
      Width = 137
      Height = 25
      Caption = 'Filtrar por ID'
      TabOrder = 1
      OnClick = Button1Click
    end
    object DBid: TDBEdit
      Left = 32
      Top = 17
      Width = 73
      Height = 21
      Hint = 'C'#243'digo'
      DataField = 'id'
      DataSource = DataSource1
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
    end
    object DBnome: TDBEdit
      Left = 136
      Top = 17
      Width = 217
      Height = 21
      Hint = 'Nome'
      DataField = 'nome'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBsetor: TDBEdit
      Left = 370
      Top = 17
      Width = 345
      Height = 21
      Hint = 'Setor'
      DataField = 'setor'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQueryFunc
    Left = 416
    Top = 64
  end
end
