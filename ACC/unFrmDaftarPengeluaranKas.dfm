inherited frmDaftarKeluarKas: TfrmDaftarKeluarKas
  Left = 547
  Top = 266
  Height = 627
  Caption = 'Daftar Pengeluaran Kas'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Height = 86
    inherited lblJudul: TLabel
      Width = 194
      Caption = 'Daftar Pengeluaran Kas'
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 52
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 51
      TabOrder = 1
      Width = 121
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 51
      TabOrder = 2
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 3
      OnClick = btnProsesClick
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 52
      Caption = 'S/D'
    end
  end
  inherited pnlTengah: TPanel
    Top = 86
    Height = 426
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 810
      Height = 424
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsKasKeluar
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
          Width = 42
        end
        object cxGridDBTableView1no_jurnal: TcxGridDBColumn
          Caption = 'No.Transaksi'
          DataBinding.FieldName = 'no_jurnal'
          Width = 106
        end
        object cxGridDBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 76
        end
        object cxGridDBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 424
        end
        object cxGridDBTableView1jumlah: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Width = 102
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
    Top = 512
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 722
    end
    inherited btnBaru: TButton
      Left = 15
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 95
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 175
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 460
      Top = 25
    end
    inherited btnSimpan: TButton
      Left = 345
      Top = 20
      Visible = False
    end
  end
  object zqrKasKeluar: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT a.f_posted,a.no_jurnal, a.tanggal, b.keterangan, b.debet ' +
        '+ b.kredit jumlah FROM '
      
        'tbl_jurnal a INNER JOIN tbl_jurnal_det b ON a.no_jurnal = b.no_j' +
        'urnal'
      'LEFT JOIN tbl_coa c ON c.noakun = b.akun'
      
        'WHERE a.jenis = '#39'OK'#39' AND b.f_head = 1 and (a.tanggal BETWEEN :tg' +
        'l1 AND :tgl2) ')
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
  object dsKasKeluar: TDataSource
    DataSet = zqrKasKeluar
    Left = 500
    Top = 30
  end
end
