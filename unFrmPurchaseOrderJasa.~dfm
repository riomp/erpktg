inherited frmPurchaseOrderJasa: TfrmPurchaseOrderJasa
  Left = 199
  Top = 23
  Width = 1081
  Height = 680
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  Caption = 'Purchase Order Jasa'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1065
    Height = 53
    inherited lblJudul: TLabel
      Top = 15
      Width = 166
      Caption = 'Purchase Order Jasa'
    end
  end
  inherited pnlTengah: TPanel
    Top = 53
    Width = 1065
    Height = 547
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
    object cxLabel6: TcxLabel
      Left = 15
      Top = 35
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 102
      Top = 33
      Properties.ReadOnly = False
      TabOrder = 4
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Supplier'
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
      Properties.ListSource = dsSupp
      Properties.OnEditValueChanged = cxLUSuppPropertiesEditValueChanged
      TabOrder = 7
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
      TabOrder = 9
      Width = 121
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 189
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 187
      Properties.CharCase = ecUpperCase
      Style.Color = clSkyBlue
      TabOrder = 11
      Width = 389
    end
    object cxChkLstEmail: TcxCheckListBox
      Left = 1006
      Top = 54
      Width = 350
      Height = 171
      Items = <>
      TabOrder = 12
      Visible = False
    end
    object chkSdhKirimEmail: TcxCheckBox
      Left = 439
      Top = 34
      Caption = 'Sudah Kirim Email'
      Properties.ReadOnly = True
      TabOrder = 13
      Visible = False
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 55
      Top = 485
      Caption = 'Isi Email'
      Visible = False
    end
    object cxmIsiEmail: TcxMemo
      Left = 129
      Top = 445
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Visible = False
      Height = 57
      Width = 513
    end
    object cxmTemplate: TcxMemo
      Left = 1010
      Top = 142
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
      TabOrder = 16
      Visible = False
      Height = 89
      Width = 185
    end
    object mm: TcxMemo
      Left = 1020
      Top = 60
      TabOrder = 17
      Visible = False
      Height = 89
      Width = 185
    end
    object cxLabel2: TcxLabel
      Left = 55
      Top = 482
      Caption = 'Subject Email'
      Visible = False
    end
    object cxtSubject: TcxTextEdit
      Left = 129
      Top = 479
      Properties.ReadOnly = True
      TabOrder = 19
      Visible = False
      Width = 350
    end
    object chkComplete: TcxCheckBox
      Left = 439
      Top = 9
      TabStop = False
      Caption = 'PO Selesai / Komplit'
      Properties.ReadOnly = True
      TabOrder = 20
      Width = 121
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 805
      Top = 197
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 21
      Text = 'NxButtonEdit1'
      ReadOnly = True
      Visible = False
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object btnCariSupp: TButton
      Left = 576
      Top = 58
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 22
      OnClick = btnCariSuppClick
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 135
      Caption = 'Pembayaran'
    end
    object cxCmbPembayaran: TcxComboBox
      Left = 102
      Top = 134
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 24
      Width = 219
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
      TabOrder = 26
      Width = 472
    end
    object btnCariAlamatKirim: TButton
      Left = 576
      Top = 82
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 27
      OnClick = btnCariAlamatKirimClick
    end
    object cxLabel16: TcxLabel
      Left = 766
      Top = 116
      Caption = 'Jenis'
      Visible = False
    end
    object cxCmbJenis: TcxComboBox
      Left = 102
      Top = 160
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 29
      Width = 121
    end
    object cxtnopol: TcxTextEdit
      Tag = 1
      Left = 674
      Top = 58
      Properties.ReadOnly = True
      Style.Color = clWhite
      TabOrder = 30
      Visible = False
      Width = 327
    end
    object cxtdriver: TcxTextEdit
      Tag = 1
      Left = 674
      Top = 84
      Properties.ReadOnly = True
      Style.Color = clWhite
      TabOrder = 31
      Visible = False
      Width = 327
    end
    object cxlbl1: TcxLabel
      Left = 605
      Top = 60
      Caption = 'No Polisi'
      Visible = False
    end
    object cxlbl2: TcxLabel
      Left = 605
      Top = 86
      Caption = 'Nama Driver'
      Visible = False
    end
    object NxEdit1: TNxEdit
      Left = 824
      Top = 162
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
    end
    object pg: TPageControl
      Left = 14
      Top = 213
      Width = 1035
      Height = 293
      ActivePage = TabSheet1
      TabOrder = 34
      object TabSheet1: TTabSheet
        Caption = 'Jasa'
        object Label4: TLabel
          Left = 771
          Top = 196
          Width = 24
          Height = 13
          Caption = 'Total'
        end
        object Label6: TLabel
          Left = 771
          Top = 218
          Width = 22
          Height = 13
          Caption = 'PPN'
        end
        object Label7: TLabel
          Left = 871
          Top = 218
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label8: TLabel
          Left = 771
          Top = 245
          Width = 56
          Height = 13
          Caption = 'Grand Total'
        end
        object nxGrd: TNextGrid
          Left = 8
          Top = 34
          Width = 1008
          Height = 151
          FixedCols = 4
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 0
          TabStop = True
          WantTabs = True
          OnAfterEdit = nxGrdAfterEdit
          OnCellDblClick = cell
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
            Visible = False
            Width = 74
          end
          object nxColNamaJasa: TNxTextColumn
            DefaultWidth = 359
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Nama Barang'
            Header.Caption = 'Nama Jasa'
            InplaceEdit = NxEdit1
            Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
            Position = 3
            SortType = stAlphabetic
            Width = 359
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
            DefaultWidth = 67
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 5
            SortType = stAlphabetic
            Width = 67
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
          Top = 189
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT2'
          Visible = False
        end
        object cxsTotalHarga: TcxSpinEdit
          Left = 882
          Top = 189
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
          Top = 214
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
        object cxsTotalPPN: TcxSpinEdit
          Left = 882
          Top = 214
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
          Top = 240
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
          Top = 189
          Caption = '2 Angka Di Belakang Koma'
          TabOrder = 2
          OnClick = cxChk2AngkaClick
          Width = 165
        end
        object cxChk3Angka: TcxCheckBox
          Left = 167
          Top = 189
          Caption = '3 Angka Di Belakang Koma'
          TabOrder = 4
          OnClick = cxChk2AngkaClick
          Width = 173
        end
        object NxEdit4: TNxEdit
          Left = 500
          Top = 95
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
          Top = 189
          Caption = '4 Angka Di Belakang Koma'
          TabOrder = 9
          OnClick = cxChk2AngkaClick
          Width = 173
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 8
          Caption = 'Nama Jasa'
        end
        object cxLUJasa: TcxLookupComboBox
          Left = 94
          Top = 5
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsEditList
          Properties.KeyFieldNames = 'deskripsi'
          Properties.ListColumns = <
            item
              Caption = 'Nama Jasa'
              FieldName = 'deskripsi'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsJasa
          TabOrder = 11
          Width = 471
        end
        object cxLabel7: TcxLabel
          Left = 590
          Top = 8
          Caption = 'Qty.'
          Visible = False
        end
        object cxsQty: TcxSpinEdit
          Left = 652
          Top = 5
          Enabled = False
          Properties.ValueType = vtFloat
          TabOrder = 13
          Visible = False
          Width = 78
        end
        object btnTambah: TButton
          Left = 568
          Top = 5
          Width = 75
          Height = 22
          Caption = '&Tambah'
          TabOrder = 14
          OnClick = btnTambahClick
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Barang'
        ImageIndex = 1
        object Label9: TLabel
          Left = 771
          Top = 195
          Width = 46
          Height = 13
          Caption = 'Total Qty.'
        end
        object Label10: TLabel
          Left = 771
          Top = 217
          Width = 22
          Height = 13
          Caption = 'PPN'
        end
        object Label11: TLabel
          Left = 871
          Top = 217
          Width = 8
          Height = 13
          Caption = '%'
        end
        object Label12: TLabel
          Left = 771
          Top = 244
          Width = 56
          Height = 13
          Caption = 'Grand Total'
        end
        object nxGrd2: TNextGrid
          Left = 8
          Top = 32
          Width = 1008
          Height = 151
          FixedCols = 4
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 0
          TabStop = True
          WantTabs = True
          OnAfterEdit = nxGrd2AfterEdit
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
          object nxColKodeBrg2: TNxTextColumn
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
          object nxColNamaBrg2: TNxTextColumn
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
          object nxColSatuan2: TNxTextColumn
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
          object nxColKeterangan2: TNxTextColumn
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
          Top = 190
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT2'
          Visible = False
        end
        object cxsTotal2: TcxSpinEdit
          Left = 882
          Top = 188
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 99
        end
        object cxsPPN2: TcxSpinEdit
          Left = 821
          Top = 213
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.MaxValue = 20.000000000000000000
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 5
          Width = 47
        end
        object cxsTotPPN2: TcxSpinEdit
          Left = 882
          Top = 213
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
          Top = 239
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
          Top = 190
          Caption = '2 Angka Di Belakang Koma'
          TabOrder = 2
          OnClick = cxChk2Angka_2Click
          Width = 165
        end
        object cxChk3Angka_2: TcxCheckBox
          Left = 167
          Top = 190
          Caption = '3 Angka Di Belakang Koma'
          TabOrder = 4
          OnClick = cxChk2Angka_2Click
          Width = 173
        end
        object cxLabel4: TcxLabel
          Left = 7
          Top = 8
          Caption = 'Nama Barang'
        end
        object cxLUBrg: TcxLookupComboBox
          Left = 94
          Top = 5
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.DropDownListStyle = lsEditList
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
          TabOrder = 9
          Width = 471
        end
        object cxLabel11: TcxLabel
          Left = 590
          Top = 8
          Caption = 'Qty.'
        end
        object cxsQtyBrg: TcxSpinEdit
          Left = 615
          Top = 5
          Properties.ValueType = vtFloat
          TabOrder = 11
          Width = 78
        end
        object btnTambahBrg: TButton
          Left = 698
          Top = 2
          Width = 75
          Height = 25
          Caption = '&Tambah'
          TabOrder = 12
          OnClick = btnTambahBrgClick
        end
        object btnCariBrg: TButton
          Left = 567
          Top = 5
          Width = 20
          Height = 21
          Caption = '...'
          TabOrder = 13
          OnClick = btnCariBrgClick
        end
      end
    end
    object btnSPMB: TButton
      Left = 14
      Top = 510
      Width = 75
      Height = 25
      Caption = 'SPMB'
      Enabled = False
      TabOrder = 35
      OnClick = btnSPMBClick
    end
    object btnSJ: TButton
      Left = 92
      Top = 510
      Width = 75
      Height = 25
      Caption = 'Surat Jalan'
      Enabled = False
      TabOrder = 36
      OnClick = btnSJClick
    end
    object cxtNoSPMB: TcxTextEdit
      Tag = 1
      Left = 797
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 37
      Visible = False
      Width = 121
    end
    object chkPODgnBrg: TcxCheckBox
      Left = 564
      Top = 9
      TabStop = False
      Caption = 'PO Jasa Dengan Barang'
      Properties.ReadOnly = True
      TabOrder = 38
      Width = 194
    end
    object GroupBox1: TGroupBox
      Left = 716
      Top = 2
      Width = 172
      Height = 50
      Caption = ' Jenis PO '
      TabOrder = 39
      object cxrNonPajak: TcxRadioButton
        Left = 9
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Non Pajak'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = cxrNonPajakClick
      end
      object cxrStandard: TcxRadioButton
        Left = 89
        Top = 19
        Width = 72
        Height = 17
        Caption = 'Standar'
        TabOrder = 1
        OnClick = cxrNonPajakClick
      end
    end
    object cxLabel12: TcxLabel
      Left = 228
      Top = 10
      Caption = 'No. PO Pajak'
    end
    object cxtNoPOPajak: TcxTextEdit
      Tag = 1
      Left = 302
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 41
      Width = 121
    end
    object cxLabel15: TcxLabel
      Left = 15
      Top = 161
      Caption = 'Jenis PO'
    end
    object cxLabel17: TcxLabel
      Left = 228
      Top = 35
      Caption = 'No. FOBJ'
    end
    object cxtNoFOBJ: TcxTextEdit
      Tag = 1
      Left = 302
      Top = 33
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 600
    Width = 1065
    Height = 42
    inherited btnKeluar: TButton
      Left = 87
      Top = 8
    end
    inherited btnBaru: TButton
      Left = 655
      Top = 5
    end
    inherited btnEdit: TButton
      Left = 730
      Top = 5
    end
    inherited btnHapus: TButton
      Left = 805
      Top = 5
    end
    inherited btnSimpan: TButton
      Top = 8
      Width = 70
      Caption = 'Simpan'
    end
    object btnBuatBaru: TButton
      Left = 165
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Buat PO Baru'
      TabOrder = 6
      OnClick = btnBuatBaruClick
    end
  end
  object btnEdit2: TButton
    Left = 728
    Top = 13
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
    OnClick = btnEdit2Click
  end
  object cxlNoBukti: TcxLookupComboBox
    Left = 807
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
    TabOrder = 4
    Width = 251
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
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 310
    Top = 6
  end
  object zqrNoBukti: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept'
      'from tbl_poj_head a, tbl_supplier b'
      'where a.kode_supp = b.kode')
    Params = <>
    Left = 340
    Top = 6
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 6
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
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 500
    Top = 91
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 530
    Top = 91
  end
  object zqJasa: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_jasa ORDER BY deskripsi')
    Params = <>
    Left = 530
    Top = 191
  end
  object dsJasa: TDataSource
    DataSet = zqJasa
    Left = 560
    Top = 191
  end
end
