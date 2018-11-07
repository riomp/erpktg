object frmApprovalSO: TfrmApprovalSO
  Left = 243
  Top = 135
  Width = 1034
  Height = 419
  Caption = 'Approval Koreksi Stok'
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
    Width = 565
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
      Header.Caption = 'No. Koreksi'
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
    Caption = 'Approval'
    TabOrder = 1
    OnClick = btnApprovalClick
  end
  object nxGrdDet2: TNextDBGrid
    Left = 20
    Top = 192
    Width = 981
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
      DefaultWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 440
      FieldName = 'deskripsi'
    end
    object NxDBTextColumn3: TNxDBNumberColumn
      Alignment = taLeftJustify
      DefaultValue = '0'
      DefaultWidth = 70
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Current Stok'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stNumeric
      Width = 70
      FieldName = 'stok_lama'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn1: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 91
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Qty. Koreksi (+/-)'
      Position = 3
      SortType = stNumeric
      Width = 91
      FieldName = 'stok_koreksi'
      EditOptions = [eoAllowFloat, eoAllowSigns]
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBNumberColumn2: TNxDBNumberColumn
      DefaultValue = '0'
      DefaultWidth = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Stok Baru'
      Position = 4
      SortType = stNumeric
      Width = 65
      FieldName = 'stok_baru'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBTextColumn4: TNxDBTextColumn
      DefaultWidth = 53
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Gudang'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 5
      SortType = stAlphabetic
      Width = 53
      FieldName = 'gudang'
    end
    object NxDBNumberColumn3: TNxDBNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'HPP'
      Position = 6
      SortType = stNumeric
      FieldName = 'hpp'
      FormatMask = '#,#0.00'
      Precision = 0
      Increment = 1.000000000000000000
    end
    object NxDBTextColumn5: TNxDBTextColumn
      DefaultWidth = 169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Keterangan'
      Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
      Position = 7
      SortType = stAlphabetic
      Width = 169
      FieldName = 'keterangan'
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
    Caption = 'Koreksi Stok'
  end
  object zqrKorHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept '
      'FROM tbl_trskoreksi_head WHERE f_approval = 0')
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
      
        'select kode_brg, b.deskripsi, b.stok as stok_lama, a.stok_koreks' +
        'i, b.stok + a.stok_koreksi stok_baru, a.gudang, a.hpp, a.keteran' +
        'gan'
      'from '
      
        'tbl_trskoreksi_det a left join tbl_barang b on a.kode_brg = b.ko' +
        'de'
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
