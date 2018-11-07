unit unFrmSettingDefaultAkun;

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
  cxData, cxDataStorage, DB, cxDBData, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmSettingDefaultAkun = class(TfrmTplMaster)
    btnSimpan2: TButton;
    btnKeluar2: TButton;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    nxGrd: TNextGrid;
    nxColJenisTrs: TNxTextColumn;
    nxColDK: TNxTextColumn;
    nxColCmbAkun: TNxComboBoxColumn;
    nxColAkun: TNxComboBoxColumn;
    ScrollBox1: TScrollBox;
    cxLabel1: TcxLabel;
    cxl1: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxt1: TcxTextEdit;
    cxt2: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxt3: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxt4: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxt6: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxt7: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxt8: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxt5: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxt9: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxt10: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxt11: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxt12: TcxTextEdit;
    Panel1: TPanel;
    cxLabel17: TcxLabel;
    cxt13: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxt14: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxt15: TcxTextEdit;
    zqrCoa: TZQuery;
    dsCoa: TDataSource;
    cxl2: TcxLookupComboBox;
    cxl3: TcxLookupComboBox;
    cxl4: TcxLookupComboBox;
    cxl5: TcxLookupComboBox;
    cxl6: TcxLookupComboBox;
    cxl8: TcxLookupComboBox;
    cxl9: TcxLookupComboBox;
    cxl10: TcxLookupComboBox;
    cxl11: TcxLookupComboBox;
    cxl7: TcxLookupComboBox;
    cxl12: TcxLookupComboBox;
    cxl13: TcxLookupComboBox;
    cxl14: TcxLookupComboBox;
    cxl15: TcxLookupComboBox;
    TabSheet5: TTabSheet;
    ScrollBox2: TScrollBox;
    Panel2: TPanel;
    cxl2_1: TcxLookupComboBox;
    cxLabel21: TcxLabel;
    cxt2_1: TcxTextEdit;
    cxt2_2: TcxTextEdit;
    cxLabel23: TcxLabel;
    cxl2_2: TcxLookupComboBox;
    cxLabel25: TcxLabel;
    TabSheet6: TTabSheet;
    ScrollBox3: TScrollBox;
    Panel3: TPanel;
    cxl3_1: TcxLookupComboBox;
    cxLabel22: TcxLabel;
    cxt3_1: TcxTextEdit;
    cxt3_2: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxl3_2: TcxLookupComboBox;
    cxLabel26: TcxLabel;
    btnCari: TButton;
    btnCari2: TButton;
    Button1: TButton;
    Button2: TButton;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxl2_3: TcxLookupComboBox;
    cxt2_3: TcxTextEdit;
    cxLabel33: TcxLabel;
    cxl2_4: TcxLookupComboBox;
    cxt2_4: TcxTextEdit;
    Button6: TButton;
    Button7: TButton;
    cxLabel28: TcxLabel;
    cxLabel27: TcxLabel;
    cxl2_5: TcxLookupComboBox;
    cxt2_5: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxl2_6: TcxLookupComboBox;
    cxt2_6: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxl2_7: TcxLookupComboBox;
    cxt2_7: TcxTextEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cxLabel34: TcxLabel;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxl16: TcxLookupComboBox;
    cxt16: TcxTextEdit;
    cxl17: TcxLookupComboBox;
    cxt17: TcxTextEdit;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    TabSheet7: TTabSheet;
    ScrollBox4: TScrollBox;
    Panel4: TPanel;
    cxl4_1: TcxLookupComboBox;
    cxLabel35: TcxLabel;
    cxt4_1: TcxTextEdit;
    cxt4_2: TcxTextEdit;
    cxLabel38: TcxLabel;
    cxl4_2: TcxLookupComboBox;
    cxLabel39: TcxLabel;
    Button25: TButton;
    Button26: TButton;
    cxl3_3: TcxLookupComboBox;
    cxLabel40: TcxLabel;
    cxt3_3: TcxTextEdit;
    cxt3_4: TcxTextEdit;
    cxLabel41: TcxLabel;
    cxl3_4: TcxLookupComboBox;
    cxLabel42: TcxLabel;
    Button27: TButton;
    Button28: TButton;
    cxLabel43: TcxLabel;
    cxl2_8: TcxLookupComboBox;
    cxLabel44: TcxLabel;
    cxt2_8: TcxTextEdit;
    cxt2_9: TcxTextEdit;
    cxLabel45: TcxLabel;
    cxl2_9: TcxLookupComboBox;
    cxLabel46: TcxLabel;
    Button29: TButton;
    Button30: TButton;
    cxLabel47: TcxLabel;
    cxl18: TcxLookupComboBox;
    cxt18: TcxTextEdit;
    Button31: TButton;
    cxLabel48: TcxLabel;
    cxl19: TcxLookupComboBox;
    cxt19: TcxTextEdit;
    Button32: TButton;
    cxLabel49: TcxLabel;
    cxl20: TcxLookupComboBox;
    cxt20: TcxTextEdit;
    Button33: TButton;
    TabSheet8: TTabSheet;
    ScrollBox5: TScrollBox;
    Panel5: TPanel;
    cxl5_1: TcxLookupComboBox;
    cxLabel50: TcxLabel;
    cxt5_1: TcxTextEdit;
    cxt5_2: TcxTextEdit;
    cxLabel51: TcxLabel;
    cxl5_2: TcxLookupComboBox;
    cxLabel52: TcxLabel;
    Button34: TButton;
    Button35: TButton;
    TabSheet9: TTabSheet;
    ScrollBox6: TScrollBox;
    Panel6: TPanel;
    cxl6_1: TcxLookupComboBox;
    cxLabel53: TcxLabel;
    cxt6_1: TcxTextEdit;
    cxt6_2: TcxTextEdit;
    cxLabel54: TcxLabel;
    cxl6_2: TcxLookupComboBox;
    cxLabel55: TcxLabel;
    Button36: TButton;
    Button37: TButton;
    cxl6_3: TcxLookupComboBox;
    cxLabel56: TcxLabel;
    cxt6_3: TcxTextEdit;
    cxt6_4: TcxTextEdit;
    cxLabel57: TcxLabel;
    cxl6_4: TcxLookupComboBox;
    cxLabel58: TcxLabel;
    Button38: TButton;
    Button39: TButton;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxl4_3: TcxLookupComboBox;
    cxt4_3: TcxTextEdit;
    Button40: TButton;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    cxl5_3: TcxLookupComboBox;
    cxt5_3: TcxTextEdit;
    Button41: TButton;
    Button42: TButton;
    cxt5_4: TcxTextEdit;
    cxl5_4: TcxLookupComboBox;
    cxLabel63: TcxLabel;
    cxLabel64: TcxLabel;
    cxLabel65: TcxLabel;
    cxLabel66: TcxLabel;
    cxl6_5: TcxLookupComboBox;
    cxl6_6: TcxLookupComboBox;
    cxt6_6: TcxTextEdit;
    cxt6_5: TcxTextEdit;
    Button43: TButton;
    Button44: TButton;
    TabSheet10: TTabSheet;
    ScrollBox7: TScrollBox;
    Panel7: TPanel;
    cxl7_1: TcxLookupComboBox;
    cxLabel70: TcxLabel;
    cxt7_1: TcxTextEdit;
    cxt7_2: TcxTextEdit;
    cxLabel71: TcxLabel;
    cxl7_2: TcxLookupComboBox;
    cxLabel72: TcxLabel;
    Button47: TButton;
    cxLabel73: TcxLabel;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxl7_3: TcxLookupComboBox;
    cxl7_4: TcxLookupComboBox;
    cxt7_4: TcxTextEdit;
    cxt7_3: TcxTextEdit;
    Button49: TButton;
    Button50: TButton;
    Button48: TButton;
    cxLabel78: TcxLabel;
    cxl2_10: TcxLookupComboBox;
    cxt2_10: TcxTextEdit;
    Button52: TButton;
    cxLabel79: TcxLabel;
    cxLabel80: TcxLabel;
    cxl21: TcxLookupComboBox;
    cxt21: TcxTextEdit;
    Button53: TButton;
    Panel8: TPanel;
    TabSheet11: TTabSheet;
    ScrollBox8: TScrollBox;
    Panel9: TPanel;
    cxl8_1: TcxLookupComboBox;
    cxLabel84: TcxLabel;
    cxt8_1: TcxTextEdit;
    Button56: TButton;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    cxLabel83: TcxLabel;
    cxl8_3: TcxLookupComboBox;
    cxt8_3: TcxTextEdit;
    Button54: TButton;
    cxLabel85: TcxLabel;
    cxl8_4: TcxLookupComboBox;
    cxt8_4: TcxTextEdit;
    Button55: TButton;
    cxLabel87: TcxLabel;
    cxLabel88: TcxLabel;
    cxLabel89: TcxLabel;
    cxl8_10: TcxLookupComboBox;
    cxt8_10: TcxTextEdit;
    Button58: TButton;
    cxLabel90: TcxLabel;
    cxl8_11: TcxLookupComboBox;
    cxt8_11: TcxTextEdit;
    Button59: TButton;
    cxLabel91: TcxLabel;
    cxl8_12: TcxLookupComboBox;
    cxt8_12: TcxTextEdit;
    Button60: TButton;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    cxl8_13: TcxLookupComboBox;
    cxt8_13: TcxTextEdit;
    Button61: TButton;
    cxLabel94: TcxLabel;
    cxl8_14: TcxLookupComboBox;
    cxt8_14: TcxTextEdit;
    Button62: TButton;
    cxLabel95: TcxLabel;
    cxl8_15: TcxLookupComboBox;
    cxt8_15: TcxTextEdit;
    Button63: TButton;
    cxLabel96: TcxLabel;
    cxl8_16: TcxLookupComboBox;
    cxt8_16: TcxTextEdit;
    Button64: TButton;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxl8_9: TcxLookupComboBox;
    cxt8_9: TcxTextEdit;
    Button65: TButton;
    cxLabel100: TcxLabel;
    cxl8_2: TcxLookupComboBox;
    cxt8_2: TcxTextEdit;
    Button67: TButton;
    cxLabel86: TcxLabel;
    cxLabel99: TcxLabel;
    cxl8_5: TcxLookupComboBox;
    cxt8_5: TcxTextEdit;
    Button57: TButton;
    cxLabel101: TcxLabel;
    cxl8_6: TcxLookupComboBox;
    cxt8_6: TcxTextEdit;
    Button66: TButton;
    cxLabel102: TcxLabel;
    cxLabel103: TcxLabel;
    cxLabel104: TcxLabel;
    cxl8_7: TcxLookupComboBox;
    cxl8_8: TcxLookupComboBox;
    cxt8_8: TcxTextEdit;
    cxt8_7: TcxTextEdit;
    Button68: TButton;
    Button69: TButton;
    TabSheet12: TTabSheet;
    ScrollBox9: TScrollBox;
    Panel10: TPanel;
    cxTbl: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrAkunPersediaan: TZQuery;
    dsAkunPersediaan: TDataSource;
    cxColNama: TcxGridDBColumn;
    cxTblakun_persediaan: TcxGridDBColumn;
    cxTblakun_penjualan: TcxGridDBColumn;
    cxTblakun_retur_penjualan: TcxGridDBColumn;
    cxTblakun_diskon_penjualan: TcxGridDBColumn;
    cxTblaku_barang_terkirim: TcxGridDBColumn;
    cxTblakun_hpp: TcxGridDBColumn;
    cxTblakun_retur_pembelian: TcxGridDBColumn;
    cxTblakun_blm_tertagih: TcxGridDBColumn;
    Button45: TButton;
    GroupBox1: TGroupBox;
    cxLabel67: TcxLabel;
    cxtNamaTpl: TcxTextEdit;
    cxLabel68: TcxLabel;
    cxtAkun1: TcxTextEdit;
    cxLabel69: TcxLabel;
    cxtAkun2: TcxTextEdit;
    cxLabel105: TcxLabel;
    cxtAkun3: TcxTextEdit;
    cxLabel106: TcxLabel;
    cxtAkun4: TcxTextEdit;
    cxLabel107: TcxLabel;
    cxtAkun5: TcxTextEdit;
    cxLabel108: TcxLabel;
    cxtAkun6: TcxTextEdit;
    cxLabel109: TcxLabel;
    cxtAkun7: TcxTextEdit;
    cxLabel110: TcxLabel;
    cxtAkun8: TcxTextEdit;
    cxlAkun1: TcxLookupComboBox;
    cxlAkun2: TcxLookupComboBox;
    cxlAkun3: TcxLookupComboBox;
    cxlAkun4: TcxLookupComboBox;
    cxlAkun5: TcxLookupComboBox;
    cxlAkun6: TcxLookupComboBox;
    cxlAkun7: TcxLookupComboBox;
    cxlAkun8: TcxLookupComboBox;
    btnSimpanTpl: TButton;
    cxtJenis: TcxTextEdit;
    Button46: TButton;
    cxLabel76: TcxLabel;
    cxLabel77: TcxLabel;
    cxLabel111: TcxLabel;
    cxl7_6: TcxLookupComboBox;
    cxl7_7: TcxLookupComboBox;
    cxt7_7: TcxTextEdit;
    cxt7_6: TcxTextEdit;
    Button51: TButton;
    Button70: TButton;
    cxLabel112: TcxLabel;
    cxl7_5: TcxLookupComboBox;
    cxt7_5: TcxTextEdit;
    Button71: TButton;
    cxLabel113: TcxLabel;
    cxl7_8: TcxLookupComboBox;
    cxt7_8: TcxTextEdit;
    Button72: TButton;
    TabSheet13: TTabSheet;
    ScrollBox10: TScrollBox;
    Panel11: TPanel;
    cxl10_1: TcxLookupComboBox;
    cxLabel114: TcxLabel;
    cxt10_1: TcxTextEdit;
    cxt10_2: TcxTextEdit;
    cxLabel115: TcxLabel;
    cxl10_2: TcxLookupComboBox;
    cxLabel116: TcxLabel;
    Button73: TButton;
    cxLabel117: TcxLabel;
    cxLabel118: TcxLabel;
    cxl10_3: TcxLookupComboBox;
    cxt10_3: TcxTextEdit;
    Button74: TButton;
    Button76: TButton;
    cxLabel120: TcxLabel;
    cxLabel121: TcxLabel;
    cxl10_5: TcxLookupComboBox;
    cxt10_5: TcxTextEdit;
    Button77: TButton;
    cxLabel123: TcxLabel;
    cxl10_4: TcxLookupComboBox;
    cxt10_4: TcxTextEdit;
    Button79: TButton;
    cxLabel124: TcxLabel;
    cxl10_6: TcxLookupComboBox;
    cxt10_6: TcxTextEdit;
    Button80: TButton;
    cxLabel119: TcxLabel;
    cxLabel122: TcxLabel;
    cxl10_7: TcxLookupComboBox;
    cxt10_7: TcxTextEdit;
    Button75: TButton;
    Button78: TButton;
    cxt10_8: TcxTextEdit;
    cxl10_8: TcxLookupComboBox;
    cxLabel125: TcxLabel;
    TabSheet14: TTabSheet;
    ScrollBox11: TScrollBox;
    Panel12: TPanel;
    cxl11_1: TcxLookupComboBox;
    cxLabel126: TcxLabel;
    cxt11_1: TcxTextEdit;
    cxt11_2: TcxTextEdit;
    cxLabel127: TcxLabel;
    cxl11_2: TcxLookupComboBox;
    cxLabel128: TcxLabel;
    Button81: TButton;
    cxLabel129: TcxLabel;
    cxLabel130: TcxLabel;
    cxLabel131: TcxLabel;
    cxl11_3: TcxLookupComboBox;
    cxl11_4: TcxLookupComboBox;
    cxt11_4: TcxTextEdit;
    cxt11_3: TcxTextEdit;
    Button82: TButton;
    Button83: TButton;
    Button84: TButton;
    cxLabel135: TcxLabel;
    cxl11_5: TcxLookupComboBox;
    cxt11_5: TcxTextEdit;
    Button87: TButton;
    cxLabel132: TcxLabel;
    cxLabel133: TcxLabel;
    cxLabel134: TcxLabel;
    cxl10_9: TcxLookupComboBox;
    cxl10_10: TcxLookupComboBox;
    cxt10_9: TcxTextEdit;
    cxt10_10: TcxTextEdit;
    Button85: TButton;
    Button86: TButton;
    cxLabel136: TcxLabel;
    cxLabel137: TcxLabel;
    cxl10_11: TcxLookupComboBox;
    cxt10_11: TcxTextEdit;
    cxLabel138: TcxLabel;
    cxl10_12: TcxLookupComboBox;
    cxt10_12: TcxTextEdit;
    Button88: TButton;
    Button89: TButton;
    procedure FormCreate(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
    procedure nxGrdBeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure cxl1PropertiesEditValueChanged(Sender: TObject);
    procedure cxl2_1PropertiesEditValueChanged(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnCari2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Butto26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure cxt6_6Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure cxlAkun1PropertiesChange(Sender: TObject);
    procedure btnSimpanTplClick(Sender: TObject);
    procedure cxTblCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button46Click(Sender: TObject);
    procedure Button71Click(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button73Click(Sender: TObject);
    procedure Button76Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure Button79Click(Sender: TObject);
    procedure Button77Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button75Click(Sender: TObject);
    procedure Button78Click(Sender: TObject);
    procedure Button81Click(Sender: TObject);
    procedure Button84Click(Sender: TObject);
    procedure Button82Click(Sender: TObject);
    procedure Button83Click(Sender: TObject);
    procedure Button87Click(Sender: TObject);
    procedure Button85Click(Sender: TObject);
    procedure Button86Click(Sender: TObject);
    procedure Button88Click(Sender: TObject);
    procedure Button89Click(Sender: TObject);
  private
    lstInvoicePelunasan: TStringList;
    lstPembelian: TStringList;
    lstPO: TStringList;
    lstPersediaan: TStringList;
    lstPenjualan: TStringList;
    procedure CariAkun(cxl: TcxLookupComboBox);
    procedure ClearInputAkunPersediaan;
  public
    { Public declarations }
  end;

var
  frmSettingDefaultAkun: TfrmSettingDefaultAkun;

implementation

uses unAplikasi, unTools, unDm, unFrmCari;

{$R *.dfm}

procedure TfrmSettingDefaultAkun.FormCreate(Sender: TObject);
var
  i,j,k: Integer;
  q: TZQuery;
  sJenis, sNama, sDK: string;
  lst: TStringList;
begin
  inherited;
  Screen.Cursor := crSQLWait;

  nxGrd.StartRowCount := 18;

  pnlTengah.Enabled := True;

  lstPenjualan := TStringList.Create;
  with lstPenjualan do begin
    CommaText :=
      '"EMPTY",' +
      '"D:PENJUALAN BARANG JADI",' +
      '"K:PENJUALAN BARARNG JADI",' +
      '"D:INVOICE PENJUALAN BARANG JADI",' +
      '"K:INVOICE PENJUALAN BARANG JADI",' +
      '"K:INVOICE PENJUALAN BARANG JADI - PPN KELUARAN"';
      
    for i := 0 to Count - 1 do begin
      sNama := Copy(Strings[i],3,500);

      sDK := Copy(Strings[i],1,1);
      if sDK = 'D' then
        sDK := 'DEBET'
      else
        sDK := 'KREDIT';

      q := OpenRS('SELECT a.*, b.nama FROM tbl_default_akun a ' +
        'LEFT JOIN tbl_coa b ON a.akun = b.noakun WHERE a.jenis = ''%s'' AND a.dk = ''%s''',
        [sNama, sDK]);
      if not q.IsEmpty then begin
        (FindComponent('cxl11_' + IntToStr(i)) as TcxLookupComboBox).EditValue :=
          q.FieldByName('akun').AsSTring;
        (FindComponent('cxt11_' + IntToStr(i)) as TcxTextEdit).Text :=
          q.FieldByName('nama').AsSTring;
      end;
      q.Close;
    end;
  end;

  lstInvoicePelunasan := TStringList.Create;
  with lstInvoicePelunasan do begin
    CommaText :=
      '"EMPTY",' +
      '"D:INVOICE ORDER JASA",' +
      '"K:INVOICE ORDER JASA",' +
      '"D:PELUNASAN PIUTANG (ORDER JASA)",' +
      '"K:PELUNASAN PIUTANG (ORDER JASA)",' +
      '"D:BIAYA CLAIM PELUNASAN",' +
      '"D:BIAYA ADM PELUNASAN",' +
      '"D:BIAYA PPH PELUNASAN",' +
      '"D:TAGIHAN TAMBAHAN - INVOICE",' +
      '"K:TAGIHAN TAMBAHAN - INVOICE",' +
      '"K:BIAYA LAIN-LAIN INVOICE"';
      
    for i := 0 to Count - 1 do begin
      sNama := Copy(Strings[i],3,500);

      sDK := Copy(Strings[i],1,1);
      if sDK = 'D' then
        sDK := 'DEBET'
      else
        sDK := 'KREDIT';

      q := OpenRS('SELECT a.*, b.nama FROM tbl_default_akun a ' +
        'LEFT JOIN tbl_coa b ON a.akun = b.noakun WHERE a.jenis = ''%s'' AND a.dk = ''%s''',
        [sNama, sDK]);
      if not q.IsEmpty then begin
        (FindComponent('cxl2_' + IntToStr(i)) as TcxLookupComboBox).EditValue :=
          q.FieldByName('akun').AsSTring;
        (FindComponent('cxt2_' + IntToStr(i)) as TcxTextEdit).Text :=
          q.FieldByName('nama').AsSTring;
      end;
      q.Close;
    end;
  end;

  lstPembelian := TStringList.Create;
  with lstPembelian do begin
    CommaText :=
      '"EMPTY",' +
      '"D:PEMBELIAN PERSEDIAAN",' +
      '"K:PEMBELIAN PERSEDIAAN",' +
      '"D:INVOICE PEMBELIAN - HUTANG",' +
      '"D:INVOICE PEMBELIAN - PPN MASUKAN",' +
      '"K:INVOICE PEMBELIAN - HUTANG PT",' +
      '"D:PEMBELIAN NON STOK",' +
      '"D:PEMBELIAN NON STOK - PPN MASUKAN",' +
      '"K:PEMBELIAN NON STOK"';
      
    for i := 0 to Count - 1 do begin
      sNama := Copy(Strings[i],3,500);

      sDK := Copy(Strings[i],1,1);
      if sDK = 'D' then
        sDK := 'DEBET'
      else
        sDK := 'KREDIT';

      q := OpenRS('SELECT a.*, b.nama FROM tbl_default_akun a ' +
        'LEFT JOIN tbl_coa b ON a.akun = b.noakun WHERE a.jenis = ''%s'' AND a.dk = ''%s''',
        [sNama, sDK]);
      if not q.IsEmpty then begin
        (FindComponent('cxl7_' + IntToStr(i)) as TcxLookupComboBox).EditValue :=
          q.FieldByName('akun').AsSTring;
        (FindComponent('cxt7_' + IntToStr(i)) as TcxTextEdit).Text :=
          q.FieldByName('nama').AsSTring;
      end;
      q.Close;
    end;
  end;

  // DEFAULT AKUN PERSEDIAAN
  lstPersediaan := TStringList.Create;
  with lstPersediaan do begin
    CommaText :=
      '"EMPTY",' +
      '"D:PEMAKAIAN PERSEDIAAN BAHAN BAKU",' +
      '"K:PEMAKAIAN PERSEDIAAN BAHAN BAKU",' +
      '"D:PEMAKAIAN PERSEDIAAN BAHAN PEMBANTU",' +
      '"K:PEMAKAIAN PERSEDIAAN BAHAN PEMBANTU",' +
      '"D:PEMAKAIAN PERSEDIAAN BAHAN AFVALAN DAN PELET",' +
      '"K:PEMAKAIAN PERSEDIAAN BAHAN AFVALAN DAN PELET",' +
      '"D:TRANSFER BARANG JADI KE GUDANG",' +
      '"K:TRANSFER BARANG JADI KE GUDANG",' +
      '"D:PEMAKAIAN PERSEDIAAN BAHAN BAKU - WIP",' +
      '"K:PEMAKAIAN PERSEDIAAN BAHAN BAKU - WIP",' +
      '"D:TRANSFER BARANG WIP KE GUDANG",' +
      '"K:TRANSFER BARANG WIP KE GUDANG"';

    for i := 0 to Count - 1 do begin
      sNama := Copy(Strings[i],3,500);

      sDK := Copy(Strings[i],1,1);
      if sDK = 'D' then
        sDK := 'DEBET'
      else
        sDK := 'KREDIT';

      q := OpenRS('SELECT a.*, b.nama FROM tbl_default_akun a ' +
        'LEFT JOIN tbl_coa b ON a.akun = b.noakun WHERE a.jenis = ''%s'' AND a.dk = ''%s''',
        [sNama, sDK]);
      if not q.IsEmpty then begin
        (FindComponent('cxl10_' + IntToStr(i)) as TcxLookupComboBox).EditValue :=
          q.FieldByName('akun').AsSTring;
        (FindComponent('cxt10_' + IntToStr(i)) as TcxTextEdit).Text :=
          q.FieldByName('nama').AsSTring;
      end;
      q.Close;
    end;
  end;

  PageControl1.ActivePage := TabSheet14;
  zqrCoa.Open;
  zqrAkunPersediaan.Open;
  Screen.Cursor := crDefault;

end;

procedure TfrmSettingDefaultAkun.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  s: string;
begin
  inherited;
  if ACol = nxColCmbAkun.Index then begin
    s := Copy(nxGrd.Cell[nxColCmbAkun.INdex, ARow].AsString, 1,
      Pos('-',nxGrd.Cell[nxColCmbAkun.Index, AROw].AsString) - 1);
    nxGrd.Cell[nxColAkun.Index, ARow].AsString := s;  
  end;
end;

procedure TfrmSettingDefaultAkun.btnTambahClick(Sender: TObject);
begin
  inherited;
    Close;
end;

procedure TfrmSettingDefaultAkun.btnSimpan2Click(Sender: TObject);
var
  tbl: TZTable;
  i: Integer;
  sJenis, sDK, sNama: string;
  q: TZQuery;
begin
  Screen.Cursor := crSQLWait;

  dm.zConn.ExecuteDirect('DELETE FROM tbl_default_akun');

  with lstPenjualan do begin
    q := OpenRS('SELECT * FROM tbl_default_akun');
    for i := 1 to Count-1 do begin

      // jika kosong maka skip
      if lstPenjualan.Strings[i] = '--' then Continue;

      if (FindComponent('cxl11_' + IntToStr(i)) as TcxLookupComboBox).Text = '' then
        Continue; 

      sDK := Copy(Strings[i],1,1);
      sNama := Copy(Strings[i],3,500);
      if q.Locate('jenis;dk', VarArrayOf([sNama, sDK]), []) then
        q.Edit
      else
        q.Insert;

      q.FieldByName('jenis').AsString := sNama;
      if sDK = 'D' then
        q.FieldByName('dk').AsString := 'DEBET'
      else
        q.FieldByName('dk').AsString := 'KREDIT';

      q.FieldByName('akun').AsString := (FindComponent('cxl11_' + IntToStr(i)) as TcxLookupComboBox).Text;
      q.Post;
    end;
    q.Close;
  end;

  with lstInvoicePelunasan do begin
    q := OpenRS('SELECT * FROM tbl_default_akun');
    for i := 1 to Count-1 do begin

      if (FindComponent('cxl2_' + IntToStr(i)) as TcxLookupComboBox).Text = '' then
        Continue;

      sDK := Copy(Strings[i],1,1);
      sNama := Copy(Strings[i],3,500);
      if q.Locate('jenis;dk', VarArrayOf([sNama, sDK]), []) then
        q.Edit
      else
        q.Insert;

      q.FieldByName('jenis').AsString := sNama;
      if sDK = 'D' then
        q.FieldByName('dk').AsString := 'DEBET'
      else
        q.FieldByName('dk').AsString := 'KREDIT';

      q.FieldByName('akun').AsString := (FindComponent('cxl2_' + IntToStr(i)) as TcxLookupComboBox).Text;
      q.Post;
    end;
    q.Close;
  end;

  with lstPembelian do begin
    q := OpenRS('SELECT * FROM tbl_default_akun');
    for i := 1 to Count-1 do begin

      if (FindComponent('cxl7_' + IntToStr(i)) as TcxLookupComboBox).Text = '' then
        Continue;

      sDK := Copy(Strings[i],1,1);
      sNama := Copy(Strings[i],3,500);
      if q.Locate('jenis;dk', VarArrayOf([sNama, sDK]), []) then
        q.Edit
      else
        q.Insert;

      q.FieldByName('jenis').AsString := sNama;
      if sDK = 'D' then
        q.FieldByName('dk').AsString := 'DEBET'
      else
        q.FieldByName('dk').AsString := 'KREDIT';

      q.FieldByName('akun').AsString := (FindComponent('cxl7_' + IntToStr(i)) as TcxLookupComboBox).Text;
      q.Post;
    end;
    q.Close;
  end;

  with lstPersediaan do begin
    q := OpenRS('SELECT * FROM tbl_default_akun');
    for i := 1 to Count-1 do begin

      if (FindComponent('cxl10_' + IntToStr(i)) as TcxLookupComboBox).Text = '' then
        Continue;

      sDK := Copy(Strings[i],1,1);
      sNama := Copy(Strings[i],3,500);
      if q.Locate('jenis;dk', VarArrayOf([sNama, sDK]), []) then
        q.Edit
      else
        q.Insert;

      q.FieldByName('jenis').AsString := sNama;
      if sDK = 'D' then
        q.FieldByName('dk').AsString := 'DEBET'
      else
        q.FieldByName('dk').AsString := 'KREDIT';

      q.FieldByName('akun').AsString := (FindComponent('cxl10_' + IntToStr(i)) as TcxLookupComboBox).Text;
      q.Post;
    end;
    q.Close;
  end;

  Screen.Cursor := crDefault;

  MsgBox('Setting default akun sudah disimpan.');
end;

procedure TfrmSettingDefaultAkun.nxGrdBeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
  inherited;
  if ACol = nxColCmbAkun.Index then begin
    if nxGrd.Cell[nxColDK.Index, ARow].AsString = '' then
      Accept := False;
  end;
end;

procedure TfrmSettingDefaultAkun.cxl1PropertiesEditValueChanged(
  Sender: TObject);
var
  cxl: TcxLookupComboBox;
  s: string;
  q: TZQuery;
begin
  inherited;
  cxl := (Sender as TcxLookupComboBox);
  if cxl.Text <> '' then begin
    q := OpenRS('SELECT nama FROM tbl_coa WHERE noakun = ''%s''',
      [VarToStr(cxl.EditValue)]);
    s := Copy(cxl.Name,4,2);
    (FindComponent('cxt' + s) as TcxTextEdit).Text := q.FieldByName('nama').AsString;
    q.Close;
  end;
end;

procedure TfrmSettingDefaultAkun.cxl2_1PropertiesEditValueChanged(
  Sender: TObject);
var
  cxl: TcxLookupComboBox;
  s: string;
  q: TZQuery;
begin
  inherited;
  cxl := (Sender as TcxLookupComboBox);

  if cxl.Text <> '' then begin
    q := OpenRS('SELECT nama FROM tbl_coa WHERE noakun = ''%s''',
      [VarToStr(cxl.EditValue)]);
    s := Copy(cxl.Name,4,5);
    (FindComponent('cxt' + s) as TcxTextEdit).Text := q.FieldByName('nama').AsString;
    q.Close;
  end;
end;

procedure TfrmSettingDefaultAkun.CariAkun(cxl: TcxLookupComboBox);
var
  f: TFrmCari;
  s: TStringList;
  fld: TField;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'coa-detail';
  if f.ShowModal = mrOk then begin
    s := f.Result;
    fld := s.Objects[0] as TField;
    cxl.EditValue := fld.AsString;
  end;
end;

procedure TfrmSettingDefaultAkun.btnCariClick(Sender: TObject);
begin
  inherited;
  CariAkun(cxl3_1);  
end;

procedure TfrmSettingDefaultAkun.btnCari2Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl3_2); 
end;

procedure TfrmSettingDefaultAkun.Button1Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_1);
end;

procedure TfrmSettingDefaultAkun.Button2Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_2);
end;

