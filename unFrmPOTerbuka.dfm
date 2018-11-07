object frmPOTerbuka: TfrmPOTerbuka
  Left = 154
  Top = 112
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'PO Terbuka'
  ClientHeight = 531
  ClientWidth = 1024
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
    Top = 51
    Width = 1024
    Height = 310
    Align = alTop
    TabOrder = 0
    object cxg: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSOTerbuka
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      object cxgno_bukti: TcxGridDBColumn
        Caption = 'No. PO'
        DataBinding.FieldName = 'no_bukti'
        Width = 97
      end
      object cxgColumn1: TcxGridDBColumn
        Caption = 'No. FOBJ'
        DataBinding.FieldName = 'no_fobj'
        Width = 100
      end
      object cxgtanggal: TcxGridDBColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
      end
      object cxgnama: TcxGridDBColumn
        Caption = 'Supplier'
        DataBinding.FieldName = 'nama'
        Width = 248
      end
      object cxgkode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxgdeskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 347
      end
      object cxgqty: TcxGridDBColumn
        Caption = 'Qty.'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.000'
      end
      object cxgqty_kirim: TcxGridDBColumn
        Caption = 'Qty. Kirim'
        DataBinding.FieldName = 'qty_kirim'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.000'
      end
      object cxgqty_sisa: TcxGridDBColumn
        Caption = 'Qty. Sisa'
        DataBinding.FieldName = 'qty_sisa'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.000'
      end
      object cxgkode_supp: TcxGridDBColumn
        DataBinding.FieldName = 'kode_supp'
        Visible = False
      end
      object cxgf_completed: TcxGridDBColumn
        Caption = 'Komplit ?'
        DataBinding.FieldName = 'f_completed'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxgtgl_required: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_required'
      end
      object cxgketerangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object cxguser: TcxGridDBColumn
        DataBinding.FieldName = 'user'
      end
      object cxguser_dept: TcxGridDBColumn
        DataBinding.FieldName = 'user_dept'
      end
      object cxgkontak: TcxGridDBColumn
        DataBinding.FieldName = 'kontak'
      end
      object cxgalamat: TcxGridDBColumn
        DataBinding.FieldName = 'alamat'
      end
      object cxgkategori: TcxGridDBColumn
        DataBinding.FieldName = 'kategori'
      end
      object cxgsubkategori: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
      end
      object cxgselisih_hari: TcxGridDBColumn
        DataBinding.FieldName = 'selisih_hari'
      end
      object cxgalamat2: TcxGridDBColumn
        DataBinding.FieldName = 'alamat2'
      end
      object cxgkota: TcxGridDBColumn
        DataBinding.FieldName = 'kota'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxg
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 479
    Width = 1024
    Height = 52
    Align = alTop
    TabOrder = 2
    object btnCetak: TButton
      Left = 394
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Cetak'
      TabOrder = 0
      Visible = False
    end
    object btnBatal: TButton
      Left = 10
      Top = 12
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      OnClick = btnBatalClick
    end
    object Button1: TButton
      Left = 325
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Pilih'
      TabOrder = 2
      Visible = False
    end
    object Button2: TButton
      Left = 87
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 3
      OnClick = Button2Click
    end
    object btnTutupPO: TButton
      Left = 164
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Tutup PO'
      TabOrder = 4
      OnClick = btnTutupPOClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 361
    Width = 1024
    Height = 118
    Align = alTop
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
    end
    object btnBatalCetak: TButton
      Left = 95
      Top = 152
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 3
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
  object zqrPOTerbuka: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select '
      '    poh.`no_bukti` AS `no_bukti`,'
      '    poh.no_fobj AS no_fobj,'
      '    poh.`tanggal` AS `tanggal`,'
      '    poh.`kode_supp` AS `kode_supp`,'
      '    poh.`f_completed` AS `f_completed`,'
      '    poh.`tgl_required` AS `tgl_required`,'
      '    poh.`keterangan` AS `keterangan`,'
      '    poh.`user` AS `user`,'
      '    poh.`user_dept` AS `user_dept`,'
      '    pod.`kode_brg` AS `kode_brg`,'
      '    pod.`qty` AS `qty`,'
      '    supp.`nama` AS `nama`,'
      '    supp.`kontak` AS `kontak`,'
      '    supp.`alamat` AS `alamat`,'
      '    brg.`deskripsi` AS `deskripsi`,'
      '    brg.`kategori` AS `kategori`,'
      '    brg.`subkategori` AS `subkategori`,'
      '    (to_days(now()) - to_days(poh.`tanggal`)) AS `selisih_hari`,'
      '    supp.`alamat2` AS `alamat2`,'
      '    supp.`kota` AS `kota`, '
      
        '    ifnull((select sum(qty) from tbl_spbb_det where no_po = poh.' +
        'no_bukti and kode_brg = pod.kode_brg and no_penerimaan IS NOT NU' +
        'LL),0) as qty_kirim, '
      
        '    qty - ifnull((select sum(qty) from tbl_spbb_det where no_po ' +
        '= poh.no_bukti and kode_brg = pod.kode_brg and no_penerimaan IS ' +
        'NOT NULL),0) as qty_sisa '
      '  from '
      
        '    `tbl_po_head` poh join `tbl_po_det` pod on poh.`no_bukti` = ' +
        'pod.`no_bukti` '
      
        '    left join `tbl_supplier` supp on poh.`kode_supp` = supp.`kod' +
        'e` '
      '    left join `tbl_barang` brg on pod.`kode_brg` = brg.`kode`'
      '  where '
      '    poh.f_completed = 0 AND tanggal BETWEEN :tgl1 AND :tgl2'
      'order by tanggal;')
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
    DataSet = zqrPOTerbuka
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
