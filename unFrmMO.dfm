object frmMO: TfrmMO
  Left = 216
  Top = 131
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Master Order'
  ClientHeight = 596
  ClientWidth = 1196
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
    Top = 43
    Width = 1196
    Height = 308
    Align = alClient
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
      object cxGridDBTableView1Column13: TcxGridDBColumn
        Caption = 'Approval CFT'
        DataBinding.FieldName = 'app_cft'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        Visible = False
        Width = 72
      end
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
      object cxColNoSO: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        PropertiesClassName = 'TcxTextEditProperties'
        Width = 96
      end
      object cxColNoTrial: TcxGridDBColumn
        Caption = 'No. Trial'
        DataBinding.FieldName = 'no_trial'
        Visible = False
        Width = 86
      end
      object cxColNoSPK: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 127
      end
      object cxGridDBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 71
      end
      object cxGridDBTableView1tgl_required: TcxGridDBColumn
        Caption = 'Tgl. Diperlukan'
        DataBinding.FieldName = 'tgl_required'
        Options.Moving = False
        Width = 86
      end
      object cxGridDBTableView1Column11: TcxGridDBColumn
        Caption = 'Tgl. Konfirmasi'
        DataBinding.FieldName = 'tgl_konfirmasi'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.ReadOnly = True
        Width = 82
      end
      object cxGridDBTableView1kode_brg: TcxGridDBColumn
        Caption = 'Kode. Brg'
        DataBinding.FieldName = 'kode_brg'
        Options.Moving = False
        Width = 122
      end
      object cxGridDBTableView1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Options.Moving = False
        Width = 486
      end
      object cxGridDBTableView1Column12: TcxGridDBColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'notes'
        Visible = False
        Width = 264
      end
      object cxGridDBTableView1nama: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'nama_customer'
        Options.Moving = False
        Width = 231
      end
      object cxGridDBTableView1Column8: TcxGridDBColumn
        Caption = 'Ex. Customer'
        DataBinding.FieldName = 'ex_customer'
        Visible = False
        Width = 231
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
        Visible = False
        Options.Editing = False
        Options.Moving = False
        Width = 79
      end
      object cxgColQtySJ: TcxGridDBColumn
        Caption = 'Qty. SJ'
        DataBinding.FieldName = 'qty_sj'
        Visible = False
        Options.Editing = False
        Options.Moving = False
      end
      object cxGridDBTableView1Column3: TcxGridDBColumn
        Caption = 'Qty. SJ Baik'
        DataBinding.FieldName = 'qty_sj_baik'
        Visible = False
      end
      object cxGridDBTableView1Column4: TcxGridDBColumn
        Caption = 'Qty. SJ Afkir'
        DataBinding.FieldName = 'qty_sj_afkir'
        Visible = False
      end
      object cxGridDBTableView1Column7: TcxGridDBColumn
        Caption = 'Qty. SJ Retur'
        DataBinding.FieldName = 'qty_sj_retur'
        Visible = False
      end
      object cxgColQtySO: TcxGridDBColumn
        Caption = 'Qty. SO'
        DataBinding.FieldName = 'qty_so'
        Options.Editing = False
      end
      object ColG01: TcxGridDBColumn
        Caption = 'Qty. G-SDP'
        DataBinding.FieldName = 'G01'
        Visible = False
        Width = 82
      end
      object cxColQtyKG: TcxGridDBColumn
        Caption = 'Qty(KG)'
        DataBinding.FieldName = 'konversi'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.ValueType = vtFloat
      end
      object cxColOuts: TcxGridDBColumn
        Caption = 'Outstanding(KG)'
        DataBinding.FieldName = 'outs'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Properties.ValueType = vtFloat
        Width = 103
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
        Visible = False
        Width = 94
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
      object cxGridDBTableView1Column9: TcxGridDBColumn
        Caption = 'Lokasi'
        DataBinding.FieldName = 'lokasi'
        Visible = False
        Width = 83
      end
      object cxGridDBTableView1Column10: TcxGridDBColumn
        Caption = 'Kondisi'
        DataBinding.FieldName = 'kondisi'
        Visible = False
        Width = 86
      end
      object cxgColMesin: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'mesin'
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
      object cxGridDBTableView1Column14: TcxGridDBColumn
        Caption = 'Kode Brg. Input'
        DataBinding.FieldName = 'kode_brg_input'
        Width = 90
      end
      object cxGridDBTableView1Column15: TcxGridDBColumn
        Caption = 'Deskripsi Brg. Input'
        DataBinding.FieldName = 'desk_brg_input'
        Width = 250
      end
      object cxColTutupManual: TcxGridDBColumn
        DataBinding.FieldName = 'f_tutupmanual'
      end
      object cxColSelisih: TcxGridDBColumn
        Caption = 'Umur SO'
        DataBinding.FieldName = 'selisih'
      end
      object cxColFlagSPK: TcxGridDBColumn
        DataBinding.FieldName = 'f_spk'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1196
    Height = 43
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 14
      Top = 12
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 11
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 12
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 11
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 559
    Width = 1196
    Height = 37
    Align = alBottom
    TabOrder = 2
    object btnCetak: TButton
      Left = 9
      Top = 5
      Width = 107
      Height = 25
      Caption = '&Cetak Excel'
      TabOrder = 0
      OnClick = btnCetakClick
    end
    object btnBatal: TButton
      Left = 120
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      Visible = False
      OnClick = btnBatalClick
    end
    object Button1: TButton
      Left = 205
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Pilih'
      TabOrder = 2
      Visible = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 351
    Width = 1196
    Height = 208
    Align = alBottom
    TabOrder = 3
    object GroupBox1: TGroupBox
      Left = 10
      Top = 32
      Width = 753
      Height = 170
      Caption = ' Keterangan Warna '
      TabOrder = 4
      object Shape1: TShape
        Left = 337
        Top = 127
        Width = 21
        Height = 21
        Brush.Color = clYellow
        Visible = False
      end
      object Shape2: TShape
        Left = 12
        Top = 42
        Width = 21
        Height = 21
        Brush.Color = clTeal
      end
      object Shape4: TShape
        Left = 12
        Top = 67
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
        Left = 12
        Top = 92
        Width = 21
        Height = 21
        Brush.Color = clMoneyGreen
      end
      object Shape6: TShape
        Left = 12
        Top = 117
        Width = 21
        Height = 21
        Brush.Color = 13151738
      end
      object Shape7: TShape
        Left = 11
        Top = 142
        Width = 21
        Height = 21
        Brush.Color = clRed
      end
      object cxLabel4: TcxLabel
        Left = 364
        Top = 129
        Caption = 'Sudah Mutasi Ke G-SDP ke G-CUST (Semua atau sebagian)'
        Visible = False
      end
      object cxLabel5: TcxLabel
        Left = 39
        Top = 44
        Caption = 'Sales Order Sudah Selesai / Komplit (Qty. SO = Qty. SJ)'
      end
      object cxLabel7: TcxLabel
        Left = 39
        Top = 69
        Caption = 'Sudah Cetak SPK, Belum Ada Hasil Produksi'
      end
      object cxLabel6: TcxLabel
        Left = 39
        Top = 19
        Caption = 'Belum Ada Tindakan'
      end
      object cxLabel8: TcxLabel
        Left = 39
        Top = 94
        Caption = 'Sudah Ada Hasil Produksi'
      end
      object cxLabel11: TcxLabel
        Left = 39
        Top = 119
        Caption = 'SO Sudah dibatalkan / ditutup'
      end
      object cxLabel14: TcxLabel
        Left = 38
        Top = 144
        Caption = 'SO umur >= 3 Hari Belum Buat SPK'
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
      Width = 821
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
        Visible = False
        OnClick = btnSPKPotongClick
      end
      object btnSPKAssembly: TButton
        Left = 179
        Top = 11
        Width = 87
        Height = 25
        Caption = 'SPK Tambahan'
        TabOrder = 2
        Visible = False
        OnClick = btnSPKAssemblyClick
      end
      object btnMutasiStok: TButton
        Left = 499
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Mutasi Stok'
        TabOrder = 3
        Visible = False
        OnClick = btnMutasiStokClick
      end
      object btnRefresh: TButton
        Left = 577
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 4
        Visible = False
        OnClick = btnRefreshClick
      end
      object btnKalender: TButton
        Left = 655
        Top = 11
        Width = 75
        Height = 25
        Caption = 'Kalender'
        TabOrder = 5
        Visible = False
        OnClick = btnKalenderClick
      end
      object btnSPKGiling: TButton
        Left = 345
        Top = 11
        Width = 75
        Height = 25
        Caption = 'SPK Giling'
        TabOrder = 6
        Visible = False
        OnClick = btnMasterScheduleClick
      end
      object btnSPKRouter: TButton
        Left = 268
        Top = 11
        Width = 75
        Height = 25
        Caption = 'SPK Router'
        TabOrder = 7
        Visible = False
        OnClick = btnSPKRouterClick
      end
      object btnSPKTrial: TButton
        Left = 422
        Top = 11
        Width = 75
        Height = 25
        Caption = 'SPK Trial'
        TabOrder = 8
        Visible = False
        OnClick = btnSPKTrialClick
      end
      object btnHPP: TButton
        Left = 732
        Top = 11
        Width = 76
        Height = 25
        Caption = 'HPP'
        TabOrder = 9
        Visible = False
        OnClick = btnHPPClick
      end
    end
    object btnApproval: TButton
      Left = 615
      Top = 121
      Width = 89
      Height = 25
      Caption = 'Approval CFT'
      TabOrder = 7
      OnClick = btnApprovalClick
    end
    object btnrefresh1: TButton
      Left = 615
      Top = 91
      Width = 76
      Height = 25
      Caption = 'Refresh'
      TabOrder = 8
      OnClick = btnrefresh1Click
    end
  end
  object cxMemo1: TcxMemo
    Left = 40
    Top = 110
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
      '  ifnull((select (sum(if((`tipe` = '#39'IN_'#39'),ifnull(`qty`,0),0)) '
      '- sum(if((`tipe` = '#39'OUT_'#39'),ifnull(`qty`,0),0))) from '
      'tbl_history where kode_brg = tbl_mo.kode_brg '
      'and no_so = '
      'tbl_mo.no_so and gudang = '#39'G02'#39'),0) as qty_g02,'
      '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull'
      '(`qty`,0),0)) from tbl_history where gudang = '#39'G02'#39' '
      'and left(no_bukti,2) = '#39'SJ'#39' and kode_brg = '
      'tbl_mo.kode_brg and no_so = '
      'tbl_mo.no_so),0) qty_sj, '
      'ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull'
      '(`qty_baik`,0),0)) from tbl_history where gudang = '
      #39'G02'#39' and left(no_bukti,2) = '#39'SJ'#39' and kode_brg = '
      'tbl_mo.kode_brg and no_so = '
      'tbl_mo.no_so),0) qty_sj_baik,'
      '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull'
      '(`qty_afkir`,0),0)) from tbl_history where gudang = '
      #39'G02'#39' and left(no_bukti,2) = '#39'SJ'#39' and kode_brg = '
      'tbl_mo.kode_brg and no_so = '
      'tbl_mo.no_so),0) qty_sj_afkir,'
      '  ifnull((select sum(if((`tipe` = '#39'OUT_'#39'),ifnull'
      '(`qty_retur`,0),0)) from tbl_history where gudang = '
      #39'G02'#39' and left(no_bukti,2) = '#39'SJ'#39' and kode_brg = '
      'tbl_mo.kode_brg and no_so = '
      'tbl_mo.no_so),0) qty_sj_retur,'
      '  tbl_mo.qty_so - (select sum(if((`tipe` = '
      #39'OUT_'#39'),ifnull(`qty`,0),0)) from tbl_history where '
      'gudang = '#39'G02'#39' and left(no_bukti,2) = '#39'SJ'#39' and '
      'kode_brg = tbl_mo.kode_brg and '
      'no_so = tbl_mo.no_so) qty_sisa,'
      '  tbl_mo.jml_revisi,'
      '  tbl_mo.qty_lama,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_mo.f_spk,'
      '  if((tbl_so_head.f_completed = 1), '#39'SELESAI'#39', '
      #39'BLM. SELESAI'#39') AS status_so,'
      '  tbl_so_head.f_completed,'
      '  if(isnull(tbl_mo.no_mutasi), 0, (select (sum(if'
      '((`tipe` = '#39'IN_'#39'),ifnull(`qty`,0),0)) - sum(if((`tipe` = '
      #39'OUT_'#39'),ifnull(`qty`,0),0))) from tbl_history where '
      'kode_brg = tbl_mo.kode_brg '
      'and no_so = tbl_mo.no_so and gudang = '#39'G02'#39')) '
      'AS qty_g02_2,'
      '  tbl_mo.no_mutasi,'
      '  (select stok from tbl_barang_det where '
      'kode_brg = tbl_mo.kode_brg and kode_gdg = '
      #39'G01'#39') G01,'
      '  ifnull((select sum(qty_prod) from tbl_hsl_prd '
      'where no_spk = tbl_mo.no_spk),0) hsl_prod,'
      '  ifnull((select sum(qty) from tbl_history where '
      'no_so = tbl_mo.no_so and kode_brg = '
      'tbl_mo.kode_brg and left(no_bukti,2) = '#39'MG'#39' and '
      'gudang = '#39'G02'#39'),0) - '
      '  ifnull((select sum(qty) from tbl_history where '
      'no_so = tbl_mo.no_so and kode_brg = '
      'tbl_mo.kode_brg and left(no_bukti,2) = '#39'PM'#39' and '
      'gudang = '#39'G02'#39'),0) qty_mutasi,'
      '  (select kode_mesin from tbl_spk WHERE '
      'no_spk = tbl_mo.no_spk) mesin,'
      'ifnull(`tbl_so_det`.`f_mts`,0) `mts` '
      'FROM'
      '  tbl_so_head'
      '  LEFT OUTER JOIN tbl_mo ON (tbl_mo.no_so = '
      'tbl_so_head.no_bukti)'
      '  LEFT OUTER JOIN tbl_barang ON '
      '(tbl_mo.kode_brg = tbl_barang.kode)'
      '  INNER JOIN tbl_customer ON '
      '(tbl_so_head.kode_customer = '
      'tbl_customer.kode)'
      
        'LEFT JOIN tbl_so_det on ((`tbl_mo`.`kode_brg` = `tbl_so_det`.`ko' +
        'de_brg`) and (`tbl_mo`.`no_so` = `tbl_so_det`.`no_bukti`))'
      'WHERE (tbl_so_head.tanggal BETWEEN :tgl1 '
      'AND :tgl2) AND (ifnull(`tbl_so_det`.`f_mts`,0)=0) ')
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Visible = False
    Height = 176
    Width = 1106
  end
  object cxMemo2: TcxMemo
    Left = 525
    Top = 105
    Lines.Strings = (
      'SELECT SQL_BUFFER_RESULT'
      '  tbl_mo.app_cft,  '
      '  tbl_mo.no_mo,'
      '  tbl_mo.no_so,'
      '  tbl_mo.no_spk,'
      '  tbl_mo.tgl_spk,'
      '  tbl_mo.kode_brg,'
      '  tbl_mo.qty_mo,'
      '  tbl_mo.qty_so,'
      ' v_so_det.`konversi`,'
      '( v_so_det.`konversi`- ifnull(sf_spk'
      '(tbl_mo.no_mo,tbl_mo.kode_brg),0)) outs,'
      '  tbl_barang.deskripsi,'
      '  tbl_barang.kategori,'
      '  tbl_barang.subkategori,'
      '  tbl_barang.tipe,'
      '  tbl_so_head.tanggal,'
      '  curdate() - tbl_so_head.tanggal selisih,'
      '  tbl_so_head.kode_customer,'
      '  tbl_customer.nama AS nama_customer,'
      '  tbl_so_head.tgl_required,'
      '  tbl_mo.qty_so - a.jml as qty_sisa,'
      '  tbl_mo.jml_revisi,'
      '  tbl_mo.qty_lama,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_mo.f_spk,'
      '  if((tbl_so_head.f_completed = 1), '#39'SELESAI'#39', '#39'BLM. '
      'SELESAI'#39') AS status_so,'
      '  tbl_so_head.f_completed,'
      '  tbl_mo.no_mutasi,'
      '  (select stok from tbl_barang_det where kode_brg = '
      'tbl_mo.kode_brg and kode_gdg = '#39'G01'#39') G01,'
      '  ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_prod,'
      '  ifnull((select sum(qty_baik) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_baik,'
      '  ifnull((select sum(qty_afkir) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_afkir,'
      '  ifnull((select sum(qty_retur) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_retur,'
      '  (select MG - PM from _tbl_three WHERE kode_brg = '
      'tbl_mo.kode_brg AND no_so = tbl_mo.no_so) qty_mutasi,'
      '  (select kode_mesin from tbl_spk WHERE no_spk = '
      'tbl_mo.no_spk) mesin, '
      '  ifnull(a.jml,0) qty_sj, '
      '  ifnull(jml_baik,0) qty_sj_baik, '
      '  ifnull(jml_afkir,0) qty_sj_afkir, '
      '  ifnull(jml_retur,0) qty_sj_retur, '
      '  ifnull(b.jml,0) as qty_g02,'
      '  tbl_mo.lokasi,'
      '  tbl_mo.kondisi, '
      '  tbl_mo.f_tutupmanual,'
      '  tbl_mo.tgl_konfirmasi, '
      '  (select notes from tbl_so_det where no_bukti = '
      'tbl_so_head.no_bukti and kode_brg = tbl_mo.kode_brg) '
      'notes, '
      'tbl_mo.kode_brg_input,'
      'f.deskripsi desk_brg_input,'
      'e.nama ex_customer,'
      'tbl_mo.no_trial,'
      'ifnull(`tbl_so_det`.`f_mts`,0) `mts` '
      'FROM'
      '  tbl_so_head'
      '  LEFT OUTER JOIN tbl_mo ON (tbl_mo.no_so = '
      'tbl_so_head.no_bukti)'
      '  LEFT OUTER JOIN tbl_barang ON (tbl_mo.kode_brg = '
      'tbl_barang.kode)'
      '  INNER JOIN tbl_customer ON (tbl_so_head.kode_customer '
      '= tbl_customer.kode)'
      '  LEFT JOIN _tbl_one a ON (a.kode_brg = tbl_mo.kode_brg '
      'AND a.no_so = tbl_so_head.no_bukti)'
      '  LEFT JOIN _tbl_two b ON (b.kode_brg = tbl_mo.kode_brg '
      'AND b.no_so = tbl_so_head.no_bukti)'
      '  LEFT JOIN tbl_barang f on f.kode = tbl_mo.kode_brg_input'
      '  LEFT JOIN tbl_customer e ON e.kode = '
      'tbl_so_head.ex_customer'
      'LEFT JOIN tbl_so_det on ((`tbl_mo`.`kode_brg` = '
      '`tbl_so_det`.`kode_brg`) and (`tbl_mo`.`no_so` = '
      '`tbl_so_det`.`no_bukti`))'
      'LEFT JOIN v_so_det on ((`tbl_mo`.`kode_brg` = '
      '`v_so_det`.`kode_brg`) and (`tbl_mo`.`no_so` = '
      '`v_so_det`.`no_bukti`))'
      'WHERE (tbl_so_head.tanggal BETWEEN :tgl1 AND '
      ':tgl2)AND (ifnull(`tbl_so_det`.`f_mts`,0)=0) AND '
      '(ifnull(tbl_mo.no_spk,0)=0)')
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Visible = False
    Height = 176
    Width = 366
  end
  object Panel5: TPanel
    Left = 200
    Top = 125
    Width = 292
    Height = 121
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 6
    OnExit = Panel5Exit
    object cxdTglKonfirmasi: TcxDateEdit
      Left = 95
      Top = 39
      TabOrder = 0
      Width = 146
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 41
      Caption = 'Tgl. Konfirmasi'
    end
    object btnSimpanTgl: TButton
      Left = 95
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 2
      OnClick = btnSimpanTglClick
    end
    object btnClosePanel: TButton
      Left = 266
      Top = 5
      Width = 21
      Height = 19
      Caption = 'X'
      TabOrder = 3
      OnClick = btnClosePanelClick
    end
    object cxLabel10: TcxLabel
      Left = 7
      Top = 7
      Caption = 'Input Tanggal Konfirmasi'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
    end
  end
  object cxMemo2_backup: TcxMemo
    Left = 545
    Top = 140
    Lines.Strings = (
      'SELECT SQL_BUFFER_RESULT'
      '  tbl_mo.app_cft,  '
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
      '  tbl_mo.qty_so - a.jml as qty_sisa,'
      '  tbl_mo.jml_revisi,'
      '  tbl_mo.qty_lama,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_mo.f_spk,'
      '  if((tbl_so_head.f_completed = 1), '#39'SELESAI'#39', '#39'BLM. '
      'SELESAI'#39') AS status_so,'
      '  tbl_so_head.f_completed,'
      '  tbl_mo.no_mutasi,'
      '  (select stok from tbl_barang_det where kode_brg = '
      'tbl_mo.kode_brg and kode_gdg = '#39'G01'#39') G01,'
      '  ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_prod,'
      '  ifnull((select sum(qty_baik) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_baik,'
      '  ifnull((select sum(qty_afkir) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_afkir,'
      '  ifnull((select sum(qty_retur) from tbl_hsl_prd where no_spk = '
      'tbl_mo.no_spk),0) hsl_retur,'
      '  (select MG - PM from _tbl_three WHERE kode_brg = '
      'tbl_mo.kode_brg AND no_so = tbl_mo.no_so) qty_mutasi,'
      '  (select kode_mesin from tbl_spk WHERE no_spk = '
      'tbl_mo.no_spk) mesin, '
      '  ifnull(a.jml,0) qty_sj, '
      '  ifnull(jml_baik,0) qty_sj_baik, '
      '  ifnull(jml_afkir,0) qty_sj_afkir, '
      '  ifnull(jml_retur,0) qty_sj_retur, '
      '  ifnull(b.jml,0) as qty_g02,'
      '  tbl_mo.lokasi,'
      '  tbl_mo.kondisi, '
      '  tbl_mo.f_tutupmanual,'
      '  tbl_mo.tgl_konfirmasi, '
      '  (select notes from tbl_so_det where no_bukti = '
      'tbl_so_head.no_bukti and kode_brg = tbl_mo.kode_brg and '
      'no_mo = tbl_mo.no_mo) notes, '
      'tbl_mo.kode_brg_input,'
      'f.deskripsi desk_brg_input'
      'FROM'
      '  tbl_so_head'
      '  LEFT OUTER JOIN tbl_mo ON (tbl_mo.no_so = '
      'tbl_so_head.no_bukti)'
      '  LEFT OUTER JOIN tbl_barang ON (tbl_mo.kode_brg = '
      'tbl_barang.kode)'
      '  INNER JOIN tbl_customer ON (tbl_so_head.kode_customer '
      '= tbl_customer.kode)'
      '  LEFT JOIN _tbl_one a ON (a.kode_brg = tbl_mo.kode_brg '
      'AND a.no_so = tbl_so_head.no_bukti)'
      '  LEFT JOIN _tbl_two b ON (b.kode_brg = tbl_mo.kode_brg '
      'AND b.no_so = tbl_so_head.no_bukti)'
      'LEFT JOIN tbl_barang f on f.kode = tbl_mo.kode_brg_input'
      'WHERE tbl_so_head.tanggal BETWEEN :tgl1 AND :tgl2')
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 7
    Visible = False
    Height = 176
    Width = 366
  end
  object pnlSPKRouter: TPanel
    Left = 391
    Top = 179
    Width = 671
    Height = 258
    Color = clSkyBlue
    Ctl3D = False
    FullRepaint = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 8
    OnExit = pnlSPKRouterExit
    object btnTambahDet: TButton
      Left = 481
      Top = 82
      Width = 60
      Height = 25
      Caption = 'Tambah'
      TabOrder = 0
    end
    object btnClosePnl6: TButton
      Left = 641
      Top = 4
      Width = 26
      Height = 21
      Caption = 'X'
      TabOrder = 1
      OnClick = btnClosePnl6Click
    end
    object nxGrdSpkRouter: TNextGrid
      Left = 15
      Top = 63
      Width = 642
      Height = 156
      Options = [goGrid, goHeader]
      TabOrder = 2
      TabStop = True
      object NxIncrementColumn2: TNxIncrementColumn
        DefaultWidth = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 0
        SortType = stAlphabetic
        Width = 33
      end
      object nxColCheck: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Cetak'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 1
        SortType = stBoolean
        Width = 38
      end
      object nxColTglSPK: TNxDateColumn
        DefaultValue = '30/11/2015'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Tgl. SPK'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stDate
        FormatMask = 'dd/MM/yyyy'
        HideWhenEmpty = True
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object nxColKetSO: TNxTextColumn
        DefaultWidth = 435
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Position = 3
        SortType = stAlphabetic
        Width = 435
      end
      object nxColNoSPK_R: TNxTextColumn
        DefaultWidth = 107
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        Position = 4
        SortType = stAlphabetic
        Width = 107
      end
    end
    object btnCetakSPKSR: TButton
      Left = 15
      Top = 225
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 3
      OnClick = btnCetakSPKSRClick
    end
    object btnTutupPnlSR: TButton
      Left = 92
      Top = 225
      Width = 75
      Height = 25
      Caption = 'Tutup'
      TabOrder = 4
      OnClick = btnTutupPnlSRClick
    end
    object cxLabel12: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. SO'
      Transparent = True
    end
    object cxtNoSO_R: TcxTextEdit
      Left = 67
      Top = 8
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 6
      Width = 124
    end
    object cxtDesk_R: TcxTextEdit
      Left = 67
      Top = 32
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 7
      Width = 439
    end
    object cxLabel13: TcxLabel
      Left = 15
      Top = 34
      Caption = 'Barang'
      Transparent = True
    end
  end
  object zqrMO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_mo'
      
        'WHERE (tanggal BETWEEN :tgl1 AND :tgl2) AND (no_mo IS NOT NULL) ' +
        'AND (mts=0)'
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
    object cxsMerahMuda: TcxStyle
      AssignedValues = [svColor]
      Color = 13151738
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clWhite
    end
  end
end