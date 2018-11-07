inherited frmDaftarPO: TfrmDaftarPO
  Left = 572
  Top = 279
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Daftar Purchase Order'
  ClientHeight = 482
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Top = 6
      Width = 182
      Caption = 'Daftar Purchase Order'
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
    Height = 340
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 810
      Height = 338
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
        DataController.DataSource = dsDaftarPO
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
        object cxGridDBTableView1f_approval: TcxGridDBColumn
          Caption = 'App'
          DataBinding.FieldName = 'f_approval'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 37
        end
        object cxGridDBTableView1f_void: TcxGridDBColumn
          Caption = 'V'
          DataBinding.FieldName = 'f_void'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 25
        end
        object cxGridDBTableView1no_bukti: TcxGridDBColumn
          Caption = 'No.PO'
          DataBinding.FieldName = 'no_bukti'
          Width = 84
        end
        object cxGridDBTableView1no_fobj: TcxGridDBColumn
          Caption = 'No.PP'
          DataBinding.FieldName = 'no_fobj'
          Width = 85
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxGridDBTableView1kode_supp: TcxGridDBColumn
          DataBinding.FieldName = 'kode_supp'
          Visible = False
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Supplier'
          DataBinding.FieldName = 'nama'
        end
        object cxGridDBTableView1pembayaran: TcxGridDBColumn
          Caption = 'TOP'
          DataBinding.FieldName = 'pembayaran'
          Width = 154
        end
        object cxGridDBTableView1user: TcxGridDBColumn
          Caption = 'User Input'
          DataBinding.FieldName = 'user'
          Width = 98
        end
        object cxGridDBTableView1user_dept: TcxGridDBColumn
          Caption = 'Dept'
          DataBinding.FieldName = 'user_dept'
          Visible = False
          Width = 102
        end
        object cxGridDBTableView1f_completed: TcxGridDBColumn
          DataBinding.FieldName = 'f_completed'
          Visible = False
        end
        object cxGridDBTableView1host: TcxGridDBColumn
          DataBinding.FieldName = 'host'
          Visible = False
        end
        object cxGridDBTableView1ppn: TcxGridDBColumn
          DataBinding.FieldName = 'ppn'
          Visible = False
        end
        object cxGridDBTableView1currency: TcxGridDBColumn
          DataBinding.FieldName = 'currency'
          Visible = False
        end
        object cxGridDBTableView1kode_alamat_kirim: TcxGridDBColumn
          DataBinding.FieldName = 'kode_alamat_kirim'
          Visible = False
        end
        object cxGridDBTableView1no_penawaran: TcxGridDBColumn
          DataBinding.FieldName = 'no_penawaran'
          Visible = False
        end
        object cxGridDBTableView1tgl_app: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_app'
          Visible = False
        end
        object cxGridDBTableView1user_app: TcxGridDBColumn
          DataBinding.FieldName = 'user_app'
          Visible = False
        end
        object cxGridDBTableView1divisi: TcxGridDBColumn
          DataBinding.FieldName = 'divisi'
          Visible = False
        end
        object cxGridDBTableView1f_cetak: TcxGridDBColumn
          DataBinding.FieldName = 'f_cetak'
          Visible = False
        end
        object cxGridDBTableView1digit: TcxGridDBColumn
          DataBinding.FieldName = 'digit'
          Visible = False
        end
        object cxGridDBTableView1no_so: TcxGridDBColumn
          DataBinding.FieldName = 'no_so'
          Visible = False
        end
        object cxGridDBTableView1ex_customer: TcxGridDBColumn
          DataBinding.FieldName = 'ex_customer'
          Visible = False
        end
        object cxGridDBTableView1nopol: TcxGridDBColumn
          DataBinding.FieldName = 'nopol'
          Visible = False
        end
        object cxGridDBTableView1driver: TcxGridDBColumn
          DataBinding.FieldName = 'driver'
          Visible = False
        end
        object cxGridDBTableView1f_terima_sj: TcxGridDBColumn
          DataBinding.FieldName = 'f_terima_sj'
          Visible = False
        end
        object cxGridDBTableView1f_samples: TcxGridDBColumn
          DataBinding.FieldName = 'f_samples'
          Visible = False
        end
        object cxGridDBTableView1user_request: TcxGridDBColumn
          Caption = 'User Request'
          DataBinding.FieldName = 'user_request'
          Width = 104
        end
        object cxGridDBTableView1no_internal: TcxGridDBColumn
          DataBinding.FieldName = 'no_internal'
          Visible = False
        end
        object cxGridDBTableView1no_po_pajak: TcxGridDBColumn
          DataBinding.FieldName = 'no_po_pajak'
          Visible = False
        end
        object cxGridDBTableView1tgl_required: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_required'
          Visible = False
        end
        object cxGridDBTableView1jenis_po: TcxGridDBColumn
          DataBinding.FieldName = 'jenis_po'
          Visible = False
        end
        object cxGridDBTableView1jenis_po2: TcxGridDBColumn
          DataBinding.FieldName = 'jenis_po2'
          Visible = False
        end
        object cxGridDBTableView1jam: TcxGridDBColumn
          DataBinding.FieldName = 'jam'
          Visible = False
        end
        object cxGridDBTableView1keterangan: TcxGridDBColumn
          DataBinding.FieldName = 'keterangan'
          Visible = False
        end
        object cxGridDBTableView1f_revisi: TcxGridDBColumn
          DataBinding.FieldName = 'f_revisi'
          Visible = False
        end
        object cxGridDBTableView1user_edit: TcxGridDBColumn
          DataBinding.FieldName = 'user_edit'
          Visible = False
        end
        object cxGridDBTableView1tgl_edit: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_edit'
          Visible = False
        end
        object cxGridDBTableView1tgl_input: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_input'
          Visible = False
        end
        object cxGridDBTableView1user_void: TcxGridDBColumn
          DataBinding.FieldName = 'user_void'
          Visible = False
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsPOdet
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
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 406
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 717
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
    inherited btnHapus: TButton
      Left = 175
      Top = 30
      Caption = '&Void'
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 255
      Top = 30
      Caption = '&Unapprove'
      Visible = True
    end
    inherited btnSimpan: TButton
      Left = 515
      Top = 20
      Caption = '&Cetak'
      Visible = False
    end
    object btnCetak: TButton
      Left = 335
      Top = 31
      Width = 75
      Height = 25
      Caption = 'Cetak PO'
      TabOrder = 6
      OnClick = btnCetakClick
    end
  end
  object zqrDaftarPO: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT a.*,b.nama FROM tbl_po_head as a left join tbl_supplier a' +
        's b on a.kode_supp=b.kode'
      ' WHERE (a.tanggal BETWEEN :tgl1 AND :tgl2)')
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
  object dsDaftarPO: TDataSource
    DataSet = zqrDaftarPO
    Left = 500
    Top = 30
  end
  object zPODet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a. *,b.deskripsi FROM tbl_po_det as a join tbl_barang as ' +
        'b on a.kode_brg=b.kode')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsPOdet: TDataSource
    DataSet = zPODet
    Left = 576
    Top = 20
  end
end
