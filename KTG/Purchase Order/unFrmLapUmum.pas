unit unFrmLapUmum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZDataset,
  frxExportXLS, frxExportPDF, frxExportHTML, ZAbstractDataset, frxBarcode,
  frxExportImage, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, scExcelExport,cxGridExportLink, ShellAPI;

type
  TfrmLapUmum = class(TForm)
    rptSJ: TfrxReport;
    zqrSJ: TZReadOnlyQuery;
    dsSJ: TDataSource;
    fdbSJ: TfrxDBDataset;
    rptSPMB: TfrxReport;
    zqrSPMB: TZReadOnlyQuery;
    dsSPMB: TDataSource;
    fdbSPMB: TfrxDBDataset;
    rptSOTerbuka: TfrxReport;
    zqrSOTerbuka: TZReadOnlyQuery;
    dsSoTerbuka: TDataSource;
    fdbSOTerbuka: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    rptSOvsSJ: TfrxReport;
    zqrSOvsSJ: TZReadOnlyQuery;
    dsSOvsSJ: TDataSource;
    fdbSOvsSJ: TfrxDBDataset;
    rptSJ_Backup: TfrxReport;
    rptRekapSJ: TfrxReport;
    zqrRekapSJ: TZReadOnlyQuery;
    dsRekapSJ: TDataSource;
    fdbRekapSJ: TfrxDBDataset;
    rptRekapSJDet: TfrxReport;
    zqrRekapSJDet: TZReadOnlyQuery;
    dsRekapSJDet: TDataSource;
    fdbRekapSJDet: TfrxDBDataset;
    frxHTMLExport1: TfrxHTMLExport;
    rptSJ_Backup2: TfrxReport;
    zqSPK: TZQuery;
    fdbSPK: TfrxDBDataset;
    dsSPK: TDataSource;
    zqrSPK: TZReadOnlyQuery;
    rptSPK: TfrxReport;
    zqrSpkDet: TZReadOnlyQuery;
    fdbSpkDet: TfrxDBDataset;
    dsSpkDet: TDataSource;
    frxBarCodeObject1: TfrxBarCodeObject;
    rptSPKTmbh: TfrxReport;
    rptKartuStok: TfrxReport;
    zqrKartuStok: TZReadOnlyQuery;
    dsKartuStok: TDataSource;
    fdbKartuStok: TfrxDBDataset;
    rptSOAll: TfrxReport;
    zqrSOAll: TZReadOnlyQuery;
    dsSOAll: TDataSource;
    fdbSOAll: TfrxDBDataset;
    rptSOTPerCust: TfrxReport;
    zqrSPKPotong: TZReadOnlyQuery;
    fdbSPKPotoing: TfrxDBDataset;
    rptSPKPotong: TfrxReport;
    dsSPKPotong: TDataSource;
    zqrSPKPotongDet: TZReadOnlyQuery;
    fdbSPKPotongDet: TfrxDBDataset;
    zqrSPKPotongDet2: TZReadOnlyQuery;
    fdbSpkPotongDet2: TfrxDBDataset;
    frxJPEGExport1: TfrxJPEGExport;
    rptSPK2: TfrxReport;
    rptSPKAssem: TfrxReport;
    zqrSPKAssemHead: TZReadOnlyQuery;
    fdbSPKAssemHead: TfrxDBDataset;
    dsSPKAssemHead: TDataSource;
    zqrSPKAssemDet1: TZReadOnlyQuery;
    fdbSPKAssemDet1: TfrxDBDataset;
    dsSPKAssemDet2: TDataSource;
    zqrRekapQtySO: TZReadOnlyQuery;
    dsRekapQtySO: TDataSource;
    fdbRekapQtySO: TfrxDBDataset;
    rptRekapQtySO: TfrxReport;
    zqrSPKAssemDet2: TZReadOnlyQuery;
    fdbSPKAssemDet2: TfrxDBDataset;
    DataSource1: TDataSource;
    zqrRekapQtySO2: TZReadOnlyQuery;
    fdbRekapQtySO2: TfrxDBDataset;
    rptSPKAssem_Old: TfrxReport;
    rptPO: TfrxReport;
    zqrPO: TZReadOnlyQuery;
    dsPO: TDataSource;
    fdbPO: TfrxDBDataset;
    rptSOTerbuka_Backup: TfrxReport;
    rptSPBB: TfrxReport;
    zqrSPBB: TZReadOnlyQuery;
    dsSPBB: TDataSource;
    fdbSPBB: TfrxDBDataset;
    rptPONonPajak: TfrxReport;
    Label1: TLabel;
    Label2: TLabel;
    rptPOImport: TfrxReport;
    rptBrgKeluarPerTgl: TfrxReport;
    zqrBrgKeluarPerTgl: TZReadOnlyQuery;
    dsBrgKeluarPerTgl: TDataSource;
    fdbBrgKelPerTgl: TfrxDBDataset;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    rptHistPOPerBrg: TfrxReport;
    zqrHistPOPerBrg: TZReadOnlyQuery;
    dsHistPOPerBrg: TDataSource;
    fdbHistPOPerBrg: TfrxDBDataset;
    rptAppPO: TfrxReport;
    zqrAppPO: TZReadOnlyQuery;
    dsAppPO: TDataSource;
    fdbAppPO: TfrxDBDataset;
    rptSPKPerMesin: TfrxReport;
    zqrSPKPerMesin: TZReadOnlyQuery;
    dsSPKPerMesin: TDataSource;
    fdbSPKPerMesin: TfrxDBDataset;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    rptSJU: TfrxReport;
    zqrSJU: TZReadOnlyQuery;
    dsSJU: TDataSource;
    fdbSJU: TfrxDBDataset;
    rptSPBB_PLT: TfrxReport;
    zqrSPBBPlt: TZReadOnlyQuery;
    dsSPBBPlt: TDataSource;
    fdbSPBBPlt: TfrxDBDataset;
    rptRekapSJU: TfrxReport;
    zqrRekapSJU: TZReadOnlyQuery;
    dsRekapSJU: TDataSource;
    fdbRekapSJU: TfrxDBDataset;
    Label9: TLabel;
    rptSJPel: TfrxReport;
    zqrSJPel: TZReadOnlyQuery;
    dsSJPel: TDataSource;
    fdbSJPel: TfrxDBDataset;
    Label10: TLabel;
    rptPOEvie: TfrxReport;
    zqrPOE: TZReadOnlyQuery;
    dsPOE: TDataSource;
    fdbPOE: TfrxDBDataset;
    dsPOPeletan: TDataSource;
    zqrPOPeletan: TZReadOnlyQuery;
    rptPOPeletan: TfrxReport;
    fdbPOPeletan: TfrxDBDataset;
    Label12: TLabel;
    rptPOPeletan2_OLD: TfrxReport;
    rptSPBB_PoPlt: TfrxReport;
    zqrSpbbPoPlt: TZReadOnlyQuery;
    dsSpbbPoPlt: TDataSource;
    fdbSpbbPoPlt: TfrxDBDataset;
    Label13: TLabel;
    rptSPMBPel: TfrxReport;
    zqrSPMBPel: TZReadOnlyQuery;
    dsSPMBPel: TDataSource;
    fdbSPMBPel: TfrxDBDataset;
    Label14: TLabel;
    rptJurnalPlt: TfrxReport;
    zqrJurnalPlt: TZReadOnlyQuery;
    dsJurnalPlt: TDataSource;
    fdbJurnalPlt: TfrxDBDataset;
    Label15: TLabel;
    Label16: TLabel;
    rptPengirimanPel: TfrxReport;
    zqrPengirimanPel: TZReadOnlyQuery;
    dsPengirimanPel: TDataSource;
    fdbPengirimanPel: TfrxDBDataset;
    Label17: TLabel;
    rptPembPelPerBln: TfrxReport;
    zqrPembPelPerBln: TZReadOnlyQuery;
    dsPembPelPerBln: TDataSource;
    fdbPembPelPerBln: TfrxDBDataset;
    rptRekapSODet: TfrxReport;
    zqrRekapSODet: TZReadOnlyQuery;
    dsRekapSODet: TDataSource;
    fdbRekapSODet: TfrxDBDataset;
    Label18: TLabel;
    rptPOEvieEng: TfrxReport;
    Label19: TLabel;
    rptPerincianPlt: TfrxReport;
    zqrPerincianPlt: TZReadOnlyQuery;
    dsPerincianPlt: TDataSource;
    fdbPerincianPlt: TfrxDBDataset;
    rptLKM: TfrxReport;
    zqrLKM: TZReadOnlyQuery;
    dsLKM: TDataSource;
    frxdbdtstLKM: TfrxDBDataset;
    Label11: TLabel;
    rptNoUrutSJ: TfrxReport;
    zqrNoUrutSJ: TZReadOnlyQuery;
    dsNoUrutSJ: TDataSource;
    fdbNoUrutSJ: TfrxDBDataset;
    Label20: TLabel;
    rptPltBlmTerkirim: TfrxReport;
    zqrPltBlmTerkirim: TZReadOnlyQuery;
    dsPltBlmTerkirim: TDataSource;
    fdbPltBlmTerkirim: TfrxDBDataset;
    lbllkm: TLabel;
    rptDaftarLKM: TfrxReport;
    zqLKM: TZReadOnlyQuery;
    dsLKM1: TDataSource;
    fdbDaftarLKM: TfrxDBDataset;
    lblrptdaftarlkm: TLabel;
    zqRekapLKM: TZReadOnlyQuery;
    dsRekapLKM: TDataSource;
    fdbRekapLKM: TfrxDBDataset;
    Label21: TLabel;
    rptRekapLKM: TfrxReport;
    rptSPMBRetur: TfrxReport;
    dsSPMBRetur: TDataSource;
    fdbSPMBRetur: TfrxDBDataset;
    zqrSPMBRetur: TZReadOnlyQuery;
    lblSPMBRetur: TLabel;
    lblSJRetur: TLabel;
    rptSJReturPemb: TfrxReport;
    fdbSJReturPemb: TfrxDBDataset;
    dsReturPemb: TDataSource;
    zqrSJReturPemb: TZReadOnlyQuery;
    Label22: TLabel;
    rptKirimBC: TfrxReport;
    zqrKirimBC: TZReadOnlyQuery;
    dsKirimBC: TDataSource;
    fdbKirimBC: TfrxDBDataset;
    cxTblCetMstBrgPPIC: TcxGridDBTableView;
    cxGrdCetMstBrgPPICLevel1: TcxGridLevel;
    cxGrdCetMstBrgPPIC: TcxGrid;
    zqrCetMstBrgPPIC: TZReadOnlyQuery;
    dsCetMstBrgPPIC: TDataSource;
    cxTblCetMstBrgPPICkode: TcxGridDBColumn;
    cxTblCetMstBrgPPICdeskripsi: TcxGridDBColumn;
    cxTblCetMstBrgPPICstok: TcxGridDBColumn;
    cxTblCetMstBrgPPICb_stok: TcxGridDBColumn;
    cxTblCetMstBrgPPICsatuan: TcxGridDBColumn;
    cxTblCetMstBrgPPICtipe: TcxGridDBColumn;
    cxTblCetMstBrgPPICkategori: TcxGridDBColumn;
    cxTblCetMstBrgPPICsubkategori: TcxGridDBColumn;
    cxTblCetMstBrgPPICdivisi: TcxGridDBColumn;
    cxTblCetMstBrgPPICpackinfo: TcxGridDBColumn;
    cxTblCetMstBrgPPICf_aktif: TcxGridDBColumn;
    cxTblCetMstBrgPPICuser_input: TcxGridDBColumn;
    cxTblCetMstBrgPPICtgl_input: TcxGridDBColumn;
    cxTblCetMstBrgPPICuser_edit: TcxGridDBColumn;
    cxTblCetMstBrgPPICtgl_edit: TcxGridDBColumn;
    cxTblCetMstBrgPPICberat: TcxGridDBColumn;
    cxTblCetMstBrgPPICpacking: TcxGridDBColumn;
    cxTblCetMstBrgPPICberat_per_unit: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_berat: TcxGridDBColumn;
    cxTblCetMstBrgPPICisi_pak: TcxGridDBColumn;
    cxTblCetMstBrgPPICimage: TcxGridDBColumn;
    cxTblCetMstBrgPPICwarna: TcxGridDBColumn;
    cxTblCetMstBrgPPICpanjang: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_panjang: TcxGridDBColumn;
    cxTblCetMstBrgPPIClebar: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_lebar: TcxGridDBColumn;
    cxTblCetMstBrgPPICtebal: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_tebal: TcxGridDBColumn;
    cxTblCetMstBrgPPICdiameter: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_diameter: TcxGridDBColumn;
    cxTblCetMstBrgPPICberat_per_unit_b: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_berat_per_unit_b: TcxGridDBColumn;
    cxTblCetMstBrgPPICf_dijual: TcxGridDBColumn;
    cxTblCetMstBrgPPICf_dibeli: TcxGridDBColumn;
    cxTblCetMstBrgPPICf_joborder: TcxGridDBColumn;
    cxTblCetMstBrgPPICflow_process: TcxGridDBColumn;
    cxTblCetMstBrgPPICdiameter_dalam: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_diameter_dalam: TcxGridDBColumn;
    cxTblCetMstBrgPPICdiameter_luar: TcxGridDBColumn;
    cxTblCetMstBrgPPICs_diameter_luar: TcxGridDBColumn;
    cxTblCetMstBrgPPICpanjang_lurus: TcxGridDBColumn;
    cxTblCetMstBrgPPICberat_per_unit_old: TcxGridDBColumn;
    cxTblCetMstBrgPPICf_ed: TcxGridDBColumn;
    cxTblCetMstBrgPPICf_tds: TcxGridDBColumn;
    cxTblCetMstBrgPPIClokasi: TcxGridDBColumn;
    rptPOJ: TfrxReport;
    zqrPOJ: TZReadOnlyQuery;
    dsPOJ: TDataSource;
    fdbPOJ: TfrxDBDataset;
    Label23: TLabel;
    rptSPBBRetur: TfrxReport;
    Label24: TLabel;
    rptPONonPajakEng: TfrxReport;
    rptPOJNonPajak: TfrxReport;
    Label25: TLabel;
    Label26: TLabel;
    zqrHargaPeletan: TZReadOnlyQuery;
    dsHargaPeletan: TDataSource;
    fdbHargaPeletan: TfrxDBDataset;
    rptHargaPeletan: TfrxReport;
    rptPOEng: TfrxReport;
    zqrSOTerbuka_Backup: TZReadOnlyQuery;
    rptStokBrgKarantina: TfrxReport;
    zqrBrgKarantina: TZReadOnlyQuery;
    dsBrgKarantina: TDataSource;
    fdbBrgKarantina: TfrxDBDataset;
    Label27: TLabel;
    zqrSPBBRet: TZReadOnlyQuery;
    dsSPBBRet: TDataSource;
    fdbSPBBRet: TfrxDBDataset;
    Label29: TLabel;
    rptBrgKeluarPerTgl2: TfrxReport;
    zqrBrgKeluarPerTgl2: TZReadOnlyQuery;
    dsBrgKeluarPerTgl2: TDataSource;
    fdbBrgKeluarPerTgl2: TfrxDBDataset;
    rptBrgKeluarPerTgl3: TfrxReport;
    zqrBrgKeluarPerTgl3: TZReadOnlyQuery;
    dsBrgKeluarPerTgl3: TDataSource;
    fdbBrgKeluarPerTgl3: TfrxDBDataset;
    rptRekapRevisi: TfrxReport;
    zqrRevisi: TZReadOnlyQuery;
    dsRevisi: TDataSource;
    fdbRekapRevisi: TfrxDBDataset;
    Label30: TLabel;
    Label28: TLabel;
    rptInsentif: TfrxReport;
    zqrInsentif: TZReadOnlyQuery;
    dsInsentif: TDataSource;
    fdbInsentif: TfrxDBDataset;
    Label31: TLabel;
    rptRekapIns: TfrxReport;
    zqrRekapIns: TZReadOnlyQuery;
    dsRekapIns: TDataSource;
    fdbRekapIns: TfrxDBDataset;
    lbl1: TLabel;
    rptDisposisiBrg: TfrxReport;
    Label32: TLabel;
    rptLapMmgPel: TfrxReport;
    zqrLapMmgPel: TZReadOnlyQuery;
    dsLapMmgPel: TDataSource;
    fdbLapMmgPel: TfrxDBDataset;
    Label33: TLabel;
    rptInfoBengkel: TfrxReport;
    zqrInfoBengkel: TZReadOnlyQuery;
    dsInfoBengkel: TDataSource;
    fdbInfoBengkel: TfrxDBDataset;
    Label34: TLabel;
    rptSPBBSamples: TfrxReport;
    zqrSPBBSamples: TZReadOnlyQuery;
    dsSPBBSamples: TDataSource;
    fdbSPBBSamples: TfrxDBDataset;
    rptPOAbal2: TfrxReport;
    Label35: TLabel;
    rptHistAppFOBJ: TfrxReport;
    zqrHistAppFOBJ: TZReadOnlyQuery;
    dsHistAppFOBJ: TDataSource;
    fdbHistAppFOBJ: TfrxDBDataset;
    zqrHistAppFOBJDet: TZReadOnlyQuery;
    dsHistAppFOBJDet: TDataSource;
    fdbHistAppFOBJDet: TfrxDBDataset;
    rptLapDisposisi: TfrxReport;
    zqrLapDisposisi: TZReadOnlyQuery;
    dsLapDisposisi: TDataSource;
    fdbLapDisposisi: TfrxDBDataset;
    Label36: TLabel;
    Label37: TLabel;
    rptQuote: TfrxReport;
    zqrQuote: TZReadOnlyQuery;
    dsQuote: TDataSource;
    fdbQuote: TfrxDBDataset;
    rptSPMB_backup: TfrxReport;
    rptSJ_2107: TfrxReport;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CetakMstBrgPPIC;
  end;

var
  frmLapUmum: TfrmLapUmum;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmLapUmum.CetakMstBrgPPIC;
begin
  try
  if FileExists(aplikasi.AppPath + '\tmp.xls') then
    DeleteFile(aplikasi.AppPath + '\tmp.xls');
    ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrdCetMstBrgPPIC);
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLapUmum.FormCreate(Sender: TObject);
begin

  {
  zqrKartuStok.SQL.Text := 'SELECT * FROM v_ks ' +
    'WHERE kode_brg = :kode_brg AND gudang = :gudang ' +
    'AND tanggal BETWEEN :tgl1 AND :tgl2 ' +
    'ORDER BY kode_brg, tanggal';
  }

  zqrKartuStok.SQL.Text := 'SELECT * FROM tbl_tmp_ks ' +
    'WHERE kode_brg = :kode_brg AND gudang = :gudang ' +
    'AND tanggal BETWEEN :tgl1 AND :tgl2 ' +
    'AND user2 = ''' + Aplikasi.NamaUser + ''' ' +
    'AND host = ''' + GetHostName2 + ''' ' + 
    'ORDER BY kode_brg, tanggal';

end;

end.
