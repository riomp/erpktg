object frmCariSPMB: TfrmCariSPMB
  Left = 304
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cari SPMB'
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
  object cxdTgl1: TcxDateEdit
    Left = 65
    Top = 25
    TabOrder = 0
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
    TabOrder = 1
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
    TabOrder = 2
    OnClick = btnProsesClick
  end
  object cxGrid1: TcxGrid
    Left = 15
    Top = 56
    Width = 891
    Height = 370
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
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
      OptionsSelection.MultiSelect = True
      object cxGrid1DBTableView1no_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
      end
      object cxGrid1DBTableView1no_so: TcxGridDBColumn
        DataBinding.FieldName = 'no_so'
      end
      object cxGrid1DBTableView1kode_brg: TcxGridDBColumn
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGrid1DBTableView1deskripsi: TcxGridDBColumn
        DataBinding.FieldName = 'deskripsi'
      end
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
      end
      object cxGrid1DBTableView1no_dokumen: TcxGridDBColumn
        DataBinding.FieldName = 'no_dokumen'
      end
      object cxGrid1DBTableView1nopol: TcxGridDBColumn
        DataBinding.FieldName = 'nopol'
      end
      object cxGrid1DBTableView1driver: TcxGridDBColumn
        DataBinding.FieldName = 'driver'
      end
      object cxGrid1DBTableView1qty_so: TcxGridDBColumn
        DataBinding.FieldName = 'qty_so'
      end
      object cxGrid1DBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object cxGrid1DBTableView1satuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
      end
      object cxGrid1DBTableView1tanggal_so: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_so'
      end
      object cxGrid1DBTableView1kode_customer: TcxGridDBColumn
        DataBinding.FieldName = 'kode_customer'
      end
      object cxGrid1DBTableView1tgl_required: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_required'
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        DataBinding.FieldName = 'nama'
      end
      object cxGrid1DBTableView1alamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
      end
      object cxGrid1DBTableView1kota: TcxGridDBColumn
        DataBinding.FieldName = 'kota'
      end
      object cxGrid1DBTableView1provinsi: TcxGridDBColumn
        DataBinding.FieldName = 'provinsi'
      end
      object cxGrid1DBTableView1negara: TcxGridDBColumn
        DataBinding.FieldName = 'negara'
      end
      object cxGrid1DBTableView1f_completed: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
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
    TabOrder = 4
    OnClick = Button1Click
  end
  object btnBatal: TButton
    Left = 95
    Top = 436
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object NextGrid1: TNextGrid
    Left = 15
    Top = 110
    Width = 891
    Height = 316
    TabOrder = 8
    TabStop = True
    object TNxTextColumn1: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'no_bukti'
      Position = 0
      SortType = stAlphabetic
    end
    object TNxDateColumn1: TNxDateColumn
      DefaultValue = '19/01/2014'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'tanggal'
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
      Header.Caption = 'no_dokumen'
      Position = 2
      SortType = stAlphabetic
    end
    object TNxTextColumn3: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'nopol'
      Position = 3
      SortType = stAlphabetic
    end
    object TNxTextColumn4: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'driver'
      Position = 4
      SortType = stAlphabetic
    end
    object TNxTextColumn5: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'no_so'
      Position = 5
      SortType = stAlphabetic
    end
    object TNxNumberColumn1: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'kode_brg'
      Position = 6
      SortType = stNumeric
      Increment = 1.000000000000000000
      Precision = 0
    end
    object TNxNumberColumn2: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'qty_so'
      Position = 7
      SortType = stNumeric
      Increment = 1.000000000000000000
      Precision = 0
    end
    object TNxNumberColumn3: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'qty'
      Position = 8
      SortType = stNumeric
      Increment = 1.000000000000000000
      Precision = 0
    end
    object TNxTextColumn6: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'satuan'
      Position = 9
      SortType = stAlphabetic
    end
    object TNxTextColumn7: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'deskripsi'
      Position = 10
      SortType = stAlphabetic
    end
    object TNxDateColumn2: TNxDateColumn
      DefaultValue = '19/01/2014'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'tanggal_so'
      Position = 11
      SortType = stDate
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object TNxTextColumn8: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'kode_customer'
      Position = 12
      SortType = stAlphabetic
    end
    object TNxDateColumn3: TNxDateColumn
      DefaultValue = '19/01/2014'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'tgl_required'
      Position = 13
      SortType = stDate
      NoneCaption = 'None'
      TodayCaption = 'Today'
    end
    object TNxTextColumn9: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'nama'
      Position = 14
      SortType = stAlphabetic
    end
    object TNxTextColumn10: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'alamat'
      Position = 15
      SortType = stAlphabetic
    end
    object TNxTextColumn11: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'kota'
      Position = 16
      SortType = stAlphabetic
    end
    object TNxTextColumn12: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'provinsi'
      Position = 17
      SortType = stAlphabetic
    end
    object TNxTextColumn13: TNxTextColumn
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'negara'
      Position = 18
      SortType = stAlphabetic
    end
  end
  object zqrSOhead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_spmb_det WHERE tanggal BETWEEN :tgl1 AND :tgl2 A' +
        'ND f_completed = 0 '
      'AND kode_customer = :kode_customer')
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
      end
      item
        DataType = ftUnknown
        Name = 'kode_customer'
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
      end
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsSOHead: TDataSource
    DataSet = zqrSOhead
    Left = 110
    Top = 104
  end
  object NxDataCellSource1: TNxDataCellSource
    Associate = NextGrid1
    DataSet = zqrSOhead
    Left = 365
    Top = 190
  end
end
