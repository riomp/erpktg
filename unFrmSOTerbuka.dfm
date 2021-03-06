object frmSOTerbuka: TfrmSOTerbuka
  Left = 394
  Top = 186
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Sales Order Terbuka'
  ClientHeight = 567
  ClientWidth = 1131
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 51
    Width = 1131
    Height = 346
    Align = alClient
    TabOrder = 0
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = cxGridDBTableView1FocusedRecordChanged
      DataController.DataSource = dsSOTerbuka
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
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_bukti'
        Width = 96
      end
      object cxGridDBTableView1Column1: TcxGridDBColumn
        Caption = 'PO. Cust'
        DataBinding.FieldName = 'po#'
        Width = 91
      end
      object cxGridDBTableView1tanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBTableView1kode_customer: TcxGridDBColumn
        DataBinding.FieldName = 'kode_customer'
        Visible = False
      end
      object cxGridDBTableView1f_completed: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
        Visible = False
      end
      object cxGridDBTableView1tgl_required: TcxGridDBColumn
        Caption = 'Tgl. Diperlukan'
        DataBinding.FieldName = 'tgl_required'
        Width = 86
      end
      object cxGridDBTableView1nama: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'nama'
        Width = 231
      end
      object cxGridDBTableView1notes: TcxGridDBColumn
        DataBinding.FieldName = 'notes'
        Visible = False
      end
      object cxGridDBTableView1kode_brg: TcxGridDBColumn
        Caption = 'Kode. Brg'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBTableView1deskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 303
      end
      object cxGridDBTableView1qty: TcxGridDBColumn
        Caption = 'Qty. SO'
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBTableView1qty_kirim: TcxGridDBColumn
        Caption = 'Qty. Kirim'
        DataBinding.FieldName = 'qty_kirim'
      end
      object cxGridDBTableView1qty_g02: TcxGridDBColumn
        Caption = 'Stok G02'
        DataBinding.FieldName = 'qty_g02'
      end
      object cxGridDBTableView1kategori: TcxGridDBColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Width = 204
      end
      object cxGridDBTableView1user: TcxGridDBColumn
        DataBinding.FieldName = 'user'
        Visible = False
      end
      object cxGridDBTableView1user_dept: TcxGridDBColumn
        DataBinding.FieldName = 'user_dept'
        Visible = False
      end
      object cxGridDBTableView1satuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
        Visible = False
      end
      object cxGridDBTableView1notes_detail: TcxGridDBColumn
        DataBinding.FieldName = 'notes_detail'
        Visible = False
      end
      object cxGridDBTableView1ket_harga: TcxGridDBColumn
        DataBinding.FieldName = 'ket_harga'
        Visible = False
      end
      object cxGridDBTableView1kontak: TcxGridDBColumn
        DataBinding.FieldName = 'kontak'
        Visible = False
      end
      object cxGridDBTableView1alamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
        Visible = False
      end
      object cxGridDBTableView1subkategori: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
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
    Width = 1131
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
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
    object chk: TcxCheckBox
      Left = 423
      Top = 15
      Caption = 'Tampilkan hanya yang belum KOMPLIT'
      TabOrder = 5
      Width = 218
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 515
    Width = 1131
    Height = 52
    Align = alBottom
    TabOrder = 2
    object btnCetak: TButton
      Left = 14
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Cetak'
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
    object cxGrid1: TcxGrid
      Left = 320
      Top = 9
      Width = 891
      Height = 208
      TabOrder = 3
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        object cxGrid1DBTableView1no_bukti: TcxGridDBColumn
          Caption = 'No. SO'
          DataBinding.FieldName = 'no_bukti'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 109
        end
        object cxGrid1DBTableView1tanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
          Width = 89
        end
        object cxGrid1DBTableView1nama: TcxGridDBColumn
          Caption = 'Customer'
          DataBinding.FieldName = 'nama'
          Width = 288
        end
        object cxGrid1DBTableView1payment: TcxGridDBColumn
          Caption = 'Pembayaran'
          DataBinding.FieldName = 'payment'
          Width = 136
        end
        object cxGrid1DBTableView1f_complete: TcxGridDBColumn
          Caption = 'Komplit'
          DataBinding.FieldName = 'f_complete'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
        end
        object cxGrid1DBTableView1user: TcxGridDBColumn
          Caption = 'User'
          DataBinding.FieldName = 'user'
          Width = 95
        end
        object cxGrid1DBTableView1user_dept: TcxGridDBColumn
          DataBinding.FieldName = 'user_dept'
          Visible = False
        end
        object cxGrid1DBTableView1f_email: TcxGridDBColumn
          DataBinding.FieldName = 'f_email'
          Visible = False
        end
        object cxGrid1DBTableView1kontak: TcxGridDBColumn
          DataBinding.FieldName = 'kontak'
          Visible = False
        end
        object cxGrid1DBTableView1fax: TcxGridDBColumn
          DataBinding.FieldName = 'fax'
          Visible = False
        end
        object cxGrid1DBTableView1notes: TcxGridDBColumn
          DataBinding.FieldName = 'notes'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object nxGrdSODet: TNextGrid
      Left = 300
      Top = 31
      Width = 891
      Height = 151
      Options = [goGrid, goHeader]
      TabOrder = 4
      TabStop = True
      Visible = False
      object NxCheckBoxColumn1: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 56
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Pilih'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 0
        SortType = stBoolean
        Visible = False
        Width = 56
      end
      object NxTextColumn1: TNxTextColumn
        DefaultWidth = 103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Position = 1
        SortType = stAlphabetic
        Width = 103
      end
      object NxTextColumn2: TNxTextColumn
        DefaultWidth = 330
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Deskripsi'
        Position = 2
        SortType = stAlphabetic
        Width = 330
      end
      object NxNumberColumn1: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SO'
        Header.Alignment = taRightJustify
        Position = 3
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn3: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Produksi'
        Header.Alignment = taRightJustify
        Position = 4
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. Kirim'
        Header.Alignment = taRightJustify
        Position = 5
        SortType = stNumeric
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn3: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 6
        SortType = stAlphabetic
      end
    end
    object Button2: TButton
      Left = 167
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 397
    Width = 1131
    Height = 118
    Align = alBottom
    TabOrder = 3
    object nxGrd: TNextGrid
      Left = 10
      Top = 14
      Width = 701
      Height = 88
      Options = [goGrid, goHeader]
      TabOrder = 0
      TabStop = True
      object NxTextColumn4: TNxTextColumn
        DefaultWidth = 93
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. Surat Jalan'
        Position = 0
        SortType = stAlphabetic
        Width = 93
      end
      object NxDateColumn1: TNxDateColumn
        DefaultValue = '03/02/2014'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Tanggal'
        Position = 1
        SortType = stDate
        NoneCaption = 'None'
        TodayCaption = 'Today'
      end
      object NxNumberColumn4: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Position = 2
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
        Position = 3
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
        Position = 4
        SortType = stAlphabetic
      end
      object NxNumberColumn5: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 85
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Terkirim'
        Position = 5
        SortType = stNumeric
        Width = 85
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
    end
  end
  object Panel4: TPanel
    Left = 245
    Top = 144
    Width = 506
    Height = 187
    TabOrder = 4
    Visible = False
    OnExit = Panel4Exit
    object cxChkCustomer: TcxCheckBox
      Left = 12
      Top = 15
      Caption = 'Customer'
      TabOrder = 0
      Width = 121
    end
    object cxChkKategori: TcxCheckBox
      Left = 12
      Top = 60
      Caption = 'Kategori'
      TabOrder = 1
      Width = 121
    end
    object btnCetak2: TButton
      Left = 15
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 2
      OnClick = btnCetak2Click
    end
    object btnBatalCetak: TButton
      Left = 95
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 3
      OnClick = btnBatalCetakClick
    end
    object cxlCustomer: TcxLookupComboBox
      Left = 16
      Top = 36
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Deskripsi'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      TabOrder = 4
      Width = 471
    end
    object cxlKategori: TcxLookupComboBox
      Left = 16
      Top = 81
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kategori'
      Properties.ListColumns = <
        item
          FieldName = 'kategori'
        end>
      Properties.ListOptions.ColumnSorting = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsKategori
      TabOrder = 5
      Width = 472
    end
    object cxChkKelPerCust: TcxCheckBox
      Left = 187
      Top = 102
      Caption = 'Kelompokkan Per Customer'
      Style.TextColor = clBlue
      TabOrder = 6
      Visible = False
      Width = 164
    end
    object cxChkJmlHari: TcxCheckBox
      Left = 343
      Top = 102
      Caption = 'Urutkan berdasarkan Jml. Hari Terbuka (Besar ke Kecil)'
      Style.TextColor = clBlue
      TabOrder = 7
      Visible = False
      Width = 318
    end
    object cxLabel19: TcxLabel
      Left = 16
      Top = 105
      Caption = 'Urut Berdasarkan'
    end
    object cxCmbUrut: TcxComboBox
      Left = 16
      Top = 125
      Properties.DropDownListStyle = lsEditFixedList
      TabOrder = 9
      Width = 472
    end
  end
  object Memo1: TMemo
    Left = 715
    Top = 415
    Width = 841
    Height = 81
    Lines.Strings = (
      'select '
      '    `tbl_so_head`.`no_bukti` AS `no_bukti`,'
      '    `tbl_so_head`.`tanggal` AS `tanggal`,'
      '    `tbl_so_head`.`kode_customer` AS `kode_customer`,'
      '    `tbl_so_head`.`f_completed` AS `f_completed`,'
      '    `tbl_so_head`.`tgl_required` AS `tgl_required`,'
      '    `tbl_so_head`.`notes` AS `notes`,'
      '    `tbl_so_head`.`user` AS `user`,'
      '    `tbl_so_head`.`user_dept` AS `user_dept`,'
      '    `tbl_so_det`.`kode_brg` AS `kode_brg`,'
      '    `tbl_so_det`.`qty` AS `qty`,'
      '    `tbl_so_det`.`satuan` AS `satuan`,'
      '    `tbl_so_det`.`notes` AS `notes_detail`,'
      '    `tbl_so_det`.`ket_harga` AS `ket_harga`,'
      '    `tbl_customer`.`nama` AS `nama`,'
      '    `tbl_customer`.`kontak` AS `kontak`,'
      '    `tbl_customer`.`alamat` AS `alamat`,'
      '    `tbl_barang`.`deskripsi` AS `deskripsi`,'
      '    `tbl_barang`.`kategori` AS `kategori`,'
      '    `tbl_barang`.`subkategori` AS `subkategori`,'
      
        '    (to_days(now()) - to_days(`tbl_so_head`.`tanggal`)) AS `seli' +
        'sih_hari`,'
      '    `tbl_so_head`.`po#` AS `po#`,'
      '    `tbl_so_head`.`sc#` AS `sc#`,'
      '    `tbl_customer`.`alamat2` AS `alamat2`,'
      '    `tbl_customer`.`kota` AS `kota`, '
      
        '    ifnull((select sum(qty) from tbl_sj_det where no_so = tbl_so' +
        '_det.no_bukti and kode_brg = tbl_so_det.kode_brg),0) as qty_kiri' +
        'm,'
      
        '    ifnull((select qty_g02 from v_stok_so where no_bukti = tbl_s' +
        'o_det.no_bukti and kode_brg = tbl_so_det.kode_brg),0) as qty_g02'
      '  from '
      
        '    `tbl_so_head` join `tbl_so_det` on `tbl_so_head`.`no_bukti` ' +
        '= `tbl_so_det`.`no_bukti` '
      
        '    left join `tbl_customer` on `tbl_so_head`.`kode_customer` = ' +
        '`tbl_customer`.`kode` '
      
        '    left join `tbl_barang` on `tbl_so_det`.`kode_brg` = `tbl_bar' +
        'ang`.`kode`'
      '  where '
      
        '    left(`tbl_so_head`.`no_bukti`,3) <> '#39'MTS'#39' and tbl_so_head.ta' +
        'nggal between :tgl1 and :tgl2'
      '    and tbl_so_head.f_completed = 0'
      
        '    and tbl_so_det.qty > ifnull((select sum(qty) from tbl_sj_det' +
        ' where no_so = tbl_so_det.no_bukti and kode_brg = tbl_so_det.kod' +
        'e_brg),0)  '
      'order by tanggal')
    TabOrder = 5
    Visible = False
  end
  object Memo2: TMemo
    Left = 790
    Top = 192
    Width = 696
    Height = 89
    Lines.Strings = (
      'select '
      '    `tbl_so_head`.`no_bukti` AS `no_bukti`,'
      '    `tbl_so_head`.`tanggal` AS `tanggal`,'
      '    `tbl_so_head`.`kode_customer` AS `kode_customer`,'
      '    `tbl_so_head`.`f_completed` AS `f_completed`,'
      '    `tbl_so_head`.`tgl_required` AS `tgl_required`,'
      '    `tbl_so_head`.`notes` AS `notes`,'
      '    `tbl_so_head`.`user` AS `user`,'
      '    `tbl_so_head`.`user_dept` AS `user_dept`,'
      '    `tbl_so_det`.`kode_brg` AS `kode_brg`,'
      '    `tbl_so_det`.`qty` AS `qty`,'
      '    `tbl_so_det`.`satuan` AS `satuan`,'
      '    `tbl_so_det`.`notes` AS `notes_detail`,'
      '    `tbl_so_det`.`ket_harga` AS `ket_harga`,'
      '    `tbl_customer`.`nama` AS `nama`,'
      '    `tbl_customer`.`kontak` AS `kontak`,'
      '    `tbl_customer`.`alamat` AS `alamat`,'
      '    `tbl_barang`.`deskripsi` AS `deskripsi`,'
      '    `tbl_barang`.`kategori` AS `kategori`,'
      '    `tbl_barang`.`subkategori` AS `subkategori`,'
      
        '    (to_days(now()) - to_days(`tbl_so_head`.`tanggal`)) AS `seli' +
        'sih_hari`,'
      '    `tbl_so_head`.`po#` AS `po#`,'
      '    `tbl_so_head`.`sc#` AS `sc#`,'
      '    `tbl_customer`.`alamat2` AS `alamat2`,'
      '    `tbl_customer`.`kota` AS `kota`, '
      
        '    ifnull((select sum(qty) from tbl_sj_det where no_so = tbl_so' +
        '_det.no_bukti and kode_brg = tbl_so_det.kode_brg),0) as qty_kiri' +
        'm,'
      
        '    ifnull((select qty_g02 from v_stok_so where no_bukti = tbl_s' +
        'o_det.no_bukti and kode_brg = tbl_so_det.kode_brg),0) as qty_g02'
      '  from '
      
        '    `tbl_so_head` join `tbl_so_det` on `tbl_so_head`.`no_bukti` ' +
        '= `tbl_so_det`.`no_bukti` '
      
        '    left join `tbl_customer` on `tbl_so_head`.`kode_customer` = ' +
        '`tbl_customer`.`kode` '
      
        '    left join `tbl_barang` on `tbl_so_det`.`kode_brg` = `tbl_bar' +
        'ang`.`kode`'
      '  where '
      
        '    left(`tbl_so_head`.`no_bukti`,3) <> '#39'MTS'#39' and tbl_so_head.ta' +
        'nggal between :tgl1 and :tgl2'
      '    and tbl_so_head.f_completed = 0'
      'order by tanggal')
    TabOrder = 6
    Visible = False
  end
  object zqrSOTerbuka: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select '
      '    `tbl_so_head`.`no_bukti` AS `no_bukti`,'
      '    `tbl_so_head`.`tanggal` AS `tanggal`,'
      '    `tbl_so_head`.`kode_customer` AS `kode_customer`,'
      '    `tbl_so_head`.`f_completed` AS `f_completed`,'
      '    `tbl_so_head`.`tgl_required` AS `tgl_required`,'
      '    `tbl_so_head`.`notes` AS `notes`,'
      '    `tbl_so_head`.`user` AS `user`,'
      '    `tbl_so_head`.`user_dept` AS `user_dept`,'
      '    `tbl_so_det`.`kode_brg` AS `kode_brg`,'
      '    `tbl_so_det`.`qty` AS `qty`,'
      '    `tbl_so_det`.`satuan` AS `satuan`,'
      '    `tbl_so_det`.`notes` AS `notes_detail`,'
      '    `tbl_so_det`.`ket_harga` AS `ket_harga`,'
      '    `tbl_customer`.`nama` AS `nama`,'
      '    `tbl_customer`.`kontak` AS `kontak`,'
      '    `tbl_customer`.`alamat` AS `alamat`,'
      '    `tbl_barang`.`deskripsi` AS `deskripsi`,'
      '    `tbl_barang`.`kategori` AS `kategori`,'
      '    `tbl_barang`.`subkategori` AS `subkategori`,'
      
        '    (to_days(now()) - to_days(`tbl_so_head`.`tanggal`)) AS `seli' +
        'sih_hari`,'
      '    `tbl_so_head`.`po#` AS `po#`,'
      '    `tbl_so_head`.`sc#` AS `sc#`,'
      '    `tbl_customer`.`alamat2` AS `alamat2`,'
      '    `tbl_customer`.`kota` AS `kota`, '
      
        '    ifnull((select sum(qty) from tbl_sj_det where no_so = tbl_so' +
        '_det.no_bukti and kode_brg = tbl_so_det.kode_brg),0) as qty_kiri' +
        'm,'
      
        '    ifnull((select qty_g02 from v_stok_so where no_bukti = tbl_s' +
        'o_det.no_bukti and kode_brg = tbl_so_det.kode_brg),0) as qty_g02'
      '  from '
      
        '    `tbl_so_head` join `tbl_so_det` on `tbl_so_head`.`no_bukti` ' +
        '= `tbl_so_det`.`no_bukti` '
      
        '    left join `tbl_customer` on `tbl_so_head`.`kode_customer` = ' +
        '`tbl_customer`.`kode` '
      
        '    left join `tbl_barang` on `tbl_so_det`.`kode_brg` = `tbl_bar' +
        'ang`.`kode`'
      '  where '
      
        '    left(`tbl_so_head`.`no_bukti`,3) <> '#39'MTS'#39' and tbl_so_head.ta' +
        'nggal between :tgl1 and :tgl2'
      '    and tbl_so_head.f_completed = 0'
      'order by tanggal')
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
    Top = 324
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
  object dsSOTerbuka: TDataSource
    DataSet = zqrSOTerbuka
    Left = 360
    Top = 324
  end
  object zqrSJDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select a.*, b.tanggal '
      'from v_sj_det a, v_sj_head b'
      'where a.no_bukti = b.no_bukti and a.no_so = :no_so')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_so'
        ParamType = ptUnknown
      end>
    Left = 585
    Top = 430
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_so'
        ParamType = ptUnknown
      end>
  end
  object dsSJDet: TDataSource
    DataSet = zqrSJDet
    Left = 615
    Top = 430
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer ORDER BY nama')
    Params = <>
    Left = 660
    Top = 14
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 690
    Top = 14
  end
  object zqrKategori: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kategori FROM tbl_kategori_brg WHERE kategori <> '#39#39' ORDER' +
        ' BY kategori')
    Params = <>
    Left = 720
    Top = 14
  end
  object dsKategori: TDataSource
    DataSet = zqrKategori
    Left = 750
    Top = 14
  end
end
