object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 436
  Width = 657
  object TstfiredacConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=tstFireDac')
    Connected = True
    LoginPrompt = False
    Left = 267
    Top = 82
  end
  object FuncionarioTable: TFDQuery
    Active = True
    Connection = TstfiredacConnection
    FormatOptions.AssignedValues = [fvFmtDisplayNumeric, fvFmtEditNumeric]
    FormatOptions.FmtDisplayNumeric = '0000'
    FormatOptions.FmtEditNumeric = '0000'
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_FUNCI'
    UpdateOptions.AutoIncFields = 'id'
    SQL.Strings = (
      'SELECT * FROM Funcionario')
    Left = 467
    Top = 88
    object FuncionarioTableid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object FuncionarioTablenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 255
    end
    object FuncionarioTablesetor: TStringField
      FieldName = 'setor'
      Origin = 'setor'
      Required = True
      Size = 50
    end
  end
end
