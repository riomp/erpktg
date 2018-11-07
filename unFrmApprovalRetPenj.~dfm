object frmApprovalRetPenj: TfrmApprovalRetPenj
  Left = 254
  Top = 125
  Width = 1056
  Height = 546
  Caption = 'Approval Retur Penjualan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object nxGrd: TNextGrid
    Left = 20
    Top = 30
    Width = 1001
    Height = 139
    Options = [goGrid, goHeader]
    TabOrder = 0
    TabStop = True
    OnAfterEdit = nxGrdAfterEdit
    OnCellClick = nxGrdCellClick
    object TNxTextColumn1: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. Retur'
      Position = 0
      SortType = stAlphabetic
    end
    object NxTextColumn1: TNxTextColumn
      DefaultWidth = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPBB'
      Position = 1
      SortType = stAlphabetic
      Width = 88
    end
    object TNxDateColumn1: TNxDateColumn
      DefaultValue = '08/12/2013'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Tanggal'
      Position = 2
      SortType = stDate
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object nxColJenisRetur: TNxTextColumn
      DefaultWidth = 278
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Jenis Retur'
      Position = 3
      SortType = stAlphabetic
      Width = 278
    end
    object nxColUser: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'User'
      Position = 4
      SortType = stAlphabetic
    end
    object TNxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dept'
      Position = 5
      SortType = stAlphabetic
    end
    object nxColJenisRetur2: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = 6
      SortType = stAlphabetic
      Visible = False
    end
    object nxColApproval: TNxCheckBoxColumn
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Approval'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 7
      SortType = stBoolean
    end
    object nxColNotApproval: TNxCheckBoxColumn
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Tidak Approval'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 8
      SortType = stBoolean
    end
  end
  object btnApproval: TButton
    Left = 20
    Top = 471
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btnApprovalClick
  end
  object NextDBGrid1: TNextDBGrid
    Left = 20
    Top = 192
    Width = 1001
    Height = 139
    Options = [goGrid, goHeader]
    TabOrder = 2
    TabStop = True
    Visible = False
    DataAwareOptions = []
    DataSource = dsDetKor
    object NxDBTextColumn1: TNxDBTextColumn
      DefaultWidth = 73
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 0
      SortType = stAlphabetic
      Width = 73
      FieldName = 'kode_brg'
    end
    object NxDBTextColumn2: TNxDBTextColumn
      DefaultWidth = 304
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 304
      FieldName = 'deskripsi'
    end
    object nxColGdg: TNxDBComboBoxColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stAlphabetic
      FieldName = 'gudang'
      AutoDropDown = True
      DropDownCount = 8
    end
    object NxDBTextColumn8: TNxDBTextColumn
      DefaultWidth = 255
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Nama Customer'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stAlphabetic
      Width = 255
      FieldName = 'nama'
    end
    object NxDBTextColumn3: TNxDBTextColumn
      DefaultValue = '0'
      DefaultWidth = 84
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SO'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 4
      SortType = stAlphabetic
      Width = 84
      FieldName = 'no_so'
    end
    object NxDBTextColumn6: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SJ'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 5
      SortType = stAlphabetic
      FieldName = 'no_sj'
    end
    object NxDBTextColumn7: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPMB'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 6
      SortType = stAlphabetic
      FieldName = 'no_spmb'
    end
    object NxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 61
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Qty. Retur'
      Position = 7
      SortType = stNumeric
      Width = 61
      FieldName = 'qty'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBTextColumn4: TNxDBTextColumn
      DefaultWidth = 48
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Satuan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 8
      SortType = stAlphabetic
      Width = 48
      FieldName = 'satuan'
    end
    object NxDBTextColumn5: TNxDBTextColumn
      DefaultWidth = 232
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Keterangan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 9
      SortType = stAlphabetic
      Width = 232
      FieldName = 'keterangan'
    end
  end
  object btnBatal: TButton
    Left = 100
    Top = 471
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 3
    OnClick = btnBatalClick
  end
  object cxLabel1: TcxLabel
    Left = 20
    Top = 173
    Caption = 'Detail Transaksi :'
  end
  object cxLabel2: TcxLabel
    Left = 20
    Top = 10
    Caption = 'Retur Penjualan'
  end
  object nxGrdDet: TNextGrid
    Left = 20
    Top = 191
    Width = 1001
    Height = 270
    Options = [goGrid, goHeader]
    TabOrder = 6
    TabStop = True
    OnAfterEdit = nxGrdDetAfterEdit
    object nxColBuatLKM: TNxCheckBoxColumn
      Alignment = taCenter
      DefaultWidth = 46
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'LKM ?'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 0
      SortType = stBoolean
      Width = 46
    end
    object nxColKodeBrg: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Position = 1
      SortType = stAlphabetic
    end
    object nxColDesk: TNxTextColumn
      DefaultWidth = 241
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Position = 2
      SortType = stAlphabetic
      Width = 241
    end
    object nxColGudang: TNxComboBoxColumn
      Color = clMoneyGreen
      DefaultWidth = 46
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stAlphabetic
      Width = 46
      AutoDropDown = True
      Style = cbsDropDownList
    end
    object nxColNmCust: TNxTextColumn
      DefaultWidth = 197
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Nama Customer'
      Position = 4
      SortType = stAlphabetic
      Width = 197
    end
    object nxColNoSJ: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SJ'
      Position = 5
      SortType = stAlphabetic
    end
    object nxColNoSO: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SO'
      Position = 6
      SortType = stAlphabetic
    end
    object nxColNoSPMB: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPMB'
      Position = 7
      SortType = stAlphabetic
    end
    object nxColQtyRetur: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Qty. Retur'
      Position = 8
      SortType = stNumeric
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
      Position = 9
      SortType = stAlphabetic
    end
    object nxColKet: TNxTextColumn
      DefaultWidth = 150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Keterangan'
      Position = 10
      SortType = stAlphabetic
      Width = 150
    end
    object nxColJenis: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = 11
      SortType = stAlphabetic
    end
  end
  object pnlLKM: TPanel
    Left = 72
    Top = 215
    Width = 480
    Height = 216
    TabOrder = 7
    OnExit = pnlLKMExit
    object cxLabel3: TcxLabel
      Left = 7
      Top = 5
      Caption = 'Deskripsi Ketidaksesuaian :'
    end
    object cxmDeskLKM: TcxMemo
      Left = 10
      Top = 25
      Properties.CharCase = ecUpperCase
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Height = 86
      Width = 460
    end
    object cxLabel4: TcxLabel
      Left = 7
      Top = 117
      Caption = 'Qty. LKM'
    end
    object cxsQtyLKM: TcxSpinEdit
      Left = 60
      Top = 115
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      TabOrder = 3
      Width = 121
    end
    object btnSimpanLKM: TButton
      Left = 10
      Top = 185
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 4
      OnClick = btnSimpanLKMClick
    end
    object btnBatalLKM: TButton
      Left = 88
      Top = 185
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 5
      OnClick = btnBatalLKMClick
    end
    object cxLabel5: TcxLabel
      Left = 7
      Top = 142
      Caption = 'Dept.'
    end
    object cxlDept: TcxLookupComboBox
      Left = 60
      Top = 140
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'bagian'
      Properties.ListColumns = <
        item
          Caption = 'Dept'
          FieldName = 'bagian'
        end
        item
          Caption = 'Manager'
          FieldName = 'manager'
        end
        item
          Caption = 'Email'
          FieldName = 'email'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsBagian
      TabOrder = 7
      Width = 121
    end
    object btnTambahFoto: TButton
      Left = 341
      Top = 115
      Width = 130
      Height = 25
      Caption = 'Tambah Foto'
      TabOrder = 8
      OnClick = btnTambahFotoClick
    end
    object lblJmlImage: TcxLabel
      Left = 340
      Top = 142
    end
  end
  object zqrKorHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, no_spbb, tanggal,'
      
        'IF(jenis_retur=0,'#39'RETUR ADMIN SO TERBUKA'#39',IF(jenis_retur=1,'#39'RETU' +
        'R ADMIN SO TERTUTUP'#39', IF(jenis_retur = 2,'#39'RETUR CCR'#39','#39#39'))) jenis' +
        '_retur2,'
      'user, user_dept, jenis_retur '
      'FROM tbl_trsreturpenj_head WHERE f_approval = 0')
    Params = <>
    Left = 295
    Top = 110
  end
  object dsKorHead: TDataSource
    DataSet = zqrDetKor
    Left = 330
    Top = 110
  end
  object nxDC: TNxDataCellSource
    Associate = nxGrd
    DataSet = zqrKorHead
    Left = 495
    Top = 115
  end
  object zqrDetKor: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.*, b.deskripsi, d.nama, e.jenis_retur FROM tbl_trsretur' +
        'penj_det a '
      'INNER JOIN tbl_trsreturpenj_head e on a.no_bukti = e.no_bukti'
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode '
      'LEFT JOIN tbl_so_head c ON a.no_so = c.no_bukti '
      'LEFT JOIN tbl_customer d ON c.kode_customer = d.kode'
      'WHERE a.no_bukti = :no_trans')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_trans'
        ParamType = ptUnknown
      end>
    Left = 295
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_trans'
        ParamType = ptUnknown
      end>
  end
  object dsDetKor: TDataSource
    DataSet = zqrDetKor
    Left = 330
    Top = 140
  end
  object idSMTP: TIdSMTP
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 525
    Top = 115
  end
  object tmpTbl: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'no_so'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'deskripsi_ks'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'kode_brg'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'dept'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mgr'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'deskripsi'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.18.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 825
    Top = 120
    object tmpTblno_so: TStringField
      FieldName = 'no_so'
    end
    object tmpTbldeskripsi_ks: TStringField
      FieldName = 'deskripsi_ks'
      Size = 1000
    end
    object tmpTblkode_brg: TStringField
      FieldName = 'kode_brg'
    end
    object tmpTblqty: TFloatField
      FieldName = 'qty'
    end
    object tmpTbldept: TStringField
      FieldName = 'dept'
    end
    object tmpTblmgr: TStringField
      FieldName = 'mgr'
      Size = 0
    end
    object tmpTblemail: TStringField
      FieldName = 'email'
    end
    object tmpTbldeskripsi: TStringField
      FieldName = 'deskripsi'
    end
  end
  object zqrBagian: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT user_dept as bagian, nama as manager, ucase(email) as ema' +
        'il FROM tbl_user where jabatan='#39'MANAGER'#39' '
      'ORDER BY nama')
    Params = <>
    Left = 716
    Top = 132
  end
  object dsBagian: TDataSource
    DataSet = zqrBagian
    Left = 746
    Top = 132
  end
end
