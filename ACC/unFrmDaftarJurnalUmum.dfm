inherited frmDaftarJU: TfrmDaftarJU
  Left = 612
  Top = 329
  Height = 530
  Caption = 'Daftar Transaksi Jurnal Umum'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Height = 81
    inherited lblJudul: TLabel
      Width = 248
      Caption = 'Daftar Transaksi Jurnal Umum'
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 47
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 46
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 47
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 46
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 44
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Top = 81
    Height = 334
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 810
      Height = 332
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsJurnal
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        object cxGridDBTableView1f_posted: TcxGridDBColumn
          Caption = 'Posting'
          DataBinding.FieldName = 'f_posted'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object cxGridDBTableView1no_jurnal: TcxGridDBColumn
          Caption = 'No.Jurnal'
          DataBinding.FieldName = 'no_jurnal'
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 71
        end
        object cxGridDBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 459
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid2DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGrid2DBTableView1no_bukti: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
          Width = 64
        end
        object cxGrid2DBTableView1kode_brg: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
          Width = 103
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 312
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGrid2DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 64
        end
        object cxGrid2DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 252
        end
        object cxGrid2DBTableView1mata_uang: TcxGridDBColumn
          DataBinding.FieldName = 'mata_uang'
          Visible = False
          Width = 64
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 415
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 702
    end
    inherited btnBaru: TButton
      Left = 15
      Top = 30
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 95
      Top = 30
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 175
      Top = 30
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Left = 485
      Top = 5
      Visible = False
    end
  end
  object zqrJurnal: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.f_posted, a.no_jurnal, a.tanggal, a.keterangan FROM '
      'tbl_jurnal a'
      'WHERE a.jenis = '#39'AA'#39'  and (a.tanggal BETWEEN :tgl1 AND :tgl2) ')
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
  object dsJurnal: TDataSource
    DataSet = zqrJurnal
    Left = 500
    Top = 30
  end
end
