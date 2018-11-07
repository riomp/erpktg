inherited frmSO_MTSGiling: TfrmSO_MTSGiling
  Left = 185
  Top = 101
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sales Order Made To Stok'
  ClientHeight = 480
  ClientWidth = 1055
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1055
    Height = 50
    inherited lblJudul: TLabel
      Top = 16
      Width = 275
      Caption = 'Sales Order Made To Stok - Giling'
    end
    object btnEdit2: TButton
      Left = 716
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 795
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
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Top = 50
    Width = 1055
    Height = 390
    object Label5: TLabel
      Left = 885
      Top = 354
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. SO'
      Transparent = True
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
      Left = 17
      Top = 166
      Width = 1020
      Height = 180
      FixedCols = 4
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 8
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 1
      object nxColHapus: TNxImageColumn
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
        Options = [coCanClick, coCanInput, coPublicUsing]
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
        Position = 3
        SortType = stAlphabetic
        Width = 335
      end
      object nxColStokG01: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Stok G01 '
        Header.Alignment = taRightJustify
        InplaceEdit = NxButtonEdit1
        Position = 4
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKodeBrg2: TNxButtonColumn
        DefaultWidth = 89
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg. Hasil'
        Options = [coCanClick, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 5
        SlideCaption = '...'
        SortType = stAlphabetic
        Width = 89
        ButtonCaption = '...'
        OnButtonClick = nxColKodeBrg2ButtonClick
      end
      object nxColNamaBrg2: TNxTextColumn
        DefaultWidth = 241
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Barang Hasil'
        Position = 6
        SortType = stAlphabetic
        Width = 241
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
        Position = 7
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
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
        Position = 8
        SortType = stAlphabetic
      end
      object nxColKG: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Berat (KG)'
        Position = 9
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKeterangan: TNxTextColumn
        DefaultWidth = 195
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = '  Keterangan'
        Position = 10
        SortType = stAlphabetic
        Width = 195
      end
    end
    object NxEdit1: TNxEdit
      Left = 39
      Top = 237
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 9
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 938
      Top = 351
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 10
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Transaksi'
      Transparent = True
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 33
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 1
      Width = 122
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 102
      Top = 139
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
      TabOrder = 6
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 142
      Caption = 'Nama Barang'
      Transparent = True
    end
    object btnTambah: TButton
      Left = 705
      Top = 136
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 13
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 39
      Top = 262
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 14
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Customer'
      Transparent = True
    end
    object cxLUCust: TcxLookupComboBox
      Left = 102
      Top = 83
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
      Properties.ReadOnly = True
      Properties.OnChange = cxLUCustPropertiesChange
      TabOrder = 2
      Width = 472
    end
    object cxLabel10: TcxLabel
      Left = 375
      Top = 15
      Caption = 'Tgl. Perlu'
      Visible = False
    end
    object cxdTglKirim: TcxDateEdit
      Left = 437
      Top = 13
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object cxCmbKategoriSO: TcxComboBox
      Left = 392
      Top = 360
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 5
      Visible = False
      Width = 219
    end
    object cxLabel12: TcxLabel
      Left = 305
      Top = 361
      Caption = 'Kategori SO'
      Visible = False
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 110
      Caption = 'Keterangan'
      Transparent = True
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 108
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 4
      Width = 389
    end
    object cxChkLstEmail: TcxCheckListBox
      Left = 863
      Top = -115
      Width = 350
      Height = 171
      Items = <>
      TabOrder = 19
      Visible = False
    end
    object chkSdhKirimEmail: TcxCheckBox
      Left = 229
      Top = 9
      Caption = 'Sudah Kirim Email'
      Properties.ReadOnly = True
      TabOrder = 20
      Visible = False
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 500
      Top = 417
      Caption = 'Isi Email'
      Visible = False
    end
    object cxmIsiEmail: TcxMemo
      Left = 574
      Top = 418
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 22
      Visible = False
      Height = 57
      Width = 513
    end
    object cxmTemplate: TcxMemo
      Left = 660
      Top = 65
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
      TabOrder = 23
      Visible = False
      Height = 89
      Width = 185
    end
    object mm: TcxMemo
      Left = 625
      Top = 28
      TabOrder = 24
      Visible = False
      Height = 89
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 500
      Top = 395
      Caption = 'Subject Email'
      Visible = False
    end
    object cxtSubject: TcxTextEdit
      Left = 574
      Top = 392
      Properties.ReadOnly = True
      TabOrder = 26
      Visible = False
      Width = 350
    end
    object chkComplete: TcxCheckBox
      Left = 229
      Top = 29
      Caption = 'SO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 27
      Visible = False
      Width = 121
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 525
      Top = 274
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 28
      Text = 'NxButtonEdit1'
      ReadOnly = True
      Visible = False
      OnButtonClick = NxButtonEdit1ButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxChkKirimEmail: TcxCheckBox
      Left = 571
      Top = 370
      Caption = 'Kirim Email'
      State = cbsChecked
      TabOrder = 29
      Visible = False
      Width = 121
    end
    object cxCmbKategoriSO2: TcxComboBox
      Left = 526
      Top = 350
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 30
      Visible = False
      Width = 219
    end
    object cxCmbKategoriSO3: TcxComboBox
      Left = 555
      Top = 355
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbKategoriSOPropertiesChange
      TabOrder = 31
      Visible = False
      Width = 219
    end
    object cxLabel7: TcxLabel
      Left = 597
      Top = 142
      Caption = 'Qty.'
      Transparent = True
    end
    object cxsQty: TcxSpinEdit
      Left = 622
      Top = 139
      Properties.ValueType = vtFloat
      TabOrder = 33
      OnKeyPress = cxsQtyKeyPress
      Width = 78
    end
    object btnCariCust: TButton
      Left = 576
      Top = 83
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 34
      Visible = False
      OnClick = btnCariCustClick
    end
    object pnlMemo: TPanel
      Left = 595
      Top = 205
      Width = 435
      Height = 124
      Caption = 'pnlMemo'
      Color = clSkyBlue
      TabOrder = 35
      Visible = False
      OnExit = pnlMemoExit
      object btnSimpanKet: TButton
        Left = 5
        Top = 94
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 0
        OnClick = btnSimpanKetClick
      end
      object btnBatalMemo: TButton
        Left = 85
        Top = 94
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 1
        OnClick = btnBatalMemoClick
      end
      object cxMemo: TcxMemo
        Left = 5
        Top = 4
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        OnExit = cxMemoExit
        Height = 86
        Width = 426
      end
    end
    object btnCariBrg: TButton
      Left = 575
      Top = 139
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 36
      OnClick = btnCariBrgClick
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 351
      Caption = 
        'Double Klik pada kolom keterangan untuk mengisi keterangan per I' +
        'tem'
      Style.TextColor = clBlue
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 60
      Caption = 'No. LKM'
      Transparent = True
    end
    object cxlNoLKM: TcxLookupComboBox
      Left = 102
      Top = 58
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. LKM'
          Width = 500
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'Qty. Giling'
          FieldName = 'qty_giling'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoLKM
      Properties.ReadOnly = False
      Properties.OnChange = cxlNoLKMPropertiesChange
      TabOrder = 39
      Width = 122
    end
  end
  inherited pnlBawah: TPanel
    Top = 440
    Width = 1055
    Height = 42
    inherited btnBatal: TButton [0]
      Left = 92
      Top = 8
      Caption = 'SO Baru'
      Visible = True
    end
    inherited btnKeluar: TButton [1]
      Left = 168
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
      Top = 8
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
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
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_so_head a, tbl_customer b'
      
        'where a.kode_customer = b.kode and left(a.no_bukti,3) = '#39'MTS'#39' an' +
        'd a.kategori1 = '#39'GILING'#39
      'and a.f_completed = 0')
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
    Left = 285
    Top = 21
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 570
    Top = 70
  end
  object zqrNoLKM: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, qty_giling'
      'FROM tbl_lkm'
      'WHERE jenis_ket = '#39'REJECT / GILING'#39' AND f_spk = 0;')
    Params = <>
    Left = 400
    Top = 21
  end
  object dsNoLKM: TDataSource
    DataSet = zqrNoLKM
    Left = 430
    Top = 21
  end
end
