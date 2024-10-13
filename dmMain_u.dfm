object dmMain: TdmMain
  Height = 600
  Width = 800
  object conMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=EcoEa' +
      'ts.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB:Syst' +
      'em database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Pas' +
      'sword="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode' +
      '=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Tra' +
      'nsactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create ' +
      'System Database=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB' +
      ':Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Without Re' +
      'plica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 723
    Top = 19
  end
  object qryCustomer: TADOQuery
    Connection = conMain
    DataSource = dscCustomer
    Parameters = <>
    Left = 26
    Top = 13
  end
  object tblCustomer: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblCustomer'
    Left = 109
    Top = 13
  end
  object dscCustomer: TDataSource
    DataSet = tblCustomer
    Left = 74
    Top = 69
  end
  object qrySupplier: TADOQuery
    Connection = conMain
    DataSource = dscSupplier
    Parameters = <>
    Left = 32
    Top = 147
  end
  object tblSupplier: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblSupplier'
    Left = 122
    Top = 147
  end
  object dscSupplier: TDataSource
    DataSet = tblSupplier
    Left = 32
    Top = 224
  end
  object tblAlpha: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblAlpha'
    Left = 122
    Top = 282
  end
  object qryAlpha: TADOQuery
    Connection = conMain
    DataSource = dscAlpha
    Parameters = <>
    Left = 32
    Top = 294
  end
  object dscAlpha: TDataSource
    DataSet = tblAlpha
    Left = 38
    Top = 384
  end
  object tblAdmin: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblAdmin'
    Left = 358
    Top = 19
  end
  object qryAdmin: TADOQuery
    Connection = conMain
    DataSource = dscAdmin
    Parameters = <>
    Left = 256
    Top = 19
  end
  object dscAdmin: TDataSource
    DataSet = tblAdmin
    Left = 256
    Top = 96
  end
  object tblProduct: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblProduct'
    Left = 371
    Top = 166
  end
  object qryProduct: TADOQuery
    Connection = conMain
    DataSource = dscProduct
    Parameters = <>
    Left = 262
    Top = 173
  end
  object dscProduct: TDataSource
    DataSet = tblProduct
    Left = 269
    Top = 250
  end
  object tblBankCard: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblBankCard'
    Left = 371
    Top = 333
  end
  object qryBankCard: TADOQuery
    Connection = conMain
    DataSource = dscBankCard
    Parameters = <>
    Left = 275
    Top = 346
  end
  object dscBankCard: TDataSource
    DataSet = tblBankCard
    Left = 275
    Top = 422
  end
  object tblBank: TADOTable
    Active = True
    Connection = conMain
    CursorType = ctStatic
    TableName = 'tblBank'
    Left = 627
    Top = 318
  end
  object qryBank: TADOQuery
    Connection = conMain
    DataSource = dscBank
    Parameters = <>
    Left = 531
    Top = 330
  end
  object dscBank: TDataSource
    DataSet = tblBank
    Left = 531
    Top = 430
  end
end
