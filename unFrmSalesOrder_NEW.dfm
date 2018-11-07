inherited frmSalesOrder_NEW: TfrmSalesOrder_NEW
  Left = 496
  Top = 210
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sales Order'
  ClientHeight = 535
  ClientWidth = 916
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 916
    Height = 50
    inherited lblJudul: TLabel
      Top = 16
      Width = 94
      Caption = 'Sales Order'
    end
    object btnEdit2: TButton
      Left = 574
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      Visible = False
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 653
      Top = 16
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          Width = 120
          FieldName = 'tanggal'
        end
        item
          Caption = 'Nama Customer'
          Width = 200
          FieldName = 'nama'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Visible = False
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Top = 50
    Width = 916
    Height = 436
    object Label5: TLabel
      Left = 744
      Top = 408
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object btnCariBrg: TButton
      Left = 575
      Top = 216
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 40
      OnClick = btnCariBrgClick
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 36
      Caption = 'No. SO'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 34
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 247
      Width = 880
      Height = 153
      FixedCols = 4
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 9
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellClick = nxGrdCellClick
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 1
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 0
        SortType = stNumeric
        Width = 41
        Images = frmUtama.ImageList1
      end
      object NxMTS: TNxCheckBoxColumn
        DefaultValue = '0'
        DefaultWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'MTS'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 1
        SortType = stNumeric
        Width = 30
      end
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
        Position = 2
        SortType = stAlphabetic
        Width = 24
      end
      object nxColKodeBrg: TNxTextColumn
        DefaultWidth = 74
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Kode Brg.'
        Header.Caption = 'Kode Brg.'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 3
        SortType = stAlphabetic
        Width = 74
      end
      object nxColNamaBrg: TNxTextColumn
        DefaultWidth = 335
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 4
        SortType = stAlphabetic
        Width = 335
      end
      object nxColQtySO: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Dipesan'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColHarga: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 88
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Harga'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 6
        SortType = stNumeric
        Width = 88
        FormatMask = '#,#0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColSatuan: TNxComboBoxColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 7
        SortType = stAlphabetic
        Items.Strings = (
          'KG'
          'ROLL'
          'M2'
          'GR'
          'SAK')
      end
      object nxColSubtotal: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 107
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Subtotal'
        Header.Alignment = taRightJustify
        Position = 8
        SortType = stNumeric
        Width = 107
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
        Header.Caption = 'Stok G01 '
        Header.Alignment = taRightJustify
        InplaceEdit = NxButtonEdit1
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 9
        SortType = stNumeric
        Visible = False
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 195
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = '  Keterangan'
        Position = 10
        SortType = stAlphabetic
        Visible = False
        Width = 195
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 195
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = '  Keterangan Harga'
        InplaceEdit = NxEdit2
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 11
        SortType = stNumeric
        Visible = False
        Width = 195
      end
      object nxColED: TNxHyperlinkColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Lihat ED'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        ParentFont = False
        Position = 12
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 39
      Top = 289
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 10
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 797
      Top = 405
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 11
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 61
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 59
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 1
      Width = 121
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 102
      Top = 216
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Deskripsi'
          FieldName = 'deskripsi'
        end
        item
          FieldName = 'G01'
        end
        item
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
      Properties.OnChange = cxLUBrgPropertiesChange
      TabOrder = 8
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 219
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 785
      Top = 213
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 12
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 39
      Top = 314
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 13
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 86
      Caption = 'Customer'
    end
    object cxLUCust: TcxLookupComboBox
      Left = 102
      Top = 84
      Properties.DropDownSizeable = True
      Properties.DropDownWidth = 3000
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Customer'
          Width = 500
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end
        item
          Caption = 'Alamat'
          Width = 300
          FieldName = 'alamat'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      Properties.OnChange = cxLUCustPropertiesChange
      TabOrder = 2
      Width = 472
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 111
      Caption = 'Tgl. Perlu / Kirim'
    end
    object cxdTglKirim: TcxDateEdit
      Left = 102
      Top = 109
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 3
      Width = 121
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 163
      Caption = 'PO#'
    end
    object cxCmbKategoriSO: TcxComboBox
      Left = 102
      Top = 187
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 7
      Visible = False
      Width = 219
    end
    object cxLabel12: TcxLabel
      Left = 15
      Top = 188
      Caption = 'Kategori SO'
      Visible = False
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 137
      Caption = 'Keterangan'
    end
    object cxtPO: TcxTextEdit
      Left = 102
      Top = 161
      Properties.CharCase = ecUpperCase
      TabOrder = 5
      Width = 156
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 135
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 4
      Width = 389
    end
    object cxChkLstEmail: TcxCheckListBox
      Left = 658
      Top = 5
      Width = 350
      Height = 171
      Items = <>
      TabOrder = 14
      Visible = False
    end
    object chkSdhKirimEmail: TcxCheckBox
      Left = 229
      Top = 35
      Caption = 'Sudah Kirim Email'
      Properties.ReadOnly = True
      TabOrder = 15
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 466
      Caption = 'Isi Email'
      Visible = False
    end
    object cxmIsiEmail: TcxMemo
      Left = 89
      Top = 467
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Visible = False
      Height = 57
      Width = 513
    end
    object cxmTemplate: TcxMemo
      Left = 660
      Top = 35
      Lines.Strings = (
        '<HTML>'
        '<HEAD>'
        '<META '
        'HTTP-EQUIV="Content-Type" '
        'CONTENT="text/html;charset=windo'
        'ws-1252">'
        '<TITLE>Sales Order</TITLE>'
        '</HEAD>'
        '<BODY>'
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=17 >'
        '<TD WIDTH=257  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=229  '
        'ALIGN=CENTER ><B><FONT '
        'style=FONT-SIZE:10pt FACE="Arial" '
        'COLOR=#000000>SALES AND '
        'MARKETING '
        'OFFICE</FONT></B></TD>'
        '</TR>'
        '</TABLE>'
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=17 >'
        '<TD WIDTH=258  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=226  '
        'ALIGN=CENTER ><FONT '
        'style=FONT-SIZE:10pt FACE="Arial" '
        'COLOR=#000000>04-FRM-SMG-001 '
        '(REV. 00)</FONT></TD>'
        '</TR>'
        '</TABLE>'
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=14 >'
        '<TD WIDTH=280  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=184  '
        'ALIGN=CENTER ><FONT '
        'style=FONT-SIZE:8pt FACE="Arial" '
        'COLOR=#000000></FONT></TD>'
        '</TR>'
        '</TABLE>'
        ''
        '<TABLE BORDER=0 '
        'CELLSPACING=0 CELLPADDING=0 '
        '>'
        '<TR HEIGHT=41 >'
        '<TD WIDTH=3  ALIGN=LEFT > '
        '<BR></TD><TD WIDTH=271  '
        'ALIGN=LEFT ></TD>'
        '<TD WIDTH=193  ALIGN=CENTER '
        '><FONT style=FONT-SIZE:28pt '
        'FACE="Haettenschweiler" '
        'COLOR=#000000>Sales '
        'Order</FONT></TD>'
        '</TR>'
        '</TABLE>'
        ''
        '<pre>'
        '<TABLE BORDER=0 '
        'CELLSPACING=1 '
        'CELLPADDING=1>'
        '<TR>'
        '  <TD>SO#</TD>'
        '  <TD WIDTH=250> : '
        '%no_so%</TD>'
        '  <TD>Nama Customer</TD>'
        '  <TD>: %perusahaan%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Tgl. Order</TD>'
        '  <TD WIDTH=250> : '
        '%tgl_order%</TD>'
        '  <TD>Alamat Kirim</TD>'
        '  <TD>: %alamat%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Tgl. Kirim</TD>'
        '  <TD WIDTH=250> : '
        '%tglkirim%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;%kota%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>PO# / SC#</TD>'
        '  <TD WIDTH=250> : %po% / '
        '%sc%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;%negara%</TD>'
        '</TR>'
        '<TR>'
        '  <TD></TD>'
        '  <TD WIDTH=250>&nbsp;</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;%telpon%</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Ket. Umum</TD>'
        '  <TD WIDTH=250> : '
        '%memo%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;</TD>'
        '</TR>'
        '<TR>'
        '  <TD>Dibuat Oleh</TD>'
        '  <TD WIDTH=250> : %user%</TD>'
        '  <TD>&nbsp;</TD>'
        '  <TD>&nbsp;</TD>'
        '</TR>'
        '</TABLE>'
        '%content%'
        '</pre>'
        '</BODY>'
        '</HTML>')
      TabOrder = 17
      Visible = False
      Height = 89
      Width = 185
    end
    object mm: TcxMemo
      Left = 637
      Top = 132
      TabOrder = 18
      Visible = False
      Height = 89
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 444
      Caption = 'Subject Email'
      Visible = False
    end
    object cxtSubject: TcxTextEdit
      Left = 89
      Top = 441
      Properties.ReadOnly = True
      TabOrder = 19
      Visible = False
      Width = 350
    end
    object chkComplete: TcxCheckBox
      Left = 229
      Top = 55
      Caption = 'SO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 20
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 265
      Top = 164
      Caption = 'SC#'
      Visible = False
    end
    object cxtSC: TcxTextEdit
      Left = 352
      Top = 162
      Properties.CharCase = ecUpperCase
      Style.Color = clWindow
      TabOrder = 6
      Visible = False
      Width = 156
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 525
      Top = 326
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 21
      Text = 'NxButtonEdit1'
      ReadOnly = True
      Visible = False
      OnButtonClick = NxButtonEdit1ButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxChkKirimEmail: TcxCheckBox
      Left = 86
      Top = 419
      Caption = 'Kirim Email'
      State = cbsChecked
      TabOrder = 22
      Visible = False
      Width = 121
    end
    object cxCmbKategoriSO2: TcxComboBox
      Left = 326
      Top = 187
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 23
      Visible = False
      Width = 219
    end
    object cxCmbKategoriSO3: TcxComboBox
      Left = 550
      Top = 187
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 24
      Visible = False
      Width = 219
    end
    object cxLabel7: TcxLabel
      Left = 597
      Top = 219
      Caption = 'Qty.'
    end
    object cxsQty: TcxSpinEdit
      Left = 622
      Top = 216
      Properties.ValueType = vtFloat
      TabOrder = 25
      OnKeyPress = cxsQtyKeyPress
      Width = 78
    end
    object btnCariCust: TButton
      Left = 576
      Top = 83
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 26
      OnClick = btnCariCustClick
    end
    object pnlMemo: TPanel
      Left = 900
      Top = 61
      Width = 446
      Height = 321
      Caption = 'pnlMemo'
      Color = clSkyBlue
      TabOrder = 27
      Visible = False
      OnExit = pnlMemoExit
      object btnSimpanKet: TButton
        Left = 10
        Top = 285
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 0
        OnClick = btnSimpanKetClick
      end
      object btnBatalMemo: TButton
        Left = 90
        Top = 285
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 1
        OnClick = btnBatalMemoClick
      end
      object cxMemo: TcxMemo
        Left = 10
        Top = 10
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        OnExit = cxMemoExit
        Height = 266
        Width = 426
      end
    end
    object cxLabel18: TcxLabel
      Left = 16
      Top = 401
      Caption = 
        'Keterangan : Kode barang berwarna BIRU = sudah Mutasi atau dibua' +
        'tkan SPK'
      Style.TextColor = clBlue
    end
    object pnlDetailKetSO: TPanel
      Left = 510
      Top = 516
      Width = 616
      Height = 293
      Color = clSkyBlue
      Ctl3D = False
      FullRepaint = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 41
      OnExit = pnlDetailKetSOExit
      object cxLabel14: TcxLabel
        Left = 11
        Top = 11
        Caption = 'Kode Brg.'
        Transparent = True
      end
      object cxtKodeBrgD: TcxTextEdit
        Left = 74
        Top = 9
        TabOrder = 1
        Width = 121
      end
      object cxtDeskD: TcxTextEdit
        Left = 74
        Top = 34
        TabOrder = 2
        Width = 403
      end
      object cxLabel15: TcxLabel
        Left = 11
        Top = 36
        Caption = 'Deskripsi'
        Transparent = True
      end
      object cxLabel16: TcxLabel
        Left = 11
        Top = 61
        Caption = 'Qty.'
        Transparent = True
      end
      object cxsQtyD: TcxSpinEdit
        Left = 74
        Top = 59
        TabOrder = 5
        Width = 63
      end
      object cxLabel17: TcxLabel
        Left = 11
        Top = 87
        Caption = 'Keterangan'
        Transparent = True
      end
      object cxtKetD: TcxTextEdit
        Left = 74
        Top = 85
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Width = 403
      end
      object nxGrdKet: TNextGrid
        Left = 15
        Top = 116
        Width = 481
        Height = 138
        Options = [goGrid, goHeader]
        TabOrder = 8
        TabStop = True
        OnCellDblClick = nxGrdKetCellDblClick
        object nxColNoUrut: TNxIncrementColumn
          DefaultWidth = 36
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No.'
          Position = 0
          SortType = stAlphabetic
          Width = 36
        end
        object nxColHapus: TNxImageColumn
          DefaultValue = '0'
          DefaultWidth = 43
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Hapus'
          Position = 1
          SortType = stNumeric
          Width = 43
          Images = frmUtama.ImageList1
        end
        object nxColKetD: TNxTextColumn
          DefaultWidth = 368
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Keterangan'
          Position = 2
          SortType = stAlphabetic
          Width = 368
        end
      end
      object btnClosePnlKet: TButton
        Left = 584
        Top = 4
        Width = 28
        Height = 22
        Caption = 'X'
        TabOrder = 9
        OnClick = btnClosePnlKetClick
      end
      object btnTambahDet: TButton
        Left = 481
        Top = 84
        Width = 60
        Height = 25
        Caption = 'Tambah'
        TabOrder = 10
        OnClick = btnTambahDetClick
      end
      object btnSimpanKetD: TButton
        Left = 15
        Top = 259
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 11
        OnClick = btnSimpanKetDClick
      end
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 11
      Caption = 'Konfirmasi PO'
    end
    object cxlKonfirmPO: TcxLookupComboBox
      Left = 102
      Top = 9
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_kpo'
      Properties.ListColumns = <
        item
          Caption = 'No. KPO'
          FieldName = 'no_kpo'
        end
        item
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end>
      Properties.ListSource = dsKPO
      Properties.OnChange = cxlKonfirmPOPropertiesChange
      TabOrder = 44
      OnKeyPress = cxlKonfirmPOKeyPress
      Width = 267
    end
    object cxlSatuanDet: TcxLookupComboBox
      Left = 707
      Top = 216
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'unitid'
      Properties.ListColumns = <
        item
          FieldName = 'unitid'
        end>
      Properties.ListSource = ds4
      TabOrder = 45
      Width = 73
    end
    object cxCheck: TcxCheckBox
      Left = 375
      Top = 10
      Caption = 'Sudah dibuat MTS'
      TabOrder = 46
      Visible = False
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 486
    Width = 916
    Height = 42
    inherited btnBatal: TButton [0]
      Left = 652
      Top = 8
      Caption = 'SO Baru'
    end
    inherited btnKeluar: TButton [1]
      Left = 93
      Top = 8
    end
    inherited btnBaru: TButton [2]
      Top = 8
    end
    inherited btnEdit: TButton [3]
      Left = 325
      Top = 8
    end
    inherited btnHapus: TButton [4]
      Left = 400
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Top = 7
      Caption = 'Simpan'
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_brg_per_gdg_2 WHERE left(kode,1)='#39'A'#39' ORDER BY de' +
        'skripsi')
    Params = <>
    Left = 555
    Top = 66
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 585
    Top = 66
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object zqrNoBukti: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_so_head a, tbl_customer b'
      'where a.kode_customer = b.kode AND '
      'left(a.no_bukti,3) <>  '#39'MTS'#39' AND '
      'left(a.no_bukti,3) <>  '#39'SPL'#39)
    Params = <>
    Left = 340
    Top = 21
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 310
    Top = 21
  end
  object zqrCust: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 280
    Top = 21
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 530
    Top = 190
  end
  object zqrKPO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_kpo, tgl_kpo, kode_customer, b.nama'
      'FROM tbl_kpo_head a '
      'LEFT JOIN tbl_customer b '
      'ON a.kode_customer = b.kode WHERE a.f_aktif=1')
    Params = <>
    Left = 400
    Top = 21
  end
  object dsKPO: TDataSource
    DataSet = zqrKPO
    Left = 430
    Top = 21
  end
  object zSatuan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT *  FROM tbl_unitset_det where unitsetid=:unitsetid')
    Params = <
      item
        DataType = ftUnknown
        Name = 'unitsetid'
        ParamType = ptUnknown
      end>
    Left = 398
    Top = 83
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unitsetid'
        ParamType = ptUnknown
      end>
  end
  object ds4: TDataSource
    DataSet = zSatuan
    Left = 428
    Top = 83
  end
end
