inherited frmPurchaseOrder: TfrmPurchaseOrder
  Left = 194
  Top = 57
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Purchase Order'
  ClientHeight = 624
  ClientWidth = 1055
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1055
    Height = 48
    inherited lblJudul: TLabel
      Left = 17
      Top = 13
      Width = 125
      Caption = 'Purchase Order'
    end
    object btnEdit2: TButton
      Left = 694
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 783
      Top = 7
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
    object cxChkTampilSPMBPOP: TcxCheckBox
      Left = 780
      Top = 27
      Caption = 'Tampilkan Hanya PO Peletean'
      TabOrder = 2
      OnClick = cxChkTampilSPMBPOPClick
      Width = 224
    end
  end
  inherited pnlTengah: TPanel
    Top = 48
    Width = 1055
    Height = 534
    object cxGroupBox1: TcxGroupBox
      Left = 608
      Top = 72
      Caption = 'User Requesting'
      TabOrder = 54
      Height = 89
      Width = 233
      object cxLabel19: TcxLabel
        Left = 8
        Top = 48
        Caption = 'Divisi'
      end
      object cxlDivisi: TcxLookupComboBox
        Left = 72
        Top = 48
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'bagian'
          end>
        Properties.ListSource = dsDivisi
        TabOrder = 1
        Width = 137
      end
      object cxLabel18: TcxLabel
        Left = 8
        Top = 24
        Caption = 'Nama User'
      end
      object cxtUser: TcxTextEdit
        Tag = 1
        Left = 72
        Top = 20
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = False
        TabOrder = 3
        Width = 137
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 32
      Caption = 'No. PO'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 30
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object NxEdit1: TNxEdit
      Left = 39
      Top = 300
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 31
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 58
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 56
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 8
      Width = 121
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 102
      Top = 230
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
      TabOrder = 21
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 233
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 705
      Top = 227
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 20
      OnClick = btnTambahClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 83
      Caption = 'Supplier'
    end
    object cxLUSupp: TcxLookupComboBox
      Left = 102
      Top = 81
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
      Properties.ListSource = dsSupp
      Properties.OnEditValueChanged = cxLUSuppPropertiesEditValueChanged
      TabOrder = 12
      Width = 472
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 181
      Caption = 'Tgl. Perlu / Kirim'
    end
    object cxdTglKirim: TcxDateEdit
      Left = 102
      Top = 179
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 16
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 104
      Caption = 'PIC Supplier'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 102
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 19
      Width = 389
    end
    object cxChkLstEmail: TcxCheckListBox
      Left = 1383
      Top = 390
      Width = 350
      Height = 171
      Items = <>
      TabOrder = 6
      Visible = False
    end
    object chkSdhKirimEmail: TcxCheckBox
      Left = 1064
      Top = 348
      Caption = 'Sudah Kirim Email'
      Properties.ReadOnly = True
      TabOrder = 9
      Visible = False
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 55
      Top = 500
      Caption = 'Isi Email'
      Visible = False
    end
    object cxmIsiEmail: TcxMemo
      Left = 129
      Top = 501
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 41
      Visible = False
      Height = 57
      Width = 513
    end
    object cxmTemplate: TcxMemo
      Left = 915
      Top = 32
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
      TabOrder = 4
      Visible = False
      Height = 89
      Width = 185
    end
    object mm: TcxMemo
      Left = 1315
      Top = 423
      TabOrder = 11
      Visible = False
      Height = 89
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 55
      Top = 477
      Caption = 'Subject Email'
      Visible = False
    end
    object cxtSubject: TcxTextEdit
      Left = 129
      Top = 474
      Properties.ReadOnly = True
      TabOrder = 33
      Visible = False
      Width = 350
    end
    object chkComplete: TcxCheckBox
      Left = 603
      Top = 41
      TabStop = False
      Caption = 'PO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 121
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 525
      Top = 337
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
    object cxLabel7: TcxLabel
      Left = 598
      Top = 233
      Caption = 'Qty.'
    end
    object cxsQty: TcxSpinEdit
      Left = 623
      Top = 230
      Properties.ValueType = vtFloat
      TabOrder = 23
      OnKeyPress = cxsQtyKeyPress
      Width = 78
    end
    object btnCariSupp: TButton
      Left = 576
      Top = 81
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 13
      OnClick = btnCariSuppClick
    end
    object pnlMemo: TPanel
      Left = 1090
      Top = 20
      Width = 446
      Height = 321
      Caption = 'pnlMemo'
      Color = clSkyBlue
      TabOrder = 5
      Visible = False
      OnExit = pnlMemoExit
      object btnSimpanKet: TButton
        Left = 10
        Top = 285
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 1
        OnClick = btnSimpanKetClick
      end
      object btnBatalMemo: TButton
        Left = 90
        Top = 285
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 2
        OnClick = btnBatalMemoClick
      end
      object cxMemo: TcxMemo
        Left = 30
        Top = 10
        Properties.CharCase = ecUpperCase
        TabOrder = 0
        OnExit = cxMemoExit
        Height = 266
        Width = 426
      end
    end
    object GroupBox1: TGroupBox
      Left = 432
      Top = 25
      Width = 161
      Height = 50
      Caption = ' Jenis PO '
      TabOrder = 0
      object cxrNonPajak: TcxRadioButton
        Left = 9
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Non Pajak'
        TabOrder = 0
        OnClick = cxrStandardClick
      end
      object cxrStandard: TcxRadioButton
        Left = 89
        Top = 19
        Width = 64
        Height = 17
        Caption = 'Standar'
        TabOrder = 1
        OnClick = cxrStandardClick
      end
      object cxrImport: TcxRadioButton
        Left = 161
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Import'
        TabOrder = 2
        Visible = False
        OnClick = cxrStandardClick
      end
      object cxrPeletan: TcxRadioButton
        Left = 226
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Peletan'
        TabOrder = 3
        Visible = False
      end
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 205
      Caption = 'Pembayaran'
    end
    object cxCmbPembayaran: TcxComboBox
      Left = 102
      Top = 204
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 17
      Width = 219
    end
    object cxLabel4: TcxLabel
      Left = 615
      Top = 177
      Caption = 'No. FOBJ'
      Visible = False
    end
    object btnCariBrg: TButton
      Left = 575
      Top = 230
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 22
      OnClick = btnCariBrgClick
    end
    object cxLabel11: TcxLabel
      Left = 1070
      Top = 517
      Caption = 'Mata Uang'
      Visible = False
    end
    object cxCmbMataUang: TcxComboBox
      Left = 1157
      Top = 516
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 18
      Visible = False
      Width = 69
    end
    object cxlNoFOBJ: TcxLookupComboBox
      Left = 702
      Top = 175
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kunci'
      Properties.ListColumns = <
        item
          Caption = 'No. FOBJ'
          FieldName = 'no_fobj'
        end
        item
          Caption = 'Supplier'
          FieldName = 'nama'
        end
        item
          Caption = 'Diajukan Oleh'
          FieldName = 'diajukan_oleh'
        end
        item
          Caption = 'Diajukan Dept'
          FieldName = 'diajukan_dept'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoFOBJ
      Properties.OnEditValueChanged = cxlNoFOBJPropertiesEditValueChanged
      TabOrder = 7
      Visible = False
      OnExit = cxlNoFOBJExit
      Width = 174
    end
    object pg: TPageControl
      Left = 14
      Top = 255
      Width = 1032
      Height = 272
      ActivePage = TabSheet1
      TabOrder = 24
      object TabSheet1: TTabSheet
        Caption = 'PO Standard'
        object Label5: TLabel
          Left = 771
          Top = 174
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object Label1: TLabel
          Left = 771
          Top = 196
          Width = 22
          Height = 13
          Caption = 'PPN'
        end
        object Label3: TLabel
          Left = 871
          Top = 196
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label2: TLabel
          Left = 771
          Top = 223
          Width = 56
          Height = 13
          Caption = 'Grand Total'
        end
        object nxGrd: TNextGrid
          Left = 8
          Top = 11
          Width = 1008
          Height = 153
          FixedCols = 4
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
          object nxColNamaBrg: TNxTextColumn
            DefaultWidth = 300
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
            Width = 300
          end
          object nxColQty: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 68
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Dipesan'
            Header.Alignment = taRightJustify
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 4
            SortType = stNumeric
            Width = 68
            EditOptions = [eoAllowAll, eoAllowFloat]
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColSatuan: TNxTextColumn
            DefaultWidth = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 5
            SortType = stAlphabetic
            Width = 62
          end
          object nxColHarga: TNxNumberColumn
            DefaultValue = '0'
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
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColMataUang: TNxComboBoxColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Mata Uang'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 7
            SortType = stAlphabetic
            Style = cbsDropDownList
          end
          object nxColSubtotal: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 88
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Subtotal'
            Header.Alignment = taRightJustify
            Position = 8
            SortType = stNumeric
            Width = 88
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
            InplaceEdit = NxEdit4
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 9
            SortType = stAlphabetic
            Width = 195
          end
          object nxColNoPen: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Position = 10
            SortType = stAlphabetic
            Visible = False
          end
        end
        object NxEdit2: TNxEdit
          Left = 32
          Top = 169
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT2'
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object cxsTotal: TcxSpinEdit
          Left = 882
          Top = 167
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 99
        end
        object cxsPPN: TcxSpinEdit
          Left = 821
          Top = 192
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.MaxValue = 20.000000000000000000
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = cxsPPNPropertiesEditValueChanged
          TabOrder = 5
          Width = 47
        end
        object cxsTotPPN: TcxSpinEdit
          Left = 882
          Top = 192
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 6
          Width = 99
        end
        object cxsGrandTotal: TcxSpinEdit
          Left = 882
          Top = 218
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 7
          Width = 99
        end
        object cxChk2Angka: TcxCheckBox
          Left = 5
          Top = 169
          Caption = '2 Angka Di Belakang Koma'
          TabOrder = 2
          Visible = False
          OnClick = cxChk2AngkaClick
          Width = 165
        end
        object cxChk3Angka: TcxCheckBox
          Left = 167
          Top = 169
          Caption = '3 Angka Di Belakang Koma'
          TabOrder = 4
          Visible = False
          OnClick = cxChk2AngkaClick
          Width = 173
        end
        object NxEdit4: TNxEdit
          Left = 500
          Top = 75
          Width = 121
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'NXEDIT4'
          Visible = False
        end
        object cxChk4Angka: TcxCheckBox
          Left = 339
          Top = 169
          Caption = '4 Angka Di Belakang Koma'
          TabOrder = 9
          Visible = False
          OnClick = cxChk2AngkaClick
          Width = 173
        end
        object web: TWebBrowser
          Left = -237
          Top = 240
          Width = 300
          Height = 3
          TabOrder = 10
          ControlData = {
            4C000000021F00004F0000000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'PO Evie'
        ImageIndex = 1
        TabVisible = False
        object Label4: TLabel
          Left = 771
          Top = 174
          Width = 46
          Height = 13
          Caption = 'Total Qty.'
        end
        object Label6: TLabel
          Left = 771
          Top = 196
          Width = 22
          Height = 13
          Caption = 'PPN'
        end
        object Label7: TLabel
          Left = 871
          Top = 196
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label8: TLabel
          Left = 771
          Top = 223
          Width = 56
          Height = 13
          Caption = 'Grand Total'
        end
        object nxGrd2: TNextGrid
          Left = 8
          Top = 11
          Width = 1008
          Height = 153
          FixedCols = 4
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 0
          TabStop = True
          WantTabs = True
          OnAfterEdit = nxGrd2AfterEdit
          OnCellDblClick = nxGrdCellDblClick
          StartRowCount = 1
          object nxColHapus2: TNxImageColumn
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
            Visible = False
            Width = 41
            Images = frmUtama.ImageList1
          end
          object nxNoUrut2: TNxIncrementColumn
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
          object NxTextColumn1: TNxTextColumn
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
          object NxTextColumn2: TNxTextColumn
            DefaultWidth = 300
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
            Width = 300
          end
          object nxColQty2: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 68
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Dipesan'
            Header.Alignment = taRightJustify
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 4
            SortType = stNumeric
            Width = 68
            EditOptions = [eoAllowAll, eoAllowFloat]
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn3: TNxTextColumn
            DefaultWidth = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 5
            SortType = stAlphabetic
            Width = 62
          end
          object nxColHarga2: TNxNumberColumn
            DefaultValue = '0'
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
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColMataUang2: TNxComboBoxColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Mata Uang'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 7
            SortType = stAlphabetic
            Style = cbsDropDownList
          end
          object nxColSubtotal2: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 88
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Subtotal'
            Header.Alignment = taRightJustify
            Position = 8
            SortType = stNumeric
            Width = 88
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn4: TNxTextColumn
            DefaultWidth = 195
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = '  Keterangan'
            InplaceEdit = NxEdit4
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 9
            SortType = stAlphabetic
            Width = 195
          end
        end
        object NxEdit3: TNxEdit
          Left = 32
          Top = 169
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT2'
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object cxsTotal2: TcxSpinEdit
          Left = 882
          Top = 167
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 99
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 821
          Top = 192
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.MaxValue = 20.000000000000000000
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = cxsPPNPropertiesEditValueChanged
          TabOrder = 5
          Width = 47
        end
        object cxsTotPPN2: TcxSpinEdit
          Left = 882
          Top = 192
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 6
          Width = 99
        end
        object cxsGrandTotal2: TcxSpinEdit
          Left = 882
          Top = 218
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 7
          Width = 99
        end
        object cxChk2Angka_2: TcxCheckBox
          Left = 5
          Top = 169
          Caption = '2 Angka Di Belakang Koma'
          TabOrder = 2
          OnClick = cxChk2Angka_2Click
          Width = 165
        end
        object cxChk3Angka_2: TcxCheckBox
          Left = 167
          Top = 169
          Caption = '3 Angka Di Belakang Koma'
          TabOrder = 4
          OnClick = cxChk2AngkaClick
          Width = 173
        end
      end
    end
    object cxLabel12: TcxLabel
      Left = 230
      Top = 32
      Caption = 'No. PO Pajak'
    end
    object cxtNoPOPajak: TcxTextEdit
      Tag = 1
      Left = 304
      Top = 30
      Properties.ReadOnly = True
      TabOrder = 2
      Width = 121
    end
    object cxLabel14: TcxLabel
      Left = 15
      Top = 156
      Caption = 'Alamat Kirim'
    end
    object cxlAlamatKirim: TcxLookupComboBox
      Left = 102
      Top = 154
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          Width = 500
          FieldName = 'nama'
        end
        item
          Caption = 'Alamat'
          Width = 300
          FieldName = 'alamat'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAlmKirim
      TabOrder = 15
      Width = 472
    end
    object btnCariAlamatKirim: TButton
      Left = 576
      Top = 153
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 14
      OnClick = btnCariAlamatKirimClick
    end
    object cxLabel16: TcxLabel
      Left = 1063
      Top = 454
      Caption = 'Jenis'
      Visible = False
    end
    object cxCmbJenis: TcxComboBox
      Left = 1098
      Top = 452
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 43
      Visible = False
      Width = 121
    end
    object cxtCust: TcxTextEdit
      Tag = 1
      Left = 922
      Top = 105
      Properties.ReadOnly = True
      TabOrder = 44
      Visible = False
      Width = 494
    end
    object cxtexcust: TcxTextEdit
      Tag = 1
      Left = 1138
      Top = 377
      Properties.ReadOnly = True
      Style.Color = clWhite
      TabOrder = 45
      Visible = False
      Width = 327
    end
    object cxLabel17: TcxLabel
      Left = 1061
      Top = 379
      Caption = 'Ex. Customer'
      Visible = False
    end
    object cxtnopol: TcxTextEdit
      Tag = 1
      Left = 1130
      Top = 402
      Properties.ReadOnly = True
      Style.Color = clWhite
      TabOrder = 47
      Visible = False
      Width = 327
    end
    object cxtdriver: TcxTextEdit
      Tag = 1
      Left = 1130
      Top = 427
      Properties.ReadOnly = True
      Style.Color = clWhite
      TabOrder = 48
      Visible = False
      Width = 327
    end
    object cxlbl1: TcxLabel
      Left = 1061
      Top = 404
      Caption = 'No Polisi'
      Visible = False
    end
    object cxlbl2: TcxLabel
      Left = 1061
      Top = 429
      Caption = 'Nama Driver'
      Visible = False
    end
    object cxtNoFOBJManual: TcxTextEdit
      Left = 880
      Top = 175
      Properties.ReadOnly = True
      TabOrder = 51
      Visible = False
      OnExit = cxtNoFOBJManualExit
      Width = 121
    end
    object cxtNoFOBJ: TcxTextEdit
      Tag = 1
      Left = 234
      Top = 56
      Properties.ReadOnly = True
      TabOrder = 52
      Width = 121
    end
    object cxChkSamples: TcxCheckBox
      Left = 100
      Top = 5
      Caption = 'Barang Samples ?'
      TabOrder = 53
      Width = 121
    end
    object cxCmbDivisi: TcxComboBox
      Left = 344
      Top = 204
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 55
      Visible = False
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 582
    Width = 1055
    Height = 43
    inherited btnBatal: TButton [0]
      Left = 92
      Top = 8
      Caption = 'PO Baru'
      TabOrder = 1
      Visible = True
    end
    inherited btnKeluar: TButton [1]
      Left = 353
      Top = 8
      TabOrder = 3
    end
    inherited btnBaru: TButton [2]
      Top = 8
      TabOrder = 6
    end
    inherited btnEdit: TButton [3]
      Left = 431
      Top = 8
    end
    inherited btnHapus: TButton [4]
      Left = 506
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Top = 8
      TabOrder = 0
    end
    object btnCetak: TButton
      Left = 169
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cetak PO'
      TabOrder = 2
      OnClick = btnCetakClick
    end
    object btnCetakPOInternal: TButton
      Left = 655
      Top = 8
      Width = 107
      Height = 25
      Caption = 'Cetak PO (Internal)'
      TabOrder = 7
      Visible = False
      OnClick = btnCetakPOInternalClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 '
      'WHERE LEFT(kode,1) IN ('#39'C'#39','#39'D'#39','#39'E'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 508
    Top = 120
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 538
    Top = 131
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 6
  end
  object zqrNoBukti: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_po_head a, tbl_supplier b'
      'where a.kode_supp = b.kode and LEFT(a.no_bukti,3) <> '#39'POP'#39)
    Params = <>
    Left = 340
    Top = 6
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 310
    Top = 6
  end
  object zqrSupp: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_supplier '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 280
    Top = 6
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 825
    Top = 105
  end
  object zqrNoFOBJ: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti as no_pen, no_fobj, c.tanggal, kode_supp, nama' +
        ', c.diajukan_oleh, c.diajukan_dept, '
      'concat(no_fobj,'#39':'#39',kode_supp) as kunci'
      
        'from tbl_penawaran_det a left join tbl_supplier b on a.kode_supp' +
        ' = b.kode '
      'left join tbl_fobj_head c on a.no_fobj = c.no_bukti'
      'where f_pilih = 1 and a.f_po = 0'
      
        'group by a.no_bukti,no_fobj, c.tanggal, kode_supp, nama, c.diaju' +
        'kan_oleh, c.diajukan_dept')
    Params = <>
    Left = 400
    Top = 6
  end
  object dsNoFOBJ: TDataSource
    DataSet = zqrNoFOBJ
    Left = 430
    Top = 6
  end
  object zqrAlmKirim: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,nama, alamat FROM tbl_alamat_kirim'
      'ORDER BY nama')
    Params = <>
    Left = 460
    Top = 6
  end
  object dsAlmKirim: TDataSource
    DataSet = zqrAlmKirim
    Left = 490
    Top = 6
  end
  object zqrSatuan: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det WHERE unitsetid = '#39'KILO1'#39';')
    Params = <>
    Left = 521
    Top = 7
  end
  object dsSatuan: TDataSource
    DataSet = zqrSatuan
    Left = 551
    Top = 7
  end
  object zrDivisi: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_bagian')
    Params = <>
    Left = 612
    Top = 48
  end
  object dsDivisi: TDataSource
    DataSet = zrDivisi
    Left = 642
    Top = 59
  end
end
