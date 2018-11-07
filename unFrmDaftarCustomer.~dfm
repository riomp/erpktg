inherited frmDaftarCustomer: TfrmDaftarCustomer
  Left = 594
  Top = 263
  Height = 600
  Caption = 'Master Customer'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 139
      Caption = 'Master Customer'
    end
  end
  inherited pnlTengah: TPanel
    Height = 419
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 810
      Height = 417
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds
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
        object cxGridDBTableView1kode: TcxGridDBColumn
          Caption = 'Kode Customer'
          DataBinding.FieldName = 'kode'
          Width = 87
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'nama'
          Width = 509
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
    Top = 485
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 177
      Top = 30
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
      Left = 335
      Top = 20
      Visible = False
    end
  end
  object zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama, kode, alamat, f_aktif FROM tbl_customer'
      'WHERE f_aktif=1')
    Params = <>
    Left = 365
    Top = 20
  end
  object ds: TDataSource
    DataSet = zQry
    Left = 395
    Top = 20
  end
end
