object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 438
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 724
    Height = 365
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      object Label2: TLabel
        Left = 11
        Top = 16
        Width = 94
        Height = 13
        Caption = 'C'#243'digo do Cliente'
      end
      object Label3: TLabel
        Left = 11
        Top = 72
        Width = 86
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Label4: TLabel
        Left = 176
        Top = 16
        Width = 78
        Height = 13
        Caption = 'Tipo de Cliente'
      end
      object Label5: TLabel
        Left = 380
        Top = 16
        Width = 15
        Height = 13
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 549
        Top = 16
        Width = 95
        Height = 13
        Caption = 'Data de Expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 11
        Top = 128
        Width = 48
        Height = 13
        Caption = 'Endere'#231'o'
      end
      object Label10: TLabel
        Left = 549
        Top = 72
        Width = 36
        Height = 13
        Caption = 'Celular'
      end
      object Label8: TLabel
        Left = 380
        Top = 128
        Width = 31
        Height = 13
        Caption = 'E-mail'
      end
      object Label9: TLabel
        Left = 380
        Top = 72
        Width = 44
        Height = 13
        Caption = 'Telefone'
      end
      object Label11: TLabel
        Left = 11
        Top = 185
        Width = 30
        Height = 13
        Caption = 'Bairro'
      end
      object Label12: TLabel
        Left = 184
        Top = 185
        Width = 36
        Height = 13
        Caption = 'Cidade'
      end
      object Label13: TLabel
        Left = 120
        Top = 240
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label14: TLabel
        Left = 11
        Top = 240
        Width = 14
        Height = 13
        Caption = 'UF'
      end
      object Edit1: TEdit
        Left = 11
        Top = 35
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 11
        Top = 91
        Width = 305
        Height = 21
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 176
        Top = 35
        Width = 145
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Pessoa F'#237'sica'
          'Pessoa Jur'#237'dica')
      end
      object Edit3: TEdit
        Left = 380
        Top = 35
        Width = 133
        Height = 21
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 549
        Top = 35
        Width = 156
        Height = 21
        TabOrder = 4
      end
      object Edit5: TEdit
        Left = 11
        Top = 147
        Width = 305
        Height = 21
        TabOrder = 5
      end
      object Edit6: TEdit
        Left = 380
        Top = 147
        Width = 325
        Height = 21
        TabOrder = 6
      end
      object Edit7: TEdit
        Left = 380
        Top = 91
        Width = 133
        Height = 21
        TabOrder = 7
      end
      object Edit8: TEdit
        Left = 549
        Top = 91
        Width = 156
        Height = 21
        TabOrder = 8
      end
      object CheckBox1: TCheckBox
        Left = 380
        Top = 184
        Width = 117
        Height = 17
        Caption = 'Cliente Negativado'
        TabOrder = 9
      end
      object Edit9: TEdit
        Left = 11
        Top = 204
        Width = 158
        Height = 21
        TabOrder = 10
      end
      object Edit10: TEdit
        Left = 184
        Top = 205
        Width = 132
        Height = 21
        TabOrder = 11
      end
      object Edit11: TEdit
        Left = 11
        Top = 259
        Width = 86
        Height = 21
        TabOrder = 12
      end
      object Edit12: TEdit
        Left = 120
        Top = 259
        Width = 134
        Height = 21
        TabOrder = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do C'#244'njuge'
      ImageIndex = 1
      object Label29: TLabel
        Left = 24
        Top = 18
        Width = 94
        Height = 13
        Caption = 'Nome do C'#244'njuge'
      end
      object Label30: TLabel
        Left = 24
        Top = 74
        Width = 103
        Height = 13
        Caption = 'Data de Nascimento'
      end
      object Label31: TLabel
        Left = 344
        Top = 18
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object GroupBox1: TGroupBox
        Left = 344
        Top = 88
        Width = 345
        Height = 161
        Caption = 'Contatos do C'#244'njuge'
        TabOrder = 0
        object Label26: TLabel
          Left = 24
          Top = 32
          Width = 36
          Height = 13
          Caption = 'Celular'
        end
        object Label27: TLabel
          Left = 184
          Top = 32
          Width = 56
          Height = 13
          Caption = 'Operadora'
        end
        object Label28: TLabel
          Left = 24
          Top = 88
          Width = 31
          Height = 13
          Caption = 'E-mail'
        end
        object Edit23: TEdit
          Left = 24
          Top = 51
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object Edit25: TEdit
          Left = 24
          Top = 107
          Width = 297
          Height = 21
          TabOrder = 1
        end
        object ComboBox2: TComboBox
          Left = 184
          Top = 51
          Width = 145
          Height = 21
          Style = csDropDownList
          TabOrder = 2
          Items.Strings = (
            'TIM'
            'Vivo'
            'Oi'
            'Claro')
        end
      end
      object Edit24: TEdit
        Left = 24
        Top = 37
        Width = 292
        Height = 21
        TabOrder = 1
      end
      object Edit26: TEdit
        Left = 344
        Top = 37
        Width = 145
        Height = 21
        TabOrder = 2
      end
      object Edit27: TEdit
        Left = 24
        Top = 93
        Width = 121
        Height = 21
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
      object Label21: TLabel
        Left = 32
        Top = 24
        Width = 47
        Height = 13
        Caption = 'Profiss'#227'o'
      end
      object Label22: TLabel
        Left = 32
        Top = 80
        Width = 43
        Height = 13
        Caption = 'Empresa'
      end
      object Label23: TLabel
        Left = 32
        Top = 136
        Width = 163
        Height = 13
        Caption = 'Endere'#231'o completo do trabalho'
      end
      object Label24: TLabel
        Left = 32
        Top = 190
        Width = 108
        Height = 13
        Caption = 'Telefone do trabalho'
      end
      object Label25: TLabel
        Left = 204
        Top = 190
        Width = 100
        Height = 13
        Caption = 'Celular do trabalho'
      end
      object Edit18: TEdit
        Left = 32
        Top = 43
        Width = 265
        Height = 21
        TabOrder = 0
      end
      object Edit19: TEdit
        Left = 32
        Top = 99
        Width = 265
        Height = 21
        TabOrder = 1
      end
      object Edit20: TEdit
        Left = 32
        Top = 155
        Width = 537
        Height = 21
        TabOrder = 2
      end
      object Edit21: TEdit
        Left = 32
        Top = 209
        Width = 137
        Height = 21
        TabOrder = 3
      end
      object Edit22: TEdit
        Left = 204
        Top = 209
        Width = 125
        Height = 21
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 3
      object Label15: TLabel
        Left = 24
        Top = 16
        Width = 91
        Height = 13
        Caption = 'Sal'#225'rio do Cliente'
      end
      object Label16: TLabel
        Left = 24
        Top = 74
        Width = 99
        Height = 13
        Caption = 'Sal'#225'rio do C'#244'njuge'
      end
      object Label17: TLabel
        Left = 24
        Top = 184
        Width = 79
        Height = 13
        Caption = 'Limite Utilizado'
      end
      object Label18: TLabel
        Left = 24
        Top = 128
        Width = 87
        Height = 13
        Caption = 'Limite de Cr'#233'dito'
      end
      object Label19: TLabel
        Left = 288
        Top = 16
        Width = 65
        Height = 13
        Caption = 'Observa'#231#245'es'
      end
      object Label20: TLabel
        Left = 24
        Top = 240
        Width = 78
        Height = 13
        Caption = 'Limite Restante'
      end
      object Edit13: TEdit
        Left = 24
        Top = 35
        Width = 201
        Height = 21
        TabOrder = 0
      end
      object Edit14: TEdit
        Left = 24
        Top = 93
        Width = 201
        Height = 21
        TabOrder = 1
      end
      object Edit15: TEdit
        Left = 24
        Top = 203
        Width = 201
        Height = 21
        TabOrder = 2
      end
      object Edit16: TEdit
        Left = 24
        Top = 147
        Width = 201
        Height = 21
        TabOrder = 3
      end
      object Edit17: TEdit
        Left = 24
        Top = 259
        Width = 201
        Height = 21
        TabOrder = 4
      end
      object RichEdit1: TRichEdit
        Left = 288
        Top = 35
        Width = 401
        Height = 106
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Zoom = 100
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 73
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 56
    ExplicitTop = 8
    ExplicitWidth = 783
    object Label1: TLabel
      Left = 15
      Top = 12
      Width = 305
      Height = 45
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 384
      Top = 19
      Width = 75
      Height = 37
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 472
      Top = 19
      Width = 75
      Height = 37
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 553
      Top = 19
      Width = 75
      Height = 37
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 634
      Top = 19
      Width = 75
      Height = 37
      Caption = 'Excluir'
      TabOrder = 3
    end
  end
end
