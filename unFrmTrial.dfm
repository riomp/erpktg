inherited frmTrial: TfrmTrial
  Left = 253
  Top = 223
  Width = 1043
  Height = 495
  Caption = 'Trial'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1027
    Height = 51
    inherited lblJudul: TLabel
      Top = 15
      Width = 95
      Caption = 'Daftar Trial'
    end
  end
  inherited pnlTengah: TPanel
    Top = 51
    Width = 1027
    Height = 360
    object cxGrd: TcxGrid
      Left = 15
      Top = 38
      Width = 1001
      Height = 273
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsTrial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object cxTblno_bukti: TcxGridDBColumn
          Caption = 'No. Trial'
          DataBinding.FieldName = 'no_bukti'
          MinWidth = 10
          Width = 86
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblcustomer: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'customer'
          Width = 121
        end
        object cxTblf_contoh: TcxGridDBColumn
          Caption = 'Contoh'
          DataBinding.FieldName = 'f_contoh'
          Width = 43
        end
        object cxTblwarna: TcxGridDBColumn
          DataBinding.FieldName = 'warna'
        end
        object cxTblpanjang: TcxGridDBColumn
          Caption = 'Panjang'
          DataBinding.FieldName = 'panjang'
          Width = 56
        end
        object cxTbllebar: TcxGridDBColumn
          Caption = 'Lebar'
          DataBinding.FieldName = 'lebar'
          Width = 58
        end
        object cxTblkekerasan: TcxGridDBColumn
          Caption = 'Kekerasan'
          DataBinding.FieldName = 'kekerasan'
        end
        object cxTblkekenyalan: TcxGridDBColumn
          Caption = 'Kekenyalan'
          DataBinding.FieldName = 'kekenyalan'
          Width = 78
        end
        object cxTblf_status: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'f_status'
        end
        object cxTblketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 167
        end
        object cxTblhasil_trial: TcxGridDBColumn
          Caption = 'Hasil Trial'
          DataBinding.FieldName = 'hasil_trial'
          Width = 238
        end
        object cxTblf_app: TcxGridDBColumn
          Caption = 'App. Management'
          DataBinding.FieldName = 'f_app'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ReadOnly = False
          Width = 106
        end
        object cxTblUser: TcxGridDBColumn
          Caption = 'User Input'
          DataBinding.FieldName = 'user'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel1: TcxLabel
      Left = 12
      Top = 9
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 60
      Top = 7
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 185
      Top = 9
      Caption = 'S / D '
    end
    object cxdTgl2: TcxDateEdit
      Left = 215
      Top = 7
      TabOrder = 4
      Width = 121
    end
    object btnProses: TButton
      Left = 341
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 5
      OnClick = btnProsesClick
    end
    object pnlBtnQAC: TPanel
      Left = 2
      Top = 315
      Width = 321
      Height = 41
      BevelOuter = bvNone
      TabOrder = 6
      object btnTambah: TButton
        Left = 13
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Tambah'
        TabOrder = 0
        OnClick = btnTambahClick
      end
      object btnLihat: TButton
        Left = 93
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Lihat'
        TabOrder = 1
        OnClick = btnLihatClick
      end
      object btnExcel: TButton
        Left = 173
        Top = 8
        Width = 113
        Height = 25
        Caption = 'Cetak Excel'
        TabOrder = 2
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 411
    Width = 1027
    Height = 45
    inherited btnKeluar: TButton
      Left = 542
      Top = 10
      Visible = False
    end
    inherited btnBaru: TButton
      Left = 620
      Top = 10
    end
    inherited btnEdit: TButton
      Left = 700
      Top = 10
    end
    inherited btnHapus: TButton
      Left = 780
      Top = 10
    end
    inherited btnBatal: TButton
      Left = 860
      Top = 10
    end
    inherited btnSimpan: TButton
      Left = 940
      Top = 10
      Visible = False
    end
    object btnKeluar2: TButton
      Left = 15
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 6
      OnClick = btnKeluar2Click
    end
  end
  object zqrTrial: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_trial')
    Params = <>
    Left = 395
    Top = 15
  end
  object dsTrial: TDataSource
    DataSet = zqrTrial
    Left = 425
    Top = 15
  end
end
