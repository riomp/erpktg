object frmApprovalSpkGil: TfrmApprovalSpkGil
  Left = 188
  Top = 190
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Approval SPK Giling'
  ClientHeight = 384
  ClientWidth = 806
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
  object nxGrd: TNextGrid
    Left = 20
    Top = 30
    Width = 451
    Height = 139
    Caption = '-'
    Options = [goGrid, goHeader]
    TabOrder = 0
    TabStop = True
    OnCellClick = nxGrdCellClick
    object nxColNoSPK: TNxTextColumn
      DefaultWidth = 97
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPK'
      Position = 0
      SortType = stAlphabetic
      Width = 97
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
    object nxColApp: TNxCheckBoxColumn
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Approval'
      Header.Alignment = taCenter
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 4
      SortType = stBoolean
    end
    object NxTextColumn1: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Position = 5
      SortType = stAlphabetic
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
  object NextDBGrid1: TNextDBGrid
    Left = 20
    Top = 192
    Width = 766
    Height = 139
    FixedCols = 3
    Options = [goGrid, goHeader]
    TabOrder = 2
    TabStop = True
    DataAwareOptions = []
    DataSource = dsDetKor
    object TNxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Position = 0
      SortType = stNumeric
      FieldName = 'kode_brg'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object TNxDBTextColumn8: TNxDBTextColumn
      DefaultWidth = 168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 168
      FieldName = 'deskripsi'
    end
    object TNxDBTextColumn1: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'no_bukti'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stAlphabetic
      Visible = False
      FieldName = 'no_bukti'
    end
    object TNxDBTextColumn2: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPK'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 3
      SortType = stAlphabetic
      FieldName = 'no_spk'
    end
    object TNxDBTextColumn3: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SO'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 4
      SortType = stAlphabetic
      FieldName = 'no_so'
    end
    object TNxDBNumberColumn2: TNxDBNumberColumn
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
      FieldName = 'qty'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object TNxDBTextColumn4: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Satuan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 6
      SortType = stAlphabetic
      FieldName = 'satuan'
    end
    object TNxDBTextColumn5: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 7
      SortType = stAlphabetic
      FieldName = 'kode_gdg'
    end
    object TNxDBTextColumn7: TNxDBTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Jenis'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 8
      SortType = stAlphabetic
      FieldName = 'jenis2'
    end
    object nxColKet: TNxDBTextColumn
      DefaultWidth = 212
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Keterangan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 9
      SortType = stAlphabetic
      Width = 212
      FieldName = 'keterangan'
    end
  end
  object btnBatal: TButton
    Left = 180
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
    Caption = 'SPK Giling'
  end
  object btnDitolak: TButton
    Left = 100
    Top = 343
    Width = 75
    Height = 25
    Caption = 'Ditolak'
    TabOrder = 6
  end
  object zqrKorHead: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.email'
      
        'FROM tbl_trsspkgiling_head a LEFT JOIN tbl_user b ON a.user = b.' +
        'nama'
      'WHERE a.f_approval = 0')
    Params = <>
    Left = 295
    Top = 110
  end
  object dsKorHead: TDataSource
    DataSet = zqrKorHead
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
    Active = True
    SQL.Strings = (
      'SELECT a.*, b.deskripsi'
      'FROM tbl_trsspkgiling_det a '
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode '
      'WHERE a.no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 295
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsDetKor: TDataSource
    DataSet = zqrDetKor
    Left = 330
    Top = 140
  end
  object idSMTP: TIdSMTP
    OnWorkBegin = idSMTPWorkBegin
    OnWorkEnd = idSMTPWorkEnd
    SASLMechanisms = <>
    Left = 525
    Top = 115
  end
end
