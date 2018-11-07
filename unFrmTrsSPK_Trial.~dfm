inherited frmTrsSPK_Trial: TfrmTrsSPK_Trial
  Left = 190
  Top = 24
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SPK Trial'
  ClientHeight = 635
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
      Width = 75
      Caption = 'SPK Trial'
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
    Height = 496
    object Label1: TLabel
      Left = 804
      Top = 470
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
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
      TabOrder = 1
      Width = 121
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 229
      Width = 940
      Height = 57
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
      object nxColDesk: TNxTextColumn
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
        Position = 5
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKeterangan: TNxTextColumn
        DefaultWidth = 374
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = nxColBtnEdit
        Position = 6
        SortType = stAlphabetic
        Width = 374
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
      Left = 685
      Top = 194
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
      TabOrder = 5
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
      TabOrder = 7
      Visible = False
      Width = 121
    end
    object cxtNamaGdg: TcxTextEdit
      Left = 468
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 8
      Visible = False
      Width = 202
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 779
      Top = 3
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
      TabOrder = 9
      Visible = False
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel3: TcxLabel
      Left = 695
      Top = 6
      Caption = 'Nama Barang'
      Visible = False
    end
    object btnTambah: TButton
      Left = 867
      Top = 149
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 11
      Visible = False
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 529
      Top = 164
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 12
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
      TabOrder = 14
      Visible = False
      Width = 121
    end
    object cxtNamaGdg2: TcxTextEdit
      Left = 463
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 15
      Visible = False
      Width = 202
    end
    object nxGrd2: TNextGrid
      Left = 16
      Top = 330
      Width = 940
      Height = 132
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 16
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
        Visible = False
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
        Position = 9
        SortType = stAlphabetic
        Visible = False
        Width = 162
      end
    end
    object NxEdit3: TNxEdit
      Left = 64
      Top = 402
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
    object NxEdit4: TNxEdit
      Left = 154
      Top = 402
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
    object cxLUBrg2: TcxLookupComboBox
      Left = 659
      Top = 334
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
      TabOrder = 19
      Visible = False
      OnKeyPress = cxLUBrg2KeyPress
      Width = 471
    end
    object btnTambah2: TButton
      Left = 1157
      Top = 274
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 20
      Visible = False
      OnClick = btnTambah2Click
    end
    object cxsTotalQty2: TcxSpinEdit
      Left = 857
      Top = 467
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 21
      Visible = False
      Width = 99
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 60
      Caption = 'No. Trial'
    end
    object cxlNoSO: TcxLookupComboBox
      Left = 744
      Top = 28
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
      TabOrder = 23
      Visible = False
      Width = 169
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 305
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
      Top = 175
      Caption = 'Target Selesai'
    end
    object cxdTrgSelesai: TcxDateEdit
      Left = 99
      Top = 173
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 26
      Width = 121
    end
    object btnCariBrg: TButton
      Left = 843
      Top = 151
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 27
      Visible = False
      OnClick = btnCariBrgClick
    end
    object btnCariBrg2: TButton
      Left = 1133
      Top = 276
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 28
      Visible = False
      OnClick = btnCariBrg2Click
    end
    object nxColBtnEdit: TNxButtonEdit
      Left = 805
      Top = 196
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 29
      Text = 'nxColBtnEdit'
      ReadOnly = True
      Visible = False
      ButtonCaption = '...'
      TransparentColor = clNone
    end
    object cxLabel10: TcxLabel
      Left = 15
      Top = 200
      Caption = 'Ket. PPIC'
    end
    object cxtKetPPIC: TcxTextEdit
      Left = 99
      Top = 198
      Properties.CharCase = ecUpperCase
      TabOrder = 31
      Width = 522
    end
    object cxLabel7: TcxLabel
      Left = 475
      Top = 303
      Caption = 'Jenis BOM'
      Visible = False
    end
    object cxtJenisBom: TcxTextEdit
      Left = 535
      Top = 301
      Properties.ReadOnly = True
      TabOrder = 33
      Visible = False
      Width = 121
    end
    object cxtNoTrial: TcxTextEdit
      Left = 99
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 34
      Width = 121
    end
    object cxLabel11: TcxLabel
      Left = 17
      Top = 150
      Caption = 'Mesin'
    end
    object cxlMesin: TcxLookupComboBox
      Left = 99
      Top = 148
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama Mesin'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode Mesin'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsMesin
      TabOrder = 36
      Width = 217
    end
    object cxLabel12: TcxLabel
      Left = 17
      Top = 85
      Caption = 'Deskripsi'
    end
    object cxLabel13: TcxLabel
      Left = 17
      Top = 102
      Caption = 'Trial'
    end
    object cxmDeskTrial: TcxMemo
      Left = 99
      Top = 83
      Properties.ReadOnly = True
      TabOrder = 39
      Height = 61
      Width = 422
    end
  end
  inherited pnlBawah: TPanel
    Top = 562
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
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_mesin'
      'WHERE f_aktif = 1'
      'ORDER BY nama ASC')
    Params = <>
    Left = 400
    Top = 21
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 430
    Top = 21
  end
end
