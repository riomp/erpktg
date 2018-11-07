inherited frmTrsSPKPotong: TfrmTrsSPKPotong
  Left = 238
  Top = 61
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi SPK Potong'
  ClientHeight = 613
  ClientWidth = 914
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 914
    inherited lblJudul: TLabel
      Width = 179
      Caption = 'Transaksi SPK Potong'
    end
    object btnEdit2: TButton
      Left = 570
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 649
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
    object Panel1: TPanel
      Left = 15
      Top = 50
      Width = 411
      Height = 51
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      Visible = False
    end
  end
  inherited pnlTengah: TPanel
    Width = 914
    Height = 505
    object Label5: TLabel
      Left = 619
      Top = 268
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object Label1: TLabel
      Left = 744
      Top = 476
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
      Top = 165
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
      object NxTextColumn1: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Kode Brg.'
        Header.Caption = 'Kode Brg.'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 1
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
        Position = 2
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
        Position = 3
        SortType = stAlphabetic
      end
      object NxNumberColumn1: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty.'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 4
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit2
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 5
        SortType = stAlphabetic
        Width = 124
      end
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 61
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 6
        SortType = stNumeric
        Width = 61
        Images = frmUtama.ImageList1
      end
    end
    object NxEdit1: TNxEdit
      Left = 54
      Top = 211
      Width = 97
      Height = 21
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
      Top = 265
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
      Left = 15
      Top = 60
      Caption = 'Gudang Asal'
    end
    object cxCmbGdg: TcxComboBox
      Left = 99
      Top = 58
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 8
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 223
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 202
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 99
      Top = 136
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
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 139
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 596
      Top = 134
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 12
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 144
      Top = 211
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
    object cxLabel5: TcxLabel
      Left = 665
      Top = 136
      Caption = 'No. SPK Potong'
      Visible = False
    end
    object cxtNoSPK: TcxTextEdit
      Tag = 1
      Left = 749
      Top = 134
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 10
      Properties.ReadOnly = False
      TabOrder = 18
      Visible = False
      Width = 121
    end
    object nxGrd2: TNextGrid
      Left = 16
      Top = 337
      Width = 880
      Height = 132
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 19
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
      object nxColKodeBrg2: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Kode Brg.'
        Header.Caption = 'Kode Brg.'
        InplaceEdit = NxEdit3
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 1
        SortType = stAlphabetic
      end
      object NxTextColumn8: TNxTextColumn
        DefaultWidth = 253
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
        Width = 253
      end
      object NxTextColumn9: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 3
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
        Position = 4
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxCmbGdg: TNxComboBoxColumn
        DefaultWidth = 55
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 5
        SortType = stAlphabetic
        Width = 55
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
        Position = 6
        SortType = stAlphabetic
        Width = 117
      end
      object nxColNoSO: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.SO'
        InplaceEdit = NxButtonEdit1
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 7
        SortType = stAlphabetic
      end
      object nxColKet2: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit4
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 8
        SortType = stAlphabetic
        Width = 124
      end
      object NxImageColumn2: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 61
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 9
        SortType = stNumeric
        Width = 61
        Images = frmUtama.ImageList1
      end
    end
    object NxEdit3: TNxEdit
      Left = 64
      Top = 367
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 20
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object NxEdit4: TNxEdit
      Left = 154
      Top = 367
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 21
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 312
      Caption = 'Nama Barang'
    end
    object cxLUBrg2: TcxLookupComboBox
      Left = 99
      Top = 309
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
      OnKeyPress = cxLUBrg2KeyPress
      Width = 471
    end
    object btnTambah2: TButton
      Left = 596
      Top = 307
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 24
      OnClick = btnTambah2Click
    end
    object cxsTotalQty2: TcxSpinEdit
      Left = 797
      Top = 473
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 25
      Width = 99
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 455
      Top = 386
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 26
      Text = 'NxButtonEdit1'
      Visible = False
      OnButtonClick = NxButtonEdit1ButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Tgl. Start'
    end
    object cxdTglStart: TcxDateEdit
      Left = 99
      Top = 83
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 28
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 225
      Top = 85
      Caption = 'Tgl. Finish'
    end
    object cxdTglFinish: TcxDateEdit
      Left = 284
      Top = 83
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 30
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 116
      Caption = 'BILL OF MATERIAL : '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
    object btnCariBrg: TButton
      Left = 572
      Top = 136
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 32
      OnClick = btnCariBrgClick
    end
    object btnCariBrg2: TButton
      Left = 572
      Top = 309
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 33
      OnClick = btnCariBrg2Click
    end
  end
  inherited pnlBawah: TPanel
    Top = 571
    Width = 914
    Height = 42
    inherited btnKeluar: TButton
      Left = 168
      Top = 8
    end
    inherited btnBaru: TButton
      Top = 8
    end
    inherited btnEdit: TButton
      Left = 325
      Top = 8
    end
    inherited btnHapus: TButton
      Left = 400
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 92
      Top = 8
      Visible = True
    end
    inherited btnSimpan: TButton
      Top = 8
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
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
    Active = True
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trsspkpotong_' +
        'head'
      'WHERE f_app_mgr = 1'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 715
    Top = 125
  end
end
