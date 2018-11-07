unit unFrmTmpControlPlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxSpinEdit, cxDropDownEdit,
  cxDBLookupComboBox, cxGridDBTableView, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGrid, cxMemo, ExtCtrls, cxCheckBox, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxTextEdit, StdCtrls, cxGroupBox, ComCtrls, cxPC, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, cxEditRepositoryItems, cxLabel;

type
  TfrmTmpControlPlan = class(TForm)
    cxPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
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
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cxtAksesoris: TcxTextEdit;
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
    cxsBeratAks: TcxSpinEdit;
    cxsPanjangAks: TcxSpinEdit;
    cxsTebalAks: TcxSpinEdit;
    cxsAirHole: TcxSpinEdit;
    cxsLebarAks: TcxSpinEdit;
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
    Panel2: TPanel;
    ScrollBox2: TScrollBox;
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
    Label50: TLabel;
    Label53: TLabel;
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
    cxlSatuan: TcxLookupComboBox;
    cxlSatuanDet: TcxLookupComboBox;
    cxsTSTD: TcxSpinEdit;
    cxsTSMD: TcxSpinEdit;
    cxsTETD: TcxSpinEdit;
    cxsTEMD: TcxSpinEdit;
    cxsTearTD: TcxSpinEdit;
    cxsTearMD: TcxSpinEdit;
    cxsPuncture: TcxSpinEdit;
    cxsOpasitas: TcxSpinEdit;
    cxsDrat: TcxSpinEdit;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblRouting: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColRouting: TcxGridColumn;
    cxColKodeRouting: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    btnSimpanCP: TButton;
    cxTabSheet3: TcxTabSheet;
    zqrBrgRouting: TZQuery;
    dsBrgRouting: TDataSource;
    zUnit: TZQuery;
    ds3: TDataSource;
    zSatuan: TZQuery;
    ds4: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblBOM: TcxGridTableView;
    cxColBomKode: TcxGridColumn;
    cxColBomDesc: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxColBomQty: TcxGridColumn;
    cxColBomSatuan: TcxGridColumn;
    zqrCust: TZQuery;
    dsCust: TDataSource;
    cxTblBOMColumn1: TcxGridColumn;
    Label1: TLabel;
    cxlKelompok: TcxLookupComboBox;
    Label51: TLabel;
    Label54: TLabel;
    cxlSubKelompok: TcxLookupComboBox;
    zqrKelompok: TZQuery;
    dsKelompok: TDataSource;
    cxtKelompok: TcxTextEdit;
    cxtSubKelompok: TcxTextEdit;
    zqrSubKelompok: TZQuery;
    dsSubKelompok: TDataSource;
    cxColPersen: TcxGridColumn;
    cxColMesin: TcxGridColumn;
    zMesin: TZQuery;
    dsMesin: TDataSource;
    zqrUnit: TZQuery;
    dsUnit: TDataSource;
    cxColRoutingBom: TcxGridColumn;
    cxColJenisIsian: TcxGridColumn;
    Label55: TLabel;
    cxtKode2: TcxTextEdit;
    Label56: TLabel;
    cxtDeskripsi2: TcxTextEdit;
    cxColNoBom: TcxGridColumn;
    cxColDesc2: TcxGridColumn;
    cxColBomSatuan2: TcxGridColumn;
    Label57: TLabel;
    cxsThicknessOL: TcxSpinEdit;
    cxsThicknessMiddle: TcxSpinEdit;
    cxsThicknessInner: TcxSpinEdit;
    Label58: TLabel;
    cxlUniKTG: TcxLookupComboBox;
    zqrUnitKTG: TZQuery;
    dsUnitKTG: TDataSource;
    zqrBM: TZReadOnlyQuery;
    dsBM: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGroupBox7: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxTblMatSaran: TcxGridTableView;
    cxCol_MS_Bahan: TcxGridColumn;
    cxCol_MS_KodeBrg: TcxGridColumn;
    cxCol_MS_Deskripsi: TcxGridColumn;
    cxCol_MS_Layer1: TcxGridColumn;
    cxCol_MS_Layer2: TcxGridColumn;
    cxCol_MS_Layer3: TcxGridColumn;
    cxCol_MS_Mono: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
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
    Panel3: TPanel;
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
    cxTabSheet5: TcxTabSheet;
    Label60: TLabel;
    Label61: TLabel;
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
    cxtKode3: TcxTextEdit;
    cxtDeskripsi3: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxsHPP: TcxSpinEdit;
    zqrUnit2: TZReadOnlyQuery;
    dsUnit2: TDataSource;
    zqrBB: TZReadOnlyQuery;
    dsBB: TDataSource;
    btnHitungBerat: TButton;
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
    cxGroupBox10: TcxGroupBox;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxtPolaTreatLuar: TcxTextEdit;
    cxtPolaTreatDalam: TcxTextEdit;
    cxsTreatLuar: TcxSpinEdit;
    cxsTreatDalam: TcxSpinEdit;
    cxLabel65: TcxLabel;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cxLabel110: TcxLabel;
    cxLabel66: TcxLabel;
    cxLabel67: TcxLabel;
    cxsPackQty1: TcxSpinEdit;
    cxCmbPackUnit1: TcxComboBox;
    cxsPackQty2: TcxSpinEdit;
    cxCmbPackUnit2: TcxComboBox;
    cxsPackQty3: TcxSpinEdit;
    cxCmbPackUnit3: TcxComboBox;
    cxsPackQty4: TcxSpinEdit;
    cxCmbPackUnit4: TcxComboBox;
    cxsPackQty5: TcxSpinEdit;
    cxCmbPackunit5: TcxComboBox;
    cxLabel68: TcxLabel;
    cxCmbFolding1: TcxComboBox;
    cxCmbFolding2: TcxComboBox;
    cxLabel69: TcxLabel;
    cxCmbPackAcc: TcxComboBox;
    cxLabel70: TcxLabel;
    cxLabel74: TcxLabel;
    cxsPackAccCore: TcxSpinEdit;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxsPackAccInner: TcxSpinEdit;
    cxsPackAccThickness: TcxSpinEdit;
    cxsPackAccLength: TcxSpinEdit;
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
    cxtColourDispenser: TcxTextEdit;
    cxtColoursOuter: TcxTextEdit;
    cxtColoursLblPB: TcxTextEdit;
    cxtColoursIO: TcxTextEdit;
    cxLabel80: TcxLabel;
    cxLabel81: TcxLabel;
    cxsGsmIO: TcxSpinEdit;
    cxsGsmLabelPB: TcxSpinEdit;
    cxsGSMOuter: TcxSpinEdit;
    cxsGSMDispenser: TcxSpinEdit;
    cxsWidthDispenser: TcxSpinEdit;
    cxsWidthOuter: TcxSpinEdit;
    cxsWidthLabelPB: TcxSpinEdit;
    cxsWidthIO: TcxSpinEdit;
    cxLabel82: TcxLabel;
    cxLabel83: TcxLabel;
    cxsLengthIO: TcxSpinEdit;
    cxsLengthLabelPB: TcxSpinEdit;
    cxsLengthOuter: TcxSpinEdit;
    cxsLengthDispenser: TcxSpinEdit;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxsPDColoursIO: TcxSpinEdit;
    cxsPDColoursLabelPB: TcxSpinEdit;
    cxsPDColoursOuter: TcxSpinEdit;
    cxsPDColoursDispenser: TcxSpinEdit;
    cxLabel86: TcxLabel;
    cxsPDSidesIO: TcxSpinEdit;
    cxsPDSidesLabelPB: TcxSpinEdit;
    cxsPDSidesOuter: TcxSpinEdit;
    cxsPDSidesDispenser: TcxSpinEdit;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    cxLabel98: TcxLabel;
    cxLabel99: TcxLabel;
    cxLabel100: TcxLabel;
    cxLabel104: TcxLabel;
    cxmCompilingPackaging: TcxMemo;
    cxsPalletEntry: TcxSpinEdit;
    cxsPalletWidth: TcxSpinEdit;
    cxLabel101: TcxLabel;
    cxLabel102: TcxLabel;
    cxsPalletLength: TcxSpinEdit;
    cxsPalletRequirement: TcxSpinEdit;
    cxLabel103: TcxLabel;
    cxsPalletHeight: TcxSpinEdit;
    cxsFPHeightSides: TcxSpinEdit;
    cxsFPLengthColours: TcxSpinEdit;
    cxLabel97: TcxLabel;
    cxLabel96: TcxLabel;
    cxLabel95: TcxLabel;
    cxLabel94: TcxLabel;
    cxsFPGsm: TcxSpinEdit;
    cxsFPMaterialOuterSize: TcxSpinEdit;
    cxsFPMaterialInnerSize: TcxSpinEdit;
    cxsFPWidthOuterSize: TcxSpinEdit;
    cxsFPWidthInnerSize: TcxSpinEdit;
    cxsFPLengthOuterSize: TcxSpinEdit;
    cxsFPLengthInnerSize: TcxSpinEdit;
    cxsFPHeightOuterSize: TcxSpinEdit;
    cxsFPHeightInnerSize: TcxSpinEdit;
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
    procedure btnSimpanCPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTblRoutingDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxTblRoutingDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblBOMDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxlKelompokPropertiesChange(Sender: TObject);
    procedure cxlSubKelompokPropertiesChange(Sender: TObject);
    procedure cxlSatuanPropertiesChange(Sender: TObject);
    procedure cxColNoBomGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxPgChange(Sender: TObject);
    procedure cxTblCriticalPointEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxTblCriticalPointStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxTblCriticalPointDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxTblCriticalPoint2DataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxTblMatSaranDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblCriticalPointCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTblCriticalPoint2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxsThicknessOLPropertiesChange(Sender: TObject);
    procedure btnHitungBeratClick(Sender: TObject);
    procedure cxs_MS_OutPropertiesChange(Sender: TObject);
    procedure cxs_MS_TotalPropertiesChange(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxTblMatSaranDataControllerNewRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure cxTblCriticalPoint_22CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTblCriticalPoint_21CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxTblCriticalPoint_22Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxTblCriticalPoint_21Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    
  private
    mJenis: string;
    mNoIS: string;
    mKodeCust: string;
    procedure SimpanMaterialSaran;
    function HitungBeratKotor: real;
    function HitungBeratBersih: Real;
    function BeratPerMeter: real;
  public
    property Jenis: string read mJenis write mJenis;
    property NoIS: string read mNoIS write mNoIS;
    property KodeCust: string read mKodeCust write mKodeCust;
    procedure ShowCP;
    procedure SubmitCP(sKodeBrg: string);
    procedure CopyValue;
  end;

var
  frmTmpControlPlan: TfrmTmpControlPlan;

implementation

uses unTools, unDm;

{$R *.dfm}

procedure TfrmTmpControlPlan.btnSimpanCPClick(Sender: TObject);
var
  f,f_satu: boolean;
  i,j,k: Integer;
  tbl_sa, tbl_brg_det: TZTable;
  q, qSA,z, qd : TZQuery;
  lst, lst2: TStringList;
  sKodeBrg, sFld: string;
begin

  q := OpenRS('SELECT * FROM tbl_barang WHERE no_is = ''%s''',[mNoIS]);
  if not q.IsEmpty then begin
    mJenis := 'edit';
    sKodeBrg := cxtKode.Text;
  end
  else begin
    mJenis := 'tambah';
    cxtKode.text := GetLastFak('draft-cp');
    UpdateFaktur(Copy(cxtKode.Text,1,8));
  end;
  q.Close;

  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Kode Harus Diisi.');
    cxtKode.SetFocus;
  end
  else if Trim(cxlSatuan.Text) = '' then begin
    MsgBox('Unit set harus di isi.');
    cxPg.ActivePageIndex := 1;
    cxlSatuan.SetFocus;
  end
  else if Trim(cxlSatuanDet.Text) = '' then begin
    MsgBox('Detail satuan harus di isi.');
    cxPg.ActivePageIndex := 1;
    cxlSatuanDet.SetFocus;
  end
  else begin

    {
    if Self.Jenis = 'tambah' then begin
      sKodeBrg := GetLastFak('draft-cp');
      UpdateFaktur(Copy(sKodeBrg,1,8));
    end
    else
      sKodeBrg := cxtKode.Text;
    }

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''', [Trim(cxtKode.Text)]);

    f:= True ;
    if mJenis = 'tambah' then begin
    
      if not q.IsEmpty then begin
        MsgBox('Kode Ini Sudah Ada');
        cxtKode.SelectAll ;
        cxtKode.SetFocus ;
        f:= False ;
      end
      else begin
        q.Insert;
        with cxTblrouting.DataController  do begin
          for i := 0 to cxTblRouting.DataController.RowCount -1 do begin
           z := OpenRS('SELECT * FROM tbl_routing where kode =''%s''',
              [cxtKode.Text]) ;
           z.Insert;
           z.FieldByName('no').AsInteger := (i+1);
           z.FieldByName('routing').AsString := Values[i, cxColRouting.Index] ;
           z.FieldByName('kode').AsString := cxtKode.Text;
           z.FieldByName('kode_brg').AsString := Values[i, cxColKodeRouting.Index];
           z.Post;
           z.Close;
          end;
        end;
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

        z := OpenRS('SELECT * FROM tbl_routing where kode =''%s''',
            [cxtKode.Text]) ;
        z.Open;
        with cxTblRouting.DataController  do begin
          for i := 0 to cxTblRouting.DataController.RowCount -1 do begin
            z.Insert;
            z.FieldByName('no').AsInteger := i+1;
            z.FieldByName('routing').AsString := Values[i, cxColRouting.Index] ;
            z.FieldByName('kode').AsString := cxtKode.Text;
            z.FieldByName('kode_brg').AsString := Values[i, cxColKodeRouting.Index];
            z.FieldByName('kode_mesin').Value := Values[i, cxColMesin.Index];
            z.Post;

            // update detail item routing, sama field2nya dengan barang jadi
            qd := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[Values[i, cxColKodeRouting.Index]]);
            qd.Edit;
            qd.FieldByName('berat_bersih').Value := cxsBeratBersih.Value;
            qd.FieldByName('lebar_buka').Value := cxsLebarBuka.Value;
            qd.FieldByName('lebar_jadi').Value := cxsLebarJadi.Value;
            qd.FieldByName('panjang').Value := cxsPanjang.Value;
            qd.Post;
            qd.Close;
            
          end;
        end;
        z.Close;
        
      end;
    end;
  end;

  if f then begin
    with q do begin
      FieldByName('kode').AsString            := cxtKode.Text;
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

      FieldByName('f_aktif').AsInteger := 0;

      FieldByName('f_draft').AsInteger := 1;
      FieldByName('no_is').AsString := mNoIS;

      FieldByName('kelompok').Value := cxlKelompok.EditValue;
      FieldByName('sub_kelompok').Value := cxlSubKelompok.EditValue;

      FieldByName('unit_ktg').AsString := cxlUniKTG.EditValue;

       // Treat & Cylinder
      //FieldByName('b_stok').AsFloat := cxspBufer.EditValue ;
      //FieldByName('lead_time').AsFloat := cxsLead.EditValue ;
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

      // konversi satuan
      FieldByName('conv1').Value := cxsJmlKonv1.Value;
      FieldByName('conv2').Value := cxsJmlKonv2.Value;
      FieldByName('conv3').Value := cxsJmlKonv3.Value;
      FieldByName('conv4').Value := cxsJmlKonv4.Value;
      FieldByName('conv5').Value := cxsJmlKonv5.Value;

      FieldByName('sat1').Value := cxlKonv1.EditValue;
      FieldByName('sat2').Value := cxlKonv2.EditValue;
      FieldByName('sat3').Value := cxlKonv3.EditValue;
      FieldByName('sat4').Value := cxlKonv4.EditValue;
      FieldByName('sat5').Value := cxlKonv5.EditValue;

      FieldByName('mt_out').Value := cxs_MS_Out.Value;
      FieldByName('mt_mid').Value := cxs_MS_Mid.Value;
      FieldByName('mt_in').Value := cxs_MS_In.Value;

      FieldByName('mtp_out').Value := cxs_MS_POut.Value;
      FieldByName('mtp_mid').Value := cxs_MS_PMid.Value;
      FieldByName('mtp_in').Value := cxs_MS_PIn.Value;

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
      // simpan critical point
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

      Post;
      Close;
    end;

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

    SimpanMaterialSaran;

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
        q.Post;
      end;
    end;
    
    q.Close;

    cxTblrouting.DataController.RecordCount := 0;

    dm.zConn.ExecuteDirect('UPDATE tbl_is2 SET f_copy = 1 WHERE no_is = ''' + mNoIS + '''');

    MsgBox('Data Control Plan Sudah Disimpan');
  end;
end;

procedure TfrmTmpControlPlan.FormCreate(Sender: TObject);
var
  q: TZQuery;
  i,j: integer;
  lst: TStringList;
begin
  cxPg.ActivePageIndex := 0;
  zqrBrgRouting.Open;
  zUnit.Open;
  zSatuan.Open;
  zqrCust.Open;
  zqrKelompok.Open;
  zqrSubKelompok.Open;
  zMesin.Open;
  zqrUnitKTG.Open;
  zqrUnit2.Open;
  zqrBB.Open;

  // base material
  q := OpenRS('SELECT base_material FROM tbl_base_material ORDER BY base_material');
  while not q.Eof do begin
    cxCmbBase.Properties.Items.Add(q.FieldByName('base_material').AsString);
    q.Next;
  end;

  ScrollBox1.VertScrollBar.Position := 0;

  lst := TStringList.Create;

  lst.CommaText := '"EXTRUSI","FILM GEL","FILM BLOROK","FILM GALER","FILM NJERUK","MATA IKAN","FILM LENGKET"';

  with cxTblCriticalPoint_21.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxCol_CP_Ket_21.Index] := lst.Strings[j];
    end;
  end;

  lst.CommaText := '"PRINTING","PETAL","PECAH","JEMBRET"';
  
  with cxTblCriticalPoint_22.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxCol_CP_Ket_21.Index] := lst.Strings[j];
    end;
  end;

  Panel3.Caption := '';

  cxEditRepository1ComboBoxItem1.Properties.Items.CommaText :=
    '"Bahan 1","Bahan 2","Bahan 3","Bahan 4","Bahan 5",' +
    '"Bhn. Recy. 1","Bhn. Recy. 2","Bhn. Recy. 3","Bhn. Recy. 4","Bhn. Recy.5",' +
    '"Additive 1","Additive 2","Additive 3","Additive 4","Additive 5",' +
    '"Pewarna 1","Pewarna 2","Pewarna 3","Pewarna 4","Pewarna 5"';
end;

procedure TfrmTmpControlPlan.ShowCP;
var
  i,j,k : Integer;
  q,z,zz,q_is : TZQuery ;
  lst2: TStringList;
  sFld: string;
begin

  q := OpenRS('SELECT * FROM tbl_barang WHERE no_is =''%s''', [mNoIS] );

  with q do begin
    cxtKode.Text := q.FieldByName('kode').AsString;
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

    cxsThicknessOL.Value := FieldByname('tebal_ol').Value;
    cxsThicknessMiddle.Value := FieldByName('tebal_mid').Value;
    cxsThicknessInner.Value := FieldByName('tebal_in').Value;

    cxsTSTD.Value        := FieldByName('std_std').AsFloat;
    cxsTSMD.Value        := FieldByName('std_smd').AsFloat;
    cxsTETD.Value        := FieldByName('std_etd').AsFloat;
    cxsTEMD.Value        := FieldByName('std_emd').AsFloat;
    cxsTearTD.Value      := FieldByName('std_teartd').AsFloat;
    cxsTearMD.Value      := FieldByName('std_tearmd').AsFloat;
    cxsPuncture.Value    := FieldByName('std_resistance').AsFloat;
    cxsDrat.Value        := FieldByName('std_impact').AsFloat;
    cxsOpasitas.Value    := FieldByName('std_opasitas').AsFloat;

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

    cxlUniKTG.EditValue := FieldByName('unit_ktg').AsString;

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

    cxt_td_TebalFilm.Text     :=    FieldByName('td_tebal_film').AsString;
    cxt_td_RepeatFilm.Text    :=    FieldByName('td_repeat_print').AsString;
    cxt_td_BeratJadi.Text     :=    FieldByName('td_berat_jadi').AsString;
    cxt_td_LebarFilm.Text     :=    FieldByName('td_lebar_film').AsString;
    cxt_td_GbrTepiKanan.Text  :=    FieldByName('td_gbr_tepi_kanan').AsString;
    cxt_td_PanjangJadi.Text   :=    FieldByName('td_panjang_jadi').AsString;
    cxt_td_BeratPerMeter.Text :=    FieldByName('td_berat_per_meter').AsString;
    cxt_td_GbrTepiKiri.Text   :=    FieldByName('td_gbr_tepi_kiri').AsString;

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

    cxs_MS_Out.Value := FieldByName('mt_out').Value;
    cxs_MS_Mid.Value := FieldByName('mt_mid').Value;
    cxs_MS_In.Value := FieldByName('mt_in').Value;

    cxs_MS_POut.Value := FieldByName('mtp_out').Value;
    cxs_MS_PMid.Value := FieldByName('mtp_mid').Value;
    cxs_MS_PIn.Value := FieldByName('mtp_in').Value;
  end;

  // copy IS
  {
  q_is := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s'' AND f_copy = 0',[mNoIS]);
  if not q_is.IsEmpty then begin
    cxlUniKTG.EditValue := q_is.FieldByName('unit_ktg').AsString;
    cxsTebal.Value := q_is.FieldByName('thickness_total').Value;
    cxsLebarBuka.Value := q_is.FieldByName('open_width').Value;
    cxsLebarPlong.Value := q_is.FieldByName('cut_out_width').Value;
    cxsPanjangPlong.Value := q_is.FieldByName('cut_out_height').Value;
    cxsTopFlod.Value := q_is.FieldByName('top_fold').Value;
    cxsLebarJadi.Value := q_is.FieldByName('face_width').Value;
  end;
  q_is.Close;
  }

  z := OpenRS('SELECT * FROM tbl_routing where kode =''%s'' order by no asc',[cxtKode.Text]) ;
  while not z.Eof do begin
    with cxTblRouting.DataController do begin
      i := AppendRecord ;
      Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
      Values[i, cxColRouting.index] := z.FieldByName('routing').AsString;
      Values[i, cxColKodeRouting.Index] := z.FieldByName('kode_brg').AsString;
      Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
      Values[i, cxColMesin.Index] := z.FieldByName('kode_mesin').AsString;

      zz := OpenRS('SELECT a.*, b.deskripsi FROM tbl_formula_subdet a ' +
        'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' + 
        'WHERE a.kode = ''%s''',[z.FieldByName('kode_brg').AsString]);
      while not zz.Eof do begin
        with cxTblBOM.DataController do begin
          j := AppendRecord;
          Values[j, cxColRoutingBom.Index] := z.FieldByName('routing').AsString;
          Values[j, cxColBomKode.Index] := zz.FieldByName('kode_brg').AsString;
          Values[j, cxColBomDesc.Index] := zz.FieldByName('deskripsi').AsString;
          Values[j, cxColDesc2.Index] := zz.FieldByName('deskripsi').AsString;
          Values[j, cxColJenisIsian.Index] := zz.FieldByName('jns').Value;
          Values[j, cxColBomQty.Index] := zz.FieldByName('qty').Value;
          Values[j, cxColBomSatuan.Index] := zz.FieldByName('satuan').Value;
          Values[j, cxColBomSatuan2.Index] := zz.FieldByName('satuan').Value;
          Values[j, cxColPersen.Index] := zz.FieldByName('persen').Value;
        end;
        zz.Next;
      end;
      zz.Close;
     
    end;
    z.Next;
  end;
  z.Close;

  // Material yang disarankan
  z := OpenRS('SELECT a.*, b.deskripsi ' +
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
  z.Close;

  try
    z := OpenRS('SELECT * FROM tbl_kelompok WHERE kode = ''%s''',[cxlKelompok.EditValue]);
    cxtKelompok.Text := z.FieldByName('kelompok').AsString;
    z.Close;

    z := OpenRS('SELECT * FROM tbl_sub_kelompok WHERE kode_kelompok = ''%s'' AND kode = ''%s''',
      [cxlKelompok.EditValue, cxlSubKelompok.EditValue]);
    cxtSubKelompok.Text := z.FieldByName('sub_kelompok').AsString;
    z.Close;
  except
  end;

end;

procedure TfrmTmpControlPlan.SubmitCP(sKodeBrg: string);
var
  q: TZQuery;
  sKode, sNamaCust, sKodeHead, sKodeLama, sKodeCust, sNoCP: string;
begin

  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Kode barang harus di isi.');
    cxtKode.SetFocus;
    Abort;
  end;

  q := OpenRS('SELECT a.kelompok, a.sub_kelompok, c.nama, b.kode_customer ' +
    'FROM tbl_barang a ' +
    'LEFT JOIN tbl_is2 b ON b.no_is = a.no_is ' +
    'LEFT JOIN tbl_customer c ON b.kode_customer = c.kode ' +
    'WHERE a.no_is = ''%s''',[mNoIS]);

  if not q.IsEmpty then begin
    sKodeCust := q.FieldByName('kode_customer').AsString;
    
    if q.FieldByName('kelompok').AsString = 'A' then begin
      sNamaCust := q.Fieldbyname('nama').AsString;
      sNamaCust := StringReplace(sNamaCust,' ','',[rfReplaceAll]);

      //sKodeHead := q.FieldByName('kelompok').AsString +
      //  q.FieldByName('sub_kelompok').AsString + '.' +
      //  Copy(sNamaCust,1,3) + '.';

      sKodeHead := q.FieldByName('kelompok').AsString +
        q.FieldByName('sub_kelompok').AsString + '.' +
        sKodeCust + '.';

      sKode := GenerateKode(sKodeHead);
      UpdateFaktur(sKodeHead);

    end;
  end;
  q.Close;

  sNoCP := GetLastFak('cp');
  UpdateFaktur(Copy(sNoCP,1,7));

  q := OpenRS('SELECT * FROM tbl_barang WHERE no_is = ''%s''',[mNoIS]);
  sKodeLama := q.FieldbyName('kode').AsString;
  q.Edit;
  q.FieldByName('kode').AsString := sKode;
  q.FieldByName('f_draft').AsInteger := 0;
  q.FieldByName('f_aktif').AsInteger := 1;
  q.FieldByName('no_cp').AsString := sNoCP;
  q.Post;
  q.Close;

  // update semua bom
  dm.zConn.ExecuteDirect(
    Format('UPDATE tbl_formula_head SET kode_brg = ''%s'' WHERE kode_brg = ''%s''',
      [sKode, sKodeLama])
  );

  dm.zConn.ExecuteDirect(
    Format('UPDATE tbl_formula_det SET kode = ''%s'' WHERE kode = ''%s''',
      [sKode, sKodeLama])
  );

  dm.zConn.ExecuteDirect(
    Format('UPDATE tbl_formula_subdet SET kode = ''%s'' WHERE kode = ''%s''',
      [sKode, sKodeLama])
  );

  dm.zConn.ExecuteDirect('UPDATE tbl_is2 SET f_submit = 1 WHERE no_is = ''' + mNoIS + '''');

  dm.zConn.ExecuteDirect('UPDATE tbl_routing SET kode = ''' + sKodeBrg + ''' WHERE kode = ''' + sKodeLama + '''');

  // update material yang disarankan
  dm.zConn.ExecuteDirect('UPDATE tbl_mat_saran SET kode = ''' + sKodeBrg + ''' WHERE kode = ''' + sKodeLama + '''');

  MsgBox('Control Plan sudah berhasil di Submit dengan kode : ' + sKodeBrg);

  Close;
  
end;

procedure TfrmTmpControlPlan.FormShow(Sender: TObject);
var
  q,z, qis: TZQuery;
  i: Integer;
begin

  q := OpenRS('SELECT * FROM tbl_barang WHERE no_is = ''%s''',[mNoIS]);

  if q.IsEmpty then begin
    mJenis := 'tambah';
    cxtKode.Text := GetLastFak('draft-cp');

    qis := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s''',[mNoIS]);
    cxtDeskripsi.Text := qis.FieldByname('desc_of_bags').AsString;
    cxlCustomer.EditValue := qis.FieldByName('kode_customer').AsString;
    cxtFungsi.Text := qis.FieldByName('func_of_bags').AsString;

    cxlUniKTG.EditValue := qis.FieldByName('unit_ktg').Value;
    cxsTebal.Value := qis.FieldByName('thickness_total').Value;
    cxsLebarBuka.Value := qis.FieldByName('open_width').Value;
    cxsLebarPlong.Value := qis.FieldByName('cut_out_width').Value;
    cxsPanjangPlong.Value := qis.FieldByName('cut_out_height').Value;
    cxsTopFlod.Value := qis.FieldByName('top_fold').Value;
    cxsLebarJadi.Value := qis.FieldByName('face_width').Value;
    cxCmbBase.Text := qis.FieldByName('bm_bag').Value;

    //Aksesoris
    cxsPackQty1.Value    := qis.FieldByName('pack_unit1_qty').AsFloat;
      cxsPackQty2.Value    := qis.FieldByName('pack_unit2_qty').AsFloat;
      cxsPackQty3.Value    := qis.FieldByName('pack_unit3_qty').AsFloat;
      cxsPackQty4.Value    := qis.FieldByName('pack_unit4_qty').AsFloat;
      cxsPackQty5.Value    := qis.FieldByName('pack_unit5_qty').AsFloat;
      cxCmbPackUnit1.Text  := qis.FieldByName('pack_unit1_unit').AsString;
      cxCmbPackUnit2.Text  := qis.FieldByName('pack_unit2_unit').AsString;
      cxCmbPackUnit3.Text  := qis.FieldByName('pack_unit3_unit').AsString;
      cxCmbPackUnit4.Text  := qis.FieldByName('pack_unit4_unit').AsString;
      cxCmbPackUnit5.Text  := qis.FieldByName('pack_unit5_unit').AsString;

      cxCmbFolding1.Text         := qis.FieldByName('folding1').AsString;
      cxCmbFolding2.Text         := qis.FieldByName('folding2').AsString;

      cxCmbPackAcc.Text          := qis.FieldByName('pack_acc').AsString;
      cxsPackAccCore.Value       := qis.FieldByName('pack_acc_core').AsFloat;
      cxsPackAccInner.Value      := qis.FieldByName('pack_acc_inner').AsFloat;
      cxsPackAccThickness.Value  := qis.FieldByName('pack_acc_thickness').AsFloat;
      cxsPackAccLength.Value     := qis.FieldByName('pack_acc_length').AsFloat;
      cxmPackAccNotes.Text       := qis.FieldByName('pack_acc_other').AsString;

      cxtMaterialIO.Text        := qis.FieldByName('material_inout').AsString;
      cxtMaterialLblPB.Text     := qis.FieldByName('material_label_pb').AsString;
      cxtMaterialOuter.Text     := qis.FieldByName('material_outer').AsString;
      cxtMaterialDispenser.Text := qis.FieldByName('material_dispenser').AsString;

      cxtColoursIO.Text        :=  qis.FieldByName('colours_inout').AsString;
      cxtColoursLblPB.Text     :=  qis.FieldByName('colours_label_pb').AsString;
      cxtColoursOuter.Text     :=  qis.FieldByName('colours_outer').AsString;
      cxtColourDispenser.Text  :=  qis.FieldByName('colours_dispenser').AsString;

      cxsGsmIO.Value            :=  qis.FieldByName('u_per_gsm_inout').AsFloat;
      cxsGsmLabelPB.Value       :=  qis.FieldByName('u_per_gsm_label_pb').AsFloat;
      cxsGSMOuter.Value         :=  qis.FieldByName('u_per_gsm_outer').AsFloat;
      cxsGSMDispenser.Value     :=  qis.FieldByName('u_per_gsm_dispenser').AsFloat;

      cxsWidthIO.Value           :=  qis.FieldByName('width_inout').AsFloat;
      cxsWidthLabelPB.Value      :=  qis.FieldByName('width_label_pb').AsFloat;
      cxsWidthOuter.Value        :=  qis.FieldByName('width_outer').AsFloat;
      cxsWidthDispenser.Value    :=  qis.FieldByName('width_dispenser').AsFloat;

      cxsLengthIO.Value          :=  qis.FieldByName('length_inout').AsFloat;
      cxsLengthLabelPB.Value     :=  qis.FieldByName('length_label_pb').AsFloat;
      cxsLengthOuter.Value       :=  qis.FieldByName('length_outer').AsFloat;
      cxsLengthDispenser.Value   :=  qis.FieldByName('length_dispenser').AsFloat;

      cxsPDColoursIO.Value          := qis.FieldByName('printdet_colours_inout').AsFloat;
      cxsPDColoursLabelPB.Value     := qis.FieldByName('printdet_colours_label_pb').AsFloat;
      cxsPDColoursOuter.Value       := qis.FieldByName('printdet_colours_outer').AsFloat;
      cxsPDColoursDispenser.Value   := qis.FieldByName('printdet_colours_dispenser').AsFloat;

      cxsPDSidesIO.Value        := qis.FieldByName('printdet_sides_inout').AsFloat;
      cxsPDSidesLabelPB.Value   := qis.FieldByName('printdet_sides_label_pb').AsFloat;
      cxsPDSidesOuter.Value     := qis.FieldByName('printdet_sides_outer').AsFloat;
      cxsPDSidesDispenser.Value := qis.FieldByName('printdet_sides_dispenser').AsFloat;

      cxsFPMaterialInnerSize.Value      := qis.FieldByName('fp_material_inner').AsFloat;
      cxsFPMaterialOuterSize.Value      := qis.FieldByName('fp_material_outer').AsFloat;
      cxsFPWidthInnerSize.Value         := qis.FieldByName('fp_width_inner').AsFloat;
      cxsFPWidthOuterSize.Value         := qis.FieldByName('fp_width_outer').AsFloat;
      cxsFPLengthInnerSize.Value        := qis.FieldByName('fp_length_inner').AsFloat;
      cxsFPLengthOuterSize.Value        := qis.FieldByName('fp_length_outer').AsFloat;
      cxsFPHeightInnerSize.Value        := qis.FieldByName('fp_height_inner').AsFloat;
      cxsFPHeightOuterSize.Value        := qis.FieldByName('fp_height_outer').AsFloat;
      cxsFPGsm.Value                    := qis.FieldByName('fp_gsm').AsFloat;
      cxsFPLengthColours.Value          := qis.FieldByName('fp_colours').AsFloat;
      cxsFPHeightSides.Value            := qis.FieldByName('fp_sides').AsFloat;

      cxsPalletWidth.Value              := qis.FieldByName('pallet_width').AsFloat;
      cxsPalletLength.Value             := qis.FieldByName('pallet_length').AsFloat;
      cxsPalletHeight.Value             := qis.FieldByName('pallet_height').AsFloat;
      cxsPalletEntry.Value              := qis.FieldByName('pallet_entry').AsFloat;
      cxsPalletRequirement.Value        := qis.FieldByName('pallet_requirement').AsFloat;
      cxmCompilingPackaging.Lines.Text  := qis.FieldByName('compiling_packaging').AsString;
    
    qis.Close;
  end
  else begin
    mJenis := 'edit';
    cxtKode.text := q.FieldByName('kode').AsString;
  end;
  q.Close;

  if mJenis = 'edit' then begin

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

      // Treat & Cylinder
    //cxspBufer.EditValue       := FieldByName('b_stok').AsFloat;
    //cxsLead.EditValue         := FieldByName('lead_time').AsFloat;
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

    end;

    {
    z := OpenRS('SELECT * FROM tbl_routing where kode =''%s'' order by no asc',[cxtKode.Text]) ;
    while not z.Eof do begin
      with cxTblRouting.DataController do begin
       i := AppendRecord ;
       Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
       Values[i, cxColRouting.index] := z.FieldByName('routing').AsString;
       Values[i, cxColKodeRouting.Index] := z.FieldByName('kode_brg').AsString;
       Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
      end;
      z.Next;
    end;
    z.Close;

    z := OpenRS('SELECT a.*, b.deskripsi FROM tbl_formula_subdet a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.kode = ''%s''',[cxtKode.text]);
    while not z.Eof do begin
      with cxTblBOM.DataController do begin
        i := AppendRecord;
        Values[i, cxColBomKode.Index] := z.FieldBYName('kode_brg').AsString;
        Values[i, cxColBomDesc.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColBomQty.Index] := z.FieldByname('qty').AsFloat;
        Values[i, cxColBomSatuan.Index] := z.FieldByname('satuan').AsString;
        Values[i, cxColPersen.Index] := z.FieldByName('persen').AsFloat;
      end;
      z.Next;
    end;
    z.Close;
    }
    
  end;
  
