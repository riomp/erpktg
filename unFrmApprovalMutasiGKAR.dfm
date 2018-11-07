object frmApprovalMutasiGKAR: TfrmApprovalMutasiGKAR
  Left = 290
  Top = 230
  BorderStyle = bsSingle
  Caption = 'Approval Mutasi G-KAR'
  ClientHeight = 380
  ClientWidth = 831
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
  PixelsPerInch = 96
  TextHeight = 13
  object nxGrd: TNextGrid
    Left = 20
    Top = 30
    Width = 791
    Height = 139
    Options = [goGrid, goHeader]
    TabOrder = 1
    TabStop = True
    OnAfterEdit = nxGrdAfterEdit
    OnCellClick = nxGrdCellClick
    object TNxTextColumn1: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. Trans'
      Position = 0
      SortType = stAlphabetic
    end
    object TNxDateColumn1: TNxDateColumn
      DefaultValue = '08/12/2013'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Tanggal'
      Position = 1
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
      Position = 2
      SortType = stAlphabetic
    end
    object TNxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dept'
      Position = 3
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
      Position = 4
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
      Position = 5
      SortType = stBoolean
    end
  end
  object btnApproval: TButton
    Left = 20
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btnApprovalClick
  end
  object NextDBGrid1: TNextDBGrid
    Left = 20
    Top = 192
    Width = 791
    Height = 139
    Options = [goGrid, goHeader]
    TabOrder = 3
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
    object NxDBNumberColumn1: TNxDBTextColumn
      Alignment = taRightJustify
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang Asal'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 4
      SortType = stAlphabetic
      FieldName = 'gudang_asal'
    end
    object NxDBNumberColumn2: TNxDBTextColumn
      Alignment = taRightJustify
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang Tujuan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 5
      SortType = stAlphabetic
      FieldName = 'gudang_tujuan'
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
      Position = 6
      SortType = stAlphabetic
      Width = 232
      FieldName = 'keterangan'
    end
  end
  object btnBatal: TButton
    Left = 100
    Top = 343
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 5
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
    Caption = 'Mutasi G-KAR'
  end
  object zqrKorHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept'
      'FROM tbl_trsmutasi_head a '
      'INNER JOIN tbl_trsmutasi_det b ON a.no_bukti = b.no_bukti'
      'where '
      '('
      
        '  ((b.gudang_asal = '#39'G01'#39' and b.gudang_tujuan = '#39'G03'#39') or (b.gud' +
        'ang_asal = '#39'G03'#39' and b.gudang_tujuan = '#39'G01'#39')) or '
      
        '  ((b.gudang_asal = '#39'G01'#39' and b.gudang_tujuan = '#39'G-ASIS'#39') or (b.' +
        'gudang_asal = '#39'G-ASIS'#39' and b.gudang_tujuan = '#39'G01'#39'))  or '
      
        '  ((b.gudang_asal = '#39'G03'#39' and b.gudang_tujuan = '#39'G-ASIS'#39') or (b.' +
        'gudang_asal = '#39'G-ASIS'#39' and b.gudang_tujuan = '#39'G03'#39'))'
      ') and '
      'a.f_app = 0;')
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
      'SELECT a.*, b.deskripsi FROM tbl_trsmutasi_det a '
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode '
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
    SASLMechanisms = <>
    Left = 690
    Top = 90
  end
end
