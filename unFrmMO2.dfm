object frmMO2: TfrmMO2
  Left = 451
  Top = 34
  Width = 1024
  Height = 711
  Caption = 'Master Order'
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
  object cxGrid2: TcxGrid
    Left = 0
    Top = 38
    Width = 1008
    Height = 273
    Align = alTop
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
      DataController.DataSource = dsMO
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.ColumnFilteredItemsList = True
      FilterRow.SeparatorWidth = 2
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      Styles.OnGetContentStyle = cxGridDBTableView1StylesGetContentStyle
      object cxGridDBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1Column2: TcxGridDBColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Width = 106
      end
      object cxGridDBTableView1no_bukti: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 96
      end
      object cxGridDBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 71
      end
      object cxGridDBTableView1kode_brg: TcxGridDBColumn
        Caption = 'Kode. Brg'
        DataBinding.FieldName = 'kode_brg'
        Options.Moving = False
      end
      object cxGridDBTableView1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Options.Moving = False
        Width = 303
      end
      object cxgColQtyMO: TcxGridDBColumn
        Caption = 'Qty. MO'
        DataBinding.FieldName = 'qty_mo'
        Options.Editing = False
        Options.Moving = False
      end
      object cxgColQtyG02: TcxGridDBColumn
        Caption = 'Qty. G-CUST'
        DataBinding.FieldName = 'qty_g02'
        Options.Editing = False
        Options.Moving = False
        Width = 79
      end
      object cxgColQtySJ: TcxGridDBColumn
        Caption = 'Qty. SJ'
        DataBinding.FieldName = 'qty_sj'
        Options.Editing = False
        Options.Moving = False
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'Qty. SJ Baik'
        DataBinding.FieldName = 'qty_sj_baik'
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        Caption = 'Qty. SJ Afkir'
        DataBinding.FieldName = 'qty_sj_afkir'
      end
      object cxGridDBTableView1Column7: TcxGridDBColumn
        Caption = 'Qty. SJ Retur'
        DataBinding.FieldName = 'qty_sj_retur'
      end
      object cxgColQtySO: TcxGridDBColumn
        Caption = 'Qty. SO'
        DataBinding.FieldName = 'qty_so'
        Options.Editing = False
      end
      object ColG01: TcxGridDBColumn
        Caption = 'Qty. G-SDP'
        DataBinding.FieldName = 'G01'
        Width = 82
      end
      object cxgColQtyMutasi: TcxGridDBColumn
        Caption = 'Qty. Mutasi'
        DataBinding.FieldName = 'qty_mutasi'
      end
      object cxgColQtyProd: TcxGridDBColumn
        Caption = 'Qty. Prod'
        DataBinding.FieldName = 'hsl_prod'
      end
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'No. Mutasi'
        DataBinding.FieldName = 'no_mutasi'
        Width = 94
      end
      object cxGridDBTableView1Column8: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 85
      end
      object cxGridDBTableView1Column5: TcxGridDBColumn
        Caption = 'Status SO'
        DataBinding.FieldName = 'status_so'
        Visible = False
        Options.Moving = False
      end
      object cxgColFSPK: TcxGridDBColumn
        DataBinding.FieldName = 'f_spk'
        Visible = False
        Options.Moving = False
      end
      object cxgColMesin: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'mesin'
      end
      object cxGridDBTableView1tgl_required: TcxGridDBColumn
        Caption = 'Tgl. Diperlukan'
        DataBinding.FieldName = 'tgl_required'
        Options.Moving = False
        Width = 86
      end
      object cxGridDBTableView1nama: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'nama_customer'
        Options.Moving = False
        Width = 231
      end
      object cxGridDBTableView1notes: TcxGridDBColumn
        DataBinding.FieldName = 'notes'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1kategori: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Options.Moving = False
        Width = 204
      end
      object cxGridDBTableView1user: TcxGridDBColumn
        DataBinding.FieldName = 'user'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1user_dept: TcxGridDBColumn
        DataBinding.FieldName = 'user_dept'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1satuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1notes_detail: TcxGridDBColumn
        DataBinding.FieldName = 'notes_detail'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1ket_harga: TcxGridDBColumn
        DataBinding.FieldName = 'ket_harga'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1kontak: TcxGridDBColumn
        DataBinding.FieldName = 'kontak'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1alamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
        Visible = False
        Options.Moving = False
      end
      object cxGridDBTableView1subkategori: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
        Visible = False
        Options.Moving = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 38
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 14
      Top = 9
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 9
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 8
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 345
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 620
    Width = 1008
    Height = 52
    Align = alBottom
    TabOrder = 2
    object btnCetak: TButton
      Left = 14
      Top = 12
      Width = 107
      Height = 25
      Caption = '&Cetak Excel'
      TabOrder = 0
      OnClick = btnCetakClick
    end
    object btnBatal: TButton
      Left = 125
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
  object Panel4: TPanel
    Left = 0
    Top = 480
    Width = 1008
    Height = 140
    Align = alBottom
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 10
      Top = 38
      Width = 671
      Height = 95
      Caption = ' Keterangan Warna '
      TabOrder = 4
      object Shape1: TShape
        Left = 337
        Top = 12
        Width = 21
        Height = 21
        Brush.Color = clYellow
      end
      object Shape2: TShape
        Left = 12
        Top = 42
        Width = 21
        Height = 21
        Brush.Color = clTeal
      end
      object Shape4: TShape
        Left = 337
        Top = 37
        Width = 21
        Height = 21
        Brush.Color = clAqua
      end
      object Shape3: TShape
        Left = 12
        Top = 17
        Width = 21
        Height = 21
      end
      object Shape5: TShape
        Left = 337
        Top = 62
        Width = 21
        Height = 21
        Brush.Color = clMoneyGreen
      end
      object cxLabel4: TcxLabel
        Left = 364
        Top = 14
        Caption = 'Sudah Mutasi Ke G-SDP ke G-CUST (Semua atau sebagian)'
      end
      object cxLabel5: TcxLabel
        Left = 39
        Top = 44
        Caption = 'Sales Order Sudah Selesai / Komplit (Qty. SO = Qty. SJ)'
      end
      object cxLabel7: TcxLabel
        Left = 364
        Top = 39
        Caption = 'Sudah Cetak SPK, Belum Ada Hasil Produksi'
      end
      object cxLabel6: TcxLabel
        Left = 39
        Top = 19
        Caption = 'Belum Ada Tindakan'
      end
      object cxLabel8: TcxLabel
        Left = 364
        Top = 64
        Caption = 'Sudah Ada Hasil Produksi'
      end
    end
    object nxGrd: TNextGrid
      Left = 841
      Top = 138
      Width = 636
      Height = 40
      Options = [goGrid, goHeader]
      TabOrder = 0
      TabStop = True
      Visible = False
      object NxTextColumn1: TNxTextColumn
        DefaultWidth = 93
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SJ'
        Position = 0
        SortType = stAlphabetic
        Width = 93
      end
      object NxNumberColumn1: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Position = 1
        SortType = stNumeric
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn2: TNxTextColumn
        DefaultWidth = 260
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Deskripsi'
        Position = 2
        SortType = stAlphabetic
        Width = 260
      end
      object NxTextColumn3: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 3
        SortType = stAlphabetic
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 85
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Terkirim'
        Position = 4
        SortType = stNumeric
        Width = 85
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
    end
    object NextGrid1: TNextGrid
      Left = 841
      Top = 176
      Width = 636
      Height = 37
      Options = [goGrid, goHeader]
      TabOrder = 1
      TabStop = True
      Visible = False
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 93
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SJ'
        Position = 0
        SortType = stAlphabetic
        Width = 93
      end
      object NxNumberColumn3: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Position = 1
        SortType = stNumeric
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn5: TNxTextColumn
        DefaultWidth = 260
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Deskripsi'
        Position = 2
        SortType = stAlphabetic
        Width = 260
      end
      object NxTextColumn6: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 3
        SortType = stAlphabetic
      end
      object NxNumberColumn4: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 85
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Terkirim'
        Position = 4
        SortType = stNumeric
        Width = 85
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
    end
    object nxGrdDetSPK: TNextGrid
      Left = 785
      Top = 37
      Width = 416
      Height = 121
      Options = [goGrid, goHeader]
      TabOrder = 2
      TabStop = True
      Visible = False
      object NxIncrementColumn1: TNxIncrementColumn
        DefaultWidth = 34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 0
        SortType = stAlphabetic
        Width = 34
      end
      object nxColNoSPK: TNxTextColumn
        DefaultWidth = 121
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        Position = 1
        SortType = stAlphabetic
        Width = 121
      end
      object nxColTgl: TNxDateColumn
        DefaultValue = '20/02/2014'
        DefaultWidth = 84
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Tanggal'
        Position = 2
        SortType = stDate
        Width = 84
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object nxColMesin: TNxTextColumn
        DefaultWidth = 106
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Mesin'
        Position = 3
        SortType = stAlphabetic
        Width = 106
      end
    end
    object cxLabel3: TcxLabel
      Left = 785
      Top = 17
      Caption = 'Detail SPK'
      Visible = False
    end
    object cxNavigator1: TcxNavigator
      Left = 10
      Top = 5
      Width = 248
      Height = 25
      Control = cxGrid2
      Buttons.ConfirmDelete = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = True
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = True
      InfoPanel.Font.Charset = DEFAULT_CHARSET
      InfoPanel.Font.Color = clDefault
      InfoPanel.Font.Height = -11
      InfoPanel.Font.Name = 'MS Sans Serif'
      InfoPanel.Font.Style = []
      TabOrder = 5
    end
    object Panel3: TPanel
      Left = 260
      Top = -5
      Width = 432
      Height = 41
      BevelOuter = bvNone
      TabOrder = 6
      object btnMasterSchedule: TButton
        Left = 9
        Top = 11
        Width = 77
        Height = 25
        Caption = 'SPK'
        TabOrder = 0
        OnClick = btnMasterScheduleClick
      end
      object btnSPKPotong: TButton
        Left = 89
        Top = 11
        Width = 87
        Height = 25
        Caption = 'SPK Potong'
        TabOrder = 1
        OnClick = btnSPKPotongClick
      end
      object btnSPKAssembly: TButton
        Left = 179
        Top = 11
        Width = 87
        Height = 25
        Caption = 'SPK Assembly'
        TabOrder = 2
        OnClick = btnSPKAssemblyClick
      end
      object btnMutasiStok: TButton
        Left = 269
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Mutasi Stok'
        TabOrder = 3
        OnClick = btnMutasiStokClick
      end
      object btnRefresh: TButton
        Left = 347
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 4
        OnClick = btnRefreshClick
      end
    end
  end
  object cxMemo1: TcxMemo
    Left = 35
    Top = 131
    Lines.Strings = (
      'SELECT SQL_BUFFER_RESULT'
      '  tbl_mo.no_mo,'
      '  tbl_mo.no_so,'
      '  tbl_mo.no_spk,'
      '  tbl_mo.tgl_spk,'
      '  tbl_mo.kode_brg,'
      '  tbl_mo.qty_mo,'
      '  tbl_mo.qty_so,'
      '  tbl_barang.deskripsi,'
      '  tbl_barang.kategori,'
      '  tbl_barang.subkategori,'
      '  tbl_barang.tipe,'
      '  tbl_so_head.tanggal,'
      '  tbl_so_head.kode_customer,'
      '  tbl_customer.nama AS nama_customer,'
      '  tbl_so_head.tgl_required,'
      '  tbl_mo.jml_revisi,'
      '  tbl_mo.qty_lama,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_mo.f_spk,'
      
        '  if((tbl_so_head.f_completed = 1), '#39'SELESAI'#39', '#39'BLM. SELESAI'#39') A' +
        'S status_so,'
      '  tbl_so_head.f_completed,'
      
        '  if(isnull(tbl_mo.no_mutasi), 0, (select (sum(if((`tipe` = '#39'IN_' +
        #39'),ifnull(`qty`,0),0)) - sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,0' +
        '),0))) from tbl_history where kode_brg = tbl_mo.kode_brg '
      'and no_so = tbl_mo.no_so and gudang = '#39'G02'#39')) AS qty_g02_2,'
      '  tbl_mo.no_mutasi,'
      
        '  (select kode_mesin from tbl_spk WHERE no_spk = tbl_mo.no_spk) ' +
        'mesin,'
      
        'ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,0),0)) from' +
        ' tbl_history where gudang = '#39'G02'#39' and left(no_bukti,2) = '#39'SJ'#39' an' +
        'd kode_brg = tbl_mo.kode_brg and no_so = '
      'tbl_mo.no_so),0) qty_sj '
      'FROM'
      '  tbl_so_head'
      
        '  LEFT OUTER JOIN tbl_mo ON (tbl_mo.no_so = tbl_so_head.no_bukti' +
        ')'
      
        '  LEFT OUTER JOIN tbl_barang ON (tbl_mo.kode_brg = tbl_barang.ko' +
        'de)'
      
        '  INNER JOIN tbl_customer ON (tbl_so_head.kode_customer = tbl_cu' +
        'stomer.kode)'
      'WHERE tbl_so_head.tanggal BETWEEN :tgl1 AND :tgl2')
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Visible = False
    Height = 65
    Width = 1001
  end
  object cxGrdDet: TcxGrid
    Left = 0
    Top = 353
    Width = 1008
    Height = 127
    Align = alBottom
    TabOrder = 5
    object cxGrdDetDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsMO2
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object cxGrdDetDBTableView1no_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 107
      end
      object cxGrdDetDBTableView1tgl_spk: TcxGridDBColumn
        Caption = 'Tgl. SPK'
        DataBinding.FieldName = 'tgl_spk'
        Width = 82
      end
      object cxGrdDetDBTableView1tgl_required: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_required'
        Visible = False
      end
      object cxGrdDetDBTableView1qty_g02: TcxGridDBColumn
        Caption = 'G-CUST'
        DataBinding.FieldName = 'qty_g02'
      end
      object cxGrdDetDBTableView1G01: TcxGridDBColumn
        DataBinding.FieldName = 'G01'
      end
      object cxGrdDetDBTableView1qty_sj: TcxGridDBColumn
        Caption = 'Qty. SJ'
        DataBinding.FieldName = 'qty_sj'
      end
      object cxGrdDetDBTableView1qty_sj_baik: TcxGridDBColumn
        Caption = 'Qty. SJ Baik'
        DataBinding.FieldName = 'qty_sj_baik'
      end
      object cxGrdDetDBTableView1qty_sj_afkir: TcxGridDBColumn
        Caption = 'Qty. SJ Afkir'
        DataBinding.FieldName = 'qty_sj_afkir'
      end
      object cxGrdDetDBTableView1qty_sj_retur: TcxGridDBColumn
        Caption = 'Qty. SJ Retur'
        DataBinding.FieldName = 'qty_sj_retur'
      end
      object cxGrdDetDBTableView1qty_sisa: TcxGridDBColumn
        Caption = 'Qty. Sisa'
        DataBinding.FieldName = 'qty_sisa'
      end
      object cxGrdDetDBTableView1jml_revisi: TcxGridDBColumn
        DataBinding.FieldName = 'jml_revisi'
        Visible = False
      end
      object cxGrdDetDBTableView1qty_lama: TcxGridDBColumn
        DataBinding.FieldName = 'qty_lama'
        Visible = False
      end
      object cxGrdDetDBTableView1status_so: TcxGridDBColumn
        DataBinding.FieldName = 'status_so'
        Visible = False
      end
      object cxGrdDetDBTableView1f_completed: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
        Visible = False
      end
      object cxGrdDetDBTableView1no_mutasi: TcxGridDBColumn
        Caption = 'No. Mutasi'
        DataBinding.FieldName = 'no_mutasi'
      end
      object cxGrdDetDBTableView1hsl_prod: TcxGridDBColumn
        Caption = 'Hsl. Prod'
        DataBinding.FieldName = 'hsl_prod'
      end
      object cxGrdDetDBTableView1qty_mutasi: TcxGridDBColumn
        Caption = 'Qty. Mutasi'
        DataBinding.FieldName = 'qty_mutasi'
      end
      object cxGrdDetDBTableView1mesin: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'mesin'
      end
    end
    object cxGrdDetLevel1: TcxGridLevel
      GridView = cxGrdDetDBTableView1
    end
  end
  object btnLihatDetail: TButton
    Left = 7
    Top = 321
    Width = 75
    Height = 25
    Caption = 'Lihat Detail'
    TabOrder = 6
    OnClick = btnLihatDetailClick
  end
  object zqrMO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_mo'
      'WHERE (tanggal BETWEEN :tgl1 AND :tgl2) AND (no_mo IS NOT NULL)'
      'ORDER BY tanggal DESC')
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
    Left = 330
    Top = 289
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
  object dsMO: TDataSource
    DataSet = zqrMO
    Left = 360
    Top = 284
  end
  object zqrSJDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_sj_det WHERE no_so = :no_so')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_so'
        ParamType = ptUnknown
      end>
    Left = 605
    Top = 375
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_so'
        ParamType = ptUnknown
      end>
  end
  object dsSJDet: TDataSource
    DataSet = zqrSJDet
    Left = 635
    Top = 375
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 460
    Top = 185
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clRed
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clWindow
      TextColor = clTeal
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clAqua
      TextColor = clBlack
    end
    object cxSKuning: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxSHijau: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clWhite
    end
    object cxSOlive: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clOlive
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clMoneyGreen
      TextColor = clBlack
    end
  end
  object zqrMO2: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT SQL_BUFFER_RESULT'
      '  tbl_mo.no_mo,'
      '  tbl_mo.no_so,'
      '  tbl_mo.no_spk,'
      '  tbl_mo.tgl_spk,'
      '  tbl_mo.kode_brg,'
      '  tbl_mo.qty_mo,'
      '  tbl_mo.qty_so,'
      '  tbl_barang.deskripsi,'
      '  tbl_barang.kategori,'
      '  tbl_barang.subkategori,'
      '  tbl_barang.tipe,'
      '  tbl_so_head.tanggal,'
      '  tbl_so_head.kode_customer,'
      '  tbl_customer.nama AS nama_customer,'
      '  tbl_so_head.tgl_required,'
      
        '  ifnull((select (sum(if((`tipe` = '#39'IN_'#39'),ifnull(`qty`,0),0)) - ' +
        'sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,0),0))) from tbl_history w' +
        'here kode_brg = tbl_mo.kode_brg and no_so = tbl_mo.no_so and gud' +
        'ang = '#39'G02'#39'),0) as qty_g02,'
      
        '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,0),0)) fr' +
        'om tbl_history where gudang = '#39'G02'#39' and left(no_bukti,2) = '#39'SJ'#39' ' +
        'and kode_brg = tbl_mo.kode_brg and no_so = tbl_mo.no_so),0) qty_' +
        'sj, '
      
        '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty_baik`,0),0' +
        ')) from tbl_history where gudang = '#39'G02'#39' and left(no_bukti,2) = ' +
        #39'SJ'#39' and kode_brg = tbl_mo.kode_brg and no_so = tbl_mo.no_so),0)' +
        ' qty_sj_baik,'
      
        '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty_afkir`,0),' +
        '0)) from tbl_history where gudang = '#39'G02'#39' and left(no_bukti,2) =' +
        ' '#39'SJ'#39' and kode_brg = tbl_mo.kode_brg and no_so = tbl_mo.no_so),0' +
        ') qty_sj_afkir,'
      
        '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty_retur`,0),' +
        '0)) from tbl_history where gudang = '#39'G02'#39' and left(no_bukti,2) =' +
        ' '#39'SJ'#39' and kode_brg = tbl_mo.kode_brg and no_so = tbl_mo.no_so),0' +
        ') qty_sj_retur,'
      
        '  tbl_mo.qty_so - (select sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,' +
        '0),0)) from tbl_history where gudang = '#39'G02'#39' and left(no_bukti,2' +
        ') = '#39'SJ'#39' and kode_brg = tbl_mo.kode_brg and no_so = tbl_mo.no_so' +
        ') qty_sisa,'
      '  tbl_mo.jml_revisi,'
      '  tbl_mo.qty_lama,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_mo.f_spk,'
      
        '  if((tbl_so_head.f_completed = 1), '#39'SELESAI'#39', '#39'BLM. SELESAI'#39') A' +
        'S status_so,'
      '  tbl_so_head.f_completed,'
      
        '  if(isnull(tbl_mo.no_mutasi), 0, (select (sum(if((`tipe` = '#39'IN_' +
        #39'),ifnull(`qty`,0),0)) - sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,0' +
        '),0))) from tbl_history where kode_brg = tbl_mo.kode_brg and no_' +
        'so = tbl_mo.no_so and gudang = '#39'G02'#39')) AS qty_g02_2,'
      '  tbl_mo.no_mutasi,'
      
        '  (select stok from tbl_barang_det where kode_brg = tbl_mo.kode_' +
        'brg and kode_gdg = '#39'G01'#39') G01,'
      
        '  ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = t' +
        'bl_mo.no_spk),0) hsl_prod,'
      
        '  ifnull((select sum(qty) from tbl_history where no_so = tbl_mo.' +
        'no_so and kode_brg = tbl_mo.kode_brg and left(no_bukti,2) = '#39'MG'#39 +
        ' and gudang = '#39'G02'#39'),0) - '
      
        '  ifnull((select sum(qty) from tbl_history where no_so = tbl_mo.' +
        'no_so and kode_brg = tbl_mo.kode_brg and left(no_bukti,2) = '#39'PM'#39 +
        ' and gudang = '#39'G02'#39'),0) qty_mutasi,'
      
        '  (select kode_mesin from tbl_spk WHERE no_spk = tbl_mo.no_spk) ' +
        'mesin '
      'FROM'
      '  tbl_so_head'
      
        '  LEFT OUTER JOIN tbl_mo ON (tbl_mo.no_so = tbl_so_head.no_bukti' +
        ')'
      
        '  LEFT OUTER JOIN tbl_barang ON (tbl_mo.kode_brg = tbl_barang.ko' +
        'de)'
      
        '  INNER JOIN tbl_customer ON (tbl_so_head.kode_customer = tbl_cu' +
        'stomer.kode)'
      'WHERE tbl_so_head.no_bukti = :no_so;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_so'
        ParamType = ptUnknown
      end>
    Left = 410
    Top = 294
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_so'
        ParamType = ptUnknown
      end>
  end
  object dsMO2: TDataSource
    DataSet = zqrMO2
    Left = 440
    Top = 294
  end
end
