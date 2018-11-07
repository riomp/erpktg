inherited frmTrsRetur2: TfrmTrsRetur2
  Left = 204
  Top = 146
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi Retur Penjualan - Non Admin'
  ClientHeight = 459
  ClientWidth = 967
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 967
    inherited lblJudul: TLabel
      Width = 323
      Caption = 'Transaksi Retur Penjualan - Non Admin'
    end
  end
  inherited pnlTengah: TPanel
    Width = 967
    Height = 350
    object Label5: TLabel
      Left = 803
      Top = 318
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Transaksi'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object NxEdit1: TNxEdit
      Left = 143
      Top = 263
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 2
      Text = 'NxEdit1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 856
      Top = 315
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 3
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 415
      Top = 30
      Caption = 'No. Surat Jalan'
      Visible = False
    end
    object cxLabel3: TcxLabel
      Left = 390
      Top = 5
      Caption = 'Nama Customer'
      Visible = False
    end
    object cxtNamaCust: TcxTextEdit
      Tag = 1
      Left = 474
      Top = 3
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 8
      Visible = False
      Width = 472
    end
    object NxEdit2: TNxEdit
      Left = 223
      Top = 248
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 9
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object NxEdit3: TNxEdit
      Left = 539
      Top = 249
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 10
      Text = 'NXEDIT3'
      Visible = False
    end
    object nxBeNoSO: TNxButtonEdit
      Left = 644
      Top = 239
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 11
      Text = 'NXBENOSO'
      Visible = False
      OnButtonClick = nxBeNoSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxlNoSJ: TcxLookupComboBox
      Left = 499
      Top = 28
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. SJ'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSJ
      Properties.OnEditValueChanged = cxlNoSJPropertiesEditValueChanged
      TabOrder = 12
      Visible = False
      Width = 145
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 85
      Caption = 'No. SPBB'
      Visible = False
    end
    object cxtNoSPBB: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 14
      Visible = False
      Width = 137
    end
    object cxlCCR: TcxLookupComboBox
      Left = 99
      Top = 58
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no'
      Properties.ListColumns = <
        item
          Caption = 'No. CCR'
          FieldName = 'no'
        end
        item
          Caption = 'No. SO'
          FieldName = 'no_so'
        end
        item
          Caption = 'Nama Customer'
          Width = 100
          FieldName = 'nama_cust'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCCR
      Properties.OnEditValueChanged = cxlNoSJPropertiesEditValueChanged
      TabOrder = 15
      Width = 145
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 60
      Caption = 'No. CCR'
    end
    object cxLabel7: TcxLabel
      Left = 14
      Top = 311
      Caption = '( Double klik pada kolom No. SJ untuk menambahkan item )'
      Style.TextColor = clBlue
    end
    object cxLabel8: TcxLabel
      Left = 300
      Top = 65
      Caption = 'Jenis Retur'
      Visible = False
    end
    object cxCmbJenisRetur: TcxComboBox
      Left = 384
      Top = 63
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 19
      Visible = False
      Width = 597
    end
    object cxLabel9: TcxLabel
      Left = 383
      Top = 88
      Caption = '( Double klik pada kolom No. SJ untuk menambahkan item )'
      Style.TextColor = clBlue
      Visible = False
    end
    object ScrollBox1: TScrollBox
      Left = 15
      Top = 111
      Width = 941
      Height = 196
      TabOrder = 21
      object nxGrd: TNextGrid
        Left = 10
        Top = 8
        Width = 1512
        Height = 154
        FixedCols = 5
        GridLinesStyle = lsActiveRows
        InputSize = 18
        Options = [goGrid, goHeader, goIndicator]
        RowSize = 18
        TabOrder = 0
        TabStop = True
        WantTabs = True
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
        object nxColHapus: TNxImageColumn
          Alignment = taCenter
          DefaultValue = '0'
          DefaultWidth = 46
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Hapus'
          Header.Alignment = taCenter
          Position = 1
          SortType = stNumeric
          Visible = False
          Width = 46
          Images = frmUtama.ImageList1
        end
        object nxColJenis: TNxHyperlinkColumn
          DefaultWidth = 95
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Jenis'
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 95
          OnClick = nxColJenisClick
        end
        object nxColNoSJ: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No. SJ'
          Position = 3
          SortType = stAlphabetic
          Visible = False
        end
        object nxColNoSPMB: TNxTextColumn
          DefaultWidth = 91
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No. SPMB'
          Position = 4
          SortType = stAlphabetic
          Visible = False
          Width = 91
        end
        object nxColNoSO: TNxTextColumn
          DefaultWidth = 94
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No. SO'
          Position = 5
          SortType = stAlphabetic
          Width = 94
        end
        object nxColCustomer: TNxTextColumn
          DefaultWidth = 182
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Customer'
          Position = 6
          SortType = stAlphabetic
          Width = 182
        end
        object nxColChkPilih: TNxCheckBoxColumn
          Alignment = taCenter
          DefaultWidth = 43
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Pilih'
          Header.Alignment = taCenter
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          Position = 7
          SortType = stBoolean
          Visible = False
          Width = 43
        end
        object nxColKodeBrg: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footer.Caption = 'Kode Brg.'
          Header.Caption = 'Kode Brg.'
          InplaceEdit = NxEdit1
          Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
          Position = 8
          SortType = stAlphabetic
        end
        object nxColNamaBrg: TNxTextColumn
          DefaultWidth = 253
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footer.Caption = 'Nama Barang'
          Header.Caption = 'Nama Barang'
          Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
          Position = 9
          SortType = stAlphabetic
          Width = 253
        end
        object nxColKodeBrg2: TNxTextColumn
          Color = clYellow
          DefaultWidth = 81
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Color = clWindow
          Header.Caption = 'Kode Brg. Awal'
          Position = 10
          SortType = stAlphabetic
          Width = 81
        end
        object nxColNamaBrg2: TNxTextColumn
          Color = clYellow
          DefaultWidth = 168
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Nama Barang Awal'
          Position = 11
          SortType = stAlphabetic
          Width = 168
        end
        object nxColQtyAwal: TNxNumberColumn
          Color = clYellow
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. Awal'
          Header.Alignment = taRightJustify
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
          Position = 12
          SortType = stNumeric
          FormatMask = '#,#0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColSatuan: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Satuan'
          Position = 13
          SortType = stAlphabetic
        end
        object nxColQty: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. CCR'
          Header.Alignment = taRightJustify
          Position = 14
          SortType = stNumeric
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColQtyRetur: TNxNumberColumn
          Color = clMoneyGreen
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. Retur'
          Header.Alignment = taRightJustify
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 15
          SortType = stNumeric
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColKet: TNxTextColumn
          DefaultWidth = 187
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Keterangan'
          InplaceEdit = NxEdit3
          Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
          Position = 16
          SortType = stAlphabetic
          Width = 187
        end
        object nxColKey: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 17
          SortType = stAlphabetic
          Visible = False
        end
      end
      object Panel1: TPanel
        Left = 1344
        Top = 163
        Width = 185
        Height = 11
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 416
    Width = 967
    Height = 44
    inherited btnKeluar: TButton
      Top = 8
    end
    inherited btnBaru: TButton
      Left = 553
      Top = 8
    end
    inherited btnEdit: TButton
      Left = 323
      Top = 8
    end
    inherited btnHapus: TButton
      Left = 398
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 248
      Top = 8
    end
    inherited btnSimpan: TButton
      Left = 474
      Top = 8
      Visible = False
    end
    object btnSimpan2: TButton
      Left = 14
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 6
      OnClick = btnSimpan2Click
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
    Params = <>
    Left = 550
    Top = 11
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 580
    Top = 11
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT DISTINCT * FROM ('
      
        'SELECT a.no_bukti, b.no_spmb, a.tanggal, a.user,a.user_dept FROM' +
        ' tbl_trskeluar_head a, '
      'tbl_trskeluar_det b '
      'WHERE a.no_bukti = b.no_bukti'
      'ORDER BY tanggal DESC'
      ') a')
    Params = <>
    Left = 340
    Top = 21
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object zqrNoSJ: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_sj_head ORDER BY no_bukti')
    Params = <>
    Left = 620
    Top = 31
  end
  object dsSJ: TDataSource
    DataSet = zqrNoSJ
    Left = 650
    Top = 31
  end
  object zqrCCR: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no, no_so, nama_cust FROM tbl_rk'
      
        'WHERE status = '#39'OPEN'#39' OR status = '#39'PROCESSED'#39' OR status = '#39'CLOSE' +
        'D'#39';')
    Params = <>
    Left = 725
    Top = 76
  end
  object dsCCR: TDataSource
    DataSet = zqrCCR
    Left = 755
    Top = 76
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 745
    Top = 125
  end
end
