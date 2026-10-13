object DM: TDM
  OldCreateOrder = False
  Height = 308
  Width = 523
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=testeFireDac'
      'User_Name=sa'
      'Password=masterkey'
      'Server=GRV-NOT-97\SQLEXPRESS'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 104
    Top = 40
  end
  object FDQueryFunc: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from Funcionario')
    Left = 256
    Top = 104
  end
end
