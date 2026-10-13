object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object leHost: TLabeledEdit
    Left = 40
    Top = 24
    Width = 193
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Host'
    TabOrder = 0
  end
  object leUserName: TLabeledEdit
    Left = 40
    Top = 72
    Width = 193
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'UserName'
    TabOrder = 1
  end
  object lePassword: TLabeledEdit
    Left = 40
    Top = 120
    Width = 177
    Height = 21
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Password'
    TabOrder = 2
  end
  object leRemetente: TLabeledEdit
    Left = 264
    Top = 24
    Width = 217
    Height = 21
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'Remetente'
    TabOrder = 3
  end
  object leEmail: TLabeledEdit
    Left = 264
    Top = 72
    Width = 201
    Height = 21
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Email'
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 184
    Width = 75
    Height = 25
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 5
    OnClick = BitBtn1Click
  end
end
