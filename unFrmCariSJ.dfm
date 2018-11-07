object frmCariSJ: TfrmCariSJ
  Left = 255
  Top = 166
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cari Surat Jalan'
  ClientHeight = 478
  ClientWidth = 924
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 15
    Top = 271
    Width = 891
    Height = 151
    TabOrder = 0
    Visible = False
    object cxGridDBTableView1: TcxGridDBTableView
      OnDblClick = cxGridDBTableView1DblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSODet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBTableView1kode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBTableView1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 363
      end
      object cxGridDBTableView1qty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBTableView1satuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 100
      end
      object cxGridDBTableView1f_complete: TcxGridDBColumn
        Caption = 'Complete'
        DataBinding.FieldName = 'f_complete'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxGridDBTableView1notes: TcxGridDBColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'notes'
        Width = 207
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object nxGrdSODet: TNextGrid
    Left = 15
    Top = 271
    Width = 891
    Height = 156
    Options = [goGrid, goHeader]
    TabOrder = 9
    TabStop = True
    OnAfterEdit = nxGrdSODetAfterEdit
    object NxCheckBoxColumn1: TNxCheckBoxColumn
      Alignment = taCenter
      DefaultWidth = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Pilih'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 0
      SortType = stBoolean
      Width = 33
    end
    object nxColKdBrg: TNxTextColumn
      DefaultWidth = 79
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Kode Brg.'
      Position = 1
      SortType = stAlphabetic
      Width = 79
    end
    object NxTextColumn2: TNxTextColumn
      DefaultWidth = 330
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi'
      Position = 2
      SortType = stAlphabetic
      Width = 330
    end
    object nxColDipesan: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Dipesan'
      Header.Alignment = taRightJustify
      Position = 3
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColTerkirim: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Terkirim'
      Header.Alignment = taRightJustify
      Position = 4
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColSPMB: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Stok (G02)'
      Header.Alignment = taRightJustify
      Position = 5
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColNoSPMB: TNxNumberColumn
      Alignment = taLeftJustify
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'SPMB'
      Position = 6
      SortType = stNumeric
      Visible = False
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColNoSO: TNxTextColumn
      DefaultWidth = 96
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No. SO'
      Position = 7
      SortType = stAlphabetic
      Width = 96
    end
    object nxColSatuan: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Satuan'
      Position = 8
      SortType = stAlphabetic
    end
  end
  object cxdTgl1: TcxDateEdit
    Left = 65
    Top = 25
    TabOrder = 1
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 27
    Caption = 'Tanggal'
  end
  object cxdTgl2: TcxDateEdit
    Left = 218
    Top = 25
    TabOrder = 2
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 190
    Top = 27
    Caption = 'S/D'
  end
  object btnProses: TButton
    Left = 348
    Top = 23
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 3
    OnClick = btnProsesClick
  end
  object cxGrid1: TcxGrid
    Left = 15
    Top = 56
    Width = 891
    Height = 208
    TabOrder = 4
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
      DataController.DataSource = dsSOHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1no_bukti: TcxGridDBColumn
        Caption = 'No. SJ'
        DataBinding.FieldName = 'no_bukti'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 109
      end
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 89
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'nama'
        Width = 288
      end
      object cxGrid1DBTableView1user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
      end
      object cxGrid1DBTableView1user_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button1: TButton
    Left = 15
    Top = 436
    Width = 75
    Height = 25
    Caption = 'Pilih'
    TabOrder = 5
    OnClick = Button1Click
  end
  object btnBatal: TButton
    Left = 95
    Top = 436
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 6
    OnClick = btnBatalClick
  end
  object zqrSOhead: TZReadOnlyQuery
    Connection = dm.zConn
    AfterScroll = zqrSOheadAfterScroll
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_sj_head WHERE tanggal BETWEEN :tgl1 AND :tgl2'
      'ORDER BY tanggal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 80
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsSOHead: TDataSource
    DataSet = zqrSOhead
    Left = 110
    Top = 104
  end
  object zqrSODet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_sj_det '
      'WHERE no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 315
    Top = 330
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsSODet: TDataSource
    DataSet = zqrSODet
    Left = 345
    Top = 330
  end
end
