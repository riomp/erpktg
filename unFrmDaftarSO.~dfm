inherited frmDaftarSO: TfrmDaftarSO
  Left = 435
  Top = 315
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Daftar Sales Order'
  ClientHeight = 484
  ClientWidth = 911
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 911
    inherited lblJudul: TLabel
      Top = 11
      Width = 151
      Caption = 'Daftar Sales Order'
    end
    object cxLabel1: TcxLabel
      Left = 9
      Top = 37
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 60
      Top = 36
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 185
      Top = 37
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 213
      Top = 36
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 342
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Width = 911
    Height = 342
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 909
      Height = 340
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarSO
        DataController.KeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        object cxGridDBTableView1f_completed: TcxGridDBColumn
          Caption = 'Complated'
          DataBinding.FieldName = 'f_completed'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 48
        end
        object cxGridDBTableView1no_bukti: TcxGridDBColumn
          Caption = 'No.SO'
          DataBinding.FieldName = 'no_bukti'
          Width = 90
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 69
        end
        object cxGridDBTableView1po: TcxGridDBColumn
          Caption = 'No.PO Customer'
          DataBinding.FieldName = 'po#'
          Width = 134
        end
        object cxGridDBTableView1kode_customer: TcxGridDBColumn
          Caption = 'Kode Customer'
          DataBinding.FieldName = 'kode_customer'
          Width = 88
        end
        object cxGridDBTableView1tgl_required: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_required'
          Visible = False
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'nama'
          Width = 436
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSODet
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        object cxGrid2DBTableView1kode_brg: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'kode_brg'
          Width = 131
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 403
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
          Width = 123
        end
        object cxGrid2DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 408
    Width = 911
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 252
      Visible = False
    end
    inherited btnBaru: TButton
      Left = 10
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 90
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 170
      Caption = '&Tutup SO'
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Left = 455
      Top = 5
      Visible = False
    end
  end
  object zqrDaftarSO: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'select '
      '    `tbl_so_head`.`no_bukti` AS `no_bukti`,'
      '    `tbl_so_head`.`tanggal` AS `tanggal`,'
      '    `tbl_so_head`.`kode_customer` AS `kode_customer`,'
      '    `tbl_so_head`.`f_completed` AS `f_completed`,'
      '    `tbl_so_head`.`tgl_required` AS `tgl_required`,'
      '    `tbl_so_head`.`notes` AS `notes`,'
      '    `tbl_so_head`.`user` AS `user`,'
      '    `tbl_so_head`.`user_dept` AS `user_dept`,'
      '    `tbl_customer`.`nama` AS `nama`,'
      '    `tbl_customer`.`kontak` AS `kontak`,'
      '    `tbl_customer`.`alamat` AS `alamat`,'
      
        '    (to_days(now()) - to_days(`tbl_so_head`.`tanggal`)) AS `seli' +
        'sih_hari`,'
      '    `tbl_so_head`.`po#` AS `po#`,'
      '    `tbl_so_head`.`sc#` AS `sc#`,'
      '    `tbl_customer`.`alamat2` AS `alamat2`,'
      '    `tbl_customer`.`kota` AS `kota`'
      '  from '
      '    `tbl_so_head`'
      
        '    left join `tbl_customer` on `tbl_so_head`.`kode_customer` = ' +
        '`tbl_customer`.`kode` '
      '  where '
      
        '    left(`tbl_so_head`.`no_bukti`,3) <> '#39'MTS'#39' and tbl_so_head.ta' +
        'nggal between :tgl1 and :tgl2 '
      'order by tanggal')
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
    Left = 470
    Top = 25
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
  object dsDaftarSO: TDataSource
    DataSet = zqrDaftarSO
    Left = 500
    Top = 30
  end
  object zSODet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a. *,b.deskripsi FROM tbl_so_det as a join tbl_barang as ' +
        'b on a.kode_brg=b.kode')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsSODet: TDataSource
    DataSet = zSODet
    Left = 576
    Top = 20
  end
end
