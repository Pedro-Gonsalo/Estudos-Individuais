object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 532
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 761
    Height = 73
    Align = alTop
    DockSite = True
    PopupMenu = PopupMenu1
    TabOrder = 0
    ExplicitTop = -6
    object ActionMainMenuBar1: TActionMainMenuBar
      Left = 1
      Top = 1
      Width = 759
      Height = 27
      ActionManager = ActionManager1
      Caption = 'ActionMainMenuBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 10461087
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      Spacing = 0
      ExplicitTop = 0
    end
    object ActionToolBar1: TActionToolBar
      Left = 1
      Top = 28
      Width = 759
      Height = 26
      ActionManager = ActionManager1
      Caption = 'Barra de Ferramentas'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 10461087
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Spacing = 0
      ExplicitLeft = 0
      ExplicitTop = 34
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 185
    Height = 459
    Align = alLeft
    DockSite = True
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 79
    object Panel4: TPanel
      Left = 1
      Top = 93
      Width = 185
      Height = 217
      Caption = 'Menu de Acesso'
      DragKind = dkDock
      DragMode = dmAutomatic
      TabOrder = 0
      object Button1: TButton
        Left = 40
        Top = 96
        Width = 97
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object Panel3: TPanel
    Left = 576
    Top = 73
    Width = 185
    Height = 459
    Align = alRight
    DockSite = True
    TabOrder = 2
    ExplicitTop = 79
    object Panel5: TPanel
      Left = 0
      Top = 94
      Width = 185
      Height = 217
      Caption = 'Configura'#231#245'es'
      DragKind = dkDock
      DragMode = dmAutomatic
      TabOrder = 0
      object Button2: TButton
        Left = 48
        Top = 96
        Width = 105
        Height = 25
        Caption = 'Button2'
        TabOrder = 0
        OnClick = Button2Click
      end
    end
  end
  object ImageList1: TImageList
    Left = 424
    Top = 224
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000000000000000000000FA00
      FA05E300E31C9F009F60870087787400748B7700778899009966B800B8476F00
      6F906D006D928C008C7300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E200E21DB400B44BDE00DE21FE00FE01000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AC28639CEBAB
      51FFDF7C0AFFEEAD58FFEEAD58FFECAB53FFE08B27FFE7A03DFFE49D36FF41DB
      74FF3FD972FF6D006D92FE00FE01FE00FE010000000000000000000000000000
      0000000000000000000000000000EB00EB14C600C6397803788A730B7397700B
      709A6E056E968F008F70C400C43BFE00FE010000000000000000000000000000
      0000000000009E6C6DFEFFD8D8FFBA8686FFBB8888FF9E6A6AFF8A4A63E66D00
      6D929D009D62ED00ED1200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E98C0FFFECAC
      53FFE59128FFF1B264FFF1B364FFE07E10FF0000B0FFF7E0BFFFF6DEBCFF44DE
      77FF42DC75FF4E004EB16D006D928C008C7300000000FA00FA05E600E619B500
      B54AAA00AA55AF00AF50C500C53A734E73DA787878FF9D9D9DFF6C6C6CFF9494
      94FF8D8D8DFF565656FF5C345CD7C300C33C0000000000000000000000000000
      0000D800D827FFD8D8FFFFD5D5FFFAEFEFFFE9CFCFFFB27C7CFFBA8686FFAB77
      77FF9A6666FF7401738DF300F30C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DF6B22DDF1B2
      63FFF3B76DFFDFB077FFEC9B44FF242FB1FF0011C1FF50EA84FF50EA84FF4BE5
      7EFF48E27BFF42DC75FF3FD972FF6D006D92B8178D72EDAE59FFEEB05DFFEEAE
      5BFFEFAE59FFECAC50FFEFA339FFA4A4A4FFB0B0B0FF7C7877FF1BE2FFFF9F9F
      9FFF949494FF868686FF7C7C7CFFB400B44B000000000000000000000000AC7D
      7EFEFFE1E1FFFFD7D7FFFFD7D7FFF6EBEBFFFFF7F7FFFFF5F5FFFFF4F4FFFFF2
      F2FFFFECECFF760F6EA0EE00EE11000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CB0AB946F2B4
      68FFF5BA73FFED9D42FFFAC58AFF5369E4FF0015CFFF55EF89FF54EE88FF4FE9
      83FF4BE57EFF44DE77FF41DB74FF6F006F90BE4345BAEEB05CFFF0B160FFF4B7
      6DFFDB8524FFDC7200FFF0A846FFB5B5B5FFB9B9B9FF9B9593FF48E8FFFF7E7E
      7EFF9B9B9BFF888888FF818181FFE000E01F0000000000000000D500D52AFFE6
      E6FFFFDFDFFFFFD8D8FFFFD6D6FFF0E6E6FFFFF8F8FFFFF6F6FFFFF5F5FFFFF3
      F3FFFFEEEEFF76116DA3ED00ED12000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F2AA
      4EFFEAB575FFF8BC75FFFDCD99FFADB7EBFF1531C1FFEDAF5CFFDB7500FF54EE
      88FF50EA84FF6D006D92FE00FE0100000000FD00FD02F3B66DFFF7BF7DFFFBC6
      8CFFD37C12FFD9923EFFEDAB54FF96999BFFCECECEFF6B6B6BFFA1FAFBFF9999
      99FF919191FF8D8D8DFF656165FB000000000000000000000000BF9292FFFFE1
      E1FFFFDEDEFFFFD7D7FFFFD6D6FFEFE9E9FFFFFBFBFF6A3535FF895959FFFFF7
      F7FFFFF9F9FF78166CA9EB00EB14000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BE1F
      8C73E98000FFF8C081FFF8A12BFF3244D1FF363DA2FFECAD59FFEF9F2FFF55EF
      89FF50EA84FF6F006F90000000000000000000000000F3B973FFFBC587FFFFCE
      9DFFC6C3B7FFE9BE87FFEDAE58FFD89B46FF787A7CFF717171FFBDECEDFF8282
      81FF838383FF706F70FEDC00DC23000000000000000000000000C49696FFFFDE
      DEFFFFDCDCFFFFD6D6FFFFD4D4FFB79494FFF0E9E9FFB29494FFFFFFFFFFFFF8
      F8FFFFFEFEFF79196CACE900E916000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007522A4913CA3FFFF5AB2FFFF5AB1FFFF4153B9D08F008F700000
      00000000000000000000000000000000000000000000FE00FE01E37510EFFB88
      00FF92C7FAFFDEC9ABFFEC9627FFF400F40BFE00FE01549BFFFF549AFFFF5396
      FFFF4674FBFDF200F20D000000000000000000000000FE00FE01CDA0A0FFFFD9
      D9FFFFD7D7FFFFD2D2FFFFD0D0FFFFFFFFFFFFF3F3FFC39393FFC38E8EFFCA96
      96FFBE8A8AFF7C226CB5E600E619000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000055AEFFFF60B5FFFF65B9FFFF64B8FFFF5BB2FFFF601E85A90000
      0000000000000000000000000000000000000000000000000000FE00FE0142A5
      FFFF5FB5FFFF4FADFFFF4547AFC9FE00FE01E300E41C57A4FFFF57A3FFFF549B
      FFFF5398FFFFB200B24D000000000000000000000000FE00FE01D1A3A3FFFFD6
      D6FFFFD4D4FFFFD0D0FFFFCECEFFFFFCFCFFFFF6F6FFFFF4F4FFFFF5F5FFFCDD
      DDFFE2B4B4FF7D276DB9E500E51A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FD00
      FD021D69B6F16CBDFFFF75C2FFFF7EC8FFFF7BC6FFFF6CBDFFFF56AFFFFFFB00
      FB040000000000000000000000000000000000000000CD03D232369AFBFD73C1
      FFFF7BC5FFFF75C2FFFF6CBCFFFFD400D42B3E82FDFE5DB6FFFF5EB6FFFF59A9
      FFFF56A1FFFF630F77A4D000D02F0000000000000000FE00FE01DAA9A9FFFFCF
      CFFFFFCECEFFFDCACAFFFACACAFFFFFFFFFFFFF9F9FFFFFAFAFFFFF5F5FFFFF3
      F3FFFFF8F8FF822F6BC3E200E21D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D602
      D929006396FF77C4FFFF7DC8FFFF8BCFFFFF87CDFFFF73C1FFFF69BBFFFFF600
      F60900000000000000000000000000000000000000005C2C9EA347A2E8FF80C8
      FFFF89CEFFFF80CAFFFF73C0FFFFC600C639408EFFFF61C2FFFF5FBCFFFF5AAD
      FFFF57A5FFFF000000FF8F008F700000000000000000FE00FE01DDABABFFFECC
      CCFFFDCBCBFFF9C6C6FFF7C7C7FFFFFFFFFFFFFAFAFFA08080FFBC9898FFFFF6
      F6FFFFF8F8FF86376DC9E100E11E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006B26
      A3940085B8FF005F92FF86CCFFFF95D6FFFF8FD1FFFF79C5FFFF6ABCFFFFFC00
      FC0300000000000000000000000000000000000000000868A3F7007DB1FF61B1
      E7FF96D9FFFF59A8DCFF3A91C8FFBB00BB44313131FF505050FF505050FF0000
      01FF1E1E1EFF000000FF990099660000000000000000FE00FE01E1AEAEFFF6C3
      C3FFF5C2C2FFF1BEBEFFF2C4C4FFC3A4A4FFE7DCDCFFD7C8C8FFFFFFFFFFFFFA
      FAFFFFFBFBFF8D446ED5DE00DE21000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006828
      A3970089BCFF0086B9FF005F93FF2E84B7FF0C6699FF00578BFF005C8CFFEB00
      EB1400000000000000000000000000000000000000001C60A8E3008DC0FF008B
      BEFF0080B3FF007DB1FF0077ABFFAF00AF50252525FF6A6A6AFF676767FF4343
      43FF2B2B2BFF020002FDE100E11E0000000000000000FE00FE01E1AEAEFFF2BF
      BFFFF0BEBEFFEDB9B9FFF6D9D9FFF3D0D0FFE8B8B8FFD49F9FFFBE8888FFC6A3
      A3FFE9D8D8FF8F4B6FDBDD00DD22000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F900
      F9060087BAFF008FC2FF008CBFFF0085B8FF0081B4FF0078ACFF0074A8FFFD00
      FD020000000000000000000000000000000000000000000000004641A5B90090
      C3FF0089BCFF0080B3FF0172A3FE0000000000000000360036C9010001FE4900
      49B6E300E31C00000000000000000000000000000000FE00FE01DFACACFFE8B3
      B3FFFDF0F0FFFFE6E6FFFFE4E4FFFFE0E0FFFFDDDDFFFFD9D9FFFFD7D7FFFFD7
      D7FFE8B9B9FFAC13A46EFC00FC03000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000473E9FB80092C5FF008EC1FF0086B9FF0082B5FF007AAEFF115D9BEE0000
      0000000000000000000000000000000000000000000000000000000000000177
      A9FE007AAEFF5D2D9EA2F500F50A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEAAAAFFFFED
      EDFFFFEAEAFFFFE6E6FFFFE4E4FFFFE0E0FFFFDEDEFFFFDDDDFFFED7D7FFA140
      86B9E800E8170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FA00FA055F2DA0A035479CCA8A15A97500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FE00FE01CE06CC39B01AA673AE6887E0A81E9D8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E500E51AB000B04FE800E817FD00FD020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E000E01FD800D827D800D827D800D827D800D827D800D8270000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FB00FB04D000D02F8C008C73AA00AA55F600F609000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000EB00EB14BC00BC43DD00DD22FD00FD020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B115B064DEBABAFF6F686CFBCE00
      CE31FE00FE010000000000000000000000000000000000000000000000000000
      0000000000006FEA96FF36CA63FF34C761FF33C45EFF2EBC55FF007902FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000094E5F0FC005D94FF006FA3FF0078ACFF0084B7FF50207DAFE700
      E71800000000000000000000000000000000000000000000000000000000F800
      F807DB00DB24432F88BC0176AAFF0DA0D3FF099FD2FF0077ABFF0E5C98F1B000
      B04FF200F20D0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4DEDEFFE8C4C4FF5F02
      5FA2D500D52A0000000000000000000000000000000000000000000000000000
      00000000000078EF9CFF48D875FF3AD16AFF39D069FF32C25CFF017B02FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000098ECF1FF006499FF1A7298FF46788EFF0099CCFF00A3D6FF6500
      659AD300D32C00000000000000000000000000000000FC00FC03E500E51A5E1A
      83A10173A4FE1DA9DCFF19A5D8FF12A2D5FF0EA1D4FF007DB1FF007DB1FF3138
      86CE6B006B94F800F80700000000000000000000000000000000000000000000
      00000000000000000000FE00FE01F100F10EF000F00FFFD5D5FFF3C6C6FFEEC8
      C8FF6F4D6CE0FE00FE0100000000000000000000000000000000000000000000
      00000000000084F2A4FF56E081FF3ED56EFF3DD46DFF34C55EFF017E04FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F100F10E90FBFFFF38A6C8FF448799FF517986FF7C6F6BFF00B5E8FF00CA
      FDFF0092C5FFD300D32C0000000000000000000000001E9FD2FF2FB1E4FF2FB0
      E3FF2DAFE2FF28ADE0FF25ABDEFF1CA7DAFF18A5D8FF0088BBFF0087BAFF0082
      B5FF007EB2FF006DA1FF5F086CA0000000000000000000000000000000000000
      0000F800F807A800A8577E037E847914769D7613759DFFD8D8FFFBCACAFFF8E8
      E8FFC3A5A5FFEF00EF1000000000000000000000000000000000000000000000
      0000000000008BF3A9FF5CE285FF3FD66FFF3ED56EFF36C761FF027E05FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000365BB0C982F6FFFF72F5FFFF329AB3FF42889AFF626B6EFF00BEF1FF00CC
      FFFF00CEFFFF6500659AE600E619000000000000000023A2D5FF35B3E6FF36B3
      E6FF34B3E6FF2EB0E3FF2BAEE1FF21A9DCFF1EA8DBFF008DC0FF008BBEFF0086
      B9FF0083B6FF007BAFFF0E5A96F1000000000000000000000000EC00EC13CFB3
      B3FFFFEEEEFFFFE4E4FFFFE2E2FFFFDDDDFFFFDADAFFFFD4D4FFFFD1D1FFFBC9
      C9FFFAE9E9FF8F008F70FE00FE0100000000000000000A9415FF0B9315FF0A91
      14FF099113FF48E37DFF50E17DFF42DA73FF41D972FF39CA63FF018104FF0280
      04FF027E04FF017C03FF017A03FFD800D8270000000000000000000000005748
      B6A894FFFFFF67EEFFFF56E8FFFF37E1FFFF0D98C7FF00B1E4FF00B9ECFF00C6
      F9FF00CBFEFF00C6F9FF521E7DAD00000000000000002DA7DAFF43BAEDFF43BA
      EDFF41B9ECFF3AB6E9FF35B3E6FF2AAEE1FF26ACDFFF0097CAFF0094C7FF008E
      C1FF008ABDFF0083B6FF0E5C98F10000000000000000E800E817BC8F9EF0FFED
      EDFFFFEBEBFFFFE9EEFFFA9C14FFFA9F1DFFFA9E1DFFFDC396FFFFD4D4FFFECD
      CDFFFCE8E8FF5C015CA4D000D02F00000000FE00FE0165E78CFF45DB73FF44DA
      73FF45DA73FF45DD76FF47DE78FF44DC75FF43DA73FF3DD36CFF3ACD66FF38CA
      63FF36CA63FF33C55EFF2EBD56FFD800D82700000000000000000000000000AF
      E5FFB1F9FFFF5AE9FFFF49E4FFFF29D9FFFF19D8FFFF00AADDFF00B0E3FF00BC
      EFFF00C0F3FF00B6E9FF008DC0FFFB00FB040000000035ADE0FF4ABEF1FF4ABE
      F1FF48BDF0FF3FB8EBFF3AB5E8FF2EAFE2FF29ADE0FF0099CCFF0098CBFF0091
      C4FF008DC0FF0084B7FF0E5D98F10000000000000000FFF7F7FFFFF1F1FFFFF1
      F1FFFFF0F0FFFFF0F1FFFFF2FAFFE27B00FFE27B00FFFFDFE3FFFFDADAFFFFD3
      D3FFFFCECEFFFBD9D9FF7E7277FAFB00FB04FE00FE0186F3A4FF61EB8DFF5CE9
      89FF59E887FF55E583FF51E380FF4AE07AFF46DE77FF43DA73FF41D972FF3ED5
      6EFF3DD46DFF39CE67FF32C25CFFD800D8270000000000000000000000004AE1
      FBFFB7F6FFFF41E1FFFF31DCFFFF11D1FFFF00CCFFFF27DAFFFF3BDCFCFF00A1
      D3FF009FD2FF0098CBFF0094C7FFE700E718000000003DB3E6FF56C4F7FF57C4
      F7FF53C2F5FF47BCEFFF40B9ECFF33B2E5FF2EAFE2FF0099CCFF0099CCFF0096
      C9FF0091C4FF0088BBFF0E5F99F100000000F800F807FFF2F2FFFFF2F2FFFFF1
      F1FFFFF1F1FFFFF0F0FFFFEFEFFFD77000FFD77000FFFFE0E0FFFFDDDDFFFFD5
      D5FFFFD1D1FFFDE1E1FFF3C5C5FFDB00DB24FE00FE018AF4A5FF67EE91FF60EC
      8CFF5FEB8BFF58E887FF55E684FF50E37EFF4AE07AFF44DC75FF42DA73FF3FD6
      6FFF3ED56EFF39CF68FF33C35DFFD800D8270000000000000000000000003DDF
      FCFFB5F4FFFF35DDFFFF25D8FFFF04CDFFFF0BCFFFFF37DEFFFF4DE5FFFF79F3
      FDFF6FD6E3FF1D9EC8FFACFBFCFEF800F8070000000043B6E9FF5BC8FBFF5CC7
      FAFF56C4F7FF4ABDF0FF42B9ECFF61C4F0FFA7DFFFFF0099CCFF0099CCFF0097
      CAFF0091C4FF0087BAFF0E5F99F100000000C36DA7C5FFFEFEFFFFFCFCFFFFF3
      F3FFFFF3F3FFFFF2F2FFFFFBFFFFCA6E1AFFCA6D19FFFFE5E5FFFFE1E1FFFFDA
      DAFFFFD6D6FFFFCDCDFFFDE8E8FF87008778FE00FE0192F7ABFF8EF6A9FF8EF7
      A9FF8DF5A8FF8AF5A6FF77EF9AFF55E684FF51E380FF47DF78FF58E585FF61E4
      89FF5BE285FF4FDA7AFF36CA63FFD800D8270000000000000000000000001A8A
      CCE5A1F4FFFF1DD5FFFF0DD0FFFF16D3FFFF2CDAFFFF58E9FFFF6EF0FFFF9BFF
      FFFF80EFF8FFBE07C841FC00FC0300000000000000003AA2EFFF3C98FAFF2F71
      FDFF8FEEFFFF0063BDFF006CACFF5BC2F0FF3BB6E9FF37B4E7FF32B2E5FF0397
      CAFF0090C3FF0086B9FF0E619AF100000000C774AAC9FFFDFDFFFFFDFDFFFFF6
      F6FFFFF3F3FFFFF6F9FFCC803DFFCF8748FFCF8748FFFFE7E7FFFFE4E4FFFFDC
      DCFFFFD8D8FFFFCFCFFFFFE9E9FF9500956A0000000091FAADFF91FAACFF90FA
      ABFF8EF8ABFF99F8AFFF89F5A5FF58E887FF56E583FF45DB74FF47E37BFF7BED
      9CFF75EB99FF6AE791FF65E68DFFE000E01F0000000000000000000000005523
      8CAA0386B7FF11D1FFFF00CCFFFF26D9FFFF3CE0FFFF68EEFFFF7EF6FFFF12B0
      DDFEAC0BBA5300000000000000000000000000000000378CF3FF4080FFFF004F
      F2FF6DE3FCFF0054D8FF73AFFEFF43BAEDFF44BAEDFF3FB8EBFF3AB5E8FF2CB0
      E3FF26A8DCFE0085B8FF0E629BF100000000FD00FD02FFFCFCFFFFFDFDFFFFFC
      FCFFFFFBFBFFFFF3F3FFFFF3F3FFFFFFFFFFFFFFFFFFFFEBEBFFFFE7E7FFFFDF
      DFFFFFDBDBFFFFD5D5FFFFD5D5FFEF00EF100000000000000000000000000000
      00000000000090F5A8FF8CF5A6FF5FEB8BFF59E887FF42D670FF068F0EFF0000
      00000000000000000000000000000000000000000000FC00FC038C0C9E730083
      B6FF0075A9FF013E73FE119DCBFF4CE6FFFF65EDFFFF03B8EEFCB60BC3490000
      000000000000000000000000000000000000E300E51C1E30D3E16AD1FFFF00CC
      FFFF0AD1FFFF9BFDFEFF176AE3FF0082B5FF3CB7EAFF4EBFF2FF45BBEEFF34B3
      E6FF2BAEE1FF135F9CECED00ED120000000000000000FEFBFBFFFFFEFEFFFFFC
      FCFFFFFCFCFFFFFAFAFFFFF9FBFFA63D00FFA43900FFFFEDEDFFFFE9E9FFFFE1
      E1FFFFDCDCFFFFEAEAFFCEADADFF000000000000000000000000000000000000
      00000000000092F6ABFF8DF7A7FF60EC8CFF5DE989FF42D56FFF078F0FFF0000
      000000000000000000000000000000000000000000008E0FA4710085B8FF0075
      A9FF00699DFF840A977BF700F708644EBD9B892AB976FE00FE01000000000000
      000000000000000000000000000000000000E000E31F301DC2CF50BBFCFF00CC
      FFFF00CBFFFF0054EDFF004AE1FF0084B7FF008EC1FF1CA8DBFF4DBFF2FF36B5
      E8FF2CAEE1FFF400F40B000000000000000000000000FD00FD02FCC8C9FEFFFB
      FBFFFFFDFDFFFFFBFBFFFFFAFBFFDBB8A7FFE7CCC1FFFFEFEFFFFFEBEBFFFFE3
      E3FFFFE6E6FF972F9599FA00FA05000000000000000000000000000000000000
      00000000000094F6ABFF8EF6A9FF68EE92FF62EB8DFF44D770FF089110FF0000
      000000000000000000000000000000000000000000000086B9FF0076AAFF0066
      9AFF272F78D80000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006F0DB2903C45CED752B4
      FFFF49ADFEFF0036E5FF0053BBFF006599FF6B006B9400000000000000009819
      B967FB00FB04000000000000000000000000000000000000000000000000FCE4
      E4FFFFF9F9FFFFFCFCFFFFFCFCFFFFF9F9FFFFF8F8FFFFF7F7FFFFECECFFFFE8
      E8FFBEA0A1FEFE00FE0100000000000000000000000000000000000000000000
      00000000000094F6ACFF93F7ABFF8CF6A7FF88F3A5FF58E082FF089111FF0000
      000000000000000000000000000000000000000000000077ABFF006A9EFF0349
      80FCE500E51A0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B004C44F720DB28D1335
      DCEC0553F3FF88D7FFFF418BD7FF006599FF600D739F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F600F609BE18B85FB855A2B2B34DA0ACCB07C93DFC00FC030000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FE00FE01FE00FE01FE00FE01FE00FE01FE00FE01FE00FE010000
      00000000000000000000000000000000000000000000333A8DCC9D0AAE620000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E300
      E51CE600E81900000000000000002161AADEE900E91600000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00E003FFFFFC3F0000C000FE00F8030000
      C0008000F0010000C0000000E0010000C0000000C0010000E0010001C0010000
      E0038001C0010000F81F800380010000F81FC00380010000E00F800180010000
      E00F800180010000E00F800180010000E00F800180010000E00FC18780010000
      F01FE1FFC0070000F87FFFFFF07F0000FE1FF81FF83FFE1FFF07F81FF80FE007
      FF87F81FF8078003FC03F81FF0038001F003F81FF0018001C0018000E0018001
      80010000E000800180000000E000800100000000E000800100000000E0018001
      00008000E00780010000F81F801F00018001F81F803F00038001F81F87FF8067
      E003F81F87FF807FF81FF81F9FFFE67F00000000000000000000000000000000
      000000000000}
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Action1
                Caption = '&Clientes'
                ImageIndex = 4
              end
              item
                Action = Action2
                Caption = '&Relat'#243'rios'
                ImageIndex = 2
              end>
            Caption = 'C&lientes'
          end
          item
            Items = <
              item
                Action = Action3
                Caption = '&Produtos'
                ImageIndex = 3
              end
              item
                Action = Action4
                Caption = '&Contas a receber'
                ImageIndex = 6
              end>
            Caption = '&Produtos'
          end>
        ActionBar = ActionMainMenuBar1
      end
      item
        Items = <
          item
            Action = Action1
            ImageIndex = 4
          end
          item
            Action = Action3
            Caption = '&Produtos'
            ImageIndex = 3
          end
          item
            Action = Action4
            Caption = 'C&ontas a receber'
            ImageIndex = 6
          end
          item
            Action = Action2
            Caption = '&Relat'#243'rios'
            ImageIndex = 2
          end>
        ActionBar = ActionToolBar1
      end>
    Images = ImageList1
    Left = 344
    Top = 224
    StyleName = 'Platform Default'
    object Action3: TAction
      Category = 'Produtos'
      Caption = 'Produtos'
      ImageIndex = 3
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Category = 'Produtos'
      Caption = 'Contas a receber'
      ImageIndex = 6
      OnExecute = Action4Execute
    end
    object Action1: TAction
      Category = 'Clientes'
      Caption = 'Clientes'
      ImageIndex = 4
    end
    object Action2: TAction
      Category = 'Clientes'
      Caption = 'Relat'#243'rios'
      ImageIndex = 2
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 296
    object Personalizar1: TMenuItem
      Caption = 'Personalizar'
      OnClick = Personalizar1Click
    end
  end
  object CustomizeDlg1: TCustomizeDlg
    ActionManager = ActionManager1
    StayOnTop = False
    Left = 424
    Top = 296
  end
end