inherited frmSO: TfrmSO
  Left = 176
  Top = 105
  Width = 851
  Height = 470
  Caption = 'Koreksi Stok'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 835
    inherited lblJudul: TLabel
      Width = 103
      Caption = 'Koreksi Stok'
    end
  end
  inherited pnlTengah: TPanel
    Width = 835
    Height = 289
    object Label5: TLabel
      Left = 666
      Top = 264
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Trans'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 95
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object btnCariSO: TButton
      Left = 218
      Top = 8
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 2
      Visible = False
      OnClick = btnCariSOClick
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Koreksi'
    end
    object cxdTglSO: TcxDateEdit
      Left = 95
      Top = 33
      Properties.ReadOnly = False
      TabOrder = 4
      Width = 121
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 114
      Width = 800
      Height = 138
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 5
      TabStop = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 1
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coPublicUsing]
        Position = 0
        SortType = stAlphabetic
        Width = 30
      end
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 40
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 1
        SortType = stNumeric
        Width = 40
        Images = frmUtama.ImageList1
      end
      object nxColKode: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Kode Brg.'
        Header.Caption = 'Kode Brg.'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
      end
      object nxColDeskripsi: TNxTextColumn
        DefaultWidth = 242
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 3
        SortType = stAlphabetic
        Width = 242
      end
      object nxColStokLama: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Stok Lama'
        Position = 4
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColStokBaru: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 87
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Revisi (+/-)'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        Width = 87
        EditOptions = [eoAllowFloat, eoAllowSigns]
        FormatMask = '#,##0.00'
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
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 6
        SortType = stNumeric
        FormatMask = '#,#0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 189
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 7
        SortType = stAlphabetic
        Width = 189
      end
      object nxColJenis: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 8
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 220
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 6
      Text = 'NxEdit1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 718
      Top = 259
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 7
      Width = 99
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 62
      Caption = 'Gudang'
    end
    object cxCmbGdg: TcxComboBox
      Left = 95
      Top = 58
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 9
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 219
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 202
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 87
      Caption = 'Nama Barang'
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 95
      Top = 84
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Deskripsi'
          FieldName = 'deskripsi'
        end
        item
          Caption = 'Stok G01'
          FieldName = 'G01'
        end
        item
          Caption = 'Stok G02'
          FieldName = 'G02'
        end
        item
          FieldName = 'G03'
        end
        item
          Caption = 'Total Stok'
          FieldName = 'total_stok'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsBrg
      TabOrder = 12
      Width = 471
    end
    object btnTambah: TButton
      Left = 571
      Top = 80
      Width = 75
      Height = 27
      Caption = '&Tambah'
      TabOrder = 13
      OnClick = btnTambahClick
    end
    object btnImportExcel: TButton
      Left = 650
      Top = 80
      Width = 116
      Height = 27
      Caption = 'Import Excel'
      TabOrder = 14
      OnClick = btnImportExcelClick
    end
  end
  inherited pnlBawah: TPanel
    Top = 355
    Width = 835
    inherited btnKeluar: TButton
      Height = 27
    end
    inherited btnEdit: TButton
      Left = 405
    end
    inherited btnHapus: TButton
      Left = 285
      Top = 35
    end
    inherited btnBatal: TButton
      Left = 655
      Top = 25
    end
    inherited btnSimpan: TButton
      Height = 27
    end
    object btnAdjustKor: TButton
      Left = 170
      Top = 25
      Width = 96
      Height = 27
      Caption = 'Adjust Koreksi'
      TabOrder = 6
      Visible = False
      OnClick = btnAdjustKorClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 745
    Top = 91
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 775
    Top = 91
  end
  object adoConn: TADOConnection
    Left = 605
    Top = 40
  end
end
