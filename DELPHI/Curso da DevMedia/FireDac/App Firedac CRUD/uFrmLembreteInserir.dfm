object FrmLembreteInserir: TFrmLembreteInserir
  Left = 0
  Top = 0
  Caption = 'Inserir Lembrete'
  ClientHeight = 286
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 286
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 38
      Top = 34
      Width = 26
      Height = 13
      Caption = 'T'#237'tulo'
    end
    object Label3: TLabel
      Left = 38
      Top = 70
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object Label4: TLabel
      Left = 38
      Top = 195
      Width = 49
      Height = 13
      Caption = 'Data Hora'
    end
    object EdtTitulo: TEdit
      Left = 100
      Top = 31
      Width = 293
      Height = 21
      Color = clWhite
      TabOrder = 0
    end
    object MmDescricao: TMemo
      Left = 100
      Top = 62
      Width = 293
      Height = 119
      Color = clWhite
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object Panel7: TPanel
      Left = 1
      Top = 245
      Width = 411
      Height = 40
      Align = alBottom
      TabOrder = 2
      object BtnSalvar: TSpeedButton
        Left = 1
        Top = 1
        Width = 98
        Height = 38
        Align = alLeft
        Caption = 'Salvar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF97433F97433F97433F97433FB59A9BB59A9BB59A9BB59A9B
          B59A9BB59A9BB59A9BB59A9BB59A9BB59A9BB59A9B97433F97433F97433F9743
          3FFF00FFFF00FFFF00FFFF00FF97433FC16967D06565C96564C45C5CA27474E9
          E2E2D5CCCCD1C0BFE9DAD8F6F0EDF6F1EFEBE6E6E3E7E6E3E7E6C27F7E932B2A
          9A3737B85353BF5F6097433FFF00FFFF00FFFF00FF97433FC46C6AD06565D069
          69CA6061A25657E9E2E292292A92292ABE6967F7EDEAFFFFFDFBF8F5F3F8F6F3
          F8F6C27F7E9227279A3636BB5454C4636397433FFF00FFFF00FFFF00FF97433F
          C36B69D06565CE6868C85F5FA35A5AE9E2E292292A92292AC36E6BEADFDDFBFA
          F7FEFAF7FDFFFCFDFFFFC27F7E9227279A3636BA5454C3626297433FFF00FFFF
          00FFFF00FF97433FC36B69D06565CE6868C75E5EA55B5BE9E2E292292A92292A
          C36E6BDACECDF0EFEDFBF7F5FFFFFFFDFFFFC27F7E9227279A3636BA5454C362
          6297433FFF00FFFF00FFFF00FF97433FC36B69D06565CE6868C75E5EA75D5CE9
          E2E292292A92292AC36E6BC1B4B3DEDEDCF2EDEAFFFFFFFDFFFFC27F7E912626
          9B3636BA5454C3626297433FFF00FFFF00FFFF00FF97433FC36B69D06565CE68
          68C55D5DA95E5EE9E2E292292A92292AC36E6BA39B9ABAC0BFDDDEDBFDFFFFFD
          FFFFC27F7E8D2222983333B95353C3626297433FFF00FFFF00FFFF00FF97433F
          C36B69D06565CD6767C75F5FB05B5CE9E2E2E9E2E2E9E2E2E9E2E2E9E2E2E9E2
          E2E9E2E2E9E2E2E9E2E2C27F7E9B3131A33E3EBD5757C3616297433FFF00FFFF
          00FFFF00FF97433FC36C69D06565CD6666CC6564C76161CD7676D99090DB9494
          D88D8ED98889D78686D48282D18282CE7575C65F5EC45B5BC65E5ECC6464C260
          6197433FFF00FFFF00FFFF00FF97433FD06565D06565C35F5EC76664CB6C6CCA
          6B6ACA6867CA6868CA6868CA6868CA6867CA6867C96766CA6B6ACE7372CF7675
          CF7272CF6969C15F6097433FFF00FFFF00FFFF00FF97433FD06565D06565D6A3
          A1D6A3A1D7A5A3D8A6A4D8A6A4D8A6A4D8A6A4D8A6A4D8A6A4D8A6A5D8A6A5D8
          A6A5D8A6A4D8A7A5D7A6A4CE7070D0656597433FFF00FFFF00FFFF00FF97433F
          D06565D06565E0C4C2FEFDFDFEFDFDFFFEFEFFFEFEFFFEFEFFFEFEFFFEFEFFFE
          FEFFFEFEFFFEFEFFFEFEFEFDFDFDFCFCE5C7C6C56666D0656597433FFF00FFFF
          00FFFF00FF97433FD06565D06565E2C8C6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5C7C7C46463D065
          6597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6C4FEFEFEFEFEFECD
          CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDFEFEFEFEFEFE
          E5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6
          C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEE5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433F
          D06565D06565E2C6C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5C7C6C46463D0656597433FFF00FFFF
          00FFFF00FF97433FD06565D06565E2C6C4FEFEFEFEFEFECDCDCDCDCDCDCDCDCD
          CDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDFEFEFEFEFEFEE5C7C6C46463D065
          6597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6C4FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          E5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433FD06565D06565E2C6
          C4FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEE5C7C6C46463D0656597433FFF00FFFF00FFFF00FF97433F
          D06565D06565E2C7C5FEFEFEFEFEFECDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCDCD
          CDCDCDCDCDCDCDCDCDCDFEFEFEFEFEFEE5C7C6C56565D0656597433FFF00FFFF
          00FFFF00FF97433FD06565D06565DDC2C0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEE5C8C6D06565D065
          6597433FFF00FFFF00FFFF00FFFF00FF97433F97433FCFB4B2FEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          E7C9C797433F97433FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentFont = False
        OnClick = BtnSalvarClick
      end
    end
  end
  object DtpDataHora: TDateTimePicker
    Left = 100
    Top = 195
    Width = 141
    Height = 21
    Date = 42968.560768067130000000
    Format = 'dd/MM/yyyy HH:mm'
    Time = 42968.560768067130000000
    DateFormat = dfLong
    TabOrder = 1
  end
end