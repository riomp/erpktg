unit unFrmMstBarang_KTG;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxSpinEdit, cxDropDownEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxGroupBox, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls,
  cxMemo, cxCheckBox, cxEditRepositoryItems, cxHyperLinkEdit,
  Jpeg, ShellAPI;

type
  TfrmMstBrg_KTG = class(TfrmTplMaster)
    TabSheet3: TTabSheet;
    cxGroupBox4: TcxGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    cxsMinTSTD: TcxSpinEdit;
    cxsMaxTSTD: TcxSpinEdit;
    cxsMinTSMD: TcxSpinEdit;
    cxsMaxTSMD: TcxSpinEdit;
    cxsMinTETD: TcxSpinEdit;
    cxsMaxTETD: TcxSpinEdit;
    cxsMinTEMD: TcxSpinEdit;
    cxsMaxTEMD: TcxSpinEdit;
    cxsMinTearTD: TcxSpinEdit;
    cxsMaxTearTD: TcxSpinEdit;
    cxsMinTearMD: TcxSpinEdit;
    cxsMaxTearMD: TcxSpinEdit;
    cxsMinPuncture: TcxSpinEdit;
    cxsMaxPuncture: TcxSpinEdit;
    cxsMinOpasitas: TcxSpinEdit;
    cxsMaxOpasitas: TcxSpinEdit;
    cxsMinDrat: TcxSpinEdit;
    cxsMaxDrat: TcxSpinEdit;
    cxtAcuan: TcxTextEdit;
    cxtCritical: TcxMemo;
    zCust: TZQuery;
    dsCust: TDataSource;
    cxTblViewKODE: TcxGridDBColumn;
    cxTblViewDESKRIPSI: TcxGridDBColumn;
    Label50: TLabel;
    cxlSatuan: TcxLookupComboBox;
    zUnit: TZQuery;
    ds3: TDataSource;
    zSatuan: TZQuery;
    ds4: TDataSource;
    cxlSatuanDet: TcxLookupComboBox;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblRouting: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColRouting: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    zqrIS: TZQuery;
    dsIS: TDataSource;
    cxColKodeRouting: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    zqrBrgRouting: TZQuery;
    dsBrgRouting: TDataSource;
    Label53: TLabel;
    cxsTSTD: TcxSpinEdit;
    cxsTSMD: TcxSpinEdit;
    cxsTETD: TcxSpinEdit;
    cxsTEMD: TcxSpinEdit;
    cxsTearTD: TcxSpinEdit;
    cxsTearMD: TcxSpinEdit;
    cxsPuncture: TcxSpinEdit;
    cxsOpasitas: TcxSpinEdit;
    cxsDrat: TcxSpinEdit;
    ScrollBox1: TScrollBox;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxtKode: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxlCustomer: TcxLookupComboBox;
    cxtFungsi: TcxTextEdit;
    cxCmbBase: TcxComboBox;
    cxtSheet: TcxComboBox;
    cxsBeratJenis: TcxSpinEdit;
    cxChkAktif: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cxsTebal: TcxSpinEdit;
    cxsBeratKotor: TcxSpinEdit;
    cxsBeratBersih: TcxSpinEdit;
    cxsBeratMeter: TcxSpinEdit;
    cxsBeratJadi: TcxSpinEdit;
    cxsLebarBuka: TcxSpinEdit;
    cxsLebarJadi: TcxSpinEdit;
    cxsPanjang: TcxSpinEdit;
    cxsPanjangJadi: TcxSpinEdit;
    cxsLebarTube: TcxSpinEdit;
    cxsPanjangPlong: TcxSpinEdit;
    cxsLebarPlong: TcxSpinEdit;
    cxsTopFlod: TcxSpinEdit;
    cxsGusset: TcxSpinEdit;
    cxsLebarHandle: TcxSpinEdit;
    cxsAirHole: TcxSpinEdit;
    cxsCut: TcxSpinEdit;
    cxGroupBox3: TcxGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cxtBentukProduk: TcxTextEdit;
    cxtDesainPrinting: TcxTextEdit;
    cxtWarnaFilm: TcxTextEdit;
    cxtVisualProperty: TcxTextEdit;
    cxtSurfaceProperty: TcxTextEdit;
    Panel1: TPanel;
    zqrKelompok: TZQuery;
    dsKelompok: TDataSource;
    dsSubKelompok: TDataSource;
    zqrSubKelompok: TZQuery;
    cxlKelompok: TcxLookupComboBox;
    Label54: TLabel;
    Label55: TLabel;
    cxlSubKelompok: TcxLookupComboBox;
    cxtSubKelompok: TcxTextEdit;
    cxtKelompok: TcxTextEdit;
    TabSheet4: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblBOM: TcxGridTableView;
    cxColBomKode: TcxGridColumn;
    cxColBomDesc: TcxGridColumn;
    cxColBomQty: TcxGridColumn;
    cxColBomSatuan: TcxGridColumn;
    cxColPersen: TcxGridColumn;
    cxTblBOMColumn1: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    dsUnit: TDataSource;
    zqrUnit: TZQuery;
    cxColJnsBom: TcxGridColumn;
    Label56: TLabel;
    cxtNamaBrg: TcxTextEdit;
    Label57: TLabel;
    cxsBeratBOM: TcxSpinEdit;
    Label58: TLabel;
    cxCmbBentuk: TcxComboBox;
    Label59: TLabel;
    cxsTinggiTotal: TcxSpinEdit;
    btnHitungBerat: TButton;
    zqrBrgBom: TZQuery;
    dsBrgBom: TDataSource;
    TabSheet5: TTabSheet;
    cxLabel1: TcxLabel;
    cxtSatDasar: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxlKonv1: TcxLookupComboBox;
    cxsJmlKonv1: TcxSpinEdit;
    cxLabel3: TcxLabel;
    cxlKonv2: TcxLookupComboBox;
    cxsJmlKonv2: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxlKonv3: TcxLookupComboBox;
    cxsJmlKonv3: TcxSpinEdit;
    cxLabel5: TcxLabel;
    cxlKonv4: TcxLookupComboBox;
    cxsJmlKonv4: TcxSpinEdit;
    cxLabel6: TcxLabel;
    cxlKonv5: TcxLookupComboBox;
    cxsJmlKonv5: TcxSpinEdit;
    Label60: TLabel;
    cxtKode2: TcxTextEdit;
    Label61: TLabel;
    cxtNamaBrg2: TcxTextEdit;
    btnGenerateKode: TButton;
    Label62: TLabel;
    cxlSupplier: TcxLookupComboBox;
    zSupp: TZQuery;
    dsSupp: TDataSource;
    cxColMesin: TcxGridColumn;
    zMesin: TZQuery;
    dsMesin: TDataSource;
    cxLabel7: TcxLabel;
    cxsHPP: TcxSpinEdit;
    cxLabel121: TcxLabel;
    cxlUnitKTG: TcxLookupComboBox;
    zqrUnitKTG: TZReadOnlyQuery;
    dsUnitKTG: TDataSource;
    Label63: TLabel;
    cxlIS: TcxLookupComboBox;
    cxtNoIS: TcxTextEdit;
    Panel2: TPanel;
    cxGroupBox6: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxTblCriticalPoint: TcxGridTableView;
    cxCol_CP_Ket: TcxGridColumn;
    cxCol_CP_1: TcxGridColumn;
    cxCol_CP_2: TcxGridColumn;
    cxCol_CP_3: TcxGridColumn;
    cxCol_CP_4: TcxGridColumn;
    cxCol_CP_5: TcxGridColumn;
    cxGrid3Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxTblCriticalPoint2: TcxGridTableView;
    cxGridColumn1: TcxGridColumn;
    cxGridColumn2: TcxGridColumn;
    cxGridColumn3: TcxGridColumn;
    cxGridColumn4: TcxGridColumn;
    cxGridColumn5: TcxGridColumn;
    cxGridColumn6: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxTblMatSaran: TcxGridTableView;
    cxCol_MS_Bahan: TcxGridColumn;
    cxCol_MS_KodeBrg: TcxGridColumn;
    cxCol_MS_Deskripsi: TcxGridColumn;
    cxCol_MS_Layer1: TcxGridColumn;
    cxCol_MS_Layer2: TcxGridColumn;
    cxCol_MS_Layer3: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    cxCol_MS_Mono: TcxGridColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1ComboBoxItem1: TcxEditRepositoryComboBoxItem;
    cxGroupBox8: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxt_td_TebalFilm: TcxTextEdit;
    cxt_td_RepeatFilm: TcxTextEdit;
    cxt_td_BeratJadi: TcxTextEdit;
    cxt_td_LebarFilm: TcxTextEdit;
    cxt_td_GbrTepiKanan: TcxTextEdit;
    cxt_td_PanjangJadi: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxt_td_BeratPerMeter: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxt_td_GbrTepiKiri: TcxTextEdit;
    zqrUnit2: TZReadOnlyQuery;
    dsUnit2: TDataSource;
    cxs_MS_Out: TcxSpinEdit;
    cxLabel16: TcxLabel;
    cxs_MS_Mid: TcxSpinEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxs_MS_In: TcxSpinEdit;
    cxLabel19: TcxLabel;
    cxs_MS_Total: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxs_MS_POut: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxs_MS_PMid: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxs_MS_PIn: TcxSpinEdit;
    GroupBox1: TGroupBox;
    Label51: TLabel;
    cxtKodeFina: TcxTextEdit;
    Label64: TLabel;
    cxtNamaFina: TcxTextEdit;
    cxGrid6: TcxGrid;
    cxTblCriticalPoint_21: TcxGridTableView;
    cxCol_CP_Ket_21: TcxGridColumn;
    cxCol_CP_Ukuran: TcxGridColumn;
    cxCol_CP_Min: TcxGridColumn;
    cxCol_CP_Max: TcxGridColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxTblCriticalPoint_22: TcxGridTableView;
    cxGridColumn11: TcxGridColumn;
    cxGridColumn12: TcxGridColumn;
    cxGridColumn13: TcxGridColumn;
    cxGridColumn14: TcxGridColumn;
    cxGridLevel5: TcxGridLevel;
    Label65: TLabel;
    cxsLine: TcxSpinEdit;
    cxColBomBahan: TcxGridColumn;
    cxColBomLayer1: TcxGridColumn;
    cxColBomLayer2: TcxGridColumn;
    cxColBomLayer3: TcxGridColumn;
    cxGroupBox9: TcxGroupBox;
    Label67: TLabel;
    cxlSubKelompok1: TcxLookupComboBox;
    zSubKelompok1: TZQuery;
    Label25: TLabel;
    cxtAksesoris: TcxTextEdit;
    Label27: TLabel;
    cxsTebalAks: TcxSpinEdit;
    Label28: TLabel;
    cxsLebarAks: TcxSpinEdit;
    Label26: TLabel;
    Label29: TLabel;
    cxsBeratAks: TcxSpinEdit;
    cxsPanjangAks: TcxSpinEdit;
    cxLabel65: TcxLabel;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cxLabel110: TcxLabel;
    cxLabel66: TcxLabel;
    cxsPackQty1: TcxSpinEdit;
    cxsPackQty2: TcxSpinEdit;
    cxsPackQty3: TcxSpinEdit;
    cxsPackQty4: TcxSpinEdit;
    cxsPackQty5: TcxSpinEdit;
    cxLabel67: TcxLabel;
    cxCmbPackUnit1: TcxComboBox;
    cxCmbPackUnit2: TcxComboBox;
    cxCmbPackUnit3: TcxComboBox;
    cxCmbPackUnit4: TcxComboBox;
    cxCmbPackunit5: TcxComboBox;
    cxLabel68: TcxLabel;
    cxCmbFolding1: TcxComboBox;
    cxCmbFolding2: TcxComboBox;
    cxLabel69: TcxLabel;
    cxCmbPackAcc: TcxComboBox;
    cxLabel70: TcxLabel;
    cxsPackAccCore: TcxSpinEdit;
    cxsPackAccInner: TcxSpinEdit;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxsPackAccThickness: TcxSpinEdit;
    cxLabel73: TcxLabel;
    cxsPackAccLength: TcxSpinEdit;
    cxLabel74: TcxLabel;
    cxmPackAccNotes: TcxMemo;
    cxLabel75: TcxLabel;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel78: TcxLabel;
    cxLabel79: TcxLabel;
    cxtMaterialIO: TcxTextEdit;
    cxtMaterialLblPB: TcxTextEdit;
    cxtMaterialOuter: TcxTextEdit;
    cxtMaterialDispenser: TcxTextEdit;
    cxLabel80: TcxLabel;
    cxtColoursIO: TcxTextEdit;
    cxtColoursLblPB: TcxTextEdit;
    cxtColoursOuter: TcxTextEdit;
    cxtColourDispenser: TcxTextEdit;
    cxLabel81: TcxLabel;
    cxsGsmIO: TcxSpinEdit;
    cxsGsmLabelPB: TcxSpinEdit;
    cxsGSMOuter: TcxSpinEdit;
    cxsGSMDispenser: TcxSpinEdit;
    cxLabel82: TcxLabel;
    cxsWidthIO: TcxSpinEdit;
    cxsWidthLabelPB: TcxSpinEdit;
    cxsWidthOuter: TcxSpinEdit;
    cxsWidthDispenser: TcxSpinEdit;
    cxLabel83: TcxLabel;
    cxsLengthIO: TcxSpinEdit;
    cxsLengthLabelPB: TcxSpinEdit;
    cxsLengthOuter: TcxSpinEdit;
    cxsLengthDispenser: TcxSpinEdit;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxsPDColoursIO: TcxSpinEdit;
    cxsPDColoursLabelPB: TcxSpinEdit;
    cxsPDColoursOuter: TcxSpinEdit;
    cxsPDColoursDispenser: TcxSpinEdit;
    cxsPDSidesIO: TcxSpinEdit;
    cxsPDSidesLabelPB: TcxSpinEdit;
    cxsPDSidesOuter: TcxSpinEdit;
    cxsPDSidesDispenser: TcxSpinEdit;
    dsSubKelompok1: TDataSource;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxsFPMaterialInnerSize: TcxSpinEdit;
    cxsFPMaterialOuterSize: TcxSpinEdit;
    cxLabel94: TcxLabel;
    cxsFPGsm: TcxSpinEdit;
    cxLabel91: TcxLabel;
    cxsFPWidthInnerSize: TcxSpinEdit;
    cxsFPWidthOuterSize: TcxSpinEdit;
    cxLabel95: TcxLabel;
    cxLabel92: TcxLabel;
    cxsFPLengthInnerSize: TcxSpinEdit;
    cxsFPLengthOuterSize: TcxSpinEdit;
    cxLabel96: TcxLabel;
    cxsFPLengthColours: TcxSpinEdit;
    cxLabel93: TcxLabel;
    cxsFPHeightInnerSize: TcxSpinEdit;
    cxsFPHeightOuterSize: TcxSpinEdit;
    cxLabel97: TcxLabel;
    cxsFPHeightSides: TcxSpinEdit;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxsPalletWidth: TcxSpinEdit;
    cxLabel101: TcxLabel;
    cxsPalletLength: TcxSpinEdit;
    cxLabel103: TcxLabel;
    cxsPalletHeight: TcxSpinEdit;
    cxLabel100: TcxLabel;
    cxsPalletEntry: TcxSpinEdit;
    cxLabel102: TcxLabel;
    cxsPalletRequirement: TcxSpinEdit;
    cxLabel104: TcxLabel;
    cxmCompilingPackaging: TcxMemo;
    cxGroupBox10: TcxGroupBox;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxtPolaTreatLuar: TcxTextEdit;
    cxtPolaTreatDalam: TcxTextEdit;
    cxsTreatLuar: TcxSpinEdit;
    cxsTreatDalam: TcxSpinEdit;
    cxGroupBox11: TcxGroupBox;
    cxLabel25: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cxtDetailWarna1: TcxTextEdit;
    cxtDetailWarna2: TcxTextEdit;
    cxsJmlWarna1: TcxSpinEdit;
    cxsJmlWarna2: TcxSpinEdit;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    cxLabel43: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxsTepiKiri: TcxSpinEdit;
    cxsTepiKanan: TcxSpinEdit;
    cxsTepiAtas: TcxSpinEdit;
    cxsTepiBawah: TcxSpinEdit;
    cxsLebar: TcxSpinEdit;
    cxsPanjangPrint: TcxSpinEdit;
    cxsToleransi: TcxSpinEdit;
    cxtArahGulung: TcxTextEdit;
    cxtArahFilm: TcxTextEdit;
    cxsJumlahMD: TcxSpinEdit;
    cxsCmMD: TcxSpinEdit;
    cxsJumlahTD: TcxSpinEdit;
    cxsCmTD: TcxSpinEdit;
    cxsCylinder: TcxSpinEdit;
    cxsKeliling: TcxSpinEdit;
    cxsRepeatPrint: TcxSpinEdit;
    Label24: TLabel;
    Label66: TLabel;
    cxspBufer: TcxSpinEdit;
    cxsLead: TcxSpinEdit;
    cxColKetebalan: TcxGridColumn;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxtRegister: TcxTextEdit;
    cxtDesign: TcxTextEdit;
    cxGroupBox12: TcxGroupBox;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxtG_Jenis: TcxTextEdit;
    cxtG_Proses: TcxTextEdit;
    cxtG_Arah: TcxTextEdit;
    cxtC_Keterangan: TcxTextEdit;
    cxtC_Arah: TcxTextEdit;
    cxsG_lebar: TcxSpinEdit;
    cxsG_Toleransi: TcxSpinEdit;
    cxsC_Jarak: TcxSpinEdit;
    cxsC_panjang: TcxSpinEdit;
    cxsC_GA: TcxSpinEdit;
    cxsC_GB: TcxSpinEdit;
    Label68: TLabel;
    cxtSubGroup: TcxComboBox;
    cxCollockGroup: TcxGridColumn;
    cxColLockDetail: TcxGridColumn;
    cxColSub: TcxGridColumn;
    cxCollockpersen: TcxGridColumn;
    cxLabel63: TcxLabel;
    cxtKetTread: TcxTextEdit;
    TabSheet6: TTabSheet;
    Label69: TLabel;
    Label70: TLabel;
    cxGrid8: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxTblImg: TcxGridTableView;
    cxGridLevel6: TcxGridLevel;
    cxtKetImg: TcxTextEdit;
    cxtNamaFile: TcxTextEdit;
    btnSimpanGambar: TButton;
    cxColKetImg: TcxGridColumn;
    cxColLihatImg: TcxGridColumn;
    btnBrowse: TButton;
    openDlg: TOpenDialog;
    cxColIDImg: TcxGridColumn;
    Panel3: TPanel;
    image: TImage;
    Label71: TLabel;
    btnHapusImg: TButton;
    btnLihatImage: TButton;
    btnCopyDetailBrg: TButton;
    Label72: TLabel;
    cxsStandar: TcxSpinEdit;
    Label73: TLabel;
    cxtAlt: TcxTextEdit;
    cxGrid9: TcxGrid;
    cxTblaLT: TcxGridTableView;
    cxGridLevel7: TcxGridLevel;
    cxColKode: TcxGridColumn;
    cxColDeskripsi1: TcxGridColumn;
    zqrAlt: TZQuery;
    dsAlt: TDataSource;
    cxtttebal: TcxTextEdit;
    cxttbk: TcxTextEdit;
    cxttbb: TcxTextEdit;
    cxttberatmeter: TcxTextEdit;
    cxttfg: TcxTextEdit;
    cxttlb: TcxTextEdit;
    cxttlj: TcxTextEdit;
    cxttpt: TcxTextEdit;
    cxttpj: TcxTextEdit;
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHapusClick(Sender: TObject);
    procedure cxlSatuanPropertiesChange(Sender: TObject);
    procedure btnPilihClick(Sender: TObject);
    procedure cxColDeskripsiPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblRoutingDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblRoutingDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxlKelompokPropertiesChange(Sender: TObject);
    procedure cxlSubKelompokPropertiesChange(Sender: TObject);
    procedure cxTblBOMDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure pgChange(Sender: TObject);
    procedure btnHitungBeratClick(Sender: TObject);
    procedure cxTblBOMEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnGenerateKodeClick(Sender: TObject);
    procedure cxlISPropertiesEditValueChanged(Sender: TObject);
    procedure cxTblCriticalPointEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxTblCriticalPointCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTblCriticalPoint2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxTblMatSaranDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblCriticalPointDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxTblCriticalPoint2DataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxs_MS_OutPropertiesChange(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxTblMatSaranDataControllerNewRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxTblCriticalPoint_21CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTblCriticalPoint_21Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxTblCriticalPoint_22CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTblCriticalPoint_22Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxTblBOMDataControllerNewRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxlSubKelompok1PropertiesChange(Sender: TObject);
    procedure cxColKategoriPropertiesChange(Sender: TObject);
    procedure cxCmbBasePropertiesChange(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
    procedure btnSimpanGambarClick(Sender: TObject);
    procedure cxTblImgCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHapusImgClick(Sender: TObject);
    procedure btnLihatImageClick(Sender: TObject);
    procedure btnCopyDetailBrgClick(Sender: TObject);
    procedure cxTblBOMFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTblaLTDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
  private
    { Private declarations }
     mJenisEdit: string;
      mKodeEdit: string;
    procedure ClearAll;
    procedure SimpanBOM;
    function HitungBerat: real;
    procedure SimpanMaterialSaran;
    function HitungBeratKotor: real;
    function HitungBeratBersih: Real;
    function BeratPerMeter: real;
    function ObtainFileSize(const AFile: String): Int64;
  public
    { Public declarations }
  end;

var
  frmMstBrg_KTG: TfrmMstBrg_KTG;

implementation

uses unAplikasi, unTools, unDm, unFrmCari;

{$R *.dfm}

procedure TfrmMstBrg_KTG.btnTambahClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxGroupBox then
      (Components[i] as TcxGroupBox).Enabled := True;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxSpinEdit then
      (Components[i] as TcxSpinEdit).Value := 0;
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
    if Components[i] is TcxMemo then
      (Components[i] as TcxMemo).Text := '';
  end;

  cxtKode.SetFocus;
  cxTblrouting.DataController.RecordCount := 0;

  cxChkAktif.Checked := True;
end;

procedure TfrmMstBrg_KTG.btnEditClick(Sender: TObject);
begin
  inherited;
  pg.ActivePageIndex := 5;
end;

procedure TfrmMstBrg_KTG.btnSimpanClick(Sender: TObject);
var
  f, f_persen, f_volume, f_satu : boolean;
  i,j,k,l : Integer;
  tbl_sa, tbl_brg_det: TZTable;
  q, qSA,z : TZQuery;
  lst, lst2: TStringList;
  tot_persen: real;
  sKode1, sKode2, sFld: string;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if cxtKode.Text = '' then begin
    MsgBox('Kode Harus di isi.');
    cxtKode.SetFocus;
  end
  else if cxlSatuan.Text = '' then begin
    MsgBOx('Unit set / satuan harus di isi.');
    pg.ActivePageIndex := 1;
    cxlSatuan.SetFocus;
  end
  else if cxlSatuanDet.Text = '' then begin
    MsgBox('Unit set / satuan harus di isi.');
    pg.ActivePageIndex := 1;
    cxlSatuanDet.SetFocus;
  end
  else begin

    if cxlUnitKTG.Text = '' then begin
      if Copy(cxtKode.Text,1,1) <> 'C' then begin
        MsgBox('Unit harus di isi.');
        cxlUnitKTG.SetFocus;
        Abort;
      end;
    end;

    // cek persentase BOM
    if cxTblBOM.DataController.RecordCount > 0 then begin

      // cek apakah ada yang persen
      f_persen := false;
      for i := 0 to cxTblBOM.DataController.RecordCount - 1 do begin
        if cxTblBOM.DataController.Values[i, cxColJnsBom.Index] = 'PERSEN' then begin
          f_persen := true;
          Break;
        end;
      end;

      // jika ada isian persen
      if f_persen then begin
        tot_persen := 0;
        for i := 0 to cxTblBOM.DataController.RecordCount - 1 do begin
          if cxTblBOM.DataController.Values[i, cxColJnsBom.Index] = 'PERSEN' then begin
            if VarIsNull(cxTblBOM.DataController.Values[i, cxColPersen.INdex]) then
              cxTblBOM.DataController.Values[i, cxColPersen.INdex] := 0;
            tot_persen := tot_persen + cxTblBOM.DataController.Values[i, cxColPersen.INdex];
          end;
        end;

        if tot_persen < 100 then begin
          MsgBox('Total persentase BOM belum 100%.');
          pg.ActivePageIndex := 2;
          Abort;
        end;

          {if tot_persen > 100 then begin
          MsgBox('Total persentase BOM lebih 100%.');
          pg.ActivePageIndex := 2;
          Abort;
        end;  }
      end;

      // cek apakah masih ada jenis bom yang kosong
      for i := 0 to cxTblBOM.DataController.RecordCount - 1 do begin
        if VarIsNull(cxTblBOM.DataController.Values[i, cxColJnsBom.Index]) then begin
          MsgBox('Jenis isian BOM masih ada yang kosong.');
          pg.ActivePageIndex := 2;
          Abort;
        end;
      end;

      // cek apakah masih ada qty bom yang kosong jika pilihan adalah volume
      for i := 0 to cxTblBOM.DataController.RecordCount - 1 do begin
        if cxTblBOM.DataController.Values[i, cxColJnsBom.Index] = 'VOLUME' then begin
          if (VarIsNull(cxTblBOM.DataController.Values[i, cxColBomQty.Index])) or
            (cxTblBOM.DataController.Values[i, cxColBomQty.Index] = 0) then begin
            MsgBox('Qty. BOM masih ada yang kosong.');
            pg.ActivePageIndex := 2;
            Abort;
          end;
        end;
      end;

      // cek apakah masih ada satuan bom yang kosong
      for i := 0 to cxTblBOM.DataController.RecordCount - 1 do begin
        if VarIsNull(cxTblBOM.DataController.Values[i, cxColBomSatuan.Index]) then begin
          MsgBox('Satuan BOM masih ada yang kosong.');
          pg.ActivePageIndex := 2;
          Abort;
        end;
      end;

    end;

    // Cek Grid Material Yang Disarankan
    {if cxTblMatSaran.DataController.RecordCount > 0 then begin

      with cxTblMatSaran.DataController do begin
        // kolom bahan
        for i := 0 to RecordCount-1 do begin
          if VarIsNull(Values[i, cxCol_MS_Bahan.Index]) then begin
            MsgBox('Kolom bahan masih ada yang kosong. (Material yang disarankan)');
            Abort;
          end;
        end;

        // kolom kode barang
        for i := 0 to RecordCount-1 do begin
          if VarIsNull(Values[i, cxCol_MS_KodeBrg.Index]) then begin
            MsgBox('Kolom Kode Barang masih ada yang kosong. (Material yang disarankan)');
            Abort;
          end;
        end;
        
      end;
    end; }

    {
    // Cek Grid Critical Point 1
    with cxTblCriticalPoint.DataController do begin
      for i := 1 to RecordCount - 1 do begin
        k := 0;
        for j := 1 to 5 do begin
          if Values[i,j] = 1 then Inc(k);
        end;
        if k > 1 then begin
          MsgBox('Masih ada pilihan Critical Point lebih dari 1.');
          Break;
        end;
      end;
      if k > 1 then Abort;
    end;

    // Cek Grid Critical Point 1
    with cxTblCriticalPoint2.DataController do begin
      for i := 1 to RecordCount - 1 do begin
        k := 0;
        for j := 1 to 5 do begin
          if Values[i,j] = 1 then Inc(k);
        end;
        if k > 1 then begin
          MsgBox('Masih ada pilihan Critical Point lebih dari 1.');
          Break;
        end;
      end;
      if k > 1 then Abort;
    end;
    }
    
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''', [cxtKode.Text] );

    f:= True ;
    if Self.Jenis= 'tambah' then begin
      if not q.IsEmpty then begin
        MsgBox('Kode Barang Sudah Ada. Klik Generate Kode untuk mendapatkan kode baru.');
        cxtKode.SelectAll ;
        cxtKode.SetFocus ;
        f:= False ;
      end
      else begin
        q.Insert;

        if Aplikasi.TglStkAwal <> EncodeDate(1970,1,1) then begin
          tbl_sa := OpenTbl('tbl_stkawal');
          tbl_sa.Insert;
          tbl_sa.FieldByName('tanggal').AsDateTime := aplikasi.TglStkAwal;
          tbl_sa.FieldByName('kode').AsString := cxtKode.Text;
          tbl_sa.FieldByName('stokawal').AsFloat := 0;
          tbl_sa.FieldByName('kode_gdg').AsString := 'G01';
          tbl_sa.Post;
          tbl_sa.Close;
        end;
      end;
    end
    else begin
      if q.IsEmpty then begin
        MsgBox('Kode Barang Belum Ada');
        cxtKode.SelectAll ;
        cxtKode.SetFocus ;
        f:= False ;
      end
      else begin
        q.Edit;
        try
          dm.zConn.StartTransaction;
          dm.zConn.ExecuteDirect('DELETE FROM tbl_routing WHERE kode = ''' + cxtKode.Text + '''');
          dm.zConn.Commit;
        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;

      end;
    end;
  end;

  with cxTblrouting.DataController  do begin
    for i := 0 to cxTblRouting.DataController.RowCount -1 do begin
     z := OpenRS('SELECT * FROM tbl_routing where kode =''%s''',
        [cxtKode.Text]) ;
     z.Insert;
     z.FieldByName('no').AsInteger := i+1;
     z.FieldByName('routing').AsString := Values[i, cxColRouting.Index] ;
     z.FieldByName('kode').AsString := cxtKode.Text;
     z.FieldByName('kode_brg').AsString := Values[i, cxColKodeRouting.Index];
     z.FieldByName('kode_mesin').AsString := Values[i, cxColMesin.Index];
     z.Post;
     z.Close;
    end;
  end;

  if f then begin
    with q do begin
      FieldByName('kode').AsString            := cxtKode.Text ;
      FieldByName('deskripsi').AsString       := cxtDeskripsi.Text ;

      if not VarIsNull(cxlCustomer.EditValue) then
        FieldByName('kode_customer').AsString   := cxlCustomer.EditValue;
          
      FieldByName('fungsi').AsString          := cxtFungsi.Text ;
      FieldByName('base_material').AsString   := cxcmbBase.Text ;
      FieldByName('sheet_tube').AsString      := cxtSheet.Text ;
      FieldByName('berat_jenis').AsFloat      := cxsBeratJenis.Value ;
      FieldByName('tebal').AsFloat            := cxsTebal.Value ;
      FieldByName('berat_kotor').AsFloat      := cxsBeratKotor.Value ;
      FieldByName('berat_bersih').AsFloat     := cxsBeratBersih.Value;
      FieldByName('berat_meter').AsFloat      := cxsBeratMeter.Value ;
      FieldByName('berat_fg').AsFloat         := cxsBeratJadi.Value;
      FieldByName('lebar_buka').AsFloat       := cxsLebarBuka.Value;
      FieldByName('lebar_jadi').AsFloat       := cxsLebarJadi.value;
      FieldByName('panjang').AsFloat          := cxsPanjang.Value;
      FieldByName('panjang_jadi').AsFloat     := cxsPanjangJadi.Value;
      FieldByName('lebar_tube').AsFloat       := cxsLebarTube.Value;
      FieldByName('panjang_plong').AsFloat    := cxsPanjangPlong.Value;
      FieldByName('lebar_plong').asFloat      := cxsLebarPlong.Value;
      FieldByName('top_fold').AsFloat         := cxsTopFlod.Value;
      FieldByName('gusset').AsFloat           := cxsGusset.Value;
      FieldByName('lebar_handle').AsFloat     := cxsLebarHandle.Value;
      FieldByName('aksesoris').AsString       := cxtAksesoris.Text;
      FieldByName('berat_aksesoris').AsFloat  := cxsBeratAks.Value;
      FieldByName('t_aksesoris').AsFloat      := cxsTebalAks.Value;
      FieldByName('l_aksesoris').AsFloat      := cxsLebarAks.Value;
      FieldByName('p_aksesoris').AsFloat      := cxsPanjangAks.Value;
      FieldByName('air_hole').AsFloat         := cxsAirHole.Value;
      FieldByName('cut').AsFloat              := cxsCut.Value ;
      FieldByName('bentuk_produk').asString   := cxtBentukProduk.Text;
      FieldByName('desain_produk').AsString   := cxtDesainPrinting.Text ;
      FieldByName('warna_film').AsString      := cxtWarnaFilm.Text;
      FieldByName('visual').AsString          := cxtVisualProperty.Text ;
      FieldByName('surface').AsString         := cxtSurfaceProperty.Text ;
      FieldByName('min_std').AsFloat          := cxsMinTSTD.Value;
      FieldByName('max_std').asFloat          := cxsMaxTSTD.Value;
      FieldByName('min_smd').AsFloat          := cxsMinTSMD.Value;
      FieldByName('max_smd').AsFloat          := cxsMaxTSMD.Value;
      FieldByName('min_etd').AsFloat          := cxsMinTETD.Value;
      FieldByName('max_etd').AsFloat          := cxsMaxTETD.Value;
      FieldByName('min_emd').asFloat          := cxsMinTEMD.Value;
      FieldByName('max_emd').asFloat          := cxsMaxTEMD.Value;
      FieldByName('min_teartd').AsFloat       := cxsMinTearTD.Value;
      FieldByName('max_teartd').AsFloat       := cxsMaxTearTD.Value;
      FieldByName('min_tearmd').asFloat       := cxsMinTearMD.Value;
      FieldByName('max_tearmd').asFloat       := cxsMaxTearMD.Value;
      FieldByName('min_resistance').asFloat   := cxsMinPuncture.Value;
      FieldByName('max_resistance').asFloat   := cxsMaxPuncture.Value;
      FieldByName('min_impact').asFloat       := cxsMinDrat.Value;
      FieldByName('max_impact').AsFloat       := cxsMaxDrat.Value;
      FieldByName('min_opasitas').asFloat     := cxsMinOpasitas.Value;
      FieldByName('max_opasitas').asFloat     := cxsMaxOpasitas.Value;
      FieldByName('line').asFloat             := cxsLine.Value;
      FieldByName('standar_roll').asFloat     := cxsStandar.Value;

      FieldByName('t_tebal').asString         := cxtttebal.Text ;
      FieldByName('t_beratkotor').asString    := cxttbk.Text ;
      FieldByName('t_beratbersih').asString   := cxttbb.Text ;
      FieldByName('t_beratmeter').asString    := cxttberatmeter.Text ;
      FieldByName('t_beratfg').asString      := cxttfg.Text ;
      FieldByName('t_lebarbuka').asString    := cxttlb.Text ;
      FieldByName('t_lebarjadi').asString     := cxttlj.Text ;
      FieldByName('t_panjangtotal').asString  := cxttpt.Text ;
      FieldByName('t_tpanjangjadi').asString  := cxttpj.Text ;

      FieldByName('std_std').AsFloat := cxsTSTD.Value;
      FieldByName('std_smd').AsFloat := cxsTSMD.Value;
      FieldByName('std_etd').AsFloat := cxsTETD.Value;
      FieldByName('std_emd').AsFloat := cxsTEMD.Value;
      FieldByName('std_teartd').AsFloat := cxsTearTD.Value;
      FieldByName('std_tearmd').AsFloat := cxsTearMD.Value;
      FieldByName('std_resistance').AsFloat := cxsPuncture.Value;
      FieldByName('std_impact').AsFloat := cxsDrat.Value;
      FieldByName('std_opasitas').AsFloat := cxsOpasitas.Value;

      FieldByName('std_warnafilm').AsString   := cxtWarnaFilm.Text;

      if not VarIsNull(cxlSatuan.EditValue) then
        FieldByName('unitsetid').AsString       := cxlSatuan.EditValue;

      if not VarIsNull(cxlSatuanDet.EditValue) then
        FieldByName('unitid').AsString          := cxlSatuanDet.EditValue;

      FieldByName('critical_point').AsString  := cxtCritical.Text;
      if self.Jenis = 'tambah' then begin
        FieldByName('user_input').AsString := aplikasi.NamaUser;
        FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
        end;
      if Self.Jenis = 'edit' then begin
        FieldByName('user_edit').AsString := aplikasi.NamaUser;
        FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
      end;

      if cxChkAktif.Checked then
        FieldByName('f_aktif').AsInteger := 1
      else
        FieldByName('f_aktif').AsInteger := 0;

      FieldByName('kelompok').AsString := cxlKelompok.EditValue;
      FieldByName('sub_kelompok').AsString := cxlSubKelompok.EditValue;
      FieldByName('sub_group').AsString := cxtSubGroup.Text;

      FieldByName('hpp').Value := cxsHPP.EditValue;
      FieldByName('tinggi_total').Value := cxsTinggiTotal.Value;
      FieldByName('bentuk').Value := cxCmbBentuk.Text;
      FieldByName('kode_supplier').Value := cxlSupplier.EditValue;
      FieldByName('unit_ktg').AsString := cxlUnitKTG.Text;

      // Treat & Cylinder
      FieldByName('b_stok').AsFloat := cxspBufer.EditValue ;
      FieldByName('lead_time').AsFloat := cxsLead.EditValue ;
      FieldByName('treat_luar').AsFloat := cxsTreatLuar.EditValue;
      FieldByName('treat_dalam').AsFloat := cxsTreatDalam.EditValue;
      FieldByName('pola_tl').AsString := cxtPolaTreatLuar.Text ;
      FieldByName('pola_td').AsString := cxtPolaTreatDalam.Text;
      FieldByName('jumlah_warna1').AsFloat := cxsJmlWarna1.editvalue;
      FieldByName('jumlah_warna2').AsFloat := cxsJmlWarna2.EditValue;
      FieldByName('detail_warna1').AsString := cxtDetailWarna1.Text;
      FieldByName('detail_warna2').AsString:= cxtDetailWarna2.Text;
      FieldByName('tepi_kiri').AsFloat := cxsTepiKiri.EditValue ;
      FieldByName('tepi_kanan').AsFloat := cxsTepiKanan.EditValue ;
      FieldByName('tepi_atas').AsFloat := cxsTepiAtas.EditValue;
      FieldByName('tepi_bawah').AsFloat := cxsTepiBawah.EditValue;
      FieldByName('lebar_cyl').AsFloat := cxsLebar.EditValue;
      FieldByName('panjang_cyl').AsFloat := cxsPanjangPrint.EditValue ;
      FieldByName('toleransi').AsFloat := cxsToleransi.EditValue ;
      FieldByName('arah_gulung').AsString := cxtArahGulung.Text ;
      FieldByName('arah_film').AsString := cxtArahFilm.Text ;
      FieldByName('jumlah_md').AsFloat := cxsJumlahMD.editvalue;
      FieldByName('jumlah_td').AsFloat := cxsJumlahTD.EditValue;
      FieldByName('cm_md').AsFloat := cxsCmMD.editvalue;
      FieldByName('cm_td').AsFloat := cxsCmTD.editvalue;
      FieldByName('jumlah_cyl').AsFloat := cxsCylinder.editvalue;
      FieldByName('keliling').AsFloat := cxsKeliling.editvalue;
      FieldByName('repeat_print').AsFloat := cxsRepeatPrint.EditValue;

      FieldByName('ket_treat').AsString := cxtKetTread.Text ;
      FieldByName('register').AsString := cxtRegister.Text ;
      FieldByName('nama_design').AsString := cxtDesign.Text ;
      FieldByName('jenis_gusset').AsString := cxtRegister.Text ;
      FieldByName('proses_gusset').AsString := cxtDesign.Text ;
      FieldByName('g_lebarjadi').AsFloat := cxsG_lebar.EditValue;
      FieldByName('g_arahfilm').AsString := cxtG_Arah.text;
      FieldByName('g_toleransi').AsFloat := cxsG_Toleransi.EditValue;
      FieldByName('c_keterangan').AsString := cxtC_Keterangan.Text ;
      FieldByName('c_arahfilm').AsString := cxtC_Arah.Text ;
      FieldByName('c_jaraklas').AsFloat := cxsC_Jarak.EditValue;
      FieldByName('c_panjanglas').AsFloat := cxsC_panjang.EditValue;
      FieldByName('c_jarakga').AsFloat := cxsC_GA.EditValue;
      FieldByName('c_jarakgb').AsFloat := cxsC_GB.EditValue;

      // konversi satuan
      FieldByName('conv1').Value := cxsJmlKonv1.Value;
      FieldByName('conv2').Value := cxsJmlKonv2.Value;
      FieldByName('conv3').Value := cxsJmlKonv3.Value;
      FieldByName('conv4').Value := cxsJmlKonv4.Value;
      FieldByName('conv5').Value := cxsJmlKonv5.Value;

      FieldByName('sat1').Value  := cxlKonv1.EditValue;
      FieldByName('sat2').Value  := cxlKonv2.EditValue; 
      FieldByName('sat3').Value  := cxlKonv3.EditValue; 
      FieldByName('sat4').Value  := cxlKonv4.EditValue; 
      FieldByName('sat5').Value  := cxlKonv5.EditValue; 

      FieldByName('no_is').Value := cxlIS.EditValue;

      FieldByName('mt_out').Value := cxs_MS_Out.Value;
      FieldByName('mt_mid').Value := cxs_MS_Mid.Value;
      FieldByName('mt_in').Value  := cxs_MS_In.Value;

      FieldByName('mtp_out').Value := cxs_MS_POut.Value;
      FieldByName('mtp_mid').Value := cxs_MS_PMid.Value;
      FieldByName('mtp_in').Value := cxs_MS_PIn.Value;

      FieldByName('fina_kode').AsString := Trim(cxtKodeFina.Text);
      FieldByName('fina_nama').AsString := Trim(cxtNamaFina.Text);

      //Aksesoris
      FieldByName('pack_unit1_qty').AsFloat := cxsPackQty1.Value;
      FieldByName('pack_unit2_qty').AsFloat := cxsPackQty2.Value;
      FieldByName('pack_unit3_qty').AsFloat := cxsPackQty3.Value;
      FieldByName('pack_unit4_qty').AsFloat := cxsPackQty4.Value;
      FieldByName('pack_unit5_qty').AsFloat := cxsPackQty5.Value;
      FieldByName('pack_unit1_unit').AsString := cxCmbPackUnit1.Text;
      FieldByName('pack_unit2_unit').AsString := cxCmbPackUnit2.Text;
      FieldByName('pack_unit3_unit').AsString := cxCmbPackUnit3.Text;
      FieldByName('pack_unit4_unit').AsString := cxCmbPackUnit4.Text;
      FieldByName('pack_unit5_unit').AsString := cxCmbPackUnit5.Text;

      FieldByName('folding1').AsString := cxCmbFolding1.Text;
        FieldByName('folding2').AsString := cxCmbFolding2.Text;

        FieldByName('pack_acc').AsString := cxCmbPackAcc.Text;
        FieldByName('pack_acc_core').AsFloat := cxsPackAccCore.Value;
        FieldByName('pack_acc_inner').AsFloat := cxsPackAccInner.Value;
        FieldByName('pack_acc_thickness').AsFloat := cxsPackAccThickness.Value;
        FieldByName('pack_acc_length').AsFloat := cxsPackAccLength.Value;
        FieldByName('pack_acc_other').AsString := Trim(cxmPackAccNotes.Text);

        FieldByName('material_inout').Value := cxtMaterialIO.Text;
        FieldByName('material_label_pb').Value := cxtMaterialLblPB.Text;
        FieldByName('material_outer').Value := cxtMaterialOuter.Text;
        FieldByName('material_dispenser').Value := cxtMaterialDispenser.Text;

        FieldByName('colours_inout').Value := cxtColoursIO.Text;
        FieldByName('colours_label_pb').Value := cxtColoursLblPB.Text;
        FieldByName('colours_outer').Value := cxtColoursOuter.Text;
        FieldByName('colours_dispenser').Value := cxtColourDispenser.Text;

        FieldByName('u_per_gsm_inout').AsFloat := cxsGsmIO.Value;
        FieldByName('u_per_gsm_label_pb').AsFloat := cxsGsmLabelPB.Value;
        FieldByName('u_per_gsm_outer').AsFloat := cxsGSMOuter.Value;
        FieldByName('u_per_gsm_dispenser').AsFloat := cxsGSMDispenser.Value;

        FieldByName('width_inout').AsFloat := cxsWidthIO.Value;
        FieldByName('width_label_pb').AsFloat := cxsWidthLabelPB.Value;
        FieldByName('width_outer').AsFloat := cxsWidthOuter.Value;
        FieldByName('width_dispenser').AsFloat := cxsWidthDispenser.Value;

        FieldByName('length_inout').AsFloat := cxsLengthIO.Value;
        FieldByName('length_label_pb').AsFloat := cxsLengthLabelPB.Value;
        FieldByName('length_outer').AsFloat := cxsLengthOuter.Value;
        FieldByName('length_dispenser').AsFloat := cxsLengthDispenser.Value;

      FieldByName('printdet_colours_inout').AsFloat := cxsPDColoursIO.Value;
        FieldByName('printdet_colours_label_pb').AsFloat := cxsPDColoursLabelPB.Value;
        FieldByName('printdet_colours_outer').AsFloat := cxsPDColoursOuter.Value;
        FieldByName('printdet_colours_dispenser').AsFloat := cxsPDColoursDispenser.Value;

        FieldByName('printdet_sides_inout').AsFloat := cxsPDSidesIO.Value;
        FieldByName('printdet_sides_label_pb').AsFloat := cxsPDSidesLabelPB.Value;
        FieldByName('printdet_sides_outer').AsFloat := cxsPDSidesOuter.Value;
        FieldByName('printdet_sides_dispenser').AsFloat := cxsPDSidesDispenser.Value;

        FieldByName('fp_material_inner').AsFloat := cxsFPMaterialInnerSize.Value;
        FieldByName('fp_material_outer').AsFloat := cxsFPMaterialOuterSize.Value;
        FieldByName('fp_width_inner').AsFloat := cxsFPWidthInnerSize.Value;
        FieldByName('fp_width_outer').AsFloat := cxsFPWidthOuterSize.Value;
        FieldByName('fp_length_inner').AsFloat := cxsFPLengthInnerSize.Value;
        FieldByName('fp_length_outer').AsFloat := cxsFPLengthOuterSize.Value;
        FieldByName('fp_height_inner').AsFloat := cxsFPHeightInnerSize.Value;
        FieldByName('fp_height_outer').AsFloat := cxsFPHeightOuterSize.Value;
        FieldByName('fp_gsm').AsFloat := cxsFPGsm.Value;
        FieldByName('fp_colours').AsFloat := cxsFPLengthColours.Value;
        FieldByName('fp_sides').AsFloat := cxsFPHeightSides.Value;

         FieldByName('pallet_width').AsFloat := cxsPalletWidth.Value;
        FieldByName('pallet_length').AsFloat := cxsPalletLength.Value;
        FieldByName('pallet_height').AsFloat := cxsPalletHeight.Value;
        FieldByName('pallet_entry').AsFloat := cxsPalletEntry.Value;
        FieldByName('pallet_requirement').AsFloat := cxsPalletRequirement.Value;
        FieldByName('compiling_packaging').AsString := cxmCompilingPackaging.Lines.Text;

      // simpan critical point
      lst2 := TStringList.Create;

      lst2.Add('-');
      lst2.Add('cp_fgel_');
      lst2.Add('cp_fblorok_');
      lst2.Add('cp_fgaler_');
      lst2.Add('cp_fnjeruk_');
      lst2.Add('cp_mataikan_');
      lst2.Add('cp_flengket_');

      with cxTblCriticalPoint_21.DataController do begin
        for j := 1 to RecordCount - 1 do begin
          for k := 1 to 3 do begin

            if k = 1 then
              sFld := lst2.Strings[j] + 'ukuran'
            else if k = 2 then
              sFld := lst2.Strings[j] + 'min'
            else if k = 3 then
              sFld := lst2.Strings[j] + 'max';

            FieldByName(sFld).Value := Values[j, k];
          end;
        end;
      end;

      // simpan critical point
      lst2.Clear;
      lst2.Add('-');
      lst2.Add('cp_petal_');
      lst2.Add('cp_pecah_');
      lst2.Add('cp_jembret_');

      with cxTblCriticalPoint_22.DataController do begin
        for j := 1 to RecordCount - 1 do begin
          for k := 1 to 3 do begin

            if k = 1 then
              sFld := lst2.Strings[j] + 'ukuran'
            else if k = 2 then
              sFld := lst2.Strings[j] + 'min'
            else if k = 3 then
              sFld := lst2.Strings[j] + 'max';

            FieldByName(sFld).Value := Values[j, k];
          end;
        end;
      end;


      {
      for j := 1 to cxTblCriticalPoint.DataController.RecordCount - 1 do begin
        with cxTblCriticalPoint.DataController do begin
          if j = 1 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_fgel').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_fgel').AsInteger := 0;
          end;

          if j = 2 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_fblorok').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_fblorok').AsInteger := 0;
          end;

          if j = 3 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_fgaler').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_fgaler').AsInteger := 0;
          end;

          if j = 4 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_fnjeruk').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_fnjeruk').AsInteger := 0;
          end;

          if j = 5 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_mataikan').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_mataikan').AsInteger := 0;
          end;

          if j = 6 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_flengket').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_flengket').AsInteger := 0;
          end;

          if j = 7 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_fbau').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_fbau').AsInteger := 0;
          end;

          if j = 8 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_fkuat').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_fkuat').AsInteger := 0;
          end;

        end;
      end;

      // simpan critical point printing
      for j := 1 to cxTblCriticalPoint2.DataController.RecordCount - 1 do begin
        with cxTblCriticalPoint2.DataController do begin
          if j = 1 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_petal').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_petal').AsInteger := 0;
          end;

          if j = 2 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_pecah').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_pecah').AsInteger := 0;
          end;

          if j = 3 then begin
            f_satu := False;
            for k := 1 to 5 do begin
              if Values[j,k] = 1 then begin
                FieldByName('cp_jembret').AsInteger := k;
                f_satu := True;
                Break;
              end;
            end;
            if not f_satu then FieldByName('cp_jembret').AsInteger := 0;
          end;
        end;
      end;
      }

      // toleransi (paling bawah)
      FieldByName('td_tebal_film').AsString     := cxt_td_TebalFilm.Text;
      FieldByName('td_repeat_print').AsString   := cxt_td_RepeatFilm.Text;
      FieldByName('td_berat_jadi').AsString     := cxt_td_BeratJadi.Text;
      FieldByName('td_lebar_film').AsString     := cxt_td_LebarFilm.Text;
      FieldByName('td_gbr_tepi_kanan').AsString := cxt_td_GbrTepiKanan.Text;
      FieldByName('td_panjang_jadi').AsString   := cxt_td_PanjangJadi.Text;
      FieldByName('td_berat_per_meter').AsString:= cxt_td_BeratPerMeter.Text;
      FieldByName('td_gbr_tepi_kiri').AsString  := cxt_td_GbrTepiKiri.Text;

      if Self.Jenis = 'edit' then begin
        FieldByName('user_edit').AsString := APlikasi.NamaUser;
        FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
      end;

      Post;
      Close;

      if Self.Jenis = 'tambah' then begin
        UpdateFaktur(Copy(cxtKode.Text,1,LastDelimiter('.',cxtKode.Text)));
      end;

      SimpanBOM;
      SimpanMaterialSaran;

      ds.DataSet.Refresh ;
      cxTblrouting.DataController.RecordCount := 0;

      zqrBrgRouting.Close;
      zqrBrgRouting.Open;

      zqrBrgBom.Close;
      zqrBrgBom.Open;

      // jika baru masukkan juga ke table stok awal
      {if Self.Jenis = 'tambah' then begin
        if Aplikasi.TglStkAwal <> EncodeDate(1970,1,1) then begin
          tbl_sa := OpenTbl('tbl_stkawal');
          tbl_sa.Insert;
          tbl_sa.FieldByName('tanggal').AsDateTime := aplikasi.TglStkAwal;
          tbl_sa.FieldByName('kode').AsString := cxtKode.Text;
          tbl_sa.FieldByName('stokawal').AsFloat := 0;
          tbl_sa.FieldByName('kode_gdg').AsString := 'G01';
          tbl_sa.Post;
          tbl_sa.Close;
        end;
      end;  }

      lst := TStringList.Create;
      lst.CommaText := 'G01,G02,G03,G-ASIS,G-WIP';
      tbl_brg_det := OpenTbl('tbl_barang_det');
      for i := 0 to lst.Count - 1 do begin
        if not tbl_brg_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([cxtKode.Text, lst.Strings[i]]),[]) then begin
          tbl_brg_det.Insert;
          tbl_brg_det.FieldByName('kode_brg').AsString := cxtKode.Text;
          tbl_brg_det.FieldByName('kode_gdg').AsString := lst.Strings[i];
          tbl_brg_det.FieldByName('stok').AsFloat := 0;
          tbl_brg_det.Post;   
        end;
      end;
      tbl_brg_det.Close;
      MsgBox('Data Sudah Disimpan');
      ClearAll;
      btnBatalClick(nil);
    end;
  end;
  
