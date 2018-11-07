object frmApprovalPengQAC: TfrmApprovalPengQAC
  Left = 406
  Top = 168
  Width = 846
  Height = 419
  Caption = 'Approval Transaksi Pengeluaran Bahan Baku QAC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object nxGrd: TNextGrid
    Left = 20
    Top = 30
    Width = 551
    Height = 139
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
      Header.Caption = 'No. Transaksi'
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
    object NxDateColumn1: TNxDateColumn
      DefaultValue = '30/03/2015'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Jam'
      Position = 2
      SortType = stDate
      FormatMask = 'hh:mm'
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
      Position = 3
      SortType = stAlphabetic
    end
    object TNxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dept'
      Position = 4
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
      Position = 5
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
      Position = 6
      SortType = stBoolean
      Visible = False
    end
  end
  object btnApproval: TButton
    Left = 20
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Approval'
    TabOrder = 1
    OnClick = btnApprovalClick
  end
  object nxGrdDet2: TNextDBGrid
    Left = 20
    Top = 192
    Width = 791
    Height = 139
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
      DefaultWidth = 341
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 341
      FieldName = 'deskripsi'
    end
    object NxDBTextColumn3: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 70
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Qty.'
      Header.Alignment = taRightJustify
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stNumeric
      Width = 70
      FieldName = 'qty'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn1: TNxDBTextColumn
      Alignment = taCenter
      DefaultValue = '0'
      DefaultWidth = 52
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stAlphabetic
      Width = 52
      FieldName = 'kode_gdg'
    end
    object NxDBNumberColumn2: TNxDBTextColumn
      Alignment = taCenter
      DefaultValue = '0'
      DefaultWidth = 115
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPK'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 4
      SortType = stAlphabetic
      Width = 115
      FieldName = 'no_spk'
    end
    object NxDBTextColumn4: TNxDBTextColumn
      Alignment = taCenter
      DefaultWidth = 109
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SO'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 5
      SortType = stAlphabetic
      Width = 109
      FieldName = 'no_so'
    end
  end
  object btnBatal: TButton
    Left = 100
    Top = 343
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 3
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
    Caption = 'Transaksi Pengeluaran Barang '
  end
  object zqrKorHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, jam, user, user_dept '
      
        'FROM tbl_trspengeluaranbb_head a WHERE a.f_qac = 1 and a.f_app_w' +
        'hl = 0 and'
      'a.no_bukti IN '
      
        '(select no_bukti from tbl_trspengeluaranbb_det where fterima = 1' +
        ')'
      '')
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
      
        'select a.kode_brg, b.deskripsi, a.qty, a.kode_gdg, a.no_spk, a.n' +
        'o_so'
      'from '
      
        'tbl_trspengeluaranbb_det a left join tbl_barang b on a.kode_brg ' +
        '= b.kode'
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
end
