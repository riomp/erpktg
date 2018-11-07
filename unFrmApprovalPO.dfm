object frmApprovalPO: TfrmApprovalPO
  Left = 506
  Top = 298
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Approval Purchase Order'
  ClientHeight = 585
  ClientWidth = 970
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 970
    Height = 41
    Align = alTop
    TabOrder = 0
    object cxLabel2: TcxLabel
      Left = 20
      Top = 10
      Caption = 'Approval Purchase Order'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 543
    Width = 970
    Height = 42
    Align = alBottom
    TabOrder = 1
    object btnApproval: TButton
      Left = 10
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = btnApprovalClick
    end
    object btnBatal: TButton
      Left = 90
      Top = 7
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 1
      Visible = False
      OnClick = btnBatalClick
    end
    object btnEdit: TButton
      Left = 170
      Top = 7
      Width = 75
      Height = 25
      Caption = '&View'
      TabOrder = 2
      Visible = False
      OnClick = btnEditClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 970
    Height = 502
    Align = alClient
    TabOrder = 2
    DesignSize = (
      970
      502)
    object nxGrd: TNextGrid
      Left = 20
      Top = 25
      Width = 791
      Height = 266
      Anchors = [akLeft, akTop, akBottom]
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
        Header.Caption = 'No. PO'
        Position = 0
        SortType = stAlphabetic
      end
      object NxTextColumn1: TNxTextColumn
        DefaultWidth = 204
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Supplier'
        Position = 1
        SortType = stAlphabetic
        Width = 204
      end
      object NxNumberColumn1: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Total PO'
        Position = 2
        SortType = stNumeric
        FormatMask = '#,##'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object TNxDateColumn1: TNxDateColumn
        DefaultValue = '08/12/2013'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Tanggal'
        Position = 3
        SortType = stDate
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object TNxTextColumn2: TNxTextColumn
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
      object nxColApproval: TNxCheckBoxColumn
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Approval'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 6
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
        Position = 7
        SortType = stBoolean
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 298
      Anchors = [akLeft, akTop, akBottom]
      Caption = 'Detail Transaksi :'
      Visible = False
    end
    object NextDBGrid1: TNextDBGrid
      Left = 15
      Top = 320
      Width = 916
      Height = 166
      Anchors = [akLeft, akRight, akBottom]
      Options = [goGrid, goHeader]
      TabOrder = 2
      TabStop = True
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
        DefaultWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Deskripsi'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 1
        SortType = stAlphabetic
        Width = 200
        FieldName = 'deskripsi'
      end
      object NxDBTextColumn3: TNxDBNumberColumn
        Alignment = taLeftJustify
        DefaultValue = '0'
        DefaultWidth = 63
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty.'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stNumeric
        Width = 63
        FieldName = 'qty'
        FormatMask = '#,##0.000'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBTextColumn6: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 3
        SortType = stAlphabetic
        FieldName = 'satuan'
      end
      object NxDBNumberColumn1: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 70
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Harga'
        Position = 4
        SortType = stNumeric
        Width = 70
        FieldName = 'harga'
        FormatMask = '#,##0.000'
        Precision = 0
        Increment = 1.000000000000000000
      end
      object NxDBTextColumn4: TNxDBTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Cur'
        Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
        Position = 5
        SortType = stAlphabetic
        FieldName = 'mata_uang'
      end
      object NxDBNumberColumn2: TNxDBNumberColumn
        DefaultValue = '0'
        DefaultWidth = 59
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nilai Tukar'
        Position = 6
        SortType = stNumeric
        Width = 59
        FieldName = 'nilai_tukar'
        FormatMask = '#,##0.00'
        Precision = 0
        Increment = 1.000000000000000000
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
        Position = 7
        SortType = stAlphabetic
        Width = 232
        FieldName = 'keterangan'
      end
    end
  end
  object zqrKorHead: TZReadOnlyQuery
    Connection = dm.zConn
    Params = <>
    Left = 410
    Top = 5
  end
  object dsKorHead: TDataSource
    DataSet = zqrDetKor
    Left = 445
    Top = 5
  end
  object nxDC: TNxDataCellSource
    Associate = nxGrd
    DataSet = zqrKorHead
    Left = 610
    Top = 10
  end
  object zqrDetKor: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.deskripsi FROM tbl_po_det a '
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode '
      'WHERE a.no_bukti = :no_trans')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_trans'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_trans'
        ParamType = ptUnknown
      end>
  end
  object dsDetKor: TDataSource
    DataSet = zqrDetKor
    Left = 515
    Top = 10
  end
end
