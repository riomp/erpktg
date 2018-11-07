inherited frmKalkulasiUlangPerKode: TfrmKalkulasiUlangPerKode
  Left = 323
  Top = 265
  Caption = 'Kalkulasi Ulang Per Kode Barang'
  ClientHeight = 154
  ClientWidth = 544
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 87
    Top = 71
    Width = 434
  end
  inherited btnProses: TButton
    Left = 417
    Top = 138
    Visible = False
  end
  inherited prgBar: TProgressBar
    Left = 87
    Top = 87
    Width = 434
  end
  inherited btnBatal: TButton
    Left = 165
    Top = 116
  end
  inherited RichEdit1: TRichEdit
    Left = 335
    Top = 190
  end
  object cxLabel1: TcxLabel
    Left = 14
    Top = 20
    Caption = 'Deskripsi'
  end
  object cxlDesk: TcxLookupComboBox
    Left = 88
    Top = 18
    Properties.KeyFieldNames = 'kode'
    Properties.ListColumns = <
      item
        FieldName = 'deskripsi'
      end
      item
        FieldName = 'kode'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = ds
    Properties.OnChange = cxlDeskPropertiesChange
    TabOrder = 5
    Width = 408
  end
  object cxLabel2: TcxLabel
    Left = 14
    Top = 45
    Caption = 'Kode'
  end
  object cxtKode: TcxTextEdit
    Left = 88
    Top = 43
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    TabOrder = 7
    Width = 378
  end
  object btnProses2: TButton
    Left = 87
    Top = 116
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 8
    OnClick = btnProses2Click
  end
  object btnCari: TButton
    Left = 500
    Top = 18
    Width = 23
    Height = 21
    Caption = '...'
    TabOrder = 9
    OnClick = btnCariClick
  end
  object zqr: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi FROM tbl_barang WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 230
    Top = 10
  end
  object ds: TDataSource
    DataSet = zqr
    Left = 260
    Top = 10
  end
end
