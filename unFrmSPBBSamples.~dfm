inherited frmSPBBSamples: TfrmSPBBSamples
  Left = 289
  Top = 80
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Surat Permintaan Bongkar Barang - Samples'
  ClientHeight = 585
  ClientWidth = 944
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 944
    inherited lblJudul: TLabel
      Width = 365
      Caption = 'Surat Permintaan Bongkar Barang - Samples'
    end
    object btnEdit2: TButton
      Left = 595
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 675
      Top = 17
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
      Top = 39
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
      Top = 415
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 10
      Caption = 'No. SPBS'
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
      Top = 195
      Width = 910
      Height = 209
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
        Visible = False
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
        Header.Caption = 'Kode Brg.'
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
        Position = 4
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
        Position = 5
        SortType = stNumeric
        Visible = False
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
        Position = 6
        SortType = stNumeric
        Visible = False
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
        Position = 7
        SortType = stAlphabetic
        Visible = False
      end
      object nxColSatuan: TNxTextColumn
        DefaultWidth = 68
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 8
        SortType = stAlphabetic
        Width = 68
      end
      object nxColGudang: TNxComboBoxColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang'
        Position = 9
        SortType = stAlphabetic
        Items.Strings = (
          '')
        Style = cbsDropDownList
      end
      object nxColNoSO: TNxTextColumn
        DefaultWidth = 97
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        Position = 10
        SortType = stAlphabetic
        Visible = False
        Width = 97
      end
      object nxColDiretur: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Dipesan'
        Header.Alignment = taRightJustify
        Position = 11
        SortType = stNumeric
        Visible = False
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Position = 12
        SortType = stAlphabetic
        Visible = False
        Width = 124
      end
      object nxColCust: TNxTextColumn
        DefaultWidth = 250
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Customer'
        Position = 13
        SortType = stAlphabetic
        Visible = False
        Width = 250
      end
      object nxColKodeCust: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 14
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 395
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
      Top = 410
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 4
      Width = 99
    end
    object cxLabel6: TcxLabel
      Left = 20
      Top = 36
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
    object NxEdit2: TNxEdit
      Left = 249
      Top = 400
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 7
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxLabel5: TcxLabel
      Left = 20
      Top = 86
      Caption = 'No. Polisi'
    end
    object cxtNopol: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 9
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 20
      Top = 110
      Caption = 'Driver'
    end
    object cxtDriver: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 108
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 11
      Width = 212
    end
    object cxChkSudahSJ: TcxCheckBox
      Left = 753
      Top = 99
      Caption = 'Sudah Buat Surat Penerimaan Barang'
      Properties.ReadOnly = True
      TabOrder = 13
      Visible = False
      Width = 253
    end
    object cxLabel10: TcxLabel
      Left = 681
      Top = 40
      Caption = 'No. Retur'
      Visible = False
    end
    object cxLabel7: TcxLabel
      Left = 20
      Top = 61
      Caption = 'Supplier'
    end
    object NxEdit3: TNxEdit
      Left = 540
      Top = 395
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 16
      Text = 'NXEDIT3'
      Visible = False
    end
    object cxLabel11: TcxLabel
      Left = 20
      Top = 135
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 133
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 12
      Width = 471
    end
    object btnAmbilKet: TButton
      Left = 16
      Top = 409
      Width = 165
      Height = 25
      Caption = 'Ambil Keterangan PO'
      TabOrder = 18
      Visible = False
      OnClick = btnAmbilKetClick
    end
    object btnShowMemo: TButton
      Left = 1237
      Top = 163
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 19
      Visible = False
      OnClick = btnShowMemoClick
    end
    object cxMemo2: TcxMemo
      Left = 99
      Top = 286
      Properties.CharCase = ecUpperCase
      TabOrder = 20
      OnExit = cxMemo2Exit
      Height = 86
      Width = 471
    end
    object cxlNoRetur: TcxLookupComboBox
      Left = 764
      Top = 38
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Retur'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'No. CCR'
          FieldName = 'no_ccr'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoRetur
      Properties.OnEditValueChanged = cxlNoReturPropertiesEditValueChanged
      TabOrder = 21
      Visible = False
      Width = 122
    end
    object cxLabel2: TcxLabel
      Left = 1360
      Top = 86
      Caption = 'Alamat Kirim'
      Visible = False
    end
    object cxLabel3: TcxLabel
      Left = 891
      Top = 40
      Caption = 'No. CCR'
      Visible = False
    end
    object cxtNoCCR: TcxTextEdit
      Left = 942
      Top = 38
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 24
      Visible = False
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 1270
      Top = 40
      Caption = 'Divisi'
      Visible = False
    end
    object cxtDivisi: TcxTextEdit
      Tag = 1
      Left = 1299
      Top = 38
      Properties.ReadOnly = True
      TabOrder = 26
      Visible = False
      Width = 121
    end
    object cxtCustomer: TcxTextEdit
      Tag = 1
      Left = 744
      Top = 133
      Properties.ReadOnly = True
      TabOrder = 27
      Visible = False
      Width = 472
    end
    object cxLabel9: TcxLabel
      Left = 1066
      Top = 40
      Caption = 'No. SO'
      Visible = False
    end
    object cxtNoSO: TcxTextEdit
      Left = 1110
      Top = 38
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 29
      Visible = False
      Width = 121
    end
    object cxtKodeCust: TcxTextEdit
      Tag = 1
      Left = 1114
      Top = 128
      Properties.ReadOnly = True
      TabOrder = 30
      Visible = False
      Width = 121
    end
    object cxLabel12: TcxLabel
      Left = 681
      Top = 65
      Caption = 'Jenis Retur'
      Visible = False
    end
    object cxtJenisRetur: TcxTextEdit
      Left = 764
      Top = 63
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 32
      Visible = False
      Width = 497
    end
    object chkSOTerbuka: TCheckBox
      Left = 1265
      Top = 65
      Width = 97
      Height = 17
      Caption = 'chkSOTerbuka'
      TabOrder = 33
      Visible = False
    end
    object cxLuSupplier: TcxLookupComboBox
      Left = 99
      Top = 58
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'NAMA'
          FieldName = 'nama'
        end
        item
          Caption = 'KODE'#13#10
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSupplier
      Properties.OnChange = cxLuSupplierPropertiesChange
      TabOrder = 34
      Width = 311
    end
    object cxtKodeSupplier: TcxTextEdit
      Left = 490
      Top = 50
      TabOrder = 35
      Visible = False
      Width = 46
    end
    object cxlbl1: TcxLabel
      Left = 20
      Top = 159
      Caption = 'Nama Barang'
    end
    object cxLuBarang: TcxLookupComboBox
      Left = 99
      Top = 158
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'NAMA'
          FieldName = 'deskripsi'
        end
        item
          Caption = 'KODE'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsBarang
      TabOrder = 37
      Width = 511
    end
    object btnCariBrg: TcxButton
      Left = 613
      Top = 158
      Width = 26
      Height = 21
      Caption = '...'
      TabOrder = 38
      OnClick = btnCariBrgClick
    end
    object btnTambah: TcxButton
      Left = 641
      Top = 155
      Width = 71
      Height = 26
      Caption = 'Tambah'
      TabOrder = 39
      OnClick = btnTambahClick
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
    Left = 951
    Top = 82
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
      Top = 15
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      OnExit = cxMemoExit
      Height = 421
      Width = 426
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
    Params = <>
    Left = 1085
    Top = 106
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 1115
    Top = 106
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 490
    Top = 21
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM t' +
        'bl_spbb_head a '
      'LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode '
      'WHERE no_penerimaan IS NULL and LEFT(a.no_bukti,4) = '#39'SPBS'#39
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 460
    Top = 21
  end
  object zqrSupp: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_supplier'
      'ORDER BY nama')
    Params = <>
    Left = 530
    Top = 16
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 559
    Top = 16
  end
  object zqrNoSO: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
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
    Left = 1150
    Top = 106
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 1180
    Top = 106
  end
  object zqrNoRetur: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, no_ccr, jenis_retur '
      'FROM tbl_trsreturpenj_head a '
      'WHERE (f_approval = 1)'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 565
    Top = 61
  end
  object dsNoRetur: TDataSource
    DataSet = zqrNoRetur
    Left = 595
    Top = 61
  end
  object zqrAlmKirim: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_alamat_kirim'
      'ORDER BY nama')
    Params = <>
    Left = 1210
    Top = 106
  end
  object dsAlmKirim: TDataSource
    DataSet = zqrAlmKirim
    Left = 1240
    Top = 106
  end
  object zqrSupplier: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'select kode, nama from tbl_supplier order by nama')
    Params = <>
    Left = 415
    Top = 111
  end
  object dsSupplier: TDataSource
    DataSet = zqrSupplier
    Left = 445
    Top = 111
  end
  object dsBarang: TDataSource
    DataSet = zqrBarang
    Left = 610
    Top = 186
  end
  object zqrBarang: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'select kode, deskripsi from tbl_barang where f_aktif = 1 order b' +
        'y deskripsi')
    Params = <>
    Left = 580
    Top = 186
  end
end