end;

procedure TfrmMstBrg_KTG.ClearAll;
var
  i,j: Integer;
begin

  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxGroupBox then
      (Components[i] as TcxGroupBox).Enabled := False;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxSpinEdit then
      (Components[i] as TcxSpinEdit).Value := 0;
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
    if Components[i] is TcxMemo then
      (Components[i] as TcxMemo).Text := '';
  end;

  cxChkAktif.Checked := False;
  cxTblBOM.DataController.RecordCount := 0;
  cxTblRouting.DataController.RecordCount := 0;
  cxTblMatSaran.DataController.RecordCount := 0;

  {
  for i := 0 to cxTblCriticalPoint.DataController.RecordCount - 1 do begin
    for j := 1 to 5 do begin
      cxTblCriticalPoint.DataController.Values[i,j] := 0;
    end;
  end;

  for i := 0 to cxTblCriticalPoint2.DataController.RecordCount - 1 do begin
    for j := 1 to 5 do begin
      cxTblCriticalPoint2.DataController.Values[i,j] := 0;
    end;
  end;
  }

  for i := 0 to cxTblCriticalPoint_21.DataController.RecordCount - 1 do begin
    for j := 1 to 3 do begin
      cxTblCriticalPoint_21.DataController.Values[i,j] := '';
    end;
  end;

  for i := 0 to cxTblCriticalPoint_22.DataController.RecordCount - 1 do begin
    for j := 1 to 3 do begin
      cxTblCriticalPoint_22.DataController.Values[i,j] := '';
    end;
  end;

  ScrollBox1.VertScrollBar.Position := 0;
  Self.Jenis := '';
  cxTblImg.DataController.RecordCount := 0;
  image.Picture := nil;
