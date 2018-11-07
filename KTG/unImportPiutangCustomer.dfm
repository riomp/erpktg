object frmImportPiutangCustomer: TfrmImportPiutangCustomer
  Left = 483
  Top = 238
  BorderStyle = bsSingle
  Caption = 'Import Piutang Customer'
  ClientHeight = 107
  ClientWidth = 493
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
  object prgBar: TProgressBar
    Left = 8
    Top = 37
    Width = 463
    Height = 22
    TabOrder = 0
  end
  object btnMulai: TButton
    Left = 8
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Mulai'
    TabOrder = 1
    OnClick = btnMulaiClick
  end
  object btnKeluar: TButton
    Left = 86
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 2
    OnClick = btnKeluarClick
  end
  object btnLoad: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Load File'
    TabOrder = 3
    OnClick = btnLoadClick
  end
  object Edit1: TEdit
    Left = 88
    Top = 8
    Width = 377
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object adoConn: TADOConnection
    LoginPrompt = False
    Left = 369
    Top = 79
  end
  object OpenDialog1: TOpenDialog
    Left = 336
    Top = 80
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_piutang_cust')
    Params = <>
    Left = 408
    Top = 80
  end
  object ZTable1: TZTable
    Left = 440
    Top = 84
  end
end
