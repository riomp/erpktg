inherited frmPenerimaanPlt: TfrmPenerimaanPlt
  Left = 194
  Top = 64
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penerimaan Peletan'
  ClientHeight = 607
  ClientWidth = 1009
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1009
    Height = 38
    inherited lblJudul: TLabel
      Left = 16
      Top = 8
      Width = 166
      Caption = 'Penerimaan Peletan'
    end
    object btnEdit2: TButton
      Left = 667
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 746
      Top = 8
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
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Top = 38
    Width = 1009
    Height = 527
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. SO'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 269
      Width = 970
      Height = 131
      FixedCols = 4
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 10
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnBeforeEdit = nxGrdBeforeEdit
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
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
        Position = 1
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
        Position = 2
        SortType = stAlphabetic
        Width = 74
      end
      object nxColNmBrg: TNxTextColumn
        DefaultWidth = 302
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 3
        SortType = stAlphabetic
        Width = 302
      end
      object nxColQtySO: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Diterima'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 4
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColHarga: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Harga'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColSat: TNxTextColumn
        DefaultWidth = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 6
        SortType = stAlphabetic
        Width = 50
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
        Position = 7
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
        InplaceEdit = NxEdit2
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 8
        SortType = stAlphabetic
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
        Position = 9
        SortType = stAlphabetic
        Visible = False
        Width = 195
      end
      object nxColLokasi: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Lokasi'
        Header.Caption = 'Lokasi'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 10
        SortType = stAlphabetic
      end
      object nxColKondisi: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kondisi'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 11
        SortType = stAlphabetic
      end
      object nxColFlag: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
      TabOrder = 11
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
      TabOrder = 12
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 33
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 1
      Width = 121
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 102
      Top = 241
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
      TabOrder = 8
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 244
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 705
      Top = 238
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 15
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
      MaxLength = 50
      TabOrder = 16
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Customer'
    end
    object cxLUCust: TcxLookupComboBox
      Left = 102
      Top = 58
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
      Properties.OnEditValueChanged = cxLUCustPropertiesEditValueChanged
      TabOrder = 2
      Width = 472
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 109
      Caption = 'Tgl. Perlu / Kirim'
    end
    object cxdTglKirim: TcxDateEdit
      Left = 102
      Top = 107
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 3
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 365
      Top = 6
      Caption = 'Pembayaran'
      Visible = False
    end
    object cxCmbPembayaran: TcxComboBox
      Left = 452
      Top = 5
      TabOrder = 5
      Visible = False
      Width = 219
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 159
      Caption = 'No. SJ'
    end
    object cxCmbKategoriSO: TcxComboBox
      Left = 677
      Top = 487
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 7
      Visible = False
      Width = 219
    end
    object cxLabel12: TcxLabel
      Left = 635
      Top = 423
      Caption = 'Kategori SO'
      Visible = False
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 134
      Caption = 'Keterangan'
    end
    object cxtNoSJ: TcxTextEdit
      Left = 102
      Top = 157
      Properties.CharCase = ecUpperCase
      TabOrder = 6
      Width = 156
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 132
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 4
      Width = 389
    end
    object cxChkLstEmail: TcxCheckListBox
      Left = 873
      Top = 25
      Width = 350
      Height = 171
      Items = <>
      TabOrder = 23
      Visible = False
    end
    object chkSdhKirimEmail: TcxCheckBox
      Left = 229
      Top = 9
      Caption = 'Sudah Kirim Email'
      Properties.ReadOnly = True
      TabOrder = 24
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 450
      Caption = 'Isi Email'
    end
    object cxmIsiEmail: TcxMemo
      Left = 89
      Top = 451
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 26
      Height = 57
      Width = 513
    end
    object cxmTemplate: TcxMemo
      Left = 805
      Top = 85
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
        'Order Peletan</FONT></TD>'
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
      TabOrder = 27
      Visible = False
      Height = 89
      Width = 185
    end
    object mm: TcxMemo
      Left = 725
      Top = 55
      TabOrder = 28
      Visible = False
      Height = 89
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 428
      Caption = 'Subject Email'
    end
    object cxtSubject: TcxTextEdit
      Left = 89
      Top = 425
      Properties.ReadOnly = True
      TabOrder = 30
      Width = 350
    end
    object chkComplete: TcxCheckBox
      Left = 229
      Top = 29
      Caption = 'SO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 31
      Width = 121
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 525
      Top = 326
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 32
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
      Top = 403
      Caption = 'Kirim Email'
      State = cbsChecked
      TabOrder = 33
      Width = 121
    end
    object cxCmbKategoriSO2: TcxComboBox
      Left = 676
      Top = 462
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 34
      Visible = False
      Width = 219
    end
    object cxCmbKategoriSO3: TcxComboBox
      Left = 675
      Top = 437
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 35
      Visible = False
      Width = 219
    end
    object cxLabel7: TcxLabel
      Left = 597
      Top = 244
      Caption = 'Qty.'
    end
    object cxsQty: TcxSpinEdit
      Left = 622
      Top = 241
      Properties.DisplayFormat = '#,##0.00'
      Properties.ValueType = vtFloat
      TabOrder = 37
      OnKeyPress = cxsQtyKeyPress
      Width = 78
    end
    object btnCariCust: TButton
      Left = 576
      Top = 58
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 38
      OnClick = btnCariCustClick
    end
    object pnlMemo: TPanel
      Left = 1000
      Top = 430
      Width = 446
      Height = 321
      Caption = 'pnlMemo'
      Color = clSkyBlue
      TabOrder = 39
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
    object btnCariBrg: TButton
      Left = 575
      Top = 241
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 40
      OnClick = btnCariBrgClick
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 185
      Caption = 'Susut'
    end
    object cxsSusut: TcxSpinEdit
      Left = 102
      Top = 183
      Properties.DisplayFormat = '#,##0.00'
      Properties.Increment = 0.500000000000000000
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      TabOrder = 42
      Width = 54
    end
    object cxLabel14: TcxLabel
      Left = 159
      Top = 184
      Caption = '%'
    end
    object cxLabel15: TcxLabel
      Left = 15
      Top = 210
      Caption = 'Nopol'
    end
    object cxtNopol: TcxTextEdit
      Left = 102
      Top = 208
      Properties.CharCase = ecUpperCase
      TabOrder = 45
      Width = 94
    end
    object cxtDriver: TcxTextEdit
      Left = 237
      Top = 208
      Properties.CharCase = ecUpperCase
      TabOrder = 46
      Width = 209
    end
    object cxLabel16: TcxLabel
      Left = 200
      Top = 210
      Caption = 'Driver'
    end
    object cxLabel17: TcxLabel
      Left = 16
      Top = 84
      Caption = 'Kelompok'
    end
    object cxtKelompok: TcxTextEdit
      Left = 102
      Top = 82
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 49
      Width = 156
    end
    object Panel1: TPanel
      Left = 915
      Top = 300
      Width = 1014
      Height = 527
      Color = clSkyBlue
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 50
      Visible = False
      object btnPosting2: TButton
        Left = 8
        Top = 184
        Width = 75
        Height = 25
        Caption = 'Posting'
        TabOrder = 0
        OnClick = btnPosting2Click
      end
      object btnBatalPosting: TButton
        Left = 86
        Top = 184
        Width = 75
        Height = 25
        Caption = 'Batal Posting'
        TabOrder = 1
        OnClick = btnBatalPostingClick
      end
      object cxLabel18: TcxLabel
        Left = 10
        Top = 10
        Caption = 'Mohon pastikan sekali lagi data yang di input sudah benar : '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.TextColor = clGreen
        Style.IsFontAssigned = True
      end
    end
    object cxLabel19: TcxLabel
      Left = 702
      Top = 407
      Caption = 'Total Penerimaan'
    end
  end
  inherited pnlBawah: TPanel
    Top = 565
    Width = 1009
    Height = 42
    inherited btnBatal: TButton [0]
      Left = 92
      Top = 8
      Caption = 'SO Baru'
      Visible = True
    end
    inherited btnKeluar: TButton [1]
      Left = 412
      Top = 8
    end
    inherited btnBaru: TButton [2]
      Left = 785
      Top = 8
    end
    inherited btnEdit: TButton [3]
      Left = 555
      Top = 8
    end
    inherited btnHapus: TButton [4]
      Left = 630
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Top = 8
    end
    object btnCetakSPBB: TButton
      Left = 169
      Top = 8
      Width = 164
      Height = 25
      Caption = 'Cetak Surat Penerimaan Barang'
      TabOrder = 6
      OnClick = btnCetakSPBBClick
    end
    object btnPosting: TButton
      Left = 335
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Posting'
      TabOrder = 7
      OnClick = btnPostingClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 '
      'ORDER BY deskripsi ')
    Params = <>
    Left = 500
    Top = 91
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 530
    Top = 91
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
      
        'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept, a.kod' +
        'e_customer'
      'from tbl_so_head a, tbl_customer b'
      'where a.kode_customer = b.kode AND '
      'left(a.no_bukti,3) =  '#39'SPL'#39' AND f_posted = 0')
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
end
