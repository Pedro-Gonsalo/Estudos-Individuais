object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 467
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 232
    Height = 32
    Caption = 'Agenda de Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 106
    Height = 17
    Caption = 'Nome do Contato'
  end
  object Label3: TLabel
    Left = 24
    Top = 184
    Width = 40
    Height = 17
    Caption = 'Celular'
  end
  object Label4: TLabel
    Left = 24
    Top = 280
    Width = 76
    Height = 17
    Caption = 'Observa'#231#245'es'
  end
  object Label5: TLabel
    Left = 24
    Top = 414
    Width = 148
    Height = 17
    Caption = 'Data e Hora do Cadastro'
  end
  object DBText1: TDBText
    Left = 24
    Top = 437
    Width = 232
    Height = 17
    DataField = 'data'
    DataSource = DM.dsContatos
  end
  object label6: TLabel
    Left = 368
    Top = 62
    Width = 108
    Height = 17
    Caption = 'Busca de Contatos'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 143
    Width = 313
    Height = 25
    DataField = 'nome'
    DataSource = DM.dsContatos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 207
    Width = 153
    Height = 25
    DataField = 'celular'
    DataSource = DM.dsContatos
    TabOrder = 1
  end
  object DBCheckBox1: TDBCheckBox
    Left = 24
    Top = 248
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'bloqueado'
    DataSource = DM.dsContatos
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 24
    Top = 303
    Width = 185
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.dsContatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 80
    Width = 320
    Height = 34
    DataSource = DM.dsContatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 368
    Top = 128
    Width = 337
    Height = 313
    DataSource = DM.dsContatos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Contatos Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 368
    Top = 85
    Width = 337
    Height = 25
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