end;

procedure TfrmMstBrg_KTG.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmMstBrg_KTG.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  i,j,k : Integer;
  q,z, zz : TZQuery;
  lst2: TStringList;
  sFld: string;
begin
  inherited;

  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxGroupBox then
      (Components[i] as TcxGroupBox).Enabled := True;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxSpinEdit then
      (Components[i] as TcxSpinEdit).Value := 0;
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
    if Components[i] is TcxMemo then
      (Components[i] as TcxMemo).Text := '';
  end;

  cxtKode.Text := zQry.fieldbyname('kode').AsString ;
  pg.ActivePageIndex := 0;
  cxtKode.SetFocus;
  Self.Jenis := 'edit';

  q := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''',
    [cxtKode.Text] );

  with q do begin
    cxtDeskripsi.Text         := FieldByName('deskripsi').AsString;
    cxlCustomer.EditValue     := FieldByName('kode_customer').AsString;
    cxtFungsi.Text            := FieldByName('fungsi').AsString;
    cxcmbBase.Text            := FieldByName('base_material').AsString ;
    cxtSheet.Text             := FieldByName('sheet_tube').AsString;
    cxsBeratJenis.Value       := FieldByName('berat_jenis').AsFloat;
    cxsTebal.Value            := FieldByName('tebal').AsFloat;
    cxsBeratKotor.Value       := FieldByName('berat_kotor').AsFloat ;
    cxsBeratBersih.Value      := FieldByName('berat_bersih').AsFloat;
    cxsBeratMeter.Value       := FieldByName('berat_meter').AsFloat;
    cxsBeratJadi.Value        := FieldByName('berat_fg').AsFloat ;
    cxsLebarBuka.Value        := FieldByName('lebar_buka').AsFloat;
    cxsLebarJadi.value        := FieldByName('lebar_jadi').AsFloat;
    cxsPanjang.Value          := FieldByName('panjang').AsFloat;
    cxsPanjangJadi.Value      := FieldByName('panjang_jadi').AsFloat;
    cxsLebarTube.Value        := FieldByName('lebar_tube').AsFloat;
    cxsPanjangPlong.Value     := FieldByName('panjang_plong').AsFloat;
    cxsLebarPlong.Value       := FieldByName('lebar_plong').asFloat;
    cxsTopFlod.Value          := FieldByName('top_fold').AsFloat;
    cxsGusset.Value           := FieldByName('gusset').AsFloat;
    cxsLebarHandle.Value      := FieldByName('lebar_handle').AsFloat;
    cxtAksesoris.Text         := FieldByName('aksesoris').AsString ;
    cxsBeratAks.Value         := FieldByName('berat_aksesoris').AsFloat;
    cxsTebalAks.Value         := FieldByName('t_aksesoris').AsFloat;
    cxsLebarAks.Value         := FieldByName('l_aksesoris').AsFloat ;
    cxsPanjangAks.Value       := FieldByName('p_aksesoris').AsFloat;
    cxsAirHole.Value          := FieldByName('air_hole').AsFloat;
    cxsCut.Value              := FieldByName('cut').AsFloat;
    cxtBentukProduk.Text      := FieldByName('bentuk_produk').asString;
    cxtDesainPrinting.Text    := FieldByName('desain_produk').AsString;
    cxtWarnaFilm.Text         := FieldByName('warna_film').AsString;
    cxtVisualProperty.Text    := FieldByName('visual').AsString;
    cxtSurfaceProperty.Text   := FieldByName('surface').AsString;
    cxsMinTSTD.Value          := FieldByName('min_std').asFloat;
    cxsMaxTSTD.Value          := FieldByName('max_std').asFloat;
    cxsMinTSMD.Value          := FieldByName('min_smd').AsFloat;
    cxsMaxTSMD.Value          := FieldByName('max_smd').AsFloat;
    cxsMinTETD.Value          := FieldByName('min_etd').AsFloat;
    cxsMaxTETD.Value          := FieldByName('max_etd').AsFloat;
    cxsMinTEMD.Value          := FieldByName('min_emd').asFloat;
    cxsMaxTEMD.Value          := FieldByName('max_emd').asFloat;
    cxsMinTearTD.Value        := FieldByName('min_teartd').AsFloat;
    cxsMaxTearTD.Value        := FieldByName('max_teartd').AsFloat;
    cxsMinTearMD.Value        := FieldByName('min_tearmd').asFloat;
    cxsMaxTearMD.Value        := FieldByName('max_tearmd').asFloat;
    cxsMinPuncture.Value      := FieldByName('min_resistance').asFloat;
    cxsMaxPuncture.Value      := FieldByName('max_resistance').asFloat;
    cxsMinDrat.Value          := FieldByName('min_impact').asFloat;
    cxsMaxDrat.Value          := FieldByName('max_impact').AsFloat;
    cxsMinOpasitas.Value      := FieldByName('min_opasitas').asFloat;
    cxsMaxOpasitas.Value      := FieldByName('max_opasitas').asFloat;
    cxtWarnaFilm.Text         := FieldByName('std_warnafilm').AsString;
    cxlSatuan.EditValue       := FieldByName('unitsetid').AsString;
    cxlSatuanDet.EditValue    := FieldByName('unitid').AsString;
    cxtCritical.Text          := FieldByName('critical_point').AsString;
    cxsLine.EditValue         := FieldByName('line').AsFloat;
    cxsStandar.EditValue      := FieldByName('standar_roll').AsFloat;

    cxtttebal.Text            := FieldByName('t_tebal').asString;
    cxttbk.Text               := FieldByName('t_beratkotor').asString;
    cxttbb.Text               := FieldByName('t_beratbersih').asString;
    cxttberatmeter.Text       := FieldByName('t_beratmeter').asString;
    cxttfg.Text               := FieldByName('t_beratfg').asString;
    cxttlb.Text               := FieldByName('t_lebarbuka').asString;
    cxttlj.Text               := FieldByName('t_lebarjadi').asString;
    cxttpt.Text               := FieldByName('t_panjangtotal').asString;
    cxttpj.Text               := FieldByName('t_tpanjangjadi').asString;

    cxsTSTD.Value        := FieldByName('std_std').AsFloat;
    cxsTSMD.Value        := FieldByName('std_smd').AsFloat;
    cxsTETD.Value        := FieldByName('std_etd').AsFloat;
    cxsTEMD.Value        := FieldByName('std_emd').AsFloat;
    cxsTearTD.Value      := FieldByName('std_teartd').AsFloat;
    cxsTearMD.Value      := FieldByName('std_tearmd').AsFloat;
    cxsPuncture.Value    := FieldByName('std_resistance').AsFloat;
    cxsDrat.Value        := FieldByName('std_impact').AsFloat;
    cxsOpasitas.Value    := FieldByName('std_opasitas').AsFloat;

    cxlKelompok.EditValue := FieldByName('kelompok').AsString;
    cxlSubKelompok.EditValue := FieldByName('sub_kelompok').AsString;
    cxtSubKelompok.Text := zqrSubKelompok.FieldByName('sub_kelompok').AsString;
    cxtSubGroup.Text := FieldByName('sub_group').AsString;

    cxsHPP.Value := FieldbyName('hpp').Value;
    cxsTinggiTotal.Value := FieldByName('tinggi_total').Value;
    cxCmbBentuk.Text := FieldByName('bentuk').AsString;

    if FieldByName('f_aktif').AsInteger = 1 then
      cxChkAktif.Checked := True
    else
      cxChkAktif.Checked := False;

    cxlSupplier.EditValue := q.FieldByName('kode_supplier').Value;
    cxsHPP.Value := q.FieldByName('hpp').AsFloat;

    cxlUnitKTG.EditValue := q.FieldByName('unit_ktg').AsString;

    // Treat & Cylinder
    cxtKetTread.Text          := FieldByName('ket_treat').AsString;
    cxspBufer.EditValue       := FieldByName('b_stok').AsFloat;
    cxsLead.EditValue         := FieldByName('lead_time').AsFloat;
    cxsTreatLuar.EditValue    := FieldByName('treat_luar').AsFloat;
    cxsTreatDalam.EditValue   := FieldByName('treat_dalam').AsFloat;
    cxtPolaTreatLuar.Text     := FieldByName('pola_tl').AsString;
    cxtPolaTreatDalam.Text    := FieldByName('pola_td').AsString;
    cxsJmlWarna1.editvalue    := FieldByName('jumlah_warna1').AsFloat;
    cxsJmlWarna2.EditValue    := FieldByName('jumlah_warna2').AsFloat;
    cxtDetailWarna1.Text      := FieldByName('detail_warna1').AsString;
    cxtDetailWarna2.Text      := FieldByName('detail_warna2').AsString;
    cxsTepiKiri.EditValue     := FieldByName('tepi_kiri').AsFloat;
    cxsTepiKanan.EditValue    := FieldByName('tepi_kanan').AsFloat;
    cxsTepiAtas.EditValue     := FieldByName('tepi_atas').AsFloat;
    cxsTepiBawah.EditValue    := FieldByName('tepi_bawah').AsFloat;
    cxsLebar.EditValue        := FieldByName('lebar_cyl').AsFloat;
    cxsPanjangPrint.EditValue := FieldByName('panjang_cyl').AsFloat;
    cxsToleransi.EditValue    := FieldByName('toleransi').AsFloat;
    cxtArahGulung.Text        := FieldByName('arah_gulung').AsString;
    cxtArahFilm.Text          := FieldByName('arah_film').AsString;
    cxsJumlahMD.editvalue     := FieldByName('jumlah_md').AsFloat;
    cxsJumlahTD.EditValue     := FieldByName('jumlah_td').AsFloat;
    cxsCmMD.editvalue         := FieldByName('cm_md').AsFloat;
    cxsCmTD.editvalue         := FieldByName('cm_td').AsFloat;
    cxsCylinder.editvalue     := FieldByName('jumlah_cyl').AsFloat;
    cxsKeliling.editvalue     := FieldByName('keliling').AsFloat;
    cxsRepeatPrint.EditValue  := FieldByName('repeat_print').AsFloat;

    cxtRegister.Text          := FieldByName('register').AsString;
    cxtDesign.Text            := FieldByName('nama_design').AsString;
    cxtRegister.Text          := FieldByName('jenis_gusset').AsString;
    cxtDesign.Text            := FieldByName('proses_gusset').AsString;
    cxsG_lebar.EditValue      := FieldByName('g_lebarjadi').AsFloat;
    cxtG_Arah.text            := FieldByName('g_arahfilm').AsString ;
    cxsG_Toleransi.EditValue  := FieldByName('g_toleransi').AsFloat ;
    cxtC_Keterangan.Text      := FieldByName('c_keterangan').AsString  ;
    cxtC_Arah.Text            := FieldByName('c_arahfilm').AsString  ;
    cxsC_Jarak.EditValue      := FieldByName('c_jaraklas').AsFloat;
    cxsC_panjang.EditValue    := FieldByName('c_panjanglas').AsFloat;
    cxsC_GA.EditValue         := FieldByName('c_jarakga').AsFloat;
    cxsC_GB.EditValue         := FieldByName('c_jarakgb').AsFloat ;

    //Aksesoris
    cxsPackQty1.Value    := FieldByName('pack_unit1_qty').AsFloat;
      cxsPackQty2.Value    := FieldByName('pack_unit2_qty').AsFloat;
      cxsPackQty3.Value    := FieldByName('pack_unit3_qty').AsFloat;
      cxsPackQty4.Value    := FieldByName('pack_unit4_qty').AsFloat;
      cxsPackQty5.Value    := FieldByName('pack_unit5_qty').AsFloat;
      cxCmbPackUnit1.Text  := FieldByName('pack_unit1_unit').AsString;
      cxCmbPackUnit2.Text  := FieldByName('pack_unit2_unit').AsString;
      cxCmbPackUnit3.Text  := FieldByName('pack_unit3_unit').AsString;
      cxCmbPackUnit4.Text  := FieldByName('pack_unit4_unit').AsString;
      cxCmbPackUnit5.Text  := FieldByName('pack_unit5_unit').AsString;

      cxCmbFolding1.Text         := FieldByName('folding1').AsString;
      cxCmbFolding2.Text         := FieldByName('folding2').AsString;

      cxCmbPackAcc.Text          := FieldByName('pack_acc').AsString;
      cxsPackAccCore.Value       := FieldByName('pack_acc_core').AsFloat;
      cxsPackAccInner.Value      := FieldByName('pack_acc_inner').AsFloat;
      cxsPackAccThickness.Value  := FieldByName('pack_acc_thickness').AsFloat;
      cxsPackAccLength.Value     := FieldByName('pack_acc_length').AsFloat;
      cxmPackAccNotes.Text       := FieldByName('pack_acc_other').AsString;

      cxtMaterialIO.Text        := FieldByName('material_inout').AsString;
      cxtMaterialLblPB.Text     := FieldByName('material_label_pb').AsString;
      cxtMaterialOuter.Text     := FieldByName('material_outer').AsString;
      cxtMaterialDispenser.Text := FieldByName('material_dispenser').AsString;

      cxtColoursIO.Text        :=  FieldByName('colours_inout').AsString;
      cxtColoursLblPB.Text     :=  FieldByName('colours_label_pb').AsString;
      cxtColoursOuter.Text     :=  FieldByName('colours_outer').AsString;
      cxtColourDispenser.Text  :=  FieldByName('colours_dispenser').AsString;

      cxsGsmIO.Value            :=  FieldByName('u_per_gsm_inout').AsFloat;
      cxsGsmLabelPB.Value       :=  FieldByName('u_per_gsm_label_pb').AsFloat;
      cxsGSMOuter.Value         :=  FieldByName('u_per_gsm_outer').AsFloat;
      cxsGSMDispenser.Value     :=  FieldByName('u_per_gsm_dispenser').AsFloat;

      cxsWidthIO.Value           :=  FieldByName('width_inout').AsFloat;
      cxsWidthLabelPB.Value      :=  FieldByName('width_label_pb').AsFloat;
      cxsWidthOuter.Value        :=  FieldByName('width_outer').AsFloat;
      cxsWidthDispenser.Value    :=  FieldByName('width_dispenser').AsFloat;

      cxsLengthIO.Value          :=  FieldByName('length_inout').AsFloat;
      cxsLengthLabelPB.Value     :=  FieldByName('length_label_pb').AsFloat;
      cxsLengthOuter.Value       :=  FieldByName('length_outer').AsFloat;
      cxsLengthDispenser.Value   :=  FieldByName('length_dispenser').AsFloat;

      cxsPDColoursIO.Value          := FieldByName('printdet_colours_inout').AsFloat;
      cxsPDColoursLabelPB.Value     := FieldByName('printdet_colours_label_pb').AsFloat;
      cxsPDColoursOuter.Value       := FieldByName('printdet_colours_outer').AsFloat;
      cxsPDColoursDispenser.Value   := FieldByName('printdet_colours_dispenser').AsFloat;

      cxsPDSidesIO.Value        := FieldByName('printdet_sides_inout').AsFloat;
      cxsPDSidesLabelPB.Value   := FieldByName('printdet_sides_label_pb').AsFloat;
      cxsPDSidesOuter.Value     := FieldByName('printdet_sides_outer').AsFloat;
      cxsPDSidesDispenser.Value := FieldByName('printdet_sides_dispenser').AsFloat;

      cxsFPMaterialInnerSize.Value      := FieldByName('fp_material_inner').AsFloat;
      cxsFPMaterialOuterSize.Value      := FieldByName('fp_material_outer').AsFloat;
      cxsFPWidthInnerSize.Value         := FieldByName('fp_width_inner').AsFloat;
      cxsFPWidthOuterSize.Value         := FieldByName('fp_width_outer').AsFloat;
      cxsFPLengthInnerSize.Value        := FieldByName('fp_length_inner').AsFloat;
      cxsFPLengthOuterSize.Value        := FieldByName('fp_length_outer').AsFloat;
      cxsFPHeightInnerSize.Value        := FieldByName('fp_height_inner').AsFloat;
      cxsFPHeightOuterSize.Value        := FieldByName('fp_height_outer').AsFloat;
      cxsFPGsm.Value                    := FieldByName('fp_gsm').AsFloat;
      cxsFPLengthColours.Value          := FieldByName('fp_colours').AsFloat;
      cxsFPHeightSides.Value            := FieldByName('fp_sides').AsFloat;

      cxsPalletWidth.Value              := FieldByName('pallet_width').AsFloat;
      cxsPalletLength.Value             := FieldByName('pallet_length').AsFloat;
      cxsPalletHeight.Value             := FieldByName('pallet_height').AsFloat;
      cxsPalletEntry.Value              := FieldByName('pallet_entry').AsFloat;
      cxsPalletRequirement.Value        := FieldByName('pallet_requirement').AsFloat;
      cxmCompilingPackaging.Lines.Text  := FieldByName('compiling_packaging').AsString;

    cxlKonv1.EditValue := FieldByName('sat1').Value;
    cxlKonv2.EditValue := FieldByName('sat2').Value;
    cxlKonv3.EditValue := FieldByName('sat3').Value;
    cxlKonv4.EditValue := FieldByName('sat4').Value;
    cxlKonv5.EditValue := FieldByName('sat5').Value;

    cxsJmlKonv1.Value  := FieldByName('conv1').Value; 
    cxsJmlKonv2.Value  := FieldByName('conv2').Value; 
    cxsJmlKonv3.Value  := FieldByName('conv3').Value; 
    cxsJmlKonv4.Value  := FieldByName('conv4').Value; 
    cxsJmlKonv5.Value  := FieldByName('conv5').Value;

    cxlIS.EditText := q.FieldByName('no_is').AsString;

    cxs_MS_Out.Value := FieldByName('mt_out').Value;
    cxs_MS_Mid.Value := FieldByName('mt_mid').Value;
    cxs_MS_In.Value  := FieldByName('mt_in').Value;

    cxs_MS_POut.Value := FieldByName('mtp_out').Value;
    cxs_MS_PMid.Value := FieldByName('mtp_mid').Value;
    cxs_MS_PIn.Value := FieldByName('mtp_in').Value;

    cxtKodeFina.Text := FieldByName('fina_kode').AsString;
    cxtNamaFina.Text := FieldByName('fina_nama').AsString;

    // simpan critical point
    lst2 := TStringList.Create;

    lst2.Add('-');
    lst2.Add('cp_fgel_');
    lst2.Add('cp_fblorok_');
    lst2.Add('cp_fgaler_');
    lst2.Add('cp_fnjeruk_');
    lst2.Add('cp_mataikan_');
    lst2.Add('cp_flengket_');

    with cxTblCriticalPoint_21.DataController do begin
      for j := 1 to RecordCount - 1 do begin
        for k := 1 to 3 do begin

          if k = 1 then
            sFld := lst2.Strings[j] + 'ukuran'
          else if k = 2 then
            sFld := lst2.Strings[j] + 'min'
          else if k = 3 then
            sFld := lst2.Strings[j] + 'max';

          Values[j, k] := FieldByName(sFld).Value;
        end;
      end;
    end;

    // simpan critical point
    lst2.Clear;
    lst2.Add('-');
    lst2.Add('cp_petal_');
    lst2.Add('cp_pecah_');
    lst2.Add('cp_jembret_');

    with cxTblCriticalPoint_22.DataController do begin
      for j := 1 to RecordCount - 1 do begin
        for k := 1 to 3 do begin

          if k = 1 then
            sFld := lst2.Strings[j] + 'ukuran'
          else if k = 2 then
            sFld := lst2.Strings[j] + 'min'
          else if k = 3 then
            sFld := lst2.Strings[j] + 'max';

          Values[j, k] := FieldByName(sFld).Value;
        end;
      end;
    end;

    {
    for j := 1 to cxTblCriticalPoint.DataController.RecordCount - 1 do begin
      with cxTblCriticalPoint.DataController do begin
        if j = 1 then
          if q.FieldByName('cp_fgel').AsInteger > 0 then
            Values[j, q.FieldByName('cp_fgel').AsInteger] := 1;

        if j = 2 then
          if q.FieldByName('cp_fblorok').AsInteger > 0 then
            Values[j, q.FieldByName('cp_fblorok').AsInteger] := 1;

        if j = 3 then
          if q.FieldByName('cp_fgaler').AsInteger > 0 then
            Values[j, q.FieldByName('cp_fgaler').AsInteger] := 1;

        if j = 4 then
          if q.FieldByName('cp_fnjeruk').AsInteger > 0 then
            Values[j, q.FieldByName('cp_fnjeruk').AsInteger] := 1;

        if j = 5 then
          if q.FieldByName('cp_mataikan').AsInteger > 0 then
            Values[j, q.FieldByName('cp_mataikan').AsInteger] := 1;

        if j = 6 then
          if q.FieldByName('cp_flengket').AsInteger > 0 then
            Values[j, q.FieldByName('cp_flengket').AsInteger] := 1;

        if j = 7 then
          if q.FieldByName('cp_fbau').AsInteger > 0 then
            Values[j, q.FieldByName('cp_fbau').AsInteger] := 1;

        if j = 8 then
          if q.FieldByName('cp_fkuat').AsInteger > 0 then
            Values[j, q.FieldByName('cp_fkuat').AsInteger] := 1;

      end;
    end;

    for j := 1 to cxTblCriticalPoint2.DataController.RecordCount - 1 do begin
      with cxTblCriticalPoint2.DataController do begin
        if j = 1 then
          if q.FieldByName('cp_petal').AsInteger > 0 then
            Values[j, q.FieldByName('cp_petal').AsInteger] := 1;

        if j = 2 then
          if q.FieldByName('cp_pecah').AsInteger > 0 then
            Values[j, q.FieldByName('cp_pecah').AsInteger] := 1;

        if j = 3 then
          if q.FieldByName('cp_jembret').AsInteger > 0 then
            Values[j, q.FieldByName('cp_jembret').AsInteger] := 1;

      end;
    end;
    }

    cxt_td_TebalFilm.Text     :=    FieldByName('td_tebal_film').AsString;
    cxt_td_RepeatFilm.Text    :=    FieldByName('td_repeat_print').AsString;
    cxt_td_BeratJadi.Text     :=    FieldByName('td_berat_jadi').AsString;
    cxt_td_LebarFilm.Text     :=    FieldByName('td_lebar_film').AsString;
    cxt_td_GbrTepiKanan.Text  :=    FieldByName('td_gbr_tepi_kanan').AsString;
    cxt_td_PanjangJadi.Text   :=    FieldByName('td_panjang_jadi').AsString;
    cxt_td_BeratPerMeter.Text :=    FieldByName('td_berat_per_meter').AsString;
    cxt_td_GbrTepiKiri.Text   :=    FieldByName('td_gbr_tepi_kiri').AsString;

  end;

  z := OpenRS('SELECT * FROM tbl_routing where kode =''%s'' order by no asc',[cxtKode.Text]) ;
  while not z.Eof do begin
    with cxTblRouting.DataController do begin
     i := AppendRecord ;
     Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
     Values[i, cxColRouting.index] := z.FieldByName('routing').AsString;
     Values[i, cxColKodeRouting.Index] := z.FieldByName('kode_brg').AsString;
     Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
     Values[i, cxColMesin.Index] := z.FieldByName('kode_mesin').AsString;
    end;
    z.Next;
  end;
  z.Close;

  if Copy(cxtKode.Text,1,1) = 'A' then begin
      //cxsBeratBOM.Value := HitungBerat;
      //if cxsBeratBOM.Value = 0 then
      //  cxsBeratBOM.Value := cxsBeratBersih.Value;
      cxsBeratBOM.Value := cxsBeratBersih.Value;
    end
    else
      cxsBeratBOM.Value := cxsBeratKotor.Value;

  z := OpenRS('SELECT a.*, b.deskripsi,c.* FROM tbl_formula_subdet a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'LEFT JOIN tbl_mat_saran c ON a.kode_brg = c.kode_brg and a.kode=c.kode ' +
    'WHERE a.kode = ''%s''',[cxtKode.text]);
  while not z.Eof do begin
    with cxTblBOM.DataController do begin
      i := AppendRecord;
      Values[i, cxColBomBahan.Index] := z.FieldByName('bahan').Value;
      Values[i, cxColBomKode.Index] := z.FieldByName('kode_brg').Value;
      Values[i, cxColBomDesc.Index] := z.FieldByName('kode_brg').Value;
      Values[i, cxColPersen.Index] := z.FieldByName('persen').Value;
      Values[i, cxColJnsBom.Index] := z.FieldByName('jns').Value;
      Values[i, cxColBomQty.Index] := z.FieldByName('qty').Value;
      Values[i, cxColBomSatuan.Index] := z.FieldByname('satuan').Value;
      Values[i, cxColBomLayer1.Index] := z.FieldByName('layer1').Value;
      Values[i, cxColBomLayer2.Index] := z.FieldByName('layer2').Value;
      Values[i, cxColBomLayer3.Index] := z.FieldByName('layer3').Value;
      Values[i, cxColLockDetail.Index] := z.FieldByName('l_detail').Value;
      Values[i, cxCollockGroup.Index] := z.FieldByName('l_group').Value;
      Values[i, cxCollockpersen.Index] := z.FieldByName('l_persen').Value;
    end;
    z.Next;
  end;
  z.Close;

  // 07-11-2017
  // load gambar
  // tampilkan di grid
  zz := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s''',[cxtKode.Text]);
  cxTblImg.DataController.RecordCount := 0;
  while not zz.Eof do begin
    with cxTblImg.DataController do begin
      i := AppendRecord;
      Values[i, cxColKetImg.Index] := zz.FieldByName('keterangan').AsString;
      Values[i, cxColLihatImg.Index] := 'Lihat';
      Values[i, cxColIDImg.Index] := zz.FieldByname('id').AsString;
    end;
    zz.Next;
  end;
  zz.Close;
  // EOF 17-11-2017

  {z := OpenRS('SELECT a.*, b.deskripsi ' +
    'FROM tbl_mat_saran a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'WHERE a.kode = ''%s''',[cxtKode.Text]);
  while not z.Eof do begin
    with cxTblMatSaran.DataController do begin
      i := AppendRecord;
      Values[i, cxCol_MS_Bahan.Index] := z.FieldbyName('bahan').AsString;
      Values[i, cxCol_MS_KodeBrg.Index] := z.FieldByName('kode_brg').AsString;
      Values[i, cxCol_MS_Deskripsi.Index] := z.FieldByName('kode_brg').AsString;
      Values[i, cxCol_MS_Layer1.Index] := z.FieldByName('layer1').AsFloat;
      Values[i, cxCol_MS_Layer2.Index] := z.FieldByName('layer2').AsFloat;
      Values[i, cxCol_MS_Layer3.Index] := z.FieldByName('layer3').AsFloat;
      Values[i, cxCol_MS_Mono.Index] := z.FieldByName('mono').AsFloat;
    end;
    z.Next;
  end;
  z.Close;}
  
