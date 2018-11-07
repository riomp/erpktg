inherited frmDaftarPenerimaanBarang: TfrmDaftarPenerimaanBarang
  Left = 610
  Top = 297
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Daftar Penerimaan Barang'
  ClientHeight = 485
  ClientWidth = 923
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 923
    inherited lblJudul: TLabel
      Top = 11
      Width = 218
      Caption = 'Daftar Penerimaan Barang'
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
    Width = 923
    Height = 343
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 921
      Height = 341
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarLPB
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
        object cxGridDBTableView1f_approval: TcxGridDBColumn
          Caption = 'Post'
          DataBinding.FieldName = 'f_posted'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 28
        end
        object cxGridDBTableView1no_bukti: TcxGridDBColumn
          Caption = 'No.LPB'
          DataBinding.FieldName = 'no_bukti'
          Width = 119
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tgl.LPB'
          DataBinding.FieldName = 'tanggal'
          Width = 115
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Supplier'
          DataBinding.FieldName = 'nama'
          Width = 104
        end
        object cxGridDBTableView1user: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
          Width = 114
        end
        object cxGridDBTableView1user_dept: TcxGridDBColumn
          Caption = 'Dept'
          DataBinding.FieldName = 'user_dept'
          Width = 135
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsLPBDet
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
          Width = 101
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 321
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGrid2DBTableView1satuan: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 68
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
    Top = 409
    Width = 923
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 817
      Visible = False
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
    inherited btnSimpan: TButton
      Left = 480
      Top = 5
      Visible = False
    end
  end
  object zqrDaftarLPB: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama,a.f_po' +
        'sted FROM tbl_spbb_head a '
      'LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode '
      'WHERE (a.tanggal between :tgl1 and :tgl2)'
      'ORDER BY tanggal DESC')
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
  object dsDaftarLPB: TDataSource
    DataSet = zqrDaftarLPB
    Left = 500
    Top = 35
  end
  object zLPBDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti,a.kode_brg,b.deskripsi,a.qty,a.satuan from tbl' +
        '_spbb_det a left join tbl_barang b on a.kode_brg=b.kode')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsLPBDet: TDataSource
    DataSet = zLPBDet
    Left = 576
    Top = 20
  end
end
