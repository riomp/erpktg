inherited frmTrsPembatalanMut: TfrmTrsPembatalanMut
  Left = 189
  Top = 190
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pembatalan Mutasi'
  ClientHeight = 451
  ClientWidth = 937
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 937
    inherited lblJudul: TLabel
      Width = 157
      Caption = 'Pembatalan Mutasi'
    end
  end
  inherited pnlTengah: TPanel
    Width = 937
    Height = 309
    object Label5: TLabel
      Left = 768
      Top = 280
      Width = 46
      Height = 13
      Caption = 'Total Qty.'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 35
      Caption = 'No. Trs. Mutasi'
    end
    object cxtNoMutasi: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 33
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object btnCariPO: TButton
      Left = 222
      Top = 33
      Width = 22
      Height = 21
      Caption = '...'
      TabOrder = 2
      OnClick = btnCariPOClick
    end
    object nxGrd: TNextGrid
      Left = 16
      Top = 115
      Width = 905
      Height = 156
      FixedCols = 5
      GridLinesStyle = lsActiveRows
      InputSize = 18
      Options = [goGrid, goHeader, goIndicator]
      RowSize = 18
      TabOrder = 3
      TabStop = True
      OnAfterEdit = nxGrdAfterEdit
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
      object NxTextColumn9: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 3
        SortType = stAlphabetic
      end
      object NxTextColumn5: TNxTextColumn
        DefaultWidth = 50
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang'
        Position = 4
        SortType = stAlphabetic
        Width = 50
      end
      object NxTextColumn10: TNxTextColumn
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SO'
        Position = 5
        SortType = stAlphabetic
        Width = 90
      end
      object NxTextColumn6: TNxTextColumn
        DefaultWidth = 102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Gudang'
        Position = 6
        SortType = stAlphabetic
        Width = 102
      end
      object NxTextColumn7: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Gudang Tujuan'
        Position = 7
        SortType = stAlphabetic
      end
      object NxTextColumn8: TNxTextColumn
        DefaultWidth = 99
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Gudang'
        Position = 8
        SortType = stAlphabetic
        Width = 99
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 58
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty'
        Header.Alignment = taRightJustify
        Position = 9
        SortType = stNumeric
        Width = 58
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 99
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Referensi'
        Position = 10
        SortType = stAlphabetic
        Width = 99
      end
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 124
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Position = 11
        SortType = stAlphabetic
        Visible = False
        Width = 124
      end
    end
    object NxEdit1: TNxEdit
      Left = 144
      Top = 168
      Width = 97
      Height = 21
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 4
      Text = 'NxEdit1'
      ReadOnly = True
      Visible = False
      OnDblClick = NxEdit1DblClick
    end
    object cxsTotalQty: TcxSpinEdit
      Left = 821
      Top = 277
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
      Top = 60
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 58
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Transaksi'
    end
    object cxtNoTrans: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 8
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 85
      Caption = 'Keterangan'
    end
    object cxtKet: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 83
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Properties.ReadOnly = False
      TabOrder = 11
      Width = 437
    end
  end
  inherited pnlBawah: TPanel
    Top = 375
    Width = 937
    inherited btnKeluar: TButton
      Left = 95
    end
    inherited btnEdit: TButton
      Left = 325
    end
    inherited btnHapus: TButton
      Left = 400
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 505
      Top = 25
    end
    inherited btnSimpan: TButton
      Left = 16
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_barang ORDER BY deskripsi')
    Params = <>
    Left = 745
    Top = 91
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 775
    Top = 91
  end
end
