inherited frmTrsRetur: TfrmTrsRetur
  Left = 268
  Top = 85
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi Retur Penjualan'
  ClientHeight = 474
  ClientWidth = 967
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 967
    inherited lblJudul: TLabel
      Width = 217
      Caption = 'Transaksi Retur Penjualan'
    end
  end
  inherited pnlTengah: TPanel
    Width = 967
    Height = 365
    object Label5: TLabel
      Left = 803
      Top = 333
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
      Left = 15
      Top = 130
      Width = 940
      Height = 192
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
      object nxColHapus: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Header.Alignment = taCenter
        Position = 1
        SortType = stNumeric
        Width = 46
        Images = frmUtama.ImageList1
      end
      object nxColNoSJ: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SJ'
        Position = 2
        SortType = stAlphabetic
      end
      object nxColNoSPMB: TNxTextColumn
        DefaultWidth = 91
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPMB'
        Position = 3
        SortType = stAlphabetic
        Width = 91
      end
      object nxColNoSO: TNxTextColumn
        DefaultWidth = 94
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        Position = 4
        SortType = stAlphabetic
        Width = 94
      end
      object nxColCustomer: TNxTextColumn
        DefaultWidth = 182
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Customer'
        Position = 5
        SortType = stAlphabetic
        Width = 182
      end
      object nxColChkPilih: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 43
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Pilih'
        Header.Alignment = taCenter
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 6
        SortType = stBoolean
        Visible = False
        Width = 43
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
        Position = 7
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
        Position = 8
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
        Position = 9
        SortType = stAlphabetic
      end
      object nxColQty: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SJ'
        Header.Alignment = taRightJustify
        Position = 10
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyRetur: TNxNumberColumn
        Color = clMoneyGreen
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Retur'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 11
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 187
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        InplaceEdit = NxEdit3
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 12
        SortType = stAlphabetic
        Width = 187
      end
      object nxColKey: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 13
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 143
      Top = 278
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 3
      Text = 'NxEdit1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 856
      Top = 330
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
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 415
      Top = 30
      Caption = 'No. Surat Jalan'
      Visible = False
    end
    object cxLabel3: TcxLabel
      Left = 390
      Top = 5
      Caption = 'Nama Customer'
      Visible = False
    end
    object cxtNamaCust: TcxTextEdit
      Tag = 1
      Left = 474
      Top = 3
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 9
      Visible = False
      Width = 472
    end
    object NxEdit2: TNxEdit
      Left = 223
      Top = 263
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 10
      Text = 'NXEDIT2'
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object NxEdit3: TNxEdit
      Left = 539
      Top = 264
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 11
      Text = 'NXEDIT3'
      Visible = False
    end
    object nxBeNoSO: TNxButtonEdit
      Left = 644
      Top = 254
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 12
      Text = 'NXBENOSO'
      Visible = False
      OnButtonClick = nxBeNoSOButtonClick
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxlNoSJ: TcxLookupComboBox
      Left = 499
      Top = 28
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. SJ'
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
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSJ
      Properties.OnEditValueChanged = cxlNoSJPropertiesEditValueChanged
      TabOrder = 13
      Visible = False
      Width = 145
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 60
      Caption = 'No. SPBB'
    end
    object cxtNoSPBB: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 58
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 15
      Width = 137
    end
    object cxlCCR: TcxLookupComboBox
      Left = 499
      Top = 58
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. CCR'
          FieldName = 'no'
        end
        item
          Caption = 'No. SO'
          FieldName = 'no_so'
        end
        item
          Caption = 'Nama Customer'
          FieldName = 'nama'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCCR
      Properties.OnEditValueChanged = cxlNoSJPropertiesEditValueChanged
      TabOrder = 16
      Visible = False
      Width = 145
    end
    object cxLabel5: TcxLabel
      Left = 450
      Top = 60
      Caption = 'No. CCR'
      Visible = False
    end
    object cxLabel7: TcxLabel
      Left = 14
      Top = 326
      Caption = '( Double klik pada kolom No. SJ untuk menambahkan item )'
      Style.TextColor = clBlue
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Jenis Retur'
    end
    object cxCmbJenisRetur: TcxComboBox
      Left = 99
      Top = 83
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 20
      Width = 597
    end
    object cxLabel9: TcxLabel
      Left = 98
      Top = 107
      Caption = '( Double klik pada kolom No. SJ untuk menambahkan item )'
      Style.TextColor = clBlue
    end
  end
  inherited pnlBawah: TPanel
    Top = 431
    Width = 967
    Height = 44
    inherited btnKeluar: TButton
      Top = 8
    end
    inherited btnBaru: TButton
      Left = 553
      Top = 8
    end
    inherited btnEdit: TButton
      Left = 323
      Top = 8
    end
    inherited btnHapus: TButton
      Left = 398
      Top = 8
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 248
      Top = 8
    end
    inherited btnSimpan: TButton
      Left = 474
      Top = 8
      Visible = False
    end
    object btnSimpan2: TButton
      Left = 14
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 6
      OnClick = btnSimpan2Click
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
    Params = <>
    Left = 550
    Top = 11
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 580
    Top = 11
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT DISTINCT * FROM ('
      
        'SELECT a.no_bukti, b.no_spmb, a.tanggal, a.user,a.user_dept FROM' +
        ' tbl_trskeluar_head a, '
      'tbl_trskeluar_det b '
      'WHERE a.no_bukti = b.no_bukti'
      'ORDER BY tanggal DESC'
      ') a')
    Params = <>
    Left = 340
    Top = 21
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object zqrNoSJ: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_sj_head ORDER BY no_bukti')
    Params = <>
    Left = 620
    Top = 31
  end
  object dsSJ: TDataSource
    DataSet = zqrNoSJ
    Left = 650
    Top = 31
  end
  object zqrCCR: TZReadOnlyQuery
    Connection = dm.zConnCCR
    SQL.Strings = (
      'SELECT * FROM tbl_rk')
    Params = <>
    Left = 725
    Top = 76
  end
  object dsCCR: TDataSource
    DataSet = zqrCCR
    Left = 755
    Top = 76
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 745
    Top = 125
  end
end