end;

procedure TfrmTmpControlPlan.cxTblRoutingDataControllerBeforePost(
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

procedure TfrmTmpControlPlan.cxTblRoutingDataControllerRecordChanged(
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

procedure TfrmTmpControlPlan.cxTblBOMDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  {
  if AItemIndex = cxColBOMDesc.Index then begin
    try
      cxTblBOM.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColBomKode.Index] :=
        ADataController.Values[ARecordIndex, cxColBomDesc.Index];
    finally
      cxTblBOM.EndUpdate;
    end;
  end;
  }
end;

procedure TfrmTmpControlPlan.cxlKelompokPropertiesChange(Sender: TObject);
begin
  cxtKelompok.Text := zqrKelompok.FieldByName('kelompok').AsString;
  zqrSubKelompok.Close;
  zqrSubKelompok.ParamByName('kode_kelompok').AsString := zqrKelompok.FieldByName('kode').AsString;
  zqrSubKelompok.Open;
end;

procedure TfrmTmpControlPlan.cxlSubKelompokPropertiesChange(
  Sender: TObject);
begin
  cxtSubKelompok.Text := zqrSubKelompok.FieldByName('sub_kelompok').AsString;
end;

procedure TfrmTmpControlPlan.cxlSatuanPropertiesChange(Sender: TObject);
begin

  with zSatuan do begin
    Close;
    ParamByName('unitset').AsString := cxlSatuan.EditValue;
    Open; 
  end;
  
end;

procedure TfrmTmpControlPlan.cxColNoBomGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmTmpControlPlan.CopyValue;
var
  q_is: TZQuery;
begin
  // copy IS
  q_is := OpenRS('SELECT * FROM tbl_is2 WHERE no_is = ''%s'' AND f_copy = 0',[mNoIS]);
  if not q_is.IsEmpty then begin
    cxlUniKTG.EditValue := q_is.FieldByName('unit_ktg').Value;
    cxsTebal.Value := q_is.FieldByName('thickness_total').Value;
    cxsLebarBuka.Value := q_is.FieldByName('open_width').Value;
    cxsLebarPlong.Value := q_is.FieldByName('cut_out_width').Value;
    cxsPanjangPlong.Value := q_is.FieldByName('cut_out_height').Value;
    cxsTopFlod.Value := q_is.FieldByName('top_fold').Value;
    cxsLebarJadi.Value := q_is.FieldByName('face_width').Value;
    cxCmbBase.Text := q_is.FieldByName('bm_bag').Value;
  end;
  q_is.Close;
end;

procedure TfrmTmpControlPlan.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmTmpControlPlan.cxPgChange(Sender: TObject);
begin
  if cxPg.ActivePageIndex = 2 then begin
    cxtKode2.Text := cxtKode.Text;
    cxtDeskripsi2.Text := cxtDeskripsi.Text;
  end
  else if cxPg.ActivePageIndex = 3 then begin
    cxtKode3.Text := cxtKode.Text;
    cxtDeskripsi3.Text := cxtDeskripsi.Text;
    cxtSatDasar.Text := cxlSatuanDet.EditValue;
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPointEditing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  i: Integer;
begin
  i := cxTblCriticalPoint.DataController.GetFocusedRecordIndex;
  if i = 0 then AAllow := False;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPointStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Index = 0 then begin
    AStyle := cxStyle1;
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPointDataControllerBeforePost(
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

procedure TfrmTmpControlPlan.cxTblCriticalPoint2DataControllerBeforePost(
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

procedure TfrmTmpControlPlan.cxTblMatSaranDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin

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

procedure TfrmTmpControlPlan.SimpanMaterialSaran;
var
  i: Integer;
  q: TZQuery;
begin
  with cxTblMatSaran.DataController do begin
    dm.zConn.ExecuteDirect('DELETE FROM tbl_mat_saran WHERE kode = ''' + cxtKode.Text + '''');

    q := OpenRS('SELECT * FROM tbl_mat_saran WHERE kode = ''%s''',[cxtKode.text]);

    for i := 0 to RecordCount - 1 do begin
      q.Insert;
      q.FieldByName('kode').AsString := cxtKode.Text;
      q.FieldByName('bahan').Value := Values[i, cxCol_MS_Bahan.Index];
      q.FieldByname('kode_brg').Value := Values[i, cxCol_MS_KodeBrg.Index];
      q.FieldByName('layer1').Value := Values[i, cxCol_MS_Layer1.Index];
      q.FieldByName('layer2').Value := Values[i, cxCol_MS_Layer3.Index];
      q.FieldByName('layer3').Value := Values[i, cxCol_MS_Layer3.Index];
      q.FieldByName('mono').Value := Values[i, cxCol_MS_Mono.Index];
      q.Post;
    end;
    q.Close;
    
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPointCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPoint2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfrmTmpControlPlan.cxsThicknessOLPropertiesChange(
  Sender: TObject);
begin
  try
    cxsTebal.Value :=
      cxsThicknessOL.Value +
      cxsThicknessMiddle.Value +
      cxsThicknessInner.Value;
  except
  end;
end;

function TfrmTmpControlPlan.HitungBeratKotor: real;
var
  q: TZQuery;
  konstanta: real;
begin
  // ambil konstanta
  try
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxCmbBase.Text]);
    konstanta := q.FieldByname('std').AsFloat;
    q.Close;
    Result := konstanta * (cxsTebal.Value / 10000) * cxsLebarBuka.Value * cxsPanjang.Value;
  finally
    //Result := 0;
  end;
end;

function TfrmTmpControlPlan.HitungBeratBersih: Real;
var
  persen_plong: real;
begin
  try
    persen_plong := (cxsPanjangPlong.Value * cxsLebarPlong.Value) / (cxsLebarBuka.Value * cxsPanjang.Value);
    Result := cxsBeratKotor.Value - (persen_plong * cxsBeratKotor.Value); // + Berat_Handle
  finally
    //Result := 0;
  end;
end;

function TfrmTmpControlPlan.BeratPerMeter: real;
var
  q: TZQuery;
  konstanta: real;
begin
  // ambil konstanta
  try
    q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxCmbBase.Text]);
    konstanta := q.FieldByname('std').AsFloat;
    q.Close;
    Result := konstanta * (cxsTebal.Value / 10000) * cxsLebarTube.Value * 100;
  finally
    //Result := 0;
  end;