end;

procedure TfrmMstBrg_KTG.btnHapusClick(Sender: TObject);
var
   q: TZQuery;
begin
  if Trim(cxtKode.Text) <> '' then begin
    q := OpenRS('SELECT * FROM tbl_history WHERE kode_brg = ''%s''',
      [cxtKode.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode ini masih memiliki transaksi.');

    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_barang WHERE kode = ''' + cxtKode.Text + '''');
        dm.zConn.Commit;
        MsgBox('Kode barang: ' + cxtKode.Text + ' sudah berhasil dihapus.');
        zQry.Close;
        zQry.Open;
        btnBatalClick(nil);
        ds.DataSet.Refresh ;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;

end;

procedure TfrmMstBrg_KTG.cxlSatuanPropertiesChange(Sender: TObject);
begin
  inherited;
  if zSatuan.Active then zSatuan.Close ;
     zSatuan.ParamByName('unitset').AsString := cxlSatuan.EditValue;
     zSatuan.Open;
end;

procedure TfrmMstBrg_KTG.btnPilihClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_is WHERE no_is = ''%s''',
    [zqrIS.FieldByName('no_is').AsString]);
  if not q.IsEmpty then begin
    cxtDeskripsi.Text := q.FieldByname('nama_produk').AsString;
  end;
  q.Close;
  
end;

procedure TfrmMstBrg_KTG.cxColDeskripsiPropertiesChange(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  inherited;
  {
  i := cxTblRouting.DataController.FocusedRowIndex;

  q := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = ''%s''',
    [zqrBrgRouting.FieldByName('kode').AsString]);

  with cxTblRouting.DataController do begin
    Values[i, cxColKodeRouting.Index] := q.FieldByName('kode').AsString;
    Values[i, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
  end;
  q.Close;
  }
end;

procedure TfrmMstBrg_KTG.FormCreate(Sender: TObject);
var
  lst: TStringList;
  i,j,k : Integer;
  q,r: TZQuery;
begin
  inherited;
  zqrBrgRouting.Open;
  zQry.Open;
  zqrKelompok.Open;
  zqrSubKelompok.Open;
  zqrUnit.Open;
  zUnit.Open;
  zSatuan.Open;
  zqrBrgBom.Open;
  zCust.Open;
  zSupp.Open;
  zMesin.Open;
  zqrUnitKTG.Open;
  zqrIS.Open;
  zqrUnit2.Open;
  zSubKelompok1.Open ;
  zqrAlt.Open ;

  with cxCmbBentuk.Properties do begin
    Items.Add('BOTTOM-SEAL');
    Items.Add('SIDE-SEAL');
    Items.Add('NON-RECTANGLE');
    Items.Add('SHEET');
    Items.Add('TUBE');
  end;

  lst := TStringList.Create;

  lst.CommaText := '"EXTRUSI","FILM GEL","FILM BLOROK","FILM GALER","FILM NJERUK","MATA IKAN","FILM LENGKET"';

  {
  with cxTblCriticalPoint.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxCol_CP_Ket.Index] := lst.Strings[j];
      Values[i, cxCol_CP_1.Index] := 0;
      Values[i, cxCol_CP_2.Index] := 0;
      Values[i, cxCol_CP_3.Index] := 0;
      Values[i, cxCol_CP_4.Index] := 0;
      Values[i, cxCol_CP_5.Index] := 0;
    end;
  end;
  }
  
  with cxTblCriticalPoint_21.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxCol_CP_Ket_21.Index] := lst.Strings[j];
    end;
  end;

  lst.CommaText := '"PRINTING","PETAL","PECAH","JEMBRET"';

  {
  with cxTblCriticalPoint2.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxCol_CP_Ket.Index] := lst.Strings[j];
      Values[i, cxCol_CP_1.Index] := 0;
      Values[i, cxCol_CP_2.Index] := 0;
      Values[i, cxCol_CP_3.Index] := 0;
      Values[i, cxCol_CP_4.Index] := 0;
      Values[i, cxCol_CP_5.Index] := 0;
    end;
  end;
  }
  
  with cxTblCriticalPoint_22.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxCol_CP_Ket_21.Index] := lst.Strings[j];
    end;
  end;


  ScrollBox1.VertScrollBar.Position := 0;

  Panel2.Caption := '';

  cxEditRepository1ComboBoxItem1.Properties.Items.CommaText :=
    '"Bahan 1","Bahan 2","Bahan 3","Bahan 4","Bahan 5",' +
    '"Bhn. Recy. 1","Bhn. Recy. 2","Bhn. Recy. 3","Bhn. Recy. 4","Bhn. Recy.5",' +
    '"Additive 1","Additive 2","Additive 3","Additive 4","Additive 5",' +
    '"Pewarna 1","Pewarna 2","Pewarna 3","Pewarna 4","Pewarna 5"';

  // combo box base material
  q := OpenRS('SELECT * FROM tbl_base_material ORDER BY base_material');
  cxCmbBase.Properties.Items.Clear;
  while not q.Eof do begin
    cxCmbBase.Properties.Items.Add(q.FieldByName('base_material').AsString);
    q.Next;
  end;
  q.Close;

  r := OpenRS('SELECT * FROM tbl_unit ORDER BY unitid');
  while not r.Eof do begin
    cxCmbPackUnit1.Properties.Items.Add(r.FieldByName('unitid').AsString);
    cxCmbPackUnit2.Properties.Items.Add(r.FieldByName('unitid').AsString);
    cxCmbPackUnit3.Properties.Items.Add(r.FieldByName('unitid').AsString);
    cxCmbPackUnit4.Properties.Items.Add(r.FieldByName('unitid').AsString);
    cxCmbPackUnit5.Properties.Items.Add(r.FieldByName('unitid').AsString);
    r.Next;
  end;
  r.Close;

  cxCmbFolding1.Properties.Items.CommaText := 'Flat,Roll';

  cxCmbFolding2.Properties.Items.CommaText :=
    '"Bulk Folded","Individual Fold","Fan Fold","Perforated On Roll","Interleave On Roll",Roll';

  cxCmbPackAcc.Properties.Items.CommaText :=
    'Paper,PVC,Steel';
  
