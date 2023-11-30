object Form3: TForm3
  Left = 192
  Top = 180
  Width = 778
  Height = 467
  Caption = 'INPUTAN BARANG MASUK'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 120
    Top = 40
    Width = 433
    Height = 33
    Caption = 'STOK KARTU PERDANA 3STORE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 128
    Width = 148
    Height = 23
    Caption = 'KODE_BARANG'
    FocusControl = dbedt1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 40
    Top = 168
    Width = 152
    Height = 23
    Caption = 'NAMA_BARANG'
    FocusControl = dbedt2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 40
    Top = 208
    Width = 52
    Height = 23
    Caption = 'STOK'
    FocusControl = dbedt3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbedt1: TDBEdit
    Left = 248
    Top = 128
    Width = 200
    Height = 21
    DataField = 'KODE_BARANG'
    DataSource = DataModule2.DSBARANG
    TabOrder = 0
  end
  object dbedt2: TDBEdit
    Left = 248
    Top = 168
    Width = 200
    Height = 21
    DataField = 'NAMA_BARANG'
    DataSource = DataModule2.DSBARANG
    TabOrder = 1
  end
  object dbedt3: TDBEdit
    Left = 248
    Top = 208
    Width = 200
    Height = 21
    DataField = 'STOK'
    DataSource = DataModule2.DSBARANG
    TabOrder = 2
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 256
    Width = 497
    Height = 120
    DataSource = DataModule2.DSBARANG
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 488
    Top = 120
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 488
    Top = 152
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 488
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 488
    Top = 216
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 7
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 584
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 584
    Top = 152
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 9
    OnClick = btn6Click
  end
  object grp1: TGroupBox
    Left = 536
    Top = 256
    Width = 185
    Height = 121
    Caption = 'Masukan Kode Barang'
    TabOrder = 10
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
end
