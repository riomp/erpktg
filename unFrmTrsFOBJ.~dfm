inherited frmTrsFOBJ: TfrmTrsFOBJ
  Left = 258
  Top = 66
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Formulir Order Barang dan Jasa'
  ClientHeight = 482
  ClientWidth = 707
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 707
    inherited lblJudul: TLabel
      Width = 258
      Caption = 'Formulir Order Barang dan Jasa'
    end
    object btnEdit2: TButton
      Left = 361
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 440
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
    Width = 707
    Height = 341
    Caption = 'Cell'
    object Label5: TLabel
      Left = 534
      Top = 313
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. FOBJ'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 8
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 121
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 167
      Width = 670
      Height = 138
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
      object NxImageColumn1: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 42
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 0
        SortType = stNumeric
        Width = 42
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
        Options = [coCanClick, coCanInput, coPublicUsing]
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
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 5
        SortType = stNumeric
        EditOptions = [eoAllowAll, eoAllowFloat]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 263
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
        Visible = False
        Width = 263
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 238
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 15
      Text = 'NXEDIT1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 587
      Top = 310
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '#,#.##'
      Properties.SpinButtons.Visible = False
      Properties.ValueType = vtFloat
      TabOrder = 23
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
      TabOrder = 4
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 113
      Caption = 'Departemen'
    end
    object cxCmbDept: TcxComboBox
      Left = 99
      Top = 111
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 8
      Width = 121
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
      Left = 595
      Top = 133
      Width = 75
      Height = 25
      Caption = '&Tambah'
      TabOrder = 9
      OnClick = btnTambahClick
    end
    object NxEdit2: TNxEdit
      Left = 244
      Top = 243
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 16
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object NxButtonEdit1: TNxButtonEdit
      Left = 280
      Top = 278
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 14
      Text = 'NxButtonEdit1'
      Visible = False
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object nxBeNoSO: TNxButtonEdit
      Left = 390
      Top = 253
      Width = 121
      Height = 21
      BorderStyle = bsNone
      TabOrder = 17
      Text = 'NxButtonEdit1'
      Visible = False
      OnButtonClick = nxBeNoSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object nxBtnEditSO: TNxButtonEdit
      Left = 318
      Top = 210
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 13
      Text = 'NXBENOSO'
      Visible = False
      OnButtonClick = nxBtnEditSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 88
      Caption = 'Diajukan Oleh'
    end
    object cxtDiajukanOleh: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 86
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Properties.ReadOnly = False
      TabOrder = 7
      Width = 297
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 60
      Caption = 'Tgl. Diperlukan'
    end
    object cxdTglDiperlukan: TcxDateEdit
      Left = 99
      Top = 58
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 6
      Width = 121
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 230
      Top = 4
      Caption = ' Level Kebutuhan '
      Properties.Items = <>
      TabOrder = 1
      Height = 76
      Width = 116
    end
    object cxRbtPenting: TcxRadioButton
      Left = 243
      Top = 27
      Width = 93
      Height = 17
      Caption = 'Penting'
      Checked = True
      TabOrder = 3
      TabStop = True
    end
    object cxRbtMendesak: TcxRadioButton
      Left = 243
      Top = 47
      Width = 88
      Height = 17
      Caption = 'Mendesak'
      TabOrder = 5
    end
    object btnCariBrg: TButton
      Left = 572
      Top = 136
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 11
      OnClick = btnCariBrgClick
    end
  end
  inherited pnlBawah: TPanel
    Top = 407
    Width = 707
    inherited btnKeluar: TButton
      TabOrder = 1
    end
    inherited btnBaru: TButton
      TabOrder = 5
    end
    inherited btnEdit: TButton
      Left = 325
      TabOrder = 3
    end
    inherited btnHapus: TButton
      Left = 400
      TabOrder = 4
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 190
      Top = 25
      TabOrder = 2
    end
    inherited btnSimpan: TButton
      Width = 76
      TabOrder = 0
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2 ORDER BY deskripsi')
    Params = <>
    Left = 440
    Top = 101
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 470
    Top = 101
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 405
    Top = 101
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept FROM tbl_fobj_head'
      'WHERE f_penawaran = 0'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 375
    Top = 101
  end
end