end;

procedure TfrmMstBrg_KTG.cxTblRoutingDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColDeskripsi.Index then begin
    try
      cxTblRouting.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColKodeRouting.Index] :=
        ADataController.Values[ARecordIndex, cxColDeskripsi.Index];
    finally
      cxTblRouting.EndUpdate;
    end;
  end;
end;

procedure TfrmMstBrg_KTG.cxTblRoutingDataControllerBeforePost(
  ADataController: TcxCustomDataController);
var
  i: integer;
begin
  inherited;
  i := ADataController.FocusedRowIndex;

  if (VarIsNull(ADataController.Values[i, cxColKodeRouting.Index])) or
    (Trim(ADataController.Values[i, cxColKodeRouting.Index]) = '')  then begin
    MsgBox('Kode barang detail routing harus di isi.');
    Abort;
  end;

  if (VarIsNull(ADataController.Values[i, cxColRouting.Index])) or
    (Trim(ADataController.Values[i, cxColRouting.Index]) = '')  then begin
    MsgBox('Jenis routing harus di isi.');
    Abort;
  end;

end;

procedure TfrmMstBrg_KTG.cxlKelompokPropertiesChange(Sender: TObject);
begin
  cxtKelompok.Text := zqrKelompok.FieldByName('kelompok').AsString;
  zqrSubKelompok.Close;
  zqrSubKelompok.ParamByName('kode_kelompok').AsString := zqrKelompok.FieldByName('kode').AsString;
  zqrSubKelompok.Open;
  if (cxlKelompok.EditValue = 'A') or (cxlKelompok.EditValue = 'B') then begin
    cxlSupplier.Enabled := False;
    cxlCustomer.Enabled := true;
    cxtSubGroup.Enabled := False;
  end
  else begin
    cxlCustomer.Enabled := false;
    cxlSupplier.Enabled := true;
    cxtSubGroup.Enabled := True;
  end;
end;

procedure TfrmMstBrg_KTG.cxlSubKelompokPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtSubKelompok.Text := zqrSubKelompok.FieldByName('sub_kelompok').AsString;
end;

procedure TfrmMstBrg_KTG.SimpanBOM;
var
  q,z: TZQuery;
  i: integer;
begin
  q := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = ''%s''',[cxtKode.text]);
  if not q.IsEmpty then
    q.Edit
  else
    q.Insert;

  q.FieldByName('kode_brg').AsString := cxtKode.Text;
  q.FieldByName('tgl_buat').AsDateTime := Aplikasi.TanggalServer;
  q.FieldByName('user').AsString := Aplikasi.NamaUser;
  q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
  q.FieldByName('f_aktif').AsInteger := 1;
  q.Post;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s''',[cxtKode.text]);
  if not q.IsEmpty then
    q.Edit
  else
    q.Insert;
  q.FieldByName('kode').AsString := cxtKode.Text;
  q.FieldByName('nama').AsString := 'A';
  q.Post;
  q.Close;

  dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_formula_subdet WHERE kode = ''%s''',[cxtKode.text]));
  q := OpenRS('SELECT * FROM tbl_formula_subdet WHERE kode = ''%s''',[cxtKode.text]);

  with cxTblBOM.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      q.Insert;
      q.FieldByName('kode').Value := cxtKode.Text;
      q.FieldByName('nama').Value := 'A';
      q.FieldByName('kode_brg').Value := Values[i, cxColBomKode.Index];
      q.FieldByName('qty').Value := Values[i, cxColBomQty.Index];
      q.FieldByName('satuan').Value := Values[i, cxColBomSatuan.index];
      q.FieldByName('persen').Value := Values[i, cxColPersen.Index];
      q.FieldByName('jns').Value := Values[i, cxColJnsBom.Index];
      q.FieldByName('ketebalan').Value := Values[i, cxColKetebalan.Index];
      q.FieldByName('l_group').Value := Values[i, cxCollockGroup.Index];
      q.FieldByName('l_detail').Value := Values[i, cxColLockDetail.Index];
      q.FieldByName('l_persen').Value := Values[i, cxCollockpersen.Index];
      q.Post;
    end;
  end;

   dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_alternatif WHERE kode = ''%s'' and kode_bahan=''%s''',[cxtKode.text,cxtAlt.Text ]));
   z := OpenRS('SELECT * FROM tbl_alternatif WHERE kode = ''%s'' and kode_bahan=''%s''',[cxtKode.text,cxtAlt.Text ]);
   with cxTblaLT.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      z.Insert;
      z.FieldByName('kode').Value := cxtKode.Text;
      z.FieldByName('kode_bahan').Value := cxtAlt.Text;
      z.FieldByName('kode_alt').Value := Values[i, cxColKode.Index];
      z.Post;
    end;
  end;
  z.Close ;
