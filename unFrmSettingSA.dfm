object frmSettingSA: TfrmSettingSA
  Left = 425
  Top = 331
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Setting Stok Awal'
  ClientHeight = 438
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 18
    Width = 39
    Height = 13
    Caption = 'Tanggal'
  end
  object Label2: TLabel
    Left = 36
    Top = 70
    Width = 18
    Height = 13
    Caption = 'Cari'
  end
  object Label3: TLabel
    Left = 15
    Top = 43
    Width = 38
    Height = 13
    Caption = 'Gudang'
  end
  object nxGrd: TNextGrid
    Left = 15
    Top = 94
    Width = 811
    Height = 292
    AppearanceOptions = [aoBoldTextSelection, aoHideSelection, aoHighlightSlideCells, aoIndicateSortedColumn]
    Options = [goEscClearEdit, goGrid, goHeader]
    TabOrder = 4
    TabStop = True
    OnAfterEdit = nxGrdAfterEdit
    object NxIncrementColumn1: TNxIncrementColumn
      DefaultWidth = 48
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No.'
      Position = 0
      SortType = stAlphabetic
      Width = 48
    end
    object nxcKode: TNxTextColumn
      DefaultValue = '0'
      DefaultWidth = 157
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Position = 1
      SortType = stAlphabetic
      Width = 157
    end
    object nxcNama: TNxTextColumn
      DefaultWidth = 342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Nama Barang'
      Position = 2
      SortType = stAlphabetic
      Width = 342
    end
    object NxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Stok'
      Header.Alignment = taRightJustify
      Position = 3
      SortType = stNumeric
      EditOptions = [eoAllowFloat, eoAllowSigns]
      FormatMask = '#,#0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object NxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Hrg. Beli'
      Header.Alignment = taRightJustify
      Position = 4
      SortType = stNumeric
      Visible = False
      EditOptions = []
      FormatMask = '#,#'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColHPP: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'HPP'
      Header.Alignment = taRightJustify
      Position = 5
      SortType = stNumeric
      FormatMask = '#,#0.000'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColDept: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dept'
      Position = 6
      SortType = stAlphabetic
      Visible = False
    end
    object nxColUnit: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Unit'
      Header.Alignment = taCenter
      Position = 7
      SortType = stAlphabetic
    end
    object nxColDivisi: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Divisi'
      Position = 8
      SortType = stAlphabetic
      Visible = False
    end
  end
  object btnSimpan: TButton
    Left = 220
    Top = 409
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 9
    Visible = False
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 171
    Top = 394
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 7
    OnClick = btnBatalClick
  end
  object dtTgl: TDateTimePicker
    Left = 60
    Top = 14
    Width = 106
    Height = 21
    Date = 40961.483226805560000000
    Format = 'dd-MM-yyyy'
    Time = 40961.483226805560000000
    TabOrder = 0
  end
  object prgBar: TProgressBar
    Left = 252
    Top = 394
    Width = 445
    Height = 25
    TabOrder = 8
    Visible = False
  end
  object btnImportExcel: TButton
    Left = 93
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Import Excel'
    TabOrder = 6
    OnClick = btnImportExcelClick
  end
  object cxLUNamaBrg: TcxLookupComboBox
    Left = 60
    Top = 66
    Properties.CharCase = ecUpperCase
    Properties.KeyFieldNames = 'kode'
    Properties.ListColumns = <
      item
        FieldName = 'nama'
      end
      item
        FieldName = 'kode'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsKodeBrg
    TabOrder = 3
    OnKeyPress = cxLUNamaBrgKeyPress
    Width = 501
  end
  object cxCmbGdg: TcxComboBox
    Left = 60
    Top = 40
    Properties.DropDownListStyle = lsEditFixedList
    TabOrder = 2
    Width = 121
  end
  object btnSimpan2: TButton
    Left = 15
    Top = 394
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 5
    OnClick = btnSimpan2Click
  end
  object cxChkSAConsumable: TcxCheckBox
    Left = 172
    Top = 14
    Caption = 'Stok Awal Consumable'
    TabOrder = 1
    Visible = False
    Width = 149
  end
  object tmr: TTimer
    Interval = 300
    OnTimer = tmrTimer
    Left = 519
    Top = 129
  end
  object q: TZQuery
    SQL.Strings = (
      'SELECT * FROM tbl_barang')
    Params = <>
    Left = 483
    Top = 129
  end
  object zqKodeBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi FROM tbl_barang')
    Params = <>
    Left = 390
    Top = 190
  end
  object dsKodeBrg: TDataSource
    DataSet = zqKodeBrg
    Left = 390
    Top = 220
  end
end
