object Form5: TForm5
  Left = 374
  Top = 246
  Width = 829
  Height = 466
  Caption = 'Form5'
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
    Left = 152
    Top = 48
    Width = 519
    Height = 33
    Caption = 'KONSUMEN KARTU PERDANA 3STORE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 32
    Top = 120
    Width = 179
    Height = 23
    Caption = 'KODE_KONSUMEN'
    FocusControl = dbedt1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 32
    Top = 160
    Width = 183
    Height = 23
    Caption = 'NAMA_KONSUMEN'
    FocusControl = dbedt2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 32
    Top = 200
    Width = 79
    Height = 23
    Caption = 'ALAMAT'
    FocusControl = dbedt3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 32
    Top = 256
    Width = 497
    Height = 120
    DataSource = DataModule2.DSKONSUMEN
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 496
    Top = 120
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 496
    Top = 152
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 496
    Top = 184
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 496
    Top = 216
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 4
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 592
    Top = 120
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 592
    Top = 152
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 6
    OnClick = btn6Click
  end
  object grp1: TGroupBox
    Left = 544
    Top = 256
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
    DataField = 'KODE_KONSUMEN'
    DataSource = DataModule2.DSKONSUMEN
    TabOrder = 8
  end
  object dbedt2: TDBEdit
    Left = 248
    Top = 160
    Width = 200
    Height = 21
    DataField = 'NAMA_KONSUMEN'
    DataSource = DataModule2.DSKONSUMEN
    TabOrder = 9
  end
  object dbedt3: TDBEdit
    Left = 248
    Top = 200
    Width = 200
    Height = 21
    DataField = 'ALAMAT'
    DataSource = DataModule2.DSKONSUMEN
    TabOrder = 10
  end
end
