inherited frmTrsSPKGiling: TfrmTrsSPKGiling
  Left = 249
  Top = 76
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi SPK Giling'
  ClientHeight = 428
  ClientWidth = 790
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 790
    inherited lblJudul: TLabel
      Width = 168
      Caption = 'Transaksi SPK Giling'
    end
    object btnEdit2: TButton
      Left = 441
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 520
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
    Width = 790
    Height = 285
    object Label5: TLabel
      Left = 619
      Top = 260
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
      Top = 116
      Width = 755
      Height = 135
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
      object nxColNama: TNxTextColumn
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
      object nxColSat: TNxTextColumn
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
        Position = 6
        SortType = stAlphabetic
        Width = 124
      end
    end
    object NxEdit1: TNxEdit
      Left = 55
      Top = 162
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
      Top = 256
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
      Top = 87
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
      Top = 90
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 575
      Top = 85
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 12
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 144
      Top = 162
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
    object cxLabel8: TcxLabel
      Left = 647
      Top = 42
      Caption = 'No. SO MDA'
      Visible = False
    end
    object cxlNoSO: TcxLookupComboBox
      Left = 604
      Top = 20
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
      TabOrder = 18
      Visible = False
      Width = 169
    end
  end
  inherited pnlBawah: TPanel
    Top = 351
    Width = 790
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
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrNoSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal, nama FROM v_so_head WHERE f_completed ' +
        '= 0')
    Params = <>
    Left = 655
    Top = 121
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 690
    Top = 121
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 570
    Top = 110
  end
end
