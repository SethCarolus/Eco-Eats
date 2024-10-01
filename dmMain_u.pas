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
    tblAdmin: TADOTable;
    qryAdmin: TADOQuery;
    dscAdmin: TDataSource;
    tblSupplier: TADOTable;
    dscSupplier: TDataSource;
    qrySupplier: TADOQuery;
    qryAlpha: TADOQuery;
    tblAlpha: TADOTable;
    dscAlpha: TDataSource;
    qryProduct: TADOQuery;
    tblProduct: TADOTable;
    dscProduct: TDataSource;
    tblBankCard: TADOTable;
    qryBankCard: TADOQuery;
    dscBankCard: TDataSource;
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
