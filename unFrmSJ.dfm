inherited frmSJ: TfrmSJ
  Top = 54
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Surat Jalan'
  ClientHeight = 564
  ClientWidth = 877
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 877
    inherited lblJudul: TLabel
      Width = 92
      Caption = 'Surat Jalan'
    end
    object btnEdit2: TButton
      Left = 414
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      Visible = False
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 493
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
      Visible = False
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Width = 877
    Height = 431
    object Label5: TLabel
      Left = 704
      Top = 405
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Surat Jalan'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object btnCariPO: TButton
      Left = 692
      Top = 53
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 2
      Visible = False
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 245
      Width = 840
      Height = 152
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 3
      TabStop = True
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
        Position = 4
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SO'
        Header.Alignment = taRightJustify
        Position = 5
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn3: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Kirim'
        Header.Alignment = taRightJustify
        Position = 6
        SortType = stNumeric
        Visible = False
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 193
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit2
        Position = 7
        SortType = stAlphabetic
        Width = 193
      end
      object NxTextColumn3: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 8
        SortType = stAlphabetic
        Visible = False
      end
      object NxTextColumn6: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 9
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 301
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 4
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 757
      Top = 402
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 5
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
      Properties.ReadOnly = True
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 7
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 245
      Top = 26
      Caption = 'Gudang Tujuan'
      Visible = False
    end
    object cxCmbGdg: TcxComboBox
      Left = 329
      Top = 24
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 9
      Visible = False
      OnEnter = cxCmbGdgEnter
      Width = 121
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 453
      Top = 24
      Properties.ReadOnly = True
      TabOrder = 10
      Visible = False
      Width = 202
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 314
      Top = 126
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
      TabOrder = 11
      Visible = False
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 335
      Top = 204
      Caption = 'Nama Barang'
      Visible = False
    end
    object btnTambah: TButton
      Left = 790
      Top = 124
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 13
      Visible = False
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 244
      Top = 306
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
    object cxLabel4: TcxLabel
      Left = 615
      Top = 90
      Caption = 'No. SPMB'
      Visible = False
    end
    object btnCariSPMB: TButton
      Left = 797
      Top = 83
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 16
      Visible = False
      OnClick = btnCariSPMBClick
    end
    object cxLUCust: TcxLookupComboBox
      Left = 314
      Top = 148
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      Properties.OnChange = cxLUCustPropertiesChange
      TabOrder = 17
      Visible = False
      Width = 472
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Customer'
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 85
      Caption = 'No. SPMB'
    end
    object cxLUSPMB: TcxLookupComboBox
      Left = 424
      Top = 88
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. SPMB'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoSPMB
      Properties.OnChange = cxLUSPMBPropertiesChange
      TabOrder = 20
      Visible = False
      Width = 192
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 185
      Caption = 'No. Polisi'
    end
    object cxtNopol: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 183
      Properties.ReadOnly = True
      TabOrder = 22
      Width = 121
    end
    object cxtDriver: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 208
      Properties.ReadOnly = True
      TabOrder = 23
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 210
      Caption = 'Driver'
    end
    object Label2: TcxLabel
      Left = 15
      Top = 110
      Caption = 'No. SO'
    end
    object cxtNoSO: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 108
      Properties.ReadOnly = True
      TabOrder = 26
      Width = 192
    end
    object cxtNoSPMB: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.ReadOnly = True
      TabOrder = 27
      Width = 192
    end
    object cxtNamaCust: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 28
      Width = 472
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 135
      Caption = 'PO#'
    end
    object cxtPO: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 133
      Properties.ReadOnly = True
      TabOrder = 30
      Width = 192
    end
    object cxLabel11: TcxLabel
      Left = 15
      Top = 160
      Caption = 'SC#'
    end
    object cxtSC: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 158
      Properties.ReadOnly = True
      TabOrder = 32
      Width = 192
    end
  end
  inherited pnlBawah: TPanel
    Top = 497
    Width = 877
    Height = 67
    inherited btnKeluar: TButton
      Left = 128
      Top = 20
    end
    inherited btnBaru: TButton
      Left = 770
      Top = 10
    end
    inherited btnEdit: TButton
      Left = 540
      Top = 10
    end
    inherited btnHapus: TButton
      Left = 615
      Top = 10
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 405
      Top = 10
    end
    inherited btnSimpan: TButton
      Left = 230
      Top = 10
      Visible = False
    end
    object Button1: TButton
      Left = 16
      Top = 20
      Width = 110
      Height = 25
      Caption = 'Cetak Surat Jalan'
      TabOrder = 6
      OnClick = Button1Click
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
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept FROM tbl_trsmasuk_head'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrCust: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'ORDER BY nama')
    Params = <>
    Left = 280
    Top = 21
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 310
    Top = 21
  end
  object zqrNoSPMB: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT DISTINCT no_bukti, tanggal FROM v_spmb_det WHERE kode_cus' +
        'tomer = :kode_customer '
      'AND f_completed = 0'
      'ORDER BY tanggal DESC')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 355
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsNoSPMB: TDataSource
    DataSet = zqrNoSPMB
    Left = 385
    Top = 156
  end
end
