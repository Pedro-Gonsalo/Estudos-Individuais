object DM: TDM
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDConnection: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'Password=masterkey'
      'Server=GRV-NOT-97\SQLEXPRESS'
      'Database=bdlembretes'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 64
  end
end
