object frmAppPermintaanHapusSpmb: TfrmAppPermintaanHapusSpmb
  Left = 391
  Top = 224
  Width = 628
  Height = 315
  Caption = 'Approval Permintaan Hapus SPMB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object nxGrd: TNextGrid
    Left = 15
    Top = 15
    Width = 581
    Height = 216
    Options = [goGrid, goHeader]
    TabOrder = 0
    TabStop = True
    object nxColNoSPMB: TNxTextColumn
      DefaultWidth = 108
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SPMB'
      Position = 0
      SortType = stAlphabetic
      Width = 108
    end
    object nxColTanggal: TNxDateColumn
      DefaultValue = '08/12/2013'
      DefaultWidth = 102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Tanggal'
      Position = 1
      SortType = stDate
      Width = 102
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object nxColUser: TNxTextColumn
      DefaultWidth = 94
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'User'
      Position = 2
      SortType = stAlphabetic
      Width = 94
    end
    object nxColDept: TNxTextColumn
      DefaultWidth = 99
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dept'
      Position = 3
      SortType = stAlphabetic
      Visible = False
      Width = 99
    end
    object nxColApproval: TNxCheckBoxColumn
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
    Top = 242
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btnApprovalClick
  end
  object btnBatal: TButton
    Left = 100
    Top = 242
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 2
    OnClick = btnBatalClick
  end
  object zqrSpmbHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select no_bukti,tanggal,f_user_hapus from tbl_spmb_head'
      'where f_hapus = 1')
    Params = <>
    Left = 295
    Top = 110
  end
  object dsSpmbHead: TDataSource
    Left = 330
    Top = 110
  end
  object nxDC: TNxDataCellSource
    Associate = nxGrd
    DataSet = zqrSpmbHead
    Left = 495
    Top = 115
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 525
    Top = 115
  end
end
