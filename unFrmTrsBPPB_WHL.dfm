object frmTrsBPPB_WHL: TfrmTrsBPPB_WHL
  Left = 244
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi BPPB'
  ClientHeight = 516
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 66
    Align = alTop
    TabOrder = 0
    object lblJudul: TLabel
      Left = 15
      Top = 21
      Width = 128
      Height = 19
      Caption = 'Transaksi BPPB'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 66
    Width = 1084
    Height = 375
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 891
      Top = 347
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 18
      Caption = 'No. Transaksi'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 97
      Top = 16
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 44
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 97
      Top = 41
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 68
      Caption = 'No. SO MDB'
    end
    object cxtNoSO: TcxTextEdit
      Left = 97
      Top = 66
      Enabled = False
      Properties.CharCase = ecUpperCase
      TabOrder = 5
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 382
      Top = 13
      Caption = 'No. SPK'
      Visible = False
    end
    object nxGrd: TNextGrid
      Left = 15
      Top = 154
      Width = 1049
      Height = 181
      FixedCols = 3
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 7
      TabStop = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnBeforeEdit = nxGrdBeforeEdit
      OnCellDblClick = nxGrdCellDblClick
      OnKeyDown = nxGrdKeyDown
      StartRowCount = 1
      object nxColChk: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Check'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 0
        SortType = stBoolean
        Width = 38
      end
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 43
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Position = 1
        SortType = stNumeric
        Width = 43
        Images = frmUtama.ImageList1
      end
      object nxNoUrut: TNxIncrementColumn
        DefaultWidth = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Options = [coCanClick, coCanInput, coPublicUsing]
        Position = 2
        SortType = stAlphabetic
        Width = 24
      end
      object nxColKodeBrg: TNxTextColumn
        DefaultWidth = 78
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Kode Brg.'
        Header.Caption = 'Kode Brg.'
        InplaceEdit = NxEdit1
        Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
        Position = 3
        SortType = stAlphabetic
        Width = 78
      end
      object NxTextColumn2: TNxButtonColumn
        DefaultWidth = 218
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Barang'
        InplaceEdit = NxButtonEdit1
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 4
        SortType = stAlphabetic
        Width = 218
      end
      object NxTextColumn6: TNxTextColumn
        DefaultWidth = 69
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 5
        SortType = stAlphabetic
        Width = 69
      end
      object nxCmb: TNxComboBoxColumn
        DefaultWidth = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang'
        Position = 6
        SortType = stAlphabetic
        Width = 57
        Style = cbsDropDownList
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Gudang'
        Position = 7
        SortType = stAlphabetic
        Width = 113
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 62
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Stok'
        Header.Alignment = taRightJustify
        Position = 8
        SortType = stNumeric
        Width = 62
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxCmb2: TNxComboBoxColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang Tujuan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 9
        SortType = stAlphabetic
        Style = cbsDropDownList
      end
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 107
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Gudang'
        Position = 10
        SortType = stAlphabetic
        Width = 107
      end
      object NxNumberColumn3: TNxNumberColumn
        Color = clMoneyGreen
        DefaultValue = '0'
        DefaultWidth = 65
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SO'
        Header.Alignment = taRightJustify
        Position = 11
        SortType = stNumeric
        Width = 65
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyMutasi: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Mutasi'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 12
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxMemoColumn1: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Referensi'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 13
        SortType = stAlphabetic
        Visible = False
      end
      object NxTextColumn5: TNxTextColumn
        DefaultWidth = 150
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 14
        SortType = stAlphabetic
        Width = 150
      end
    end
    object NxEdit1: TNxEdit
      Left = 204
      Top = 184
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 8
      Text = 'NxEdit1'
      Visible = False
      OnDblClick = NxEdit1DblClick
      OnKeyDown = NxEdit1KeyDown
    end
    object pbNumTot: TPBNumEdit
      Tag = 1
      Left = 506
      Top = 346
      Width = 100
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Color = clMoneyGreen
      Decimals = 0
      NumberFormat = Thousands
      ReadOnly = True
      TabOrder = 9
      Visible = False
    end
    object btnHapus: TButton
      Left = 365
      Top = 265
      Width = 75
      Height = 25
      Caption = '&Hapus Baris'
      TabOrder = 10
      Visible = False
      OnClick = btnHapusClick
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 470
      Top = 25
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 11
      Visible = False
      OnButtonClick = NxButtonEdit1ButtonClick
      ButtonCaption = '...'
      TransparentColor = clNone
    end
    object cxLUBrg: TcxLookupComboBox
      Left = 97
      Top = 116
      Enabled = False
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
      TabOrder = 12
      OnKeyPress = cxLUBrgKeyPress
      Width = 471
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 119
      Caption = 'Nama Barang'
    end
    object btnTambah: TButton
      Left = 595
      Top = 114
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 14
      OnClick = btnTambahClick
    end
    object cxsTot: TcxSpinEdit
      Left = 942
      Top = 343
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00'
      Properties.ReadOnly = True
      TabOrder = 15
      Width = 121
    end
    object cxlNoSO: TcxLookupComboBox
      Left = 97
      Top = 91
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
      Properties.OnCloseUp = cxlNoSOPropertiesCloseUp
      Properties.OnEditValueChanged = cxlNoSOPropertiesEditValueChanged
      TabOrder = 16
      Width = 169
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 93
      Caption = 'No. SO MDA'
    end
    object cxChkSOMdb: TcxCheckBox
      Left = 224
      Top = 66
      Caption = 'Gunakan SO MDB'
      TabOrder = 18
      OnClick = cxChkSOMdbClick
      Width = 121
    end
    object btnCariBrg: TButton
      Left = 571
      Top = 116
      Width = 20
      Height = 21
      Caption = '...'
      Enabled = False
      TabOrder = 19
      OnClick = btnCariBrgClick
    end
    object btnPilSemua: TButton
      Left = 14
      Top = 340
      Width = 75
      Height = 25
      Caption = 'Pilih Semua'
      TabOrder = 20
      OnClick = btnPilSemuaClick
    end
    object btnBersih: TButton
      Left = 94
      Top = 340
      Width = 75
      Height = 25
      Caption = 'Bersih'
      TabOrder = 21
      OnClick = btnBersihClick
    end
    object btnHapusPil: TButton
      Left = 174
      Top = 340
      Width = 82
      Height = 25
      Caption = 'Hapus Pilihan'
      TabOrder = 22
      OnClick = btnHapusPilClick
    end
    object cxLabel7: TcxLabel
      Left = 270
      Top = 93
      Caption = 'No. LKM'
    end
    object cxtNoLKM: TcxTextEdit
      Tag = 1
      Left = 321
      Top = 91
      Properties.ReadOnly = True
      TabOrder = 24
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 441
    Width = 1084
    Height = 76
    Align = alTop
    TabOrder = 2
    object btnSimpan: TButton
      Left = 15
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 0
      OnClick = btnSimpanClick
    end
    object btnKeluar: TButton
      Left = 93
      Top = 28
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      OnClick = btnKeluarClick
    end
    object btnHpsTrans: TButton
      Left = 260
      Top = 21
      Width = 95
      Height = 25
      Caption = '&Hapus Transfer'
      TabOrder = 2
      Visible = False
      OnClick = btnHpsTransClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 745
    Top = 91
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 775
    Top = 91
  end
  object zqrNoSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT no_bukti, tanggal, nama FROM v_so_head WHERE f_completed ' +
        '= 0')
    Params = <>
    Left = 660
    Top = 26
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 695
    Top = 26
  end
end
