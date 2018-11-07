inherited frmPencairanDana: TfrmPencairanDana
  Left = 412
  Top = 145
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Pencairan'
  ClientHeight = 593
  ClientWidth = 1035
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1035
    inherited lblJudul: TLabel
      Width = 86
      Caption = 'Pencairan '
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Left = 765
    Top = 205
    Width = 270
    Height = 61
    Align = alNone
    TabOrder = 3
    Visible = False
    inherited pg: TPageControl
      Width = 268
      Height = 59
    end
  end
  inherited pnlBawah: TPanel
    Top = 545
    Width = 1035
    Height = 48
    Align = alBottom
    TabOrder = 4
    inherited btnKeluar: TButton
      Left = 1375
      Top = 20
      TabOrder = 7
    end
    inherited btnTambah: TButton
      Left = 920
      Top = 20
      TabOrder = 2
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 995
      Top = 20
      TabOrder = 3
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 1070
      Top = 20
      TabOrder = 4
    end
    inherited btnBatal: TButton
      Left = 1300
      Top = 20
      TabOrder = 6
    end
    inherited btnSimpan: TButton
      Left = 1225
      Top = 20
      TabOrder = 5
    end
    object btnApprove: TButton
      Left = 11
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Approve'
      TabOrder = 0
      OnClick = btnApproveClick
    end
    object btnKeluar2: TButton
      Left = 91
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = btnKeluar2Click
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 66
    Width = 1035
    Height = 50
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 15
      Top = 15
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 13
      TabOrder = 1
      Width = 121
    end
    object cxdTgl2: TcxDateEdit
      Left = 223
      Top = 13
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 194
      Top = 15
      Caption = 'S/D'
    end
    object btnProses: TButton
      Left = 352
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 0
      OnClick = btnProsesClick
    end
  end
  object cxGrid1: TcxGrid [4]
    Left = 0
    Top = 116
    Width = 1035
    Height = 429
    Align = alClient
    TabOrder = 2
    object cxtbJurnal: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsPelunasan
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxtbJurnalno_bukti: TcxGridDBColumn
        Caption = 'No. Bukti'
        DataBinding.FieldName = 'no_bukti'
        Width = 84
      end
      object cxtbJurnalColumn1: TcxGridDBColumn
        Caption = 'Nama Supplier'
        DataBinding.FieldName = 'nama_supp'
        Width = 257
      end
      object cxtbJurnaltanggal: TcxGridDBColumn
        Caption = 'Tanggal '
        DataBinding.FieldName = 'tanggal'
      end
      object cxtbJurnaljml_pembayaran: TcxGridDBColumn
        Caption = 'Jml. Pencairan'
        DataBinding.FieldName = 'jml_pembayaran'
        Width = 135
      end
      object cxtbJurnalakun_bank: TcxGridDBColumn
        Caption = 'Akun Bank'
        DataBinding.FieldName = 'akun_bank'
      end
      object cxtbJurnalnama: TcxGridDBColumn
        Caption = 'Nama Akun'
        DataBinding.FieldName = 'nama'
        Width = 324
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxtbJurnal
    end
  end
  object zqrPelunasan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti, a.tanggal, b.jml_pembayaran, a.akun_bank, c.n' +
        'ama, a.kode_supp, d.nama nama_supp'
      'from tbl_trspelunasan a'
      'left join tbl_trspelunasan_det b on a.no_bukti = b.no_bukti'
      'left join tbl_coa c on a.akun_bank = c.noakun'
      'left join tbl_supplier d on d.kode = a.kode_supp'
      'where a.tanggal between :tgl1 and :tgl2 and a.f_cair = 0')
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
    Left = 630
    Top = 10
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
  object dsPelunasan: TDataSource
    DataSet = zqrPelunasan
    Left = 660
    Top = 10
  end
end