end;

procedure TfrmMstBrg_KTG.cxTblBOMDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  q : TZQuery ;
begin
  inherited;
 if AItemIndex = cxColBOmDesc.Index then begin
    try
      cxTblBOM.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColBomKode.Index] :=
        ADataController.Values[ARecordIndex, cxColBomDesc.Index];

        q := OpenRS('SELECT sub_group FROM tbl_barang WHERE kode = ''%s''',
        [ADataController.Values[ARecordIndex, cxColBomKode.Index]]);
        ADataController.Values[ARecordIndex, cxColSub.Index] := q.FieldByName('sub_group').AsString;

    finally
      cxTblBOM.EndUpdate;
    end;
  end
  else if AItemIndex = cxColJnsBom.Index then begin
    if ADataController.Values[ARecordIndex, cxColJnsBom.Index] = 'VOLUME' then
      ADataController.Values[ARecordIndex, cxColPersen.Index] := 0;
    end
    else if (AItemIndex = cxColBomLayer1.Index) or
        (AItemIndex = cxColBomLayer2.Index) or
        (AItemIndex = cxColBomLayer3.Index) then begin
            if Copy(cxtKode.Text,1,3) = 'B01' then begin
             try
            with ADataController do begin
              Values[ARecordIndex, cxColPersen.Index] :=
                ((Values[ARecordIndex, cxColBomLayer1.Index] / 100) * cxs_MS_POut.Value) +
                ((Values[ARecordIndex, cxColBomLayer2.Index] / 100) * cxs_MS_PMid.Value) +
                ((Values[ARecordIndex, cxColBomLayer3.Index] / 100) * cxs_MS_PIn.Value);
             Values[ARecordIndex, cxColBomQty.Index] := ((Values[ARecordIndex, cxColPersen.Index] / 100) * cxsBeratBOM.Value);
            end;

            except
          end;
        end;
      end
       else if (AItemIndex = cxColPersen.Index) then begin
        ADataController.Values[ARecordIndex, cxColBomQty.Index] :=
          (ADataController.Values[ARecordIndex, cxColPersen.Index] / 100) * cxsBeratBOM.Value;
      end


  
end;

procedure TfrmMstBrg_KTG.pgChange(Sender: TObject);
var
  tebal, lebar_buka, tinggi_total,
  panjang, panjang_jadi, konstanta,
  top_fold, gusset, res: real;
  sKodeBrgInduk: string;
  q: TZQuery;
  i: Integer;
begin
  inherited;
  if pg.ActivePageIndex = 2 then begin
    cxtNamaBrg.Text := cxtDeskripsi.Text;
    
    {if Copy(cxtKode.Text,1,1) = 'A' then begin
      //cxsBeratBOM.Value := HitungBerat;
      //if cxsBeratBOM.Value = 0 then
      //  cxsBeratBOM.Value := cxsBeratBersih.Value;
      cxsBeratBOM.Value := cxsBeratBersih.Value;
    end
    else
      cxsBeratBOM.Value := cxsBeratKotor.Value;    }
     if Copy(cxtKode.Text,1,1) = 'B' then begin
          cxColLockDetail.Visible := True ;
          cxCollockGroup.Visible := True ;
          end
          else begin
            cxColLockDetail.Visible := False ;
            cxCollockGroup.Visible := False ;
          end;


    // jika mixing maka cek di material yang disarankan
    if Copy(cxtKode.Text,1,3) = 'B01' then begin

      q := OpenRS('SELECT kode FROM tbl_barang WHERE LEFT(kode,1) = ''A'' AND no_is = ''%s''',[cxlIS.EditValue]);
      sKodeBrgInduk := q.FieldByName('kode').AsString;

      // cek apakah bom mixing sudah ada
      q := OpenRS('SELECT * FROM tbl_formula_subdet WHERE kode = ''%s''',[cxtKode.Text]);
      if not q.IsEmpty then Abort;
      q.Close;

      q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_mat_saran a ' +
        'LEFT JOIN tbl_barang b ON a.kode = b.kode WHERE a.kode = ''%s''',[sKodeBrgInduk]);
      while not q.IsEmpty do begin
        with cxTblBOM.DataController do begin
          i := AppendRecord;
          Values[i, cxColBomBahan.Index] := q.FieldByName('bahan').Value;
          Values[i, cxColBomKode.Index] := q.FieldByname('kode_brg').AsString;
          Values[i, cxColBomDesc.Index] := q.FieldByName('deskripsi').AsString;
          Values[i, cxColJnsBom.Index] := 'PERSEN';
          Values[i, cxColBomSatuan.Index] := 'GR';
          Values[i, cxColBomLayer1.Index] := q.FieldByName('layer1').Value;
          Values[i, cxColBomLayer2.Index] := q.FieldByName('layer2').Value;
          Values[i, cxColBomLayer3.Index] := q.FieldByName('layer3').Value;
          Values[i, cxColPersen.Index] := q.FieldByName('mono').AsFloat;
          Values[i, cxColBomQty.Index] :=
            (Values[i, cxColPersen.Index] / 100) * cxsBeratBOM.Value;
        end;
        q.Next;
      end;
      q.Close;

      cxColBomBahan.Visible := True ;
      cxColBomLayer1.Visible := True ;
      cxColBomLayer2.Visible := True ;
      cxColBomLayer3.Visible := True ;
      end
      else begin
      cxColBomBahan.Visible := False ;
      cxColBomLayer1.Visible := False ;
      cxColBomLayer2.Visible := False ;
      cxColBomLayer3.Visible := False ;
      end;


  end
  else if pg.ActivePageIndex = 3 then begin
    //cxtKode2.Text := cxtKode.Text;
   // cxtNamaBrg2.Text := cxtDeskripsi.Text;
   // cxtSatDasar.Text := cxlSatuanDet.EditValue;
  end;
end;

function TfrmMstBrg_KTG.HitungBerat: real;
var
  tebal, lebar_buka, tinggi_total,
  panjang, panjang_jadi, konstanta,
  top_fold, gusset, res: real;
  q: TZQuery;
begin

  try
    cxtNamaBrg.Text := cxtDeskripsi.Text;
    tebal := cxsTebal.Value;
    lebar_buka := cxsLebarBuka.Value;
    panjang := cxsPanjang.Value;
    panjang_jadi := cxsPanjangJadi.Value;
    tinggi_total := cxsTinggiTotal.Value;
    top_fold := cxsTopFlod.Value;
    gusset := cxsGusset.Value;

    // ambil konstanta
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''', [cxCmbBase.Text]);
    if not q.IsEmpty then begin
      //konstanta := q.FieldByName('std').Value;
      konstanta := cxsBeratJenis.EditValue ;
    end;
    q.Close;

    if (cxCmbBentuk.Text = 'NON-RECTANGLE') or
      (cxCmbBentuk.Text = 'SHEET') then begin
      res := (tebal / 10000) * lebar_buka * tinggi_total * konstanta / 2;

    end
    else begin
      res := (tebal / 10000) * lebar_buka * (tinggi_total + top_fold + gusset) * konstanta;
    end;

    Result := res;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      Result := 0;
    end;
  end;

end;

procedure TfrmMstBrg_KTG.btnHitungBeratClick(Sender: TObject);
begin
  inherited;
  cxsBeratKotor.Value := HitungBeratKotor;
  cxsBeratBersih.Value := HitungBeratBersih;
  cxsBeratMeter.Value :=  BeratPerMeter;

  //Berat FG+Accecoris
  //cxsBeratJadi.EditValue := cxsBeratBersih.Value - ((cxsLebarPlong.value*cxsPanjangPlong.Value)/(cxsLebarBuka.value*cxsPanjang.Value));

  //Berat Meter
  //if (cxCmbBentuk.EditValue = 'BOTTOM-SEAL') or (cxCmbBentuk.EditValue = 'SHEET')  then begin
  //  cxsBeratMeter.EditValue := cxsBeratBersih.Value/(cxsPanjang.Value /100*((1/cxsBeratBersih.Value)*1000));
  //end;
  // if cxCmbBentuk.EditValue = 'NON-RECTANGLE' then begin
  //     cxsBeratMeter.EditValue := cxsBeratBersih.Value/((cxsPanjang.Value/2/100)*((1/cxsBeratBersih.Value)*1000)) ;
  //end;
  //  if cxCmbBentuk.EditValue = 'SIDE-SEAL' then begin
  //     cxsBeratMeter.EditValue :=  cxsBeratBersih.Value/((cxsLebarBuka.value/100)*((1/cxsBeratBersih.Value)*1000)) ;
  //end;


end;

procedure TfrmMstBrg_KTG.cxTblBOMEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var
  i: Integer;
  jenis: string;
begin
  inherited;

  i := cxTblBOM.DataController.FocusedRecordIndex;

  if (AItem.Index = cxColPersen.Index) or (AItem.Index = cxColBomLayer1.Index) or
    (AItem.Index = cxColBomLayer2.Index) or (AItem.Index = cxColBomLayer3.Index) or
    (AItem.Index = cxColBomQty.Index) then begin
    if VarIsNull(cxTblBOM.DataController.Values[i, cxColJnsBom.Index]) then
      AAllow := false
    else begin
      jenis := cxTblBOM.DataController.Values[i, cxColJnsBom.Index];
      if AItem.Index = cxColBomQty.Index then begin
        if jenis = 'PERSEN' then AAllow := false;
      end
      else begin
        if jenis = 'VOLUME' then AAllow := false;
      end;
    end;
  end;
  
end;

procedure TfrmMstBrg_KTG.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmMstBrg_KTG.btnGenerateKodeClick(Sender: TObject);
begin
  inherited;
  if cxlKelompok.Text = '' then Abort;
  if cxlSubKelompok.Text = '' then Abort;

  try
    if (cxlKelompok.Text = 'A') or (cxlKelompok.Text = 'B') then
      cxtKode.Text := cxlKelompok.Text + cxlSubKelompok.Text + '.' + cxlCustomer.EditValue
    else
      cxtKode.Text := cxlKelompok.Text + cxlSubKelompok.Text + '.' + cxlSupplier.EditValue;

    cxtKode.Text := GetLastKodeBrg(cxtKode.Text + '.');

    if cxlKelompok.Text = 'B' then begin
      if cxlSubKelompok.Text = '01' then
        cxtDeskripsi.Text := 'MIX ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '02' then
        cxtDeskripsi.Text := 'EXT ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '03' then
        cxtDeskripsi.Text := 'PRN ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '04' then
        cxtDeskripsi.Text := 'GST ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '05' then
        cxtDeskripsi.Text := 'CVT ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '06' then
        cxtDeskripsi.Text := 'PCK ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '07' then
        cxtDeskripsi.Text := 'SRT ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '08' then
        cxtDeskripsi.Text := 'CRU ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '09' then
        cxtDeskripsi.Text := 'WAS ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '10' then
        cxtDeskripsi.Text := 'PLT ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '11' then
        cxtDeskripsi.Text := 'INJ ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '12' then
        cxtDeskripsi.Text := 'CST ' + cxtDeskripsi.Text
      else if cxlSubKelompok.Text = '13' then
        cxtDeskripsi.Text := 'MAN ' + cxtDeskripsi.Text;
    end;

  except
  end;
                                                  
end;

procedure TfrmMstBrg_KTG.cxlISPropertiesEditValueChanged(Sender: TObject);
var
  q,z: TZQuery;
  i,j: Integer;
begin
  inherited;
  try
    q := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[zqrIS.FieldByName('no_is').AsString]);
    if not q.IsEmpty then begin
      cxlCustomer.EditValue := q.FieldByName('kode_customer').AsString;
      cxtFungsi.Text := q.FieldByName('func_of_bags').AsString;
      
      cxsTebal.Value := q.FieldByname('thickness_total').Value;
      cxsLebarBuka.Value := q.FieldByname('open_width').Value;
      cxsPanjangPlong.Value := q.FieldByName('cut_out_height').Value;
      cxsLebarJadi.Value := q.FieldByName('face_width').Value;
      cxsLebarPlong.Value := q.FieldByName('cut_out_width').Value;
      cxsPanjang.Value := q.FieldByName('total_height').Value;
      cxsTopFlod.Value := q.FieldByname('top_fold').Value;
      cxsPanjangJadi.Value := q.FieldByName('face_height').Value;
      cxCmbBase.Text := q.FieldByName('bm_bag').Value;
    end;
    q.Close;

    q := OpenRS('SELECT * FROM tbl_barang WHERE no_is =''%s''',[zqrIS.FieldByName('no_is').AsString] );

    with q do begin
      cxtDeskripsi.Text         := FieldByName('deskripsi').AsString;
      cxlCustomer.EditValue     := FieldByName('kode_customer').AsString;
      cxtFungsi.Text            := FieldByName('fungsi').AsString;
      cxcmbBase.Text            := FieldByName('base_material').AsString ;
      cxtSheet.Text             := FieldByName('sheet_tube').AsString;
      cxsBeratJenis.Value       := FieldByName('berat_jenis').AsFloat;
      cxsTebal.Value            := FieldByName('tebal').AsFloat;
      cxsBeratKotor.Value       := FieldByName('berat_kotor').AsFloat ;
      cxsBeratBersih.Value      := FieldByName('berat_bersih').AsFloat;
      cxsBeratMeter.Value       := FieldByName('berat_meter').AsFloat;
      cxsBeratJadi.Value        := FieldByName('berat_fg').AsFloat ;
      cxsLebarBuka.Value        := FieldByName('lebar_buka').AsFloat;
      cxsLebarJadi.value        := FieldByName('lebar_jadi').AsFloat;
      cxsPanjang.Value          := FieldByName('panjang').AsFloat;
      cxsPanjangJadi.Value      := FieldByName('panjang_jadi').AsFloat;
      cxsLebarTube.Value        := FieldByName('lebar_tube').AsFloat;
      cxsPanjangPlong.Value     := FieldByName('panjang_plong').AsFloat;
      cxsLebarPlong.Value       := FieldByName('lebar_plong').asFloat;
      cxsTopFlod.Value          := FieldByName('top_fold').AsFloat;
      cxsGusset.Value           := FieldByName('gusset').AsFloat;
      cxsLebarHandle.Value      := FieldByName('lebar_handle').AsFloat;
      cxtAksesoris.Text         := FieldByName('aksesoris').AsString ;
      cxsBeratAks.Value         := FieldByName('berat_aksesoris').AsFloat;
      cxsTebalAks.Value         := FieldByName('t_aksesoris').AsFloat;
      cxsLebarAks.Value         := FieldByName('l_aksesoris').AsFloat ;
      cxsPanjangAks.Value       := FieldByName('p_aksesoris').AsFloat;
      cxsAirHole.Value          := FieldByName('air_hole').AsFloat;
      cxsCut.Value              := FieldByName('cut').AsFloat;
      cxtBentukProduk.Text      := FieldByName('bentuk_produk').asString;
      cxtDesainPrinting.Text    := FieldByName('desain_produk').AsString;
      cxtWarnaFilm.Text         := FieldByName('warna_film').AsString;
      cxtVisualProperty.Text    := FieldByName('visual').AsString;
      cxtSurfaceProperty.Text   := FieldByName('surface').AsString;
      cxsMinTSTD.Value          := FieldByName('min_std').asFloat;
      cxsMaxTSTD.Value          := FieldByName('max_std').asFloat;
      cxsMinTSMD.Value          := FieldByName('min_smd').AsFloat;
      cxsMaxTSMD.Value          := FieldByName('max_smd').AsFloat;
      cxsMinTETD.Value          := FieldByName('min_etd').AsFloat;
      cxsMaxTETD.Value          := FieldByName('max_etd').AsFloat;
      cxsMinTEMD.Value          := FieldByName('min_emd').asFloat;
      cxsMaxTEMD.Value          := FieldByName('max_emd').asFloat;
      cxsMinTearTD.Value        := FieldByName('min_teartd').AsFloat;
      cxsMaxTearTD.Value        := FieldByName('max_teartd').AsFloat;
      cxsMinTearMD.Value        := FieldByName('min_tearmd').asFloat;
      cxsMaxTearMD.Value        := FieldByName('max_tearmd').asFloat;
      cxsMinPuncture.Value      := FieldByName('min_resistance').asFloat;
      cxsMaxPuncture.Value      := FieldByName('max_resistance').asFloat;
      cxsMinDrat.Value          := FieldByName('min_impact').asFloat;
      cxsMaxDrat.Value          := FieldByName('max_impact').AsFloat;
      cxsMinOpasitas.Value      := FieldByName('min_opasitas').asFloat;
      cxsMaxOpasitas.Value      := FieldByName('max_opasitas').asFloat;
      cxtWarnaFilm.Text         := FieldByName('std_warnafilm').AsString;
      cxlSatuan.EditValue       := FieldByName('unitsetid').AsString;
      cxlSatuanDet.EditValue    := FieldByName('unitid').AsString;
      cxtCritical.Text          := FieldByName('critical_point').AsString;

      cxsTSTD.Value        := FieldByName('std_std').AsFloat;
      cxsTSMD.Value        := FieldByName('std_smd').AsFloat;
      cxsTETD.Value        := FieldByName('std_etd').AsFloat;
      cxsTEMD.Value        := FieldByName('std_emd').AsFloat;
      cxsTearTD.Value      := FieldByName('std_teartd').AsFloat;
      cxsTearMD.Value      := FieldByName('std_tearmd').AsFloat;
      cxsPuncture.Value    := FieldByName('std_resistance').AsFloat;
      cxsDrat.Value        := FieldByName('std_impact').AsFloat;
      cxsOpasitas.Value    := FieldByName('std_opasitas').AsFloat;

      cxsHPP.Value := FieldbyName('hpp').Value;
      cxsTinggiTotal.Value := FieldByName('tinggi_total').Value;
      cxCmbBentuk.Text := FieldByName('bentuk').AsString;

      if FieldByName('f_aktif').AsInteger = 1 then
        cxChkAktif.Checked := True
      else
        cxChkAktif.Checked := False;

      cxlSupplier.EditValue := q.FieldByName('kode_supplier').Value;
      cxsHPP.Value := q.FieldByName('hpp').AsFloat;

      cxlUnitKTG.EditValue := q.FieldByName('unit_ktg').AsString;

      {
      cxlKonv1.EditValue :=  FieldByName('conv1').Value;
      cxlKonv2.EditValue :=  FieldByName('conv2').Value;
      cxlKonv3.EditValue :=  FieldByName('conv3').Value;
      cxlKonv4.EditValue :=  FieldByName('conv4').Value;
      cxlKonv5.EditValue :=  FieldByName('conv5').Value;

      cxsJmlKonv1.Value  :=  FieldByName('sat1').Value;
      cxsJmlKonv2.Value  :=  FieldByName('sat2').Value;
      cxsJmlKonv3.Value  :=  FieldByName('sat3').Value;
      cxsJmlKonv4.Value  :=  FieldByName('sat4').Value;
      cxsJmlKonv5.Value  :=  FieldByName('sat5').Value;
      }
      
      for j := 1 to cxTblCriticalPoint.DataController.RecordCount - 1 do begin
        with cxTblCriticalPoint.DataController do begin
          if j = 1 then
            if q.FieldByName('cp_fgel').AsInteger > 0 then
              Values[j, q.FieldByName('cp_fgel').AsInteger] := 1;

          if j = 2 then
            if q.FieldByName('cp_fblorok').AsInteger > 0 then
              Values[j, q.FieldByName('cp_fblorok').AsInteger] := 1;

          if j = 3 then
            if q.FieldByName('cp_fgaler').AsInteger > 0 then
              Values[j, q.FieldByName('cp_fgaler').AsInteger] := 1;

          if j = 4 then
            if q.FieldByName('cp_fnjeruk').AsInteger > 0 then
              Values[j, q.FieldByName('cp_fnjeruk').AsInteger] := 1;

          if j = 5 then
            if q.FieldByName('cp_mataikan').AsInteger > 0 then
              Values[j, q.FieldByName('cp_mataikan').AsInteger] := 1;

          if j = 6 then
            if q.FieldByName('cp_flengket').AsInteger > 0 then
              Values[j, q.FieldByName('cp_flengket').AsInteger] := 1;

          if j = 7 then
            if q.FieldByName('cp_fbau').AsInteger > 0 then
              Values[j, q.FieldByName('cp_fbau').AsInteger] := 1;

          if j = 8 then
            if q.FieldByName('cp_fkuat').AsInteger > 0 then
              Values[j, q.FieldByName('cp_fkuat').AsInteger] := 1;

        end;
      end;

      for j := 1 to cxTblCriticalPoint2.DataController.RecordCount - 1 do begin
        with cxTblCriticalPoint2.DataController do begin
          if j = 1 then
            if q.FieldByName('cp_petal').AsInteger > 0 then
              Values[j, q.FieldByName('cp_petal').AsInteger] := 1;

          if j = 2 then
            if q.FieldByName('cp_pecah').AsInteger > 0 then
              Values[j, q.FieldByName('cp_pecah').AsInteger] := 1;

          if j = 3 then
            if q.FieldByName('cp_jembret').AsInteger > 0 then
              Values[j, q.FieldByName('cp_jembret').AsInteger] := 1;

        end;
      end;

      {z := OpenRS('SELECT a.*, b.deskripsi ' +
        'FROM tbl_mat_saran a ' +
        'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
        'WHERE a.kode = ''%s''',[cxtKode.Text]);
      while not z.Eof do begin
        with cxTblMatSaran.DataController do begin
          i := AppendRecord;
          Values[i, cxCol_MS_Bahan.Index] := z.FieldbyName('bahan').AsString;
          Values[i, cxCol_MS_KodeBrg.Index] := z.FieldByName('kode_brg').AsString;
          Values[i, cxCol_MS_Deskripsi.Index] := z.FieldByName('kode_brg').AsString;
          Values[i, cxCol_MS_Layer1.Index] := z.FieldByName('layer1').AsFloat;
          Values[i, cxCol_MS_Layer2.Index] := z.FieldByName('layer2').AsFloat;
          Values[i, cxCol_MS_Layer3.Index] := z.FieldByName('layer3').AsFloat;
          Values[i, cxCol_MS_Mono.Index] := z.FieldByName('mono').AsFloat;
        end;
        z.Next;
      end;
      z.Close;  }
    end;
  except
  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPointEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  i,j,col: Integer;
