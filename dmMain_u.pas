unit dmMain_u;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmMain = class(TDataModule)
    conMain: TADOConnection;
    qryCustomer: TADOQuery;
    tblCustomer: TADOTable;
    dscCustomer: TDataSource;
    qrySupplier: TADOQuery;
    tblSupplier: TADOTable;
    dscSupplier: TDataSource;
    tblAlpha: TADOTable;
    qryAlpha: TADOQuery;
    dscAlpha: TDataSource;
    tblAdmin: TADOTable;
    qryAdmin: TADOQuery;
    dscAdmin: TDataSource;
    tblProduct: TADOTable;
    qryProduct: TADOQuery;
    dscProduct: TDataSource;
    tblBankCard: TADOTable;
    qryBankCard: TADOQuery;
    dscBankCard: TDataSource;
    tblBank: TADOTable;
    qryBank: TADOQuery;
    dscBank: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
