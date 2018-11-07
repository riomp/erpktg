inherited frmTrsSPKAssembly_NEW: TfrmTrsSPKAssembly_NEW
  Left = 211
  Top = 69
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi SPK Assembly'
  ClientHeight = 621
  ClientWidth = 973
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 973
    inherited lblJudul: TLabel
      Width = 207
      Caption = 'Transaksi SPK Tambahan'
    end
    object btnEdit2: TButton
      Left = 621
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 700
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
    Width = 973
    Height = 481
    object Label5: TLabel
      Left = 619
      Top = 245
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object Label1: TLabel
      Left = 804
      Top = 453
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
    object nxGrd: TNextGrid
      Left = 16
      Top = 142
      Width = 755
      Height = 96
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 2
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
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 47
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
        Width = 47
        Images = frmUtama.ImageList1
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
      object NxTextColumn2: TNxTextColumn
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
      object NxTextColumn7: TNxTextColumn
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
      object nxColKeterangan: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = nxColBtnEdit
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 6
        SortType = stAlphabetic
        Width = 124
      end
      object nxColTipe: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 7
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 55
      Top = 188
      Width = 96
      Height = 24
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 3
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 672
      Top = 242
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 4
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
      Left = 260
      Top = 35
      Caption = 'Gudang Asal'
      Visible = False
    end
    object cxCmbGdg: TcxComboBox
      Left = 344
      Top = 33
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 8
      Visible = False
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 468
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 9
      Visible = False
      Width = 202
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 369
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
      TabOrder = 10
      Visible = False
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 285
      Top = 86
      Caption = 'Nama Barang'
      Visible = False
    end
    object btnTambah: TButton
      Left = 867
      Top = 81
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 12
      Visible = False
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 144
      Top = 188
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
    object cxLabel4: TcxLabel
      Left = 255
      Top = 10
      Caption = 'Gudang Tujuan'
      Visible = False
    end
    object cxCmbGdg2: TcxComboBox
      Left = 339
      Top = 8
      Properties.OnChange = cxCmbGdg2PropertiesChange
      TabOrder = 15
      Visible = False
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxtNamaGdg2: TcxTextEdit
      Left = 463
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 16
      Visible = False
      Width = 202
    end
    object nxGrd2: TNextGrid
      Left = 16
      Top = 314
      Width = 940
      Height = 132
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 17
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrd2AfterEdit
      OnCellDblClick = nxGrd2CellDblClick
      StartRowCount = 1
      object NxIncrementColumn1: TNxIncrementColumn
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
      object NxImageColumn2: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 49
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 1
        SortType = stNumeric
        Width = 49
        Images = frmUtama.ImageList1
      end
      object nxColKodeBrg2: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
      end
      object nxColDesk2: TNxTextColumn
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
      object nxColSatuan2: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 4
        SortType = stAlphabetic
      end
      object nxColQty2: TNxNumberColumn
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
      object nxCmbGdg: TNxComboBoxColumn
        DefaultWidth = 54
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang'
        Position = 6
        SortType = stAlphabetic
        Visible = False
        Width = 54
        Style = cbsDropDownList
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Gudang'
        Position = 7
        SortType = stAlphabetic
        Visible = False
        Width = 117
      end
      object NxTextColumn6: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.SO'
        InplaceEdit = NxEdit4
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 8
        SortType = stAlphabetic
        Visible = False
      end
      object NxTextColumn12: TNxTextColumn
        DefaultWidth = 162
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit4
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 9
        SortType = stAlphabetic
        Visible = False
        Width = 162
      end
    end
    object NxEdit3: TNxEdit
      Left = 64
      Top = 344
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 18
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object NxEdit4: TNxEdit
      Left = 154
      Top = 344
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 19
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 284
      Caption = 'Nama Barang'
    end
    object cxLUBrg2: TcxLookupComboBox
      Left = 99
      Top = 281
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
      OnKeyPress = cxLUBrg2KeyPress
      Width = 471
    end
    object btnTambah2: TButton
      Left = 597
      Top = 279
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 22
      OnClick = btnTambah2Click
    end
    object cxsTotalQty2: TcxSpinEdit
      Left = 857
      Top = 450
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 23
      Width = 99
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 60
      Caption = 'No. SO MDA'
    end
    object cxlNoSO: TcxLookupComboBox
      Left = 99
      Top = 58
      Properties.CharCase = ecUpperCase
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
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoSO
      TabOrder = 25
      Width = 169
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 256
      Caption = 'BILL OF MATERIAL : '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Target Selesai'
    end
    object cxdTrgSelesai: TcxDateEdit
      Left = 99
      Top = 83
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 28
      Width = 121
    end
    object btnCariBrg: TButton
      Left = 843
      Top = 83
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 29
      Visible = False
      OnClick = btnCariBrgClick
    end
    object btnCariBrg2: TButton
      Left = 573
      Top = 281
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 30
      OnClick = btnCariBrg2Click
    end
    object nxColBtnEdit: TNxButtonEdit
      Left = 435
      Top = 205
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 31
      Text = 'nxColBtnEdit'
      ReadOnly = True
      Visible = False
      OnButtonClick = nxColBtnEditButtonClick
      ButtonCaption = '...'
      TransparentColor = clNone
    end
    object pnlMemo: TPanel
      Left = 767
      Top = 50
      Width = 446
      Height = 195
      Color = clSkyBlue
      TabOrder = 32
      Visible = False
      OnExit = pnlMemoExit
      object btnSimpanKet: TButton
        Left = 10
        Top = 159
        Width = 75
        Height = 25
        Caption = '&Simpan'
        TabOrder = 0
        OnClick = btnSimpanKetClick
      end
      object btnBatalMemo: TButton
        Left = 90
        Top = 159
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
        Height = 141
        Width = 426
      end
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 110
      Caption = 'Ket. PPIC'
    end
    object cxtKetPPIC: TcxTextEdit
      Left = 99
      Top = 108
      Properties.CharCase = ecUpperCase
      TabOrder = 34
      Width = 522
    end
  end
  inherited pnlBawah: TPanel
    Top = 547
    Width = 973
    inherited btnKeluar: TButton
      Left = 168
    end
    inherited btnEdit: TButton
      Left = 325
    end
    inherited btnHapus: TButton
      Left = 400
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 92
      Top = 25
      Visible = True
    end
  end
  object zqrBrg: TZReadOnlyQuery
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
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trsspkassembl' +
        'y_head'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrNoSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, nama FROM v_so_head '
      '-- WHERE f_completed = 0')
    Params = <>
    Left = 655
    Top = 121
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 690
    Top = 121
  end
end