procedure TfrmSettingDefaultAkun.Button3Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_5);
end;

procedure TfrmSettingDefaultAkun.Button4Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_6);
end;

procedure TfrmSettingDefaultAkun.Button5Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_7);
end;

procedure TfrmSettingDefaultAkun.Button6Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_3);
end;

procedure TfrmSettingDefaultAkun.Button7Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_4);
end;

procedure TfrmSettingDefaultAkun.Button8Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl1);
end;

procedure TfrmSettingDefaultAkun.Button9Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2);
end;

procedure TfrmSettingDefaultAkun.Button24Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl17);
end;

procedure TfrmSettingDefaultAkun.Button23Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl16);
end;

procedure TfrmSettingDefaultAkun.Button22Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl15);
end;

procedure TfrmSettingDefaultAkun.Button21Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl14);
end;

procedure TfrmSettingDefaultAkun.Button20Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl13);
end;

procedure TfrmSettingDefaultAkun.Button19Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl12);
end;

procedure TfrmSettingDefaultAkun.Button18Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl11);
end;

procedure TfrmSettingDefaultAkun.Button17Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10);
end;

procedure TfrmSettingDefaultAkun.Button16Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl9);
end;

procedure TfrmSettingDefaultAkun.Button15Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8);
end;

procedure TfrmSettingDefaultAkun.Button10Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl3);
end;

