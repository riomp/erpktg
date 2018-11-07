object frmMonPeletan: TfrmMonPeletan
  Left = 198
  Top = 31
  BorderStyle = bsSingle
  Caption = 'Monitoring Peletan'
  ClientHeight = 659
  ClientWidth = 1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pg: TPageControl
    Left = 0
    Top = 43
    Width = 1085
    Height = 403
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Hasil Produksi Peletan'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 46
        Width = 1077
        Height = 329
        Align = alClient
        TabOrder = 0
        object tvGrdHslPrd: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsHslProd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnFilteredItemsList = True
          FilterRow.SeparatorWidth = 2
          FilterRow.Visible = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          Styles.OnGetContentStyle = tvGrdHslPrdStylesGetContentStyle
          object tvGrdHslPrdno_bukti: TcxGridDBColumn
            Caption = 'No. SO'
            DataBinding.FieldName = 'no_bukti'
          end
          object tvGrdHslPrdnama: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama'
            Width = 222
          end
          object tvGrdHslPrdkode_brg: TcxGridDBColumn
            Caption = 'Kode Brg.'
            DataBinding.FieldName = 'kode_brg'
          end
          object tvGrdHslPrddeskripsi: TcxGridDBColumn
            Caption = 'Deskripsi'
            DataBinding.FieldName = 'deskripsi'
            Width = 245
          end
          object tvGrdHslPrdqty: TcxGridDBColumn
            Caption = 'Qty. Awal'
            DataBinding.FieldName = 'qty'
          end
          object tvGrdHslPrdqty_prod: TcxGridDBColumn
            Caption = 'Qty. Prod'
            DataBinding.FieldName = 'qty_prod'
          end
          object tvGrdHslPrdqty_baik: TcxGridDBColumn
            Caption = 'Qty. Baik'
            DataBinding.FieldName = 'qty_baik'
          end
          object tvGrdHslPrdqty_afkir: TcxGridDBColumn
            Caption = 'Qty. Afkir'
            DataBinding.FieldName = 'qty_afkir'
          end
          object tvGrdHslPrdqty_retur: TcxGridDBColumn
            Caption = 'Qty. Retur'
            DataBinding.FieldName = 'qty_retur'
          end
          object tvGrdHslPrdplusminus: TcxGridDBColumn
            DataBinding.FieldName = 'plusminus'
            Visible = False
          end
          object tvGrdHslPrdqty_net: TcxGridDBColumn
            Caption = 'Qty. Net'
            DataBinding.FieldName = 'qty_net'
          end
          object cxColSelisih: TcxGridDBColumn
            Caption = 'Selisih'
            DataBinding.FieldName = 'selisih'
          end
          object tvGrdHslPrdstatus: TcxGridDBColumn
            DataBinding.FieldName = 'status'
            Visible = False
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = tvGrdHslPrd
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 46
        Align = alTop
        TabOrder = 1
        object cxChkParam1: TcxCheckBox
          Left = 5
          Top = 10
          Caption = 'Hanya Tampil Selisih > 0.1'
          TabOrder = 0
          OnClick = cxChkParam1Click
          Width = 171
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detail Transaksi Peletan'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 1077
        Height = 375
        Align = alClient
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
          object cxGridDBTableView1tgl_required: TcxGridDBColumn
            Caption = 'Tgl. Diperlukan'
            DataBinding.FieldName = 'tgl_required'
            Options.Moving = False
            Width = 86
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
          object cxGridDBTableView1Column12: TcxGridDBColumn
            Caption = 'Keterangan'
            DataBinding.FieldName = 'notes'
            Width = 264
          end
          object cxGridDBTableView1nama: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.FieldName = 'nama_customer'
            Options.Moving = False
            Width = 231
          end
          object cxGridDBTableView1Column15: TcxGridDBColumn
            Caption = 'Ex Customer'
            DataBinding.FieldName = 'nama_ex_customer'
            Width = 256
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
          object cxColHslProd: TcxGridDBColumn
            Caption = 'Hsl. Prod'
            DataBinding.FieldName = 'hsl_prod'
          end
          object cxColHslBaik: TcxGridDBColumn
            Caption = 'Hsl. Baik'
            DataBinding.FieldName = 'hsl_baik'
          end
          object cxColHslAfkir: TcxGridDBColumn
            Caption = 'Hsl. Afkir'
            DataBinding.FieldName = 'hsl_afkir'
          end
          object cxColHslRetur: TcxGridDBColumn
            Caption = 'Hsl. Retur'
            DataBinding.FieldName = 'hsl_retur'
          end
          object cxGridDBTableView1Column13: TcxGridDBColumn
            Caption = 'Item Komplit'
            DataBinding.FieldName = 'plt_completed'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            Caption = 'SO Komplit'
            DataBinding.FieldName = 'so_completed'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
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
          object cxGridDBTableView1Column14: TcxGridDBColumn
            Caption = 'Plus Minus'
            DataBinding.FieldName = 'plusminus'
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
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = 'Lokasi'
            DataBinding.FieldName = 'lokasi'
            Width = 83
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            Caption = 'Kondisi'
            DataBinding.FieldName = 'kondisi'
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
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1085
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
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
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 611
    Width = 1085
    Height = 48
    Align = alBottom
    TabOrder = 1
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
    Top = 446
    Width = 1085
    Height = 165
    Align = alBottom
    TabOrder = 2
    object cxNavigator1: TcxNavigator
      Left = 10
      Top = 5
      Width = 248
      Height = 25
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
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 260
      Top = 0
      Width = 432
      Height = 48
      BevelOuter = bvNone
      TabOrder = 2
      object btnRefresh: TButton
        Left = 2
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Refresh'
        TabOrder = 0
        OnClick = btnRefreshClick
      end
      object btnDetailSJ: TButton
        Left = 79
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Detail SJ'
        TabOrder = 1
        OnClick = btnDetailSJClick
      end
      object btnCetakPerincian: TButton
        Left = 157
        Top = 6
        Width = 129
        Height = 25
        Caption = 'Cetak Perincian Peletan'
        TabOrder = 2
        OnClick = btnCetakPerincianClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 32
      Width = 331
      Height = 124
      Caption = ' Keterangan Warna '
      TabOrder = 0
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
    end
    object GroupBox2: TGroupBox
      Left = 344
      Top = 32
      Width = 542
      Height = 124
      Caption = ' Detail Surat Jalan '
      TabOrder = 3
      object nxGrd: TNextGrid
        Left = 13
        Top = 18
        Width = 369
        Height = 96
        TabOrder = 0
        TabStop = True
        object nxColSJ: TNxTextColumn
          DefaultWidth = 95
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No. SJ'
          Position = 0
          SortType = stAlphabetic
          Width = 95
        end
        object nxColSPMB: TNxTextColumn
          DefaultWidth = 99
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No. SPMB'
          Position = 1
          SortType = stAlphabetic
          Width = 99
        end
        object nxColTanggal: TNxDateColumn
          DefaultValue = '18/01/2015'
          DefaultWidth = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Tanggal'
          Position = 2
          SortType = stDate
          Width = 110
          NoneCaption = 'None'
          TodayCaption = 'Today'
        end
      end
    end
  end
  object cxMemo2: TcxMemo
    Left = 884
    Top = 50
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
      '  tbl_mo.qty_so - a.jml as qty_sisa,'
      '  tbl_mo.jml_revisi,'
      '  tbl_mo.qty_lama,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_mo.f_spk,'
      
        '  if((tbl_so_head.f_completed = 1), '#39'SELESAI'#39', '#39'BLM. SELESAI'#39') A' +
        'S status_so,'
      '  tbl_so_head.f_completed,'
      '  tbl_mo.no_mutasi,'
      
        '  (select stok from tbl_barang_det where kode_brg = tbl_mo.kode_' +
        'brg and kode_gdg = '#39'G01'#39') G01,'
      
        '  ifnull((select sum(qty_prod) from tbl_hsl_prd where no_spk = t' +
        'bl_mo.no_spk),0) hsl_prod,'
      
        '  ifnull((select sum(qty_baik) from tbl_hsl_prd where no_spk = t' +
        'bl_mo.no_spk),0) hsl_baik,'
      
        '  ifnull((select sum(qty_afkir) from tbl_hsl_prd where no_spk = ' +
        'tbl_mo.no_spk),0) hsl_afkir,'
      
        '  ifnull((select sum(qty_retur) from tbl_hsl_prd where no_spk = ' +
        'tbl_mo.no_spk),0) hsl_retur,'
      
        '  (select MG - PM from _tbl_three WHERE kode_brg = tbl_mo.kode_b' +
        'rg AND no_so = tbl_mo.no_so) qty_mutasi,'
      
        '  (select kode_mesin from tbl_spk WHERE no_spk = tbl_mo.no_spk) ' +
        'mesin, '
      '  ifnull(a.jml,0) qty_sj, '
      '  ifnull(jml_baik,0) qty_sj_baik, '
      '  ifnull(jml_afkir,0) qty_sj_afkir, '
      '  ifnull(jml_retur,0) qty_sj_retur, '
      '  ifnull(b.jml,0) as qty_g02,'
      '  tbl_mo.lokasi,'
      '  tbl_mo.kondisi, '
      '  tbl_mo.tgl_konfirmasi, '
      
        '  (select notes from tbl_so_det where no_bukti = tbl_so_head.no_' +
        'bukti and kode_brg = tbl_mo.kode_brg) notes, '
      
        '  (select plt_completed from tbl_so_det where no_bukti = tbl_so_' +
        'head.no_bukti and kode_brg = tbl_mo.kode_brg) plt_completed,'
      '  tbl_so_head.f_completed so_completed, '
      
        '  if(abs(c.plusminus) < 0.1, round(c.plusminus), c.plusminus) pl' +
        'usminus,'
      '  tbl_so_head.ex_customer,'
      
        '  (select nama from tbl_customer where kode = tbl_so_head.ex_cus' +
        'tomer) nama_ex_customer'
      'FROM'
      '  tbl_so_head'
      
        '  LEFT OUTER JOIN tbl_mo ON (tbl_mo.no_so = tbl_so_head.no_bukti' +
        ')'
      
        '  LEFT OUTER JOIN tbl_barang ON (tbl_mo.kode_brg = tbl_barang.ko' +
        'de)'
      
        '  INNER JOIN tbl_customer ON (tbl_so_head.kode_customer = tbl_cu' +
        'stomer.kode)'
      
        '  LEFT JOIN _tbl_one a ON (a.kode_brg = tbl_mo.kode_brg AND a.no' +
        '_so = tbl_so_head.no_bukti)'
      
        '  LEFT JOIN _tbl_two b ON (b.kode_brg = tbl_mo.kode_brg AND b.no' +
        '_so = tbl_so_head.no_bukti)'
      '  LEFT JOIN _tbl_spk_plt c ON c.no_spk = tbl_mo.no_spk'
      
        'WHERE tbl_so_head.tanggal BETWEEN :tgl1 AND :tgl2 AND LEFT(tbl_s' +
        'o_head.no_bukti,3) = '#39'SPL'#39';')
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Visible = False
    Height = 251
    Width = 991
  end
  object pnlDetailHistPel: TPanel
    Left = 190
    Top = 95
    Width = 666
    Height = 331
    TabOrder = 5
    Visible = False
    object Button2: TButton
      Left = 640
      Top = 4
      Width = 22
      Height = 21
      Caption = 'X'
      TabOrder = 0
    end
    object cxGrid3: TcxGrid
      Left = 20
      Top = 25
      Width = 250
      Height = 106
      TabOrder = 1
      object cxGrid3DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.GridMode = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid3Level1: TcxGridLevel
        GridView = cxGrid3DBTableView1
      end
    end
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
    object cxStyle5: TcxStyle
      AssignedValues = [svColor]
      Color = clFuchsia
    end
  end
  object zqrHslProd: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.no_bukti, d.nama, a.kode_brg, e.deskripsi, a.qty, '
      
        'sum(b.qty_prod) qty_prod, sum(b.qty_baik) qty_baik, sum(b.qty_af' +
        'kir) qty_afkir, sum(b.qty_retur) qty_retur,'
      
        'sf_hitung_plusminus(sum(b.qty_baik), sum(b.qty_afkir), sum(b.qty' +
        '_retur), aa.susut, a.qty) plusminus,'
      
        'a.qty + sf_hitung_plusminus(sum(b.qty_baik), sum(b.qty_afkir), s' +
        'um(b.qty_retur), aa.susut, a.qty) qty_net,'
      
        'a.qty - (a.qty + sf_hitung_plusminus(sum(b.qty_baik), sum(b.qty_' +
        'afkir), sum(b.qty_retur), aa.susut, a.qty)) selisih,'
      
        'if(a.qty - (a.qty + sf_hitung_plusminus(sum(b.qty_baik), sum(b.q' +
        'ty_afkir), sum(b.qty_retur), aa.susut, a.qty)) < 0.1,'#39'C'#39','#39'U'#39') st' +
        'atus'
      'from tbl_so_det a '
      'inner join tbl_so_head aa on a.no_bukti = aa.no_bukti'
      
        'left join tbl_mo c on c.no_so = a.no_bukti and c.kode_brg = a.ko' +
        'de_brg'
      'left join tbl_hsl_prd b on b.no_spk = c.no_spk'
      'left join tbl_customer d on d.kode = aa.kode_customer'
      'left join tbl_barang e on e.kode = a.kode_brg'
      
        'where left(a.no_bukti,3) = '#39'SPL'#39' AND aa.tanggal BETWEEN :tgl1 AN' +
        'D :tgl2'
      
        'group by a.no_bukti, d.nama, a.kode_brg, a.qty, e.deskripsi, aa.' +
        'susut;')
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
    Left = 520
    Top = 14
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
  object dsHslProd: TDataSource
    DataSet = zqrHslProd
    Left = 550
    Top = 9
  end
end
