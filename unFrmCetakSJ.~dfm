object frmCetakSJ: TfrmCetakSJ
  Left = 210
  Top = 67
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Rekap Surat Jalan'
  ClientHeight = 587
  ClientWidth = 1089
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
  object cxdTgl1: TcxDateEdit
    Left = 60
    Top = 15
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 10
    Top = 17
    Caption = 'Tanggal'
  end
  object cxdTgl2: TcxDateEdit
    Left = 213
    Top = 15
    TabOrder = 2
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 185
    Top = 17
    Caption = 'S/D'
  end
  object btnProses: TButton
    Left = 340
    Top = 13
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 4
    OnClick = btnProsesClick
  end
  object btnBatal: TButton
    Left = 90
    Top = 550
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 5
    OnClick = btnBatalClick
  end
  object cxGrid1: TcxGrid
    Left = 10
    Top = 45
    Width = 1066
    Height = 328
    TabOrder = 6
    object GridView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedItemChanged = GridView1FocusedItemChanged
      OnFocusedRecordChanged = GridView1FocusedRecordChanged
      DataController.DataSource = dsSJHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      object GridView1no_bukti: TcxGridDBColumn
        Caption = 'No. SJ'
        DataBinding.FieldName = 'no_bukti'
        Width = 109
      end
      object GridView1no_spmb: TcxGridDBColumn
        Caption = 'No. SPMB'
        DataBinding.FieldName = 'no_spmb'
      end
      object GridView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 91
      end
      object GridView1nama: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 272
      end
      object GridView1kode_customer: TcxGridDBColumn
        DataBinding.FieldName = 'kode_customer'
        Visible = False
      end
      object GridView1user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        Width = 90
      end
      object GridView1user_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
        Width = 99
      end
      object GridView1f_cetak: TcxGridDBColumn
        Caption = 'Cetak'
        DataBinding.FieldName = 'f_cetak'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object GridView1nopol: TcxGridDBColumn
        Caption = 'Nopol'
        DataBinding.FieldName = 'nopol'
        Width = 84
      end
      object GridView1driver: TcxGridDBColumn
        Caption = 'Driver'
        DataBinding.FieldName = 'driver'
        Width = 161
      end
      object GridView1tanggal_spmb: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_spmb'
        Visible = False
      end
      object GridView1alamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
        Visible = False
      end
      object GridView1kontak: TcxGridDBColumn
        DataBinding.FieldName = 'kontak'
        Visible = False
      end
      object GridView1kota: TcxGridDBColumn
        DataBinding.FieldName = 'kota'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 10
    Top = 381
    Width = 1066
    Height = 156
    TabOrder = 7
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSJDet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGridDBTableView1no_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Options.Editing = False
        Width = 103
      end
      object cxGridDBTableView1kode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
        Options.Editing = False
      end
      object cxGridDBTableView1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Options.Editing = False
        Width = 386
      end
      object cxGridDBTableView1qty: TcxGridDBColumn
        Caption = 'Qty.'
        DataBinding.FieldName = 'qty'
        Visible = False
        Options.Editing = False
      end
      object cxGridDBTableView1qty_so: TcxGridDBColumn
        Caption = 'Qty. SO'
        DataBinding.FieldName = 'qty_so'
        Options.Editing = False
      end
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'Qty. Kirim'
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBTableView1satuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Options.Editing = False
        Width = 98
      end
      object cxGridDBTableView1kode_gdg: TcxGridDBColumn
        DataBinding.FieldName = 'kode_gdg'
        Visible = False
        Options.Editing = False
      end
      object cxGridDBTableView1keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
        Visible = False
        Options.Editing = False
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'PO. Cust'
        DataBinding.FieldName = 'po_cust'
        Width = 246
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object btnCetak: TButton
    Left = 10
    Top = 550
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 8
    OnClick = btnCetakClick
  end
  object cxChkSJPel: TcxCheckBox
    Left = 445
    Top = 547
    Caption = 'SJ Peletan'
    TabOrder = 9
    Visible = False
    Width = 121
  end
  object cxChkPerincian: TcxCheckBox
    Left = 174
    Top = 552
    Caption = 'Cetak Perincian Peletan'
    TabOrder = 10
    Width = 232
  end
  object zqrSJHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_sj_head WHERE tanggal BETWEEN :tgl1 AND :tgl2')
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
    Left = 115
    Top = 94
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
  object dsSJHead: TDataSource
    DataSet = zqrSJHead
    Left = 145
    Top = 94
  end
  object zqrSJDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_so, a.kode_brg, a.deskripsi, a.qty, a.qty_so, a.satu' +
        'an, a.po_cust'
      'FROM v_sj_det a'
      'WHERE a.no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    MasterSource = dsSJHead
    Left = 350
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsSJDet: TDataSource
    DataSet = zqrSJDet
    Left = 380
    Top = 451
  end
end
