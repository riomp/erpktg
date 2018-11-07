inherited frmTrsKeluar: TfrmTrsKeluar
  Left = 397
  Top = 217
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi Keluar'
  ClientHeight = 460
  ClientWidth = 972
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 972
    inherited lblJudul: TLabel
      Width = 137
      Caption = 'Transaksi Keluar'
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 705
      Top = 23
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'No. SPMB'
          FieldName = 'no_spmb'
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
      Properties.MaxLength = 0
      TabOrder = 1
      Width = 251
    end
    object btnEdit2: TButton
      Left = 626
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
  end
  inherited pnlTengah: TPanel
    Width = 972
    Height = 318
    object Label5: TLabel
      Left = 804
      Top = 290
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel7: TcxLabel
      Left = 334
      Top = 59
      Caption = 'Nama Barang'
      Visible = False
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
      Left = 222
      Top = 8
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 1
      OnClick = btnCariPOClick
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 141
      Width = 940
      Height = 139
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 12
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
        Position = 1
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
        Position = 2
        SortType = stAlphabetic
        Width = 253
      end
      object nxColSatuan: TNxTextColumn
        DefaultWidth = 79
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 3
        SortType = stAlphabetic
        Width = 79
      end
      object nxColQtySO: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SO'
        Header.Alignment = taRightJustify
        Position = 4
        SortType = stNumeric
        FormatMask = '#,#0.00'
        Increment = 1.000000000000000000
        Precision = 0
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
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxtNoSO: TNxTextColumn
        DefaultWidth = 94
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        InplaceEdit = nxBeNoSO
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 6
        SortType = stAlphabetic
        Width = 94
      end
      object nxtNoSPK: TNxTextColumn
        DefaultWidth = 94
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        InplaceEdit = NxEdit2
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 7
        SortType = stAlphabetic
        Width = 94
      end
      object NxTextColumn3: TNxTextColumn
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
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit3
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 9
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
        Position = 10
        SortType = stNumeric
        Width = 61
        Images = frmUtama.ImageList1
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 234
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 16
      Text = 'NxEdit1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 857
      Top = 287
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 24
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
      TabOrder = 3
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
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 0
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 4
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 85
      Caption = 'No. SPMB'
    end
    object cxtNoSpmb: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 7
      Width = 157
    end
    object cxLabel4: TcxLabel
      Left = 505
      Top = 75
      Caption = 'No. SPK'
      Visible = False
    end
    object cxtNoSpk: TcxTextEdit
      Tag = 1
      Left = 589
      Top = 73
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 6
      Visible = False
      Width = 157
    end
    object cxLabel5: TcxLabel
      Left = 505
      Top = 100
      Caption = 'No. SO'
      Visible = False
    end
    object cxtNoSo: TcxTextEdit
      Tag = 1
      Left = 589
      Top = 98
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 8
      Visible = False
      Width = 157
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 223
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 202
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 99
      Top = 108
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Deskripsi'
          FieldName = 'deskripsi'
        end
        item
          Caption = 'Stok G01'
          FieldName = 'G01'
        end
        item
          Caption = 'Stok G02'
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
      Properties.MaxLength = 0
      TabOrder = 10
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object btnTambah: TButton
      Left = 597
      Top = 106
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 9
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 224
      Top = 219
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
    object NxEdit3: TNxEdit
      Left = 540
      Top = 220
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 15
      Text = 'NXEDIT3'
      Visible = False
    end
    object nxBeNoSO: TNxButtonEdit
      Left = 645
      Top = 210
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 13
      Text = 'NXBENOSO'
      Visible = False
      OnButtonClick = nxBeNoSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object btnCariBrg: TButton
      Left = 573
      Top = 108
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 11
      OnClick = btnCariBrgClick
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 110
      Caption = 'Nama Barang'
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
      TabOrder = 25
      Width = 145
    end
    object cxLabel9: TcxLabel
      Left = 225
      Top = 35
      Caption = 'No. SO'
    end
  end
  inherited pnlBawah: TPanel
    Top = 384
    Width = 972
    inherited btnKeluar: TButton
      Left = 94
    end
    inherited btnEdit: TButton
      Left = 325
    end
    inherited btnHapus: TButton
      Left = 400
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 250
      Top = 25
    end
    inherited btnSimpan: TButton
      Left = 16
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
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_bukti, a.tanggal, a.user,a.user_dept FROM tbl_trskel' +
        'uar_head a'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 745
    Top = 90
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
    Left = 400
    Top = 21
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 430
    Top = 21
  end
  object zqrNoBukti_Backup: TZReadOnlyQuery
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
    Left = 460
    Top = 21
  end
end
