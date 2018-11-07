inherited frmPurchaseOrderPel: TfrmPurchaseOrderPel
  Left = 189
  Top = 50
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Purchase Order Peletan'
  ClientHeight = 614
  ClientWidth = 1059
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1059
    Height = 52
    inherited lblJudul: TLabel
      Top = 15
      Width = 193
      Caption = 'Purchase Order Peletan'
    end
    object btnEdit2: TButton
      Left = 719
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 800
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
        end
        item
          Caption = 'Ex. Customer'
          FieldName = 'ex_customer'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
    object cxChkTampilSPMBAll: TcxCheckBox
      Left = 797
      Top = 29
      Caption = 'Tampilkan Semua PO'
      TabOrder = 2
      OnClick = cxChkTampilSPMBAllClick
      Width = 161
    end
  end
  inherited pnlTengah: TPanel
    Top = 52
    Width = 1059
    Height = 515
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. PO'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 102
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object NxEdit1: TNxEdit
      Left = 39
      Top = 278
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 33
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
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
      TabOrder = 9
      Width = 121
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 102
      Top = 229
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
      TabOrder = 23
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 232
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 706
      Top = 226
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 22
      OnClick = btnTambahClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Customer'
    end
    object cxLUSupp: TcxLookupComboBox
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
      Properties.OnEditValueChanged = cxLUSuppPropertiesEditValueChanged
      TabOrder = 13
      Width = 472
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 110
      Caption = 'Tgl. Perlu / Kirim'
    end
    object cxdTglKirim: TcxDateEdit
      Left = 102
      Top = 108
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 17
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 160
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 158
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 21
      Width = 389
    end
    object cxChkLstEmail: TcxCheckListBox
      Left = 843
      Top = 77
      Width = 350
      Height = 171
      Items = <>
      TabOrder = 6
      Visible = False
    end
    object chkSdhKirimEmail: TcxCheckBox
      Left = 647
      Top = 39
      Caption = 'Sudah Kirim Email'
      Properties.ReadOnly = True
      TabOrder = 10
      Visible = False
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 55
      Top = 478
      Caption = 'Isi Email'
      Visible = False
    end
    object cxmIsiEmail: TcxMemo
      Left = 134
      Top = 484
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 44
      Visible = False
      Height = 57
      Width = 513
    end
    object cxmTemplate: TcxMemo
      Left = 915
      Top = 90
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
        '  <TD>Ex Customer</TD>'
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
      Left = 905
      Top = 55
      TabOrder = 12
      Visible = False
      Height = 89
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 55
      Top = 455
      Caption = 'Subject Email'
      Visible = False
    end
    object cxtSubject: TcxTextEdit
      Left = 129
      Top = 452
      Properties.ReadOnly = True
      TabOrder = 35
      Visible = False
      Width = 350
    end
    object chkComplete: TcxCheckBox
      Left = 797
      Top = 14
      TabStop = False
      Caption = 'PO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 121
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 525
      Top = 315
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 34
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
      Top = 232
      Caption = 'Qty.'
    end
    object cxsQty: TcxSpinEdit
      Left = 623
      Top = 229
      Properties.ValueType = vtFloat
      TabOrder = 25
      OnKeyPress = cxsQtyKeyPress
      Width = 78
    end
    object btnCariSupp: TButton
      Left = 576
      Top = 58
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 14
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
      Left = 882
      Top = 198
      Width = 387
      Height = 50
      Caption = ' Jenis PO '
      TabOrder = 0
      Visible = False
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
        Width = 72
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
        OnClick = cxrStandardClick
      end
      object cxrPeletan: TcxRadioButton
        Left = 226
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Peletan'
        TabOrder = 3
      end
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 134
      Caption = 'Pembayaran'
    end
    object cxCmbPembayaran: TcxComboBox
      Left = 102
      Top = 133
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 19
      Width = 219
    end
    object cxLabel4: TcxLabel
      Left = 805
      Top = 165
      Caption = 'No. FOBJ'
      Visible = False
    end
    object btnCariBrg: TButton
      Left = 575
      Top = 229
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 24
      OnClick = btnCariBrgClick
    end
    object cxLabel11: TcxLabel
      Left = 630
      Top = 134
      Caption = 'Mata Uang'
      Visible = False
    end
    object cxCmbMataUang: TcxComboBox
      Left = 717
      Top = 133
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 20
      Visible = False
      Width = 69
    end
    object cxlNoFOBJ: TcxLookupComboBox
      Left = 892
      Top = 163
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
      Width = 174
    end
    object pg: TPageControl
      Left = 14
      Top = 259
      Width = 1032
      Height = 248
      ActivePage = TabSheet1
      TabOrder = 26
      object TabSheet1: TTabSheet
        Caption = 'PO Peletan'
        object Label5: TLabel
          Left = 771
          Top = 174
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object Label1: TLabel
          Left = 496
          Top = 171
          Width = 22
          Height = 13
          Caption = 'PPN'
          Visible = False
        end
        object Label3: TLabel
          Left = 596
          Top = 171
          Width = 8
          Height = 13
          Caption = '%'
          Visible = False
        end
        object Label2: TLabel
          Left = 771
          Top = 197
          Width = 56
          Height = 13
          Caption = 'Grand Total'
        end
        object nxGrd: TNextGrid
          Left = 8
          Top = 7
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
            Visible = False
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
          object nxColLokasi: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Lokasi'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 11
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
            Position = 12
            SortType = stAlphabetic
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
          Left = 546
          Top = 167
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.MaxValue = 20.000000000000000000
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = cxsPPNPropertiesEditValueChanged
          TabOrder = 5
          Visible = False
          Width = 47
        end
        object cxsTotPPN: TcxSpinEdit
          Left = 607
          Top = 167
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 6
          Visible = False
          Width = 99
        end
        object cxsGrandTotal: TcxSpinEdit
          Left = 882
          Top = 192
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
      end
    end
    object cxLabel12: TcxLabel
      Left = 705
      Top = 95
      Caption = 'No. PO Pajak'
      Visible = False
    end
    object cxtNoPOPajak: TcxTextEdit
      Tag = 1
      Left = 779
      Top = 118
      Properties.ReadOnly = True
      TabOrder = 2
      Visible = False
      Width = 121
    end
    object cxLabel14: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Alamat Kirim'
    end
    object cxlAlamatKirim: TcxLookupComboBox
      Left = 102
      Top = 83
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
      TabOrder = 16
      Width = 472
    end
    object btnCariAlamatKirim: TButton
      Left = 576
      Top = 82
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 15
      OnClick = btnCariAlamatKirimClick
    end
    object cxtNoFOBJ: TcxTextEdit
      Left = 670
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 8
      Text = 'asadad'
      Width = 121
    end
    object cxLabel15: TcxLabel
      Left = 608
      Top = 165
      Caption = 'Divisi'
      Visible = False
    end
    object cxCmbDivisi: TcxComboBox
      Left = 643
      Top = 163
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 18
      Visible = False
      Width = 121
    end
    object cxLabel16: TcxLabel
      Left = 616
      Top = 176
      Caption = 'Jenis'
      Visible = False
    end
    object cxCmbJenis: TcxComboBox
      Left = 651
      Top = 174
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 46
      Visible = False
      Width = 121
    end
    object cxLabel17: TcxLabel
      Left = 230
      Top = 10
      Caption = 'No. SO'
      Visible = False
    end
    object cxTextEdit1: TcxTextEdit
      Tag = 1
      Left = 275
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 48
      Visible = False
      Width = 121
    end
    object cxLabel18: TcxLabel
      Left = 15
      Top = 185
      Caption = 'Nopol'
    end
    object cxtNopol: TcxTextEdit
      Left = 102
      Top = 183
      Properties.CharCase = ecUpperCase
      TabOrder = 50
      Width = 94
    end
    object cxLabel19: TcxLabel
      Left = 200
      Top = 185
      Caption = 'Driver'
    end
    object cxtDriver: TcxTextEdit
      Left = 237
      Top = 183
      Properties.CharCase = ecUpperCase
      TabOrder = 52
      Width = 209
    end
  end
  inherited pnlBawah: TPanel
    Top = 567
    Width = 1059
    Height = 48
    inherited btnBatal: TButton [0]
      Left = 92
      Top = 8
      Caption = 'PO Baru'
      TabOrder = 1
      Visible = True
    end
    inherited btnKeluar: TButton [1]
      Left = 433
      Top = 8
      TabOrder = 3
    end
    inherited btnBaru: TButton [2]
      Left = 665
      Top = 8
      TabOrder = 6
    end
    inherited btnEdit: TButton [3]
      Left = 511
      Top = 8
      TabOrder = 4
    end
    inherited btnHapus: TButton [4]
      Left = 586
      Top = 8
      TabOrder = 5
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Top = 8
      Width = 76
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
      Left = 749
      Top = 8
      Width = 107
      Height = 25
      Caption = 'Cetak PO (Internal)'
      TabOrder = 7
      Visible = False
      OnClick = btnCetakPOInternalClick
    end
    object btnCetakSPBB: TButton
      Left = 247
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cetak SPBB'
      TabOrder = 8
      OnClick = btnCetakSPBBClick
    end
    object btnPosting: TButton
      Left = 326
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Posting'
      TabOrder = 9
      OnClick = btnPostingClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 520
    Top = 6
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 550
    Top = 6
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
      'from tbl_po_head a, tbl_customer b'
      
        'where a.kode_supp = b.kode and left(a.no_bukti,3) = '#39'POP'#39' and f_' +
        'posted = 0')
    Params = <>
    Left = 340
    Top = 6
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 650
    Top = 130
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
  object zqrCust: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer ORDER BY nama')
    Params = <>
    Left = 580
    Top = 6
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 610
    Top = 6
  end
end
