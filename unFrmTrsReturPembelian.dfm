inherited frmTrsReturPembelian: TfrmTrsReturPembelian
  Left = 276
  Top = 84
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Transaksi Retur Pembelian'
  ClientHeight = 545
  ClientWidth = 967
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 967
    inherited lblJudul: TLabel
      Width = 221
      Caption = 'Transaksi Retur Pembelian'
    end
    object btnEdit2: TButton
      Left = 620
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 701
      Top = 23
      Properties.DropDownWidth = 600
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          FieldName = 'no_bukti'
        end
        item
          FieldName = 'no_fobj'
        end
        item
          FieldName = 'tgl_input'
        end
        item
          FieldName = 'supplier'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPOHead
      TabOrder = 1
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Width = 967
    Height = 435
    object Label5: TLabel
      Left = 773
      Top = 407
      Width = 75
      Height = 13
      Caption = 'Total Qty. Retur'
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
      Width = 147
    end
    object nxGrd: TNextGrid
      Left = 15
      Top = 190
      Width = 940
      Height = 201
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
        Position = 2
        SortType = stBoolean
        Visible = False
        Width = 43
      end
      object nxColNoSPBB: TNxTextColumn
        DefaultWidth = 112
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPBB'
        Position = 3
        SortType = stAlphabetic
        Visible = False
        Width = 112
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
        Position = 4
        SortType = stAlphabetic
      end
      object nxColNamaBrg: TNxTextColumn
        DefaultWidth = 382
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.Caption = 'Nama Barang'
        Header.Caption = 'Nama Barang'
        Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 5
        SortType = stAlphabetic
        Width = 382
      end
      object nxColSatuan: TNxTextColumn
        DefaultWidth = 63
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 6
        SortType = stAlphabetic
        Width = 63
      end
      object nxColQty: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 75
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. PO'
        Header.Alignment = taRightJustify
        Position = 7
        SortType = stNumeric
        Width = 75
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColQtyRetur: TNxNumberColumn
        Color = clSkyBlue
        DefaultValue = '0'
        DefaultWidth = 67
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Retur'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 8
        SortType = stNumeric
        Width = 67
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColKet: TNxTextColumn
        DefaultWidth = 276
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
        Width = 276
      end
      object nxColKey: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 10
        SortType = stAlphabetic
        Visible = False
      end
    end
    object NxEdit1: TNxEdit
      Left = 143
      Top = 322
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
      Top = 404
      Properties.Alignment.Horz = taRightJustify
      Properties.AssignedValues.DisplayFormat = True
      Properties.AssignedValues.EditFormat = True
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
      Width = 147
    end
    object NxEdit2: TNxEdit
      Left = 223
      Top = 307
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
    object NxEdit3: TNxEdit
      Left = 539
      Top = 308
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      MaxLength = 100
      TabOrder = 8
      Text = 'NXEDIT3'
      Visible = False
    end
    object nxBeNoSO: TNxButtonEdit
      Left = 644
      Top = 298
      Width = 121
      Height = 21
      BorderStyle = bsNone
      CharCase = ecUpperCase
      TabOrder = 9
      Text = 'NXBENOSO'
      Visible = False
      ButtonCaption = '...'
      ButtonWidth = 15
      TransparentColor = clNone
    end
    object cxlPO: TcxLookupComboBox
      Left = 99
      Top = 58
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_po'
      Properties.ListColumns = <
        item
          FieldName = 'no_po'
        end
        item
          FieldName = 'kode_brg'
        end
        item
          FieldName = 'nama'
        end
        item
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPO
      Properties.OnEditValueChanged = cxlPOPropertiesEditValueChanged
      TabOrder = 10
      Width = 145
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 60
      Caption = 'No. PO'
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Supplier'
    end
    object cxtSupplier: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.ReadOnly = True
      TabOrder = 13
      Width = 507
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 110
      Caption = 'Tgl. PO'
    end
    object cxdtglpo: TcxDateEdit
      Left = 99
      Top = 108
      Properties.ReadOnly = True
      TabOrder = 15
      Width = 147
    end
    object cxlbl1: TcxLabel
      Left = 19
      Top = 406
      Caption = '( Double klik pada kolom Hapus untuk menghapus item )'
      Style.TextColor = clBlue
    end
    object cxtNoSPMB: TcxTextEdit
      Tag = 1
      Left = 319
      Top = 8
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 17
      Width = 147
    end
    object cxlbl2: TcxLabel
      Left = 260
      Top = 10
      Caption = 'No. SPMB'
    end
    object cxlbl3: TcxLabel
      Left = 260
      Top = 35
      Caption = 'No. SJ'
    end
    object cxtNoSJ: TcxTextEdit
      Tag = 1
      Left = 319
      Top = 33
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 20
      Width = 147
    end
    object cxlbl4: TcxLabel
      Left = 15
      Top = 160
      Caption = 'No. Polisi'
    end
    object cxlbl5: TcxLabel
      Left = 15
      Top = 135
      Caption = 'Driver'
    end
    object cxtNoPolisi: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 158
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 23
      Width = 107
    end
    object cxtDriver: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 133
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 24
      Width = 162
    end
  end
  inherited pnlBawah: TPanel
    Top = 501
    Width = 967
    Height = 44
    inherited btnKeluar: TButton
      Left = 377
      Top = 8
    end
    inherited btnBaru: TButton
      Left = 888
      Top = 8
    end
    inherited btnEdit: TButton
      Left = 658
      Top = 8
    end
    inherited btnHapus: TButton
      Left = 733
      Top = 8
    end
    inherited btnBatal: TButton
      Left = 583
      Top = 8
    end
    inherited btnSimpan: TButton
      Left = 809
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
    object btnReturBaru: TButton
      Left = 93
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Retur Baru'
      TabOrder = 7
      OnClick = btnReturBaruClick
    end
    object btnCetakSPMB: TButton
      Left = 171
      Top = 8
      Width = 100
      Height = 25
      Caption = 'Cetak SPMB'
      TabOrder = 8
      OnClick = btnCetakSPMBClick
    end
    object btnCetakSJ: TButton
      Left = 274
      Top = 8
      Width = 100
      Height = 25
      Caption = 'Cetak Surat Jalan'
      TabOrder = 9
      OnClick = btnCetakSJClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
    Params = <>
    Left = 765
    Top = 81
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 795
    Top = 81
  end
  object zqrNoBukti: TZReadOnlyQuery
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
    Left = 700
    Top = 81
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 730
    Top = 81
  end
  object zqrNoSJ: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_sj_head ORDER BY no_bukti')
    Params = <>
    Left = 830
    Top = 81
  end
  object dsSJ: TDataSource
    DataSet = zqrNoSJ
    Left = 860
    Top = 81
  end
  object zqrPO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select sd.no_po, sd.kode_brg, ph.no_fobj, ph.kode_supp, ph.tangg' +
        'al, sp.nama, sum(sd.qty) qty '
      'from tbl_spbb_det sd, tbl_po_head ph, tbl_supplier sp'
      
        'where sd.no_po = ph.no_bukti and ph.kode_supp=sp.kode and sd.no_' +
        'po<>'#39#39
      'group by sd.no_po'
      'order by sd.no_po, sd.kode_brg')
    Params = <>
    Left = 700
    Top = 111
  end
  object dsPO: TDataSource
    DataSet = zqrPO
    Left = 730
    Top = 111
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 765
    Top = 110
  end
  object dsPOHead: TDataSource
    DataSet = zqrPOHead
    Left = 835
    Top = 110
  end
  object zqrPOHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select no_bukti,no_fobj,tgl_input,supplier,user,user_dept from t' +
        'bl_trsreturpemb_head'
      'where f_approval = 1 order by no_bukti desc')
    Params = <>
    Left = 800
    Top = 110
  end
end
