unit unFrmDownTime;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, scExcelExport,cxGridExportLink, ShellAPI, cxCheckBox, cxPC,
  cxDBLookupComboBox, cxSpinEdit, cxShellComboBox, ZAbstractDataset;

type
  TfrmDownTime = class(TfrmTplTrans)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxTbl: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrHP: TZReadOnlyQuery;
    dsHP: TDataSource;
    cxTblno_spk: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTblqty_prod: TcxGridDBColumn;
    cxTblqty_reject: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTbluser_dept: TcxGridDBColumn;
    cxTbltgl_input: TcxGridDBColumn;
    cxTblshift2: TcxGridDBColumn;
    cxTbljam1: TcxGridDBColumn;
    cxTbljam2: TcxGridDBColumn;
    cxTblmesin: TcxGridDBColumn;
    cxTblket_reject: TcxGridDBColumn;
    cxTblket_mesin: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    btnExcel: TButton;
    zqrRej: TZReadOnlyQuery;
    dsRej: TDataSource;
    cxTblColumn1: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    zqrOpr: TZReadOnlyQuery;
    dsOpr: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    cxTblOpr: TcxGridDBTableView;
    cxTblOprnik: TcxGridDBColumn;
    cxTblOprnama: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    cxTblColumn4: TcxGridDBColumn;
    cxTblColumn5: TcxGridDBColumn;
    cxTblColumn6: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTblSPK: TcxGridDBTableView;
    cxGrdSPKLevel1: TcxGridLevel;
    cxGrdSPK: TcxGrid;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxColNoSPK0: TcxGridDBColumn;
    cxTblSPKjenis_spk: TcxGridDBColumn;
    cxTblSPKtanggal: TcxGridDBColumn;
    cxTblSPKjam: TcxGridDBColumn;
    cxTblSPKqty: TcxGridDBColumn;
    cxTblSPKkode_mesin: TcxGridDBColumn;
    cxTblSPKf_completed: TcxGridDBColumn;
    cxTblSPKno_trsplusminus: TcxGridDBColumn;
    cxTblSPKnama: TcxGridDBColumn;
    cxTblSPKno_so: TcxGridDBColumn;
    cxTblSPKtanggal_so: TcxGridDBColumn;
    cxTblSPKketerangan: TcxGridDBColumn;
    cxTblSPKf_app_prd: TcxGridDBColumn;
    cxTblSPKnama_mesin: TcxGridDBColumn;
    cxColKodeBrg0: TcxGridDBColumn;
    cxTblSPKf_wip: TcxGridDBColumn;
    cxTblSPKf_wip_awal: TcxGridDBColumn;
    cxTblSPKf_wip_akhir: TcxGridDBColumn;
    cxTblSPKdeskripsi: TcxGridDBColumn;
    cxTblSPKsatuan: TcxGridDBColumn;
    cxTblSPKkategori: TcxGridDBColumn;
    cxTblSPKsubkategori: TcxGridDBColumn;
    cxTblSPKqty_prod: TcxGridDBColumn;
    cxTblSPKqty_baik: TcxGridDBColumn;
    cxTblSPKqty_afkir: TcxGridDBColumn;
    cxTblSPKqty_retur: TcxGridDBColumn;
    cxTblSPKqty_reject: TcxGridDBColumn;
    cxTblSPKqty_terima: TcxGridDBColumn;
    cxTblSPKtoleransi: TcxGridDBColumn;
    cxTblSPKtgl_p_mulai: TcxGridDBColumn;
    cxTblSPKtgl_p_selesai: TcxGridDBColumn;
    cxTblSPKlain_lain: TcxGridDBColumn;
    cxTblSPKket_ppic: TcxGridDBColumn;
    cxTblSPKberat_per_unit: TcxGridDBColumn;
    cxTblSPKs_berat: TcxGridDBColumn;
    cxTblSPKs_panjang: TcxGridDBColumn;
    cxTblSPKpanjang: TcxGridDBColumn;
    cxTblSPKlebar: TcxGridDBColumn;
    cxTblSPKs_lebar: TcxGridDBColumn;
    cxTblSPKdiameter_dalam: TcxGridDBColumn;
    cxTblSPKdiameter_luar: TcxGridDBColumn;
    cxTblSPKs_diameter_dalam: TcxGridDBColumn;
    cxTblSPKs_diameter_luar: TcxGridDBColumn;
    cxTblSPKsusut: TcxGridDBColumn;
    cxTblSPKkode_brg_input: TcxGridDBColumn;
    cxTblSPKtgl_prd_check: TcxGridDBColumn;
    cxTblSPKrouting: TcxGridDBColumn;
    btnSimpanHP: TButton;
    cxTblHP: TcxGridTableView;
    cxColNoSPK1: TcxGridColumn;
    cxTabSheet4: TcxTabSheet;
    cxColTglSPK1: TcxGridColumn;
    cxColRouting1: TcxGridColumn;
    cxColMesin: TcxGridColumn;
    cxColShift: TcxGridColumn;
    cxColJam1: TcxGridColumn;
    cxColJam2: TcxGridColumn;
    cxColQtySPK1: TcxGridColumn;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    cxColOperator: TcxGridColumn;
    cxColSatSPK1: TcxGridColumn;
    cxColQtyHP: TcxGridColumn;
    btnSimpanDT: TButton;
    cxColTglHP: TcxGridColumn;
    zqrKetMesin: TZReadOnlyQuery;
    dsKetMesin: TDataSource;
    cxColQtyReject: TcxGridColumn;
    cxGrid6: TcxGrid;
    cxTblPBDet: TcxGridTableView;
    cxColKodePB: TcxGridColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxTblPB: TcxGridTableView;
    cxColNoSPK4: TcxGridColumn;
    cxColRouting4: TcxGridColumn;
    cxColTglSPK4: TcxGridColumn;
    cxColQtySPK4: TcxGridColumn;
    cxColSatSPK4: TcxGridColumn;
    cxGridColumn19: TcxGridColumn;
    cxGridColumn20: TcxGridColumn;
    cxGridColumn21: TcxGridColumn;
    cxGridColumn22: TcxGridColumn;
    cxGridColumn23: TcxGridColumn;
    cxGridColumn24: TcxGridColumn;
    cxGridColumn25: TcxGridColumn;
    cxGridColumn26: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    btnSimpanPB: TButton;
    cxColDeskPB: TcxGridColumn;
    cxColQtyBomPB: TcxGridColumn;
    cxColQtyAmbilPB: TcxGridColumn;
    cxColSatPB: TcxGridColumn;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxGrid8: TcxGrid;
    cxTblPengembalianBom: TcxGridTableView;
    cxColNoSPK5: TcxGridColumn;
    cxColRouting5: TcxGridColumn;
    cxColTglSPK5: TcxGridColumn;
    cxColQtySPK5: TcxGridColumn;
    cxColSatSPK5: TcxGridColumn;
    cxGridColumn45: TcxGridColumn;
    cxGridColumn46: TcxGridColumn;
    cxGridColumn47: TcxGridColumn;
    cxGridColumn48: TcxGridColumn;
    cxGridColumn49: TcxGridColumn;
    cxGridColumn50: TcxGridColumn;
    cxGridColumn51: TcxGridColumn;
    cxGridColumn52: TcxGridColumn;
    cxGridLevel6: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxTblPengembalianBomDet: TcxGridTableView;
    cxColKodePB2: TcxGridColumn;
    cxGridColumn54: TcxGridColumn;
    cxGridColumn55: TcxGridColumn;
    cxColSatPB2: TcxGridColumn;
    cxColQtyAmbilPB2: TcxGridColumn;
    cxGridLevel7: TcxGridLevel;
    Button2: TButton;
    btnBatalHP: TButton;
    cxColQtyHslProd: TcxGridColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxColKodeBrg1: TcxGridColumn;
    cxColDeskripsi1: TcxGridColumn;
    Panel3: TPanel;
    Button1: TButton;
    btnKeluar2: TButton;
    btnBatalDowntime: TButton;
    cxColBomSdhDiambil: TcxGridColumn;
    zqrKategoriDown: TZReadOnlyQuery;
    dsKategoriDown: TDataSource;
    cxColKodeBrg4: TcxGridColumn;
    cxColDeskripsi4: TcxGridColumn;
    cxTblSPKColumn1: TcxGridDBColumn;
    cxColNoRouting: TcxGridDBColumn;
    cxGrid7: TcxGrid;
    cxGridTableView1: TcxGridTableView;
    cxColNoSPK3: TcxGridColumn;
    cxColKodeBrg3: TcxGridColumn;
    cxColDeskripsi3: TcxGridColumn;
    cxColRouting3: TcxGridColumn;
    cxColTglSPK3: TcxGridColumn;
    cxColQtySPK3: TcxGridColumn;
    cxColSatSPK3: TcxGridColumn;
    cxColTglHP3: TcxGridColumn;
    cxGridColumn10: TcxGridColumn;
    cxColQtyReject3: TcxGridColumn;
    cxColMesin3: TcxGridColumn;
    cxColKategoriDown3: TcxGridColumn;
    cxColKetMesin3: TcxGridColumn;
    cxColShift3: TcxGridColumn;
    cxColJam3_1: TcxGridColumn;
    cxColJam3_2: TcxGridColumn;
    cxColOperator3: TcxGridColumn;
    cxGridLevel5: TcxGridLevel;
    Button3: TButton;
    Button4: TButton;
    cxColJmlBB1: TcxGridDBColumn;
    cxColNoRouting1: TcxGridColumn;
    btnBatalPengambilanBOM: TButton;
    cxColKodeBrg5: TcxGridColumn;
    cxColDeskripsi5: TcxGridColumn;
    Button6: TButton;
    cxTblPengembalianBomDetColumn1: TcxGridColumn;
    cxTabSheet7: TcxTabSheet;
    cxLabel3: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxsQtySPK: TcxSpinEdit;
    cxGrid10: TcxGrid;
    cxTblBomDet: TcxGridTableView;
    cxColKodeBrg: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColQtyBom: TcxGridColumn;
    cxColQtyAmbil: TcxGridColumn;
    cxColJmlTambah: TcxGridColumn;
    cxColKetTambah: TcxGridColumn;
    cxGrid10Level1: TcxGridLevel;
    btnSimpanTambBOM: TButton;
    zqrKaryawan: TZReadOnlyQuery;
    dsKaryawan: TDataSource;
    cxColOperator1: TcxGridColumn;
    cxColOperator_2: TcxGridColumn;
    cxLabel7: TcxLabel;
    cxtspk: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxTblDT: TcxGridTableView;
    cxColNoSPK2: TcxGridColumn;
    cxColKodeBrg2: TcxGridColumn;
    cxColDeskripsi2: TcxGridColumn;
    cxColRouting2: TcxGridColumn;
    cxColTglSPK2: TcxGridColumn;
    cxColQtySPK2: TcxGridColumn;
    cxColSatSPK2: TcxGridColumn;
    cxColKategoriDown2: TcxGridColumn;
    cxColJenisDowntime: TcxGridColumn;
    cxColTglHP2: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxColQtyReject2: TcxGridColumn;
    cxColMesin2: TcxGridColumn;
    cxColKetMesin2: TcxGridColumn;
    cxColShift2: TcxGridColumn;
    cxColJam2_1: TcxGridColumn;
    cxColJam2_2: TcxGridColumn;
    cxColOperator2: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxtrouting: TcxTextEdit;
    cxColOperator4: TcxGridColumn;
    cxColOperator5: TcxGridColumn;
    cxColOperator6: TcxGridColumn;
    cxColSat1: TcxGridColumn;
    cxColQtyHslProd1: TcxGridColumn;
    Button8: TButton;
    cxtTrans: TEdit;
    cxdTglTrans: TcxDateEdit;
    cxTabSheet8: TcxTabSheet;
    cxGrid11: TcxGrid;
    cxTblPakaiBB: TcxGridTableView;
    cxGridColumn1: TcxGridColumn;
    cxGridColumn2: TcxGridColumn;
    cxGridColumn3: TcxGridColumn;
    cxGridColumn4: TcxGridColumn;
    cxGridColumn5: TcxGridColumn;
    cxGridColumn6: TcxGridColumn;
    cxGridColumn7: TcxGridColumn;
    cxGridColumn9: TcxGridColumn;
    cxGridColumn11: TcxGridColumn;
    cxGridColumn12: TcxGridColumn;
    cxGridColumn13: TcxGridColumn;
    cxGridColumn14: TcxGridColumn;
    cxGridColumn15: TcxGridColumn;
    cxGridColumn16: TcxGridColumn;
    cxGridColumn17: TcxGridColumn;
    cxGridLevel8: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxTblPakaiBBDet: TcxGridTableView;
    cxGridColumn18: TcxGridColumn;
    cxGridColumn27: TcxGridColumn;
    cxGridColumn28: TcxGridColumn;
    cxGridColumn29: TcxGridColumn;
    cxGridColumn30: TcxGridColumn;
    cxGridColumn31: TcxGridColumn;
    cxGridLevel9: TcxGridLevel;
    Button10: TButton;
    Button11: TButton;
    cxColNoHP: TcxGridColumn;
    cxColLayer1: TcxGridColumn;
    cxColLayer2: TcxGridColumn;
    cxColLayer3: TcxGridColumn;
    cxColTglProd: TcxGridColumn;
    cxColQtyProd1: TcxGridColumn;
    cxTabSheet9: TcxTabSheet;
    cxGrid13: TcxGrid;
    cxTblBom1: TcxGridTableView;
    cxColBomSPK: TcxGridColumn;
    cxColBomKode: TcxGridColumn;
    cxColBomBarang: TcxGridColumn;
    cxColBomRouting: TcxGridColumn;
    cxColBomTglSPK: TcxGridColumn;
    cxColBomQty: TcxGridColumn;
    cxColBomSatuan: TcxGridColumn;
    cxGridColumn39: TcxGridColumn;
    cxGridColumn40: TcxGridColumn;
    cxGridColumn41: TcxGridColumn;
    cxGridColumn42: TcxGridColumn;
    cxGridColumn43: TcxGridColumn;
    cxGridColumn44: TcxGridColumn;
    cxGridColumn53: TcxGridColumn;
    cxGridColumn56: TcxGridColumn;
    cxGridLevel10: TcxGridLevel;
    btnAfalan: TButton;
    btnDowntime: TButton;
    btnHP: TButton;
    Button12: TButton;
    Button9: TButton;
    Button7: TButton;
    Button5: TButton;
    btnPengambilanBOM: TButton;
    cxGrid14: TcxGrid;
    cxTblBom1Det: TcxGridTableView;
    cxColBomDetKode: TcxGridColumn;
    cxColBomDetBarang: TcxGridColumn;
    cxColBomDetSatuan: TcxGridColumn;
    cxColBomDetQty: TcxGridColumn;
    cxGridLevel11: TcxGridLevel;
    Label73: TLabel;
    cxtAlt: TcxTextEdit;
    zqrBrgBom: TZQuery;
    dsBrgBom: TDataSource;
    btnSimpanBom1: TButton;
    btnBatalBom1: TButton;
    cxColTanggalPB: TcxGridColumn;
    cxColBomDetTgl: TcxGridColumn;
    cxColTanggal: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnHPClick(Sender: TObject);
    procedure btnDowntimeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanHPClick(Sender: TObject);
    procedure btnSimpanDTClick(Sender: TObject);
    procedure btnPengambilanBOMClick(Sender: TObject);
    procedure cxTblPBFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSimpanPBClick(Sender: TObject);
    procedure btnBatalHPClick(Sender: TObject);
    procedure btnBatalDowntimeClick(Sender: TObject);
    procedure cxTblSPKEditChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxTblDTDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure Button5Click(Sender: TObject);
    procedure btnBatalPengambilanBOMClick(Sender: TObject);
    procedure cxTblPengembalianBomFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure btnSimpanTambBOMClick(Sender: TObject);
    procedure cxTblHPDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblHPFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure cxTblPakaiBBFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button12Click(Sender: TObject);
    procedure cxTblBom1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTblBom1DetDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnBatalBom1Click(Sender: TObject);
    procedure btnSimpanBom1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDownTime: TfrmDownTime;