end;

procedure TfrmTmpControlPlan.btnHitungBeratClick(Sender: TObject);
begin
  cxsBeratKotor.Value := HitungBeratKotor;
  cxsBeratBersih.Value := HitungBeratBersih;
  cxsBeratMeter.Value :=  BeratPerMeter;
end;

procedure TfrmTmpControlPlan.cxs_MS_OutPropertiesChange(Sender: TObject);

begin
  try
    cxs_MS_Total.Value := cxs_MS_Out.Value +
      cxs_MS_Mid.Value +
      cxs_MS_In.Value;

    cxs_MS_POut.Value := cxs_MS_Out.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PMid.Value := cxs_MS_Mid.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PIn.Value := cxs_MS_In.Value / cxs_MS_Total.Value * 100;
  except
  end;
end;

procedure TfrmTmpControlPlan.cxs_MS_TotalPropertiesChange(Sender: TObject);
begin
  try
    cxs_MS_Total.Value := cxs_MS_Out.Value +
      cxs_MS_Mid.Value +
      cxs_MS_In.Value;
  except
  end;
end;

procedure TfrmTmpControlPlan.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  MousePos := ScreenToClient(MousePos);
  If (MousePos.X > ScrollBox1.Left) and
    (MousePos.Y > ScrollBox1.Top) and
    (MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
    (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height) then
    ScrollBox1.Perform(WM_VSCROLL,1,0);
end;

procedure TfrmTmpControlPlan.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  MousePos := ScreenToClient(MousePos);
  If
    (MousePos.X > ScrollBox1.Left) and
    (MousePos.Y > ScrollBox1.Top) and
    (MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
    (MousePos.Y < ScrollBox1.Top + ScrollBox1.Height)
  then
    ScrollBox1.Perform(WM_VSCROLL,0,0);
end;

procedure TfrmTmpControlPlan.cxTblMatSaranDataControllerNewRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
  with ADataController do begin
    Values[ARecordIndex, cxCol_MS_Layer1.Index] := 0;
    Values[ARecordIndex, cxCol_MS_Layer2.Index] := 0;
    Values[ARecordIndex, cxCol_MS_Layer3.Index] := 0;
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPoint_22CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPoint_21CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if AViewInfo.GridRecord.Index = 0 then begin
    ACanvas.Brush.Color := clBlack;
    ACanvas.Font.Color := clWhite;
  end;
end;

procedure TfrmTmpControlPlan.cxTblCriticalPoint_22Editing(
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

procedure TfrmTmpControlPlan.cxTblCriticalPoint_21Editing(
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

end.