procedure TfrmSettingDefaultAkun.Button11Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl4);
end;

procedure TfrmSettingDefaultAkun.Button12Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl5);
end;

procedure TfrmSettingDefaultAkun.Button13Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6);
end;

procedure TfrmSettingDefaultAkun.Button14Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7);
end;

procedure TfrmSettingDefaultAkun.Button25Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl4_1);
end;

procedure TfrmSettingDefaultAkun.Butto26Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl4_2);
end;

procedure TfrmSettingDefaultAkun.Button27Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl3_3);
end;

procedure TfrmSettingDefaultAkun.Button28Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl3_4);
end;

procedure TfrmSettingDefaultAkun.Button29Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_8);
end;

procedure TfrmSettingDefaultAkun.Button30Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_9);
end;

procedure TfrmSettingDefaultAkun.Button31Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl18);
end;

procedure TfrmSettingDefaultAkun.Button32Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl19);
end;

procedure TfrmSettingDefaultAkun.Button33Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl20);
end;

procedure TfrmSettingDefaultAkun.Button36Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6_1);
end;

procedure TfrmSettingDefaultAkun.Button37Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6_2);
end;

procedure TfrmSettingDefaultAkun.Button38Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6_3);
end;

procedure TfrmSettingDefaultAkun.Button39Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6_4);
end;

procedure TfrmSettingDefaultAkun.Button34Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl5_1);
end;

