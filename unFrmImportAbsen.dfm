object frmImportDataAbsensi: TfrmImportDataAbsensi
  Left = 523
  Top = 238
  Width = 498
  Height = 153
  Caption = 'Import Data Absensi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 61
    Width = 463
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
  end
  object btnLoad: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Load File'
    TabOrder = 0
    OnClick = btnLoadClick
  end
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 377
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object prgBar: TProgressBar
    Left = 8
    Top = 37
    Width = 463
    Height = 22
    TabOrder = 2
  end
  object btnMulai: TButton
    Left = 8
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Mulai'
    TabOrder = 3
    OnClick = btnMulaiClick
  end
  object btnKeluar: TButton
    Left = 86
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 4
    OnClick = btnKeluarClick
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 80
  end
  object adoConn: TADOConnection
    LoginPrompt = False
    Left = 369
    Top = 79
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_karyawan_absensi')
    Params = <>
    Left = 408
    Top = 80
  end
  object ZTable1: TZTable
    Left = 440
    Top = 84
  end
end