begin
  i := cxTblCriticalPoint.DataController.GetFocusedRecordIndex;
  if i = 0 then
    AAllow := False
  else begin

  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPointCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;

end;

procedure TfrmMstBrg_KTG.cxTblCriticalPoint2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  i: Integer;
begin
  i := cxTblCriticalPoint2.DataController.GetFocusedRecordIndex;
  if i = 0 then AAllow := False;
end;

procedure TfrmMstBrg_KTG.cxTblMatSaranDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;

  if AItemIndex = cxCol_MS_Deskripsi.Index then begin
    try
      cxTblMatSaran.BeginUpdate;
      ADataController.Values[ARecordIndex, cxCol_MS_KodeBrg.Index] :=
        ADataController.Values[ARecordIndex, cxCol_MS_Deskripsi.Index];
    finally
      cxTblMatSaran.EndUpdate;
    end;
  end
  else if (AItemIndex = cxCol_MS_Layer1.Index) or
    (AItemIndex = cxCol_MS_Layer2.Index) or
    (AItemIndex = cxCol_MS_Layer3.Index) then begin
    try
      with ADataController do begin
        Values[ARecordIndex, cxCol_MS_Mono.Index] :=
          ((Values[ARecordIndex, cxCol_MS_Layer1.Index] / 100) * cxs_MS_POut.Value) +
          ((Values[ARecordIndex, cxCol_MS_Layer2.Index] / 100) * cxs_MS_PMid.Value) +
          ((Values[ARecordIndex, cxCol_MS_Layer3.Index] / 100) * cxs_MS_PIn.Value);
      end;
    except
    end;
  end;
end;

procedure TfrmMstBrg_KTG.SimpanMaterialSaran;
var
  i: Integer;
  q: TZQuery;
begin
  if Copy(cxtKode.Text,1,3) = 'B01' then begin

      with cxTblBOM.DataController do begin

        dm.zConn.ExecuteDirect('DELETE FROM tbl_mat_saran WHERE kode = ''' + cxtKode.Text + '''');

        q := OpenRS('SELECT * FROM tbl_mat_saran WHERE kode = ''%s''',[cxtKode.text]);

        for i := 0 to RecordCount - 1 do begin
          q.Insert;
          q.FieldByName('kode').AsString := cxtKode.Text;
          q.FieldByName('bahan').Value := Values[i, cxColBomBahan.Index];
          q.FieldByname('kode_brg').Value := Values[i, cxColBomKode.Index];
          q.FieldByName('layer1').Value := Values[i, cxColBomLayer1.Index];
          q.FieldByName('layer2').Value := Values[i, cxColBomLayer2.Index];
          q.FieldByName('layer3').Value := Values[i, cxColBomLayer3.Index];
          q.FieldByName('mono').Value := Values[i, cxColPersen.Index];
          q.Post;
        end;
        q.Close;
    
      end;

  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPointDataControllerBeforePost(
  ADataController: TcxCustomDataController);
var
  i,j,k: Integer;
begin
  inherited;
  i := ADataController.GetFocusedRecordIndex;
  k := 0;
  for j := 1 to 5 do begin
    if ADataController.Values[i, j] = 1 then
      Inc(k);
  end;
  if k > 1 then begin
    MsgBox('Mohon pilih salah 1.');
    for j := 1 to 5 do
      ADataController.Values[i,j] := 0;
    Abort;
  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPoint2DataControllerBeforePost(
  ADataController: TcxCustomDataController);
var
  i,j,k: Integer;
begin
  inherited;
  i := ADataController.GetFocusedRecordIndex;
  k := 0;
  for j := 1 to 5 do begin
    if ADataController.Values[i, j] = 1 then
      Inc(k);
  end;
  if k > 1 then begin
    MsgBox('Mohon pilih salah 1.');
    for j := 1 to 5 do
      ADataController.Values[i,j] := 0;
    Abort;
  end;
end;

function TfrmMstBrg_KTG.HitungBeratKotor: real;
var
  q: TZQuery;
  konstanta: real;
begin
  // ambil konstanta
  try
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxCmbBase.Text]);
    //konstanta := q.FieldByname('std').AsFloat;
    konstanta := cxsBeratJenis.EditValue ;
    q.Close;
    Result := konstanta * (cxsTebal.Value / 10000) * cxsLebarBuka.Value * cxsPanjang.Value;
  finally
    // Result := 0;
  end;
end;

function TfrmMstBrg_KTG.HitungBeratBersih: Real;
var
  persen_plong: real;
begin
  try
    persen_plong := (cxsPanjangPlong.Value * cxsLebarPlong.Value) / (cxsLebarBuka.Value * cxsPanjang.Value);
    Result := (cxsBeratKotor.Value - (persen_plong * cxsBeratKotor.Value)) + cxsBeratAks.Value; // + Berat_Handle
  finally
    //Result := 0;
  end;
end;

function TfrmMstBrg_KTG.BeratPerMeter: real;
var
  q: TZQuery;
  konstanta: real;
begin
  // ambil konstanta
  try
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxCmbBase.Text]);
    //konstanta := q.FieldByname('std').AsFloat;
    konstanta := cxsBeratJenis.EditValue ;
    q.Close;
    Result := konstanta * (cxsTebal.Value / 10000) * cxsLebarTube.Value * 100;
  finally
    //Result := 0;
  end;
end;

procedure TfrmMstBrg_KTG.cxs_MS_OutPropertiesChange(Sender: TObject);
begin
  try
    cxs_MS_Total.Value := cxs_MS_Out.Value +
      cxs_MS_Mid.Value +
      cxs_MS_In.Value;

    cxs_MS_POut.Value := cxs_MS_Out.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PMid.Value := cxs_MS_Mid.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PIn.Value := cxs_MS_In.Value / cxs_MS_Total.Value * 100;

    cxsTebal.Value :=  cxs_MS_Total.Value ;
  except
  end;
end;

procedure TfrmMstBrg_KTG.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  MousePos := ScreenToClient(MousePos);
  If
    (MousePos.X > ScrollBox1.Left) and
    (MousePos.Y > ScrollBox1.Top) and
    (MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
    (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height)
  then
    ScrollBox1.Perform(WM_VSCROLL,0,0);
end;

procedure TfrmMstBrg_KTG.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  MousePos := ScreenToClient(MousePos);
  If (MousePos.X > ScrollBox1.Left) and
    (MousePos.Y > ScrollBox1.Top) and
    (MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
    (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height) then
    ScrollBox1.Perform(WM_VSCROLL,1,0);
end;

procedure TfrmMstBrg_KTG.cxTblMatSaranDataControllerNewRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
  inherited;
  with ADataController do begin
    Values[ARecordIndex, cxCol_MS_Layer1.Index] := 0;
    Values[ARecordIndex, cxCol_MS_Layer2.Index] := 0;
    Values[ARecordIndex, cxCol_MS_Layer3.Index] := 0;
  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPoint_21CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPoint_21Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  i: Integer;
begin
  inherited;
  i := cxTblCriticalPoint_21.DataController.GetFocusedRecordIndex;
  if i = 0 then
    AAllow := False
  else begin

  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPoint_22CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfrmMstBrg_KTG.cxTblCriticalPoint_22Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  i: Integer;
begin
  inherited;
  i := cxTblCriticalPoint_22.DataController.GetFocusedRecordIndex;
  if i = 0 then
    AAllow := False
  else begin

  end;
end;

procedure TfrmMstBrg_KTG.cxTblBOMDataControllerNewRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
  inherited;
   with ADataController do begin
    Values[ARecordIndex, cxColBomLayer1.Index] := 0;
    Values[ARecordIndex, cxColBomLayer2.Index] := 0;
    Values[ARecordIndex, cxColBomLayer3.Index] := 0;
    Values[ARecordIndex, cxColLockDetail.Index] := 1;
    Values[ARecordIndex, cxCollockpersen.Index] := 1;
  end;
end;

procedure TfrmMstBrg_KTG.cxlSubKelompok1PropertiesChange(Sender: TObject);
begin

 { with zqrBrgBom do begin
    if Active then Close;
    ParamByName('kelompok1').AsString := cxlSubKelompok.EditValue ;
    Open;
  end;   }
end;

procedure TfrmMstBrg_KTG.cxColKategoriPropertiesChange(Sender: TObject);
begin
 { with zqrBrgBom do begin
    if Active then Close;
    ParamByName('kelompok1').AsString := zSubKelompok1.FieldByName('kode').AsString; ;
    Open;
  end; }

end;

procedure TfrmMstBrg_KTG.cxCmbBasePropertiesChange(Sender: TObject);
var
  q : TZQuery ;
begin
  q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''', [cxCmbBase.Text]);
  cxsBeratJenis.EditValue := q.FieldByName('std').AsFloat;

end;

procedure TfrmMstBrg_KTG.btnBrowseClick(Sender: TObject);
begin
  inherited;
  OpenDlg.Filter := 'JPG files (*.jpg)|*.JPG';
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 550000 then
        MsgBox('Ukuran file tidak boleh lebih dari 500KB.')
      else begin
        image.Picture.LoadFromFile(OpenDlg.FileName);
        cxtNamaFile.Text := OpenDlg.FileName;
      end;
    end;
  finally
    Abort;
  end;
end;

function TfrmMstBrg_KTG.ObtainFileSize(const AFile: String): Int64;
begin
 with TFileStream.Create(AFile, fmOpenRead or fmShareDenyNone) do
   begin
     try
       Result := Size;
     finally
       Free;
     end;
   end;
end;

procedure TfrmMstBrg_KTG.btnSimpanGambarClick(Sender: TObject);
var
  img: TImage;
  q: TZQuery;
  i: integer;
begin
  inherited;
  if cxtKode.Text = '' then Abort;

  img := TImage.Create(Self);
  q := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s''',[cxtKode.Text]);

  try
    q.Insert;
    q.FieldByName('kode').AsString := Trim(cxtKode.Text);
    q.FieldByName('keterangan').AsString := Trim(cxtKetImg.Text);
    TBlobField(q.FieldByName('image')).LoadFromFile(cxtNamaFile.Text);
    q.Post;
    q.Close;

    q := OpenRS('SELECT LAST_INSERT_ID() id');
    
    with cxTblImg.DataController do begin
      i := AppendRecord;
      Values[i, cxColKetImg.Index] := cxtKetImg.Text;
      Values[i, cxColLihatImg.Index] := 'Lihat';
      Values[i, cxColIDImg.Index] := q.FieldByName('id').AsString;
    end;
    q.Close;
    
  except
  end;
  
  cxtKetImg.Text := '';
  cxtNamaFile.Text := '';
end;

procedure TfrmMstBrg_KTG.cxTblImgCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  i: integer;
  q: TZQuery;
  img: TImage;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
    
    i := cxTblImg.DataController.GetFocusedRowIndex;
    q := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s'' AND id = %s',
      [cxtKode.Text, cxTblImg.DataController.Values[i, cxColIDImg.Index]]);
    if not q.IsEmpty then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('image')).SaveToStream(Stream);
      Stream.Position := 0;
      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      image.Picture.Assign(jpg);

      Stream.Free;
      jpg.Free;
    end;
    q.Close;
    Screen.Cursor := crDefault;
  except
  end;
  
end;

procedure TfrmMstBrg_KTG.btnHapusImgClick(Sender: TObject);
var
  i,j: integer;
  id: string;
begin
  inherited;

  j := unTools.QBox(Self, 'Hapus gambar ?','Hapus');

  if j = IDYES then begin
    with cxTblImg.DataController do begin
      i := GetFocusedRecordIndex;
      id := Values[i, cxColIDImg.Index];
      DeleteRecord(i);

      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_barang_det_img WHERE id = %s',[id]));
    end;
  end;
  
end;

procedure TfrmMstBrg_KTG.btnLihatImageClick(Sender: TObject);
var
  i: integer;
  q: TZQuery;
  img: TImage;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
  appPath: string;
begin
  inherited;
  try
    Screen.Cursor := crSQLWait;
    
    i := cxTblImg.DataController.GetFocusedRowIndex;
    q := OpenRS('SELECT * FROM tbl_barang_det_img WHERE kode = ''%s'' AND id = %s',
      [cxtKode.Text, cxTblImg.DataController.Values[i, cxColIDImg.Index]]);
    if not q.IsEmpty then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('image')).SaveToStream(Stream);
      Stream.Position := 0;
      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      appPath := Aplikasi.AppPath;

      if not DirectoryExists(appPath + 'tmp') then
        CreateDirectory(PChar(appPath + 'tmp'),nil);
      if FileExists(appPath + 'tmp\tmp.jpg') then
        DeleteFile(appPath + 'tmp\tmp.jpg');

      Stream.SaveToFile(appPath + 'tmp\tmp.jpg');

      ShellExecute(Self.Handle, nil, PChar(appPath + 'tmp\tmp.jpg'), nil, nil, SW_SHOWNORMAL);

      Stream.Free;
      jpg.Free;
    end;
    q.Close;
    Screen.Cursor := crDefault;
  except
  end;
  
end;

