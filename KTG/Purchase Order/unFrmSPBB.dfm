inherited frmSPBB: TfrmSPBB
  Left = 250
  Top = 44
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Surat Permintaan Bongkar Barang'
  ClientHeight = 585
  ClientWidth = 944
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 944
    inherited lblJudul: TLabel
      Width = 280
      Caption = 'Surat Permintaan Bongkar Barang'
    end
    object btnEdit2: TButton
      Left = 595
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 675
      Top = 16
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          Width = 200
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          Width = 150
          FieldName = 'tanggal'
        end
        item
          Caption = 'Nama Customer'
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
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
    object cxChkTampilSPMBAll: TcxCheckBox
      Left = 673
      Top = 38
      Caption = 'Tampilkan Semua SPBB'
      TabOrder = 2
      OnClick = cxChkTampilSPMBAllClick
      Width = 161
    end
  end
  inherited pnlTengah: TPanel
    Width = 944
    Height = 460
    object Label5: TLabel
      Left = 775
      Top = 434
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. SPBB'
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
      Top = 235
      Width = 910
      Height = 188
      FixedCols = 5
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
        DefaultWidth = 30
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
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
        DefaultWidth = 324
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
        Width = 324
      end
      object nxColDipesan: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Dipesan'
        Header.Alignment = taRightJustify
        Position = 4
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColDikirim: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Dikirim'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColDiterima: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Diterima'
        Header.Alignment = taRightJustify
        Position = 6
        SortType = stNumeric
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
        Header.Alignment = taRightJustify
        Position = 7
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColMataUang: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Curr'
        Position = 8
        SortType = stAlphabetic
      end
      object nxColSatuan: TNxTextColumn
        DefaultWidth = 68
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 9
        SortType = stAlphabetic
        Width = 68
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Position = 10
        SortType = stAlphabetic
        Width = 124
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 370
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
      Left = 828
      Top = 429
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
      Top = 60
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 58
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 6
      Width = 121
    end
    object NxEdit2: TNxEdit
      Left = 249
      Top = 375
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 8
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 160
      Caption = 'No. Polisi'
    end
    object cxtNopol: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 158
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 10
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 185
      Caption = 'Driver'
    end
    object cxtDriver: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 183
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 12
      Width = 212
    end
    object cxLUSupp: TcxLookupComboBox
      Left = 99
      Top = 108
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Supplier'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end
        item
          Caption = 'Alamat'
          FieldName = 'alamat'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSupp
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = cxLUCustPropertiesEditValueChanged
      TabOrder = 7
      Width = 472
    end
    object cxChkSudahSJ: TcxCheckBox
      Left = 223
      Top = 9
      Caption = 'Sudah Buat Surat Penerimaan Barang'
      Properties.ReadOnly = True
      TabOrder = 14
      Width = 253
    end
    object cxLabel10: TcxLabel
      Left = 16
      Top = 35
      Caption = 'No. PO'
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 111
      Caption = 'Supplier'
    end
    object NxEdit3: TNxEdit
      Left = 540
      Top = 370
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 17
      Text = 'NXEDIT3'
      Visible = False
    end
    object btnCariSupp: TButton
      Left = 574
      Top = 108
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 18
      Visible = False
      OnClick = btnCariSuppClick
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 210
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 208
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 13
      Width = 471
    end
    object btnAmbilKet: TButton
      Left = 16
      Top = 428
      Width = 165
      Height = 25
      Caption = 'Ambil Keterangan PO'
      TabOrder = 20
      OnClick = btnAmbilKetClick
    end
    object btnShowMemo: TButton
      Left = 572
      Top = 208
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 21
      OnClick = btnShowMemoClick
    end
    object cxMemo2: TcxMemo
      Left = 99
      Top = 261
      Properties.CharCase = ecUpperCase
      TabOrder = 22
      OnExit = cxMemo2Exit
      Height = 86
      Width = 471
    end
    object cxlNoPO: TcxLookupComboBox
      Left = 99
      Top = 33
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. PO'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'Supplier'
          FieldName = 'nama_supplier'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoPO
      Properties.OnEditValueChanged = cxlNoPOPropertiesEditValueChanged
      TabOrder = 23
      Width = 122
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 136
      Caption = 'Alamat Kirim'
    end
    object cxlAlmKirim: TcxLookupComboBox
      Left = 99
      Top = 133
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end
        item
          Caption = 'Alamat'
          FieldName = 'alamat'
        end
        item
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAlmKirim
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = cxLUCustPropertiesEditValueChanged
      TabOrder = 25
      Width = 472
    end
    object cxLabel3: TcxLabel
      Left = 226
      Top = 35
      Caption = 'No. SJ'
    end
    object cxtNoSJ: TcxTextEdit
      Left = 272
      Top = 33
      Properties.CharCase = ecUpperCase
      TabOrder = 27
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Divisi'
    end
    object cxtDivisi: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.ReadOnly = True
      TabOrder = 29
      Width = 121
    end
    object btnSPBBOpen: TButton
      Left = 230
      Top = 69
      Width = 141
      Height = 25
      Caption = 'SPBB Terbuka'
      TabOrder = 30
      OnClick = btnSPBBOpenClick
    end
    object pnlOpenSPBB: TPanel
      Left = 230
      Top = 98
      Width = 300
      Height = 221
      Caption = 'pnlOpenSPBB'
      TabOrder = 31
      Visible = False
      OnExit = pnlOpenSPBBExit
      object cxGrdSPBBOpen: TcxGrid
        Left = 10
        Top = 13
        Width = 252
        Height = 197
        TabOrder = 0
        object cxTblSPBBOpen: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsSPBBOpen
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object cxTblSPBBOpenno_bukti: TcxGridDBColumn
            Caption = 'No. SPBB'
            DataBinding.FieldName = 'no_bukti'
            Width = 110
          end
          object cxTblSPBBOpentanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            Width = 95
          end
        end
        object cxGrdSPBBOpenLevel1: TcxGridLevel
          GridView = cxTblSPBBOpen
        end
      end
      object btnClosePnl: TButton
        Left = 270
        Top = 5
        Width = 25
        Height = 21
        Caption = 'X'
        TabOrder = 1
        OnClick = btnClosePnlClick
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 526
    Width = 944
    Height = 62
    inherited btnKeluar: TButton
      Left = 434
      Top = 18
    end
    inherited btnBaru: TButton
      Left = 750
      Top = 18
    end
    inherited btnEdit: TButton
      Left = 670
      Top = 18
    end
    inherited btnHapus: TButton
      Left = 590
      Top = 18
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 93
      Top = 18
      Caption = 'SPBB Baru'
      Visible = True
    end
    inherited btnSimpan: TButton
      Top = 18
    end
    object btnCetakSJ: TButton
      Left = 274
      Top = 18
      Width = 157
      Height = 25
      Caption = 'Posting Penerimaan Barang'
      TabOrder = 6
      OnClick = btnCetakSJClick
    end
    object btnCetakSPMB: TButton
      Left = 171
      Top = 18
      Width = 100
      Height = 25
      Caption = 'Cetak SPBB'
      TabOrder = 7
      OnClick = btnCetakSPMBClick
    end
  end
  object pnlMemo: TPanel
    Left = 846
    Top = 72
    Width = 446
    Height = 321
    Caption = 'pnlMemo'
    Color = clSkyBlue
    TabOrder = 3
    Visible = False
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
      
        'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM t' +
        'bl_spbb_head a '
      'LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode '
      'WHERE no_penerimaan IS NULL'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrSupp: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_supplier'
      'ORDER BY nama')
    Params = <>
    Left = 410
    Top = 16
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 439
    Top = 16
  end
  object zqrNoSO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal FROM v_so_head WHERE kode_customer = :k' +
        'ode_customer'
      'ORDER BY tanggal DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 565
    Top = 91
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 595
    Top = 91
  end
  object zqrNoPO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_po_head'
      'WHERE f_completed = 0 AND f_approval = 1'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 640
    Top = 141
  end
  object dsNoPO: TDataSource
    DataSet = zqrNoPO
    Left = 670
    Top = 141
  end
  object zqrAlmKirim: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_alamat_kirim'
      'ORDER BY nama')
    Params = <>
    Left = 625
    Top = 91
  end
  object dsAlmKirim: TDataSource
    DataSet = zqrAlmKirim
    Left = 655
    Top = 91
  end
  object zqrSPBBOpen: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT no_bukti, tanggal FROM tbl_spbb_head '
      'WHERE no_po = :no_po AND no_penerimaan IS NULL')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_po'
        ParamType = ptUnknown
      end>
    Left = 640
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_po'
        ParamType = ptUnknown
      end>
  end
  object dsSPBBOpen: TDataSource
    DataSet = zqrSPBBOpen
    Left = 670
    Top = 174
  end
end
