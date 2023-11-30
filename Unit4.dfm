object Form2: TForm2
  Left = 194
  Top = 239
  Width = 662
  Height = 189
  Caption = 'MAIN MENU'
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl: TLabel
    Left = 72
    Top = 48
    Width = 467
    Height = 23
    Caption = 'APLIKASI PENJUALAN KARTU PERDANA 3STORE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mm1: TMainMenu
    Left = 16
    Top = 24
    object INPUTDATA1: TMenuItem
      Caption = 'INPUT DATA'
      object DATABARANG1: TMenuItem
        Caption = 'DATA BARANG'
        OnClick = DATABARANG1Click
      end
      object mniDATASUPPLIER2: TMenuItem
        Caption = 'DATA SUPPLIER'
        OnClick = mniDATASUPPLIER2Click
      end
      object mniDATAKONSUMEN2: TMenuItem
        Caption = 'DATA KONSUMEN'
        OnClick = mniDATAKONSUMEN2Click
      end
    end
    object mniRANSAKSI1: TMenuItem
      Caption = 'TRANSAKSI'
      object mniPEMBELIANBARANG1: TMenuItem
        Caption = 'PEMBELIAN BARANG'
        OnClick = mniPEMBELIANBARANG1Click
      end
      object mniPENJUALANBARANG1: TMenuItem
        Caption = 'PENJUALAN BARANG'
        OnClick = mniPENJUALANBARANG1Click
      end
    end
    object mniLAPORAN1: TMenuItem
      Caption = 'LAPORAN'
      object mniDATABARANG1: TMenuItem
        Caption = 'DATA BARANG'
      end
      object mniDATASUPPLIER1: TMenuItem
        Caption = 'DATA SUPPLIER'
      end
      object mniDATAKONSUMEN1: TMenuItem
        Caption = 'DATA KONSUMEN'
      end
      object mniPEMBELIAN1: TMenuItem
        Caption = 'PEMBELIAN'
      end
    end
    object mniKELUAR1: TMenuItem
      Caption = 'KELUAR'
    end
  end
end
