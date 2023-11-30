object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 304
  Top = 222
  Height = 331
  Width = 520
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\VISUAL 3\DbJualB' +
      'eli.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 184
    Top = 24
  end
  object ADOBARANG: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'TBARANG'
    Left = 32
    Top = 24
    object ADOBARANGKODE_BARANG: TWideStringField
      FieldName = 'KODE_BARANG'
      Size = 255
    end
    object ADOBARANGNAMA_BARANG: TWideStringField
      FieldName = 'NAMA_BARANG'
      Size = 255
    end
    object ADOBARANGSTOK: TIntegerField
      FieldName = 'STOK'
    end
  end
  object DSBARANG: TDataSource
    DataSet = ADOBARANG
    Left = 104
    Top = 24
  end
  object ADOSUPPLIER: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'TSUPPLIER'
    Left = 32
    Top = 104
    object ADOSUPPLIERKODE_SUPPLIER: TWideStringField
      FieldName = 'KODE_SUPPLIER'
      Size = 255
    end
    object ADOSUPPLIERNAMA_SUPPLIER: TWideStringField
      FieldName = 'NAMA_SUPPLIER'
      Size = 255
    end
    object ADOSUPPLIERTELP: TWideStringField
      FieldName = 'TELP'
      Size = 255
    end
  end
  object DSSUPPLIER: TDataSource
    DataSet = ADOSUPPLIER
    Left = 104
    Top = 104
  end
  object ADOKONSUMEN: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'TKONSUMEN'
    Left = 32
    Top = 184
    object ADOKONSUMENKODE_KONSUMEN: TAutoIncField
      FieldName = 'KODE_KONSUMEN'
      ReadOnly = True
    end
    object ADOKONSUMENNAMA_KONSUMEN: TWideStringField
      FieldName = 'NAMA_KONSUMEN'
      Size = 255
    end
    object ADOKONSUMENALAMAT: TWideStringField
      FieldName = 'ALAMAT'
      Size = 255
    end
  end
  object DSKONSUMEN: TDataSource
    DataSet = ADOKONSUMEN
    Left = 104
    Top = 184
  end
  object ADOBELI: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'TBELI'
    Left = 248
    Top = 24
    object ADOBELINOTA_BELI: TWideStringField
      FieldName = 'NOTA_BELI'
      Size = 255
    end
    object ADOBELITANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object ADOBELIKODE_SUPPLIER: TWideStringField
      FieldName = 'KODE_SUPPLIER'
      Size = 255
    end
    object ADOBELIKODE_BARANG: TWideStringField
      FieldName = 'KODE_BARANG'
      Size = 255
    end
    object ADOBELIJUMLAH: TIntegerField
      FieldName = 'JUMLAH'
    end
    object ADOBELIHARGA_BELI: TBCDField
      FieldName = 'HARGA_BELI'
      Precision = 19
    end
    object ADOBELITOTAL_HARGA: TBCDField
      FieldName = 'TOTAL_HARGA'
      Precision = 19
    end
    object ADOBELINAMA_SUPPLIER: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_SUPPLIER'
      LookupDataSet = ADOSUPPLIER
      LookupKeyFields = 'KODE_SUPPLIER'
      LookupResultField = 'NAMA_SUPPLIER'
      KeyFields = 'KODE_SUPPLIER'
      Size = 15
      Lookup = True
    end
    object ADOBELINAMA_BARANG: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_BARANG'
      LookupDataSet = ADOBARANG
      LookupKeyFields = 'KODE_BARANG'
      LookupResultField = 'NAMA_BARANG'
      KeyFields = 'KODE_BARANG'
      Size = 15
      Lookup = True
    end
  end
  object DSBELI: TDataSource
    DataSet = ADOBELI
    Left = 312
    Top = 24
  end
  object ADOMASTERJUAL: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'TMASTERJUAL'
    Left = 216
    Top = 104
    object ADOMASTERJUALNOTA_JUAL: TWideStringField
      FieldName = 'NOTA_JUAL'
      Size = 255
    end
    object ADOMASTERJUALTANGGAL: TDateTimeField
      FieldName = 'TANGGAL'
    end
    object ADOMASTERJUALKODE_KONSUMEN: TWideStringField
      FieldName = 'KODE_KONSUMEN'
      Size = 255
    end
    object ADOMASTERJUALNAMA_KONSUMEN: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_KONSUMEN'
      LookupDataSet = ADOKONSUMEN
      LookupKeyFields = 'KODE_KONSUMEN'
      LookupResultField = 'NAMA_KONSUMEN'
      KeyFields = 'KODE_KONSUMEN'
      Size = 15
      Lookup = True
    end
  end
  object ADODETAILJUAL: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    IndexFieldNames = 'NOTA_JUAL'
    MasterFields = 'NOTA_JUAL'
    MasterSource = DSMASTERJUAL
    TableName = 'TDETAILJUAL'
    Left = 216
    Top = 176
    object ADODETAILJUALNOTA_JUAL: TWideStringField
      FieldName = 'NOTA_JUAL'
      Size = 255
    end
    object ADODETAILJUALKODE_BARANG: TWideStringField
      FieldName = 'KODE_BARANG'
      Size = 255
    end
    object ADODETAILJUALJUMLAH: TIntegerField
      FieldName = 'JUMLAH'
    end
    object ADODETAILJUALHARGA_JUAL: TBCDField
      FieldName = 'HARGA_JUAL'
      Precision = 19
    end
    object ADODETAILJUALTOTAL_HARGA: TBCDField
      FieldName = 'TOTAL_HARGA'
      Precision = 19
    end
    object ADODETAILJUALNAMA_BARANG: TStringField
      FieldKind = fkLookup
      FieldName = 'NAMA_BARANG'
      LookupDataSet = ADOBARANG
      LookupKeyFields = 'KODE_BARANG'
      LookupResultField = 'NAMA_BARANG'
      KeyFields = 'KODE_BARANG'
      Size = 15
      Lookup = True
    end
  end
  object DSMASTERJUAL: TDataSource
    DataSet = ADOMASTERJUAL
    Left = 304
    Top = 104
  end
  object DSDETAILJUAL: TDataSource
    DataSet = ADODETAILJUAL
    Left = 304
    Top = 176
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(TOTAL_HARGA)AS TOTAL_BELANJA FROM TDETAILJUAL')
    Left = 400
    Top = 24
    object qry1TOTAL_BELANJA: TBCDField
      FieldName = 'TOTAL_BELANJA'
      Precision = 19
    end
  end
  object DSQRY1: TDataSource
    DataSet = qry1
    Left = 456
    Top = 24
  end
  object ADOQNOTAJUAL: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'QNOTAJUAL'
    Left = 400
    Top = 104
  end
end
