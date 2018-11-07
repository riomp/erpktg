object frmMasterSchedulePRD: TfrmMasterSchedulePRD
  Left = 131
  Top = 70
  Width = 1136
  Height = 607
  Caption = 'Master Schedule - Produksi'
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
  object cxGrid1: TcxGrid
    Left = 0
    Top = 51
    Width = 1120
    Height = 321
    Align = alClient
    TabOrder = 0
    object tblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = tblViewFocusedRecordChanged
      DataController.DataSource = dsSPK
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      object tblViewno_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 85
      end
      object tblViewno_mo: TcxGridDBColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Visible = False
        Width = 81
      end
      object tblViewno_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 82
      end
      object tblViewjenis_spk: TcxGridDBColumn
        Caption = 'Jenis SPK'
        DataBinding.FieldName = 'jenis_spk'
        Width = 140
      end
      object tblViewColumn1: TcxGridDBColumn
        Caption = 'Nama Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 113
      end
      object tblViewtanggal: TcxGridDBColumn
        Caption = 'Tgl. SPK'
        DataBinding.FieldName = 'tanggal'
      end
      object tblViewjam: TcxGridDBColumn
        Caption = 'Jam'
        DataBinding.FieldName = 'jam'
        Width = 70
      end
      object tblViewqty: TcxGridDBColumn
        Caption = 'Qty. SPK'
        DataBinding.FieldName = 'qty'
      end
      object tblViewkode_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
      end
      object tblViewnama: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 230
      end
      object tblViewColumn2: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object tblViewColumn3: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
      end
      object tblViewtanggal_so: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_so'
      end
      object tblViewketerangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object tblViewf_app_prd: TcxGridDBColumn
        DataBinding.FieldName = 'f_app_prd'
      end
    end
    object tblView2: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = tblView2FocusedRecordChanged
      DataController.DataSource = dsSPK
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      Styles.OnGetContentStyle = tblView2StylesGetContentStyle
      Bands = <
        item
          FixedKind = fkLeft
          Options.Moving = False
          Width = 450
        end
        item
          Width = 2000
        end>
      object tblView2no_mo: TcxGridDBBandedColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Visible = False
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblView2no_spk: TcxGridDBBandedColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblView2no_so: TcxGridDBBandedColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Visible = False
        Width = 121
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblView2tanggal_so: TcxGridDBBandedColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxColComplete: TcxGridDBBandedColumn
        Caption = 'Complete'
        DataBinding.FieldName = 'f_completed'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblView2kode_brg: TcxGridDBBandedColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblView2deskripsi: TcxGridDBBandedColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 331
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblView2jenis_spk: TcxGridDBBandedColumn
        Caption = 'Jenis SPK'
        DataBinding.FieldName = 'jenis_spk'
        Visible = False
        Width = 187
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tblView2tanggal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tanggal'
        Visible = False
        Width = 152
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tblView2jam: TcxGridDBBandedColumn
        DataBinding.FieldName = 'jam'
        Visible = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tblView2qty: TcxGridDBBandedColumn
        Caption = 'Qty SPK'
        DataBinding.FieldName = 'qty'
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblView2qty_produksi: TcxGridDBBandedColumn
        Caption = 'Qty. Prod'
        DataBinding.FieldName = 'qty_prod'
        Visible = False
        Width = 149
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblView2qty_kirim: TcxGridDBBandedColumn
        Caption = 'Qty. Kirim'
        DataBinding.FieldName = 'qty_kirim'
        Visible = False
        Width = 149
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblView2qty_terima: TcxGridDBBandedColumn
        Caption = 'Qty. Terima (WHL)'
        DataBinding.FieldName = 'qty_terima'
        Visible = False
        Width = 225
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblView2kode_mesin: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
        Width = 117
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tblView2nama: TcxGridDBBandedColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Visible = False
        Width = 264
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tblView2keterangan: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Visible = False
        Width = 185
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object tblView2f_app_prd: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_app_prd'
        Visible = False
        Width = 147
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object tblView2nama_mesin: TcxGridDBBandedColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 313
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object tblView2satuan: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tblView2kategori: TcxGridDBBandedColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Width = 390
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object tblView2subkategori: TcxGridDBBandedColumn
        DataBinding.FieldName = 'subkategori'
        Visible = False
        Width = 241
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object tblView2Column2: TcxGridDBBandedColumn
        Caption = 'Reject'
        DataBinding.FieldName = 'qty_reject'
        Visible = False
        Width = 74
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tblView2Column1: TcxGridDBBandedColumn
        Caption = 'Panjang'
        DataBinding.FieldName = 'panjang'
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object tblView2Column3: TcxGridDBBandedColumn
        Caption = 'S. Panjang'
        DataBinding.FieldName = 's_panjang'
        Width = 50
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object tblView2Column4: TcxGridDBBandedColumn
        Caption = 'Berat Per Unit'
        DataBinding.FieldName = 'berat_per_unit'
        Width = 64
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object tblView2Column5: TcxGridDBBandedColumn
        Caption = 'S. Berat'
        DataBinding.FieldName = 's_berat'
        Width = 46
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object tblView2Column6: TcxGridDBBandedColumn
        Caption = 'Lebar'
        DataBinding.FieldName = 'lebar'
        Width = 41
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object tblView2Column7: TcxGridDBBandedColumn
        Caption = 'S. Lebar'
        DataBinding.FieldName = 's_lebar'
        Width = 20
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object tblView2Column8: TcxGridDBBandedColumn
        Caption = 'Diameter Dalam'
        DataBinding.FieldName = 'diameter_dalam'
        Width = 48
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object tblView2Column10: TcxGridDBBandedColumn
        Caption = 'Sat. Dia. Dalam'
        DataBinding.FieldName = 's_diameter_dalam'
        Width = 48
        Position.BandIndex = 1
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
      object tblView2Column9: TcxGridDBBandedColumn
        Caption = 'Diameter Luar'
        DataBinding.FieldName = 'diameter_luar'
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 26
        Position.RowIndex = 0
      end
      object tblView2Column11: TcxGridDBBandedColumn
        Caption = 'Sat. Dia. Luar'
        DataBinding.FieldName = 's_diameter_luar'
        Width = 49
        Position.BandIndex = 1
        Position.ColIndex = 27
        Position.RowIndex = 0
      end
      object tblView2Column12: TcxGridDBBandedColumn
        Caption = 'Nama Custtomer'
        DataBinding.FieldName = 'nama'
        Width = 276
        Position.BandIndex = 1
        Position.ColIndex = 28
        Position.RowIndex = 0
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tblView
      Visible = False
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = tblView2
    end
  end
  object pnlPilCetSPK: TPanel
    Left = 380
    Top = 151
    Width = 366
    Height = 221
    TabOrder = 1
    Visible = False
    OnExit = pnlPilCetSPKExit
    object btnCetakSPK: TButton
      Left = 90
      Top = 190
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 0
      OnClick = btnCetakSPKClick
    end
    object btnBatal: TButton
      Left = 10
      Top = 190
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 1
      OnClick = btnBatalClick
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 10
      Width = 346
      Height = 166
      Caption = 'Jenis SPK'
      TabOrder = 2
      object cxrBrgJadi: TcxRadioButton
        Left = 10
        Top = 25
        Width = 113
        Height = 17
        Caption = 'Barang Jadi'
        TabOrder = 0
      end
      object cxrTmbh: TcxRadioButton
        Left = 10
        Top = 45
        Width = 113
        Height = 17
        Caption = 'Tambahan'
        TabOrder = 1
      end
      object cxRadioButton2: TcxRadioButton
        Left = 10
        Top = 65
        Width = 113
        Height = 17
        Caption = 'Compound'
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 51
    Align = alTop
    TabOrder = 2
    object cxLabel1: TcxLabel
      Left = 15
      Top = 17
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
      Top = 17
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 15
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 347
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
    Top = 372
    Width = 1120
    Height = 197
    Align = alBottom
    TabOrder = 3
    object btnCetakSPK2: TButton
      Left = 7
      Top = 139
      Width = 75
      Height = 25
      Caption = 'Cetak SPK'
      TabOrder = 0
      Visible = False
      OnClick = btnCetakSPK2Click
    end
    object btnKeluar: TButton
      Left = 163
      Top = 139
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      OnClick = btnKeluarClick
    end
    object btnHapusSPK: TButton
      Left = 179
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Pembatalan SPK'
      TabOrder = 2
      OnClick = btnHapusSPKClick
    end
    object btnSPKSelesai: TButton
      Left = 89
      Top = 7
      Width = 87
      Height = 25
      Caption = 'SPK Selesai'
      TabOrder = 3
      OnClick = btnSPKSelesaiClick
    end
    object cxGrid4: TcxGrid
      Left = 932
      Top = -25
      Width = 874
      Height = 46
      TabOrder = 4
      Visible = False
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsHP_Kirim
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView2no_mo: TcxGridDBColumn
          DataBinding.FieldName = 'no_mo'
          Visible = False
          Width = 85
        end
        object cxGridDBTableView2no_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
        end
        object cxGridDBTableView2qty_spk: TcxGridDBColumn
          Caption = 'Qty. SPK'
          DataBinding.FieldName = 'qty_spk'
          Width = 87
        end
        object cxGridDBTableView2qty_prod: TcxGridDBColumn
          Caption = 'Qty. Produksi'
          DataBinding.FieldName = 'qty_prod'
          Width = 95
        end
        object cxGridDBTableView2qty_kirim: TcxGridDBColumn
          Caption = 'Qty. Kirim Ke WHL'
          DataBinding.FieldName = 'qty_kirim'
          Width = 109
        end
        object cxGridDBTableView2qty_terima: TcxGridDBColumn
          Caption = 'Qty. Terima WHL'
          DataBinding.FieldName = 'qty_terima'
          Width = 110
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object ScrollBox1: TScrollBox
      Left = 393
      Top = 8
      Width = 716
      Height = 163
      BevelOuter = bvRaised
      TabOrder = 5
      object cxGrid2: TcxGrid
        Left = 12
        Top = 103
        Width = 544
        Height = 76
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsHslPrd
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView1no_hsl_prod: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_bukti'
            Options.Editing = False
            Width = 93
          end
          object cxGrid2DBTableView1tanggal: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            Options.Editing = False
            Width = 79
          end
          object cxGrid2DBTableView1qty_prod: TcxGridDBColumn
            Caption = 'Qty. Prod'
            DataBinding.FieldName = 'qty_prod'
            Options.Editing = False
          end
          object cxGrid2DBTableView1user: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Options.Editing = False
          end
          object cxGrid2DBTableView1user_dept: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
            Options.Editing = False
            Width = 58
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object cxGrid3: TcxGrid
        Left = 12
        Top = 204
        Width = 544
        Height = 76
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetailKirim
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_kirim'
            Options.Editing = False
            Width = 93
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            Options.Editing = False
            Width = 79
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Qty. Prod'
            DataBinding.FieldName = 'qty'
            Options.Editing = False
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Options.Editing = False
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
            Options.Editing = False
            Width = 58
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxLabel4: TcxLabel
        Left = 12
        Top = 183
        Caption = 'Detail Pengiriman Ke WHL'
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 11
        Top = 84
        Caption = 'Detail Hasil Produksi'
        Transparent = True
      end
      object cxGrid5: TcxGrid
        Left = 12
        Top = 304
        Width = 544
        Height = 76
        TabOrder = 4
        object cxGridDBTableView3: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsDetailTerima
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'No. Transaksi'
            DataBinding.FieldName = 'no_bukti'
            Options.Editing = False
            Width = 93
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Tanggal'
            DataBinding.FieldName = 'tanggal'
            Options.Editing = False
            Width = 79
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Qty. Terima'
            DataBinding.FieldName = 'qty'
            Options.Editing = False
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Caption = 'User'
            DataBinding.FieldName = 'user'
            Options.Editing = False
          end
          object cxGridDBColumn12: TcxGridDBColumn
            Caption = 'Dept'
            DataBinding.FieldName = 'user_dept'
            Options.Editing = False
            Width = 58
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
      object cxLabel6: TcxLabel
        Left = 12
        Top = 284
        Caption = 'Detail Penerimaan WHL'
        Transparent = True
        Visible = False
      end
      object cxLabel3: TcxLabel
        Left = 13
        Top = 8
        Caption = 'Hasil Produksi | Pengiriman Ke Gudang | Penerimaan '
      end
      object nxGrd: TNextGrid
        Left = 14
        Top = 26
        Width = 383
        Height = 51
        Options = [goGrid, goHeader]
        TabOrder = 7
        TabStop = True
        StartRowCount = 1
        object nxColQtySPK: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. SPK'
          Position = 0
          SortType = stNumeric
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColQtyProd: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. Produksi'
          Position = 1
          SortType = stNumeric
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColQtyKirim: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 92
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. Kirim WHL'
          Position = 2
          SortType = stNumeric
          Visible = False
          Width = 92
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColQtyTerima: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 95
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. Terima WHL'
          Position = 3
          SortType = stNumeric
          Width = 95
          Increment = 1.000000000000000000
          Precision = 0
        end
      end
      object btnLihat: TButton
        Left = 400
        Top = 25
        Width = 125
        Height = 25
        Caption = 'Lihat Detail'
        TabOrder = 8
        OnClick = btnLihatClick
      end
    end
    object btnRefresh: TButton
      Left = 8
      Top = 7
      Width = 78
      Height = 25
      Caption = 'Refresh'
      TabOrder = 6
      OnClick = btnRefreshClick
    end
    object btnEditSPK: TButton
      Left = 282
      Top = 7
      Width = 100
      Height = 25
      Caption = 'Edit SPK'
      TabOrder = 7
      OnClick = btnEditSPKClick
    end
    object btnCetakExcel: TButton
      Left = 85
      Top = 139
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 8
      OnClick = btnCetakExcelClick
    end
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT '
      
        'no_spk, tanggal, no_so, kode_brg, deskripsi, qty, qty_prod,  qty' +
        '_terima, '
      
        'satuan, nama_mesin, kategori, f_completed, berat_per_unit, s_ber' +
        'at, '
      'panjang, s_panjang, '
      
        'lebar, s_lebar, diameter_dalam, s_diameter_dalam, diameter_luar,' +
        ' s_diameter_luar, nama'
      'FROM v_spk'
      'WHERE f_app_prd = 1 AND tanggal BETWEEN :tgl1 AND :tgl2')
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
    Left = 270
    Top = 138
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
  object dsSPK: TDataSource
    DataSet = zqrSPK
    Left = 240
    Top = 138
  end
  object zqrHslPrd: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_hsl_prd WHERE no_spk = :no_spk')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
    Left = 890
    Top = 378
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
  end
  object dsHslPrd: TDataSource
    DataSet = zqrHslPrd
    Left = 860
    Top = 378
  end
  object dsDetailKirim: TDataSource
    DataSet = zqrDetailKirim
    Left = 860
    Top = 408
  end
  object zqrDetailKirim: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_trs_kirim WHERE no_spk = :no_spk')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
    Left = 890
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
  end
  object dsHP_Kirim: TDataSource
    DataSet = zqrHP_Kirim
    Left = 570
    Top = 433
  end
  object zqrHP_Kirim: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, qty_prod, user, user_dept '
      'FROM tbl_hsl_prd '
      'WHERE no_spk = :no_spk')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
    Left = 600
    Top = 433
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
  end
  object zqrDetailTerima: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.no_bukti, a.tanggal, b.qty, a.user, a.user_dept'
      'FROM tbl_trsmasuk_head a, tbl_trsmasuk_det b '
      'WHERE a.no_bukti = b.no_bukti AND '
      'no_spk = :no_spk')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
    Left = 890
    Top = 438
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_spk'
        ParamType = ptUnknown
      end>
  end
  object dsDetailTerima: TDataSource
    DataSet = zqrDetailTerima
    Left = 860
    Top = 438
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 305
    Top = 230
    PixelsPerInch = 96
    object cxsSpkSelesai: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
end
