object frmUtama: TfrmUtama
  Left = 375
  Top = 167
  Width = 1099
  Height = 568
  Caption = 'MutasiStok '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = mainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 75
    Top = 60
    Width = 58
    Height = 13
    Caption = 'Departemen'
    Visible = False
  end
  object imgBg: TImage
    Left = 145
    Top = 30
    Width = 381
    Height = 231
  end
  object Label2: TLabel
    Left = 635
    Top = 230
    Width = 32
    Height = 13
    Caption = 'Label2'
    Visible = False
  end
  object stsBar: TStatusBar
    Left = 0
    Top = 464
    Width = 1083
    Height = 26
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 90
      end
      item
        Alignment = taCenter
        Width = 90
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Width = 50
      end>
  end
  object Button1: TButton
    Left = 555
    Top = 130
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    Visible = False
    OnClick = Button1Click
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1083
    Height = 29
    ButtonWidth = 116
    Caption = 'ToolBar1'
    TabOrder = 0
    Visible = False
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Caption = 'ToolButton1'
      ImageIndex = 0
    end
  end
  object Button2: TButton
    Left = 175
    Top = 295
    Width = 96
    Height = 31
    Caption = 'Konversi Satuan'
    TabOrder = 13
    Visible = False
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 555
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 8
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 555
    Top = 190
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 9
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 555
    Top = 220
    Width = 75
    Height = 25
    Caption = 'Button5'
    TabOrder = 10
    Visible = False
    OnClick = Button5Click
  end
  object prgBar: TProgressBar
    Left = 555
    Top = 250
    Width = 150
    Height = 17
    Smooth = True
    TabOrder = 11
    Visible = False
  end
  object cxCmbDept: TcxComboBox
    Left = 3
    Top = 6
    Properties.Items.Strings = (
      'WHL'
      'PPIC'
      'CFT'
      'QAC'
      'RND')
    Properties.MaxLength = 0
    Properties.OnChange = cxCmbDeptPropertiesChange
    TabOrder = 1
    Visible = False
    Width = 121
  end
  object Button6: TButton
    Left = 645
    Top = 130
    Width = 75
    Height = 25
    Caption = 'Button6'
    TabOrder = 7
    Visible = False
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 150
    Top = 35
    Width = 75
    Height = 25
    Caption = 'Button7'
    TabOrder = 2
    Visible = False
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 150
    Top = 65
    Width = 75
    Height = 25
    Caption = 'Button8'
    TabOrder = 3
    Visible = False
    OnClick = Button8Click
  end
  object Memo: TMemo
    Left = 150
    Top = 330
    Width = 751
    Height = 111
    Lines.Strings = (
      'Memo')
    ScrollBars = ssVertical
    TabOrder = 14
    Visible = False
  end
  object Button9: TButton
    Left = 150
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Button9'
    TabOrder = 5
    Visible = False
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 660
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Button10'
    TabOrder = 4
    Visible = False
    OnClick = Button10Click
  end
  object Button11: TButton
    Left = 790
    Top = 250
    Width = 75
    Height = 25
    Caption = 'Button11'
    TabOrder = 12
    Visible = False
    OnClick = Button11Click
  end
  object pgMain: TcxPageControl
    Left = 0
    Top = 29
    Width = 1083
    Height = 435
    Align = alClient
    Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
    ParentBackground = False
    Style = 6
    TabOrder = 16
    Visible = False
    ClientRectBottom = 435
    ClientRectRight = 1083
    ClientRectTop = 0
  end
  object Button12: TButton
    Left = 30
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Button12'
    TabOrder = 17
    Visible = False
    OnClick = Button12Click
  end
  object mainMenu: TMainMenu
    Left = 235
    Top = 65
    object mnSistem: TMenuItem
      Tag = 232
      Caption = 'Sistem'
      object mnLogOff: TMenuItem
        Caption = 'Log Off'
        OnClick = mnLogOffClick
      end
      object mnKeluar: TMenuItem
        Caption = 'Keluar'
        OnClick = mnKeluarClick
      end
    end
    object mnCFT: TMenuItem
      Caption = 'MKT'
      object mnCFTTrsMutasi: TMenuItem
        Caption = 'Transaksi Mutasi Barang'
        OnClick = mnCFTTrsMutasiClick
      end
      object mnCFT_MutasiOngkos: TMenuItem
        Caption = 'Mutasi Ongkos'
        OnClick = mnCFT_MutasiOngkosClick
      end
      object mnCFT_MutasiOngkosKeluar: TMenuItem
        Caption = 'Mutasi Ongkos - Keluar'
        OnClick = mnCFT_MutasiOngkosKeluarClick
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object mnQuotetion: TMenuItem
        Caption = 'Quotation'
        OnClick = mnQuotetionClick
      end
      object mnKonfirmasiPO: TMenuItem
        Caption = 'Konfirmasi PO'
        OnClick = mnKonfirmasiPOClick
      end
      object mnCFT_SO: TMenuItem
        Caption = 'Sales Order'
        OnClick = mnCFT_SOClick
      end
      object mnCFT_SOT: TMenuItem
        Caption = 'Sales Order Terbuka'
        OnClick = mnCFT_SOTClick
      end
      object mnCFT_TutupSO: TMenuItem
        Caption = 'Penutupan SO Terbuka'
        OnClick = mnCFT_TutupSOClick
      end
      object N54: TMenuItem
        Caption = '-'
      end
      object mnCFT_spmb: TMenuItem
        Caption = 'SPMB (DO)'
        OnClick = mnCFT_spmbClick
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object mnCFT_SJ: TMenuItem
        Caption = 'Surat Jalan'
        OnClick = mnCFT_SJClick
      end
      object mnCFT_cetakSJ: TMenuItem
        Caption = 'Rekap Surat Jalan'
        OnClick = mnCFT_cetakSJClick
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object mnCFT_ReturPenj: TMenuItem
        Caption = 'Retur Penjualan'
        OnClick = mnCFT_ReturPenjClick
      end
      object mnCFT_AppRetPenj: TMenuItem
        Caption = 'Approval Retur Penjualan'
        OnClick = mnCFT_AppRetPenjClick
      end
      object mnCFT_ReturAdm: TMenuItem
        Caption = 'Retur Penjualan - Admin'
        OnClick = mnCFT_ReturAdmClick
      end
      object mnCFT_ReturNonAdm: TMenuItem
        Caption = 'Retur Penjualan - Non Admin'
        OnClick = mnCFT_ReturNonAdmClick
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object mnCFT_SJU: TMenuItem
        Caption = 'Surat Jalan Umum'
        OnClick = mnCFT_SJUClick
      end
      object mnCFT_AppSJU: TMenuItem
        Caption = 'Approval Surat Jalan Umum'
        OnClick = mnCFT_AppSJUClick
      end
      object N37: TMenuItem
        Caption = '-'
      end
      object mnCFT_SPBBRetur: TMenuItem
        Caption = 'SPBB Retur'
        OnClick = mnCFT_SPBBReturClick
      end
      object N42: TMenuItem
        Caption = '-'
      end
      object mnCFT_AppPenghapusanSPMB: TMenuItem
        Caption = 'Approval Penghapusan SPMB'
        OnClick = mnCFT_AppPenghapusanSPMBClick
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object mnCFT_ApprovalDisposisi: TMenuItem
        Caption = 'Approval Disposisi SPMB'
        OnClick = mnCFT_ApprovalDisposisiClick
      end
      object mnCFT_DaftarDisposisi: TMenuItem
        Caption = 'Daftar Disposisi SPMB'
        OnClick = mnCFT_DaftarDisposisiClick
      end
      object mnCFT_TransaksiCoba: TMenuItem
        Caption = 'Transaksi Coba'
      end
      object N56: TMenuItem
        Caption = '-'
      end
      object mnCFT_InquirySheet: TMenuItem
        Caption = 'Inquiry Sheet'
        OnClick = mnCFT_InquirySheetClick
      end
      object mnCFT_DaftarIS: TMenuItem
        Caption = 'Daftar Inquiry Sheet'
        OnClick = mnCFT_DaftarISClick
      end
      object N55: TMenuItem
        Caption = '-'
      end
      object mnCFT_SalesMobile: TMenuItem
        Caption = 'Sales Mobile'
        OnClick = mnCFT_SalesMobileClick
      end
      object N61: TMenuItem
        Caption = '-'
      end
      object mnMKT_ListPiutangCustomer: TMenuItem
        Caption = 'List Piutang'
        OnClick = mnMKT_ListPiutangCustomerClick
      end
    end
    object mnPPIC: TMenuItem
      Caption = 'PPIC'
      object mnPPICTrsKeluar: TMenuItem
        Caption = 'Transaksi Barang Keluar'
        OnClick = mnPPICTrsKeluarClick
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object mnPPIC_SOMTS: TMenuItem
        Caption = 'SO Made To Stok'
        OnClick = mnPPIC_SOMTSClick
      end
      object mnPPIC_SOMTSGiling: TMenuItem
        Caption = 'SO Made To Stok - Giling'
        OnClick = mnPPIC_SOMTSGilingClick
      end
      object mnPPIC_TutupSOMTS: TMenuItem
        Caption = 'Penutupan SO Made To Stok'
        OnClick = mnPPIC_TutupSOMTSClick
      end
      object N20: TMenuItem
        Caption = '-'
      end
      object mnPPICTrsMutasi: TMenuItem
        Caption = 'Transaksi Mutasi Barang'
        OnClick = mnPPICTrsMutasiClick
      end
      object mnPPICPembatalanTrsMutasi: TMenuItem
        Caption = 'Pembatalan Transaksi Mutasi'
        OnClick = mnPPICPembatalanTrsMutasiClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnPPICTrsSpkPotong: TMenuItem
        Caption = 'Transaksi SPK Potong'
        OnClick = mnPPICTrsSpkPotongClick
      end
      object mnPPIC_AppSpkPotMgr: TMenuItem
        Caption = 'Approval SPK Potong - MGR PPIC'
        OnClick = mnPPIC_AppSpkPotMgrClick
      end
      object mnPPIC_AppSpkPot: TMenuItem
        Caption = 'Approval SPK Potong'
        OnClick = mnPPIC_AppSpkPotClick
      end
      object mnPPIC_CetakSPKPot: TMenuItem
        Caption = 'Cetak SPK Potong'
        OnClick = mnPPIC_CetakSPKPotClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mnPPIC_TrsSPKAssembly: TMenuItem
        Caption = 'Transaksi SPK Tambahan'
        OnClick = mnPPIC_TrsSPKAssemblyClick
      end
      object mnPPIC_CetakSPKAssem: TMenuItem
        Caption = 'Cetak SPK Tambahan'
        OnClick = mnPPIC_CetakSPKAssemClick
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object mnPPIC_SOTerbuka: TMenuItem
        Caption = 'Sales Order Terbuka'
        OnClick = mnPPIC_SOTerbukaClick
      end
      object mnPPIC_OtoMutasi: TMenuItem
        Caption = 'Otorisasi Mutasi CFT'
        OnClick = mnPPIC_OtoMutasiClick
      end
      object N15: TMenuItem
        Caption = '-'
      end
      object mnPPIC_TrsSPKGiling: TMenuItem
        Caption = 'Transaksi SPK Giling'
        OnClick = mnPPIC_TrsSPKGilingClick
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object mnPPIC_MO: TMenuItem
        Caption = 'Master Order'
        OnClick = mnPPIC_MOClick
      end
      object mnPPIC_MstSchedule: TMenuItem
        Caption = 'Master Schedule'
        OnClick = mnPPIC_MstScheduleClick
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object mnPPIC_TutupSPK: TMenuItem
        Caption = 'Penutupan SPK'
      end
      object mnPPIC_ScanSPK: TMenuItem
        Caption = 'Upload Scan SPK dan Serah Terima'
      end
      object N34: TMenuItem
        Caption = '-'
      end
      object mnPPIC_EditBomSPK: TMenuItem
        Caption = 'Edit BOM SPK'
        OnClick = mnPPIC_EditBomSPKClick
      end
      object mnPPIC_DownloadMstBrg: TMenuItem
        Caption = 'Download Master Barang'
        OnClick = mnPPIC_DownloadMstBrgClick
      end
      object mnPPIC_HistoryPengBB: TMenuItem
        Caption = 'History Pengeluaran BB Berdasarkan SPK'
        OnClick = mnPPIC_HistoryPengBBClick
      end
      object N49: TMenuItem
        Caption = '-'
      end
      object mnPPIC_FOBJ: TMenuItem
        Caption = 'FOBJ - Formulir Order Barang dan Jasa'
        OnClick = mnPPIC_FOBJClick
      end
      object mnPPIC_AppDiluarBOM: TMenuItem
        Caption = 'Approval Penambahan Bahan DIluar BOM'
        OnClick = mnPPIC_AppDiluarBOMClick
      end
      object N71: TMenuItem
        Caption = '-'
      end
      object mnPPIC_PemakaianBahan: TMenuItem
        Caption = 'Pemakaian Bahan'
        OnClick = mnPPIC_PemakaianBahanClick
      end
      object N77: TMenuItem
        Caption = '-'
      end
    end
    object mnWHL: TMenuItem
      Caption = 'WHL'
      object mnWHLTrsMasuk: TMenuItem
        Caption = 'Transaksi Barang Masuk'
        OnClick = mnWHLTrsMasukClick
      end
      object mnWHLTrsKeluar: TMenuItem
        Caption = 'Transaksi Barang Keluar'
        OnClick = mnWHLTrsKeluarClick
      end
      object mnWHL_ApprovalTrsKeluar: TMenuItem
        Caption = 'Approval Transaksi Keluar'
        OnClick = mnWHL_ApprovalTrsKeluarClick
      end
      object mnWHL_SettingLokasiGrid: TMenuItem
        Caption = 'Setting Lokasi dan Grid Barang'
        OnClick = mnWHL_SettingLokasiGridClick
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object mnWHLTrsMutasi: TMenuItem
        Caption = 'Transaksi Mutasi Barang'
        OnClick = mnWHLTrsMutasiClick
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object mnWHL_PnrimaSPKAssem: TMenuItem
        Caption = 'Penerimaan SPK Assembly'
        OnClick = mnWHL_PnrimaSPKAssemClick
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object mnWHLTrsKoreksi: TMenuItem
        Caption = 'Transaksi Koreksi Stok'
        OnClick = mnWHLTrsKoreksiClick
      end
      object mnWHLApprovalSO: TMenuItem
        Caption = 'Approval Koreksi Stok'
        OnClick = mnWHLApprovalSOClick
      end
      object N30: TMenuItem
        Caption = '-'
      end
      object mnWHL_MtsPlusMinus: TMenuItem
        Caption = 'Mutasi Plus Minus Peletan'
        OnClick = mnWHL_MtsPlusMinusClick
      end
      object N32: TMenuItem
        Caption = '-'
      end
      object ransaksiKirimBPPB1: TMenuItem
        Caption = 'Transaksi Kirim BPPB'
      end
      object N33: TMenuItem
        Caption = '-'
      end
      object mnWHL_AppPengQAC: TMenuItem
        Caption = 'Approval Transaksi Pengeluaran BB QAC'
        OnClick = mnWHL_AppPengQACClick
      end
      object N35: TMenuItem
        Caption = '-'
      end
      object mnWHL_CetakKirimConsum: TMenuItem
        Caption = 'Cetak Pengiriman Barang Consumable'
        OnClick = mnWHL_CetakKirimConsumClick
      end
      object mnWHL_HPST: TMenuItem
        Caption = 'History Hasil Produksi VS Serah Terima'
      end
      object N38: TMenuItem
        Caption = '-'
      end
      object mnWHL_ApprovalLKM: TMenuItem
        Caption = 'Approval LKM'
        OnClick = mnWHL_ApprovalLKMClick
      end
      object N39: TMenuItem
        Caption = '-'
      end
      object mnWHL_InsentifSopir: TMenuItem
        Caption = 'Input Insentif Sopir'
        OnClick = mnWHL_InsentifSopirClick
      end
      object mnWHL_CetakDisposisiMB: TMenuItem
        Caption = 'Cetak Disposisi Muat Barang'
        OnClick = mnWHL_CetakDisposisiMBClick
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object mnWHL_BarangSlowMoving: TMenuItem
        Caption = 'Barang Slow Moving'
        OnClick = mnWHL_BarangSlowMovingClick
      end
      object N53: TMenuItem
        Caption = '-'
      end
      object mnWHL_ApprovalMutasiGKAR: TMenuItem
        Caption = 'Approval Mutasi G-KAR'
        OnClick = mnWHL_ApprovalMutasiGKARClick
      end
      object N58: TMenuItem
        Caption = '-'
      end
      object mnWHL_ST_PB: TMenuItem
        Caption = 'Serah Terima + Pengiriman BOM'
        OnClick = mnWHL_ST_PBClick
      end
    end
    object mnRND: TMenuItem
      Caption = 'RND'
      object mnRND_ApprovalIS: TMenuItem
        Caption = 'Approval Inquiry Sheet'
        OnClick = mnRND_ApprovalISClick
      end
      object mnRND_ApprovalIS_PM: TMenuItem
        Caption = 'Approval Inquiry Sheet - BD'
        OnClick = mnRND_ApprovalIS_PMClick
      end
      object N60: TMenuItem
        Caption = '-'
      end
      object mnRND_CostCalculation: TMenuItem
        Caption = 'Cost Calculation'
        OnClick = mnRND_CostCalculationClick
      end
      object N65: TMenuItem
        Caption = '-'
      end
      object mnRND_mstFormula: TMenuItem
        Caption = 'Master Formula'
        OnClick = mnRND_mstFormulaClick
      end
      object N68: TMenuItem
        Caption = '-'
      end
      object mnRND_LembarPermintaan: TMenuItem
        Caption = 'Lembar Permintaan'
        OnClick = mnRND_LembarPermintaanClick
      end
      object mnRND_ApprovalJurnal: TMenuItem
        Caption = 'Approval Permintaan'
        OnClick = mnRND_ApprovalJurnalClick
      end
      object mnRND_DaftarJurnal: TMenuItem
        Caption = 'Daftar Jurnal Kerja'
        OnClick = mnRND_DaftarJurnalClick
      end
      object N70: TMenuItem
        Caption = '-'
      end
      object mnRND_DaftarCP: TMenuItem
        Caption = 'Daftar Control Plan'
        OnClick = mnRND_DaftarCPClick
      end
      object N72: TMenuItem
        Caption = '-'
      end
      object mnRND_InputProject: TMenuItem
        Caption = 'Input Project'
        OnClick = mnRND_InputProjectClick
      end
      object mnRND_Project: TMenuItem
        Caption = 'Project RND'
        OnClick = mnRND_ProjectClick
      end
    end
    object mnQAC: TMenuItem
      Caption = 'QAC'
      object mnQACTrsMasuk: TMenuItem
        Caption = 'Transaksi Barang Masuk'
        OnClick = mnQACTrsMasukClick
      end
      object mnQACTrsKeluar: TMenuItem
        Caption = 'Transaksi Barang Keluar'
        OnClick = mnQACTrsKeluarClick
      end
      object mnQACTrsMutasi: TMenuItem
        Caption = 'Transaksi Mutasi Barang'
        OnClick = mnQACTrsMutasiClick
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object mnQAC_mstFormula: TMenuItem
        Caption = 'Master Formula'
        OnClick = mnQAC_mstFormulaClick
      end
      object mnQAC_BrowseFormula: TMenuItem
        Caption = 'Browse Formula'
        OnClick = mnQAC_BrowseFormulaClick
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object mnQAC_LKM: TMenuItem
        Caption = 'Laporan Ketidaksesuaian Mutu'
        OnClick = mnQAC_LKMClick
      end
      object mnQAC_TindakLanjutDept: TMenuItem
        Caption = 'Tindak Lanjut LKM - Departemen Terkait'
        OnClick = mnQAC_TindakLanjutDeptClick
      end
      object mnQAC_AppLKM1: TMenuItem
        Caption = 'Approval LKM - Manager QAC'
        OnClick = mnQAC_AppLKM1Click
      end
      object mnQAC_AppLKM2: TMenuItem
        Caption = 'Approval LKM - Direktur / Manajemen'
        OnClick = mnQAC_AppLKM2Click
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object mnQAC_AppSpkGil: TMenuItem
        Caption = 'Approval SPK Giling'
        OnClick = mnQAC_AppSpkGilClick
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object mnQAC_LogBookDesign: TMenuItem
        Caption = 'Log Book Daftar Order Design '
        OnClick = mnQAC_LogBookDesignClick
      end
      object mnQAC_HasilPercobaan: TMenuItem
        Caption = 'Hasil Percobaan / Trial'
        OnClick = mnQAC_HasilPercobaanClick
      end
      object mnQAC_ApprovalTrial: TMenuItem
        Caption = 'Approval Trial'
        OnClick = mnQAC_ApprovalTrialClick
      end
      object PermintaanBahanBakuProduksi2: TMenuItem
        Caption = 'Permintaan Bahan Baku Produksi'
      end
      object Sample1: TMenuItem
        Caption = 'Sample'
      end
      object mnQAC_Trial: TMenuItem
        Caption = 'Trial'
        OnClick = mnQAC_TrialClick
      end
      object mnQAC_PengujianProduk: TMenuItem
        Caption = 'Pengujian Produk'
      end
      object N51: TMenuItem
        Caption = '-'
      end
      object mnQAC_ApprovalTrialAwal: TMenuItem
        Caption = 'Approval Trial'
        OnClick = mnQAC_ApprovalTrialAwalClick
      end
      object N52: TMenuItem
        Caption = '-'
      end
      object mnQAC_FOBJ: TMenuItem
        Caption = 'FOBJ - Formulir Order Barang dan Jasa'
        OnClick = mnQAC_FOBJClick
      end
      object mnQAC_ApprovalIS: TMenuItem
        Caption = 'Approval Inquiry Sheet'
        OnClick = mnQAC_ApprovalISClick
      end
    end
    object mnPRD: TMenuItem
      Caption = 'PRD'
      object mnPRD_mstMesin: TMenuItem
        Caption = 'Master Mesin'
        OnClick = mnPRD_mstMesinClick
      end
      object mnPRD_MasterSchedule: TMenuItem
        Caption = 'Master Schedule'
        OnClick = mnPRD_MasterScheduleClick
      end
      object mnPRD_HslPrdDet: TMenuItem
        Caption = 'Hasil Produksi Detail'
        OnClick = mnPRD_HslPrdDetClick
      end
      object SerahTerimaProduksi1: TMenuItem
        Caption = 'Serah Terima Produksi'
      end
      object mnPRD_BPPB: TMenuItem
        Caption = 'Permintaan Bahan Baku Produksi - BPPB'
        OnClick = mnPRD_BPPBClick
      end
      object mnPRD_AppBPPB: TMenuItem
        Caption = 'Approval BPPB'
      end
      object mnPRD_SettingBorongan: TMenuItem
        Caption = 'Setting Target Borongan'
        OnClick = mnPRD_SettingBoronganClick
      end
      object mnPRD_StokBrgConsum: TMenuItem
        Caption = 'Stok Barang Consumable'
        OnClick = mnPRD_StokBrgConsumClick
      end
      object mnPRD_MonitorSPK: TMenuItem
        Caption = 'Monitoring SPK'
        OnClick = mnPRD_MonitorSPKClick
      end
      object mnPRD_MonitorSPKBahan: TMenuItem
        Caption = 'Monitoring SPK dan Bahan'
        OnClick = mnPRD_MonitorSPKBahanClick
      end
      object mnPRD_MonitorInputHP: TMenuItem
        Caption = 'Monitoring Input Hasil Produksi'
        OnClick = mnPRD_MonitorInputHPClick
      end
      object mnPRD_SerahTerimaSPK: TMenuItem
        Caption = 'Serah Terima SPK'
        OnClick = mnPRD_SerahTerimaSPKClick
      end
      object mnPRD_MasterOperator: TMenuItem
        Caption = 'Master Operator'
        OnClick = mnPRD_MasterOperatorClick
      end
      object mnPRD_MasterTarget: TMenuItem
        Caption = 'Master Target'
        OnClick = mnPRD_MasterTargetClick
      end
      object mnPRD_MonitorTarget: TMenuItem
        Caption = 'Monitoring Target SPV PRD'
        OnClick = mnPRD_MonitorTargetClick
      end
      object N43: TMenuItem
        Caption = '-'
      end
      object mnPRD_MutBrgPel: TMenuItem
        Caption = 'Mutasi Barang Peletan Ke G-CUST'
        OnClick = mnPRD_MutBrgPelClick
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object mnPRD_InfoBengkel: TMenuItem
        Caption = 'Informasi Bengkel'
        OnClick = mnPRD_InfoBengkelClick
      end
      object N48: TMenuItem
        Caption = '-'
      end
      object mnPRD_JamMesin: TMenuItem
        Caption = 'Monitoring Jam Per Mesin (Listrik)'
        OnClick = mnPRD_JamMesinClick
      end
      object N57: TMenuItem
        Caption = '-'
      end
      object mnPRD_InputDownTime: TMenuItem
        Caption = 'BON + Transfer Bahan'
        OnClick = mnPRD_InputDownTimeClick
      end
      object mnPRD_LHP: TMenuItem
        Caption = 'Laporan Hasil Produksi'
        OnClick = mnPRD_LHPClick
      end
      object N59: TMenuItem
        Caption = '-'
      end
      object mnPRD_InputHasilProduksiTimb: TMenuItem
        Caption = 'Input Hasil Produksi - Timbangan'
        OnClick = mnPRD_InputHasilProduksiTimbClick
      end
    end
    object mnPUR: TMenuItem
      Caption = 'PUR'
      object mnPUR_PP: TMenuItem
        Caption = 'Permintaan Pembelian'
        OnClick = mnPUR_PPClick
      end
      object mnPUR_AppPPAtasan: TMenuItem
        Caption = 'Approval Permintaan Pembelian - Atasan'
        OnClick = mnPUR_AppPPAtasanClick
      end
      object mnPUR_AppPPGM: TMenuItem
        Caption = 'Approval Permintaan Pembelian - GM'
        OnClick = mnPUR_AppPPGMClick
      end
      object N40: TMenuItem
        Caption = '-'
      end
      object mnPUR_PO: TMenuItem
        Caption = 'Purchase Order'
        OnClick = mnPUR_POClick
      end
      object mnPUR_CetakPO: TMenuItem
        Caption = 'Cetak Purchase Order'
        OnClick = mnPUR_CetakPOClick
      end
      object mnPUR_AppPO: TMenuItem
        Caption = 'Approval Purchase Order'
        OnClick = mnPUR_AppPOClick
      end
      object mnPUR_AppPOJasa: TMenuItem
        Caption = 'Approval Purchase Order Jasa'
        OnClick = mnPUR_AppPOJasaClick
      end
      object mnAppReturPemb: TMenuItem
        Caption = 'Approval Retur Pembelian'
        OnClick = mnAppReturPembClick
      end
      object N21: TMenuItem
        Caption = '-'
      end
      object mnPUR_SPBB: TMenuItem
        Caption = 'Penerimaan Barang'
        OnClick = mnPUR_SPBBClick
      end
      object N81: TMenuItem
        Caption = '-'
      end
      object mnPUR_PenawaranSupp: TMenuItem
        Caption = 'Penawaran Supplier'
        OnClick = mnPUR_PenawaranSuppClick
      end
      object mnPUR_DaftarPenawaranSupp: TMenuItem
        Caption = 'Daftar Penawaran Supplier'
        OnClick = mnPUR_DaftarPenawaranSuppClick
      end
      object N17: TMenuItem
        Caption = '-'
      end
      object mnPUR_SettingKurs: TMenuItem
        Caption = 'Setting Kurs'
        OnClick = mnPUR_SettingKursClick
      end
      object mnPUR_MstAlmKirim: TMenuItem
        Caption = 'Master Alamat Kirim'
        OnClick = mnPUR_MstAlmKirimClick
      end
      object mnPUR_mstSupp: TMenuItem
        Caption = 'Master Supplier'
        OnClick = mnPUR_mstSuppClick
      end
      object mnPUR_ViewSupp: TMenuItem
        Caption = 'View Master Supplier'
        OnClick = mnPUR_ViewSuppClick
      end
      object mnPUR_mstBrgSupp: TMenuItem
        Caption = 'Master Barang Supplier'
      end
      object N22: TMenuItem
        Caption = '-'
      end
      object mnPUR_POTerbuka: TMenuItem
        Caption = 'Purchase Order Terbuka'
        OnClick = mnPUR_POTerbukaClick
      end
      object N27: TMenuItem
        Caption = '-'
      end
      object mnPUR_POJasa: TMenuItem
        Caption = 'Purchase Order Jasa'
        OnClick = mnPUR_POJasaClick
      end
      object mnPUR_CetakPOJasa: TMenuItem
        Caption = 'Cetak Purchase Order Jasa'
        OnClick = mnPUR_CetakPOJasaClick
      end
      object N44: TMenuItem
        Caption = '-'
      end
      object mnPUR_PenerimaanSamples: TMenuItem
        Caption = 'Penerimaan Barang Samples'
        OnClick = mnPUR_PenerimaanSamplesClick
      end
      object N50: TMenuItem
        Caption = '-'
      end
      object mnPUR_ApprovalFOBJ: TMenuItem
        Caption = 'Approval FOBJ - Departement'
        OnClick = mnPUR_ApprovalFOBJClick
      end
      object mnPUR_MonitoringFOBJ: TMenuItem
        Caption = 'Monitoring FOBJ'
        OnClick = mnPUR_MonitoringFOBJClick
      end
      object N69: TMenuItem
        Caption = '-'
      end
      object mnPUR_HargaPasar: TMenuItem
        Caption = 'Harga Pasaran'
        OnClick = mnPUR_HargaPasarClick
      end
    end
    object mnPeletan: TMenuItem
      Caption = 'PELETAN'
      object mnPEL_TrsPenerimaan: TMenuItem
        Caption = 'Penerimaan Peletan'
        OnClick = mnPEL_TrsPenerimaanClick
      end
      object mnPEL_TrsPO: TMenuItem
        Caption = 'Purchase Order Peletan'
        OnClick = mnPEL_TrsPOClick
      end
      object mnSPMBPel: TMenuItem
        Caption = 'SPMB'
        OnClick = mnSPMBPelClick
      end
      object mnPel_PenrmSJPel: TMenuItem
        Caption = 'Penerimaan SJ Peletan - SDP'
        OnClick = mnPel_PenrmSJPelClick
      end
      object N31: TMenuItem
        Caption = '-'
      end
      object mnTutupSOPel: TMenuItem
        Caption = 'Penutupan SO Peletan'
        OnClick = mnTutupSOPelClick
      end
      object mnMonPeletan: TMenuItem
        Caption = 'Monitoring Peletan'
        OnClick = mnMonPeletanClick
      end
    end
    object mnCCR: TMenuItem
      Caption = 'CCR'
      object mnCCR_InputCCR: TMenuItem
        Caption = 'Input CCR'
        OnClick = mnCCR_InputCCRClick
      end
      object mnCCR_DaftarCCR: TMenuItem
        Caption = 'Daftar CCR'
        OnClick = mnCCR_DaftarCCRClick
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object mnCCR_DeptTerkait: TMenuItem
        Caption = 'CCR - Departemen Terkait'
        OnClick = mnCCR_DeptTerkaitClick
      end
      object mnCCR_MgrTerkait: TMenuItem
        Caption = 'CCR - Manager Terkait'
        OnClick = mnCCR_MgrTerkaitClick
      end
      object mnCCR_MgrQac: TMenuItem
        Caption = 'CCR - QAC Manager'
        OnClick = mnCCR_MgrQacClick
      end
      object mnCCR_Dir1: TMenuItem
        Caption = 'CCR - Bussiness && Dev. Director'
        OnClick = mnCCR_Dir1Click
      end
      object mnCCR_Dir2: TMenuItem
        Caption = 'CCR - Sales Director / SMG-CFT Mgr'
        OnClick = mnCCR_Dir2Click
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object mnCCR_PenutupanCCR: TMenuItem
        Caption = 'Penutupan CCR'
        OnClick = mnCCR_PenutupanCCRClick
      end
    end
    object mnLKM: TMenuItem
      Caption = 'LKM'
      object mnLKM_InputLKM: TMenuItem
        Caption = 'Input LKM'
        OnClick = mnLKM_InputLKMClick
      end
      object mnLKM_DaftarLKM: TMenuItem
        Caption = 'Daftar LKM'
        OnClick = mnLKM_DaftarLKMClick
      end
      object N29: TMenuItem
        Caption = '-'
      end
    end
    object mnKomplainCustomer: TMenuItem
      Caption = 'After Sales Service'
      object mnKC_InputKC: TMenuItem
        Caption = 'Input After Sales Services'
        OnClick = mnKC_InputKCClick
      end
      object mnKC_DaftarKomplain: TMenuItem
        Caption = 'Daftar Komplain Customer'
        OnClick = mnKC_DaftarKomplainClick
      end
      object mnKC_ListSurvey: TMenuItem
        Caption = 'List Survey Kepuasan Customer'
        OnClick = mnKC_ListSurveyClick
      end
      object N64: TMenuItem
        Caption = '-'
      end
      object mnKC_DeptTerkait: TMenuItem
        Caption = 'Komplain Customer - Dept. Terkait'
        OnClick = mnKC_DeptTerkaitClick
      end
      object mnKC_AtasanDeptTerkait: TMenuItem
        Caption = 'Komplain Customer - Atasan Dept. Terkait'
        OnClick = mnKC_AtasanDeptTerkaitClick
      end
      object mnKC_GM: TMenuItem
        Caption = 'Komplain Customer - GM'
        OnClick = mnKC_GMClick
      end
    end
    object mnMaster: TMenuItem
      Caption = 'Master'
      object mnMstBrg: TMenuItem
        Caption = 'Master Barang'
        OnClick = mnMstBrgClick
      end
      object mnStokBrg: TMenuItem
        Caption = 'Stok Barang + Kartu Stok'
        OnClick = mnStokBrgClick
      end
      object mnEditTambahBrg: TMenuItem
        Caption = 'Edit / Tambah Barang'
        OnClick = mnEditTambahBrgClick
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object mnMstKtgr: TMenuItem
        Caption = 'Master Tipe, Kategori dan SubKategori'
        OnClick = mnMstKtgrClick
      end
      object mnMstCust: TMenuItem
        Caption = 'Master Customer'
        OnClick = mnMstCustClick
      end
      object mnMstSales: TMenuItem
        Caption = 'Master Sales'
        OnClick = mnMstSalesClick
      end
      object mnSettingFotoBrg: TMenuItem
        Caption = 'Setting Foto Barang'
        OnClick = mnSettingFotoBrgClick
      end
      object mnUnitSatuan: TMenuItem
        Caption = 'Unit / Satuan'
        object mnUnit: TMenuItem
          Caption = 'Unit'
          OnClick = mnUnitClick
        end
        object mnUnitSet: TMenuItem
          Caption = 'Unit Set'
          OnClick = mnUnitSetClick
        end
      end
      object mnListrik: TMenuItem
        Caption = 'Tarif Listrik'
        OnClick = mnListrikClick
      end
      object mnUpah: TMenuItem
        Caption = 'Tarif Upah'
        OnClick = mnUpahClick
      end
      object N41: TMenuItem
        Caption = '-'
      end
      object mnMstBrowseMstCust: TMenuItem
        Caption = 'Browse Master Customer'
      end
      object mnMst_KelompokBrg: TMenuItem
        Caption = 'Kelompok Barang'
      end
    end
    object mnReport: TMenuItem
      Caption = 'Report'
      object mnRpt_All: TMenuItem
        Caption = 'Report All'
        OnClick = mnRpt_AllClick
      end
      object mnRpt_Excel: TMenuItem
        Caption = 'Report Excel'
        OnClick = mnRpt_ExcelClick
      end
      object N36: TMenuItem
        Caption = '-'
      end
      object mnRpt_Akunting: TMenuItem
        Caption = 'Laporan Accounting'
        OnClick = mnRpt_AkuntingClick
      end
      object N78: TMenuItem
        Caption = '-'
      end
      object mnRpt_Produksi: TMenuItem
        Caption = 'Laporan Produksi'
        OnClick = mnRpt_ProduksiClick
      end
    end
    object mnSetting: TMenuItem
      Caption = 'Setting'
      object mnUbahPassword: TMenuItem
        Caption = 'Ubah Password'
        OnClick = mnUbahPasswordClick
      end
      object mnStokAwal: TMenuItem
        Caption = 'Stok Awal'
        OnClick = mnStokAwalClick
      end
      object mnKalkulasiUlang: TMenuItem
        Caption = 'Kalkulasi Ulang Stok'
        OnClick = mnKalkulasiUlangClick
      end
      object mnKalkulasiUlangPerKode: TMenuItem
        Caption = 'Kalkulasi Ulang Stok Per Kode Barang'
        OnClick = mnKalkulasiUlangPerKodeClick
      end
      object mnKalkulasiHPP: TMenuItem
        Caption = 'Kalkulasi Ulang HPP'
        OnClick = mnKalkulasiHPPClick
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object mnUser: TMenuItem
        Caption = 'Master User'
        OnClick = mnUserClick
      end
      object mnSetWewenang: TMenuItem
        Caption = 'Setting Wewenang User'
        OnClick = mnSetWewenangClick
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object mnBtlTrans: TMenuItem
        Caption = 'Pembatalan Transaksi'
        OnClick = mnBtlTransClick
      end
      object N76: TMenuItem
        Caption = '-'
      end
      object mnTaxMenu: TMenuItem
        Caption = 'Tax Type / Group'
        object mnTaxType: TMenuItem
          Caption = 'Tax Type'
          Hint = 'mnTaxType'
          OnClick = mnTaxTypeClick
        end
        object mnTaxGroup: TMenuItem
          Caption = 'Tax Group'
          OnClick = mnTaxGroupClick
        end
      end
    end
    object mnPembatalan: TMenuItem
      Caption = 'Pembatalan'
      object mnPembIN: TMenuItem
        Caption = 'Transaksi Masuk'
        OnClick = mnPembINClick
      end
      object mnPembOUT: TMenuItem
        Caption = 'Transaksi Keluar'
        OnClick = mnPembOUTClick
      end
      object mnPembSJ: TMenuItem
        Caption = 'Surat Jalan'
      end
      object mnPembKS: TMenuItem
        Caption = 'Koreksi Stok'
        OnClick = mnPembKSClick
      end
    end
    object mnPOE: TMenuItem
      Caption = 'POE'
      object mnPOE_AppPenambahanBOM: TMenuItem
        Caption = 'Approval Penambahan Bom'
        OnClick = mnPOE_AppPenambahanBOMClick
      end
      object mnPOE_MutBrgPeletan: TMenuItem
        Caption = 'Mutasi Barang Peletan ke Hasil Produksi'
        OnClick = mnPOE_MutBrgPeletanClick
      end
      object mnPOE_TukarBahan: TMenuItem
        Caption = 'Approval Tukar Bahan'
      end
    end
    object mnRevTransaksi: TMenuItem
      Caption = 'Revisi Transaksi'
      object mnRev_Permintaan: TMenuItem
        Caption = 'Permintaan Revisi'
        OnClick = mnRev_PermintaanClick
      end
      object mnRev_Approval: TMenuItem
        Caption = 'Approval Permintaan Revisi'
        OnClick = mnRev_ApprovalClick
      end
      object mnRev_Penutupan: TMenuItem
        Caption = 'Penutupan Permintaan'
        OnClick = mnRev_PenutupanClick
      end
    end
    object mnCheckINOUT: TMenuItem
      Caption = 'Check IN / OUT'
      object mnMonitoringKaryawan: TMenuItem
        Caption = 'Monitoring Karyawan'
        OnClick = mnMonitoringKaryawanClick
      end
      object mnRekapCIO: TMenuItem
        Caption = 'Rekap Check IN - OUT'
        OnClick = mnRekapCIOClick
      end
    end
    object mnITY: TMenuItem
      Caption = '/'
      object mnITY_MonitoringLogin: TMenuItem
        Caption = 'Monitoring Login User'
      end
    end
    object mnACC: TMenuItem
      Caption = 'ACC'
      object mnACC_COA: TMenuItem
        Caption = 'Daftar Akun (COA)'
        OnClick = mnACC_COAClick
      end
      object mnACC_HPPAct: TMenuItem
        Caption = 'Perhitungan HPP Actual'
        OnClick = mnACC_HPPActClick
      end
      object mnACC_VerifikasiAkunMasterBarang: TMenuItem
        Caption = 'Verifikasi Akun Master Data'
        OnClick = mnACC_VerifikasiAkunMasterBarangClick
      end
      object N62: TMenuItem
        Caption = '-'
      end
      object mnACC_ImportPiutang: TMenuItem
        Caption = 'Import Piutang Customer'
        OnClick = mnACC_ImportPiutangClick
      end
      object mnACC_PiutangCustomer: TMenuItem
        Caption = 'Piutang Customer'
        OnClick = mnACC_PiutangCustomerClick
      end
      object N63: TMenuItem
        Caption = '-'
      end
      object mnACC_TrsAntarAkun: TMenuItem
        Caption = 'Jurnal Umum'
        OnClick = mnACC_TrsAntarAkunClick
      end
      object mnACC_KasBank: TMenuItem
        Caption = 'Kas && Bank'
        object mnACC_PengeluaranKas: TMenuItem
          Caption = 'Pengeluaran Kas '
          OnClick = mnACC_PengeluaranKasClick
        end
        object mnACC_PenerimaanKas: TMenuItem
          Caption = 'Penerimaan Kas'
          OnClick = mnACC_PenerimaanKasClick
        end
        object N79: TMenuItem
          Caption = '-'
        end
        object mnACC_PengeluaranBank: TMenuItem
          Caption = 'Pengeluaran Bank'
          OnClick = mnACC_PengeluaranBankClick
        end
        object mnACC_PenerimaanBank: TMenuItem
          Caption = 'Penerimaan Bank'
          OnClick = mnACC_PenerimaanBankClick
        end
      end
      object N73: TMenuItem
        Caption = '-'
      end
      object mnACC_Penjualan: TMenuItem
        Caption = 'Penjualan'
        object mnACC_Invoice: TMenuItem
          Caption = 'Invoice Penjualan'
          OnClick = mnACC_InvoiceClick
        end
        object mnACC_PembayaranInvoice: TMenuItem
          Caption = 'Pembayaran Invoice'
        end
      end
      object mnACC_Pembelian: TMenuItem
        Caption = 'Pembelian'
        object mnACC_InvoicePembelian: TMenuItem
          Caption = 'Invoice Pembelian'
          OnClick = mnACC_InvoicePembelianClick
        end
        object mnACC_PembayaranPembelian: TMenuItem
          Caption = 'Pembayaran Pembelian'
          OnClick = mnACC_PembayaranPembelianClick
        end
      end
      object N74: TMenuItem
        Caption = '-'
      end
      object ReturPembelian1: TMenuItem
        Caption = 'Retur Pembelian'
        OnClick = ReturPembelian1Click
      end
      object N75: TMenuItem
        Caption = '-'
      end
      object mnACC_SettingDefaultAkun: TMenuItem
        Caption = 'Setting Default Akun'
        OnClick = mnACC_SettingDefaultAkunClick
      end
      object mnACC_DaftarJurnal: TMenuItem
        Caption = 'Daftar Jurnal'
        OnClick = mnACC_DaftarJurnalClick
      end
      object mnACC_SummaryBalance: TMenuItem
        Caption = 'Trial Balance'
        OnClick = mnACC_SummaryBalanceClick
      end
      object N80: TMenuItem
        Caption = '-'
      end
      object mnACC_SaldoAwal: TMenuItem
        Caption = 'Saldo Awal'
        object mnACC_SAAkun: TMenuItem
          Caption = 'Saldo Awal Akun'
          OnClick = mnACC_SAAkunClick
        end
      end
    end
    object mnHRD: TMenuItem
      Caption = 'HRD'
      object mnHRD_DataKaryawan: TMenuItem
        Caption = 'Data Karyawan'
        OnClick = mnHRD_DataKaryawanClick
      end
      object N66: TMenuItem
        Caption = '-'
      end
      object mnHRD_ImportFinger: TMenuItem
        Caption = 'Import Data Absensi'
        OnClick = mnHRD_ImportFingerClick
      end
      object mnHRD_DataAbsen: TMenuItem
        Caption = 'Edit/Tambah Data Absen'
        OnClick = mnHRD_DataAbsenClick
      end
      object N67: TMenuItem
        Caption = '-'
      end
      object mnHRD_DasarJadwal: TMenuItem
        Caption = 'Dasar Jadwal'
        OnClick = mnHRD_DasarJadwalClick
      end
    end
    object mnOperasional: TMenuItem
      Caption = 'OPR'
      object mnOpr_Improvement: TMenuItem
        Caption = 'Input Pengajuan Improvement'
        OnClick = mnOpr_ImprovementClick
      end
    end
  end
  object tmr: TTimer
    OnTimer = tmrTimer
    Left = 125
    Top = 140
  end
  object ImageList1: TImageList
    Left = 335
    Top = 80
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000634A3100634A3100634A3100634A
      3100634A3100634A3100735A4200846B52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7E700FFF7E700FFEFE700947B63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7E700A59484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B5A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000634A3100634A3100634A3100634A
      3100634A3100634A3100634A3100634A3100634A3100634A3100735A42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFDEC600F7C6A500F7BD9400F7AD
      8400F7A57300F79C7300F7946300F78C5200F78C5200F78C5200846352000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEFE700FFE7D600FFDEC600FFCE
      B500F7C6A500F7BDA500F7B59400F7AD8400F7A57300F78C5200847363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF700FFF7F700FFEFE700FFE7
      D600FFDEC600FFD6C600F7CEB500F7C6A500F7B59400F7AD8400A59484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5A59400B5A59400B5A59400B5A5
      9400B59C9400A59C9400A59C9400A5948400A5948400A5948400A59484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7E700FFEFE700FFEFE700A58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7E700B59C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700B59484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6BDB500C6BDB500C6B5A500C6B5
      A500C6B5A500C6ADA500C6ADA500B5A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      00FF00000000000000FF00000000000000FF00000000000000FF000000000000
      001F000000000000001D0000000000000000000000000000001D000000000000
      001F00000000000000FF00000000000000FF00000000000000FF000000000000
      00FF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 325
    Top = 135
    object MenuItem1: TMenuItem
      Caption = 'Sistem'
      object MenuItem2: TMenuItem
        Caption = 'Log Off'
        OnClick = mnLogOffClick
      end
      object MenuItem3: TMenuItem
        Caption = 'Keluar'
        OnClick = mnKeluarClick
      end
    end
    object MenuItem4: TMenuItem
      Caption = 'CFT'
      object MenuItem5: TMenuItem
        Caption = 'Transaksi Barang Keluar'
        OnClick = mnCFTTrsKeluarClick
      end
    end
    object MenuItem6: TMenuItem
      Caption = 'PPIC'
      object MenuItem7: TMenuItem
        Caption = 'Transaksi Barang Keluar'
        OnClick = mnPPICTrsKeluarClick
      end
      object MenuItem8: TMenuItem
        Caption = 'Transaksi Mutasi Barang'
        OnClick = mnPPICTrsMutasiClick
      end
      object MenuItem9: TMenuItem
        Caption = 'Pembatalan Transaksi Mutasi'
        OnClick = mnPPICPembatalanTrsMutasiClick
      end
    end
    object MenuItem10: TMenuItem
      Caption = 'WHL'
      object MenuItem11: TMenuItem
        Caption = 'Transaksi Barang Masuk'
        OnClick = mnWHLTrsMasukClick
      end
      object MenuItem12: TMenuItem
        Caption = 'Transaksi Barang Keluar'
        OnClick = mnWHLTrsKeluarClick
      end
      object MenuItem13: TMenuItem
        Caption = 'Transaksi Mutasi Barang'
        OnClick = mnWHLTrsMutasiClick
      end
      object MenuItem14: TMenuItem
        Caption = 'Pengiriman Barang'
        OnClick = mnWHLKirimBrgClick
      end
    end
    object MenuItem15: TMenuItem
      Caption = 'Master'
      object MenuItem16: TMenuItem
        Caption = 'Master Barang'
        OnClick = mnMstBrgClick
      end
    end
    object MenuItem17: TMenuItem
      Caption = 'Setting'
      object MenuItem18: TMenuItem
        Caption = 'Stok Awal'
        OnClick = mnStokAwalClick
      end
      object MenuItem19: TMenuItem
        Caption = 'Kalkulasi Ulang Stok'
        OnClick = mnKalkulasiUlangClick
      end
      object MenuItem20: TMenuItem
        Caption = 'User'
        OnClick = mnUserClick
      end
      object MenuItem21: TMenuItem
        Caption = 'Setting Wewenang User'
        OnClick = mnSetWewenangClick
      end
    end
  end
  object tmr2: TTimer
    Enabled = False
    Interval = 300
    OnTimer = tmr2Timer
    Left = 575
    Top = 290
  end
  object ImageList2: TImageList
    Left = 365
    Top = 80
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000052525200525252004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005252
      52005252520052525200525252004A4A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525252005252
      5200525252005252520052525200525252004A4A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052525200525252005252
      520052525200212121005252520052525200525252004A4A4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004242420052525200525252005252
      52000808080000000000181818005252520052525200525252004A4A4A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808080052525200525252000000
      0000000000000000000000000000181818005252520052525200525252004A4A
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818180052525200525252005252
      52004A4A4A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021212100525252005252
      5200525252004A4A4A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818005252
      520052525200525252004A4A4A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800525252005252520052525200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818005252520029292900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      F1FF000000000000E0FF000000000000C07F000000000000803F000000000000
      001F000000000000040F0000000000000E07000000000000FF03000000000000
      FF81000000000000FFC0000000000000FFE0000000000000FFF1000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object tmr3: TTimer
    Enabled = False
    Interval = 180000
    Left = 420
    Top = 300
  end
  object ImageList3: TImageList
    Left = 395
    Top = 79
    Bitmap = {
      494C010101000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000C000000100000
      0011000000110000001100000011000000110000001100000011000000110000
      0011000000110000001100000010000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FC000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C5C5C5FFACACACFFAAAA
      AAFF8C8C8CFFD1D1D1FFD2D2D2FFAAAAAAFFCCCCCCFFD2D2D2FFCECECEFFCCCC
      CCFFCCCCCCFFB4B4B4FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC7C7C7FFC7C7
      C7FFA1A1A1FFF1F1F1FFF1F1F1FFC3C3C3FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFC7C7C7FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC7C7C7FFC7C7
      C7FFA1A1A1FFF1F1F1FFF1F1F1FFC3C3C3FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFC7C7C7FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFC9C9C9FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFC9C9C9FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFC9C9C9FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABABFFA2A2A2FFA2A2
      A2FFA2A2A2FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
      C4FFC4C4C4FFA3A3A3FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFF2F2F2FFF2F2F2FFC4C4C4FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFC9C9C9FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFF2F2F2FFF2F2F2FFC4C4C4FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFC9C9C9FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ABABABFFA2A2A2FFA2A2
      A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2
      A2FFA2A2A2FF868686FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFC8C8C8FFC8C8C8FFA2A2A2FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
      C8FFC8C8C8FFA6A6A6FF000000FF000000110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFC8C8C8FFC8C8
      C8FFA2A2A2FFC8C8C8FFC8C8C8FFA2A2A2FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
      C8FFC8C8C8FFA6A6A6FF000000FD000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D3D3FFD3D3D3FFD3D3
      D3FFABABABFFD3D3D3FFD3D3D3FFABABABFFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFA6A6A6FF000000EA0000000C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000000000000008000000000000000
      8000000000000000800000000000000080000000000000008000000000000000
      8000000000000000800000000000000080000000000000008000000000000000
      8000000000000000800000000000000080000000000000008000000000000000
      8000000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