procedure TfrmSettingDefaultAkun.Button35Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl5_2);
end;

procedure TfrmSettingDefaultAkun.Button40Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl4_3);
end;

procedure TfrmSettingDefaultAkun.Button41Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl4_3);
end;

procedure TfrmSettingDefaultAkun.Button42Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl5_4);
end;

procedure TfrmSettingDefaultAkun.Button43Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6_5);
end;

procedure TfrmSettingDefaultAkun.cxt6_6Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl6_6);
end;

procedure TfrmSettingDefaultAkun.Button47Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_1);
end;

procedure TfrmSettingDefaultAkun.Button48Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_2);  
end;

procedure TfrmSettingDefaultAkun.Button49Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_3);
end;

procedure TfrmSettingDefaultAkun.Button50Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_4);
end;

procedure TfrmSettingDefaultAkun.Button51Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_6);
end;

procedure TfrmSettingDefaultAkun.Button52Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl2_10);
end;

procedure TfrmSettingDefaultAkun.Button53Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl21);
end;

procedure TfrmSettingDefaultAkun.Button58Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_10);
end;

procedure TfrmSettingDefaultAkun.Button59Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_11);
end;

procedure TfrmSettingDefaultAkun.Button60Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_12);
end;

procedure TfrmSettingDefaultAkun.Button61Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_13);
end;

procedure TfrmSettingDefaultAkun.Button62Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_14);
end;

