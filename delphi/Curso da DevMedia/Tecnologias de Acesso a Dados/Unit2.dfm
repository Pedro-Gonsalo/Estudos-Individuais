object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 496
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 496
    Align = alLeft
    Caption = 'ULTRAPASSADOS'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object GroupBox1: TGroupBox
    Left = 240
    Top = 271
    Width = 560
    Height = 225
    Align = alCustom
    Caption = 'Que ser'#225' utilizado no curso'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\PROJETOS\Delphi\' +
      'JallteOriginal\Bin\DB\RMComercial2.mdb;Persist Security Info=Fal' +
      'se;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 376
    Top = 32
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'DB_SAC'
    DriverName = 'FIREBIRD'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      'database=D:\PROJETOS\RM_SAC\DB\DBSAC.FDB'
      'localecode=0000'
      'password=testeteste'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    Left = 664
    Top = 32
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Entrada'
    CommandType = cmdTable
    Parameters = <>
    Left = 392
    Top = 208
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 'ATENDIMENTO'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 672
    Top = 200
  end
  object IBDatabase1: TIBDatabase
    ServerType = 'IBServer'
    Left = 96
    Top = 304
  end
  object IBTable1: TIBTable
    BufferChunks = 1000
    CachedUpdates = False
    UniDirectional = False
    Left = 24
    Top = 360
  end
  object IBQuery1: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 88
    Top = 360
  end
  object IBStoredProc1: TIBStoredProc
    Left = 160
    Top = 360
  end
  object ADOTable1: TADOTable
    Left = 320
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 384
    Top = 112
  end
  object ADOStoredProc1: TADOStoredProc
    Parameters = <>
    Left = 456
    Top = 112
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 664
    Top = 104
  end
  object SQLTable1: TSQLTable
    Left = 600
    Top = 104
  end
  object SQLStoredProc1: TSQLStoredProc
    Params = <>
    Left = 736
    Top = 104
  end
  object IBDataSet1: TIBDataSet
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    UniDirectional = False
    Left = 88
    Top = 424
  end
  object SQLConnection2: TSQLConnection
    ConnectionName = 'DB_SAC'
    DriverName = 'FIREBIRD'
    LoginPrompt = False
    Params.Strings = (
      'drivername=FIREBIRD'
      'blobsize=-1'
      'commitretain=False'
      'database=D:\PROJETOS\RM_SAC\DB\DBSAC.FDB'
      'localecode=0000'
      'password=testeteste'
      'rolename=RoleName'
      'sqldialect=3'
      'isolationlevel=ReadCommitted'
      'user_name=sysdba'
      'waitonlocks=True'
      'trim char=False')
    Left = 600
    Top = 328
  end
  object SQLDataSet2: TSQLDataSet
    CommandText = 'ATENDIMENTO'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection2
    Left = 600
    Top = 408
  end
  object ADODataSet2: TADODataSet
    Connection = ADOConnection2
    CursorType = ctStatic
    CommandText = 'Entrada'
    CommandType = cmdTable
    Parameters = <>
    Left = 384
    Top = 408
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\PROJETOS\Delphi\' +
      'JallteOriginal\Bin\DB\RMComercial2.mdb;Persist Security Info=Fal' +
      'se;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 384
    Top = 320
  end
end