procedure TfrmMstBrg_KTG.btnCopyDetailBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q,z: TZQuery;
  i: Integer;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[fKode.AsString]);
    
    with q do begin
      
      cxtFungsi.Text            := FieldByName('fungsi').AsString;
      cxcmbBase.Text            := FieldByName('base_material').AsString ;
      cxtSheet.Text             := FieldByName('sheet_tube').AsString;
      cxsBeratJenis.Value       := FieldByName('berat_jenis').AsFloat;
      cxsTebal.Value            := FieldByName('tebal').AsFloat;
      cxsBeratKotor.Value       := FieldByName('berat_kotor').AsFloat ;
      cxsBeratBersih.Value      := FieldByName('berat_bersih').AsFloat;
      cxsBeratMeter.Value       := FieldByName('berat_meter').AsFloat;
      cxsBeratJadi.Value        := FieldByName('berat_fg').AsFloat ;
      cxsLebarBuka.Value        := FieldByName('lebar_buka').AsFloat;
      cxsLebarJadi.value        := FieldByName('lebar_jadi').AsFloat;
      cxsPanjang.Value          := FieldByName('panjang').AsFloat;
      cxsPanjangJadi.Value      := FieldByName('panjang_jadi').AsFloat;
      cxsLebarTube.Value        := FieldByName('lebar_tube').AsFloat;
      cxsPanjangPlong.Value     := FieldByName('panjang_plong').AsFloat;
      cxsLebarPlong.Value       := FieldByName('lebar_plong').asFloat;
      cxsTopFlod.Value          := FieldByName('top_fold').AsFloat;
      cxsGusset.Value           := FieldByName('gusset').AsFloat;
      cxsLebarHandle.Value      := FieldByName('lebar_handle').AsFloat;
      cxtAksesoris.Text         := FieldByName('aksesoris').AsString ;
      cxsBeratAks.Value         := FieldByName('berat_aksesoris').AsFloat;
      cxsTebalAks.Value         := FieldByName('t_aksesoris').AsFloat;
      cxsLebarAks.Value         := FieldByName('l_aksesoris').AsFloat ;
      cxsPanjangAks.Value       := FieldByName('p_aksesoris').AsFloat;
      cxsAirHole.Value          := FieldByName('air_hole').AsFloat;
      cxsCut.Value              := FieldByName('cut').AsFloat;
      cxtBentukProduk.Text      := FieldByName('bentuk_produk').asString;
      cxtDesainPrinting.Text    := FieldByName('desain_produk').AsString;
      cxtWarnaFilm.Text         := FieldByName('warna_film').AsString;
      cxtVisualProperty.Text    := FieldByName('visual').AsString;
      cxtSurfaceProperty.Text   := FieldByName('surface').AsString;
      cxsMinTSTD.Value          := FieldByName('min_std').asFloat;
      cxsMaxTSTD.Value          := FieldByName('max_std').asFloat;
      cxsMinTSMD.Value          := FieldByName('min_smd').AsFloat;
      cxsMaxTSMD.Value          := FieldByName('max_smd').AsFloat;
      cxsMinTETD.Value          := FieldByName('min_etd').AsFloat;
      cxsMaxTETD.Value          := FieldByName('max_etd').AsFloat;
      cxsMinTEMD.Value          := FieldByName('min_emd').asFloat;
      cxsMaxTEMD.Value          := FieldByName('max_emd').asFloat;
      cxsMinTearTD.Value        := FieldByName('min_teartd').AsFloat;
      cxsMaxTearTD.Value        := FieldByName('max_teartd').AsFloat;
      cxsMinTearMD.Value        := FieldByName('min_tearmd').asFloat;
      cxsMaxTearMD.Value        := FieldByName('max_tearmd').asFloat;
      cxsMinPuncture.Value      := FieldByName('min_resistance').asFloat;
      cxsMaxPuncture.Value      := FieldByName('max_resistance').asFloat;
      cxsMinDrat.Value          := FieldByName('min_impact').asFloat;
      cxsMaxDrat.Value          := FieldByName('max_impact').AsFloat;
      cxsMinOpasitas.Value      := FieldByName('min_opasitas').asFloat;
      cxsMaxOpasitas.Value      := FieldByName('max_opasitas').asFloat;
      cxtWarnaFilm.Text         := FieldByName('std_warnafilm').AsString;
      cxlSatuan.EditValue       := FieldByName('unitsetid').AsString;
      cxlSatuanDet.EditValue    := FieldByName('unitid').AsString;
      cxtCritical.Text          := FieldByName('critical_point').AsString;
      cxsLine.EditValue         := FieldByName('line').AsFloat;

      cxsTSTD.Value        := FieldByName('std_std').AsFloat;
      cxsTSMD.Value        := FieldByName('std_smd').AsFloat;
      cxsTETD.Value        := FieldByName('std_etd').AsFloat;
      cxsTEMD.Value        := FieldByName('std_emd').AsFloat;
      cxsTearTD.Value      := FieldByName('std_teartd').AsFloat;
      cxsTearMD.Value      := FieldByName('std_tearmd').AsFloat;
      cxsPuncture.Value    := FieldByName('std_resistance').AsFloat;
      cxsDrat.Value        := FieldByName('std_impact').AsFloat;
      cxsOpasitas.Value    := FieldByName('std_opasitas').AsFloat;

      cxlKelompok.EditValue := FieldByName('kelompok').AsString;
      cxlSubKelompok.EditValue := FieldByName('sub_kelompok').AsString;
      cxtSubKelompok.Text := zqrSubKelompok.FieldByName('sub_kelompok').AsString;
      cxtSubGroup.Text := FieldByName('sub_group').AsString;

      cxsHPP.Value := FieldbyName('hpp').Value;
      cxsTinggiTotal.Value := FieldByName('tinggi_total').Value;
      cxCmbBentuk.Text := FieldByName('bentuk').AsString;

      if FieldByName('f_aktif').AsInteger = 1 then
        cxChkAktif.Checked := True
      else
        cxChkAktif.Checked := False;

      cxlSupplier.EditValue := q.FieldByName('kode_supplier').Value;
      cxsHPP.Value := q.FieldByName('hpp').AsFloat;

      cxlUnitKTG.EditValue := q.FieldByName('unit_ktg').AsString;

      // Treat & Cylinder
      cxtKetTread.Text          := FieldByName('ket_treat').AsString;
      cxspBufer.EditValue       := FieldByName('b_stok').AsFloat;
      cxsLead.EditValue         := FieldByName('lead_time').AsFloat;
      cxsTreatLuar.EditValue    := FieldByName('treat_luar').AsFloat;
      cxsTreatDalam.EditValue   := FieldByName('treat_dalam').AsFloat;
      cxtPolaTreatLuar.Text     := FieldByName('pola_tl').AsString;
      cxtPolaTreatDalam.Text    := FieldByName('pola_td').AsString;
      cxsJmlWarna1.editvalue    := FieldByName('jumlah_warna1').AsFloat;
      cxsJmlWarna2.EditValue    := FieldByName('jumlah_warna2').AsFloat;
      cxtDetailWarna1.Text      := FieldByName('detail_warna1').AsString;
      cxtDetailWarna2.Text      := FieldByName('detail_warna2').AsString;
      cxsTepiKiri.EditValue     := FieldByName('tepi_kiri').AsFloat;
      cxsTepiKanan.EditValue    := FieldByName('tepi_kanan').AsFloat;
      cxsTepiAtas.EditValue     := FieldByName('tepi_atas').AsFloat;
      cxsTepiBawah.EditValue    := FieldByName('tepi_bawah').AsFloat;
      cxsLebar.EditValue        := FieldByName('lebar_cyl').AsFloat;
      cxsPanjangPrint.EditValue := FieldByName('panjang_cyl').AsFloat;
      cxsToleransi.EditValue    := FieldByName('toleransi').AsFloat;
      cxtArahGulung.Text        := FieldByName('arah_gulung').AsString;
      cxtArahFilm.Text          := FieldByName('arah_film').AsString;
      cxsJumlahMD.editvalue     := FieldByName('jumlah_md').AsFloat;
      cxsJumlahTD.EditValue     := FieldByName('jumlah_td').AsFloat;
      cxsCmMD.editvalue         := FieldByName('cm_md').AsFloat;
      cxsCmTD.editvalue         := FieldByName('cm_td').AsFloat;
      cxsCylinder.editvalue     := FieldByName('jumlah_cyl').AsFloat;
      cxsKeliling.editvalue     := FieldByName('keliling').AsFloat;
      cxsRepeatPrint.EditValue  := FieldByName('repeat_print').AsFloat;

      cxtRegister.Text          := FieldByName('register').AsString;
      cxtDesign.Text            := FieldByName('nama_design').AsString;
      cxtRegister.Text          := FieldByName('jenis_gusset').AsString;
      cxtDesign.Text            := FieldByName('proses_gusset').AsString;
      cxsG_lebar.EditValue      := FieldByName('g_lebarjadi').AsFloat;
      cxtG_Arah.text            := FieldByName('g_arahfilm').AsString ;
      cxsG_Toleransi.EditValue  := FieldByName('g_toleransi').AsFloat ;
      cxtC_Keterangan.Text      := FieldByName('c_keterangan').AsString  ;
      cxtC_Arah.Text            := FieldByName('c_arahfilm').AsString  ;
      cxsC_Jarak.EditValue      := FieldByName('c_jaraklas').AsFloat;
      cxsC_panjang.EditValue    := FieldByName('c_panjanglas').AsFloat;
      cxsC_GA.EditValue         := FieldByName('c_jarakga').AsFloat;
      cxsC_GB.EditValue         := FieldByName('c_jarakgb').AsFloat ;

      //Aksesoris
      cxsPackQty1.Value    := FieldByName('pack_unit1_qty').AsFloat;
      cxsPackQty2.Value    := FieldByName('pack_unit2_qty').AsFloat;
      cxsPackQty3.Value    := FieldByName('pack_unit3_qty').AsFloat;
      cxsPackQty4.Value    := FieldByName('pack_unit4_qty').AsFloat;
      cxsPackQty5.Value    := FieldByName('pack_unit5_qty').AsFloat;
      cxCmbPackUnit1.Text  := FieldByName('pack_unit1_unit').AsString;
      cxCmbPackUnit2.Text  := FieldByName('pack_unit2_unit').AsString;
      cxCmbPackUnit3.Text  := FieldByName('pack_unit3_unit').AsString;
      cxCmbPackUnit4.Text  := FieldByName('pack_unit4_unit').AsString;
      cxCmbPackUnit5.Text  := FieldByName('pack_unit5_unit').AsString;

      cxCmbFolding1.Text         := FieldByName('folding1').AsString;
      cxCmbFolding2.Text         := FieldByName('folding2').AsString;

      cxCmbPackAcc.Text          := FieldByName('pack_acc').AsString;
      cxsPackAccCore.Value       := FieldByName('pack_acc_core').AsFloat;
      cxsPackAccInner.Value      := FieldByName('pack_acc_inner').AsFloat;
      cxsPackAccThickness.Value  := FieldByName('pack_acc_thickness').AsFloat;
      cxsPackAccLength.Value     := FieldByName('pack_acc_length').AsFloat;
      cxmPackAccNotes.Text       := FieldByName('pack_acc_other').AsString;

      cxtMaterialIO.Text        := FieldByName('material_inout').AsString;
      cxtMaterialLblPB.Text     := FieldByName('material_label_pb').AsString;
      cxtMaterialOuter.Text     := FieldByName('material_outer').AsString;
      cxtMaterialDispenser.Text := FieldByName('material_dispenser').AsString;

      cxtColoursIO.Text        :=  FieldByName('colours_inout').AsString;
      cxtColoursLblPB.Text     :=  FieldByName('colours_label_pb').AsString;
      cxtColoursOuter.Text     :=  FieldByName('colours_outer').AsString;
      cxtColourDispenser.Text  :=  FieldByName('colours_dispenser').AsString;

      cxsGsmIO.Value            :=  FieldByName('u_per_gsm_inout').AsFloat;
      cxsGsmLabelPB.Value       :=  FieldByName('u_per_gsm_label_pb').AsFloat;
      cxsGSMOuter.Value         :=  FieldByName('u_per_gsm_outer').AsFloat;
      cxsGSMDispenser.Value     :=  FieldByName('u_per_gsm_dispenser').AsFloat;

      cxsWidthIO.Value           :=  FieldByName('width_inout').AsFloat;
      cxsWidthLabelPB.Value      :=  FieldByName('width_label_pb').AsFloat;
      cxsWidthOuter.Value        :=  FieldByName('width_outer').AsFloat;
      cxsWidthDispenser.Value    :=  FieldByName('width_dispenser').AsFloat;

      cxsLengthIO.Value          :=  FieldByName('length_inout').AsFloat;
      cxsLengthLabelPB.Value     :=  FieldByName('length_label_pb').AsFloat;
      cxsLengthOuter.Value       :=  FieldByName('length_outer').AsFloat;
      cxsLengthDispenser.Value   :=  FieldByName('length_dispenser').AsFloat;

      cxsPDColoursIO.Value          := FieldByName('printdet_colours_inout').AsFloat;
      cxsPDColoursLabelPB.Value     := FieldByName('printdet_colours_label_pb').AsFloat;
      cxsPDColoursOuter.Value       := FieldByName('printdet_colours_outer').AsFloat;
      cxsPDColoursDispenser.Value   := FieldByName('printdet_colours_dispenser').AsFloat;

      cxsPDSidesIO.Value        := FieldByName('printdet_sides_inout').AsFloat;
      cxsPDSidesLabelPB.Value   := FieldByName('printdet_sides_label_pb').AsFloat;
      cxsPDSidesOuter.Value     := FieldByName('printdet_sides_outer').AsFloat;
      cxsPDSidesDispenser.Value := FieldByName('printdet_sides_dispenser').AsFloat;

      cxsFPMaterialInnerSize.Value      := FieldByName('fp_material_inner').AsFloat;
      cxsFPMaterialOuterSize.Value      := FieldByName('fp_material_outer').AsFloat;
      cxsFPWidthInnerSize.Value         := FieldByName('fp_width_inner').AsFloat;
      cxsFPWidthOuterSize.Value         := FieldByName('fp_width_outer').AsFloat;
      cxsFPLengthInnerSize.Value        := FieldByName('fp_length_inner').AsFloat;
      cxsFPLengthOuterSize.Value        := FieldByName('fp_length_outer').AsFloat;
      cxsFPHeightInnerSize.Value        := FieldByName('fp_height_inner').AsFloat;
      cxsFPHeightOuterSize.Value        := FieldByName('fp_height_outer').AsFloat;
      cxsFPGsm.Value                    := FieldByName('fp_gsm').AsFloat;
      cxsFPLengthColours.Value          := FieldByName('fp_colours').AsFloat;
      cxsFPHeightSides.Value            := FieldByName('fp_sides').AsFloat;

      cxsPalletWidth.Value              := FieldByName('pallet_width').AsFloat;
      cxsPalletLength.Value             := FieldByName('pallet_length').AsFloat;
      cxsPalletHeight.Value             := FieldByName('pallet_height').AsFloat;
      cxsPalletEntry.Value              := FieldByName('pallet_entry').AsFloat;
      cxsPalletRequirement.Value        := FieldByName('pallet_requirement').AsFloat;
      cxmCompilingPackaging.Lines.Text  := FieldByName('compiling_packaging').AsString;

      cxlKonv1.EditValue := FieldByName('sat1').Value;
      cxlKonv2.EditValue := FieldByName('sat2').Value;
      cxlKonv3.EditValue := FieldByName('sat3').Value;
      cxlKonv4.EditValue := FieldByName('sat4').Value;
      cxlKonv5.EditValue := FieldByName('sat5').Value;

      cxsJmlKonv1.Value  := FieldByName('conv1').Value;
      cxsJmlKonv2.Value  := FieldByName('conv2').Value; 
      cxsJmlKonv3.Value  := FieldByName('conv3').Value; 
      cxsJmlKonv4.Value  := FieldByName('conv4').Value;
      cxsJmlKonv5.Value  := FieldByName('conv5').Value;

      cxlIS.EditText := q.FieldByName('no_is').AsString;

      cxs_MS_Out.Value := FieldByName('mt_out').Value;
      cxs_MS_Mid.Value := FieldByName('mt_mid').Value;
      cxs_MS_In.Value  := FieldByName('mt_in').Value;

      cxs_MS_POut.Value := FieldByName('mtp_out').Value;
      cxs_MS_PMid.Value := FieldByName('mtp_mid').Value;
      cxs_MS_PIn.Value := FieldByName('mtp_in').Value;

      cxtKodeFina.Text := FieldByName('fina_kode').AsString;
      cxtNamaFina.Text := FieldByName('fina_nama').AsString;

      {
      z := OpenRS('SELECT * FROM tbl_routing where kode =''%s'' order by no asc',[cxtKode.Text]) ;
      while not z.Eof do begin
        with cxTblRouting.DataController do begin
         i := AppendRecord ;
         Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
         Values[i, cxColRouting.index] := z.FieldByName('routing').AsString;
         Values[i, cxColKodeRouting.Index] := z.FieldByName('kode_brg').AsString;
         Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
         Values[i, cxColMesin.Index] := z.FieldByName('kode_mesin').AsString;
        end;
        z.Next;
      end;
      z.Close;
      }
      
    end;
    q.Close;
    
  end;
end;

procedure TfrmMstBrg_KTG.cxTblBOMFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i,j: Integer;
begin
  inherited;
  try
    i := cxTblBOM.DataController.GetFocusedRecordIndex;
    cxtAlt.Text := cxTblBom.DataController.Values[i, cxColBomKode.Index];

    cxTblaLT.DataController.RecordCount := 0;
    q := OpenRS('SELECT * FROM tbl_alternatif where kode =''%s'' and kode_bahan=''%s''',[cxtKode.Text,cxtAlt.Text]) ;
  while not q.Eof do begin
    with cxTblaLT.DataController do begin
     j := AppendRecord ;
     Values[j, cxColkode.Index] := q.FieldByName('kode_alt').AsString ;
     Values[j, cxColDeskripsi1.Index] := q.FieldByName('kode_alt').AsString ;
    end;
    q.Next;
  end;
  q.Close;
  except
  end;
end;

procedure TfrmMstBrg_KTG.cxTblaLTDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColDeskripsi1.Index then begin
    try
      cxTblaLT.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColKode.Index] :=
        ADataController.Values[ARecordIndex, cxColDeskripsi1.Index];

    finally
      cxTblaLT.EndUpdate;
    end;
  end
end;

end.
