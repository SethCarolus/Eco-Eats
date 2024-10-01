object dmMain: TdmMain
  Height = 480
  Width = 640
  object conMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\PAT 2024\EcoEats' +
      '\Win32\Debug\EcoEats.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 584
    Top = 8
  end
  object qryCustomer: TADOQuery
    Connection = conMain
    DataSource = dscCustomer
    Parameters = <>
    Prepared = True
    Left = 24
    Top = 16
  end
  object tblCustomer: TADOTable
    Connection = conMain
    TableName = 'tblCustomer'
    Left = 104
    Top = 16
  end
  object dscCustomer: TDataSource
    DataSet = tblCustomer
    Left = 24
    Top = 80
  end
  object tblAdmin: TADOTable
    Connection = conMain
    TableName = 'tblAdmin'
    Left = 104
    Top = 144
  end
  object qryAdmin: TADOQuery
    Connection = conMain
    DataSource = dscAdmin
    Parameters = <>
    Prepared = True
    Left = 24
    Top = 148
  end
  object dscAdmin: TDataSource
    DataSet = tblAdmin
    Left = 24
    Top = 216
  end
  object tblSupplier: TADOTable
    Connection = conMain
    TableName = 'tblSupplier'
    Left = 104
    Top = 288
  end
  object dscSupplier: TDataSource
    DataSet = tblSupplier
    Left = 24
    Top = 352
  end
  object qrySupplier: TADOQuery
    Connection = conMain
    DataSource = dscSupplier
    Parameters = <>
    Left = 24
    Top = 288
  end
  object qryAlpha: TADOQuery
    Connection = conMain
    DataSource = dscSupplier
    Parameters = <>
    Left = 216
    Top = 288
  end
  object tblAlpha: TADOTable
    Connection = conMain
    TableName = 'tblAlpha'
    Left = 288
    Top = 288
  end
  object dscAlpha: TDataSource
    DataSet = tblSupplier
    Left = 216
    Top = 352
  end
  object qryProduct: TADOQuery
    Connection = conMain
    DataSource = dscProduct
    Parameters = <>
    Left = 216
    Top = 152
  end
  object tblProduct: TADOTable
    Connection = conMain
    TableName = 'tblProduct'
    Left = 288
    Top = 152
  end
  object dscProduct: TDataSource
    DataSet = tblProduct
    Left = 216
    Top = 216
  end
  object tblBankCard: TADOTable
    Connection = conMain
    TableName = 'tblBankCard'
    Left = 296
    Top = 16
  end
  object qryBankCard: TADOQuery
    Connection = conMain
    DataSource = dscBankCard
    Parameters = <>
    Prepared = True
    Left = 208
    Top = 16
  end
  object dscBankCard: TDataSource
    DataSet = tblBankCard
    Left = 208
    Top = 80
  end
end
