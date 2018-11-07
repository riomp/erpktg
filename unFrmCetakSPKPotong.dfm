object frmCetakSPKPotong: TfrmCetakSPKPotong
  Left = 227
  Top = 171
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cetak SPK Potong'
  ClientHeight = 442
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnCetak: TButton
    Left = 15
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 1
    OnClick = btnCetakClick
  end
  object btnKeluar: TButton
    Left = 95
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 2
    OnClick = btnKeluarClick
  end
  object cxGrid1: TcxGrid
    Left = 15
    Top = 20
    Width = 721
    Height = 374
    TabOrder = 0
    object tblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPKPHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object tblViewno_bukti: TcxGridDBColumn
        Caption = 'No. Trans'
        DataBinding.FieldName = 'no_bukti'
      end
      object tblViewtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object tblViewjam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
        Visible = False
      end
      object tblViewuser: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
      end
      object tblViewuser_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
      end
    end
    object tblViewDet: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPKPDet
      DataController.DetailKeyFieldNames = 'no_bukti'
      DataController.KeyFieldNames = 'no_bukti'
      DataController.MasterKeyFieldNames = 'no_bukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object tblViewDetno_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 64
      end
      object tblViewDetno_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 64
      end
      object tblViewDetkode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object tblViewDetdeskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 290
      end
      object tblViewDetqty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        Width = 49
      end
      object tblViewDetsatuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
        Width = 64
      end
      object tblViewDetkode_gdg: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'kode_gdg'
        Width = 64
      end
      object tblViewDetjenis: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'jenis'
        Width = 64
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tblView
      object cxGrid1Level2: TcxGridLevel
        GridView = tblViewDet
      end
      object cxGrid1Level3: TcxGridLevel
      end
    end
  end
  object cxGrid2: TcxGrid
    Left = 40
    Top = 10
    Width = 721
    Height = 374
    TabOrder = 3
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsAssemHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBTableView1no_bukti: TcxGridDBColumn
        Caption = 'No. Trans'
        DataBinding.FieldName = 'no_bukti'
      end
      object cxGridDBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBTableView1jam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
        Visible = False
      end
      object cxGridDBTableView1user: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
      end
      object cxGridDBTableView1user_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
      end
      object cxGridDBTableView1tgl_input: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_input'
        Visible = False
      end
      object cxGridDBTableView1f_approval: TcxGridDBColumn
        DataBinding.FieldName = 'f_approval'
        Visible = False
      end
      object cxGridDBTableView1no_so: TcxGridDBColumn
        DataBinding.FieldName = 'no_so'
        Visible = False
      end
      object cxGridDBTableView1f_receipt: TcxGridDBColumn
        DataBinding.FieldName = 'f_receipt'
        Visible = False
      end
    end
    object cxGridDBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsAssemDet
      DataController.DetailKeyFieldNames = 'no_bukti'
      DataController.KeyFieldNames = 'no_bukti'
      DataController.MasterKeyFieldNames = 'no_bukti'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBColumn8: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBColumn9: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 290
      end
      object cxGridDBColumn10: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
        Width = 49
      end
      object cxGridDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
        Width = 64
      end
      object cxGridDBColumn12: TcxGridDBColumn
        Caption = 'Gudang'
        DataBinding.FieldName = 'kode_gdg'
        Width = 64
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
      object cxGridLevel3: TcxGridLevel
      end
    end
  end
  object zqrSPKPHead: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_trsspkpotong_head '
      'WHERE f_approval = 1')
    Params = <>
    Left = 115
    Top = 70
  end
  object dsSPKPHead: TDataSource
    DataSet = zqrSPKPHead
    Left = 145
    Top = 70
  end
  object zqrSPKPDet: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_lap_spk_potong_det_all')
    Params = <>
    Left = 125
    Top = 80
  end
  object dsSPKPDet: TDataSource
    DataSet = zqrSPKPDet
    Left = 155
    Top = 80
  end
  object zqrAssemHead: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_trsspkassembly_head ')
    Params = <>
    Left = 560
    Top = 65
  end
  object zqrAssemDet: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_lap_spk_assembly_det')
    Params = <>
    Left = 570
    Top = 80
  end
  object dsAssemDet: TDataSource
    DataSet = zqrAssemDet
    Left = 600
    Top = 75
  end
  object dsAssemHead: TDataSource
    DataSet = zqrAssemHead
    Left = 590
    Top = 65
  end
end
