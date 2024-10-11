object dmMain: TdmMain
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object conMain: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\so' +
      'urce\Coding Projects\Delphi Projects\EcoEats\Win32\Debug\EcoEats' +
      '.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLEDB:' +
      'System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database' +
      ' Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking ' +
      'Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk' +
      ' Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cre' +
      'ate System Database=False;Jet OLEDB:Encrypt Database=False;Jet O' +
      'LEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Withou' +
      't Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 904
    Top = 24
  end
  object qryCustomer: TADOQuery
    Connection = conMain
    DataSource = dscCustomer
    Parameters = <>
    Left = 33
    Top = 16
  end
  object tblCustomer: TADOTable
    Connection = conMain
    TableName = 'tblCustomer'
    Left = 136
    Top = 16
  end
  object dscCustomer: TDataSource
    DataSet = tblCustomer
    Left = 33
    Top = 96
  end
  object qrySupplier: TADOQuery
    Connection = conMain
    DataSource = dscSupplier
    Parameters = <>
    Left = 40
    Top = 184
  end
  object tblSupplier: TADOTable
    Connection = conMain
    TableName = 'tblSupplier'
    Left = 153
    Top = 184
  end
  object dscSupplier: TDataSource
    Left = 40
    Top = 280
  end
  object tblAlpha: TADOTable
    Connection = conMain
    TableName = 'tblAlpha'
    Left = 153
    Top = 353
  end
  object qryAlpha: TADOQuery
    Connection = conMain
    DataSource = dscAlpha
    Parameters = <>
    Left = 40
    Top = 368
  end
  object dscAlpha: TDataSource
    DataSet = tblAlpha
    Left = 48
    Top = 480
  end
  object tblAdmin: TADOTable
    Connection = conMain
    TableName = 'tblAdmin'
    Left = 448
    Top = 24
  end
  object qryAdmin: TADOQuery
    Connection = conMain
    DataSource = dscAdmin
    Parameters = <>
    Left = 320
    Top = 24
  end
  object dscAdmin: TDataSource
    DataSet = tblCustomer
    Left = 320
    Top = 120
  end
  object tblProduct: TADOTable
    Connection = conMain
    TableName = 'tblProduct'
    Left = 464
    Top = 208
  end
  object qryProduct: TADOQuery
    Connection = conMain
    DataSource = dscProduct
    Parameters = <>
    Left = 328
    Top = 216
  end
  object dscProduct: TDataSource
    DataSet = tblProduct
    Left = 336
    Top = 313
  end
  object tblBankCard: TADOTable
    Connection = conMain
    TableName = 'tblBankCard'
    Left = 464
    Top = 416
  end
  object qryBankCard: TADOQuery
    Connection = conMain
    DataSource = dscBankCard
    Parameters = <>
    Left = 344
    Top = 433
  end
  object dscBankCard: TDataSource
    DataSet = tblBankCard
    Left = 344
    Top = 528
  end
  object tblBank: TADOTable
    Connection = conMain
    TableName = 'tblBank'
    Left = 784
    Top = 398
  end
  object qryBank: TADOQuery
    Connection = conMain
    DataSource = dscBank
    Parameters = <>
    Left = 664
    Top = 413
  end
  object dscBank: TDataSource
    DataSet = tblBank
    Left = 664
    Top = 538
  end
end
