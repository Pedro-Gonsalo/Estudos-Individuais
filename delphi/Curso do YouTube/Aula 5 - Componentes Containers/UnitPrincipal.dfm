object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 391
  ClientWidth = 605
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 233
    Height = 81
    TabOrder = 0
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 31
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 1
    end
    object CheckBox5: TCheckBox
      Left = 8
      Top = 54
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 2
    end
    object Button1: TButton
      Left = 96
      Top = 23
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox
    Left = 264
    Top = 8
    Width = 105
    Height = 81
    Caption = 'Filmes Preferidos'
    TabOrder = 1
    object CheckBox2: TCheckBox
      Left = 8
      Top = 16
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 0
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 39
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 1
    end
    object CheckBox6: TCheckBox
      Left = 8
      Top = 62
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 2
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 388
    Top = 8
    Width = 189
    Height = 81
    Caption = 'Fabricante'
    Columns = 2
    Items.Strings = (
      'Ford'
      'Chevrolet'
      'Wolksvagem'
      'Hyunday'
      'Honda'
      'Nissan')
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 56
    Top = 112
    Width = 497
    Height = 241
    ActivePage = TabSheet1
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#245'es Pessoais'
      object Edit1: TEdit
        Left = 32
        Top = 24
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit2: TEdit
        Left = 32
        Top = 72
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 1
      object Memo1: TMemo
        Left = 16
        Top = 16
        Width = 457
        Height = 185
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 2
      object Button2: TButton
        Left = 152
        Top = 80
        Width = 209
        Height = 57
        Caption = 'Button2'
        TabOrder = 0
      end
    end
  end
end