implementation

uses unAplikasi, unDm, unTools, DateUtils;

{$R *.dfm}

procedure TfrmDownTime.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := unTools.FDOM(Aplikasi.TanggalServer);
  cxdTgl2.Date := unTools.LDOM(APlikasi.TanggalServer);
  pg.ActivePageIndex := 0;
  zqrMesin.Open;
  zqrKetMesin.Open;
  zqrKategoriDown.Open;
  zqrKaryawan.Open ;
  zqrBrgBom.Open;
  pg.Pages[2].TabVisible := False ;
  pg.Pages[1].TabVisible := False ;
end;

procedure TfrmDownTime.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmDownTime.btnExcelClick(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmDownTime.btnProsesClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;

  zqrSPK.Close;
  zqrSPK.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrSPK.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrSPK.Open;

  Screen.Cursor := crDefault;
end;

procedure TfrmDownTime.Button1Click(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmDownTime.btnHPClick(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
  end;

  cxTblHP.DataController.RecordCount := 0;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT a.*, IFNULL(b.no,0) no_urut_routing,' +
        'IFNULL((SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = a.no_spk),0) qty_prod ' + 
        'FROM v_spk a ' +
        'LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_routing) b ON a.kode_brg = b.kode_brg ' + 
        'WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblHP.DataController.AppendRecord;
      with cxTblHP.DataController do begin
        Values[j, cxColNoSPK1.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColKodeBrg1.Index] := q.FieldByName('kode_brg').AsString;
        Values[j, cxColDeskripsi1.Index] := q.FieldByname('deskripsi').AsString;
        Values[j, cxColRouting1.Index] := q.FieldByname('routing').AsString;
        Values[j, cxColTglSPK1.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxColQtySPK1.Index] := q.FieldByname('qty').AsString;
        Values[j, cxColSatSPK1.Index] := q.FieldByname('satuan').AsString;
        Values[j, cxColSat1.Index] := 'KG';
        Values[j, cxColQtyHslProd.Index] := q.FieldByName('qty_prod').Value;
        Values[j, cxColNoRouting1.Index] := q.FieldByName('no_urut_routing').AsInteger;
      end;

      q.Close;
    end;
  end;

  pg.ActivePageIndex := 1;
end;

procedure TfrmDownTime.btnDowntimeClick(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
  end;

  cxTblDT.DataController.RecordCount := 0;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblDT.DataController.AppendRecord;
      with cxTblDT.DataController do begin
        Values[j, cxColNoSPK2.Index] := q.FieldByname('no_spk').Value;
        Values[j, cxColKodeBrg2.Index] := q.FieldByName('kode_brg').Value;
        Values[j, cxColDeskripsi2.Index] := q.FieldByname('deskripsi').Value;
        Values[j, cxColRouting2.Index] := q.FieldByname('routing').Value;
        Values[j, cxColTglSPK2.Index] := q.FieldByname('tanggal').Value;
        Values[j, cxColQtySPK2.Index] := q.FieldByname('qty').Value;
        Values[j, cxColSatSPK2.Index] := q.FieldByname('satuan').Value;
      end;

      q.Close;
    end;
  end;

  pg.ActivePageIndex := 2;
end;

procedure TfrmDownTime.FormShow(Sender: TObject);
var
  aCol: TcxGridColumn;
  i : integer;
begin
  aCol := cxTblSPK.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;
end;

procedure TfrmDownTime.btnSimpanHPClick(Sender: TObject);
var
  i,j: Integer;
  sNoTrs: String;
  q, qh, qd, qhst, qb, qbd, qbom,z: TZQuery;
  sNoBukti, sNoSPKSblm: string;
  jml_bahan: real;
begin
  inherited;
  if cxTblHP.DataController.RecordCount = 0 then Abort;

  Screen.Cursor := crSQLWait;

  try

    dm.zConn.StartTransaction;

    for i := 0 to cxTblHP.DataController.RecordCount - 1 do begin

      with cxTblHP.DataController do begin

        sNoTrs := GetLastFak('hasil_produksi');
        UpdateFaktur(Copy(sNoTrs,1,8));

        cxtTrans.Text :=  sNoTrs;

        q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[sNoTrs]);
        q.Insert;
        q.FieldByName('no_spk').AsString := Values[i, cxColNoSPK1.INdex];
        q.FieldByName('no_bukti').AsString := sNoTrs;
        q.FieldByName('shift').AsString := Values[i, cxColShift.INdex];
        q.FieldByName('tanggal').AsDateTime := Values[i, cxColTglHP.Index];
        q.FieldByName('jam1').AsDateTime := Values[i, cxColJam1.Index];
        q.FieldByName('jam2').AsDateTime := Values[i, cxColJam2.Index];
        q.FieldByName('operator').AsString := Values[i, cxColOperator.Index];
        if (Values[i, cxColOperator1.Index]<>null) then
        q.FieldByName('operator2').AsString := Values[i, cxColOperator1.Index];
        if (Values[i, cxColOperator_2.Index]<>null) then
        q.FieldByName('operator3').AsString := Values[i, cxColOperator_2.Index];
        if (Values[i, cxColOperator4.Index]<>null) then
        q.FieldByName('operator4').AsString := Values[i, cxColOperator4.Index];
        if (Values[i, cxColOperator5.Index]<>null) then
        q.FieldByName('operator5').AsString := Values[i, cxColOperator5.Index];
        if (Values[i, cxColOperator6.Index]<>null) then
        q.FieldByName('operator6').AsString := Values[i, cxColOperator6.Index];
        q.FieldByName('mesin').AsString := Values[i, cxColMesin.Index];
        if (Values[i, cxColQtyHP.Index]<>null) then
        q.FieldByName('qty_prod').AsFloat := Values[i, cxColQtyHP.Index]
        else
        if (Values[i, cxColQtyReject.Index]<>null) then
        q.FieldByName('qty_reject').AsFloat := Values[i, cxColQtyReject.Index]
        else
        q.FieldByName('qty_prod').AsFloat := 0;

          if (Values[i, cxColQtyHslProd1.Index]<>null) then
        q.FieldByName('qty_prod_kg').AsFloat := Values[i, cxColQtyHslProd1.Index]
        else
        if (Values[i, cxColQtyReject.Index]<>null) then
        q.FieldByName('qty_reject').AsFloat := Values[i, cxColQtyReject.Index]
        else
        q.FieldByName('qty_prod_kg').AsFloat := 0;

        q.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        q.FieldByName('user').AsString := Aplikasi.NamaUser;
        q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        q.FieldByName('ket_mesin').AsString := '-';
        q.Post;

        

        // jika selain barang jadi maka masukkan barang ke gudang G-WIP
        if Values[i, cxColRouting1.Index] <> 'BJ' then begin
          sNoBukti := GetLastFak('brg_in');
          UpdateFaktur(Copy(sNoBukti,1,7));
          qh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoBukti]);
          qh.Insert;
          qh.FieldByName('no_bukti').AsString := sNoBukti;
          qh.FieldByName('tanggal').AsDateTime := Values[i, cxColTglHP.Index];
          qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.Post;
          qh.Close;

          qd := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoBukti]);
          qd.Insert;
          qd.FieldByName('no_bukti').AsString := sNoBukti;
          qd.FieldByName('kode_brg').AsString := Values[i, cxColKodeBrg1.Index];
          qd.FieldByName('qty').AsFloat := Values[i, cxColQtyHP.INdex];
          qd.FieldByName('kode_gdg').AsString := 'G-WIP';
          qd.FieldByName('satuan').AsString := Values[i, cxColSatSPK1.Index];
          qd.FieldByName('no_spk').AsString := Values[i, cxColNoSPK1.Index];
          qd.Post;
          qd.Close;

          qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
          with qhst do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoBukti;
            FieldByName('tanggal').AsDateTime := Values[i, cxColTglHP.Index];
            FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := Values[i, cxColKodeBrg1.Index];
            FieldByName('tipe').AsString := 'IN_';
            FieldByName('qty').AsFloat := Values[i, cxColQtyHP.Index];
            FieldByName('satuan').AsString := Values[i, cxColSatSPK1.Index];
            FieldByName('gudang').AsString := 'G-WIP';
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_spk').AsString := Values[i, cxColNoSPK1.Index];
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            FieldByName('hpp').AsFloat := GetHPP(Values[i, cxColKodeBrg1.index],'G-WIP');
            FieldByName('unit_ktg').AsString := GetUnitKTG(Values[i, cxColKodeBrg1.index]);
            Post;
          end;
          qhst.Close;

             with cxTblDT.DataController  do begin
          sNoTrs := GetLastFak('hasil_produksi');
          UpdateFaktur(Copy(sNoTrs,1,8));

          for j := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_hsl_prd_afvaldt where no_bukti =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_spk').AsString := cxtspk.Text ;
            z.FieldByName('no_bukti').AsString := sNoTrs;
            z.FieldByName('tanggal').AsDateTime := cxTblHP.DataController.Values[i, cxColTglHP.Index];
            z.FieldByName('kategori').AsString := Values[j , cxColKategoriDown2.Index];
            z.FieldByName('jenis').AsString := Values[j , cxColJenisDowntime.Index];
            z.FieldByName('keterangan').AsString := Values[j , cxColKetMesin2.Index];
            z.FieldByName('qty').AsFloat := Values[j , cxColQtyReject2.Index];
            z.FieldByName('satuan').AsString := Values[j , cxColSatSPK2.Index];
            if Values[j , cxColSatSPK2.Index] = 'MENIT' then
              z.FieldByName('f_id').AsInteger := 2
            else z.FieldByName('f_id').AsInteger := 1 ;
            z.Post;
            z.Close;
          end;
        end;
        

          qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[Values[i, cxColKodeBrg1.Index]]);
          qb.Edit;
          qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat + Values[i, cxColQtyHP.Index];
          qb.Post;
          qb.Close;

          qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-WIP''',
            [Values[i, cxColKodeBrg1.Index]]);
          if qbd.IsEmpty then
            qbd.Insert
          else
            qbd.Edit;
          qbd.FieldByName('kode_brg').AsString := Values[i, cxColKodeBrg1.INdex];
          qbd.FieldByName('kode_gdg').AsString := 'G-WIP';
          qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat + Values[i, cxColQtyHP.Index];
          qbd.Post;
          qbd.Close; 

          // kurangi stok WIP BOM
          qbom := OpenRS('SELECT kode_brg, LEFT(kode_brg,1) prefix_kodebrg, qty, satuan FROM tbl_bom_det WHERE no_spk = ''%s''',
            [Values[i, cxColNoSPK1.Index]]);
          while not qbom.Eof do begin
            if qbom.FieldByName('prefix_kodebrg').AsString = 'B' then begin

              sNoBukti := GetLastFak('brg_out');
              UpdateFaktur(Copy(sNoBukti,1,7));

              qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''',[sNoBukti]);
              qh.Insert;
              qh.FieldByName('no_bukti').AsString := sNoBukti;
              qh.FieldByName('tanggal').AsDateTime := Values[i, cxColTglHP.Index];
              qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
              qh.FieldByName('user').AsString := Aplikasi.NamaUser;
              qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
              qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
              qh.Post;
              qh.Close;

              qd := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',[sNoBukti]);
              qd.Insert;
              qd.FieldByName('no_bukti').AsString := sNoBukti;
              qd.FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;

              jml_bahan := qbom.FieldByName('qty').AsFloat / Values[i, cxColQtySPK1.Index];
              qd.FieldByName('qty').AsFloat := jml_bahan * Values[i, cxColQtyHP.Index];

              qd.FieldByName('kode_gdg').AsString := 'G-WIP';
              qd.FieldByName('satuan').AsString := Values[i, cxColSatSPK1.Index];
              qd.FieldByName('no_spk').AsString := Values[i, cxColNoSPK1.Index];

              qd.Post;
              qd.Close;

              qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
              with qhst do begin
                Insert;
                FieldByName('no_bukti').AsString := sNoBukti;
                FieldByName('tanggal').AsDateTime := Values[i, cxColTglHP.Index];
                FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
                FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;
                FieldByName('tipe').AsString := 'OUT_';
                FieldByName('qty').AsFloat := jml_bahan * Values[i, cxColQtyHP.Index];
                FieldByName('satuan').AsString := qbom.FieldByName('satuan').AsString;
                FieldByName('gudang').AsString := 'G-WIP';
                FieldByName('user').AsString := Aplikasi.NamaUser;
                FieldByName('user_dept').AsString := Aplikasi.UserDept;
                FieldByName('no_spk').AsString := Values[i, cxColNoSPK1.Index];
                FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
                FieldByName('hpp').AsFloat :=
                  GetHPP(qbom.FieldByname('kode_brg').AsString,'G-WIP');
                FieldByName('unit_ktg').AsString := GetUnitKTG(qbom.FieldByname('kode_brg').AsString);
                Post;
              end;
              qhst.Close;

              qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[qbom.FieldByName('kode_brg').AsString]);
              qb.Edit;
              qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat - (jml_bahan * Values[i, cxColQtyHP.Index]);
              qb.Post;
              qb.Close;

              qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-WIP''',
                [qbom.FieldByName('kode_brg').AsString]);
              if qbd.IsEmpty then
                qbd.Insert
              else
                qbd.Edit;
              qbd.FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;
              qbd.FieldByName('kode_gdg').AsString := 'G-WIP';
              qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat - (jml_bahan * Values[i, cxColQtyHP.Index]);
              qbd.Post;
              qbd.Close;

            end;
            qbom.Next;
          end;
          qbom.Close;

        end;
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Hasil produksi sudah berhasil disimpan.');

    cxTblHP.DataController.RecordCount := 0;
    pg.ActivePageIndex := 0;

    zqrSPK.Close;
    zqrSPK.Open;

  except
    on E: Exception do begin
      dm.zConn.Rollback;
      Screen.Cursor := crDefault;
      MsgBox('Error: Pastikan semua sudah di isi.');
      Abort;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmDownTime.btnSimpanDTClick(Sender: TObject);
