inherited frmDaftarControlPlan: TfrmDaftarControlPlan
  Left = 221
  Top = 77
  Caption = 'Daftar Control Plan'
  ClientHeight = 400
  ClientWidth = 876
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 876
    inherited lblJudul: TLabel
      Width = 158
      Caption = 'Daftar Control Plan'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 876
    Height = 295
    inherited pg: TPageControl
      Left = 586
      Top = 51
      Align = alNone
      Visible = False
    end
    object cxGrd2: TcxGrid
      Left = 15
      Top = 15
      Width = 846
      Height = 261
      TabOrder = 1
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarCP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblno_cp: TcxGridDBColumn
          Caption = 'No. CP'
          DataBinding.FieldName = 'no_cp'
          Width = 119
        end
        object cxTblno_is: TcxGridDBColumn
          Caption = 'No. IS'
          DataBinding.FieldName = 'no_is'
          Width = 144
        end
        object cxTblnama: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'nama'
          Width = 196
        end
        object cxTblkode: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'kode'
          Width = 98
        end
        object cxTbldeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 366
        end
      end
      object cxGrd2Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
  end
  inherited pnlBawah: TPanel
    Left = 850
    Top = 376
    Width = 876
    Align = alNone
  end
  object btnCetak: TButton [3]
    Left = 15
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 3
    OnClick = btnCetakClick
  end
  object btnKeluar2: TButton [4]
    Left = 95
    Top = 367
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 4
    OnClick = btnKeluar2Click
  end
  object zqrDaftarCP: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_cp, a.no_is, a.kode, a.deskripsi,'
      'c.nama'
      'FROM tbl_barang a'
      'LEFT JOIN tbl_is b ON b.no_is = a.no_is'
      'LEFT JOIN tbl_customer c ON c.kode = b.kode_customer'
      'WHERE a.f_aktif = 1'
      'ORDER BY a.deskripsi')
    Params = <>
    Left = 425
    Top = 20
  end
  object dsDaftarCP: TDataSource
    DataSet = zqrDaftarCP
    Left = 455
    Top = 20
  end
end
