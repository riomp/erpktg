object frmMasterSchedule: TfrmMasterSchedule
  Left = 185
  Top = 22
  Width = 1079
  Height = 681
  Caption = 'Master Schedule'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 46
    Width = 1063
    Height = 413
    Align = alClient
    TabOrder = 1
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
      OnCellClick = tblView2CellClick
      OnEditValueChanged = tblView2EditValueChanged
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
          Width = 432
        end
        item
          Width = 2000
        end>
      object tblView2no_mo: TcxGridDBBandedColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Width = 79
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblView2Column9: TcxGridDBBandedColumn
        Caption = 'SPK Induk'
        DataBinding.FieldName = 'no_spk_induk'
        Width = 110
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblView2no_spk: TcxGridDBBandedColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 73
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblView2no_so: TcxGridDBBandedColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 88
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblView2tanggal_so: TcxGridDBBandedColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxColComplete: TcxGridDBBandedColumn
        Caption = 'Complete'
        DataBinding.FieldName = 'f_completed'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 24
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblView2Column5: TcxGridDBBandedColumn
        Caption = 'W'
        DataBinding.FieldName = 'f_wip'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Width = 21
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object tblView2kode_brg: TcxGridDBBandedColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
        Width = 90
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object tblView2deskripsi: TcxGridDBBandedColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 346
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object tblView2jenis_spk: TcxGridDBBandedColumn
        Caption = 'Jenis SPK'
        DataBinding.FieldName = 'jenis_spk'
        Width = 193
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object tblView2tanggal: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tanggal'
        Visible = False
        Width = 152
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object tblView2jam: TcxGridDBBandedColumn
        DataBinding.FieldName = 'jam'
        Visible = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object tblView2qty: TcxGridDBBandedColumn
        Caption = 'Qty SPK'
        DataBinding.FieldName = 'qty'
        Width = 81
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object tblView2qty_produksi: TcxGridDBBandedColumn
        Caption = 'Qty. Prod (PRD)'
        DataBinding.FieldName = 'qty_prod'
        Width = 82
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object tblView2qty_kirim: TcxGridDBBandedColumn
        Caption = 'Qty. Kirim'
        DataBinding.FieldName = 'qty_kirim'
        Visible = False
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object tblView2qty_terima: TcxGridDBBandedColumn
        Caption = 'Qty. Terima (WHL)'
        DataBinding.FieldName = 'qty_terima'
        Width = 108
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object tblView2kode_mesin: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
        Width = 117
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object tblView2nama: TcxGridDBBandedColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 273
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object tblView2Column1: TcxGridDBBandedColumn
        Caption = 'Qty. Baik'
        DataBinding.FieldName = 'qty_baik'
        Width = 53
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object tblView2Column3: TcxGridDBBandedColumn
        Caption = 'Qty. Afkir'
        DataBinding.FieldName = 'qty_afkir'
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object tblView2Column4: TcxGridDBBandedColumn
        Caption = 'Qty. Retur'
        DataBinding.FieldName = 'qty_retur'
        Width = 56
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object tblView2keterangan: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 194
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object tblView2f_app_prd: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_app_prd'
        Visible = False
        Width = 147
        Position.BandIndex = 1
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object tblView2nama_mesin: TcxGridDBBandedColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 142
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object tblView2satuan: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 65
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object tblView2kategori: TcxGridDBBandedColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Width = 177
        Position.BandIndex = 1
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object tblView2subkategori: TcxGridDBBandedColumn
        DataBinding.FieldName = 'subkategori'
        Visible = False
        Width = 241
        Position.BandIndex = 1
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object tblView2Column2: TcxGridDBBandedColumn
        Caption = 'Reject'
        DataBinding.FieldName = 'qty_reject'
        Visible = False
        Width = 74
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object tblView2Column6: TcxGridDBBandedColumn
        Caption = 'Aw'
        DataBinding.FieldName = 'f_wip_awal'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        Width = 29
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object tblView2Column7: TcxGridDBBandedColumn
        Caption = 'Ak'
        DataBinding.FieldName = 'f_wip_akhir'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 32
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object tblView2Column8: TcxGridDBBandedColumn
        Caption = 'Jml. Cetak'
        DataBinding.FieldName = 'f_cetak'
        Position.BandIndex = 1
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPKDet
      DataController.DetailKeyFieldNames = 'no_spk_induk'
      DataController.KeyFieldNames = 'no_spk_induk'
      DataController.MasterKeyFieldNames = 'no_spk'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1no_spk: TcxGridDBColumn
        DataBinding.FieldName = 'no_spk'
      end
      object cxGrid1DBTableView1jenis_spk: TcxGridDBColumn
        DataBinding.FieldName = 'jenis_spk'
      end
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
      end
      object cxGrid1DBTableView1jam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
      end
      object cxGrid1DBTableView1qty: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object cxGrid1DBTableView1kode_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
      end
      object cxGrid1DBTableView1f_completed: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
      end
      object cxGrid1DBTableView1keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object cxGrid1DBTableView1f_app_prd: TcxGridDBColumn
        DataBinding.FieldName = 'f_app_prd'
      end
      object cxGrid1DBTableView1nama_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'nama_mesin'
      end
      object cxGrid1DBTableView1kode_brg: TcxGridDBColumn
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGrid1DBTableView1deskripsi: TcxGridDBColumn
        DataBinding.FieldName = 'deskripsi'
      end
      object cxGrid1DBTableView1satuan: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
      end
      object cxGrid1DBTableView1kategori: TcxGridDBColumn
        DataBinding.FieldName = 'kategori'
      end
      object cxGrid1DBTableView1subkategori: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
      end
      object cxGrid1DBTableView1qty_prod: TcxGridDBColumn
        DataBinding.FieldName = 'qty_prod'
      end
      object cxGrid1DBTableView1qty_baik: TcxGridDBColumn
        DataBinding.FieldName = 'qty_baik'
      end
      object cxGrid1DBTableView1qty_afkir: TcxGridDBColumn
        DataBinding.FieldName = 'qty_afkir'
      end
      object cxGrid1DBTableView1qty_retur: TcxGridDBColumn
        DataBinding.FieldName = 'qty_retur'
      end
      object cxGrid1DBTableView1qty_reject: TcxGridDBColumn
        DataBinding.FieldName = 'qty_reject'
      end
      object cxGrid1DBTableView1qty_terima: TcxGridDBColumn
        DataBinding.FieldName = 'qty_terima'
      end
      object cxGrid1DBTableView1toleransi: TcxGridDBColumn
        DataBinding.FieldName = 'toleransi'
      end
      object cxGrid1DBTableView1tgl_p_mulai: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_p_mulai'
      end
      object cxGrid1DBTableView1tgl_p_selesai: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_p_selesai'
      end
      object cxGrid1DBTableView1lain_lain: TcxGridDBColumn
        DataBinding.FieldName = 'lain_lain'
      end
      object cxGrid1DBTableView1ket_ppic: TcxGridDBColumn
        DataBinding.FieldName = 'ket_ppic'
      end
      object cxGrid1DBTableView1berat_per_unit: TcxGridDBColumn
        DataBinding.FieldName = 'berat_per_unit'
      end
      object cxGrid1DBTableView1s_berat: TcxGridDBColumn
        DataBinding.FieldName = 's_berat'
      end
      object cxGrid1DBTableView1s_panjang: TcxGridDBColumn
        DataBinding.FieldName = 's_panjang'
      end
      object cxGrid1DBTableView1panjang: TcxGridDBColumn
        DataBinding.FieldName = 'panjang'
      end
      object cxGrid1DBTableView1lebar: TcxGridDBColumn
        DataBinding.FieldName = 'lebar'
      end
      object cxGrid1DBTableView1s_lebar: TcxGridDBColumn
        DataBinding.FieldName = 's_lebar'
      end
      object cxGrid1DBTableView1diameter_dalam: TcxGridDBColumn
        DataBinding.FieldName = 'diameter_dalam'
      end
      object cxGrid1DBTableView1diameter_luar: TcxGridDBColumn
        DataBinding.FieldName = 'diameter_luar'
      end
      object cxGrid1DBTableView1s_diameter_dalam: TcxGridDBColumn
        DataBinding.FieldName = 's_diameter_dalam'
      end
      object cxGrid1DBTableView1s_diameter_luar: TcxGridDBColumn
        DataBinding.FieldName = 's_diameter_luar'
      end
      object cxGrid1DBTableView1no_spk_induk: TcxGridDBColumn
        DataBinding.FieldName = 'no_spk_induk'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tblView
      Visible = False
    end
    object cxGrid1Level2: TcxGridLevel
      GridView = tblView2
      object cxGrid1Level3: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1063
    Height = 46
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 15
      Top = 14
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 12
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 14
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 12
      TabOrder = 2
      Width = 121
    end
    object btnProses: TButton
      Left = 343
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 0
      OnClick = btnProsesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 1063
    Height = 183
    Align = alBottom
    TabOrder = 6
    DesignSize = (
      1063
      183)
    object btnCetakSPK2: TButton
      Left = 7
      Top = 139
      Width = 75
      Height = 25
      Caption = 'Cetak SPK'
      TabOrder = 12
      OnClick = btnCetakSPK2Click
    end
    object btnKeluar: TButton
      Left = 163
      Top = 139
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 14
      OnClick = btnKeluarClick
    end
    object btnHapusSPK: TButton
      Left = 179
      Top = 9
      Width = 100
      Height = 25
      Caption = 'Pembatalan SPK'
      TabOrder = 4
      OnClick = btnHapusSPKClick
    end
    object btnSPKSelesai: TButton
      Left = 89
      Top = 9
      Width = 87
      Height = 25
      Caption = 'SPK Selesai'
      TabOrder = 3
      OnClick = btnSPKSelesaiClick
    end
    object cxGrid4: TcxGrid
      Left = 722
      Top = -30
      Width = 874
      Height = 46
      TabOrder = 0
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
      Left = 395
      Top = 8
      Width = 659
      Height = 163
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvRaised
      TabOrder = 1
      object cxGrid2: TcxGrid
        Left = 8
        Top = 96
        Width = 544
        Height = 76
        TabOrder = 4
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
          object cxGrid2DBTableView1Column1: TcxGridDBColumn
            Caption = 'Shift'
            DataBinding.FieldName = 'shift'
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
        Left = 578
        Top = 182
        Width = 544
        Height = 76
        TabOrder = 7
        Visible = False
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
        Left = 578
        Top = 161
        Caption = 'Detail Pengiriman Ke WHL'
        Transparent = True
        Visible = False
      end
      object cxLabel5: TcxLabel
        Left = 7
        Top = 77
        Caption = 'Detail Hasil Produksi'
        Transparent = True
      end
      object cxGrid5: TcxGrid
        Left = 8
        Top = 199
        Width = 544
        Height = 76
        TabOrder = 10
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
        Left = 8
        Top = 179
        Caption = 'Detail Penerimaan WHL'
        Transparent = True
      end
      object btnLihat: TButton
        Left = 395
        Top = 22
        Width = 125
        Height = 25
        Caption = 'Lihat Detail'
        TabOrder = 0
        OnClick = btnLihatClick
      end
      object cxLabel3: TcxLabel
        Left = 7
        Top = 5
        Caption = 'Hasil Produksi | Pengiriman Ke Gudang | Penerimaan '
      end
      object nxGrd: TNextGrid
        Left = 8
        Top = 23
        Width = 383
        Height = 51
        Options = [goGrid, goHeader]
        TabOrder = 1
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
      object Button1: TButton
        Left = 528
        Top = 50
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 2
        Visible = False
      end
      object cxsPlusMinux: TcxSpinEdit
        Left = 398
        Top = 54
        Properties.ValueType = vtFloat
        TabOrder = 3
        Width = 121
      end
    end
    object btnRefresh: TButton
      Left = 8
      Top = 9
      Width = 78
      Height = 25
      Caption = 'Refresh'
      TabOrder = 2
      OnClick = btnRefreshClick
    end
    object btnEditSPK: TButton
      Left = 282
      Top = 9
      Width = 100
      Height = 25
      Caption = 'Edit SPK'
      TabOrder = 5
      OnClick = btnEditSPKClick
    end
    object btnCetakExcel: TButton
      Left = 85
      Top = 139
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 13
      OnClick = btnCetakExcelClick
    end
    object btnED: TButton
      Left = 8
      Top = 39
      Width = 78
      Height = 25
      Caption = 'Lihat ED'
      TabOrder = 6
      OnClick = btnEDClick
    end
    object Button2: TButton
      Left = 275
      Top = 75
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 9
      Visible = False
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 275
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 10
      Text = 'Edit1'
      Visible = False
    end
    object btnCetakSPKTua: TButton
      Left = 89
      Top = 39
      Width = 152
      Height = 25
      Caption = 'Cetak SPK Umur >= 1 Bulan'
      TabOrder = 7
      OnClick = btnCetakSPKTuaClick
    end
    object cxGrdSPKTua: TcxGrid
      Left = 260
      Top = 115
      Width = 201
      Height = 56
      TabOrder = 11
      Visible = False
      object cxTblSPKTua: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSPKTua
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblSPKTuano_spk: TcxGridDBColumn
          DataBinding.FieldName = 'no_spk'
        end
        object cxTblSPKTuatanggal: TcxGridDBColumn
          DataBinding.FieldName = 'tanggal'
        end
        object cxTblSPKTuakode_brg: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg'
        end
        object cxTblSPKTuadeskripsi: TcxGridDBColumn
          DataBinding.FieldName = 'deskripsi'
        end
        object cxTblSPKTuaqty_spk: TcxGridDBColumn
          DataBinding.FieldName = 'qty_spk'
        end
        object cxTblSPKTuaqty_prod: TcxGridDBColumn
          DataBinding.FieldName = 'qty_prod'
        end
        object cxTblSPKTuaqty_serahterima: TcxGridDBColumn
          DataBinding.FieldName = 'qty_serahterima'
        end
      end
      object cxGrdSPKTuaLevel1: TcxGridLevel
        GridView = cxTblSPKTua
      end
    end
    object btnBukaSPK: TButton
      Left = 8
      Top = 69
      Width = 87
      Height = 25
      Caption = 'Buka SPK'
      TabOrder = 8
      OnClick = btnBukaSPKClick
    end
  end
  object cxMemo1: TcxMemo
    Left = 45
    Top = 175
    Lines.Strings = (
      'SELECT '
      '  tbl_spk.no_mo,'
      '  tbl_spk.no_spk,'
      '  tbl_spk.jenis_spk,'
      '  tbl_spk.tanggal,'
      '  tbl_spk.jam,'
      '  tbl_spk.qty,'
      '  tbl_spk.kode_mesin,'
      '  tbl_spk.f_completed,'
      '  tbl_customer.nama,'
      '  tbl_mo.no_so,'
      '  tbl_so_head.tanggal AS tanggal_so,'
      '  tbl_spk.keterangan,'
      '  tbl_spk.f_app_prd,'
      '  tbl_mesin.nama AS nama_mesin,'
      '  tbl_spk.kode_brg,'
      '  tbl_barang.deskripsi,'
      '  tbl_barang.satuan,'
      '  tbl_barang.kategori,'
      '  tbl_barang.subkategori,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_prod), 0) AS `ifnull(sum(qt' +
        'y_prod),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_spk.' +
        'no_spk) AS qty_prod,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_baik), 0) AS `ifnull(sum(qt' +
        'y_baik),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_spk.' +
        'no_spk) AS qty_baik,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_afkir), 0) AS `ifnull(sum(q' +
        'ty_afkir),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_sp' +
        'k.no_spk) AS qty_afkir,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_retur), 0) AS `ifnull(sum(q' +
        'ty_retur),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_sp' +
        'k.no_spk) AS qty_retur,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_reject), 0) AS `ifnull(sum(' +
        'qty_reject),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_' +
        'spk.no_spk) AS qty_reject,'
      '  ifnull(v_total_terima_spk.qty, 0) AS qty_terima,'
      '  tbl_spk.toleransi,'
      '  tbl_spk.tgl_p_mulai,'
      '  tbl_spk.tgl_p_selesai,'
      '  tbl_spk.lain_lain,'
      '  tbl_spk.ket_ppic,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_barang.s_berat,'
      '  tbl_barang.s_panjang,'
      '  tbl_barang.panjang,'
      '  tbl_barang.lebar,'
      '  tbl_barang.s_lebar,'
      '  tbl_barang.diameter_dalam,'
      '  tbl_barang.diameter_luar,'
      '  tbl_barang.s_diameter_dalam,'
      '  tbl_barang.s_diameter_luar,'
      '  tbl_spk.f_wip,'
      '  tbl_spk.f_wip_awal,'
      '  tbl_spk.f_wip_akhir,'
      '  tbl_spk.f_cetak,'
      '  tbl_spk.no_spk_induk'
      'FROM'
      '  tbl_spk'
      '  LEFT OUTER JOIN tbl_mo ON (tbl_spk.no_mo = tbl_mo.no_mo)'
      
        '  LEFT OUTER JOIN tbl_so_head ON (tbl_mo.no_so = tbl_so_head.no_' +
        'bukti)'
      
        '  LEFT OUTER JOIN tbl_customer ON (tbl_so_head.kode_customer = t' +
        'bl_customer.kode)'
      
        '  LEFT OUTER JOIN tbl_mesin ON (tbl_spk.kode_mesin = tbl_mesin.k' +
        'ode)'
      
        '  LEFT OUTER JOIN tbl_barang ON (tbl_spk.kode_brg = tbl_barang.k' +
        'ode)'
      
        '  LEFT OUTER JOIN v_hsl_prd_total_spk ON (tbl_spk.no_spk = v_hsl' +
        '_prd_total_spk.no_spk)'
      
        '  LEFT OUTER JOIN v_total_kirim_spk ON (tbl_spk.no_spk = v_total' +
        '_kirim_spk.no_spk)'
      
        '  LEFT OUTER JOIN v_total_terima_spk ON (tbl_spk.no_spk = v_tota' +
        'l_terima_spk.no_spk) AND (tbl_mo.kode_brg = v_total_terima_spk.k' +
        'ode_brg)'
      'WHERE tbl_spk.tanggal BETWEEN :tgl1 AND :tgl2'
      
        '-- WHERE tbl_spk.tanggal BETWEEN :tgl1 AND :tgl2 AND tbl_spk.f_a' +
        'pp_prd = 1 AND (tbl_spk.no_spk_induk IS NULL) '
      '-- and v_total_terima_spk.kode_gdg <> '#39'G03'#39)
    TabOrder = 3
    Visible = False
    Height = 176
    Width = 991
  end
  object cxMemo2: TcxMemo
    Left = 85
    Top = 150
    Lines.Strings = (
      'SELECT '
      '  tbl_spk.no_spk,'
      '  tbl_spk.jenis_spk,'
      '  tbl_spk.tanggal,'
      '  tbl_spk.jam,'
      '  tbl_spk.qty,'
      '  tbl_spk.kode_mesin,'
      '  tbl_spk.f_completed,'
      '  tbl_spk.keterangan,'
      '  tbl_spk.f_app_prd,'
      '  tbl_mesin.nama AS nama_mesin,'
      '  tbl_spk.kode_brg,'
      '  tbl_barang.deskripsi,'
      '  tbl_barang.satuan,'
      '  tbl_barang.kategori,'
      '  tbl_barang.subkategori,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_prod), 0) AS `ifnull(sum(qt' +
        'y_prod),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_spk.' +
        'no_spk) AS qty_prod,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_baik), 0) AS `ifnull(sum(qt' +
        'y_baik),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_spk.' +
        'no_spk) AS qty_baik,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_afkir), 0) AS `ifnull(sum(q' +
        'ty_afkir),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_sp' +
        'k.no_spk) AS qty_afkir,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_retur), 0) AS `ifnull(sum(q' +
        'ty_retur),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_sp' +
        'k.no_spk) AS qty_retur,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_reject), 0) AS `ifnull(sum(' +
        'qty_reject),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_' +
        'spk.no_spk) AS qty_reject,'
      '  ifnull(v_total_terima_spk.qty, 0) AS qty_terima,'
      '  tbl_spk.toleransi,'
      '  tbl_spk.tgl_p_mulai,'
      '  tbl_spk.tgl_p_selesai,'
      '  tbl_spk.lain_lain,'
      '  tbl_spk.ket_ppic,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_barang.s_berat,'
      '  tbl_barang.s_panjang,'
      '  tbl_barang.panjang,'
      '  tbl_barang.lebar,'
      '  tbl_barang.s_lebar,'
      '  tbl_barang.diameter_dalam,'
      '  tbl_barang.diameter_luar,'
      '  tbl_barang.s_diameter_dalam,'
      '  tbl_barang.s_diameter_luar,'
      '  tbl_spk.no_spk_induk'
      'FROM'
      '  tbl_spk'
      
        '  LEFT OUTER JOIN tbl_mesin ON (tbl_spk.kode_mesin = tbl_mesin.k' +
        'ode)'
      
        '  LEFT OUTER JOIN tbl_barang ON (tbl_spk.kode_brg = tbl_barang.k' +
        'ode)'
      
        '  LEFT OUTER JOIN v_hsl_prd_total_spk ON (tbl_spk.no_spk = v_hsl' +
        '_prd_total_spk.no_spk)'
      
        '  LEFT OUTER JOIN v_total_kirim_spk ON (tbl_spk.no_spk = v_total' +
        '_kirim_spk.no_spk)'
      
        '  LEFT OUTER JOIN v_total_terima_spk ON (tbl_spk.no_spk = v_tota' +
        'l_terima_spk.no_spk) AND (tbl_spk.kode_brg = v_total_terima_spk.' +
        'kode_brg)'
      
        'WHERE tbl_spk.tanggal BETWEEN :tgl1 AND :tgl2 AND (tbl_spk.no_sp' +
        'k_induk IS NOT NULL);')
    TabOrder = 4
    Visible = False
    Height = 176
    Width = 991
  end
  object cxGrid6: TcxGrid
    Left = 835
    Top = 175
    Width = 583
    Height = 184
    TabOrder = 5
    Visible = False
    object cxGridDBTableView4: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnFocusedRecordChanged = tblViewFocusedRecordChanged
      DataController.DataSource = dsSPK
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 85
      end
      object cxGridDBColumn10: TcxGridDBColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Width = 81
      end
      object cxGridDBColumn13: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 82
      end
      object cxGridDBColumn14: TcxGridDBColumn
        Caption = 'Jenis SPK'
        DataBinding.FieldName = 'jenis_spk'
        Width = 140
      end
      object cxGridDBColumn15: TcxGridDBColumn
        Caption = 'Nama Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 113
      end
      object cxGridDBColumn16: TcxGridDBColumn
        Caption = 'Tgl. SPK'
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBColumn17: TcxGridDBColumn
        Caption = 'Jam'
        DataBinding.FieldName = 'jam'
        Width = 70
      end
      object cxGridDBColumn18: TcxGridDBColumn
        Caption = 'Qty. SPK'
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBColumn19: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
      end
      object cxGridDBColumn20: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 230
      end
      object cxGridDBColumn21: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBColumn22: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
      end
      object cxGridDBColumn23: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_so'
      end
      object cxGridDBColumn24: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object cxGridDBColumn25: TcxGridDBColumn
        DataBinding.FieldName = 'f_app_prd'
      end
    end
    object cxGridDBBandedTableView1: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = tblView2CellClick
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
      object cxGridDBBandedColumn1: TcxGridDBBandedColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Width = 109
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 105
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn3: TcxGridDBBandedColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 121
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = 'Tanggal'
        DataBinding.FieldName = 'tanggal'
        Width = 115
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        Caption = 'Complete'
        DataBinding.FieldName = 'f_completed'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
        Width = 95
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 358
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        Caption = 'Jenis SPK'
        DataBinding.FieldName = 'jenis_spk'
        Width = 201
        Position.BandIndex = 1
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        DataBinding.FieldName = 'tanggal'
        Visible = False
        Width = 152
        Position.BandIndex = 1
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        DataBinding.FieldName = 'jam'
        Visible = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn11: TcxGridDBBandedColumn
        Caption = 'Qty SPK'
        DataBinding.FieldName = 'qty'
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn12: TcxGridDBBandedColumn
        Caption = 'Qty. Prod (PRD)'
        DataBinding.FieldName = 'qty_prod'
        Width = 85
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn13: TcxGridDBBandedColumn
        Caption = 'Qty. Kirim'
        DataBinding.FieldName = 'qty_kirim'
        Visible = False
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn14: TcxGridDBBandedColumn
        Caption = 'Qty. Terima (WHL)'
        DataBinding.FieldName = 'qty_terima'
        Width = 112
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn15: TcxGridDBBandedColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
        Width = 117
        Position.BandIndex = 1
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn16: TcxGridDBBandedColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 285
        Position.BandIndex = 1
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn17: TcxGridDBBandedColumn
        Caption = 'Qty. Baik'
        DataBinding.FieldName = 'qty_baik'
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn18: TcxGridDBBandedColumn
        Caption = 'Qty. Afkir'
        DataBinding.FieldName = 'qty_afkir'
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn19: TcxGridDBBandedColumn
        Caption = 'Qty. Retur'
        DataBinding.FieldName = 'qty_retur'
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn20: TcxGridDBBandedColumn
        Caption = 'Keterangan'
        DataBinding.FieldName = 'keterangan'
        Width = 201
        Position.BandIndex = 1
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn21: TcxGridDBBandedColumn
        DataBinding.FieldName = 'f_app_prd'
        Visible = False
        Width = 147
        Position.BandIndex = 1
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn22: TcxGridDBBandedColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 149
        Position.BandIndex = 1
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn23: TcxGridDBBandedColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 68
        Position.BandIndex = 1
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn24: TcxGridDBBandedColumn
        Caption = 'Kategori'
        DataBinding.FieldName = 'kategori'
        Width = 185
        Position.BandIndex = 1
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn25: TcxGridDBBandedColumn
        DataBinding.FieldName = 'subkategori'
        Visible = False
        Width = 241
        Position.BandIndex = 1
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn26: TcxGridDBBandedColumn
        Caption = 'Reject'
        DataBinding.FieldName = 'qty_reject'
        Visible = False
        Width = 74
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object cxGridDBTableView5: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPKDet
      DataController.DetailKeyFieldNames = 'no_spk_induk'
      DataController.KeyFieldNames = 'no_spk_induk'
      DataController.MasterKeyFieldNames = 'no_spk'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGridDBColumn26: TcxGridDBColumn
        DataBinding.FieldName = 'no_spk'
      end
      object cxGridDBColumn27: TcxGridDBColumn
        DataBinding.FieldName = 'jenis_spk'
      end
      object cxGridDBColumn28: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
      end
      object cxGridDBColumn29: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
      end
      object cxGridDBColumn30: TcxGridDBColumn
        DataBinding.FieldName = 'qty'
      end
      object cxGridDBColumn31: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
      end
      object cxGridDBColumn32: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
      end
      object cxGridDBColumn33: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object cxGridDBColumn34: TcxGridDBColumn
        DataBinding.FieldName = 'f_app_prd'
      end
      object cxGridDBColumn35: TcxGridDBColumn
        DataBinding.FieldName = 'nama_mesin'
      end
      object cxGridDBColumn36: TcxGridDBColumn
        DataBinding.FieldName = 'kode_brg'
      end
      object cxGridDBColumn37: TcxGridDBColumn
        DataBinding.FieldName = 'deskripsi'
      end
      object cxGridDBColumn38: TcxGridDBColumn
        DataBinding.FieldName = 'satuan'
      end
      object cxGridDBColumn39: TcxGridDBColumn
        DataBinding.FieldName = 'kategori'
      end
      object cxGridDBColumn40: TcxGridDBColumn
        DataBinding.FieldName = 'subkategori'
      end
      object cxGridDBColumn41: TcxGridDBColumn
        DataBinding.FieldName = 'qty_prod'
      end
      object cxGridDBColumn42: TcxGridDBColumn
        DataBinding.FieldName = 'qty_baik'
      end
      object cxGridDBColumn43: TcxGridDBColumn
        DataBinding.FieldName = 'qty_afkir'
      end
      object cxGridDBColumn44: TcxGridDBColumn
        DataBinding.FieldName = 'qty_retur'
      end
      object cxGridDBColumn45: TcxGridDBColumn
        DataBinding.FieldName = 'qty_reject'
      end
      object cxGridDBColumn46: TcxGridDBColumn
        DataBinding.FieldName = 'qty_terima'
      end
      object cxGridDBColumn47: TcxGridDBColumn
        DataBinding.FieldName = 'toleransi'
      end
      object cxGridDBColumn48: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_p_mulai'
      end
      object cxGridDBColumn49: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_p_selesai'
      end
      object cxGridDBColumn50: TcxGridDBColumn
        DataBinding.FieldName = 'lain_lain'
      end
      object cxGridDBColumn51: TcxGridDBColumn
        DataBinding.FieldName = 'ket_ppic'
      end
      object cxGridDBColumn52: TcxGridDBColumn
        DataBinding.FieldName = 'berat_per_unit'
      end
      object cxGridDBColumn53: TcxGridDBColumn
        DataBinding.FieldName = 's_berat'
      end
      object cxGridDBColumn54: TcxGridDBColumn
        DataBinding.FieldName = 's_panjang'
      end
      object cxGridDBColumn55: TcxGridDBColumn
        DataBinding.FieldName = 'panjang'
      end
      object cxGridDBColumn56: TcxGridDBColumn
        DataBinding.FieldName = 'lebar'
      end
      object cxGridDBColumn57: TcxGridDBColumn
        DataBinding.FieldName = 's_lebar'
      end
      object cxGridDBColumn58: TcxGridDBColumn
        DataBinding.FieldName = 'diameter_dalam'
      end
      object cxGridDBColumn59: TcxGridDBColumn
        DataBinding.FieldName = 'diameter_luar'
      end
      object cxGridDBColumn60: TcxGridDBColumn
        DataBinding.FieldName = 's_diameter_dalam'
      end
      object cxGridDBColumn61: TcxGridDBColumn
        DataBinding.FieldName = 's_diameter_luar'
      end
      object cxGridDBColumn62: TcxGridDBColumn
        DataBinding.FieldName = 'no_spk_induk'
      end
    end
    object cxGridLevel4: TcxGridLevel
      GridView = cxGridDBTableView4
      Visible = False
    end
    object cxGridLevel5: TcxGridLevel
      GridView = cxGridDBBandedTableView1
    end
  end
  object pnlPilCetSPK: TPanel
    Left = 380
    Top = 129
    Width = 366
    Height = 306
    TabOrder = 2
    Visible = False
    OnExit = pnlPilCetSPKExit
    object btnCetakSPK: TButton
      Left = 10
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 2
      OnClick = btnCetakSPKClick
    end
    object btnBatal: TButton
      Left = 90
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 3
      OnClick = btnBatalClick
    end
    object GroupBox1: TGroupBox
      Left = 10
      Top = 10
      Width = 346
      Height = 188
      Caption = 'Jenis SPK'
      TabOrder = 0
      object cxrBrgJadi: TcxRadioButton
        Left = 10
        Top = 25
        Width = 113
        Height = 17
        Caption = 'Barang Jadi'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object cxrTmbh: TcxRadioButton
        Left = 10
        Top = 45
        Width = 113
        Height = 17
        Caption = 'Tambahan'
        TabOrder = 3
      end
      object cxrMixingComp: TcxRadioButton
        Left = 10
        Top = 65
        Width = 113
        Height = 17
        Caption = 'Mixing / Compound'
        TabOrder = 4
      end
      object chkUkuranA5: TcxCheckBox
        Left = 94
        Top = 23
        Caption = 'SPK Ukuran A5'
        State = cbsChecked
        TabOrder = 0
        Width = 121
      end
      object cxrPeletan: TcxRadioButton
        Left = 10
        Top = 85
        Width = 113
        Height = 17
        Caption = 'Peletan'
        TabOrder = 5
      end
      object chkBOM: TcxCheckBox
        Left = 304
        Top = 41
        Caption = 'Formulir BOM'
        TabOrder = 2
        Visible = False
        Width = 121
      end
      object cxrCampurBahan: TcxRadioButton
        Left = 10
        Top = 144
        Width = 113
        Height = 17
        Caption = 'Campur Bahan'
        TabOrder = 8
      end
      object cxrGiling: TcxRadioButton
        Left = 10
        Top = 103
        Width = 113
        Height = 21
        Caption = 'Giling'
        TabOrder = 6
      end
      object cxrRope: TcxRadioButton
        Left = 10
        Top = 124
        Width = 113
        Height = 17
        Caption = 'Rope / Tampar'
        TabOrder = 7
      end
      object cxrTrial: TcxRadioButton
        Left = 10
        Top = 163
        Width = 113
        Height = 17
        Caption = 'Trial - QAC'
        TabOrder = 9
      end
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 201
      Width = 346
      Height = 64
      Caption = ' BOM '
      TabOrder = 1
      object cxRbtBom: TcxRadioButton
        Left = 11
        Top = 18
        Width = 113
        Height = 17
        Caption = 'BOM Barang Jadi'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object cxRbtBomRef: TcxRadioButton
        Left = 11
        Top = 36
        Width = 295
        Height = 17
        Caption = 'Bom Referensi'
        TabOrder = 1
      end
    end
  end
  object pnlPilCetSPK2: TPanel
    Left = 406
    Top = 129
    Width = 366
    Height = 306
    TabOrder = 7
    Visible = False
    OnExit = pnlPilCetSPKExit
    object Button3: TButton
      Left = 10
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 90
      Top = 271
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 3
      OnClick = Button4Click
    end
    object GroupBox3: TGroupBox
      Left = 10
      Top = 10
      Width = 346
      Height = 188
      Caption = 'Jenis SPK'
      TabOrder = 0
      object cxRbtBJ: TcxRadioButton
        Left = 10
        Top = 25
        Width = 113
        Height = 17
        Caption = 'Barang Jadi'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
    end
    object GroupBox4: TGroupBox
      Left = 10
      Top = 201
      Width = 346
      Height = 64
      Caption = ' BOM '
      TabOrder = 1
      object cxRadioButton9: TcxRadioButton
        Left = 11
        Top = 18
        Width = 113
        Height = 17
        Caption = 'BOM Barang Jadi'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object cxRadioButton10: TcxRadioButton
        Left = 11
        Top = 36
        Width = 295
        Height = 17
        Caption = 'Bom Referensi'
        TabOrder = 1
      end
    end
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_spk'
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
      'left join tbl_barang c on b.kode_brg = c.kode'
      'WHERE a.no_bukti = b.no_bukti AND '
      'no_spk = :no_spk AND'
      'c.tipe not like '#39'BBC%'#39)
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
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 890
    Top = 185
  end
  object dsSPKDet: TDataSource
    DataSet = zqrSPKDet
    Left = 250
    Top = 168
  end
  object zqrSPKDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT '
      '  tbl_spk.no_spk,'
      '  tbl_spk.jenis_spk,'
      '  tbl_spk.tanggal,'
      '  tbl_spk.jam,'
      '  tbl_spk.qty,'
      '  tbl_spk.kode_mesin,'
      '  tbl_spk.f_completed,'
      '  tbl_spk.keterangan,'
      '  tbl_spk.f_app_prd,'
      '  tbl_mesin.nama AS nama_mesin,'
      '  tbl_spk.kode_brg,'
      '  tbl_barang.deskripsi,'
      '  tbl_barang.satuan,'
      '  tbl_barang.kategori,'
      '  tbl_barang.subkategori,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_prod), 0) AS `ifnull(sum(qt' +
        'y_prod),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_spk.' +
        'no_spk) AS qty_prod,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_baik), 0) AS `ifnull(sum(qt' +
        'y_baik),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_spk.' +
        'no_spk) AS qty_baik,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_afkir), 0) AS `ifnull(sum(q' +
        'ty_afkir),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_sp' +
        'k.no_spk) AS qty_afkir,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_retur), 0) AS `ifnull(sum(q' +
        'ty_retur),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_sp' +
        'k.no_spk) AS qty_retur,'
      
        '  (SELECT ifnull(sum(tbl_hsl_prd.qty_reject), 0) AS `ifnull(sum(' +
        'qty_reject),0)` FROM tbl_hsl_prd WHERE tbl_hsl_prd.no_spk = tbl_' +
        'spk.no_spk) AS qty_reject,'
      '  ifnull(v_total_terima_spk.qty, 0) AS qty_terima,'
      '  tbl_spk.toleransi,'
      '  tbl_spk.tgl_p_mulai,'
      '  tbl_spk.tgl_p_selesai,'
      '  tbl_spk.lain_lain,'
      '  tbl_spk.ket_ppic,'
      '  tbl_barang.berat_per_unit,'
      '  tbl_barang.s_berat,'
      '  tbl_barang.s_panjang,'
      '  tbl_barang.panjang,'
      '  tbl_barang.lebar,'
      '  tbl_barang.s_lebar,'
      '  tbl_barang.diameter_dalam,'
      '  tbl_barang.diameter_luar,'
      '  tbl_barang.s_diameter_dalam,'
      '  tbl_barang.s_diameter_luar,'
      '  tbl_spk.no_spk_induk'
      'FROM'
      '  tbl_spk'
      
        '  LEFT OUTER JOIN tbl_mesin ON (tbl_spk.kode_mesin = tbl_mesin.k' +
        'ode)'
      
        '  LEFT OUTER JOIN tbl_barang ON (tbl_spk.kode_brg = tbl_barang.k' +
        'ode)'
      
        '  LEFT OUTER JOIN v_hsl_prd_total_spk ON (tbl_spk.no_spk = v_hsl' +
        '_prd_total_spk.no_spk)'
      
        '  LEFT OUTER JOIN v_total_kirim_spk ON (tbl_spk.no_spk = v_total' +
        '_kirim_spk.no_spk)'
      
        '  LEFT OUTER JOIN v_total_terima_spk ON (tbl_spk.no_spk = v_tota' +
        'l_terima_spk.no_spk) AND (tbl_spk.kode_brg = v_total_terima_spk.' +
        'kode_brg)'
      
        'WHERE tbl_spk.tanggal BETWEEN :tgl1 AND :tgl2 AND (tbl_spk.no_sp' +
        'k_induk IS NOT NULL);')
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
    Left = 280
    Top = 168
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
  object dsSPKTua: TDataSource
    DataSet = zqrSPKTua
    Left = 165
    Top = 533
  end
  object zqrSPKTua: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_spk, a.tanggal, a.kode_brg, b.deskripsi, a.qty qty_s' +
        'pk,'
      
        '(select sum(qty_prod) from tbl_hsl_prd where no_spk = a.no_spk) ' +
        'qty_prod, '
      
        '(select sum(qty) from tbl_trsmasuk_det where no_spk = a.no_spk a' +
        'nd kode_brg = a.kode_brg) qty_serahterima'
      'FROM tbl_spk a '
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode'
      
        'WHERE a.f_completed = 0 AND DATEDIFF(curdate(), a.tanggal) >= 30' +
        ' ')
    Params = <>
    Left = 195
    Top = 533
  end
end