var
  i: Integer;
  sNoTrs: String;
  q: TZQuery;
begin
  inherited;
  if cxTblDT.DataController.RecordCount = 0 then Abort;

  Screen.Cursor := crSQLWait;

  try
    dm.zConn.StartTransaction;

    for i := 0 to cxTblDT.DataController.RecordCount - 1 do begin
      with cxTblDT.DataController do begin

        sNoTrs := GetLastFak('hasil_produksi');
        UpdateFaktur(Copy(sNoTrs,1,8));

        q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[sNoTrs]);
        q.Insert;
        q.FieldByName('no_spk').AsString := Values[i, cxColNoSPK2.INdex];
        q.FieldByName('no_bukti').AsString := sNoTrs;
        q.FieldByName('shift').AsString := Values[i, cxColShift2.INdex];
        q.FieldByName('tanggal').AsDateTime := Values[i, cxColTglHP2.Index];
        q.FieldByName('jam1').AsDateTime := Values[i, cxColJam2_1.Index];
        q.FieldByName('jam2').AsDateTime := Values[i, cxColJam2_2.Index];
        q.FieldByName('operator').AsString := Values[i, cxColOperator2.Index];
        q.FieldByName('mesin').AsString := Values[i, cxColMesin2.Index];
        q.FieldByName('qty_reject').AsFloat := Values[i, cxColQtyReject2.Index];
        q.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        q.FieldByName('user').AsString := Aplikasi.NamaUser;
        q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        q.FieldByName('kategori_afdown').AsString := Values[i, cxColKategoriDown2.Index];
        q.FieldByName('ket_mesin').AsString := Values[i, cxColKetMesin2.INdex];
        q.FieldByName('jenis_ad').AsString := Values[i, cxColJenisDowntime.index];
        q.Post;

      end;
    end;
    
    dm.zConn.Commit;

    MsgBox('Downtime sudah disimpan.');

    cxTblDT.DataController.RecordCount := 0;
    pg.ActivePageIndex := 0;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      Screen.Cursor := crDefault;
      MsgBox('Error: Pastikan semua sudah di isi.');
      Abort;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmDownTime.btnPengambilanBOMClick(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      if cxTblSPK.DataController.Values[i, cxColJmlBB1.Index] > 0 then
        lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
    
  end;

  cxTblPB.DataController.RecordCount := 0;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblPB.DataController.AppendRecord;
      with cxTblPB.DataController do begin
        
        Values[j, cxColNoSPK4.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColRouting4.Index] := q.FieldByname('routing').AsString;
        Values[j, cxColTglSPK4.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxColQtySPK4.Index] := q.FieldByname('qty').AsString;
        Values[j, cxColSatSPK4.Index] := q.FieldByname('satuan').AsString;
        Values[j, cxColKodeBrg4.Index] := q.FieldByName('kode_brg').Value;
        Values[j, cxColDeskripsi4.Index] := q.FieldByName('deskripsi').Value;

      end;

      q.Close;
    end;
    cxTblPBDet.DataController.RecordCount := 0;
  end;

  pg.ActivePageIndex := 4;
end;

procedure TfrmDownTime.cxTblPBFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i,j: Integer;
  sNoSPK: string;
begin
  inherited;
  try
    i := cxTblPB.DataController.GetFocusedRecordIndex;

    sNoSPK := cxTblPB.DataController.Values[i, cxColNoSPK1.Index];

    q := OpenRS('SELECT a.*, b.deskripsi, b.unitid,if(a.satuan="GR",a.qty/1000,a.qty) qty1,if(a.satuan="GR","KG",a.satuan) satuan1, ' +
      'IFNULL((SELECT SUM(qty) FROM tbl_trskeluar_det WHERE kode_brg = a.kode_brg AND no_spk = a.no_spk),0) qty_ambil ' +
      'FROM tbl_bom_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE left(a.kode_brg,1)<>"B" and no_spk = ''%s''',[sNoSPK]);

    cxTblPBDet.DataController.RecordCount := 0;

    while not q.Eof do begin
      with cxTblPBDet.DataController do begin
        j := AppendRecord;
        Values[j, cxColKodePB.Index] := q.FieldByName('kode_brg').AsString;
        Values[j, cxColDeskPB.Index] := q.FieldByname('deskripsi').AsString;
        Values[j, cxColQtyBomPB.Index] := q.FieldByName('qty1').AsFloat;
        Values[j, cxColSatPB.Index] := q.FieldByName('satuan1').AsString;
        Values[j, cxColBomSdhDiambil.Index] := q.FieldByname('qty_ambil').AsFloat;
      end;
      q.Next;
    end;
    q.Close;
  except
  end;
  
end;

procedure TfrmDownTime.btnSimpanPBClick(Sender: TObject);
var
  q: TZQuery;
  i,j: Integer;
  sNoTrs, sNoSPK: string;
begin
  inherited;

  if cxTblPBDet.DataController.RecordCount = 0 then Abort;

  sNoTrs := GetLastFak('ambil-bahan');
  UpdateFaktur(Copy(sNoTrs,1,8));

  q := OpenRS('SELECT * FROM tbl_trspengeluaranbb_det WHERE no_bukti = ''%s''',[sNoTrs]);

  try
    dm.zConn.StartTransaction;
    
    for i := 0 to cxTblPBDet.DataController.RecordCount - 1 do begin
      with cxTblPBDet.DataController do begin
        if Values[i, cxColQtyAmbilPB.Index] > 0 then begin
          q.Insert;
          q.FieldByName('no_bukti').AsString := sNoTrs;
          q.FieldByName('kode_brg').AsString := Values[i, cxColKodePB.Index];
          q.FieldByName('qty').AsFloat := Values[i, cxColQtyAmbilPB.Index];
          q.FieldByName('tanggal').AsDateTime :=Values[i, cxColTanggalPB.Index];
          q.FieldByName('satuan').AsString := Values[i, cxColSatPB.Index];

          j := cxTblPB.DataController.GetFocusedRecordIndex;
          sNoSPK := cxTblPB.DataController.Values[j, cxColNoSPK1.Index];

          q.FieldByName('no_spk').AsString := sNoSPK;
          q.Post;
        end;
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Pengambilan BOM sudah disimpan.');

    cxTblPB.DataController.RecordCount := 0;
    cxTblPBDet.DataController.RecordCount := 0;
    pg.ActivePageIndex := 0;
    
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
  
end;

procedure TfrmDownTime.btnBatalHPClick(Sender: TObject);
begin
  inherited;
  cxTblHP.DataController.RecordCount := 0;
  pg.ActivePageIndex := 0;
end;

procedure TfrmDownTime.btnBatalDowntimeClick(Sender: TObject);
begin
  inherited;
  cxTblDT.DataController.RecordCount := 0;
  pg.ActivePageIndex := 0;
end;

procedure TfrmDownTime.cxTblSPKEditChanged(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem);
var
  i, nourut_routing, jml_routing: integer;
  q, q2: TZQuery;
  kode_brg,
  routing, kode_routing, no_spk, no_spk_induk, no_spk_sblm: string;
begin
  inherited;

  // cek apakah no spk sudah ada bahan
  {
  if AItem.Index = 0 then begin
    i := cxTblSPK.DataController.GetFocusedRecordIndex;

    routing := cxTblSPK.DataController.Values[i, cxTblSPKrouting.Index];
    nourut_routing := cxTblSPK.DataController.Values[i, cxColNoRouting.Index];
    kode_brg := cxTblSPK.DataController.Values[i, cxColKodeBrg0.Index];
    no_spk_induk := zqrSPK.FieldByname('no_spk_induk').AsString;

    q := OpenRS('SELECT kode FROM tbl_routing WHERE kode_brg = ''%s''',[kode_brg]);
    kode_routing := q.FieldByName('kode').AsString;
    q.Close;

    q := OpenRS('SELECT COUNT(*) jml FROM tbl_routing WHERE kode = ''%s''',[kode_routing]);
    jml_routing := q.FieldByName('jml').AsInteger;
    q.Close;

    if AItem.EditValue = 'T' then begin
      if (routing <> 'BJ') and (nourut_routing > 1) then begin
        q := OpenRS('SELECT kode_brg FROM tbl_formula_subdet WHERE kode = ''%s''',[kode_routing]);
        while not q.Eof do begin

          // ambil no_spk sebelum
          q2 := OpenRS('SELECT no_spk FROM tbl_spk WHERE no_spk_induk = ''%s'' AND no_urut = %s',
            [no_spk_induk, IntToStr(nourut_routing-1)]);
          no_spk_sblm := q2.FieldByName('no_spk').AsString;
          q2.Close;

          q2 := OpenRS('SELECT IFNULL(SUM(qty),0) stok FROM tbl_history WHERE kode_brg = ''%s'' AND no_spk = ''%s'' AND gudang = ''G-WIP''',
            [q.FieldByName('kode_brg').AsString, no_spk_sblm]);
          if q2.FieldByName('stok').AsFloat = 0 then begin
            MsgBox('Stok bahan baku / BOM / routing masih kosong.');
            AItem.EditValue := 'F';
            Abort;
          end;

          q.Next;
        end;    
      end;
    end;
    
  end;
  }
end;

procedure TfrmDownTime.cxTblDTDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
//var
  //i: Integer;
begin
  inherited;
 if AItemIndex = cxColKategoriDown2.Index then begin
    try
      //i := ADataController.GetFocusedRecordIndex;
      
      if Copy(cxTblDT.DataController.Values[ARecordIndex , cxColKategoriDown2.Index],1,10) =
          'JENIS DOWN' then  cxTblDT.DataController.Values[ARecordIndex , cxColSatSPK2.Index] := 'MENIT'
          else cxTblDT.DataController.Values[ARecordIndex , cxColSatSPK2.Index] := 'KG' ;

      zqrKetMesin.Close;
      zqrKetMesin.ParamByName('mesin').AsString := Copy(cxtrouting.Text,1,3) ;
      zqrKetMesin.ParamByName('kategori').AsString :=
        cxTblDT.DataController.Values[ARecordIndex , cxColKategoriDown2.Index];
      zqrKetMesin.Open;

    except
    end;
  end;
end;

procedure TfrmDownTime.Button5Click(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      if cxTblSPK.DataController.Values[i, cxColJmlBB1.Index] > 0 then
        lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
    
  end;

  cxTblPengembalianBom.DataController.RecordCount := 0;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblPengembalianBom.DataController.AppendRecord;
      with cxTblPengembalianBom.DataController do begin

        Values[j, cxColNoSPK5.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColRouting5.Index] := q.FieldByname('routing').AsString;
        Values[j, cxColTglSPK5.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxColQtySPK5.Index] := q.FieldByname('qty').AsString;
        Values[j, cxColSatSPK5.Index] := q.FieldByname('satuan').AsString;
        Values[j, cxColKodeBrg5.Index] := q.FieldByName('kode_brg').Value;
        Values[j, cxColDeskripsi5.Index] := q.FieldByName('deskripsi').Value;

      end;

      q.Close;
    end;
  end;

  pg.ActivePageIndex := 5;
end;

procedure TfrmDownTime.btnBatalPengambilanBOMClick(Sender: TObject);
begin
  inherited;
  cxTblPB.DataController.RecordCount := 0;
  cxTblPBDet.DataController.RecordCount := 0;
  pg.ActivePageIndex := 0;
end;

procedure TfrmDownTime.cxTblPengembalianBomFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i,j: Integer;
  sNoSPK: string;
begin
  inherited;
  try
    i := cxTblPengembalianBom.DataController.GetFocusedRecordIndex;

    sNoSPK := cxTblPengembalianBom.DataController.Values[i, cxColNoSPK5.Index];

    q := OpenRS('SELECT a.*, b.deskripsi, b.unitid, ' +
      'IFNULL((SELECT SUM(qty) FROM tbl_trskeluar_det WHERE kode_brg = a.kode_brg AND no_spk = a.no_spk),0) qty_ambil ' +  
      'FROM tbl_bom_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' + 
      'WHERE no_spk = ''%s''',[sNoSPK]);

    cxTblPengembalianBomDet.DataController.RecordCount := 0;

    while not q.Eof do begin
      with cxTblPengembalianBomDet.DataController do begin
        j := AppendRecord;
        Values[j, cxColKodePB2.Index] := q.FieldByName('kode_brg').AsString;
        Values[j, cxGridColumn54.Index] := q.FieldByname('deskripsi').AsString;
        Values[j, cxGridColumn55.Index] := q.FieldByName('qty').AsFloat;
        Values[j, cxColSatPB2.Index] := q.FieldByName('unitid').AsString;
        Values[j, cxTblPengembalianBomDetColumn1.Index] := q.FieldByname('qty_ambil').AsFloat;
      end;
      q.Next;
    end;
    q.Close;
  except
  end;
end;

procedure TfrmDownTime.Button2Click(Sender: TObject);
var
  q: TZQuery;
  i,j: Integer;
  sNoTrs, sNoSPK: string;
begin
  inherited;

  if cxTblPengembalianBomDet.DataController.RecordCount = 0 then Abort;

  sNoTrs := GetLastFak('retur-bahan');
  UpdateFaktur(Copy(sNoTrs,1,8));

  q := OpenRS('SELECT * FROM tbl_trsreturbppb_det WHERE no_bukti = ''%s''',[sNoTrs]);

  try
    dm.zConn.StartTransaction;

    for i := 0 to cxTblPengembalianBomDet.DataController.RecordCount - 1 do begin
      with cxTblPengembalianBomDet.DataController do begin
         if ( Values[i, cxColQtyAmbilPB2.Index]>0) then begin
          q.Insert;
          q.FieldByName('no_bukti').AsString := sNoTrs;
          q.FieldByName('kode_brg').AsString := Values[i, cxColKodePB2.Index];
          q.FieldByName('qty').AsFloat := Values[i, cxColQtyAmbilPB2.Index];
          q.FieldByName('tanggal').AsDateTime := Values[i, cxColTanggal.Index];
          q.FieldByName('satuan').AsString := Values[i, cxColSatPB2.Index];

          j := cxTblPengembalianBom.DataController.GetFocusedRecordIndex;
          sNoSPK := cxTblPengembalianBom.DataController.Values[j, cxColNoSPK5.Index];

          q.FieldByName('no_spk').AsString := sNoSPK;
          q.Post;
        end;
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Transaksi Pengembalian BOM sudah disimpan.');

    cxTblPengembalianBom.DataController.RecordCount := 0;
    cxTblPengembalianBomDet.DataController.RecordCount := 0;
    pg.ActivePageIndex := 0;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
  
end;

procedure TfrmDownTime.Button7Click(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q, q2: TZQuery;
  chk: string;
begin
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
    
  end;

  if lst.Count > 1 then begin
    MsgBox('Mohon pilih 1 SPK.');
    Abort;
  end
  else begin
  
    i := 0;
    q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

    cxtNoSPk.Text := q.FieldByName('no_spk').AsString;
    cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    cxsQtySPK.Value := q.FieldByname('qty').AsFloat;
    q.Close;

    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_bom_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' + 
      'WHERE no_spk = ''%s''',[lst.Strings[i]]);
    while not q.Eof do begin
      j := cxTblBomDet.DataController.AppendRecord;
      with cxTblBomDet.DataController do begin
        Values[j, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
        Values[j, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
        Values[j, cxColQtyBom.Index] := q.FieldByName('qty').AsFloat;
        Values[j, cxColSatuan.Index] := q.FieldByName('satuan').AsString;

        // ambil yang sudah dikirim
        q2 := OpenRS('SELECT IFNULL(SUM(qty),0) sum_qty ' +
          'FROM tbl_history WHERE kode_brg = ''%s'' AND no_spk = ''%s'' AND tipe = ''OUT_''',
          [q.FieldByName('kode_brg').AsString, lst.Strings[i]]);
        Values[j, cxColQtyAmbil.Index] := q2.FieldByName('sum_qty').AsFloat;
        q2.Close;

      end;  
      q.Next;
    end;
    q.Close;

    pg.ActivePageIndex := 6;
  end;
end;

procedure TfrmDownTime.btnSimpanTambBOMClick(Sender: TObject);
var
  i: integer;
  q: TZQuery;
  flag: boolean;
begin
  inherited;
  if cxTblBomDet.DataController.RecordCount = 0 then begin
    MsgBox('Detail masih kosong.');
    Abort;
  end
  else begin
    flag := false;
    for i := 0 to cxTblBomDet.DataController.RecordCount - 1 do begin
      if cxTblBomDet.DataController.Values[i, cxColJmlTambah.Index] > 0 then begin
        flag := true;
        Break;
      end;
    end;

    if not flag then begin
      MsgBox('Qty. Penambahan masih 0 semua. Mohon isi minimal 1 baris.');
      Abort;
    end;

    for i := 0 to cxTblBomDet.DataController.RecordCount - 1 do begin
      with cxTblBomDet.DataController do begin
        if Values[i, cxColJmlTambah.Index] > 0 then begin
          q := OpenRS('SELECT * FROM tmp_tbl_bom_det WHERE no_spk = ''%s''',[cxtNoSPK.Text]);
          q.Insert;
          q.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          q.FieldByName('kode_brg').AsString := Values[i, cxColKodeBrg.Index];
          q.FieldByName('qty').AsFloat := Values[i, cxColJmlTambah.Index];
          q.FieldByName('user_request').AsString := Aplikasi.NamaUser;
          q.FieldByName('dept_request').AsString := Aplikasi.UserDept;
          q.FieldByName('tgl_request').AsDateTime := Aplikasi.NowServer;
          q.FieldByName('keterangan').AsString := Values[i, cxColKetTambah.Index];
          q.Post;
          q.Close;
        end;
      end;
    end;

    MsgBox('Penambahan BOM sudah disimpan.');
    cxtNoSPK.Text := '';
    cxtDeskripsi.Text := '';
    cxtKodeBrg.Text := '';
    cxsQtySPK.Value := 0;
    cxTblBomDet.DataController.RecordCount := 0;
    pg.ActivePageIndex := 0;
    
  end;
end;

procedure TfrmDownTime.cxTblHPDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;

  if AItemIndex = cxColTglHP.Index then begin
      ADataController.Values[ARecordIndex, cxColJam1.Index] :=
      ADataController.Values[ARecordIndex, cxColTglHp.Index];

      ADataController.Values[ARecordIndex, cxColJam2.Index] :=
      ADataController.Values[ARecordIndex, cxColTglHp.Index];
      end
      else if AItemIndex = cxColjam1.Index then begin
        if  (TimeOf(ADataController.Values[ARecordIndex, cxColJam1.Index])>= StrToTime('06:00:00')) and
            (TimeOf(ADataController.Values[ARecordIndex, cxColJam1.Index])< StrToTime('14:00:00')) then
            ADataController.Values[ARecordIndex, cxColShift.Index]:=1
        else
        if (TimeOf(ADataController.Values[ARecordIndex, cxColJam1.Index])>=StrToTime('14:00:00'))  and
            (TimeOf(ADataController.Values[ARecordIndex, cxColJam1.Index])<= StrToTime('21:00:00')) then
            ADataController.Values[ARecordIndex, cxColShift.Index]:=2
        else ADataController.Values[ARecordIndex, cxColShift.Index]:=3 ;
  end;
end;


procedure TfrmDownTime.cxTblHPFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i: Integer;
  sNoSPK,sRouting : string;
begin
  inherited;
  try
    i := cxTblHP.DataController.GetFocusedRecordIndex;

    sNoSPK := cxTblHP.DataController.Values[i, cxColNoSPK1.Index];
    cxdTglTrans.EditValue := cxTblHP.DataController.Values[i, cxColTglHP.Index];
    cxtspk.Text := sNoSPK ;
    sRouting := cxTblHP.DataController.Values[i, cxColRouting1.Index];
    cxtrouting.Text := sRouting ;
  except
  end;

end;

procedure TfrmDownTime.Button8Click(Sender: TObject);
var
  z :TZQuery ;
  j,i : Integer ;
  sNoTrs: String;
begin
  inherited;
   
end;

procedure TfrmDownTime.Button9Click(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      if cxTblSPK.DataController.Values[i, cxColJmlBB1.Index] > 0 then
        lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;

  end;

  cxTblPakaiBB.DataController.RecordCount := 0;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT a.*, b.no_bukti no_prod, b.tanggal tgl_prod, b.qty_prod qprod FROM v_spk a LEFT JOIN tbl_hsl_prd b ON a.no_spk = b.no_spk WHERE a.no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblPakaiBB.DataController.AppendRecord;
      with cxTblPakaiBB.DataController do begin
        
        Values[j, cxGridColumn1.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColNoHP.Index] := q.FieldByName('no_prod').AsString;
        Values[j, cxColTglProd.Index] := q.FieldByName('tgl_prod').AsDateTime;
        Values[j, cxGridColumn4.Index] := q.FieldByname('routing').AsString;
        Values[j, cxGridColumn5.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxGridColumn6.Index] := q.FieldByname('qty').AsString;
        Values[j, cxGridColumn7.Index] := q.FieldByname('satuan').AsString;
        Values[j, cxGridColumn2.Index] := q.FieldByName('kode_brg').Value;
        Values[j, cxGridColumn3.Index] := q.FieldByName('deskripsi').Value;
        Values[j, cxColQtyProd1.Index] := q.FieldByName('qprod').Value;

      end;

      q.Close;
    end;
  end;

  pg.ActivePageIndex := 7;
end;

procedure TfrmDownTime.cxTblPakaiBBFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i,j: Integer;
  sNoSPK: string;
begin
  inherited;
  try
    i := cxTblPakaiBB.DataController.GetFocusedRecordIndex;

    sNoSPK := cxTblPakaiBB.DataController.Values[i, cxGridColumn1.Index];

    //q := OpenRS('SELECT a.*, b.deskripsi, b.unitid, ' +
    //  'IFNULL((SELECT SUM(qty) FROM tbl_trskeluar_det WHERE kode_brg = a.kode_brg AND no_spk = a.no_spk),0) qty_ambil ' +
    //  'FROM tbl_bom_det a ' +
    //  'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    //  'WHERE no_spk = ''%s'' AND LEFT(b.kode,1) IN (''C'',''D'')',[sNoSPK]);

    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_bom_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE no_spk = ''%s''',[sNoSPK]);

    cxTblPakaiBBDet.DataController.RecordCount := 0;

    while not q.Eof do begin
      with cxTblPakaiBBDet.DataController do begin
        j := AppendRecord;
        Values[j, cxGridColumn18.Index] := q.FieldByName('kode_brg').AsString;
        Values[j, cxGridColumn27.Index] := q.FieldByname('deskripsi').AsString;
        Values[j, cxGridColumn28.Index] := q.FieldByName('qty').AsFloat;
      end;
      q.Next;
    end;
    q.Close;
  except
  end;
end;

procedure TfrmDownTime.Button12Click(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  inherited;
   lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      if cxTblSPK.DataController.Values[i, cxColJmlBB1.Index] > 0 then
        lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;

  end;

  cxTblBom1.DataController.RecordCount := 0;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblBom1.DataController.AppendRecord;
      with cxTblBom1.DataController do begin
        
        Values[j, cxColBomSPK.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColBomRouting.Index] := q.FieldByname('routing').AsString;
        Values[j, cxColBomTglSPK.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxColBomQty.Index] := q.FieldByname('qty').AsString;
        Values[j, cxColBomSatuan.Index] := q.FieldByname('satuan').AsString;
        Values[j, cxColBomKode.Index] := q.FieldByName('kode_brg').Value;
        Values[j, cxColBomBarang.Index] := q.FieldByName('deskripsi').Value;

      end;
      q.Close;
    end;
    //cxTblPBDet.DataController.RecordCount := 0;
  end;

  pg.ActivePageIndex := 8;
end;

procedure TfrmDownTime.cxTblBom1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  i : Integer ;
begin
  inherited;
    try
    i := cxTblBom1.DataController.GetFocusedRecordIndex;
    cxtAlt.Text := cxTblBom1.DataController.Values[i, cxColBomSPK.Index];

    cxTblBom1Det.DataController.RecordCount := 0;
  except
  end;
end;

procedure TfrmDownTime.cxTblBom1DetDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
   if AItemIndex = cxColBomDetBarang.Index then begin
    try
      cxTblBom1Det.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColBomDetKode.Index] :=
        ADataController.Values[ARecordIndex, cxColBomDetBarang.Index];

    finally
      cxTblBom1Det.EndUpdate;
    end;
  end ;
end;

procedure TfrmDownTime.btnBatalBom1Click(Sender: TObject);
begin
  inherited;
  cxTblBom1.DataController.RecordCount := 0;
  cxTblBom1Det.DataController.RecordCount := 0;
  pg.ActivePageIndex := 0;
end;

procedure TfrmDownTime.btnSimpanBom1Click(Sender: TObject);
var
  i: integer;
  q: TZQuery;
  flag: boolean;
begin
  inherited;
  if cxTblBom1Det.DataController.RecordCount = 0 then Abort;

  q := OpenRS('SELECT * FROM tmp_tbl_bom_det WHERE no_spk = ''%s''',[cxtAlt.Text]);

  try
    dm.zConn.StartTransaction;
    
    for i := 0 to cxTblBom1Det.DataController.RecordCount - 1 do begin
      with cxTblBom1Det.DataController do begin

          q.Insert;
          q.FieldByName('no_spk').AsString := cxtAlt.Text;
          q.FieldByName('kode_brg').AsString := Values[i, cxColBomDetKode.Index];
          q.FieldByName('qty').AsFloat := Values[i, cxColBomDetQty.Index];
          q.FieldByName('satuan').AsString := Values[i, cxColBomDetSatuan.Index];
          q.FieldByName('user_request').AsString := Aplikasi.NamaUser;
          q.FieldByName('dept_request').AsString := Aplikasi.UserDept;
          q.FieldByName('tgl_request').AsDateTime := Values[i, cxColBomDetTgl.Index];
          q.Post;
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Penambahan Bahan Diluar BOM Sudah Disimpan.');

    cxTblBom1.DataController.RecordCount := 0;
    cxTblBom1Det.DataController.RecordCount := 0;
    pg.ActivePageIndex := 0;

  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
