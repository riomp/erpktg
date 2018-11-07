inherited frmSummaryBalance: TfrmSummaryBalance
  Left = 625
  Top = 265
  Width = 919
  Height = 582
  Caption = 'Account Summary Balance'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 903
    Height = 91
    inherited lblJudul: TLabel
      Width = 107
      Caption = 'Trial Balance'
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
    object cxLabel2: TcxLabel
      Left = 190
      Top = 52
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 51
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 49
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Top = 91
    Width = 903
    Height = 376
    Align = alClient
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 901
      Height = 374
      Align = alClient
      TabOrder = 0
      object cxTblSummary: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSummary
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        object cxTblSummarynoakun: TcxGridDBColumn
          Caption = 'No.Akun'
          DataBinding.FieldName = 'noakun'
          Width = 61
        end
        object cxTblSummarynama: TcxGridDBColumn
          Caption = 'Nama Akun'
          DataBinding.FieldName = 'nama'
          Width = 382
        end
        object cxTblSummarysawal: TcxGridDBColumn
          Caption = 'Saldo Awal'
          DataBinding.FieldName = 'sawal'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Width = 113
        end
        object cxTblSummarydebet: TcxGridDBColumn
          Caption = 'Debet'
          DataBinding.FieldName = 'debet'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Width = 96
        end
        object cxTblSummarykredit: TcxGridDBColumn
          Caption = 'Kredit'
          DataBinding.FieldName = 'kredit'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Width = 110
        end
        object cxTblSummarysakhir: TcxGridDBColumn
          Caption = 'Saldo Akhir'
          DataBinding.FieldName = 'sakhir'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Width = 116
        end
      end
      object cxGridDBTableView3: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DetailKeyFieldNames = 'no_bukti'
        DataController.MasterKeyFieldNames = 'no_bukti'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGridDBColumn42: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxGridDBColumn43: TcxGridDBColumn
          DataBinding.FieldName = 'no_bukti'
          Visible = False
          Width = 64
        end
        object cxGridDBColumn44: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_brg'
          Width = 103
        end
        object cxGridDBColumn45: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 312
        end
        object cxGridDBColumn46: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
        end
        object cxGridDBColumn47: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 64
        end
        object cxGridDBColumn48: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 252
        end
        object cxGridDBColumn49: TcxGridDBColumn
          DataBinding.FieldName = 'mata_uang'
          Visible = False
          Width = 64
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxTblSummary
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 467
    Width = 903
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 712
    end
    inherited btnBaru: TButton
      Left = 130
      Width = 151
      Caption = '&Buku Pembantu Piutang'
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 555
      Top = 5
    end
    inherited btnHapus: TButton
      Left = 635
      Top = 5
    end
    inherited btnBatal: TButton
      Left = 475
    end
    inherited btnSimpan: TButton
      Width = 111
      Caption = 'Buku Pembantu'
    end
  end
  object zqrSummary: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'select f.noakun,f.nama,'
      
        'IFNULL((SELECT sum(debet) from tbl_jurnal_det where akun=f.noaku' +
        'n and tanggal < :tgl1),0)- '
      
        'IFNULL((SELECT sum(kredit) from tbl_jurnal_det where akun=f.noak' +
        'un and tanggal <:tgl1),0) sawal,'
      
        'IFNULL((select SUM(a.debet) from tbl_jurnal_det a left join tbl_' +
        'jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (b' +
        '.tanggal BETWEEN :tgl1 AND :tgl2)),0)debet,'
      
        'IFNULL((select SUM(a.kredit) from tbl_jurnal_det a left join tbl' +
        '_jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (' +
        'b.tanggal BETWEEN :tgl1 AND :tgl2)),0)kredit,'
      
        'IFNULL((SELECT sum(debet) from tbl_jurnal_det where akun=f.noaku' +
        'n and tanggal < :tgl1),0)- '
      
        'IFNULL((SELECT sum(kredit) from tbl_jurnal_det where akun=f.noak' +
        'un and tanggal <:tgl1),0) + '
      
        '(IFNULL((select SUM(a.debet) from tbl_jurnal_det a left join tbl' +
        '_jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (' +
        'b.tanggal BETWEEN :tgl1 AND :tgl2)),0)-'
      
        'IFNULL((select SUM(a.kredit) from tbl_jurnal_det a left join tbl' +
        '_jurnal b on a.no_jurnal=b.no_jurnal where a.akun=f.noakun and (' +
        'b.tanggal BETWEEN :tgl1 AND :tgl2)),0)) sakhir '
      
        'from tbl_coa f where (SELECT COUNT(noakun) FROM tbl_coa WHERE in' +
        'duk = f.noakun) = 0')
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
  object dsSummary: TDataSource
    DataSet = zqrSummary
    Left = 500
    Top = 30
  end
end