procedure TfrmSettingDefaultAkun.Button63Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_15);
end;

procedure TfrmSettingDefaultAkun.Button64Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_16);
end;

procedure TfrmSettingDefaultAkun.Button65Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_9);
end;

procedure TfrmSettingDefaultAkun.Button56Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_1);
end;

procedure TfrmSettingDefaultAkun.Button67Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_2);
end;

procedure TfrmSettingDefaultAkun.Button54Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_3);
end;

procedure TfrmSettingDefaultAkun.Button55Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_4);
end;

procedure TfrmSettingDefaultAkun.Button57Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_5);
end;

procedure TfrmSettingDefaultAkun.Button66Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_6);
end;

procedure TfrmSettingDefaultAkun.Button68Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_7);
end;

procedure TfrmSettingDefaultAkun.Button69Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl8_8);
end;

procedure TfrmSettingDefaultAkun.cxlAkun1PropertiesChange(Sender: TObject);
var
  s: string;
  t: TcxTextEdit;
begin
  inherited;
  s := (Sender as TcxLookupComboBox).Name;
  s := Copy(s, Length(s),1);
  t := FindComponent('cxtAkun' + s) as TcxTextEdit;
  t.Text := zqrCoa.FieldByName('noakun').AsString;
end;

procedure TfrmSettingDefaultAkun.btnSimpanTplClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;

  if Trim(cxtNamaTpl.Text) = '' then begin
    MsgBox('Nama harus di isi.');
    cxtNamaTpl.SetFocus;
  end
  else if Trim(cxtAkun1.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun1.SetFocus;
  end
  else if Trim(cxtAkun2.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun2.SetFocus;
  end
  else if Trim(cxtAkun3.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun3.SetFocus;
  end
  else if Trim(cxtAkun4.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun4.SetFocus;
  end
  else if Trim(cxtAkun5.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun5.SetFocus;
  end
  else if Trim(cxtAkun6.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun6.SetFocus;
  end
  else if Trim(cxtAkun7.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun7.SetFocus;
  end
  else if Trim(cxtAkun8.Text) = '' then begin
    MsgBox('Kode akun ada yang masih kosong.');
    cxtAkun8.SetFocus;
  end
  else begin

    if cxtJenis.Text = 'edit' then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_tplakun_persediaan WHERE nama = ''' + cxtNamaTpl.Text + '''');
    end;

    if cxtJenis.Text = '' then begin
      q := OpenRS('SELECT * FROM tbl_tplakun_persediaan WHERE nama = ''%s''',[cxtNamaTpl.Text]);
      if not q.IsEmpty then begin
        MsgBox('Nama ini sudah ada, masukkan nama lain.');
        q.Close;
        Abort;
      end;
      q.Close;
    end;

    q := OpenRS('SELECT * FROM tbl_tplakun_persediaan');
    q.Insert;
    q.FieldByName('nama').AsString := Trim(cxtNamaTpl.Text);
    q.FieldByName('akun_persediaan').AsString := cxtAkun1.Text;
    q.FieldByName('akun_penjualan').AsString := cxtAkun2.Text;
    q.FieldByName('akun_retur_penjualan').AsString := cxtAkun3.Text;
    q.FieldByName('akun_diskon_penjualan').AsString := cxtAkun4.Text;
    q.FieldByName('akun_barang_terkirim').AsString := cxtAkun5.Text;
    q.FieldByName('akun_hpp').AsString := cxtAkun6.Text;
    q.fieldByName('akun_retur_pembelian').AsString := cxtAkun7.Text;
    q.FieldByName('akun_blm_tertagih').AsString := cxtAkun8.Text;
    q.Post;

    zqrAkunPersediaan.Close;
    zqrAkunPersediaan.Open;

    ClearInputAkunPersediaan;
  end;
end;

procedure TfrmSettingDefaultAkun.ClearInputAkunPersediaan;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if (Components[i].Tag = 1) then begin
      if (Components[i].ClassName = 'TcxLookupComboBox') then (Components[i] as TcxLookupComboBox).Text := '';
      //if (Components[i].ClassName = 'TcxTextEdit') then (Components[i] as TcxTextEdit).Text := '';
    end;
  end;
  for i := 0 to ComponentCount - 1 do begin
    if (Components[i].Tag = 1) then begin
      if (Components[i].ClassName = 'TcxTextEdit') then (Components[i] as TcxTextEdit).Text := '';
    end;
  end;
  cxtJenis.Text := '';
  cxtNamaTpl.Enabled := True;
end;

procedure TfrmSettingDefaultAkun.cxTblCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q: TZQuery;
  i: Integer;
  sNama: string;
begin
  inherited;
  i := cxTbl.DataController.FocusedRecordIndex;
  sNama := cxTbl.DataController.Values[i, cxColNama.Index];
  q := OpenRS('SELECT * FROM tbl_tplakun_persediaan WHERE nama = ''%s''',[sNama]);
  if not q.IsEmpty then begin
    cxtNamaTpl.Text := sNama;
    cxlAkun1.EditValue := q.FieldByName('akun_persediaan').AsString;
    cxlAkun2.EditValue := q.FieldByName('akun_penjualan').AsString;
    cxlAkun3.EditValue := q.FieldByName('akun_retur_penjualan').AsString;
    cxlAkun4.EditValue := q.FieldByName('akun_diskon_penjualan').AsString;
    cxlAkun5.EditValue := q.FieldByName('akun_barang_terkirim').AsString;
    cxlAkun6.EditValue := q.FieldByName('akun_hpp').AsString;
    cxlAkun7.EditValue := q.FieldByName('akun_retur_pembelian').AsString;
    cxlAkun8.EditValue := q.FieldByName('akun_blm_tertagih').AsString;

    cxtAkun1.Text := q.FieldByName('akun_persediaan').AsString;
    cxtAkun2.EditValue := q.FieldByName('akun_penjualan').AsString;
    cxtAkun3.EditValue := q.FieldByName('akun_retur_penjualan').AsString;
    cxtAkun4.EditValue := q.FieldByName('akun_diskon_penjualan').AsString;
    cxtAkun5.EditValue := q.FieldByName('akun_barang_terkirim').AsString;
    cxtAkun6.EditValue := q.FieldByName('akun_hpp').AsString;
    cxtAkun7.EditValue := q.FieldByName('akun_retur_pembelian').AsString;
    cxtAkun8.EditValue := q.FieldByName('akun_blm_tertagih').AsString;

    cxtJenis.Text := 'edit';
    cxtNamaTpl.Enabled := False;
  end;
  q.Close;
end;

procedure TfrmSettingDefaultAkun.Button46Click(Sender: TObject);
begin
  inherited;
  ClearInputAkunPersediaan;
end;

procedure TfrmSettingDefaultAkun.Button71Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_5);
end;

procedure TfrmSettingDefaultAkun.Button70Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_7);
end;

procedure TfrmSettingDefaultAkun.Button72Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl7_8);
end;

procedure TfrmSettingDefaultAkun.Button73Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_1);
end;

procedure TfrmSettingDefaultAkun.Button76Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_2);
end;

procedure TfrmSettingDefaultAkun.Button74Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_3);
end;

procedure TfrmSettingDefaultAkun.Button79Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_4);
end;

procedure TfrmSettingDefaultAkun.Button77Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_5);
end;

procedure TfrmSettingDefaultAkun.Button80Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_6);
end;

procedure TfrmSettingDefaultAkun.Button75Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_7);
end;

procedure TfrmSettingDefaultAkun.Button78Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_8);
end;

procedure TfrmSettingDefaultAkun.Button81Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl11_1);
end;

procedure TfrmSettingDefaultAkun.Button84Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl11_2);
end;

procedure TfrmSettingDefaultAkun.Button82Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl11_3);
end;

procedure TfrmSettingDefaultAkun.Button83Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl11_4);
end;

procedure TfrmSettingDefaultAkun.Button87Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl11_5);
end;

procedure TfrmSettingDefaultAkun.Button85Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_9);
end;

procedure TfrmSettingDefaultAkun.Button86Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_10);
end;

procedure TfrmSettingDefaultAkun.Button88Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_11);
end;

procedure TfrmSettingDefaultAkun.Button89Click(Sender: TObject);
begin
  inherited;
  CariAkun(cxl10_12);
end;

end.
