unit Unit2;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB, ADODB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModule2 = class(TDataModule)
    con1: TADOConnection;
    ADOBARANG: TADOTable;
    DSBARANG: TDataSource;
    ADOBARANGKODE_BARANG: TWideStringField;
    ADOBARANGNAMA_BARANG: TWideStringField;
    ADOBARANGSTOK: TIntegerField;
    ADOSUPPLIER: TADOTable;
    DSSUPPLIER: TDataSource;
    ADOSUPPLIERKODE_SUPPLIER: TWideStringField;
    ADOSUPPLIERNAMA_SUPPLIER: TWideStringField;
    ADOSUPPLIERTELP: TWideStringField;
    ADOKONSUMEN: TADOTable;
    DSKONSUMEN: TDataSource;
    ADOKONSUMENKODE_KONSUMEN: TAutoIncField;
    ADOKONSUMENNAMA_KONSUMEN: TWideStringField;
    ADOKONSUMENALAMAT: TWideStringField;
    ADOBELI: TADOTable;
    DSBELI: TDataSource;
    ADOBELINOTA_BELI: TWideStringField;
    ADOBELITANGGAL: TDateTimeField;
    ADOBELIKODE_SUPPLIER: TWideStringField;
    ADOBELIKODE_BARANG: TWideStringField;
    ADOBELIJUMLAH: TIntegerField;
    ADOBELIHARGA_BELI: TBCDField;
    ADOBELITOTAL_HARGA: TBCDField;
    ADOBELINAMA_SUPPLIER: TStringField;
    ADOBELINAMA_BARANG: TStringField;
    ADOMASTERJUAL: TADOTable;
    ADODETAILJUAL: TADOTable;
    DSMASTERJUAL: TDataSource;
    DSDETAILJUAL: TDataSource;
    ADOMASTERJUALNOTA_JUAL: TWideStringField;
    ADOMASTERJUALTANGGAL: TDateTimeField;
    ADOMASTERJUALKODE_KONSUMEN: TWideStringField;
    ADOMASTERJUALNAMA_KONSUMEN: TStringField;
    ADODETAILJUALNOTA_JUAL: TWideStringField;
    ADODETAILJUALKODE_BARANG: TWideStringField;
    ADODETAILJUALJUMLAH: TIntegerField;
    ADODETAILJUALHARGA_JUAL: TBCDField;
    ADODETAILJUALTOTAL_HARGA: TBCDField;
    ADODETAILJUALNAMA_BARANG: TStringField;
    qry1: TADOQuery;
    DSQRY1: TDataSource;
    qry1TOTAL_BELANJA: TBCDField;
    ADOQNOTAJUAL: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{$R *.dfm}

end.
