object Form6: TForm6
  Left = 595
  Top = 91
  Width = 825
  Height = 694
  Caption = 'Form6'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel
    Left = 56
    Top = 40
    Width = 689
    Height = 33
    Caption = 'TRANSAKSI PEMBELIAN KARTU PERDANA 3STORE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 48
    Top = 120
    Width = 112
    Height = 23
    Caption = 'NOTA_BELI'
    FocusControl = dbedt1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 48
    Top = 160
    Width = 92
    Height = 23
    Caption = 'TANGGAL'
    FocusControl = dbedt2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 48
    Top = 200
    Width = 166
    Height = 23
    Caption = 'NAMA_SUPPLIER'
    FocusControl = dblkcbb1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 240
    Width = 47
    Height = 23
    Caption = 'TELP'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 280
    Width = 152
    Height = 23
    Caption = 'NAMA_BARANG'
    FocusControl = DBLookupComboBox1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 320
    Width = 52
    Height = 23
    Caption = 'STOK'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 48
    Top = 360
    Width = 80
    Height = 23
    Caption = 'JUMLAH'
    FocusControl = dbedt3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 48
    Top = 400
    Width = 126
    Height = 23
    Caption = 'HARGA_BELI'
    FocusControl = dbedt4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 48
    Top = 440
    Width = 144
    Height = 23
    Caption = 'TOTAL_HARGA'
    FocusControl = dbedt5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 48
    Top = 496
    Width = 497
    Height = 120
    DataSource = DataModule2.DSBELI
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 480
    Top = 280
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 480
    Top = 312
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 480
    Top = 344
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 480
    Top = 376
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 480
    Top = 408
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 480
    Top = 440
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 6
    OnClick = btn6Click
  end
  object grp1: TGroupBox
    Left = 560
    Top = 496
    Width = 185
    Height = 121
    Caption = 'Masukan Kode Barang'
    TabOrder = 7
    object edt1: TEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btn7: TButton
      Left = 56
      Top = 80
      Width = 75
      Height = 25
      Caption = 'CARI'
      TabOrder = 1
      OnClick = btn7Click
    end
  end
  object dbedt1: TDBEdit
    Left = 248
    Top = 120
    Width = 200
    Height = 21
    DataField = 'NOTA_BELI'
    DataSource = DataModule2.DSBELI
    TabOrder = 8
  end
  object dbedt2: TDBEdit
    Left = 248
    Top = 160
    Width = 200
    Height = 21
    DataField = 'TANGGAL'
    DataSource = DataModule2.DSBELI
    TabOrder = 9
  end
  object dblkcbb1: TDBLookupComboBox
    Left = 248
    Top = 200
    Width = 200
    Height = 21
    DataField = 'NAMA_SUPPLIER'
    DataSource = DataModule2.DSBELI
    TabOrder = 10
  end
  object DBEdit1: TDBEdit
    Left = 248
    Top = 240
    Width = 200
    Height = 21
    DataField = 'TELP'
    DataSource = DataModule2.DSSUPPLIER
    TabOrder = 11
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 248
    Top = 280
    Width = 200
    Height = 21
    DataField = 'NAMA_BARANG'
    DataSource = DataModule2.DSBELI
    TabOrder = 12
  end
  object DBEdit2: TDBEdit
    Left = 248
    Top = 320
    Width = 200
    Height = 21
    DataField = 'STOK'
    DataSource = DataModule2.DSBARANG
    TabOrder = 13
  end
  object dbedt3: TDBEdit
    Left = 248
    Top = 360
    Width = 200
    Height = 21
    DataField = 'JUMLAH'
    DataSource = DataModule2.DSBELI
    TabOrder = 14
  end
  object dbedt4: TDBEdit
    Left = 248
    Top = 400
    Width = 200
    Height = 21
    DataField = 'HARGA_BELI'
    DataSource = DataModule2.DSBELI
    TabOrder = 15
    OnKeyPress = dbedt4KeyPress
  end
  object dbedt5: TDBEdit
    Left = 248
    Top = 440
    Width = 200
    Height = 21
    DataField = 'TOTAL_HARGA'
    DataSource = DataModule2.DSBELI
    TabOrder = 16
  end
end
