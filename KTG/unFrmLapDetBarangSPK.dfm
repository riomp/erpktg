inherited frmLapDetBarangSPK: TfrmLapDetBarangSPK
  Left = 320
  Top = 82
  Caption = 'frmLapDetBarangSPK'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTengah: TPanel
    object cxGrid1: TcxGrid
      Left = 15
      Top = 25
      Width = 781
      Height = 200
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsBrgH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblno_is: TcxGridDBColumn
          DataBinding.FieldName = 'no_is'
        end
        object cxTblkode: TcxGridDBColumn
          DataBinding.FieldName = 'kode'
        end
      end
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsBrgH
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1kode: TcxGridDBColumn
          DataBinding.FieldName = 'kode'
        end
        object cxGrid1DBTableView1no_is: TcxGridDBColumn
          DataBinding.FieldName = 'no_is'
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSPK
        DataController.DetailKeyFieldNames = 'kode_brg_induk'
        DataController.KeyFieldNames = 'kode_brg_induk'
        DataController.MasterKeyFieldNames = 'kode'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView2kode_brg_induk: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg_induk'
        end
        object cxGrid1DBTableView2no_spk: TcxGridDBColumn
          DataBinding.FieldName = 'no_spk'
        end
        object cxGrid1DBTableView2kode_brg: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
  end
  object zqrBrgH: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT no_is, kode '
      'FROM tbl_barang '
      'WHERE LEFT(kode,1) = '#39'A'#39
      'ORDER BY deskripsi')
    Params = <>
    Left = 180
    Top = 25
  end
  object dsBrgH: TDataSource
    DataSet = zqrBrgH
    Left = 210
    Top = 25
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT b.kode_brg kode_brg_induk, a.no_spk, a.kode_brg'
      'FROM tbl_spk a'
      'LEFT JOIN tbl_routing b ON a.kode_brg = a.kode_brg'
      'ORDER BY b.no;')
    Params = <>
    Left = 240
    Top = 25
  end
  object dsSPK: TDataSource
    DataSet = zqrSPK
    Left = 270
    Top = 25
  end
end
