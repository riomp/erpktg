inherited frmTrsMasuk: TfrmTrsMasuk
  Left = 391
  Top = 227
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi Masuk'
  ClientHeight = 430
  ClientWidth = 915
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 915
    Height = 68
    inherited lblJudul: TLabel
      Width = 136
      Caption = 'Transaksi Masuk'
    end
    object btnEdit2: TButton
      Left = 571
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 650
      Top = 23
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Top = 68
    Width = 915
    Height = 288
    object Label5: TLabel
      Left = 744
      Top = 261
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
      TabOrder = 0
      Width = 121
    end
    object btnCariPO: TButton
      Left = 777
      Top = 23
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 5
      Visible = False
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 114
      Width = 880
      Height = 138
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 14
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 1
      object nxColHapus: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 42
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 0
        SortType = stNumeric
        Width = 42
        Images = frmUtama.ImageList1
      end
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coPublicUsing]
        Position = 1
        SortType = stAlphabetic
        Width = 30
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
        Position = 2
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
        Position = 3
        SortType = stAlphabetic
        Width = 253
      end
      object nxColSatuan: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 4
        SortType = stAlphabetic
      end
      object nxColQty: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty.'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColNoSO: TNxTextColumn
        DefaultWidth = 94
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        InplaceEdit = nxBtnEditSO
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 6
        SortType = stAlphabetic
        Width = 94
      end
      object nxColNoSPK: TNxTextColumn
        DefaultWidth = 94
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        InplaceEdit = NxButtonEdit1
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 7
        SortType = stAlphabetic
        Width = 94
      end
      object nxColRef: TNxTextColumn
        DefaultWidth = 99
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Referensi'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 8
        SortType = stAlphabetic
        Visible = False
        Width = 99
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit2
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 9
        SortType = stAlphabetic
        Width = 124
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 185
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 17
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 797
      Top = 258
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 27
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
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 6
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Gudang Tujuan'
    end
    object cxCmbGdg: TcxComboBox
      Left = 99
      Top = 58
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 9
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 480
      Top = 21
      Caption = 'No. SPK'
      Visible = False
    end
    object cxtNoSpk: TcxTextEdit
      Tag = 1
      Left = 564
      Top = 19
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 4
      Visible = False
      Width = 157
    end
    object cxLabel5: TcxLabel
      Left = 495
      Top = 11
      Caption = 'No. SO'
      Visible = False
    end
    object cxtNoSo: TcxTextEdit
      Tag = 1
      Left = 579
      Top = 9
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 2
      Visible = False
      Width = 157
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 223
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 233
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 99
      Top = 83
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
      TabOrder = 12
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 86
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 597
      Top = 81
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 11
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 244
      Top = 190
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 18
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxtNoCCR: TcxTextEdit
      Tag = 1
      Left = 666
      Top = 48
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 8
      Visible = False
      Width = 157
    end
    object cxLabel7: TcxLabel
      Left = 615
      Top = 50
      Caption = 'No. CCR'
      Visible = False
    end
    object cxChkSOMda: TcxCheckBox
      Left = 227
      Top = 9
      Caption = 'SO MDA'
      TabOrder = 1
      OnClick = cxChkSOMdaClick
      Width = 121
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 560
      Top = 175
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 16
      Text = 'NxButtonEdit1'
      Visible = False
      OnButtonClick = NxButtonEdit1ButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object nxBeNoSO: TNxButtonEdit
      Left = 390
      Top = 200
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 19
      Text = 'NxButtonEdit1'
      Visible = False
      OnButtonClick = nxBeNoSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object nxBtnEditSO: TNxButtonEdit
      Left = 733
      Top = 162
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 15
      Text = 'NXBENOSO'
      Visible = False
      OnButtonClick = nxBtnEditSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object btnCariBrg: TButton
      Left = 573
      Top = 83
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 13
      OnClick = btnCariBrgClick
    end
    object cxLabel8: TcxLabel
      Left = 225
      Top = 35
      Caption = 'No. SO'
    end
    object cxlNoSO: TcxLookupComboBox
      Left = 271
      Top = 33
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. SO'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoSO
      Properties.OnEditValueChanged = cxlNoSOPropertiesEditValueChanged
      TabOrder = 7
      Width = 145
    end
  end
  inherited pnlBawah: TPanel
    Top = 356
    Width = 915
    inherited btnEdit: TButton
      Left = 325
    end
    inherited btnHapus: TButton
      Left = 400
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 190
      Top = 25
    end
  end
  object zqrBrg: TZReadOnlyQuery
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
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trsmasuk_head'
      'WHERE YEAR(tanggal) = YEAR(CURDATE())'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrNoSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_bukti, a.tanggal '
      'FROM tbl_so_head a JOIN tbl_so_det b ON a.no_bukti = b.no_bukti'
      'LEFT JOIN tbl_barang c ON b.kode_brg = c.kode'
      'WHERE a.f_completed = 0 AND '
      'c.deskripsi LIKE '#39'ONGKOS%'#39
      'ORDER BY a.no_bukti')
    Params = <>
    Left = 410
    Top = 21
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 440
    Top = 21
  end
end
