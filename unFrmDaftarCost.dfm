inherited frmDaftarCost: TfrmDaftarCost
  Left = 640
  Top = 282
  Width = 904
  Height = 463
  Caption = 'Daftar Cost Calculation'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 888
    inherited lblJudul: TLabel
      Width = 311
      Caption = 'Daftar Cost Calculation (HPP Standar)'
    end
  end
  inherited pnlTengah: TPanel
    Width = 888
    Height = 280
    object cxGrd2: TcxGrid
      Left = 10
      Top = 4
      Width = 867
      Height = 261
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarCost
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblno_cost: TcxGridDBColumn
          Caption = 'No.Cost'
          DataBinding.FieldName = 'no_cost'
        end
        object cxTbltgl_cost: TcxGridDBColumn
          Caption = 'Tgl.Pembuatan'
          DataBinding.FieldName = 'tgl_cost'
          Width = 105
        end
        object cxTblkode_brg: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTbldeskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
        end
      end
      object cxGrd2Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 346
    Width = 888
    inherited btnKeluar: TButton
      Left = 17
      Top = 30
    end
    inherited btnBaru: TButton
      Left = 95
      Top = 30
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 800
      Top = 30
      Caption = '&Approve'
    end
    inherited btnHapus: TButton
      Left = 175
      Top = 30
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 255
      Top = 30
      Caption = '&Edit'
      Visible = True
    end
    inherited btnSimpan: TButton
      Left = 335
      Top = 30
      Caption = '&Cetak'
    end
  end
  object zqrDaftarCost: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_cost,a.tgl_cost,a.kode_brg,b.deskripsi'
      
        'FROM tbl_cost_head as a join tbl_barang as b on a.kode_brg=b.kod' +
        'e')
    Params = <>
    Left = 425
    Top = 20
  end
  object dsDaftarCost: TDataSource
    DataSet = zqrDaftarCost
    Left = 455
    Top = 20
  end
end
