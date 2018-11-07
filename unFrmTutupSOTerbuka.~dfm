object frmTutupSOTerbuka: TfrmTutupSOTerbuka
  Left = 147
  Top = 104
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penutupan SO Terbuka'
  ClientHeight = 493
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 51
    Width = 1130
    Height = 200
    Align = alTop
    TabOrder = 0
    object cxgTblHead: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cxgTblHeadFocusedRecordChanged
      DataController.DataSource = dsHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object cxgTblHeadno_bukti: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_bukti'
        Options.Editing = False
        Options.Moving = False
        Width = 93
      end
      object cxgTblHeadtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Options.Editing = False
        Options.Moving = False
        Width = 75
      end
      object cxgTblHeadkode_customer: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode_customer'
        Visible = False
        Options.Editing = False
        Options.Moving = False
        Width = 109
      end
      object cxgTblHeadnama: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'nama'
        Options.Editing = False
        Options.Moving = False
        Width = 279
      end
      object cxgTblHeadColumn1: TcxGridDBColumn
        Caption = 'Qty. SO'
        DataBinding.FieldName = 'qty_so'
        Options.Editing = False
        Options.Moving = False
      end
      object cxgTblHeadColumn2: TcxGridDBColumn
        Caption = 'Qty. SJ'
        DataBinding.FieldName = 'qty_sj'
        Options.Editing = False
        Options.Moving = False
      end
      object cxgTblHeadalamat: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'alamat'
        Options.Editing = False
        Options.Moving = False
        Width = 268
      end
      object cxgTblHeadf_completed: TcxGridDBColumn
        Caption = 'Status Komplit'
        DataBinding.FieldName = 'f_completed'
        Visible = False
        Options.Editing = False
        Options.Moving = False
        Width = 94
      end
      object cxgTblHeaduser: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        Options.Editing = False
        Options.Moving = False
        Width = 97
      end
      object cxgTblHeaduser_dept: TcxGridDBColumn
        Caption = 'Dept'
        DataBinding.FieldName = 'user_dept'
        Options.Editing = False
        Options.Moving = False
        Width = 48
      end
      object cxgTblHeadnotes: TcxGridDBColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'notes'
        Options.Editing = False
        Options.Moving = False
        Width = 96
      end
      object cxgTblHeadpo: TcxGridDBColumn
        Caption = 'PO#'
        DataBinding.FieldName = 'po#'
        Options.Editing = False
        Options.Moving = False
      end
      object cxgTblHeadsc: TcxGridDBColumn
        Caption = 'SC#'
        DataBinding.FieldName = 'sc#'
        Options.Editing = False
        Options.Moving = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxgTblHead
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1130
    Height = 51
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 14
      Top = 16
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 15
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 16
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 15
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 344
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object cxMemo1: TcxMemo
      Left = 450
      Top = 10
      Lines.Strings = (
        'SELECT a.*, b.qty_so, b.qty_sj'
        'FROM v_so_head a LEFT JOIN '
        '('
        'select no_so, sum(qty_so) qty_so, '
        'sum(qty_kirim) qty_sj '
        'from v_so_vs_sj_2'
        'group by no_so'
        ') b ON a.no_bukti = b.no_so'
        'WHERE tanggal BETWEEN :tgl1 '
        'AND :tgl2 AND f_completed = 0'
        'AND LEFT(no_bukti,3) = '#39'MTS'#39
        'ORDER BY tanggal')
      TabOrder = 5
      Visible = False
      Height = 89
      Width = 185
    end
    object btnProses2: TButton
      Left = 682
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 6
      OnClick = btnProses2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 441
    Width = 1130
    Height = 52
    Align = alBottom
    TabOrder = 2
    object btnCetak: TButton
      Left = 14
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Tutup SO'
      TabOrder = 0
      OnClick = btnCetakClick
    end
    object btnBatal: TButton
      Left = 90
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      OnClick = btnBatalClick
    end
    object Button1: TButton
      Left = 210
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Pilih'
      TabOrder = 2
      Visible = False
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 251
    Width = 1130
    Height = 190
    Align = alTop
    TabOrder = 3
    object cxgTblDet: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSODet2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxgTblDetno_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
        Visible = False
      end
      object cxgTblDetkode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxgTblDetdeskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 359
      end
      object cxgTblDetqty: TcxGridDBColumn
        Caption = 'Qty'
        DataBinding.FieldName = 'qty'
      end
      object cxgTblDetsatuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 71
      end
      object cxgTblDetf_completed: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
        Visible = False
      end
      object cxgTblDetnotes: TcxGridDBColumn
        Caption = 'Notes'
        DataBinding.FieldName = 'notes'
        Width = 304
      end
      object cxgTblDetqty_g02: TcxGridDBColumn
        DataBinding.FieldName = 'qty_g02'
        Visible = False
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = cxgTblDet
    end
  end
  object Memo1: TMemo
    Left = 640
    Top = 120
    Width = 185
    Height = 89
    Lines.Strings = (
      'SELECT a.*, b.qty_so, b.qty_sj'
      'FROM v_so_head a LEFT JOIN '
      '('
      'select no_so, sum(qty_so) qty_so, '
      'sum(qty_kirim) qty_sj '
      'from v_so_vs_sj'
      'group by no_so'
      ') b ON a.no_bukti = b.no_so'
      'WHERE tanggal BETWEEN :tgl1 '
      'AND :tgl2 AND f_completed = 0 '
      'AND LEFT(no_bukti,3) = '#39'MTS'#39
      'ORDER BY tanggal')
    TabOrder = 4
    Visible = False
  end
  object Memo2: TMemo
    Left = 800
    Top = 140
    Width = 185
    Height = 89
    Lines.Strings = (
      'select a.no_bukti no_bukti, a.tanggal, '
      'b.kode_brg, d.deskripsi, '
      'a.kode_customer, e.nama, e.alamat, '
      'a.user, a.user_dept,'
      'b.qty qty_so, sum(ifnull(c.qty,0)) qty_sj'
      'from tbl_so_head a join tbl_so_det b '
      'on a.no_bukti = b.no_bukti'
      'left join tbl_sj_det c on c.no_so = '
      'b.no_bukti and c.kode_brg = '
      'b.kode_brg'
      'left join tbl_barang d on d.kode = '
      'b.kode_brg'
      'left join tbl_customer e on e.kode = '
      'a.kode_customer'
      'where left(a.no_bukti,3) = '#39'SPL'#39' and '
      'a.tanggal between :tgl1 and :tgl2 and'
      'a.f_completed = 0'
      'group by a.no_bukti, a.tanggal, '
      'b.kode_brg, b.qty, d.deskripsi;')
    TabOrder = 5
    Visible = False
  end
  object zqrSOHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.qty_so, b.qty_sj'
      'FROM v_so_head a LEFT JOIN '
      '('
      'select no_so, sum(qty_so) qty_so, sum(qty_kirim) qty_sj '
      'from v_so_vs_sj'
      'group by no_so'
      ') b ON a.no_bukti = b.no_so'
      'WHERE tanggal BETWEEN :tgl1 AND :tgl2 AND f_completed = 0'
      'AND LEFT(a.no_bukti,2) = '#39'SO'#39
      'ORDER BY tanggal')
    Params = <
      item
        DataType = ftDateTime
        Name = 'tgl1'
        ParamType = ptUnknown
        Value = 41699d
      end
      item
        DataType = ftDateTime
        Name = 'tgl2'
        ParamType = ptUnknown
        Value = 41728d
      end>
    Left = 320
    Top = 174
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'tgl1'
        ParamType = ptUnknown
        Value = 41699d
      end
      item
        DataType = ftDateTime
        Name = 'tgl2'
        ParamType = ptUnknown
        Value = 41728d
      end>
  end
  object dsHead: TDataSource
    DataSet = zqrSOHead
    Left = 350
    Top = 174
  end
  object zqrSODet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_so_det')
    Params = <>
    MasterSource = dsHead
    Left = 380
    Top = 174
  end
  object dsDet: TDataSource
    DataSet = zqrSODet
    Left = 410
    Top = 174
  end
  object zqrSODet2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_so_det WHERE no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    MasterSource = dsHead
    Left = 440
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsSODet2: TDataSource
    DataSet = zqrSODet2
    Left = 470
    Top = 174
  end
end
