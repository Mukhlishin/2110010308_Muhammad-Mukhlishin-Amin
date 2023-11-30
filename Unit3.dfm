object Form1: TForm1
  Left = 217
  Top = 266
  Width = 416
  Height = 352
  Caption = 'Form1'
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
    Left = 72
    Top = 80
    Width = 125
    Height = 16
    Caption = 'Masukan Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 72
    Top = 152
    Width = 63
    Height = 16
    Caption = 'Password'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object edt1: TEdit
    Left = 72
    Top = 96
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 72
    Top = 168
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object btn: TButton
    Left = 208
    Top = 248
    Width = 89
    Height = 33
    Caption = 'LOG IN'
    TabOrder = 2
    OnClick = btnClick
  end
  object btn1: TButton
    Left = 88
    Top = 248
    Width = 89
    Height = 33
    Caption = 'LOG OUT'
    TabOrder = 3
    OnClick = btn1Click
  end
  object chk1: TCheckBox
    Left = 200
    Top = 208
    Width = 129
    Height = 17
    Caption = 'Tampilkan Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = chk1Click
  end
  object pnl1: TPanel
    Left = 8
    Top = 16
    Width = 385
    Height = 41
    TabOrder = 5
    object lbl3: TLabel
      Left = 32
      Top = 8
      Width = 314
      Height = 25
      Caption = 'SELAMAT DATANG DI 3STORE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object tmr1: TTimer
    Interval = 6
    OnTimer = tmr1Timer
    Left = 24
    Top = 88
  end
end
