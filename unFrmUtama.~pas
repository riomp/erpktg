unit unFrmUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ExtCtrls, StdCtrls, ImgList, ZDataset,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, ToolWin,
  dxStatusBar, dxRibbonStatusBar, dxSkinscxPCPainter, cxPC;

type
  TfrmUtama = class(TForm)
    mainMenu: TMainMenu;
    mnPPIC: TMenuItem;
    mnWHL: TMenuItem;
    mnWHLTrsMasuk: TMenuItem;
    mnPPICTrsKeluar: TMenuItem;
    mnPPICTrsMutasi: TMenuItem;
    stsBar: TStatusBar;
    tmr: TTimer;
    mnSetting: TMenuItem;
    mnStokAwal: TMenuItem;
    mnUser: TMenuItem;
    mnKalkulasiUlang: TMenuItem;
    ImageList1: TImageList;
    mnMaster: TMenuItem;
    mnMstBrg: TMenuItem;
    mnSetWewenang: TMenuItem;
    mnWHLTrsKeluar: TMenuItem;
    mnWHLTrsMutasi: TMenuItem;
    mnSistem: TMenuItem;
    mnKeluar: TMenuItem;
    mnLogOff: TMenuItem;
    cxCmbDept: TcxComboBox;
    mnPPICPembatalanTrsMutasi: TMenuItem;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    Label1: TLabel;
    mnReport: TMenuItem;
    mnCFT: TMenuItem;
    mnCFTTrsMutasi: TMenuItem;
    mnWHLTrsKoreksi: TMenuItem;
    mnWHLApprovalSO: TMenuItem;
    mnUbahPassword: TMenuItem;
    mnStokBrg: TMenuItem;
    imgBg: TImage;
    mnEditTambahBrg: TMenuItem;
    mnQAC: TMenuItem;
    mnQACTrsMasuk: TMenuItem;
    mnQACTrsKeluar: TMenuItem;
    mnQACTrsMutasi: TMenuItem;
    mnMstKtgr: TMenuItem;
    mnBtlTrans: TMenuItem;
    mnCFT_SO: TMenuItem;
    Button1: TButton;
    mnCFT_SJ: TMenuItem;
    mnCFT_SOT: TMenuItem;
    mnPPICTrsSpkPotong: TMenuItem;
    mnCFT_cetakSJ: TMenuItem;
    mnPPIC_AppSpkPot: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    mnCFT_spmb: TMenuItem;
    mnPPIC_SOTerbuka: TMenuItem;
    mnPPIC_MO: TMenuItem;
    mnMstCust: TMenuItem;
    mnPPIC_OtoMutasi: TMenuItem;
    Button2: TButton;
    mnQAC_mstFormula: TMenuItem;
    mnPPIC_TrsSPKAssembly: TMenuItem;
    mnPRD: TMenuItem;
    mnPRD_mstMesin: TMenuItem;
    mnPPIC_MstSchedule: TMenuItem;
    mnPembatalan: TMenuItem;
    mnPembIN: TMenuItem;
    mnPembOUT: TMenuItem;
    mnPembSJ: TMenuItem;
    mnPembKS: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    mnWHL_PnrimaSPKAssem: TMenuItem;
    N13: TMenuItem;
    Button3: TButton;
    tmr2: TTimer;
    N14: TMenuItem;
    mnCFT_ReturPenj: TMenuItem;
    mnPPIC_CetakSPKPot: TMenuItem;
    N15: TMenuItem;
    mnPPIC_TrsSPKGiling: TMenuItem;
    N16: TMenuItem;
    mnPPIC_TutupSPK: TMenuItem;
    mnPPIC_AppSpkPotMgr: TMenuItem;
    mnQAC_LKM: TMenuItem;
    mnPUR: TMenuItem;
    mnPUR_PO: TMenuItem;
    N17: TMenuItem;
    mnPUR_mstSupp: TMenuItem;
    N18: TMenuItem;
    mnQAC_AppSpkGil: TMenuItem;
    N19: TMenuItem;
    mnPPIC_CetakSPKAssem: TMenuItem;
    Button4: TButton;
    mnPPIC_SOMTS: TMenuItem;
    mnPPIC_TutupSOMTS: TMenuItem;
    N20: TMenuItem;
    mnCFT_TutupSO: TMenuItem;
    Button5: TButton;
    prgBar: TProgressBar;
    Label2: TLabel;
    mnPUR_mstBrgSupp: TMenuItem;
    mnPUR_SPBB: TMenuItem;
    mnWHL_ApprovalTrsKeluar: TMenuItem;
    mnPeletan: TMenuItem;
    mnPEL_TrsPenerimaan: TMenuItem;
    mnPEL_TrsPO: TMenuItem;
    mnPUR_PP: TMenuItem;
    mnPUR_PenawaranSupp: TMenuItem;
    mnQAC_AppLKM1: TMenuItem;
    mnQAC_AppLKM2: TMenuItem;
    mnPUR_DaftarPenawaranSupp: TMenuItem;
    mnPRD_MasterSchedule: TMenuItem;
    mnPPIC_ScanSPK: TMenuItem;
    mnPRD_HslPrdDet: TMenuItem;
    mnCFT_AppRetPenj: TMenuItem;
    mnPUR_AppPO: TMenuItem;
    Button6: TButton;
    mnPUR_SettingKurs: TMenuItem;
    N21: TMenuItem;
    mnPUR_MstAlmKirim: TMenuItem;
    N22: TMenuItem;
    mnPUR_POTerbuka: TMenuItem;
    mnPUR_CetakPO: TMenuItem;
    mnPUR_ViewSupp: TMenuItem;
    mnCCR: TMenuItem;
    mnCCR_InputCCR: TMenuItem;
    mnCCR_DaftarCCR: TMenuItem;
    N23: TMenuItem;
    mnCCR_DeptTerkait: TMenuItem;
    mnCCR_MgrTerkait: TMenuItem;
    mnCCR_MgrQac: TMenuItem;
    mnCCR_Dir1: TMenuItem;
    mnCCR_Dir2: TMenuItem;
    N24: TMenuItem;
    mnCCR_PenutupanCCR: TMenuItem;
    mnCFT_ReturAdm: TMenuItem;
    mnCFT_ReturNonAdm: TMenuItem;
    mnQAC_TindakLanjutDept: TMenuItem;
    N25: TMenuItem;
    Sample1: TMenuItem;
    N26: TMenuItem;
    mnCFT_SJU: TMenuItem;
    mnCFT_AppSJU: TMenuItem;
    mnKomplainCustomer: TMenuItem;
    mnKC_InputKC: TMenuItem;
    mnKC_DaftarKomplain: TMenuItem;
    N27: TMenuItem;
    ImageList2: TImageList;
    mnSPMBPel: TMenuItem;
    mnCFT_MutasiOngkos: TMenuItem;
    SerahTerimaProduksi1: TMenuItem;
    mnQAC_BrowseFormula: TMenuItem;
    N28: TMenuItem;
    mnLKM: TMenuItem;
    mnLKM_InputLKM: TMenuItem;
    mnLKM_DaftarLKM: TMenuItem;
    N29: TMenuItem;
    mnPRD_BPPB: TMenuItem;
    PermintaanBahanBakuProduksi2: TMenuItem;
    N30: TMenuItem;
    mnWHL_MtsPlusMinus: TMenuItem;
    Button7: TButton;
    N31: TMenuItem;
    mnTutupSOPel: TMenuItem;
    Button8: TButton;
    mnMonPeletan: TMenuItem;
    tmr3: TTimer;
    Memo: TMemo;
    Button9: TButton;
    mnPel_PenrmSJPel: TMenuItem;
    Button10: TButton;
    mnPRD_SettingBorongan: TMenuItem;
    mnAppReturPemb: TMenuItem;
    mnPRD_AppBPPB: TMenuItem;
    N32: TMenuItem;
    ransaksiKirimBPPB1: TMenuItem;
    N33: TMenuItem;
    mnWHL_AppPengQAC: TMenuItem;
    mnPPIC_EditBomSPK: TMenuItem;
    N34: TMenuItem;
    mnSettingFotoBrg: TMenuItem;
    Button11: TButton;
    mnWHL_CetakKirimConsum: TMenuItem;
    N35: TMenuItem;
    mnPUR_POJasa: TMenuItem;
    mnPPIC_DownloadMstBrg: TMenuItem;
    mnPPIC_HistoryPengBB: TMenuItem;
    mnKalkulasiUlangPerKode: TMenuItem;
    mnPPIC_SOMTSGiling: TMenuItem;
    mnPUR_CetakPOJasa: TMenuItem;
    mnPUR_AppPOJasa: TMenuItem;
    mnQAC_Trial: TMenuItem;
    mnPOE: TMenuItem;
    mnPOE_AppPenambahanBOM: TMenuItem;
    mnPOE_MutBrgPeletan: TMenuItem;
    mnQAC_PengujianProduk: TMenuItem;
    N37: TMenuItem;
    mnCFT_SPBBRetur: TMenuItem;
    N38: TMenuItem;
    mnWHL_ApprovalLKM: TMenuItem;
    N39: TMenuItem;
    mnWHL_InsentifSopir: TMenuItem;
    mnWHL_SettingLokasiGrid: TMenuItem;
    N40: TMenuItem;
    mnPOE_TukarBahan: TMenuItem;
    mnQAC_LogBookDesign: TMenuItem;
    mnPRD_MonitorSPK: TMenuItem;
    mnRevTransaksi: TMenuItem;
    mnRev_Permintaan: TMenuItem;
    mnRev_Approval: TMenuItem;
    mnRev_Penutupan: TMenuItem;
    N41: TMenuItem;
    mnMstBrowseMstCust: TMenuItem;
    N42: TMenuItem;
    mnCFT_AppPenghapusanSPMB: TMenuItem;
    mnPRD_MonitorSPKBahan: TMenuItem;
    mnPRD_MonitorInputHP: TMenuItem;
    mnWHL_CetakDisposisiMB: TMenuItem;
    mnPRD_SerahTerimaSPK: TMenuItem;
    mnCheckINOUT: TMenuItem;
    mnMonitoringKaryawan: TMenuItem;
    mnQAC_ApprovalTrial: TMenuItem;
    mnPRD_MasterOperator: TMenuItem;
    mnPRD_MasterTarget: TMenuItem;
    mnPRD_MonitorTarget: TMenuItem;
    mnPRD_MutBrgPel: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    mnPUR_PenerimaanSamples: TMenuItem;
    mnITY: TMenuItem;
    mnITY_MonitoringLogin: TMenuItem;
    N45: TMenuItem;
    mnPRD_InfoBengkel: TMenuItem;
    N46: TMenuItem;
    mnCFT_ApprovalDisposisi: TMenuItem;
    mnCFT_DaftarDisposisi: TMenuItem;
    N47: TMenuItem;
    mnWHL_BarangSlowMoving: TMenuItem;
    mnRekapCIO: TMenuItem;
    N48: TMenuItem;
    mnPRD_JamMesin: TMenuItem;
    N49: TMenuItem;
    mnPPIC_FOBJ: TMenuItem;
    N50: TMenuItem;
    mnPUR_ApprovalFOBJ: TMenuItem;
    N51: TMenuItem;
    mnQAC_ApprovalTrialAwal: TMenuItem;
    mnPUR_MonitoringFOBJ: TMenuItem;
    mnCFT_MutasiOngkosKeluar: TMenuItem;
    mnQAC_FOBJ: TMenuItem;
    N52: TMenuItem;
    N53: TMenuItem;
    mnWHL_ApprovalMutasiGKAR: TMenuItem;
    mnQAC_HasilPercobaan: TMenuItem;
    mnCFT_TransaksiCoba: TMenuItem;
    mnUnitSatuan: TMenuItem;
    mnUnit: TMenuItem;
    mnUnitSet: TMenuItem;
    mnQuotetion: TMenuItem;
    mnKonfirmasiPO: TMenuItem;
    pgMain: TcxPageControl;
    mnCFT_InquirySheet: TMenuItem;
    mnQAC_ApprovalIS: TMenuItem;
    N54: TMenuItem;
    mnMstSales: TMenuItem;
    N55: TMenuItem;
    mnCFT_SalesMobile: TMenuItem;
    mnRND: TMenuItem;
    mnRND_ApprovalIS: TMenuItem;
    mnRND_ApprovalIS_PM: TMenuItem;
    N56: TMenuItem;
    mnCFT_DaftarIS: TMenuItem;
    mnMst_KelompokBrg: TMenuItem;
    mnListrik: TMenuItem;
    mnUpah: TMenuItem;
    N57: TMenuItem;
    mnPRD_InputDownTime: TMenuItem;
    N58: TMenuItem;
    mnWHL_ST_PB: TMenuItem;
    N59: TMenuItem;
    mnPRD_InputHasilProduksiTimb: TMenuItem;
    N60: TMenuItem;
    mnRND_CostCalculation: TMenuItem;
    Button12: TButton;
    mnACC: TMenuItem;
    mnACC_ImportPiutang: TMenuItem;
    mnACC_PiutangCustomer: TMenuItem;
    N61: TMenuItem;
    mnMKT_ListPiutangCustomer: TMenuItem;
    mnKalkulasiHPP: TMenuItem;
    mnACC_COA: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    mnACC_KasBank: TMenuItem;
    mnACC_PengeluaranKas: TMenuItem;
    mnACC_PenerimaanKas: TMenuItem;
    N64: TMenuItem;
    mnKC_DeptTerkait: TMenuItem;
    mnKC_AtasanDeptTerkait: TMenuItem;
    mnKC_GM: TMenuItem;
    N65: TMenuItem;
    mnRND_mstFormula: TMenuItem;
    mnKC_ListSurvey: TMenuItem;
    mnHRD: TMenuItem;
    mnHRD_DataKaryawan: TMenuItem;
    mnHRD_ImportFinger: TMenuItem;
    mnOperasional: TMenuItem;
    mnOpr_Improvement: TMenuItem;
    N66: TMenuItem;
    mnHRD_DataAbsen: TMenuItem;
    N67: TMenuItem;
    mnHRD_DasarJadwal: TMenuItem;
    N68: TMenuItem;
    mnRND_LembarPermintaan: TMenuItem;
    mnRND_ApprovalJurnal: TMenuItem;
    mnRND_DaftarJurnal: TMenuItem;
    mnACC_HPPAct: TMenuItem;
    N69: TMenuItem;
    mnPUR_HargaPasar: TMenuItem;
    N70: TMenuItem;
    mnRND_DaftarCP: TMenuItem;
    N71: TMenuItem;
    mnPPIC_PemakaianBahan: TMenuItem;
    N72: TMenuItem;
    mnRND_Project: TMenuItem;
    mnRND_InputProject: TMenuItem;
    mnRpt_All: TMenuItem;
    mnRpt_Excel: TMenuItem;
    mnPRD_LHP: TMenuItem;
    ImageList3: TImageList;
    mnACC_TrsAntarAkun: TMenuItem;
    N73: TMenuItem;
    mnACC_Pembelian: TMenuItem;
    mnACC_Penjualan: TMenuItem;
    mnACC_Invoice: TMenuItem;
    mnACC_PembayaranInvoice: TMenuItem;
    mnACC_PembayaranPembelian: TMenuItem;
    mnACC_VerifikasiAkunMasterBarang: TMenuItem;
    N74: TMenuItem;
    mnACC_SettingDefaultAkun: TMenuItem;
    mnPUR_AppPPAtasan: TMenuItem;
    mnPUR_AppPPGM: TMenuItem;
    ReturPembelian1: TMenuItem;
    N75: TMenuItem;
    N36: TMenuItem;
    mnRpt_Akunting: TMenuItem;
    mnACC_InvoicePembelian: TMenuItem;
    N76: TMenuItem;
    mnTaxMenu: TMenuItem;
    mnTaxType: TMenuItem;
    mnTaxGroup: TMenuItem;
    N77: TMenuItem;
    mnPPIC_AppDiluarBOM: TMenuItem;
    N78: TMenuItem;
    mnRpt_Produksi: TMenuItem;
    mnACC_DaftarJurnal: TMenuItem;
    mnACC_SummaryBalance: TMenuItem;
    N79: TMenuItem;
    mnACC_PengeluaranBank: TMenuItem;
    mnACC_PenerimaanBank: TMenuItem;
    N80: TMenuItem;
    mnACC_SaldoAwal: TMenuItem;
    mnACC_SAAkun: TMenuItem;
    N81: TMenuItem;
    procedure mnStokAwalClick(Sender: TObject);
    procedure mnKalkulasiUlangClick(Sender: TObject);
    procedure mnWHLTrsMasukClick(Sender: TObject);
    procedure mnPPICTrsKeluarClick(Sender: TObject);
    procedure mnUserClick(Sender: TObject);
    procedure mnPPICTrsMutasiClick(Sender: TObject);
    procedure mnMstBrgClick(Sender: TObject);
    procedure mnWHLTrsMutasiClick(Sender: TObject);
    procedure mnKeluarClick(Sender: TObject);
    procedure mnSetWewenangClick(Sender: TObject);
    procedure mnWHLTrsKeluarClick(Sender: TObject);
    procedure mnCFTTrsKeluarClick(Sender: TObject);
    procedure mnLogOffClick(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
    procedure cxCmbDeptPropertiesChange(Sender: TObject);
    procedure mnPPICPembatalanTrsMutasiClick(Sender: TObject);
    procedure mnWHLKirimBrgClick(Sender: TObject);
    procedure mnPPICTrsMasukClick(Sender: TObject);
    procedure mnCFTTrsMutasiClick(Sender: TObject);
    procedure mnWHLTrsKoreksiClick(Sender: TObject);
    procedure mnWHLApprovalSOClick(Sender: TObject);
    procedure mnWHLAdjustSOClick(Sender: TObject);
    procedure mnUbahPasswordClick(Sender: TObject);
    procedure mnStokBrgClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnEditTambahBrgClick(Sender: TObject);
    procedure mnQACTrsMasukClick(Sender: TObject);
    procedure mnQACTrsKeluarClick(Sender: TObject);
    procedure mnQACTrsMutasiClick(Sender: TObject);
    procedure mnMstKtgrClick(Sender: TObject);
    procedure mnBtlTransClick(Sender: TObject);
    procedure mnCFT_SOClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure mnWHL_SPMBClick(Sender: TObject);
    procedure mnCFT_SJClick(Sender: TObject);
    procedure mnCFT_SOTClick(Sender: TObject);
    procedure mnPPICTrsSpkPotongClick(Sender: TObject);
    procedure mnCFT_cetakSJClick(Sender: TObject);
    procedure mnPPIC_AppSpkPotClick(Sender: TObject);
    procedure mnCFT_spmbClick(Sender: TObject);
    procedure mnPPIC_SOTerbukaClick(Sender: TObject);
    procedure mnPPIC_MOClick(Sender: TObject);
    procedure mnMstCustClick(Sender: TObject);
    procedure mnPPIC_MutasiSOClick(Sender: TObject);
    procedure mnPPIC_OtoMutasiClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure mnPPIC_TrsSPKAssemblyClick(Sender: TObject);
    procedure mnQAC_mstFormulaClick(Sender: TObject);
    procedure mnPRD_mstMesinClick(Sender: TObject);
    procedure mnPRD_ApprovalSPKClick(Sender: TObject);
    procedure mnPPIC_MstScheduleClick(Sender: TObject);
    procedure mnPembINClick(Sender: TObject);
    procedure mnPembOUTClick(Sender: TObject);
    procedure mnPembKSClick(Sender: TObject);
    procedure mnWHL_PnrimaSPKAssemClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure mnCFT_ReturPenjClick(Sender: TObject);
    procedure mnPPIC_CetakSPKPotClick(Sender: TObject);
    procedure mnPPIC_AppSpkPotMgrClick(Sender: TObject);
    procedure mnPPIC_TrsSPKGilingClick(Sender: TObject);
    procedure mnPUR_mstSuppClick(Sender: TObject);
    procedure mnQAC_AppSpkGilClick(Sender: TObject);
    procedure mnPPIC_CetakSPKAssemClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure mnCFT_TutupSOClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure mnWHL_ApprovalTrsKeluarClick(Sender: TObject);
    procedure mnPUR_POClick(Sender: TObject);
    procedure mnPUR_SPBBClick(Sender: TObject);
    procedure mnQAC_LKMClick(Sender: TObject);
    procedure mnPUR_PPClick(Sender: TObject);
    procedure mnPUR_PenawaranSuppClick(Sender: TObject);
    procedure mnPUR_DaftarPenawaranSuppClick(Sender: TObject);
    procedure mnPPIC_SOMTSClick(Sender: TObject);
    procedure mnPPIC_TutupSOMTSClick(Sender: TObject);
    procedure mnPRD_MasterScheduleClick(Sender: TObject);
    procedure mnQAC_AppLKM1Click(Sender: TObject);
    procedure mnQAC_AppLKM2Click(Sender: TObject);
    procedure mnPRD_HslPrdDetClick(Sender: TObject);
    procedure mnCFT_AppRetPenjClick(Sender: TObject);
    procedure mnPUR_AppPOClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure mnPUR_SettingKursClick(Sender: TObject);
    procedure mnPUR_MstAlmKirimClick(Sender: TObject);
    procedure mnPUR_CetakPOClick(Sender: TObject);
    procedure mnPUR_ViewSuppClick(Sender: TObject);
    procedure mnCCR_InputCCRClick(Sender: TObject);
    procedure mnPUR_POTerbukaClick(Sender: TObject);
    procedure mnCCR_DaftarCCRClick(Sender: TObject);
    procedure mnCCR_DeptTerkaitClick(Sender: TObject);
    procedure mnCCR_MgrTerkaitClick(Sender: TObject);
    procedure mnCCR_MgrQacClick(Sender: TObject);
    procedure mnCCR_Dir1Click(Sender: TObject);
    procedure mnCCR_Dir2Click(Sender: TObject);
    procedure mnCCR_PenutupanCCRClick(Sender: TObject);
    procedure mnCFT_ReturAdmClick(Sender: TObject);
    procedure mnCFT_ReturNonAdmClick(Sender: TObject);
    procedure mnQAC_TindakLanjutDeptClick(Sender: TObject);
    procedure mnPEL_TrsPenerimaanClick(Sender: TObject);
    procedure mnCFT_SJUClick(Sender: TObject);
    procedure mnCFT_AppSJUClick(Sender: TObject);
    procedure mnSPMBPelClick(Sender: TObject);
    procedure mnCFT_MutasiOngkosClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure mnQAC_BrowseFormulaClick(Sender: TObject);
    procedure mnLKM_InputLKMClick(Sender: TObject);
    procedure mnLKM_DaftarLKMClick(Sender: TObject);
    procedure mnPPIC_MO2Click(Sender: TObject);
    procedure mnPEL_TrsPOClick(Sender: TObject);
    procedure mnWHL_MtsPlusMinusClick(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure mnTutupSOPelClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure mnMonPeletanClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure mnPel_PenrmSJPelClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure ReturPembelian3Click(Sender: TObject);
    procedure mnPRD_BPPBClick(Sender: TObject);
    procedure mnPRD_SettingBoronganClick(Sender: TObject);
    procedure mnAppReturPembClick(Sender: TObject);
    procedure mnWHL_AppPengQACClick(Sender: TObject);
    procedure mnPPIC_EditBomSPKClick(Sender: TObject);
    procedure mnSettingFotoBrgClick(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure mnPPIC_DownloadMstBrgClick(Sender: TObject);
    procedure mnWHL_CetakKirimConsumClick(Sender: TObject);
    procedure mnPUR_POJasaClick(Sender: TObject);
    procedure mnPRD_StokBrgConsumClick(Sender: TObject);
    procedure mnPPIC_HistoryPengBBClick(Sender: TObject);
    procedure mnKalkulasiUlangPerKodeClick(Sender: TObject);
    procedure mnPPIC_SOMTSGilingClick(Sender: TObject);
    procedure mnPUR_CetakPOJasaClick(Sender: TObject);
    procedure mnPUR_AppPOJasaClick(Sender: TObject);
    procedure mnPOE_AppPenambahanBOMClick(Sender: TObject);
    procedure mnPOE_MutBrgPeletanClick(Sender: TObject);
    procedure mnQAC_TrialClick(Sender: TObject);
    procedure mnCFT_SPBBReturClick(Sender: TObject);
    procedure mnWHL_ApprovalLKMClick(Sender: TObject);
    procedure mnWHL_SettingLokasiGridClick(Sender: TObject);
    procedure mnWHL_InsentifSopirClick(Sender: TObject);
    procedure mnQAC_LogBookDesignClick(Sender: TObject);
    procedure mnPRD_MonitorSPKClick(Sender: TObject);
    procedure mnRev_PermintaanClick(Sender: TObject);
    procedure mnRev_ApprovalClick(Sender: TObject);
    procedure mnRev_PenutupanClick(Sender: TObject);
    procedure mnCFT_AppPenghapusanSPMBClick(Sender: TObject);
    procedure mnPRD_MonitorSPKBahanClick(Sender: TObject);
    procedure mnPRD_MonitorInputHPClick(Sender: TObject);
    procedure mnWHL_CetakDisposisiMBClick(Sender: TObject);
    procedure mnPRD_SerahTerimaSPKClick(Sender: TObject);
    procedure mnMonitoringKaryawanClick(Sender: TObject);
    procedure mnQAC_ApprovalTrialClick(Sender: TObject);
    procedure mnPRD_MasterOperatorClick(Sender: TObject);
    procedure mnPRD_MasterTargetClick(Sender: TObject);
    procedure mnPRD_MonitorTargetClick(Sender: TObject);
    procedure mnPRD_MutBrgPelClick(Sender: TObject);
    procedure mnPUR_PenerimaanSamplesClick(Sender: TObject);
    procedure mnPRD_InfoBengkelClick(Sender: TObject);
    procedure mnCFT_ApprovalDisposisiClick(Sender: TObject);
    procedure mnCFT_DaftarDisposisiClick(Sender: TObject);
    procedure mnWHL_BarangSlowMovingClick(Sender: TObject);
    procedure mnRekapCIOClick(Sender: TObject);
    procedure mnPRD_JamMesinClick(Sender: TObject);
    procedure mnPPIC_FOBJClick(Sender: TObject);
    procedure mnPUR_ApprovalFOBJClick(Sender: TObject);
    procedure mnQAC_ApprovalTrialAwalClick(Sender: TObject);
    procedure mnPUR_MonitoringFOBJClick(Sender: TObject);
    procedure mnCFT_MutasiOngkosKeluarClick(Sender: TObject);
    procedure mnQAC_FOBJClick(Sender: TObject);
    procedure mnWHL_ApprovalMutasiGKARClick(Sender: TObject);
    procedure mnQAC_HasilPercobaanClick(Sender: TObject);
    function CekTabOpen(sCaption: string): Boolean;
    procedure mnUnitClick(Sender: TObject);
    procedure mnUnitSetClick(Sender: TObject);
    procedure mnQuotetionClick(Sender: TObject);
    procedure mnKonfirmasiPOClick(Sender: TObject);
    procedure mnCFT_InquirySheetClick(Sender: TObject);
    procedure mnQAC_ApprovalISClick(Sender: TObject);
    procedure mnMstSalesClick(Sender: TObject);
    procedure mnCFT_SalesMobileClick(Sender: TObject);
    procedure mnRND_ApprovalISClick(Sender: TObject);
    procedure mnRND_ApprovalIS_PMClick(Sender: TObject);
    procedure mnCFT_DaftarISClick(Sender: TObject);
    procedure mnListrikClick(Sender: TObject);
    procedure mnUpahClick(Sender: TObject);
    procedure mnPRD_InputDownTimeClick(Sender: TObject);
    procedure mnWHL_ST_PBClick(Sender: TObject);
    procedure mnPRD_InputHasilProduksiTimbClick(Sender: TObject);
    procedure mnRND_CostCalculationClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure mnMKT_ListPiutangCustomerClick(Sender: TObject);
    procedure mnACC_ImportPiutangClick(Sender: TObject);
    procedure mnACC_PiutangCustomerClick(Sender: TObject);
    procedure mnKalkulasiHPPClick(Sender: TObject);
    procedure mnACC_COAClick(Sender: TObject);
    procedure mnKC_InputKCClick(Sender: TObject);
    procedure mnKC_DaftarKomplainClick(Sender: TObject);
    procedure mnKC_DeptTerkaitClick(Sender: TObject);
    procedure mnACC_PengeluaranKasClick(Sender: TObject);
    procedure mnACC_TrsAntarAkunClick(Sender: TObject);
    procedure mnACC_PenerimaanKasClick(Sender: TObject);
    procedure mnKC_AtasanDeptTerkaitClick(Sender: TObject);
    procedure mnKC_GMClick(Sender: TObject);
    procedure mnRND_mstFormulaClick(Sender: TObject);
    procedure mnKC_ListSurveyClick(Sender: TObject);
    procedure mnHRD_DataKaryawanClick(Sender: TObject);
    procedure mnHRD_ImportFingerClick(Sender: TObject);
    procedure mnOpr_ImprovementClick(Sender: TObject);
    procedure mnHRD_DataAbsenClick(Sender: TObject);
    procedure mnHRD_DasarJadwalClick(Sender: TObject);
    procedure mnRND_LembarPermintaanClick(Sender: TObject);
    procedure mnRND_ApprovalJurnalClick(Sender: TObject);
    procedure mnRND_DaftarJurnalClick(Sender: TObject);
    procedure mnACC_HPPActClick(Sender: TObject);
    procedure mnPUR_HargaPasarClick(Sender: TObject);
    procedure mnRND_DaftarCPClick(Sender: TObject);
    procedure mnPPIC_PemakaianBahanClick(Sender: TObject);
    procedure mnRND_ProjectClick(Sender: TObject);
    procedure mnRND_InputProjectClick(Sender: TObject);
    procedure mnRpt_AllClick(Sender: TObject);
    procedure mnRpt_ExcelClick(Sender: TObject);
    procedure mnPRD_LHPClick(Sender: TObject);
    procedure mnACC_PembayaranPembelianClick(Sender: TObject);
    procedure mnACC_InvoiceClick(Sender: TObject);
    procedure mnACC_VerifikasiAkunMasterBarangClick(Sender: TObject);
    procedure mnACC_SettingDefaultAkunClick(Sender: TObject);
    procedure mnPUR_AppPPAtasanClick(Sender: TObject);
    procedure mnPUR_AppPPGMClick(Sender: TObject);
    procedure ReturPembelian1Click(Sender: TObject);
    procedure mnACC_InvoicePembelianClick(Sender: TObject);
    procedure mnRpt_AkuntingClick(Sender: TObject);
    procedure mnTaxTypeClick(Sender: TObject);
    procedure mnTaxGroupClick(Sender: TObject);
    procedure mnPPIC_AppDiluarBOMClick(Sender: TObject);
    procedure mnRpt_ProduksiClick(Sender: TObject);
    procedure mnACC_DaftarJurnalClick(Sender: TObject);
    procedure mnACC_SummaryBalanceClick(Sender: TObject);
    procedure mnACC_PenerimaanBankClick(Sender: TObject);
    procedure mnACC_PengeluaranBankClick(Sender: TObject);
    procedure mnACC_SAAkunClick(Sender: TObject);
  private
    c: Integer;
    sText: string;
    procedure ToggleNumLock;
    procedure PGChange(Sender: TObject);
  public
    procedure HideAllMenu(flag: boolean);
    procedure SettingWewenang;
    procedure ToggleMainPage;
    procedure CloseTab(Frm: TForm; Sender: TObject);

  end;

var
  frmUtama: TfrmUtama;
  MainHook : HHOOK;
  Wnd1,Wnd2 : array[0..255] of char;

implementation

uses unFrmSettingSA, unFrmKalkulasiStok, unFrmTrsMasuk, unFrmTrsKeluar,
  unFrmMstUser, unFrmTransGdg, unFrmMstBarang, unFrmSetWwn, unAplikasi,
  unDm, unTools, unFrmLogin, unFrmTrsPembatalanMut, unFrmSO,
  unFrmApprovalSO, unFrmUbahPassword, unFrmStokMstBrg, unFrmLaporan,
  unFrmMstBrg, unFrmMstKtgr, unFrmBtlTrans, unFrmSalesOrder, unFrmCariSO,
  unFrmSPMB, unFrmSJ, unFrmSOTerbuka, unFrmTrsSPKPotong, unFrmCetakSJ,
  unFrmApprovalSpkPot, unFrmKartuStok, unFrmMO, unFrmMstCust,
  unFrmMutasiStokSO, unFrmOtorisasiMutasiCFT, unFrmTrsSPKAssembly,
  unFrmMstFormula, unFrmMstMesin, unFrmApprovalSPK, unFrmMasterSchedule,
  unFrmPembatalan, unFrmTrsSPKAssemblyMsk, unFrmTrsRetur,
  unFrmCetakSPKPotong, unFrmTrsSPKGiling, VistaAltFixUnit,
  unFrmMstSupplier, unFrmApprovalSpkGil, unFrmTutupSOTerbuka,
  unFrmApprovalTrsKeluar, unFrmPurchaseOrder, unFrmSPBB, unFrmLKM,
  unFrmTrsFOBJ, unFrmTrsPenawaran, unFrmDaftarPenawaranSupp, unFrmSO_MTS,
  unFrmMasterSchedulePRD, unFrmHslPrdDetail, unFrmApprovalRetPenj,
  unFrmApprovalPO, unFrmSettingKurs, unFrmAlamatKirim, unFrmTrsPenawaran2,
  unFrmCetakPO, unFrmViewMstSupplier, unFrmCCR, unFrmPOTerbuka,
  unFrmDaftarRK, unFrmTrsRetur3, unFrmTrsRetur2, unFrmPenerimaanPlt,
  unFrmTrsSJU, unFrmApprovalSJU, unFrmBrowseFormula, unFrmMO2,
  unFrmProsesLKM, unFrmPurchaseOrderPel, unFrmTrsMutasiPlusMinusPeletan,
  unMonPeletan, unFrmPenerimaanSJPeletan, unFrmTrsReturPembelian,
  unFrmTrsBPPB_PRD, unFrmSettingBorongan, unFrmAppReturPembelian,
  unFrmApprovalPengQAC, unFrmEditBomSPK, unFrmSettingFotoBrg,
  unFrmCetakKirimConsum, unFrmPurchaseOrderJasa, unFrmLapUmum,
  unFrmStokBrgConsumable, unFrmHistoryPengBB, unFrmKalkulasiStokPerKode,
  unFrmSO_MTSGiling, unFrmTrial, unFrmApprovalPenambahanBOM,
  unFrmMutBrgPelHslPrd, unFrmSPBBRetur, unFrmApprovalLKM,
  unFrmSettingLokasiBarang, unFrmTrsInsentifSopir, unFrmSalesOrder_NEW,
  unFrmLogBogDesign, unFrmMonitorSPKPrd, unFrmPermintaanRevisi,
  unFrmAppPermintaanRevisi, unFrmPenutupanRevTrans,
  unFrmAppPermintaanHapusSpmb, unFrmMonitorSPKPrd2,
  unFrmMonitorInputHasilProduksi, unFrmSerahTerimaSPK,
  unFrmMonitoringKaryawan, unFrmApprovalTrial, unFrmMstOperator,
  unFrmMstTarget, unFrmMonitorTargetSPVPRD, unFrmSPBBSamples,
  unFrmInformasiPerbaikanBengkel, unFrmApprovalDisposisi,
  unFrmDaftarDisposisi, unFrmBarangSlowMoving, unFrmRekapCIO,
  unFrmMonitorJamMesin_Listrik, unFrmTrsFOBJ_Dept, unFrmApprovalFOBJ,
  unFrmApprovalTrialAwal, unFrmMonitoringFOBJ, unFrmSPMB_NEW,
  unFrmLogBogDesign_NEW, unFrmApprovalMutasiGKAR, unFrmHasilPercobaan,
  unMasterItem, unFrmTplMaster2, unFrmTplMaster02, unFrmMstBrg_KTG,
  unFrmUnit, unFrmUnitSet, unFrmQuotetion, unFrmKonfirmPO,
  unFrmInquirySheet, unFrmApprovalIS, unFrmSales, unFrmSalesMobile,
  unFrmIS, unFrmDaftarIS, unFrmListrik, unFrmUpah, unFrmDownTime,
  unFrmST_PB, unFrmInputHasilProdTimb, unCostCalculation,
  unFrmLapDetBarangSPK, unListPiutangCustomer, unImportPiutangCustomer,
  uPiutangCust, unFrmKalkulasiHPP, unFrmMstCoa, unFrmPembayaranKas2,
  unFrmAkun2Akun, unFrmPenerimaanKas2, unFrmListSurveyKepuasan,
  unFrmMstKaryawan, unFrmImportFinger, unFrmAfterSales, unFrmDaftarRK2,
  unFrmImportAbsen, unFrmImprovement, unFrmDataAbsen, unFrmDasarJadwal,
  unFrmLembarPermintaan, unFrmApprovalJurnal, unFrmDaftarJurnalKerja,
  unFrmHPP, unFrmHargaPasaran, unFrmDaftarControlPlan, unFrmPemakainBahan,
  unFrmDaftarControlPlan1, unFrmTimeline, unFrmInputProject, unFrmLapExcel,
  unFrmDaftarCost, unFrmLHP, unFrmPembayaranPembelian, unFrmInvoice,
  unFrmVerifikasiMasterBarang, unFrmSettingDefaultAkun,
  unFrmApprovalPermintaanPembelian, unFrmTrsPermintaanPembelian,
  unFrmInvoicePembelian, unFrmLaporanAcc, unFrmTaxType, unFrmTaxGroup,
  unFrmPurchaseOrderKTG, unFrmDaftarPP, unFrmDaftarPO, unFrmAppPenambahanBahanDIluarBOM, unFrmLaporanProduksi, unFrmDaftarPenerimaanKas, unFrmDaftarPengeluaranKas, unFrmDaftarJurnalUmum, unFrmDaftarJurnal, unSummaryBalance, unFrmDaftarBankMasuk, unFrmDaftarPengeluaranBank, unFrmDaftarInvoicePembelian, unFrmSettingDefaultAkun2, unFrmNilaiTukar, unFrmDaftarSI, unFrmDaftarPembayaranPembelian, unFrmSaldoAwalAkun, unFrmDaftarSupplier, unFrmDaftarCustomer, unFrmDaftarSO, unFrmDaftarQuotation, unDaftarKPO, unFrmDaftarMTS, unFrmDaftarPenerimaanBarang, unFrmKartuStock;

{$R *.dfm}
{$R windowsxp.RES}

function KeyboardHook(Code: Integer; wParam : WPARAM;
  lParam : LPARAM): Longint; stdcall;
var
  Buffer : TEventMsg;

  procedure TranslateKey(Key : Byte);
  begin
    if (Key <> VK_LBUTTON) and (Key <> VK_RBUTTON) then
    begin
      GetWindowText(GetForegroundWindow, Wnd2, SizeOf(Wnd2));
      if wnd1 <> wnd2 then
    begin
      frmUtama.Memo.Lines.Add('Window: ' + wnd2);
      Wnd1 := Wnd2;
    end;
    end;
    with frmUtama do
    begin
      case Key of
        VK_RETURN      :    Memo.Lines.Add('[Enter]');
        VK_BACK        :    Memo.Lines.Add('[Backspace]');
        VK_ESCAPE      :    Memo.Lines.Add('[Esc]');
        VK_SHIFT       :    Memo.Lines.Add('[Shift]');
        VK_MENU        :    Memo.Lines.Add('[Alt]');
        VK_CONTROL     :    Memo.Lines.Add('[Ctrl]');
        VK_DELETE      :    Memo.Lines.Add('[Delete]');
        VK_SPACE       :    Memo.Text := Memo.Text + ' ';//Memo.Lines.Add(' ');
        VK_MULTIPLY    :    Memo.Text := Memo.Text + '*';
        VK_ADD         :    Memo.Text := Memo.Text + '+';
        VK_SUBTRACT    :    Memo.Text := Memo.Text + '-';
        VK_DECIMAL     :    Memo.Text := Memo.Text + '.';
        VK_DIVIDE      :    Memo.Text := Memo.Text + '/';
        188            :    Memo.Text := Memo.Text + ',';
        192            :    Memo.Text := Memo.Text + '`';
        222            :    Memo.Text := Memo.Text + ''+Chr(39)+'';
        220            :    Memo.Text := Memo.Text + '';
        219            :    Memo.Text := Memo.Text + '[';
        221            :    Memo.Text := Memo.Text + ']';
        186            :    Memo.Text := Memo.Text + ';';
        191            :    Memo.Text := Memo.Text + '/';
        190            :    Memo.Text := Memo.Text + '.';
        44             :    Memo.Text := Memo.Text + ',';
        187            :    Memo.Text := Memo.Text + '=';
        189            :    Memo.Text := Memo.Text + '-';
        65             :    Memo.Text := Memo.Text + 'a';
        66             :    Memo.Text := Memo.Text + 'b';
        67             :    Memo.Text := Memo.Text + 'c';
        68             :    Memo.Text := Memo.Text + 'd';
        69             :    Memo.Text := Memo.Text + 'e';
        70             :    Memo.Text := Memo.Text + 'f';
        71             :    Memo.Text := Memo.Text + 'g';
        72             :    Memo.Text := Memo.Text + 'h';
        73             :    Memo.Text := Memo.Text + 'i';
        74             :    Memo.Text := Memo.Text + 'j';
        75             :    Memo.Text := Memo.Text + 'k';
        76             :    Memo.Text := Memo.Text + 'l';
        77             :    Memo.Text := Memo.Text + 'm';
        78             :    Memo.Text := Memo.Text + 'n';
        79             :    Memo.Text := Memo.Text + 'o';
        80             :    Memo.Text := Memo.Text + 'p';
        81             :    Memo.Text := Memo.Text + 'q';
        82             :    Memo.Text := Memo.Text + 'r';
        83             :    Memo.Text := Memo.Text + 's';
        84             :    Memo.Text := Memo.Text + 't';
        85             :    Memo.Text := Memo.Text + 'u';
        86             :    Memo.Text := Memo.Text + 'v';
        87             :    Memo.Text := Memo.Text + 'w';
        88             :    Memo.Text := Memo.Text + 'x';
        89             :    Memo.Text := Memo.Text + 'y';
        90             :    Memo.Text := Memo.Text + 'z';
        { Numpad Keys }
        VK_NUMPAD0     :    Memo.Text := Memo.Text + '0';
        VK_NUMPAD1     :    Memo.Text := Memo.Text + '1';
        VK_NUMPAD2     :    Memo.Text := Memo.Text + '2';
        VK_NUMPAD3     :    Memo.Text := Memo.Text + '3';
        VK_NUMPAD4     :    Memo.Text := Memo.Text + '4';
        VK_NUMPAD5     :    Memo.Text := Memo.Text + '5';
        VK_NUMPAD6     :    Memo.Text := Memo.Text + '6';
        VK_NUMPAD7     :    Memo.Text := Memo.Text + '7';
        VK_NUMPAD8     :    Memo.Text := Memo.Text + '8';
        VK_NUMPAD9     :    Memo.Text := Memo.Text + '9';
        { Numbers }
        48             :    Memo.Text := Memo.Text + '0';
        49             :    Memo.Text := Memo.Text + '1';
        50             :    Memo.Text := Memo.Text + '2';
        51             :    Memo.Text := Memo.Text + '3';
        52             :    Memo.Text := Memo.Text + '4';
        53             :    Memo.Text := Memo.Text + '5';
        54             :    Memo.Text := Memo.Text + '6';
        55             :    Memo.Text := Memo.Text + '7';
        56             :    Memo.Text := Memo.Text + '8';
        57             :    Memo.Text := Memo.Text + '9';
        //to capture other keys you must uncomment the line below:
        //else Memo.Text := Memo.Text + Chr(Key);
      end;
    end;
  end;

begin
  Result := 0;
  Buffer := PEventMsg(lParam)^;

  if Buffer.Message = WM_KEYUP then
  begin
    TranslateKey(Buffer.paramL);
  end;
end;

procedure TfrmUtama.mnStokAwalClick(Sender: TObject);
var
  f: TfrmSettingSA;
begin
  f := TfrmSettingSA.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnKalkulasiUlangClick(Sender: TObject);
var
  f: TfrmKalkulasiStok;
begin
  f := TfrmKalkulasiStok.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnWHLTrsMasukClick(Sender: TObject);
var
  f: TfrmTrsMasuk;
begin
  f := TfrmTrsMasuk.Create(Self);
  f.UserDept := 'WHL';
  f.Show;
end;

procedure TfrmUtama.mnPPICTrsKeluarClick(Sender: TObject);
var
  f: TfrmTrsKeluar;
begin
  f := TfrmTrsKeluar.Create(Self);
  f.UserDept := 'PPIC';
  f.Show;
end;

procedure TfrmUtama.mnUserClick(Sender: TObject);
var
  f: TfrmMstUser;
begin
  f := TfrmMstUser.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPICTrsMutasiClick(Sender: TObject);
var
  f: TfrmTransGdg;
begin
  f := TfrmTransGdg.Create(Self);
  if Aplikasi.Cabang = 'SBY' then
    f.UserDept := 'PPIC';
  f.Show;
end;

procedure TfrmUtama.mnMstBrgClick(Sender: TObject);
var
  //f: TfrmMstrItem;
  f: TFrmMasterItem;
  ts : TcxTabSheet ;
begin
  if not CekTabOpen('Master Barang') then begin
    //f := TfrmMstrItem.Create(Self);
    f := TfrmMasterItem.Create(Self);
    ts := TcxTabSheet.Create(self);
    ts.PageControl := pgMain;
    ts.Caption :='Master Barang';
    pgMain.ActivePage := ts;
    f.Parent := ts;
    f.Show;
  end;
end;

procedure TfrmUtama.mnWHLTrsMutasiClick(Sender: TObject);
var
  f: TfrmTransGdg;
begin
  f := TfrmTransGdg.Create(Self);
  f.UserDept := 'WHL';
  f.Show;
end;

procedure TfrmUtama.mnKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmUtama.mnSetWewenangClick(Sender: TObject);
var
  f: TfrmSetWwn;
begin
  f := TfrmSetWwn.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnWHLTrsKeluarClick(Sender: TObject);
var
  f: TfrmTrsKeluar;
begin
  f := TfrmTrsKeluar.Create(Self);
  f.UserDept := 'WHL';
  f.Show;
end;

procedure TfrmUtama.mnCFTTrsKeluarClick(Sender: TObject);
var
  f: TfrmTrsKeluar;
begin
  f := TfrmTrsKeluar.Create(Self);
  f.Show;
end;

procedure TFrmUtama.HideAllMenu(flag: boolean);
var
  i: integer;
begin
  for i := 0 to frmUtama.ComponentCount - 1 do begin
    if Components[i].ClassName = 'TMenuItem' then
      (Components[i] as TMenuItem).Visible := Not Flag;
    if Components[i].ClassName = 'TToolButton' then
      if Components[i].Name = 'tbtnBrowseMst' then
        (Components[i] as TToolButton).Visible := False
      else
        (Components[i] as TToolButton).Visible := Not Flag;
  end;
end;

procedure TfrmUtama.SettingWewenang;
var
  q: TZQuery;
  i: integer;
  namaKomponen: string;
  f: Boolean;
begin

  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s''',
    [Aplikasi.NamaUser]);
  for i := 0 to frmUtama.ComponentCount - 1 do begin

    namaKomponen := Trim(frmUtama.Components[i].Name);

    if q.Locate('nm_comp', namaKomponen,[]) then begin
      f := false;
      if q.FieldByName('wwn').AsInteger = 1 then
        f := true;
      (frmUtama.Components[i] as TMenuItem).Visible := f;
      q.First;
    end
    else begin
      if (namaKomponen = 'mnLogOff') or (namaKomponen = 'mnKeluar')
        then continue;

      if aplikasi.NamaUser = 'ADMIN' then begin
        if (namaKomponen = 'mnCFT_SO') then continue;
        if (namaKomponen = 'mnWHL_SPMB') then Continue;
        if (namaKomponen = 'mnCFT_SJ') then Continue;
        if (namaKomponen = 'mnCFT_SOT') then Continue;
        if (namaKomponen = 'mnPPICTrsSpkPotong') then Continue;
        if (namaKomponen = 'mnCFT_cetakSJ') then Continue;
        if (namaKomponen = 'mnPPIC_AppSpkPot') then Continue;
        if (namaKomponen = 'mnCFT_spmb') then Continue;
        if (namaKomponen = 'mnPembatalan') then Continue;
        if (namaKomponen = 'mnPembIN') then Continue;
        if (namaKomponen = 'mnPembOUT') then Continue;
        if (namaKomponen = 'mnPembKS') then Continue;
      end;

      if frmUtama.Components[i].ClassType = TMenuItem then
        (frmUtama.Components[i] as TMenuItem).Visible := False;
    end;
      
  end;
  q.Close; q := nil;

  q := OpenRS('SELECT * FROM tbl_oto_mutasi WHERE user = ''%s'' ' +
    'AND tanggal = ''%s'' AND f_selesai = 0',
    [Aplikasi.NamaUser,
     Aplikasi.TanggalString
    ]
  );

  if not q.IsEmpty then begin
    mnPPIC.Visible := True;
    mnPPICTrsMutasi.Visible := True;
  end;
  q.Close;

  mnSistem.Visible := True;
  if aplikasi.NamaUser = 'ADMIN' then
    mnBtlTrans.Visible := True;

  Self.Menu := mainMenu;
end;


procedure TfrmUtama.mnLogOffClick(Sender: TObject);
var
  f: TFrmLogin;
begin
  aplikasi.log_('LOGOFF');
  Aplikasi.NamaUser := '';
  Aplikasi.UserDept := '';
  Self.Menu := nil;
  HideAllMenu(True);
  Refresh;
  f := TfrmLogin.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.tmrTimer(Sender: TObject);
begin
  stsBar.Panels[0].Text := FormatDateTime('dd mmm yyyy, hh:mm:ss', Now);
end;

procedure TfrmUtama.cxCmbDeptPropertiesChange(Sender: TObject);
begin
  aplikasi.UserDept := cxCmbDept.Text;
  stsBar.Panels[2].Text := Aplikasi.UserDept;
end;

procedure TfrmUtama.mnPPICPembatalanTrsMutasiClick(Sender: TObject);
var
  f: TfrmTrsPembatalanMut;
begin
  f := TfrmTrsPembatalanMut.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHLKirimBrgClick(Sender: TObject);
var
  f: TfrmTrsKeluar;
begin
  f := TfrmTrsKeluar.Create(Self);
  f.Jenis := 'kirim-barang';
  f.Show;
end;

procedure TfrmUtama.mnPPICTrsMasukClick(Sender: TObject);
var
  f: TfrmTrsMasuk;
begin
  f := TfrmTrsMasuk.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFTTrsMutasiClick(Sender: TObject);
var
  {
  f: TfrmTransGdg;
  ts: TcxTabSheet;
  }
  f: TFrmTplMaster02;
begin
  {
  if not CekTabOpen('Mutasi Antar Gudang') then begin
  f := TfrmTransGdg.Create(Self);
  ts := TcxTabSheet.Create(self);
  ts.PageControl := pgMain;
  ts.Caption :='Mutasi Antar Gudang';
  pgMain.ActivePage := ts;
  f.Parent := ts;
  f.Show;
  end;
  }
  f := TFrmTplMaster02.Create(Self);
  f.ManualDock(pgMain, pgMain, alClient);
  f.Show;
end;

procedure TfrmUtama.mnWHLTrsKoreksiClick(Sender: TObject);
var
  f: TfrmSO;
begin
  f := TfrmSO.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHLApprovalSOClick(Sender: TObject);
var
  f: TfrmApprovalSO;
begin
  f := TfrmApprovalSO.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHLAdjustSOClick(Sender: TObject);
var
  f: TfrmSO;
begin
  f := TfrmSO.Create(Self);
  f.Jenis := 'adjust';
  f.Show;
end;

procedure TfrmUtama.mnUbahPasswordClick(Sender: TObject);
var
  f: TfrmUbahPassword;
begin
  f := TfrmUbahPassword.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnStokBrgClick(Sender: TObject);
var
  f: TfrmKartuStock;
  ts : TcxTabSheet ;
begin
 // f := TfrmStokMstBrg.Create(Self);
  //f.Show;

      if not CekTabOpen('Stock Barang') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmKartuStock.Create(Self) ;
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

      pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.FormCreate(Sender: TObject);
begin
  //TVistaAltFix.Create(Self);
  Self.Menu := nil;
  pgMain.OnChange := PGChange;
  
  try
  imgBg.Align := alClient;
  imgBg.Stretch := True;
  if ParamStr(4) <> '/nowall' then
    imgBg.Picture.LoadFromFile(Aplikasi.AppPath + 'images\ktg.bmp');
  //Self.Caption := 'Mutasi Stok .:: ' + Aplikasi.version + ' ::.';
  Self.Caption := 'KTG Information System .:: ' + Aplikasi.version + ' ::.';
  except
  end;
  
  // nyalakan capslock otomatis
  if ParamStr(3) <> '/nocapslock' then
    Self.ToggleNumLock;

  //MainHook := SetWindowsHookEx(WH_JOURNALRECORD, KeyboardHook, hInstance, 0);
  //DeleteFile('log.html');
end;

procedure TfrmUtama.FormShow(Sender: TObject);
begin
  imgBg.Width := Self.Width-10;
  imgBg.Height := Self.Height-60;
  imgBg.Refresh;

  if aplikasi.NamaUser = 'ADMIN' then begin
    cxCmbDept.Visible := True;
    cxCmbDept.BringToFront;
    cxCmbDept.Top := Self.Height - 50;
  end
  else
    cxCmbDept.Visible := False;
end;

procedure TfrmUtama.mnEditTambahBrgClick(Sender: TObject);
var
  f: TfrmMstBrg_KTG;
  ts : TcxTabSheet;
begin
  //f := TfrmMstBrg_KTG.Create(Self);
  //f.Show;
  if not CekTabOpen('Master Barang') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f := TfrmMstBrg_KTG.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnQACTrsMasukClick(Sender: TObject);
var
  f: TfrmTrsMasuk;
begin
  f := TfrmTrsMasuk.Create(Self);
  f.UserDept := 'QAC';
  f.Show;
end;

procedure TfrmUtama.mnQACTrsKeluarClick(Sender: TObject);
var
  f: TfrmTrsKeluar;
begin
  f := TfrmTrsKeluar.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQACTrsMutasiClick(Sender: TObject);
var
  f: TfrmTransGdg;
begin
  f := TfrmTransGdg.Create(Self);
  f.UserDept := 'QAC';
  f.Show;
end;

procedure TfrmUtama.mnMstKtgrClick(Sender: TObject);
var
  f: TfrmMstKtgr;
begin
  f := TfrmMstKtgr.Create(Self);
  f.ShowModal;
end;

function TfrmUtama.CekTabOpen(sCaption: string): Boolean;
var
  i: Integer;
  f: boolean;
  ts: TcxTabSheet ;
begin
  f := False;
  for i := 0 to pgMain.TabCount - 1 do begin
    if sCaption = pgMain.Tabs[i].Caption then begin
      ts := pgMain.Pages[i];
      f := True;
      Break;
    end;
  end;

  if f then begin
    pgMain.ActivePage := ts;
  end;

  Result := f;

end;

procedure TfrmUtama.mnBtlTransClick(Sender: TObject);
var
  f: TfrmBtlTrans;
begin
  f := TfrmBtlTrans.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnCFT_SOClick(Sender: TObject);
//{$DEFINE NOTSOOLD}
//{$IFDEF SOOLD}
var
 // f: TfrmSalesOrder;
 f : TfrmDaftarSO;
  ts : TcxTabSheet ;
begin
  //f := TfrmDaftarSO.Create(Self);
  //f.Show;

    if not CekTabOpen('Daftar Sales Order') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarSO.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;

end;
//{$ELSE}
//var
 // f: TfrmSalesOrder_NEW;

//begin
//  f := TfrmSalesOrder_NEW.Create(Self);
//  f.Show;
//end;
//{$ENDIF}

procedure TfrmUtama.Button1Click(Sender: TObject);
var
  q: TZQuery;
  tbl: TZTable;
  sNoBukti : string;
  f: TFrmKartuStok;
begin
  MsgBox(FormatDateTime('hh:nn:ss', aplikasi.ServerTime));
  //f := TfrmKartuStok.Create(Self);
  //f.ShowModal;
  {
  q := OpenRS('SELECT * FROM tbl_stkawal');
  try
    dm.zConn.StartTransaction;
    tbl := OpenTbl('tbl_history');
    while not q.Eof do begin
      tbl.Insert;
      sNoBukti := GetLastFak('stok_awal');
      tbl.FieldByName('no_bukti').AsString := sNoBukti;
      tbl.FieldByName('tanggal').AsDateTime := Date;
      tbl.FieldByName('kode_brg').AsInteger := q.FieldByName('kode').AsInteger;
      tbl.FieldByName('tipe').AsString := 'IN_';
      tbl.FieldByName('qty').AsFloat := q.FieldByName('stokawal').AsFloat;
      tbl.FieldByName('gudang').AsString := q.FieldByName('kode_gdg').AsString;
      tbl.FieldByName('user').AsString := 'ADMIN';
      tbl.FieldByName('user_dept').AsString := 'ITY';
      tbl.Post;
      UpdateFaktur(Copy(sNoBukti,1,7));
      q.Next;
    end;
    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;


  q := OpenRS('SELECT * FROM tbl_history WHERE left(no_bukti,2) = ''SA''');
  while not q.Eof do begin
    dm.zConn.ExecuteDirect('UPDATE tbl_stkawal SET no_bukti = ''' +
      q.FieldByName('no_bukti').AsString + ''' ' +
      'WHERE kode = ' + q.FieldByName('kode_brg').AsString);
    q.Next;
  end;
  q.Close;
  }


end;

procedure TfrmUtama.mnWHL_SPMBClick(Sender: TObject);
var
  f: TfrmSPMB;
begin
  f := TfrmSPMB.Create(Self);
  f.UserDept := 'WHL';
  f.Show;
end;

procedure TfrmUtama.mnCFT_SJClick(Sender: TObject);
var
  f: TfrmSJ;
begin
  f := TfrmSJ.Create(Self);
  f.UserDept := 'WHL';
  f.Show;
end;

procedure TfrmUtama.mnCFT_SOTClick(Sender: TObject);
var
  f: TfrmSOTerbuka;
begin
  f := TfrmSOTerbuka.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPICTrsSpkPotongClick(Sender: TObject);
var
  f: TFrmTrsSPKPotong;
begin
  f := TFrmTrsSPKPotong.Create(Self);
  f.UserDept := 'PPIC';
  f.Show;
end;

procedure TfrmUtama.mnCFT_cetakSJClick(Sender: TObject);
var
  f: TFrmCetakSJ;
begin
  f := TfrmCetakSJ.Create(Self);
  f.Show;
end;
procedure TfrmUtama.mnPPIC_AppSpkPotClick(Sender: TObject);
var
  f: TfrmApprovalSpkPot;
begin
  f := TfrmApprovalSpkPot.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_spmbClick(Sender: TObject);
var
  f: TfrmSPMB;
  f2: TFrmSPMB_NEW;
begin
  //if Aplikasi.Trial then begin
    f2 := TfrmSPMB_NEW.Create(Self);
    f2.UserDept := 'CFT';
    f2.Show;
  //end
  //else begin
  //  f := TfrmSPMB.Create(Self);
  //  f.UserDept := 'CFT';
  //  f.Show;
  //end;
end;

procedure TfrmUtama.mnPPIC_SOTerbukaClick(Sender: TObject);
var
  f: TfrmSOTerbuka;
  ts : TcxTabSheet;
begin
  //f := TfrmSOTerbuka.Create(Self);
  //f.Show;
  if not CekTabOpen('Sales Order Terbuka') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmSOTerbuka.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPPIC_MOClick(Sender: TObject);
var
  f: TfrmMO;
  ts : TcxTabSheet;
begin
  //f := TfrmMO.Create(Self);
  //f.Show;
    if not CekTabOpen('Master Order') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmMO.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnMstCustClick(Sender: TObject);
var
  //f: TfrmMstCust;
  f: TfrmDaftarCustomer;
   ts : TcxTabSheet ;
begin
  //f := TfrmDaftarCustomer.Create(Self);
  //f.Show;
     if not CekTabOpen('Master Customer') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarCustomer.Create(Self) ;
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

      pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPPIC_MutasiSOClick(Sender: TObject);
var
  f: TfrmMutasiStokSO;
begin
  f := TfrmMutasiStokSO.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_OtoMutasiClick(Sender: TObject);
var
  f: TfrmOtorisasiMutasiCFT;
begin
  f := TfrmOtorisasiMutasiCFT.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.Button2Click(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: integer;
begin
  lst := TStringList.Create;
  lst.Add('tbl_trsmasuk_det');
  lst.Add('tbl_trskeluar_det');
  lst.Add('tbl_trsmutasi_det');
  lst.Add('tbl_trskoreksi_det');
  lst.Add('tbl_trspemb_mutasi_det');
  lst.Add('tbl_trsspkpotong_det');
  lst.Add('tbl_history');
  lst.Add('tbl_so_det');
  lst.Add('tbl_spmb_det');
  lst.Add('tbl_sj_det');

  try
  dm.zConn.StartTransaction;
  //q := OpenRS('SELECT * FROM tmp_konversi ORDER BY kode ');
  q := OpenRS('SELECT * FROM tbl_barang WHERE kode = 9122 ORDER BY kode ');
  while not q.Eof do begin

    {
    dm.zConn.ExecuteDirect(
      Format('UPDATE tbl_barang SET satuan = ''LONJOR'' ' +
        'WHERE kode = %s',
        [q.FieldByName('kode').AsString])
    );
    }

    for i := 0 to lst.Count - 1 do begin
      if lst.Strings[i] = 'tbl_trskoreksi_det' then
        dm.zConn.ExecuteDirect(
          Format('UPDATE %s SET kode_brg = 9117 ' +
            ' WHERE kode_brg = %s',
            [lst.Strings[i],
             q.FieldByName('kode').AsString]
          )
        )
      else if lst.Strings[i] = 'tbl_stkawal' then
        dm.zConn.ExecuteDirect(
          Format('UPDATE %s SET kode = 9117 WHERE kode = %s',
            [lst.Strings[i],
             q.FieldByName('kode').AsString]
          )
        )
      else
        dm.zConn.ExecuteDirect(
          Format('UPDATE %s SET kode_brg = 9117 WHERE kode_brg = %s',
            [lst.Strings[i],
             q.FieldByName('kode').AsString]
          )
        );
    end;

    {
    for i := 0 to lst.Count - 1 do begin
      if lst.Strings[i] = 'tbl_trskoreksi_det' then
        dm.zConn.ExecuteDirect(
          Format('UPDATE %s SET stok_lama = stok_lama * %s, ' +
            'stok_koreksi = stok_koreksi * %s, ' +
            'stok_baru = stok_baru * %s ' +
            ' WHERE kode_brg = %s',
            [lst.Strings[i],
             q.FieldByName('pengali').AsString,
             q.FieldByName('pengali').AsString,
             q.FieldByName('pengali').AsString,
             q.FieldByName('kode').AsString]
          )
        )
      else if lst.Strings[i] = 'tbl_stkawal' then
        dm.zConn.ExecuteDirect(
          Format('UPDATE %s SET stokawal = stokawal * %s WHERE kode = %s',
            [lst.Strings[i],
             q.FieldByName('pengali').AsString,
             q.FieldByName('kode').AsString]
          )
        )
      else
        dm.zConn.ExecuteDirect(
          Format('UPDATE %s SET qty = qty * %s, satuan = ''LONJOR'' WHERE kode_brg = %s',
            [lst.Strings[i],
             q.FieldByName('pengali').AsString,
             q.FieldByName('kode').AsString]
          )
        );
    end;
    }
    q.Next;
  end;
  dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TfrmUtama.mnPPIC_TrsSPKAssemblyClick(Sender: TObject);
var
  f: TFrmTrsSPKAssembly;
begin
  f := TFrmTrsSPKAssembly.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_mstFormulaClick(Sender: TObject);
var
  f: TFrmMstFormula;
begin
  f := TFrmMstFormula.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_mstMesinClick(Sender: TObject);
var
  f: TfrmMstMesin;
begin
  f := TfrmMstMesin.Create(Self);
  f.Show;
end;

procedure TFrmUtama.ToggleNumLock;
 var
    KeyState: TKeyboardState;
 begin
    //note: Use VK_CAPITAL for Caps Lock
 
    GetKeyboardState(KeyState) ;
 
    //simulate key events (down + up)
    if (KeyState[VK_CAPITAL] = 0) then
    begin
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0) ;
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0) ;
    end
    else
    begin
      Keybd_Event(VK_CAPITAL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0) ;
      Keybd_Event(VK_CAPITAL, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0) ;
    end;
 end;

procedure TfrmUtama.mnPRD_ApprovalSPKClick(Sender: TObject);
var
  f: TfrmApprovalSPK;
begin
  f := TfrmApprovalSPK.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_MstScheduleClick(Sender: TObject);
var
  f: TfrmMasterSchedule;
  ts : TcxTabSheet;
begin
  //f := TfrmMasterSchedule.Create(Self);
  //f.Show;
  if not CekTabOpen('Master Schedule') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmMasterSchedule.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPembINClick(Sender: TObject);
var
  f: TfrmPembatalan;
begin
  f := TfrmPembatalan.Create(Self);
  f.Jenis := 'IN';
  f.Show;
end;

procedure TfrmUtama.mnPembOUTClick(Sender: TObject);
var
  f: TfrmPembatalan;
begin
  f := TfrmPembatalan.Create(Self);
  f.Jenis := 'OUT';
  f.Show;
end;

procedure TfrmUtama.mnPembKSClick(Sender: TObject);
var
  f: TfrmPembatalan;
begin
  f := TfrmPembatalan.Create(Self);
  f.Jenis := 'KS';
  f.Show;
end;

procedure TfrmUtama.mnWHL_PnrimaSPKAssemClick(Sender: TObject);
var
  f: TFrmTrsSPKAssemblyMsk;
begin
  f := TFrmTrsSPKAssemblyMsk.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button3Click(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_sj_head');
  try
    dm.zConn.StartTransaction;
    while not q.Eof do begin
      dm.zConn.ExecuteDirect(
        'UPDATE tbl_history SET no_spmb = ''' + q.FieldBYName('no_spmb').AsString +
        ''' WHERE no_bukti = ''' + q.FieldByName('no_bukti').AsString + '''');
      q.Next;
    end;
    q.Close;
    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TfrmUtama.tmr2Timer(Sender: TObject);
var
  i : Integer;
  sSpace : String;
begin
  Inc(c);

  sSpace := '';

  for i:=1 to c do
  sSpace := sSpace + ' ';

  //Panel 0 or 1 or 2 or...
  stsBar.Panels[5].Text := sSpace + sText;

  if (Length(sText)*2) = c then
  c := 1;
end;

procedure TfrmUtama.mnCFT_ReturPenjClick(Sender: TObject);
var
  f: TfrmTrsRetur;
begin
  f := TfrmTrsRetur.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_CetakSPKPotClick(Sender: TObject);
var
  f: TfrmCetakSPKPotong;
begin
  f := TfrmCetakSPKPotong.Create(Self);
  f.Jenis := 'spk-potong';
  f.Show;
end;

procedure TfrmUtama.mnPPIC_AppSpkPotMgrClick(Sender: TObject);
var
  f: TfrmApprovalSpkPot;
begin
  f := TfrmApprovalSpkPot.Create(Self);
  f.jenis := 'app_mgr';
  f.Show;
end;

procedure TfrmUtama.mnPPIC_TrsSPKGilingClick(Sender: TObject);
var
  f: TFrmTrsSPKGiling;
begin
  f := TFrmTrsSPKGiling.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_mstSuppClick(Sender: TObject);
var
  //f: TfrmMstSupplier;
  f : TfrmDaftarSupplier;
  ts : TcxTabSheet;
begin
  //f := TfrmDaftarSupplier.Create(Self);
  //f.Show;
  if not CekTabOpen('Apporval Purchase Order') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarSupplier.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnQAC_AppSpkGilClick(Sender: TObject);
var
  f: TfrmApprovalSpkGil;
begin
  f := TfrmApprovalSpkGil.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_CetakSPKAssemClick(Sender: TObject);
var
  f: TfrmCetakSPKPotong;
begin
  f := TfrmCetakSPKPotong.Create(Self);
  f.Jenis := 'spk-assem';
  f.Show;
end;

procedure TfrmUtama.Button4Click(Sender: TObject);
var
  q: TZQuery;
  tbl_mo: TZTable;
  sNoMO: string;
begin
  try
    dm.zConn.StartTransaction;
    q := OpenRS('SELECT a.* FROM tbl_so_det a, tbl_so_head b ' +
      'WHERE a.no_bukti = b.no_bukti AND concat(a.no_bukti,a.kode_brg) ' +
      'not in ' +
      '(select concat(no_so,kode_brg) from tbl_mo) AND ' +
      'b.tanggal BETWEEN ''2014-02-01'' AND ''2014-03-31''');

    tbl_mo := OpenTbl('tbl_mo');
    while not q.Eof do begin
      sNoMO := GetLastFak('master_order');
      UpdateFaktur(Copy(sNoMO,1,7));
      tbl_mo.Insert;
      tbl_mo.FieldByName('no_mo').AsString := sNoMO;
      tbl_mo.FieldByName('no_so').AsString := q.FieldByName('no_bukti').AsString;
      tbl_mo.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
      tbl_mo.FieldByName('qty_mo').AsFloat := q.FieldByName('qty').AsFloat;
      tbl_mo.FieldByName('qty_so').AsFloat := q.FieldByName('qty').AsFloat;
      tbl_mo.Post;
      q.Next;
    end;
    tbl_mo.Close;
    q.Close;

  except
    on E: Exception do begin
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TfrmUtama.mnCFT_TutupSOClick(Sender: TObject);
var
  f: TfrmTutupSOTerbuka;
begin
  f:= TfrmTutupSOTerbuka.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button5Click(Sender: TObject);
var
  q,q2: TZQuery;
  i: integer;
begin
  
  q := OpenRS('SELECT * FROM xx01');
  prgBar.Max := q.RecordCount;

  try
  i := 1;
  dm.zConn.StartTransaction;
  while not q.Eof do begin
    q2 := OpenRS('SELECT * FROM tbl_history WHERE referensi = ''%s'' ' +
      'AND LEFT(no_bukti,2) = ''PM'' AND kode_brg = %s AND gudang = ''G01''',
      [q.FieldByName('no_bukti').AsString,
       q.FieldByName('kode_brg').AsString
      ]
    );
    if not q2.IsEmpty then begin
      q2.Edit;
      q2.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
      q2.Post;
    end;
    q2.Close;
    q2 := nil;
    {
    dm.zConn.ExecuteDirect(
      'UPDATE tbl_history SET no_so = ''' + q.FieldByName('no_so').AsString +
        ''' WHERE referensi = ''' + q.FieldByName('no_bukti').AsString +
        ''' AND LEFT(no_bukti,2) = ''PM'' AND kode_brg = ' +
        q.FieldByName('kode_brg').AsString );
    }
    prgBar.Position := prgBar.Position + 1;
    Label2.Caption := IntToStr(i);
    Label2.Refresh;
    q.Next;
    Inc(i);
  end;
  dm.zConn.Commit;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
    end;
  end;
  q.Close;

end;

procedure TfrmUtama.mnWHL_ApprovalTrsKeluarClick(Sender: TObject);
var
  f: TfrmApprovalTrsKeluar;
begin
  f:= TfrmApprovalTrsKeluar.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_POClick(Sender: TObject);
var
  //f: TfrmPurchaseOrderKTG;
  f : TfrmDaftarPO;
  ts : TcxTabSheet;
begin
 // f := TfrmDaftarPO.Create(Self);
  //f.Show;
   if not CekTabOpen('Apporval Permintaan Pembelian') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarPO.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPUR_SPBBClick(Sender: TObject);
var
  //f: TfrmSPBB;
  f : TfrmDaftarPenerimaanBarang;
  ts :  TcxTabSheet;
begin
 // f := TfrmSPBB.Create(Self);
 // f.Show;
  if not CekTabOpen('Apporval Purchase Order') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarPenerimaanBarang.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnQAC_LKMClick(Sender: TObject);
var
  f: TfrmLKM;
begin
  f := TfrmLKM.Create(Self);
  f.Jenis := 'edit';
  f.Approval := 'app1';
  f.Show;
end;

procedure TfrmUtama.mnPUR_PPClick(Sender: TObject);
var
  //f: TfrmTrsPermintaanPembelian;
  f : TfrmDaftarPP;
  ts : TcxTabSheet;
begin
 // f := TfrmDaftarPP.Create(Self);
  //f.Show;
   if not CekTabOpen('Daftar Permintaan Pembelian') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarPP.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPUR_PenawaranSuppClick(Sender: TObject);
var
  f: TfrmTrsPenawaran2;
begin
  f := TfrmTrsPenawaran2.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_DaftarPenawaranSuppClick(Sender: TObject);
var
  f: TfrmDaftarPenawarranSupp;
begin
  f := TfrmDaftarPenawarranSupp.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_SOMTSClick(Sender: TObject);
var
  //f: TfrmSO_MTS;
  f : TfrmDaftarMTS;
  ts : TcxTabSheet;
begin
 // f := TfrmDaftarMTS.Create(Self);
 // f.Show;
   if not CekTabOpen('Daftar SO Made To Stock') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarMTS.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPPIC_TutupSOMTSClick(Sender: TObject);
var
  f: TfrmTutupSOTerbuka;
begin
  f := TfrmTutupSOTerbuka.Create(Self);
  f.Jenis := 'mts';
  f.Show;
end;

procedure TfrmUtama.mnPRD_MasterScheduleClick(Sender: TObject);
var
  f: TfrmMasterSchedulePRD;
begin
  f := TfrmMasterSchedulePRD.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_AppLKM1Click(Sender: TObject);
var
  f: TfrmLKM;
begin
  f := TfrmLKM.Create(Self);
  f.Jenis := 'edit';
  f.Approval := 'app2';
  f.Show;
end;

procedure TfrmUtama.mnQAC_AppLKM2Click(Sender: TObject);
var
  f: TfrmLKM;
begin
  f := TfrmLKM.Create(Self);
  f.Jenis := 'edit';
  f.Approval := 'app3';
  f.Show;
end;

procedure TfrmUtama.mnPRD_HslPrdDetClick(Sender: TObject);
var
  f: TfrmHslPrdDetail;
begin
  f := TfrmHslPrdDetail.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_AppRetPenjClick(Sender: TObject);
var
  f: TfrmApprovalRetPenj;
begin
  f := TfrmApprovalRetPenj.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_AppPOClick(Sender: TObject);
var
  f: TfrmApprovalPO;
  ts : TcxTabSheet;
begin
  //f := TfrmApprovalPO.Create(Self);
  //f.Show;
  if not CekTabOpen('Apporval Purchase Order') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmApprovalPO.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.Button6Click(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: integer;
  head: string;
begin
  lst := TStringList.Create;
  lst.CommaText :=
    'IN/B14/0027,' +
    'SJ/B14/0099,' +
    'IN/B14/0128,' +
    'SJ/C14/0067,' +
    'IN/D14/0029,' +
    'SJ/D14/0144,' +
    'IN/D14/0148,' +
    'IN/D14/0118,' +
    'IN/D14/0198,' +
    'SJ/D14/0309,' +
    'SJ/D14/0313,' +
    'SJ/D14/0360,' +
    'IN/F14/0489';

  for i := 0 to lst.Count - 1 do begin
    head := Copy(lst.Strings[i],1,2);
    if head = 'IN' then begin
      dm.zConn.ExecuteDirect('UPDATE tbl_trsmasuk_det SET kode_brg = 10733 ' +
        'WHERE kode_brg = 10453 and no_bukti = ''' + lst.Strings[i] + '''');
      dm.zConn.ExecuteDirect('UPDATE tbl_history SET kode_brg = 10733 ' +
        'WHERE kode_brg = 10453 and no_bukti = ''' + lst.Strings[i] + '''');
    end
    else if head = 'OT' then begin
      dm.zConn.ExecuteDirect('UPDATE tbl_trskeluar_det SET kode_brg = 10733 ' +
        'WHERE kode_brg = 10453 and no_bukti = ''' + lst.Strings[i] + '''');
      dm.zConn.ExecuteDirect('UPDATE tbl_history SET kode_brg = 10733 ' +
        'WHERE kode_brg = 10453 and no_bukti = ''' + lst.Strings[i] + '''');
    end
    else if head = 'SJ' then begin
      dm.zConn.ExecuteDirect('UPDATE tbl_sj_det SET kode_brg = 10733 ' +
        'WHERE kode_brg = 10453 and no_bukti = ''' + lst.Strings[i] + '''');
      dm.zConn.ExecuteDirect('UPDATE tbl_history SET kode_brg = 10733 ' +
        'WHERE kode_brg = 10453 and no_bukti = ''' + lst.Strings[i] + '''');
    end;
  end;
  dm.zConn.ExecuteDirect('UPDATE tbl_barang SET f_aktif = 0 WHERE kode = 10453');

  {
  lst := TStringList.Create;
  lst.CommaText :=
    'IN/A14/0313,' +
    'OT/A14/0848,' +
    'IN/A14/0357,' +
    'IN/A14/0359,' +
    'IN/A14/0359,' +
    'IN/A14/0365,' +
    'IN/A14/0377,' +
    'IN/A14/0386,' +
    'IN/B14/0017,' +
    'IN/B14/0022,' +
    'IN/B14/0025,' +
    'IN/B14/0032,' +
    'IN/B14/0036,' +
    'IN/B14/0041,' +
    'IN/B14/0049,' +
    'IN/B14/0054,' +
    'IN/B14/0061,' +
    'IN/B14/0067,' +
    'IN/B14/0071,' +
    'IN/B14/0073,' +
    'IN/B14/0086,' +
    'IN/B14/0095,' +
    'IN/B14/0067,' +
    'IN/B14/0071,' +
    'IN/B14/0073,' +
    'IN/B14/0086,' +
    'IN/B14/0095,' +
    'IN/B14/0100,' +
    'IN/B14/0128,' +
    'IN/B14/0129,' +
    'IN/B14/0135,' +
    'OT/B14/0399,' +
    'OT/C14/0070';

  for i := 0 to lst.Count - 1 do begin
    head := Copy(lst.Strings[i],1,2);
    if head = 'IN' then begin
      dm.zConn.ExecuteDirect('UPDATE tbl_trsmasuk_det SET kode_brg = 4338 ' +
        'WHERE kode_brg = 4388 and no_bukti = ''' + lst.Strings[i] + '''');
      dm.zConn.ExecuteDirect('UPDATE tbl_history SET kode_brg = 4338 ' +
        'WHERE kode_brg = 4388 and no_bukti = ''' + lst.Strings[i] + '''');
    end
    else if head = 'OT' then begin
      dm.zConn.ExecuteDirect('UPDATE tbl_trskeluar_det SET kode_brg = 4338 ' +
        'WHERE kode_brg = 4388 and no_bukti = ''' + lst.Strings[i] + '''');
      dm.zConn.ExecuteDirect('UPDATE tbl_history SET kode_brg = 4338 ' +
        'WHERE kode_brg = 4388 and no_bukti = ''' + lst.Strings[i] + '''');
    end;
  end;
  }

end;

procedure TfrmUtama.mnPUR_SettingKursClick(Sender: TObject);
var
  //f: TfrmSettingKurs;
  f : TfrmNilaiTukar;
begin
  f := TfrmNilaiTukar.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_MstAlmKirimClick(Sender: TObject);
var
  f: TfrmAlamatKirim;
begin
  f := TfrmAlamatKirim.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_CetakPOClick(Sender: TObject);
var
  f: TfrmCetakPO;
begin
  f := TfrmCetakPO.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_ViewSuppClick(Sender: TObject);
var
  f: TfrmViewMstSupplier;
begin
  f := TfrmViewMstSupplier.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCCR_InputCCRClick(Sender: TObject);
var
  f: TfrmCCR;
begin
  if not IsFormOpen('frmCCR') then begin
    f := TFrmCCR.Create(self);
    f.Show;
  end;
end;

procedure TfrmUtama.mnPUR_POTerbukaClick(Sender: TObject);
var
  f: TfrmPOTerbuka;
begin
  f := TfrmPOTerbuka.Create(self);
  f.Show;
end;

procedure TfrmUtama.mnCCR_DaftarCCRClick(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'app_smg';
  f.Show;
end;

procedure TfrmUtama.mnCCR_DeptTerkaitClick(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'dept_terkait';
  f.SHow;
end;

procedure TfrmUtama.mnCCR_MgrTerkaitClick(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'mgr_terkait';
  f.SHow;
end;

procedure TfrmUtama.mnCCR_MgrQacClick(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'mgr_qac';
  f.SHow;
end;

procedure TfrmUtama.mnCCR_Dir1Click(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'bd_dir';
  f.SHow;
end;

procedure TfrmUtama.mnCCR_Dir2Click(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'sales_dir';
  f.SHow;
end;

procedure TfrmUtama.mnCCR_PenutupanCCRClick(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'penutupan_ccr';
  f.SHow;
end;

procedure TfrmUtama.mnCFT_ReturAdmClick(Sender: TObject);
var
  f: TfrmTrsRetur3;
begin
  f := TfrmTrsRetur3.Create(Self);
  f.SHow;
end;

procedure TfrmUtama.mnCFT_ReturNonAdmClick(Sender: TObject);
var
  f: TfrmTrsRetur2;
begin
  f := TfrmTrsRetur2.Create(Self);
  f.SHow;
end;

procedure TfrmUtama.mnQAC_TindakLanjutDeptClick(Sender: TObject);
var
  f: TfrmLKM;
begin
  f := TfrmLKM.Create(Self);
  f.Jenis := 'tindak-lanjut';
  f.Approval := 'dept-terkait';
  f.Show;
end;

procedure TfrmUtama.mnPEL_TrsPenerimaanClick(Sender: TObject);
var
  f: TfrmPenerimaanPlt;
begin
  f := TfrmPenerimaanPlt.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_SJUClick(Sender: TObject);
var
  f: TFrmTrsSJU;
begin
  f := TFrmTrsSJU.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_AppSJUClick(Sender: TObject);
var
  f: TfrmApprovalSJU;
begin
  f := TfrmApprovalSJU.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnSPMBPelClick(Sender: TObject);
var
  f: TfrmSPMB;
begin
  f := TfrmSPMB.Create(Self);
  f.JenisSPMB := 'peletan';
  f.Show;
end;

procedure TfrmUtama.mnCFT_MutasiOngkosClick(Sender: TObject);
var
  //f: TfrmTransGdg;
  f: TfrmTrsMasuk;
  ts:TcxTabSheet;
begin
  //f := TfrmTransGdg.Create(Self);
  //f.JenisMutasi := 'mutasi-ongkos';
  if not CekTabOpen('Transaksi Masuk') then begin
  f := TfrmTrsMasuk.Create(Self);
  ts:= TcxTabSheet.Create(Self);
  ts.PageControl := pgMain;
  ts.Caption :='Transaksi Masuk';
  f.Parent := ts;
  f.JenisTrans := 'ongkos';
  pgMain.ActivePage := ts;
  f.Show;
  end;
end;

procedure TfrmUtama.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  //if FileExists(aplikasi.AppPath + '\_a.bat') then
  //  DeleteFile(PAnsiChar(aplikasi.AppPath + '\_a.bat'));
end;

procedure TfrmUtama.mnQAC_BrowseFormulaClick(Sender: TObject);
var
  f: TfrmBrowseFormula;
begin
  f := TfrmBrowseFormula.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnLKM_InputLKMClick(Sender: TObject);
var
  f: TFrmProsesLKM;
begin
  f := TfrmProsesLKM.Create(Self);
  f.JenisLKM := 'lkm-baru';
  f.Show;
end;

procedure TfrmUtama.mnLKM_DaftarLKMClick(Sender: TObject);
var
  f: TfrmLKM;
begin
  f := TfrmLKM.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_MO2Click(Sender: TObject);
var
  f: TfrmMO2;
begin
  f := TfrmMO2.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPEL_TrsPOClick(Sender: TObject);
var
  f: TfrmPurchaseOrderPel;
begin
  f := TfrmPurchaseOrderPel.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_MtsPlusMinusClick(Sender: TObject);
var
  f: TFrmTrsMutasiPlusMinusPeletan;
begin
  f := TFrmTrsMutasiPlusMinusPeletan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button7Click(Sender: TObject);
var
  lst: TStringList;
  lstJml: TStringList;
  i: integer;
  s: string;
begin
  lst := TStringList.Create;
  lst.CommaText := '4508,4980,318,4398,3608,8514,10072,7746,6725,6728,' +
    '2597,5131,5036,5038,5039,5040';

  lstJml := TStringList.Create;
  lstJml.CommaText := '232,39,26,11,39,42,64,6,36,12,287,115,23,52.5,110,105';

  s := GetLastFak('brg_out');
  UpdateFaktur(Copy(s,1,7));

  dm.zConn.ExecuteDirect(Format('INSERT INTO tbl_trskeluar_head ' +
    'SET no_bukti = ''%s'', ' +
    'tanggal = date(now()), ' +
    'jam = time(now()), ' +
    'user = ''FERRY'', ' +
    'user_dept = ''QAC'', ' +
    'tgl_input = now(), ' +
    'f_approval = 0',[s])
  );

  for i := 0 to lstJml.Count - 1 do begin
    dm.zConn.ExecuteDirect(Format('INSERT INTO tbl_trskeluar_det ' +
      'SET no_bukti = ''%s'', ' +
      'kode_brg = %s, ' +
      'qty = %s, ' +
      'satuan = ''KG'', ' +
      'kode_gdg = ''G03'', ' +
      'no_so = ''-''',
      [s, lst.Strings[i], lstJml.Strings[i]])
    );
  end;

end;

procedure TfrmUtama.mnTutupSOPelClick(Sender: TObject);
var
  f: TfrmTutupSOTerbuka;
begin
  f := TfrmTutupSOTerbuka.Create(Self);
  f.Jenis := 'peletan';
  f.Show;
end;

procedure TfrmUtama.Button8Click(Sender: TObject);
var
  lst, lst2: TStringList;
  i: integer;
  s: string;
  r: real;
  f: TFormatSettings;
begin
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, f);

  s := '1.890,44';
  r := 1980.404;
  s := FormatFloat('###0.00', r);
  ShowMessage(s);
  if f.DecimalSeparator = '.' then
    s := StringReplace(s,',','.',[rfReplaceAll]);
  SHowMessage(s);
  r := StrToFloat(s);
  {
  lst := TStringList.Create;
  lst2 := TStringList.Create;

  lst.CommaText := 'SDP,' +
    'SDP,' +
    'SDP,' +
    'SDP,' +
    'SALIM,' +
    'M. HASAN,' +
    'ARIEF H,' +
    'ARIEF H,' +
    'SDP,' +
    'SDP,' +
    'SDP,' +
    'SDP,' +
    'ZAENAL,' +
    'RUSDIANTO,' +
    'ZAENAL,' +
    'YAJID,' +
    'YAJID,' +
    'IWAN S,' +
    'YAJID,' +
    'YAJID,' +
    'YAJID,' +
    'YAJID,' +
    'YAJID,' +
    'ZAENAL,' +
    'ENIRO,' +
    'ENIRO,' +
    'SDP,' +
    'ANTON,' +
    'M. ARIFIN,' +
    'M. ARIFIN,' +
    'ZAENAL,' +
    'ZAENAL,' +
    'IWAN S,' +
    'YAJID,' +
    'SDP,' +
    'SDP,' +
    'ANTON,' +
    'ANTON,' +
    'SDP,' +
    'SDP,' +
    'SELLY,' +
    'SELLY,' +
    'YAJID,' +
    'YAJID,' +
    'ZAENAL,' +
    'ZAENAL,' +
    'SUPRIADI,' +
    'SUPRIADI,' +
    'SUPRIADI,' +
    'IWAN S,' +
    'SDP,' +
    'SDP,';

  lst2.CommaText := 'SPL/A15/0027,' +
    'SPL/A15/0028,' +
    'SPL/A15/0028,' +
    'SPL/A15/0029,' +
    'SPL/A15/0030,' +
    'SPL/A15/0031,' +
    'SPL/A15/0032,' +
    'SPL/A15/0032,' +
    'SPL/A15/0033,' +
    'SPL/A15/0033,' +
    'SPL/A15/0034,' +
    'SPL/A15/0035,' +
    'SPL/A15/0037,' +
    'SPL/A15/0036,' +
    'SPL/A15/0014,' +
    'SPL/A15/0024,' +
    'SPL/A15/0024,' +
    'SPL/A15/0025,' +
    'SPL/A15/0090,' +
    'SPL/A15/0091,' +
    'SPL/A15/0089,' +
    'SPL/A15/0089,' +
    'SPL/A15/0089,' +
    'SPL/A15/0088,' +
    'SPL/A15/0093,' +
    'SPL/A15/0092,' +
    'SPL/A15/0094,' +
    'SPL/A15/0095,' +
    'SPL/A15/0098,' +
    'SPL/A15/0098,' +
    'SPL/A15/0099,' +
    'SPL/A15/0099,' +
    'SPL/A15/0103,' +
    'SPL/A15/0115,' +
    'SPL/A15/0125,' +
    'SPL/A15/0127,' +
    'SPL/A15/0155,' +
    'SPL/A15/0155,' +
    'SPL/A15/0154,' +
    'SPL/A15/0153,' +
    'SPL/A15/0156,' +
    'SPL/A15/0159,' +
    'SPL/A15/0157,' +
    'SPL/A15/0158,' +
    'SPL/A15/0161,' +
    'SPL/A15/0161,' +
    'SPL/A15/0178,' +
    'SPL/A15/0177,' +
    'SPL/A15/0177,' +
    'SPL/A15/0188,' +
    'SPL/A15/0189,' +
    'SPL/A15/0190';

  for i := 0 to lst.Count - 1 do begin
    dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET kode_customer = ''SDP'', ' +
      'ex_customer = ''' + lst.Strings[i] + ''' WHERE no_bukti = ''' +
      lst2.Strings[i] + '''');
  end;
  }
end;

procedure TfrmUtama.mnMonPeletanClick(Sender: TObject);
var
  f: TfrmMonPeletan;
begin
  f := TfrmMonPeletan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button9Click(Sender: TObject);
begin
  Memo.Lines.SaveToFile('d:\simpan.txt');
end;

procedure TfrmUtama.mnPel_PenrmSJPelClick(Sender: TObject);
var
  f: TfrmPenerimaanSJPeletan;
begin
  f := TfrmPenerimaanSJPeletan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button10Click(Sender: TObject);
var
  lstKode, lstIsi: TStringList;
  i: Integer;
  q: TZQuery;
begin
  q := OpenRS('SHOW STATUS like ''compre%''');
  MsgBox(q.FieldByName('variable_name').AsString);
  MsgBox(q.FieldByName('value').AsString);
  q.Close;

  {
  lstKode := TStringList.Create;
  lstIsi := TStringList.Create;

  lstKode.CommaText :=
    '1108,' +
      '1111,' +
      '1119,' +
      '1144,' +
      '1915,' +
      '4132,' +
      '4554,' +
      '5419,' +
      '5420,' +
      '5426,' +
      '5438,' +
      '5469,' +
      '5470,' +
      '5477,' +
      '5577,' +
      '5578,' +
      '5579,' +
      '5580,' +
      '5581,' +
      '5582,' +
      '5583,' +
      '5584,' +
      '5585,' +
      '5586,' +
      '5587,' +
      '5588,' +
      '5589,' +
      '5590,' +
      '5591,' +
      '5592,' +
      '5593,' +
      '5873,' +
      '5874,' +
      '5875,' +
      '5876,' +
      '5877,' +
      '5878,' +
      '5909,' +
      '5910,' +
      '5911,' +
      '5919,' +
      '5920,' +
      '5921,' +
      '5922,' +
      '5958,' +
      '5959,' +
      '5960,' +
      '5961,' +
      '5962,' +
      '6013,' +
      '6014,' +
      '6015,' +
      '6016,' +
      '6017,' +
      '6018,' +
      '6019,' +
      '6020,' +
      '6021,' +
      '6022,' +
      '6023,' +
      '6034,' +
      '6380,' +
      '6381,' +
      '6692,' +
      '6693,' +
      '6694,' +
      '6695,' +
      '6696,' +
      '7071,' +
      '7072,' +
      '7137,' +
      '7157,' +
      '7270,' +
      '7301,' +
      '7317,' +
      '7318,' +
      '7319,' +
      '7320,' +
      '7331,' +
      '7332,' +
      '7333,' +
      '7334,' +
      '7338,' +
      '7339,' +
      '7340,' +
      '7345,' +
      '7360,' +
      '7361,' +
      '7402,' +
      '7592,' +
      '7861,' +
      '7862,' +
      '7974,' +
      '8193,' +
      '8215,' +
      '8216,' +
      '8464,' +
      '11994,' +
      '11995,' +
      '12372,' +
      '12688,' +
      '12689,' +
      '12695,' +
      '12696,' +
      '12697,' +
      '12698,' +
      '12700,' +
      '12701,' +
      '12702,' +
      '12703,' +
      '12704,' +
      '12705,' +
      '12706,' +
      '12707,' +
      '12708,' +
      '12739,' +
      '12762,' +
      '12782,' +
      '12795,' +
      '12796,' +
      '12797,' +
      '12798,' +
      '12799,' +
      '12800,' +
      '12838,' +
      '13442,' +
      '13443,' +
      '13444,' +
      '13445,' +
      '13446,' +
      '13447,' +
      '13448,' +
      '13495,' +
      '1084,' +
      '1085,' +
      '1086,' +
      '1087,' +
      '1088,' +
      '1089,' +
      '1090,' +
      '1091,' +
      '1092,' +
      '1093,' +
      '1094,' +
      '1095,' +
      '1096,' +
      '1097,' +
      '1098,' +
      '1099,' +
      '1100,' +
      '1101,' +
      '1127,' +
      '1128,' +
      '1131,' +
      '1149,' +
      '1150,' +
      '1161,' +
      '1163,' +
      '1164,' +
      '1165,' +
      '1166,' +
      '1184,' +
      '1185,' +
      '1188,' +
      '1316,' +
      '1633,' +
      '1642,' +
      '1673,' +
      '1674,' +
      '3195,' +
      '3196,' +
      '3197,' +
      '3303,' +
      '3388,' +
      '5417,' +
      '5418,' +
      '5421,' +
      '5424,' +
      '5427,' +
      '5428,' +
      '5432,' +
      '5433,' +
      '5435,' +
      '5436,' +
      '5437,' +
      '5440,' +
      '5441,' +
      '5443,' +
      '5444,' +
      '5446,' +
      '5447,' +
      '5452,' +
      '5453,' +
      '5454,' +
      '5455,' +
      '5456,' +
      '5457,' +
      '5468,' +
      '5550,' +
      '5612,' +
      '5615,' +
      '5617,' +
      '5883,' +
      '5884,' +
      '5885,' +
      '5886,' +
      '5887,' +
      '5888,' +
      '5895,' +
      '5896,' +
      '5898,' +
      '5899,' +
      '5900,' +
      '5901,' +
      '5908,' +
      '5913,' +
      '5914,' +
      '5915,' +
      '5916,' +
      '5917,' +
      '5964,' +
      '5999,' +
      '6382,' +
      '7058,' +
      '7074,' +
      '7075,' +
      '7076,' +
      '7077,' +
      '7078,' +
      '7403,' +
      '7404,' +
      '7405,' +
      '7406,' +
      '7407,' +
      '7408,' +
      '7597,' +
      '12112,' +
      '12113,' +
      '12114,' +
      '12115,' +
      '12308,' +
      '12309,' +
      '12684,' +
      '12685,' +
      '12686,' +
      '12687,' +
      '12690,' +
      '12691,' +
      '12692,' +
      '12693,' +
      '12694,' +
      '12811,' +
      '12813,' +
      '12816,' +
      '12818,' +
      '12819,' +
      '13455,' +
      '13480,' +
      '13517,' +
      '13519,' +
      '13549,' +
      '13603,' +
      '13626';

  lstIsi.CommaText :=
          '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '30,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25,' +
      '25';

  //MsgBox(IntToStr(lstkode.Count));
  //MsgBox(IntToStr(lstIsi.Count));

  Screen.Cursor := crSQLWait;
  for i := 0 to lstKode.Count - 1 do begin
    dm.zConn.ExecuteDirect('UPDATE tbl_barang SET isi_pak = ' +
      lstIsi.Strings[i] + ' WHERE kode = ' + lstKode.Strings[i]);
  end;
  Screen.Cursor := crDefault;
  }
end;

procedure TfrmUtama.ReturPembelian3Click(Sender: TObject);
var
  f: TfrmTrsReturPembelian;
begin
  f := TfrmTrsReturPembelian.Create(Self);
  f.Show;

end;

procedure TfrmUtama.mnPRD_BPPBClick(Sender: TObject);
var
  f: TfrmTrsBPPB_PRD;
begin
  f := TfrmTrsBPPB_PRD.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_SettingBoronganClick(Sender: TObject);
var
  f: TfrmSettingBorongan;
begin
  f := TfrmSettingBorongan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnAppReturPembClick(Sender: TObject);
var
  f: TfrmAppReturPembelian;
begin
  f := TfrmAppReturPembelian.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_AppPengQACClick(Sender: TObject);
var
  f: TFrmApprovalPengQAC;
begin
  f := TFrmApprovalPengQAC.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_EditBomSPKClick(Sender: TObject);
var
  f: TfrmEditBomSPK;
begin
  f := TfrmEditBomSPK.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnSettingFotoBrgClick(Sender: TObject);
var
  f: TfrmSettingFotoBrg;
begin
  f := TfrmSettingFotoBrg.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button11Click(Sender: TObject);
var
  lst, lstB: TStringList;
  i: integer;
  s: string;
begin
  lst := TStringList.Create;
  lstB := TStringList.Create;

  lst.CommaText :=
    'SA/L13/2236,' +
    'OT/H14/0006,' +
    'OT/H14/0116,' +
    'OT/H14/0118,' +
    'OT/H14/0117,' +
    'SA/H14/0553,' +
    'OT/H14/0147,' +
    'OT/H14/0145,' +
    'OT/H14/0146,' +
    'OT/H14/0226,' +
    'OT/J14/0173,' +
    'OT/J14/0168,' +
    'OT/J14/0205,' +
    'OT/J14/0230,' +
    'OT/J14/0231,' +
    'IN/K14/0366,' +
    'IN/K14/1661,' +
    'OT/K14/0249,' +
    'OT/K14/0277,' +
    'IN/K14/2101,' +
    'OT/K14/0295,' +
    'IN/K14/2124,' +
    'PB/C15/0219,' +
    'PB/C15/0236,' +
    'PB/D15/0004,' +
    'PB/D15/0005,' +
    'PB/D15/0006,' +
    'PB/D15/0077,' +
    'PB/D15/0092,' +
    'PB/D15/0098';

  lstB.CommaText :=
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'xx,' +
    'SPBB/C15/0651,' +
    'SPBB/C15/0743,' +
    'SPBB/D15/0009,' +
    'SPBB/D15/0010,' +
    'SPBB/D15/0011,' +
    'SPBB/D15/0228,' +
    'SPBB/D15/0243,' +
    'SPBB/D15/0255';



  for i := 0 to lst.Count - 1 do begin
    if Copy(lst.Strings[i],1,2) = 'PB' then
      s := 'tbl_spbb_det'
    else if Copy(lst.Strings[i],1,2) = 'OT' then
      s := 'tbl_trskeluar_det'
    else if Copy(lst.Strings[i],1,2) = 'SA' then
      s := 'tbl_stkawal'
    else if Copy(lst.Strings[i],1,2) = 'IN' then
      s := 'tbl_trsmasuk_det';

    if s = 'tbl_stkawal' then
      dm.zConn.ExecuteDirect('UPDATE ' + s + ' set kode = 13400 ' +
      'where no_bukti = ''' + lst.Strings[i] + ''' AND kode = 7552')
    else begin
      if s = 'tbl_spbb_det' then
        dm.zConn.ExecuteDirect('UPDATE tbl_spbb_det set kode_brg = 13400 ' +
          'where no_bukti = ''' + lstB.Strings[i] + ''' AND kode_brg = 7552')
      else
        dm.zConn.ExecuteDirect('UPDATE ' + s + ' set kode_brg = 13400 ' +
          'where no_bukti = ''' + lst.Strings[i] + ''' AND kode_brg = 7552')
    end;

    dm.zConn.ExecuteDirect('UPDATE tbl_history set kode_brg = 13400 ' +
      'where no_bukti = ''' + lst.Strings[i] + ''' AND kode_brg = 7552');

  end;



end;

procedure TfrmUtama.mnPPIC_DownloadMstBrgClick(Sender: TObject);
var
  f: TfrmLapUmum;
begin
  Screen.Cursor := crSQLWait;
  f := TfrmLapUmum.Create(Self);
  f.zqrCetMstBrgPPIC.Open;
  f.CetakMstBrgPPIC;
  f.zqrCetMstBrgPPIC.Close;
  f.Release;
  Screen.Cursor := crDefault;
end;

procedure TfrmUtama.mnWHL_CetakKirimConsumClick(Sender: TObject);
var
  f: TfrmCetakKirimConsum;
begin
  f := TfrmCetakKirimConsum.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnPUR_POJasaClick(Sender: TObject);
var
  f: TfrmPurchaseOrderJasa;
begin
  f := TfrmPurchaseOrderJasa.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_StokBrgConsumClick(Sender: TObject);
var
  f: TfrmStokBrgConsumable;
begin
  f := TfrmStokBrgConsumable.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_HistoryPengBBClick(Sender: TObject);
var
  f: TfrmHistoryPengBB;
begin
  f := TfrmHistoryPengBB.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnKalkulasiUlangPerKodeClick(Sender: TObject);
var
  f: TfrmKalkulasiUlangPerKode;
begin
  f := TfrmKalkulasiUlangPerKode.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnPPIC_SOMTSGilingClick(Sender: TObject);
var
  f: TfrmSO_MTSGiling;
begin
  f := TfrmSO_MTSGiling.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_CetakPOJasaClick(Sender: TObject);
var
  f: TfrmCetakPO;
begin
  f := TfrmCetakPO.Create(Self);
  f.JenisPO := 'jasa';
  f.Show;
end;

procedure TfrmUtama.mnPUR_AppPOJasaClick(Sender: TObject);
var
  f: TfrmApprovalPO;
begin
  f := TfrmApprovalPO.Create(Self);
  f.JenisPO := 'jasa';
  f.Show;
end;

procedure TfrmUtama.mnPOE_AppPenambahanBOMClick(Sender: TObject);
var
  f: TfrmApprovalPenambahanBOM;
begin
  f := TfrmApprovalPenambahanBOM.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPOE_MutBrgPeletanClick(Sender: TObject);
var
  f: TFrmMutBrgPelHslPrd;
begin
  f := TFrmMutBrgPelHslPrd.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_TrialClick(Sender: TObject);
var
  f: TfrmTrial;
begin
  f := TfrmTrial.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_SPBBReturClick(Sender: TObject);
var
  f: TfrmSPBBRetur;
begin
  f := TfrmSPBBRetur.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_ApprovalLKMClick(Sender: TObject);
var
  f: TfrmApprovalLKM;
begin
  f := TfrmApprovalLKM.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_SettingLokasiGridClick(Sender: TObject);
var
  f: TfrmSettingLokasiBarang;
begin
  f := TfrmSettingLokasiBarang.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_InsentifSopirClick(Sender: TObject);
var
  f: TfrmTrsInsentifSopir;
begin
  f := TfrmTrsInsentifSopir.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_LogBookDesignClick(Sender: TObject);
var
  //f: TfrmLogBookDesign;
  f: TfrmLogBookDesign_NEW;
begin
  //f := TfrmLogBookDesign.Create(Self);
  //f.Show;
  f := TfrmLogBookDesign_NEW.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MonitorSPKClick(Sender: TObject);
var
  f: TfrmMonitorSPKPrd;
begin
  f := TfrmMonitorSPKPrd.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnRev_PermintaanClick(Sender: TObject);
var
  f: TfrmPermintaanRevisi;
begin
  f := TfrmPermintaanRevisi.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnRev_ApprovalClick(Sender: TObject);
var
  f: TfrmAppPermintaanRevisi;
begin
  f := TfrmAppPermintaanRevisi.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnRev_PenutupanClick(Sender: TObject);
var
  f: TfrmPenutupanRevTrans;
begin
  f := TfrmPenutupanRevTrans.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_AppPenghapusanSPMBClick(Sender: TObject);
var
  f: TfrmAppPermintaanHapusSpmb;
begin
  f := TfrmAppPermintaanHapusSpmb.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MonitorSPKBahanClick(Sender: TObject);
var
  f: TfrmMonitorSPKPrd2;
begin
  f := TfrmMonitorSPKPrd2.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MonitorInputHPClick(Sender: TObject);
var
  f: TfrmMonitorInputHasilProduksi;
begin
  f := TfrmMonitorInputHasilProduksi.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_CetakDisposisiMBClick(Sender: TObject);
var
  f: TfrmLapUmum;
begin
  f := TfrmLapUmum.Create(Self);
  f.rptDisposisiBrg.ShowReport(True);
end;

procedure TfrmUtama.mnPRD_SerahTerimaSPKClick(Sender: TObject);
var
  f: TfrmSerahTerimaSPK;
begin
  f := TfrmSerahTerimaSPK.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnMonitoringKaryawanClick(Sender: TObject);
var
  f: TfrmMonitoringKaryawan;
begin
  f := TfrmMonitoringKaryawan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_ApprovalTrialClick(Sender: TObject);
var
  f: TFrmApprovalTrial;
begin
  f := TFrmApprovalTrial.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MasterOperatorClick(Sender: TObject);
var
  f: TFrmMstOperator;
begin
  f := TFrmMstOperator.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MasterTargetClick(Sender: TObject);
var
  f: TfrmMstTarget;
begin
  f := TfrmMstTarget.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MonitorTargetClick(Sender: TObject);
var
  f: TfrmMonitorTargetSPVPRD;
begin
  f := TfrmMonitorTargetSPVPRD.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_MutBrgPelClick(Sender: TObject);
var
  f: TFrmMutBrgPelHslPrd;
begin
  f := TFrmMutBrgPelHslPrd.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_PenerimaanSamplesClick(Sender: TObject);
var
  f: TFrmSPBBSamples;
begin
  f := TFrmSPBBSamples.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_InfoBengkelClick(Sender: TObject);
var
  f: TfrmInformasiPerbaikanBengkel;
begin
  f := TfrmInformasiPerbaikanBengkel.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_ApprovalDisposisiClick(Sender: TObject);
var
  f: TfrmApprovalDisposisi;
begin
  f := TfrmApprovalDisposisi.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_DaftarDisposisiClick(Sender: TObject);
var
  f: TfrmDaftarDisposisi;
begin
  f := TfrmDaftarDisposisi.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_BarangSlowMovingClick(Sender: TObject);
var
  f: TfrmBarangSlowMoving;
begin
  f := TfrmBarangSlowMoving.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnRekapCIOClick(Sender: TObject);
var
  f: TfrmRekapCIO;
begin
  f := TfrmRekapCIO.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_JamMesinClick(Sender: TObject);
var
  f: TfrmMonitorJamMesin_Listrik;
begin
  f := TfrmMonitorJamMesin_Listrik.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_FOBJClick(Sender: TObject);
var
  f: TfrmTrsFOBJ_Dept;
begin
  f := TfrmTrsFOBJ_Dept.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_ApprovalFOBJClick(Sender: TObject);
var
  f: TfrmApprovalFOBJ;
begin
  f := TfrmApprovalFOBJ.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_ApprovalTrialAwalClick(Sender: TObject);
var
  f: TfrmApprovalTrialAwal;
begin
  f := TfrmApprovalTrialAwal.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPUR_MonitoringFOBJClick(Sender: TObject);
var
  f: TfrmMonitoringFOBJ;
begin
  f := TfrmMonitoringFOBJ.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnCFT_MutasiOngkosKeluarClick(Sender: TObject);
var
  f: TfrmTrsKeluar;
begin
  f := TfrmTrsKeluar.Create(Self);
  f.JenisTrans := 'ongkos';
  f.Show;
end;

procedure TfrmUtama.mnQAC_FOBJClick(Sender: TObject);
var
  f: TfrmTrsFOBJ_Dept;
begin
  f := TfrmTrsFOBJ_Dept.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_ApprovalMutasiGKARClick(Sender: TObject);
var
  f: TfrmApprovalMutasiGKAR;
begin
  f := TfrmApprovalMutasiGKAR.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_HasilPercobaanClick(Sender: TObject);
var
  f: TfrmHasilPercobaan;
begin
  f := TfrmHasilPercobaan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnUnitClick(Sender: TObject);
var
  f: TfrmUnit ;
begin
  f := TfrmUnit.Create(self);
  f.Show ;
end;

procedure TfrmUtama.mnUnitSetClick(Sender: TObject);
var
  f : TFrmUnitSet1 ;
begin
  f:= TFrmUnitSet1.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQuotetionClick(Sender: TObject);
var
  //f : TfrmQuotetion ;
  f : TfrmDaftarQuotation;
  ts : TcxTabSheet ;
begin
  //f:= TfrmDaftarQuotation.Create(self);
 // f.Show ;
  if not CekTabOpen('Daftar Quotation') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarQuotation.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnKonfirmasiPOClick(Sender: TObject);
var
  //f : TfrmKonfirmasiPO ;
  f : TfrmDaftarKPO;
  ts : TcxTabSheet ;
begin
 // f:=  TfrmDaftarKPO.Create(self);
 // f.Show;
   if not CekTabOpen('Daftar Konfirmasi PO') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmDaftarKPO.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnCFT_InquirySheetClick(Sender: TObject);
var
  //f: TfrmInquirySheet;
  f: TFrmIS;
begin
  //f := TfrmInquirySheet.Create(Self);
  f := TFrmIS.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnQAC_ApprovalISClick(Sender: TObject);
var
  f: TfrmApprovalIS;
begin
  f := TfrmApprovalIS.Create(Self);
  f.Show;
end;


procedure TfrmUtama.mnMstSalesClick(Sender: TObject);
var
  f : TfrmSales ;
begin
  f := TfrmSales.Create(Self );
  f.Show;
end;

procedure TfrmUtama.mnCFT_SalesMobileClick(Sender: TObject);
var
  f: TfrmSalesMobile;
  ts : TcxTabSheet;
begin
  //f := TfrmSalesMobile.Create(Self);
  //f.Show;

   if not CekTabOpen('Sales Mobile') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmSalesMobile.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnRND_ApprovalISClick(Sender: TObject);
var
  f: TfrmApprovalIS;
begin
  f := TfrmApprovalIS.Create(Self);
  f.JenisApp := 'RND';
  f.Show;
end;

procedure TfrmUtama.mnRND_ApprovalIS_PMClick(Sender: TObject);
var
  f: TfrmApprovalIS;
begin
  f := TfrmApprovalIS.Create(Self);
  f.JenisApp := 'PM';
  f.Show;
end;

procedure TfrmUtama.mnCFT_DaftarISClick(Sender: TObject);
var
  f: TfrmDaftarIS;
begin
  f:= TfrmDaftarIS.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnListrikClick(Sender: TObject);
var
  f : TfrmListrik ;
begin
  f := TfrmListrik.Create(Self );
  f.Show;
end;

procedure TfrmUtama.mnUpahClick(Sender: TObject);
var
  f : TfrmUpah;
begin
    f := TfrmUpah.Create(Self );
  f.Show;
end;

procedure TfrmUtama.mnPRD_InputDownTimeClick(Sender: TObject);
var
  f: TfrmDownTime;
begin
  f := TfrmDownTime.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnWHL_ST_PBClick(Sender: TObject);
var
  f: TfrmST_PB;
begin
  f := TfrmST_PB.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPRD_InputHasilProduksiTimbClick(Sender: TObject);
var
  f: TfrmInputHasilProdTimb;
begin
  f := TfrmInputHasilProdTimb.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnRND_CostCalculationClick(Sender: TObject);
var
  f: TfrmDaftarCost;
begin
  f := TfrmDaftarCost.Create(Self);
  f.Show;
end;

procedure TfrmUtama.Button12Click(Sender: TObject);
var
  f: TfrmLapDetBarangSPK;
begin
  f := TfrmLapDetBarangSPK.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnMKT_ListPiutangCustomerClick(Sender: TObject);
var
  f: TfrmListPiutangCustomer;
begin
  f := TfrmListPiutangCustomer.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_ImportPiutangClick(Sender: TObject);
var
  f: TfrmImportPiutangCustomer;
begin
  f := TfrmImportPiutangCustomer.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_PiutangCustomerClick(Sender: TObject);
var
  f: TfrmPiutangCustomer;
begin
  f := TfrmPiutangCustomer.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnKalkulasiHPPClick(Sender: TObject);
var
  f: TfrmKalkulasiHPP;
begin
  f := TfrmKalkulasiHPP.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnACC_COAClick(Sender: TObject);
var
  f: TFrmMstCoa;
begin
  f := TFrmMstCoa.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnKC_InputKCClick(Sender: TObject);
var
 // f: TfrmCCR;
 f : TfrmAfterSales ;
begin
  {if not IsFormOpen('frmCCR') then begin
    f := TFrmCCR.Create(self);
    f.Show;
  end; }
    f := TfrmAfterSales.Create(self);
    f.Show;
end;

procedure TfrmUtama.mnKC_DaftarKomplainClick(Sender: TObject);
var
  f: TfrmDaftarRK2;
begin
  f := TfrmDaftarRK2.Create(Self);
  f.Jenis := 'app_smg';
  f.Show;
end;

procedure TfrmUtama.mnKC_DeptTerkaitClick(Sender: TObject);
var
  f: TfrmDaftarRK2;
begin
  f := TfrmDaftarRK2.Create(Self);
  f.Jenis := 'dept_terkait';
  f.SHow;
end;

procedure TfrmUtama.mnACC_PengeluaranKasClick(Sender: TObject);
var
 // f: TfrmPembayaranKas2;
 f : TfrmDaftarKeluarKas;
begin
  f := TfrmDaftarKeluarKas.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_TrsAntarAkunClick(Sender: TObject);
var
 // f: TfrmAkun2AKun;
   f : TfrmDaftarJU;
begin
  f := TfrmDaftarJU.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_PenerimaanKasClick(Sender: TObject);
var
 // f: TfrmPenerimaanKas2;
 f :TfrmDaftarTerimaKas;
begin
  f := TfrmDaftarTerimaKas.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnKC_AtasanDeptTerkaitClick(Sender: TObject);
var
  f: TfrmDaftarRK;
begin
  f := TfrmDaftarRK.Create(Self);
  f.Jenis := 'mgr_terkait';
  f.SHow;
end;

procedure TfrmUtama.mnKC_GMClick(Sender: TObject);
var
  f: TfrmDaftarRK2;
begin
  f := TfrmDaftarRK2.Create(Self);
  f.Jenis := 'GM';
  f.SHow;
end;

procedure TfrmUtama.mnRND_mstFormulaClick(Sender: TObject);
var
  f: TFrmMstFormula;
begin
  f := TFrmMstFormula.Create(Self);
  f.Show;
  end ;

procedure TfrmUtama.mnKC_ListSurveyClick(Sender: TObject);
var
  f : TfrmSurveyKepuasan ;
begin
  f := TfrmSurveyKepuasan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnHRD_DataKaryawanClick(Sender: TObject);
var
  f : TfrmMstKaryawan;
begin
  f := TfrmMstKaryawan.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnHRD_ImportFingerClick(Sender: TObject);
var
  //f: TfrmImportDataAbsensi ;
  f:TfrmImportFinger ;
begin
 // f := TfrmImportDataAbsensi.Create(Self);
 f:= TfrmImportFinger.Create(self);
  f.Show;
end;

procedure TfrmUtama.mnOpr_ImprovementClick(Sender: TObject);
var
  f : TfrmOpr_Improvement;
begin
  f:= TfrmOpr_Improvement.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnHRD_DataAbsenClick(Sender: TObject);
var
  f : TfrmDataAbsensi ;
begin
  f := TfrmDataAbsensi.Create(self);
  f.ShowModal ;

end;

procedure TfrmUtama.mnHRD_DasarJadwalClick(Sender: TObject);
var
   f : TfrmDasarJadwal ;
begin
  f := TfrmDasarJadwal.Create(self);
  f.ShowModal ;
end;

procedure TfrmUtama.mnRND_LembarPermintaanClick(Sender: TObject);
var
  f : TfrmLembarPermintaan ;
begin
  f := TfrmLembarPermintaan.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnRND_ApprovalJurnalClick(Sender: TObject);
var
  f : TfrmApprovalJurnalKerja;
begin
  f:= TfrmApprovalJurnalKerja.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnRND_DaftarJurnalClick(Sender: TObject);
var
  f : TfrmDaftarJurnalKerja ;
begin
  f := TfrmDaftarJurnalKerja.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnACC_HPPActClick(Sender: TObject);
var
  f : TfrmHPP ;
begin
  f := TfrmHPP.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnPUR_HargaPasarClick(Sender: TObject);
var
  f : TfrmHargaPasaran ;
begin
  f := TfrmHargaPasaran.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnRND_DaftarCPClick(Sender: TObject);
var
  f : TfrmDaftarControlPlan1;
begin
  f := TfrmDaftarControlPlan1.Create(self);
  f.ShowModal;
end;

procedure TfrmUtama.mnPPIC_PemakaianBahanClick(Sender: TObject);
var
  f: TfrmPemakaianBahan ;
  ts : TcxTabSheet;
begin
 // f := TfrmPemakaianBahan.Create(self);
  //f.ShowModal ;
  if not CekTabOpen('Pemkaian Bahan Baku') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmPemakaianBahan.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnRND_ProjectClick(Sender: TObject);
var
  f: TfrmProjectRND ;
begin
    f := TfrmProjectRND.Create(self);
  f.ShowModal ;
end;

procedure TfrmUtama.mnRND_InputProjectClick(Sender: TObject);
var
  f : TfrmTransProject ;
begin
      f := TfrmTransProject.Create(self);
  f.ShowModal ;
end;

procedure TfrmUtama.mnRpt_AllClick(Sender: TObject);
var
  f: TfrmLaporan;
begin
  aplikasi.log_('REPORT');
  f := TfrmLaporan.Create(Self);
  f.ShowModal;
end;


procedure TfrmUtama.mnRpt_ExcelClick(Sender: TObject);
var
  f: TfrmLapExcel;
begin
  f := TfrmLapExcel.Create(Self);
  f.ShowModal;
end;

procedure TfrmUtama.mnPRD_LHPClick(Sender: TObject);
var
  f: TfrmLHP;
  ts : TcxTabSheet;
begin
   // f := TfrmLHP.Create(Self);
  //f.ShowModal;

     if not CekTabOpen('Laporan hasil Produksi') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=  TfrmLHP.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

      pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnACC_PembayaranPembelianClick(Sender: TObject);
var
 // f: TFrmPembayaranPembelian;
 f: TfrmDaftarPembayaranPembelian ;
 ts : TcxTabSheet;
begin
  //f := TfrmDaftarPembayaranPembelian.Create(self);
  //f.Show;

   if not CekTabOpen('Pembayaran Pembelian') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f := TfrmDaftarPembayaranPembelian.Create(self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

      pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnACC_InvoiceClick(Sender: TObject);
var
  //f: TFrmInvoice;
  f: TFrmDaftarSI;
begin
  f := TFrmDaftarSI.Create(self);
  f.Show;
end;

procedure TfrmUtama.mnACC_VerifikasiAkunMasterBarangClick(Sender: TObject);
var
  f: TFrmVerifikasiMasterBarang;
begin
   f := TfrmVerifikasiMasterBarang.Create(self);
  f.Show
end;

procedure TfrmUtama.mnACC_SettingDefaultAkunClick(Sender: TObject);
var
  f: TfrmSettingDefaultAkun2 ;
begin
   f := TfrmSettingDefaultAkun2.Create(self);
  f.Show
end;

procedure TfrmUtama.mnPUR_AppPPAtasanClick(Sender: TObject);
var
  f: TfrmApprovalPermintaanPembelian;
  ts : TcxTabSheet;
begin
 // f := TfrmApprovalPermintaanPembelian.Create(Self);
 // f.JenisApp := 'atasan';
 // f.Show;

    if not CekTabOpen('Apporval Permintaan Pembelian') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmApprovalPermintaanPembelian.Create(Self);
    f.JenisApp := 'atasan';
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnPUR_AppPPGMClick(Sender: TObject);
var
  f: TfrmApprovalPermintaanPembelian;
  ts : TcxTabSheet;
begin
 // f := TfrmApprovalPermintaanPembelian.Create(Self);
  //f.JenisApp := 'gm';
  //f.Show;
    if not CekTabOpen('Apporval Permintaan Pembelian') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmApprovalPermintaanPembelian.Create(Self);
    f.JenisApp := 'gm';
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.ReturPembelian1Click(Sender: TObject);
var
  f: TfrmTrsReturPembelian;
begin
  f := TfrmTrsReturPembelian.Create(Self);
  f.Show;

end;

procedure TfrmUtama.mnACC_InvoicePembelianClick(Sender: TObject);
var
  //f: TfrmInvoicePembelian;
  f : TfrmDaftarInvoicePembelian ;
  ts : TcxTabSheet;
begin
 // f := TfrmDaftarInvoicePembelian.Create(Self);
 // f.Show;

     if not CekTabOpen('Daftar Invoice Pembelian') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f := TfrmDaftarInvoicePembelian.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnRpt_AkuntingClick(Sender: TObject);
var
  f: TfrmLaporanAcc;
begin
  f := TfrmLaporanAcc.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnTaxTypeClick(Sender: TObject);
var
  f: TfrmTaxType;
begin
  f := TfrmTaxType.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnTaxGroupClick(Sender: TObject);
var
  f: TfrmTaxGroup;
begin
  f := TfrmTaxGroup.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnPPIC_AppDiluarBOMClick(Sender: TObject);
var
  f: TfrmAppPenamabahanDiluarBom;
  ts : TcxTabSheet ;
begin
 // f := TfrmAppPenamabahanDiluarBom.Create(Self);
 // f.Show;
   if not CekTabOpen('Approval Penambahan Bahan Diluar BOM') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f :=TfrmAppPenamabahanDiluarBom.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

    pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnRpt_ProduksiClick(Sender: TObject);
var
  f: TfrmLaporanProduksi;
begin
  f := TfrmLaporanProduksi.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_DaftarJurnalClick(Sender: TObject);
var
  f: TfrmDaftarJurnal ;
    ts : TcxTabSheet ;
begin
   //f := TfrmDaftarJurnal.Create(Self);
  //f.Show;
   if not CekTabOpen('Daftar Jurnal') then begin
    ToggleMainPage;
    ts := TcxTabSheet.Create(Self);
    ts.PageControl := pgMain;

    f := TfrmDaftarJurnal.Create(Self);
    f.Parent := ts;
    ts.Caption := f.Caption;
    f.Show;

      pgMain.ActivePage := ts;
  end;
end;

procedure TfrmUtama.mnACC_SummaryBalanceClick(Sender: TObject);
var
  f : TfrmSummaryBalance ;
begin
   f := TfrmSummaryBalance.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_PenerimaanBankClick(Sender: TObject);
var
  f : TfrmPenerimaanBank;
begin
 f := TfrmPenerimaanBank.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_PengeluaranBankClick(Sender: TObject);
var
 f : TfrmDaftarPengeluaranBank ;
begin
  f := TfrmDaftarPengeluaranBank.Create(Self);
  f.Show;
end;

procedure TfrmUtama.mnACC_SAAkunClick(Sender: TObject);
var
 f : TfrmSaldoAwalAkun;
begin
  f := TfrmSaldoAwalAkun.Create(Self);
  f.Show;
end;

procedure TfrmUtama.ToggleMainPage;
begin
  if not pgMain.Visible then pgMain.Visible := True;
end;

procedure TfrmUtama.PGChange(Sender: TObject);
var
  pg: TcxPageControl;
begin
  pg := (Sender as TcxPageControl);
  if pg.TabCount = 0 then pg.Visible := False;
end;

procedure TfrmUtama.CloseTab(Frm: TForm; Sender: TObject);
var
  t: TcxTabSheet;
  i: integer;
begin
  Frm.Release;
end;

end.
