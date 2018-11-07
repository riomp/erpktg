inherited frmDaftarControlPlan1: TfrmDaftarControlPlan1
  Left = 414
  Top = 202
  Width = 891
  Height = 614
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Daftar Control Plan'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 875
    inherited lblJudul: TLabel
      Width = 158
      Caption = 'Daftar Control Plan'
    end
  end
  inherited pnlTengah: TPanel
    Width = 875
    Height = 430
    object cxGrd2: TcxGrid
      Left = 6
      Top = 4
      Width = 846
      Height = 412
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarCP
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
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
    Top = 496
    Width = 875
    inherited btnBaru: TButton
      Left = 175
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 255
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 775
      Top = 30
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 335
      Top = 25
      Width = 116
      Caption = '&Cetak Excel'
      Visible = True
    end
    inherited btnSimpan: TButton
      Caption = '&Cetak'
    end
  end
  object zQry: TZQuery
    Connection = dm.zConn
    Params = <>
    Left = 365
    Top = 20
  end
  object ds: TDataSource
    DataSet = zQry
    Left = 395
    Top = 20
  end
  object zqrDaftarCP: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_cp, a.no_is, a.kode, a.deskripsi,'
      'c.nama'
      'FROM tbl_cp a'
      'LEFT JOIN tbl_is b ON b.no_is = a.no_is'
      'LEFT JOIN tbl_customer c ON c.kode = a.kode_customer'
      'WHERE a.f_aktif = 1'
      'ORDER BY a.no_cp desc')
    Params = <>
    Left = 425
    Top = 20
  end
  object dsDaftarCP: TDataSource
    DataSet = zqrDaftarCP
    Left = 455
    Top = 20
  end
  object zqrDaftarCP2: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_cp, a.no_is, a.kode, a.deskripsi,'
      'c.nama'
      'FROM tbl_cp a'
      'LEFT JOIN tbl_is b ON b.no_is = a.no_is'
      'LEFT JOIN tbl_customer c ON c.kode = b.kode_customer'
      'WHERE a.f_aktif = 1'
      'ORDER BY a.deskripsi')
    Params = <>
    Left = 485
    Top = 20
  end
  object dsDaftarCP2: TDataSource
    DataSet = zqrDaftarCP2
    Left = 515
    Top = 20
  end
end
