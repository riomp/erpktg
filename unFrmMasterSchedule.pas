unit unFrmMasterSchedule;

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
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckComboBox,cxCheckBox,
  ExtCtrls, cxRadioGroup, cxGridBandedTableView, cxGridDBBandedTableView,
  NxColumns, NxColumnClasses, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxSpinEdit, scExcelExport, cxGridExportLink, ShellAPI,
  cxMemo, cxGroupBox, frxClass, frxBarcode;

type
  TfrmMasterSchedule = class(TForm)
    cxGrid1: TcxGrid;
    tblView: TcxGridDBTableView;
    tblViewno_spk: TcxGridDBColumn;
    tblViewno_mo: TcxGridDBColumn;
    tblViewno_so: TcxGridDBColumn;
    tblViewjenis_spk: TcxGridDBColumn;
    tblViewColumn1: TcxGridDBColumn;
    tblViewtanggal: TcxGridDBColumn;
    tblViewjam: TcxGridDBColumn;
    tblViewqty: TcxGridDBColumn;
    tblViewkode_mesin: TcxGridDBColumn;
    tblViewnama: TcxGridDBColumn;
    tblViewtanggal_so: TcxGridDBColumn;
    tblViewketerangan: TcxGridDBColumn;
    tblViewf_app_prd: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    pnlPilCetSPK: TPanel;
    btnCetakSPK: TButton;
    btnBatal: TButton;
    GroupBox1: TGroupBox;
    cxrBrgJadi: TcxRadioButton;
    cxrTmbh: TcxRadioButton;
    cxrMixingComp: TcxRadioButton;
    tblViewColumn2: TcxGridDBColumn;
    tblViewColumn3: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    tblView2: TcxGridDBBandedTableView;
    tblView2no_mo: TcxGridDBBandedColumn;
    tblView2no_spk: TcxGridDBBandedColumn;
    tblView2kode_brg: TcxGridDBBandedColumn;
    tblView2deskripsi: TcxGridDBBandedColumn;
    tblView2jenis_spk: TcxGridDBBandedColumn;
    tblView2tanggal: TcxGridDBBandedColumn;
    tblView2jam: TcxGridDBBandedColumn;
    tblView2qty: TcxGridDBBandedColumn;
    tblView2kode_mesin: TcxGridDBBandedColumn;
    tblView2nama: TcxGridDBBandedColumn;
    tblView2no_so: TcxGridDBBandedColumn;
    tblView2tanggal_so: TcxGridDBBandedColumn;
    tblView2keterangan: TcxGridDBBandedColumn;
    tblView2f_app_prd: TcxGridDBBandedColumn;
    tblView2nama_mesin: TcxGridDBBandedColumn;
    tblView2satuan: TcxGridDBBandedColumn;
    tblView2kategori: TcxGridDBBandedColumn;
    tblView2subkategori: TcxGridDBBandedColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel2: TPanel;
    btnCetakSPK2: TButton;
    btnKeluar: TButton;
    btnHapusSPK: TButton;
    tblView2Column2: TcxGridDBBandedColumn;
    zqrHslPrd: TZReadOnlyQuery;
    dsHslPrd: TDataSource;
    btnSPKSelesai: TButton;
    cxColComplete: TcxGridDBBandedColumn;
    dsDetailKirim: TDataSource;
    zqrDetailKirim: TZReadOnlyQuery;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsHP_Kirim: TDataSource;
    zqrHP_Kirim: TZReadOnlyQuery;
    cxGridDBTableView2no_mo: TcxGridDBColumn;
    cxGridDBTableView2no_spk: TcxGridDBColumn;
    cxGridDBTableView2qty_spk: TcxGridDBColumn;
    cxGridDBTableView2qty_prod: TcxGridDBColumn;
    cxGridDBTableView2qty_kirim: TcxGridDBColumn;
    cxGridDBTableView2qty_terima: TcxGridDBColumn;
    ScrollBox1: TScrollBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1no_hsl_prod: TcxGridDBColumn;
    cxGrid2DBTableView1tanggal: TcxGridDBColumn;
    cxGrid2DBTableView1qty_prod: TcxGridDBColumn;
    cxGrid2DBTableView1user: TcxGridDBColumn;
    cxGrid2DBTableView1user_dept: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel6: TcxLabel;
    zqrDetailTerima: TZReadOnlyQuery;
    dsDetailTerima: TDataSource;
    btnRefresh: TButton;
    btnEditSPK: TButton;
    tblView2qty_produksi: TcxGridDBBandedColumn;
    tblView2qty_kirim: TcxGridDBBandedColumn;
    tblView2qty_terima: TcxGridDBBandedColumn;
    btnCetakExcel: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxsSpkSelesai: TcxStyle;
    btnLihat: TButton;
    cxLabel3: TcxLabel;
    nxGrd: TNextGrid;
    nxColQtySPK: TNxNumberColumn;
    nxColQtyProd: TNxNumberColumn;
    nxColQtyKirim: TNxNumberColumn;
    nxColQtyTerima: TNxNumberColumn;
    chkUkuranA5: TcxCheckBox;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxrPeletan: TcxRadioButton;
    tblView2Column1: TcxGridDBBandedColumn;
    tblView2Column3: TcxGridDBBandedColumn;
    tblView2Column4: TcxGridDBBandedColumn;
    cxMemo1: TcxMemo;
    btnED: TButton;
    Button1: TButton;
    cxsPlusMinux: TcxSpinEdit;
    chkBOM: TcxCheckBox;
    GroupBox2: TGroupBox;
    cxRbtBom: TcxRadioButton;
    cxRbtBomRef: TcxRadioButton;
    cxrCampurBahan: TcxRadioButton;
    frxBarCodeObject1: TfrxBarCodeObject;
    cxrGiling: TcxRadioButton;
    cxrRope: TcxRadioButton;
    Button2: TButton;
    Edit1: TEdit;
    cxrTrial: TcxRadioButton;
    cxMemo2: TcxMemo;
    dsSPKDet: TDataSource;
    zqrSPKDet: TZReadOnlyQuery;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1no_spk: TcxGridDBColumn;
    cxGrid1DBTableView1jenis_spk: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1jam: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1kode_mesin: TcxGridDBColumn;
    cxGrid1DBTableView1f_completed: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxGrid1DBTableView1f_app_prd: TcxGridDBColumn;
    cxGrid1DBTableView1nama_mesin: TcxGridDBColumn;
    cxGrid1DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid1DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid1DBTableView1satuan: TcxGridDBColumn;
    cxGrid1DBTableView1kategori: TcxGridDBColumn;
    cxGrid1DBTableView1subkategori: TcxGridDBColumn;
    cxGrid1DBTableView1qty_prod: TcxGridDBColumn;
    cxGrid1DBTableView1qty_baik: TcxGridDBColumn;
    cxGrid1DBTableView1qty_afkir: TcxGridDBColumn;
    cxGrid1DBTableView1qty_retur: TcxGridDBColumn;
    cxGrid1DBTableView1qty_reject: TcxGridDBColumn;
    cxGrid1DBTableView1qty_terima: TcxGridDBColumn;
    cxGrid1DBTableView1toleransi: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_p_mulai: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_p_selesai: TcxGridDBColumn;
    cxGrid1DBTableView1lain_lain: TcxGridDBColumn;
    cxGrid1DBTableView1ket_ppic: TcxGridDBColumn;
    cxGrid1DBTableView1berat_per_unit: TcxGridDBColumn;
    cxGrid1DBTableView1s_berat: TcxGridDBColumn;
    cxGrid1DBTableView1s_panjang: TcxGridDBColumn;
    cxGrid1DBTableView1panjang: TcxGridDBColumn;
    cxGrid1DBTableView1lebar: TcxGridDBColumn;
    cxGrid1DBTableView1s_lebar: TcxGridDBColumn;
    cxGrid1DBTableView1diameter_dalam: TcxGridDBColumn;
    cxGrid1DBTableView1diameter_luar: TcxGridDBColumn;
    cxGrid1DBTableView1s_diameter_dalam: TcxGridDBColumn;
    cxGrid1DBTableView1s_diameter_luar: TcxGridDBColumn;
    cxGrid1DBTableView1no_spk_induk: TcxGridDBColumn;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    cxGridDBBandedColumn7: TcxGridDBBandedColumn;
    cxGridDBBandedColumn8: TcxGridDBBandedColumn;
    cxGridDBBandedColumn9: TcxGridDBBandedColumn;
    cxGridDBBandedColumn10: TcxGridDBBandedColumn;
    cxGridDBBandedColumn11: TcxGridDBBandedColumn;
    cxGridDBBandedColumn12: TcxGridDBBandedColumn;
    cxGridDBBandedColumn13: TcxGridDBBandedColumn;
    cxGridDBBandedColumn14: TcxGridDBBandedColumn;
    cxGridDBBandedColumn15: TcxGridDBBandedColumn;
    cxGridDBBandedColumn16: TcxGridDBBandedColumn;
    cxGridDBBandedColumn17: TcxGridDBBandedColumn;
    cxGridDBBandedColumn18: TcxGridDBBandedColumn;
    cxGridDBBandedColumn19: TcxGridDBBandedColumn;
    cxGridDBBandedColumn20: TcxGridDBBandedColumn;
    cxGridDBBandedColumn21: TcxGridDBBandedColumn;
    cxGridDBBandedColumn22: TcxGridDBBandedColumn;
    cxGridDBBandedColumn23: TcxGridDBBandedColumn;
    cxGridDBBandedColumn24: TcxGridDBBandedColumn;
    cxGridDBBandedColumn25: TcxGridDBBandedColumn;
    cxGridDBBandedColumn26: TcxGridDBBandedColumn;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridLevel5: TcxGridLevel;
    btnCetakSPKTua: TButton;
    cxTblSPKTua: TcxGridDBTableView;
    cxGrdSPKTuaLevel1: TcxGridLevel;
    cxGrdSPKTua: TcxGrid;
    dsSPKTua: TDataSource;
    zqrSPKTua: TZReadOnlyQuery;
    cxTblSPKTuano_spk: TcxGridDBColumn;
    cxTblSPKTuatanggal: TcxGridDBColumn;
    cxTblSPKTuakode_brg: TcxGridDBColumn;
    cxTblSPKTuadeskripsi: TcxGridDBColumn;
    cxTblSPKTuaqty_spk: TcxGridDBColumn;
    cxTblSPKTuaqty_prod: TcxGridDBColumn;
    cxTblSPKTuaqty_serahterima: TcxGridDBColumn;
    tblView2Column5: TcxGridDBBandedColumn;
    tblView2Column6: TcxGridDBBandedColumn;
    tblView2Column7: TcxGridDBBandedColumn;
    btnBukaSPK: TButton;
    tblView2Column8: TcxGridDBBandedColumn;
    tblView2Column9: TcxGridDBBandedColumn;
    pnlPilCetSPK2: TPanel;
    Button3: TButton;
    Button4: TButton;
    GroupBox3: TGroupBox;
    cxRbtBJ: TcxRadioButton;
    GroupBox4: TGroupBox;
    cxRadioButton9: TcxRadioButton;
    cxRadioButton10: TcxRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlPilCetSPKExit(Sender: TObject);
    procedure btnCetakSPK2Click(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnCetakSPKClick(Sender: TObject);
    procedure btnHapusSPKClick(Sender: TObject);
    procedure tblViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tblView2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSPKSelesaiClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnEditSPKClick(Sender: TObject);
    procedure btnCetakExcelClick(Sender: TObject);
    procedure tblView2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btnLihatClick(Sender: TObject);
    procedure btnEDClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tblView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnCetakSPKTuaClick(Sender: TObject);
    procedure tblView2EditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure btnBukaSPKClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    aCol: TcxGridDBBandedColumn;
    lstSPKTutup: TStringList;
  public
    procedure CreateParams(var Params: TCreateParams);
  end;

var
  frmMasterSchedule: TfrmMasterSchedule;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum, unFrmLapSPK, unFrmProsesMS,
  unFrmTrsSPKAssembly_NEW, unFrmEditSPK;

{$R *.dfm}

procedure TfrmMasterSchedule.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmMasterSchedule.FormCreate(Sender: TObject);
begin
  SetWindowLong(Handle, GWL_EXSTYLE, WS_EX_APPWINDOW);  
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  //btnProsesClick(nil);
  lstSPKTutup := TStringList.Create;
end;

procedure TfrmMasterSchedule.btnProsesClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  with zqrSPK do begin
    Close;
    SQL.Text := cxMemo1.Lines.Text;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
  end;

  with zqrSPKDet do begin
    Close;
    SQL.Text := cxMemo2.Lines.Text;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmMasterSchedule.FormShow(Sender: TObject);
var
  i : integer;
begin

  //aCol := tblView.CreateColumn;
  aCol := tblView2.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'SPK Selesai';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; //TcxBooleanValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Width := 90;
  aCol.Position.BandIndex := 0;
  aCol.Position.ColIndex := 0;

  if aplikasi.UserDept <> 'PPIC' then begin
    btnSPKSelesai.Visible := False;
    btnHapusSPK.Visible := False;
    btnKeluar.Left := btnCetakSPK.Left;
    btnCetakSPK2.Visible := False;
    btnEditSPK.Visible := False;
    btnBukaSPK.Visible := False;
  end;

  cxrBrgJadi.Checked := True;
end;

procedure TfrmMasterSchedule.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMasterSchedule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmMasterSchedule.pnlPilCetSPKExit(Sender: TObject);
begin
  pnlPilCetSPK.Visible := False;
end;

procedure TfrmMasterSchedule.btnCetakSPK2Click(Sender: TObject);
var
  q: TZQuery;
begin
  pnlPilCetSPK2.Visible := True;
  
  {
  q := OpenRS('SELECT f_ed, ed FROM tbl_barang WHERE kode = ''%s''',
    [zqrSPK.FieldByName('kode_brg').AsString]);

  if q.FieldByName('f_ed').AsInteger = 1 then begin
    if q.FieldByName('ed').IsNull then begin
      MsgBox('ED untuk barang ini belum ada. Silahkan hubungi bagian QAC atau DC.');
      q.Close;
      Abort;
    end;
  end;
  
  q.Close;  
  chkUkuranA5.Checked := True;
  if zqrSPK.FieldByName('jenis_spk').AsString = 'COMPOUND / MIXING' then begin
    cxRbtBom.Enabled := False;
    cxRbtBomRef.Enabled := True;
    cxRbtBomRef.Checked := True;
  end
  else begin
    cxRbtBom.Enabled := True;
    cxRbtBom.Checked := True;
    // cxRbtBomRef.Enabled := False;
  end;

  if zqrSPK.FieldByName('jenis_spk').AsString = 'MIXING / COMPOUND' then
    cxrMixingComp.Checked := True
  else if zqrSPK.FieldByName('jenis_spk').AsString = 'BARANG JADI' then
    cxrBrgJadi.Checked := True
  else if zqrSPK.FieldByName('jenis_spk').AsString = 'PELETAN' then
    cxrPeletan.Checked := True
  else if zqrSPK.FieldByName('jenis_spk').AsString = 'TAMBAHAN' then
    cxrTmbh.Checked := True
  else if zqrSPK.FieldByName('jenis_spk').AsString = 'SPK GILING' then
    cxrGiling.Checked := True
  else if zqrSPK.FieldByName('jenis_spk').AsString = 'SPK TRIAL' then
    cxrTrial.Checked := True;

  if (Pos('ROPE', zqrSPK.FieldByName('deskripsi').AsString) > 0) or
    (Pos('TAMPAR', zqrSPK.FieldByName('deskripsi').AsString) > 0) then
    cxrRope.Checked := True;

  pnlPilCetSPK.Visible := True;
  }
end;

procedure TfrmMasterSchedule.btnBatalClick(Sender: TObject);
begin
  pnlPilCetSPK.Visible := False;
end;

procedure TfrmMasterSchedule.btnCetakSPKClick(Sender: TObject);
var
  // 07-05-2014
  //f: TfrmLapUmum;
  f: TFrmLapSPK;
  bar: TFrxBarcodeView;
  fRef, mmOB: TfrxMemoView;
  sNoSPK, sNoMO: string;
  qSPK, qFormula, qcampur: TZQuery;
  JmlCampur: real;
begin

  // 07-05-2014
  //f := TfrmLapUmum.Create(Self);
  f := TfrmLapSPK.Create(Self);

  sNoSPK := zqrSPK.FieldByName('no_spk').AsString;
  sNoMO := zqrSPK.FieldByName('no_mo').AsString;

  // ambil f_wip, f_wip_awal dan f_wip_akhir
  qSPK := OpenRS('select f_wip, f_wip_awal, f_wip_akhir FROM tbl_spk WHERE no_spk = ''%s''',[sNoSPK]);

  if cxrBrgJadi.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        Open;
        if aplikasi.UkuranSPK <> 'A5' then begin
          if chkUkuranA5.Checked then begin

            {$DEFINE SPK1205}
            {$IFDEF SPK1205}
            f.rptSPK_A5_12052016.ShowReport(True);
            {$ELSE}
            f.rptSPK_A5.ShowReport(True);
            {$ENDIF}

            if qSPK.FieldByName('f_wip').AsInteger = 1 then begin
              if (qSPK.FieldByName('f_wip_awal').AsInteger = 1) and
                (qSPK.FieldByName('f_wip_akhir').AsInteger = 0) then begin

                  if cxRbtBom.Checked then begin
                    f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
                    f.rptBOM_fixed.ShowReport(True);
                  end
                  else if cxRbtBomRef.Checked then begin
                    f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
                    bar  := f.rptBOm_fixed.FindObject('Barcode1') as TfrxBarCodeView;
                    fRef := f.rptBom_fixed.FindObject('Memo142') as TfrxMemoView;

                    bar.Visible := False;
                    fRef.Visible := True;

                    f.rptBOM_fixed.ShowReport(True)
                  end;

                end;
              if (qSPK.FieldByName('f_wip_awal').AsInteger = 0) and
                (qSPK.FieldByName('f_wip_akhir').AsInteger = 1) then begin
                f.rptST_A5.ShowReport(True);
              end;
            end
            else begin
              //f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
              //f.zqrSPKBom.Open;
              //f.rptST_A5.ShowReport(True);
              //f.rptBOM_fixed.ShowReport(True);
            end;

            if qSPK.FieldByName('f_wip').AsInteger = 0 then
              f.rptST_A5.ShowReport(True);
          end
          else begin
            f.rptSPK_NEW.ShowReport(True);
            f.rptSPK2.ShowReport(True);
          end;
        end
        else begin
          f.rptSPK_A5.ShowReport(True);
          f.rptST_A5.ShowReport(True);
        end;

        if qSPK.FieldByName('f_wip').AsInteger = 0 then begin
          {$DEFINE SPKBOM}
          {$IFDEF SPKBOM}
          if cxRbtBom.Checked then begin
            f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
            f.rptBOM_fixed.ShowReport(True);
          end
          else if cxRbtBomRef.Checked then begin
            f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
            bar  := f.rptBOm_fixed.FindObject('Barcode1') as TfrxBarCodeView;
            fRef := f.rptBom_fixed.FindObject('Memo142') as TfrxMemoView;

            bar.Visible := False;
            fRef.Visible := True;

            f.rptBOM_fixed.ShowReport(True)
          end;
          {$ELSE}
          if cxRbtBom.Checked then
            f.rptBOM.ShowReport(True)
          else if cxRbtBomRef.Checked then
            f.rptBOM_REF.ShowReport(True);
          {$ENDIF}
        end;

        f.Release;
        chkUkuranA5.Checked := False;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end
  else if cxrMixingComp.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        Open;
        f.rptSPK_MIXCOMP.ShowReport(True);
        f.rptST_A5.ShowReport(True);
        f.rptBOM_fixed.ShowReport(True);
        f.Release;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end
  else if cxrPeletan.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNOMO + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        Open;
        f.rptSPK_PEL.ShowReport(True);
        f.rptST_A5.ShowReport(True);
        f.Release;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end
  else if cxrGiling.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + ''' AND no_mo + ''' + sNoMO + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        Open;
        f.rptSPK_Giling.ShowReport(True);
        f.rptST_A5.ShowReport(True);

        if cxRbtBom.Checked then begin
          f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
          f.rptBOM_fixed.ShowReport(True);
        end
        else if cxRbtBomRef.Checked then begin
          f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
          bar  := f.rptBOm_fixed.FindObject('Barcode1') as TfrxBarCodeView;
          fRef := f.rptBom_fixed.FindObject('Memo142') as TfrxMemoView;

          bar.Visible := False;
          fRef.Visible := True;

          f.rptBOM_fixed.ShowReport(True)
        end;
        f.Release;

      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
    
  end
  else if cxrRope.Checked then begin
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        Open;

        {$DEFINE SPK1205}
        {$IFDEF SPK1205}

        // hide atau show barcode berdasarkan jenis spk yang dipilih
        // reference atau barang jadi
        bar := f.rptSPKRope_12052016.FindObject('Barcode1') as TfrxBarCodeView;
        if cxRbtBomRef.Checked then
          bar.Visible := True
        else if cxRbtBom.Checked then
          bar.Visible := True;

        f.rptSPKRope_12052016.ShowReport(True);
        {$ELSE}
        f.rptSPKRope.ShowReport(True);
        {$ENDIF}

        if qSPK.FieldByName('f_wip').AsInteger = 1 then begin
          if (qSPK.FieldByName('f_wip_awal').AsInteger = 1) and
            (qSPK.FieldByName('f_wip_akhir').AsInteger = 0) then
            f.rptBOM_fixed.ShowReport(True);
          if (qSPK.FieldByName('f_wip_awal').AsInteger = 0) and
            (qSPK.FieldByName('f_wip_akhir').AsInteger = 1) then
            f.rptST_A5.ShowReport(True);
        end
        else begin
          f.rptST_A5.ShowReport(True);
          f.rptBOM_fixed.ShowReport(True);
        end;

        f.Release;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end
  else if cxrTmbh.Checked then begin
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        Open;
        f.rptSPKAssem.ShowReport(True);
        f.rptST_A5.ShowReport(True);
        f.rptBOM_fixed.ShowReport(True);
        f.Release;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end
  else if cxrCampurBahan.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        Open;

        //f.zqrSPKBom_CB.SQL.Strings[3] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        //f.zqrSPKBom_CB.Open;

        // hitung jumlah campur
        qcampur := OpenRS('SELECT SUM(qty) qty FROM tbl_bom_det WHERE no_spk = ''%s''',
          [sNoSPK]);
        JmlCampur := qcampur.FieldByName('qty').AsFloat;
        qcampur.Close;
        qcampur := OpenRS('SELECT SUM(qty) qty FROM tbl_formula_subdet WHERE kode = %s',
          [zqrSPK.FieldByName('kode_brg').AsString]);
        JmlCampur := JmlCampur / qcampur.FieldByName('qty').AsFloat;
        qcampur.Close;

        f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        f.zqrSPKBom.Open;

        // field opsi bahan - 26-05-2016
        mmOB := f.rptSPK_CB.FindObject('mmOpsiBahan') as TfrxMemoView;
        mmOB.Text := Copy(f.zqrSPKBom.FieldByName('kode_formula').AsString,1,1);
        mmOB := f.rptSPK_CB.FindObject('mmJmlCampur') as TfrxMemoView;
        mmOB.Text := FormatFloat('#,#0.00',JmlCampur);

        f.rptSPK_CB.ShowReport(True);
        f.rptST_A5.ShowReport(True);

        {$DEFINE SPKBOM}
        {$IFDEF SPKBOM}
        if cxRbtBom.Checked then begin
          f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
          f.rptBOM_fixed.ShowReport(True);
        end
        else if cxRbtBomRef.Checked then begin
          f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
          bar  := f.rptBOm_fixed.FindObject('Barcode1') as TfrxBarCodeView;
          fRef := f.rptBom_fixed.FindObject('Memo142') as TfrxMemoView;

          bar.Visible := False;
          fRef.Visible := True;

          f.rptBOM_fixed.ShowReport(True)
        end;
        {$ELSE}
        if cxRbtBom.Checked then
          f.rptBOM.ShowReport(True)
        else if cxRbtBomRef.Checked then
          f.rptBOM_REF.ShowReport(True);
        {$ENDIF}

        f.Release;
        chkUkuranA5.Checked := False;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end
  else if cxrTrial.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = f_cetak + 1 ' +
        'WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + ''' AND no_mo = ''' + sNoMO + '''');
        Open;
        f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
        f.zqrSPKBom.Open;
        f.rptSPK_Trial.ShowReport(True);

        {$DEFINE SPKBOM}
        {$IFDEF SPKBOM}
        if cxRbtBom.Checked then begin
          f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
          f.rptBOM_fixed.ShowReport(True);
        end
        else if cxRbtBomRef.Checked then begin
          f.zqrSPKBom.SQL.Strings[5] := 'WHERE a.no_spk = ''' + sNoSPK + '''';
          bar  := f.rptBOm_fixed.FindObject('Barcode1') as TfrxBarCodeView;
          fRef := f.rptBom_fixed.FindObject('Memo142') as TfrxMemoView;

          bar.Visible := False;
          fRef.Visible := True;

          f.rptBOM_fixed.ShowReport(True)
        end;
        {$ELSE}
        if cxRbtBom.Checked then
          f.rptBOM.ShowReport(True)
        else if cxRbtBomRef.Checked then
          f.rptBOM_REF.ShowReport(True);
        {$ENDIF}

        f.Release;
        chkUkuranA5.Checked := False;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

  btnBatalClick(nil);

end;

procedure TfrmMasterSchedule.btnHapusSPKClick(Sender: TObject);
var
  i,j: integer;
  sNoSPK, sNoSO, sKodeBrg, sNoMO: string;
  q, q2, q3, qhp, qmo: TZQuery;
  qty_spk: real;
begin

  sNoSPK := zqrSPK.FieldByName('no_spk').AsString;
  q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''', [sNoSPK]);
  if q.FieldByName('f_completed').AsInteger = 1 then begin
    MsgBox('SPK ini tidak bisa dibatalkan karena sudah selesai.');
  end
  else begin
  
    // cek apakah spk sudah di approval mbak april
    // jika sudah maka tidak bisa dibatalkan
    if q.FieldByName('f_prd_check').AsInteger = 1 then begin
      MsgBox('SPK ini tidak bisa dibatalkan karena sudah di Approval oleh PRD.');
      q.Close;
      Abort;
    end;

    qhp := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_spk = ''%s''', [sNoSPK]);
    if not qhp.IsEmpty then begin
      MsgBox('SPK ini tidak dapat dibatalkan karena sudah ada hasil produksi.');
    end
    else begin
      j := unTools.QBox(Self, 'Batalkan SPK : ' + sNoSPK + ' ?', 'Pembatalan SPK');

      if j = IDNO then begin
        q.Close;
        Abort;
      end;

      sNoSO := zqrSPK.FieldByName('no_so').AsString;
      sKodeBrg := zqrSPK.FieldByName('kode_brg').AsString;
      sNoMO := zqrSPK.FieldByName('no_mo').AsString;

      qty_spk := zqrSPK.FieldByName('qty').AsFloat;

      try
        dm.zConn.StartTransaction;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_spk WHERE no_spk = ''' +
          sNoSPK + '''');

        // 22-11-2017
        // hapus spk anak
        q2 := OpenRS('SELECT * FROM tbl_spk WHERE no_spk_induk = ''%s''',[sNoSPK]);
        if not q2.IsEmpty then begin
          while not q2.Eof do begin
            dm.zConn.ExecuteDirect('DELETE FROM tbl_spk WHERE no_spk = ''' + q2.FieldByName('no_spk').AsString + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_mo WHERE no_spk = ''' + q2.FieldByName('no_spk').AsString + '''');
            q2.Next ;
         end;
        end;
        q2.Close;

        qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' AND kode_brg = ''%s'' AND ' +
          '(no_mutasi IS NULL) and (no_spk IS NULL)',
          [sNoSO, sKodeBrg]);

        if not qmo.IsEmpty then begin
          qmo.Edit;
          qmo.FieldByName('qty_mo').AsFloat :=
            qmo.FieldByName('qty_mo').AsFloat + qty_spk;
          qmo.Post;

          dm.zConn.ExecuteDirect(
            Format('DELETE FROM tbl_mo WHERE no_spk = ''%s'' AND ' +
              'kode_brg = %s AND no_mo = ''%s''',
              [sNoSPK, sKodeBrg, sNoMO])
          );

        end
        else begin
          qmo.Close;
          qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' AND no_spk = ''%s''', [sNoSO, sNoSPK]);
          if not qmo.IsEmpty then begin
            qmo.Edit;
            qmo.FieldByName('no_spk').Clear;
            qmo.FieldByName('f_spk').AsInteger := 0;
            qmo.Post;
          end;
        end;

        qmo.Close;
        
        dm.zConn.Commit;

        MsgBox('SPK dengan No. : ' + sNoSPK + ' berhasil dihapus.');

        btnRefreshClick(nil);
        btnRefreshClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    qhp.Close;
  end;
end;

procedure TfrmMasterSchedule.tblViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with zqrHslPrd do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;
end;

procedure TfrmMasterSchedule.tblView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
begin
  if zqrHP_Kirim.Active then zqrHP_Kirim.Close;
  if zqrHslPrd.Active then zqrHslPrd.Close;
  if zqrDetailKirim.Active then zqrDetailKirim.Close;

  nxGrd.Cell[nxColQtySPK.Index,0].AsFloat := 0;
  nxGrd.Cell[nxColQtyProd.Index,0].AsFloat := 0;
  nxGrd.Cell[nxColQtyKirim.Index,0].AsFloat := 0;
  nxGrd.Cell[nxColQtyTerima.Index,0].AsFloat := 0;
  {
  Screen.Cursor := crSQLWait;

  with zqrHP_Kirim do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrHslPrd do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrDetailKirim do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrDetailTerima do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  nxGrd.Cell[nxColQtySPK.Index,0].AsFloat := zqrSPK.FieldByName('qty').AsFloat;
  q := OpenRS('SELECT SUM(IFNULL(qty_prod,0)) qty_prod FROM tbl_hsl_prd WHERE no_spk = ''%s''',
    [zqrSPK.FieldByName('no_spk').AsString]);
  nxGrd.Cell[nxColQtyProd.Index,0].AsFloat := q.FieldByName('qty_prod').AsFloat;
  q.Close;

  q := OpenRS('SELECT SUM(IFNULL(qty,0)) qty FROM tbl_trs_kirim WHERE no_spk = ''%s'' ',
    [zqrSPK.FieldByName('no_spk').AsString]);
  nxGrd.Cell[nxColQtyKirim.Index,0].AsFloat := q.FieldByName('qty').AsFloat;
  q.Close;

  q := OpenRS('SELECT SUM(IFNULL(qty,0)) qty FROM tbl_trsmasuk_det ' +
    'WHERE no_spk = ''%s'' AND kode_brg = %s',
    [zqrSPK.FieldByName('no_spk').AsString, zqrSPK.FieldByName('kode_brg').AsString]);
  nxGrd.Cell[nxColQtyTerima.Index,0].AsFloat := q.FieldByName('qty').AsFloat;
  q.Close;

  q := nil;

  Screen.Cursor := crDefault;
  }
end;

procedure TfrmMasterSchedule.btnSPKSelesaiClick(Sender: TObject);
var
  sNoSPK, chk: string;
  q: TZQuery;
  lst: TStringList;
  i, colChk: Integer;
begin
  if lstSPKTutup.Count = 0 then begin
    MsgBox('Belum ada No. SPK yang dipilih.');
    Abort;
  end;
  
  Screen.Cursor := crSQLWait;

  { 22-06-2016
  lst := TStringList.Create;
  colChk := 26;

  for i := 0 to tblView2.DataController.RecordCount - 1 do begin
    if VarIsNull(tblView2.DataController.Values[i,colChk]) then
      chk := ''
    else
      chk := tblView2.DataController.Values[i,colChk];

    if chk = 'T' then begin
      lst.Add(tblView2.DataController.Values[i,tblView2no_spk.Index]);
    end;
  end;
  }
  
  {
  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin
      // ambil hasil produksi
      sNoSPK := lst.Strings[i];
      q := OpenRS('SELECT * FROM v_spk_vs_hp WHERE no_spk = ''%s''', [sNoSPK]);
      if q.FieldByName('qty_spk').AsFloat > q.FieldByName('qty_prod').AsFloat then begin
        MsgBox('SPK: ' + sNoSPK + ' Total hasil produksi belum memenuhi Qty. SPK.');
        q.Close;
        Abort;
      end
    end;
  end;
  }

  if lstSPKTutup.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to lstSPKTutup.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_completed = 1,' +
          'tgl_tutup = now(), user_tutup = ' + QuotedStr(aplikasi.NamaUser) +
          ' WHERE no_spk = ' +QuotedStr(lstSPKTutup.Strings[i])
          );
      end;

      dm.zConn.Commit;
      Screen.Cursor := crDefault;
      MsgBox('Penutupan SPK sudah berhasil. Tekan tombol Refresh untuk melihat perubahan.');
      //btnRefreshClick(nil);
      lstSPKTutup.Clear;
    except
      on E: Exception do begin
        Screen.Cursor := crDefault;
        MsgBox('Error: ' + E.Message);
        lstSPKTutup.Clear;
        dm.zConn.Rollback;
      end;
    end;
  end;

  {
  if lst.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to lst.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_completed = 1,' +
          'tgl_tutup = now(), user_tutup = ' + QuotedStr(aplikasi.NamaUser) +
          ' WHERE no_spk = ' +QuotedStr(lst.Strings[i])
          );
      end;

      dm.zConn.Commit;
      Screen.Cursor := crDefault;
      MsgBox('Penutupan SPK sudah berhasil.');
      btnRefreshClick(nil);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        Screen.Cursor := crDefault;
        dm.zConn.Rollback;
      end;
    end;
  end;
  }
  
  {
  sNoSPK := zqrSPK.FieldByName('no_spk').AsString;

  // ambil hasil produksi
  q := OpenRS('SELECT * FROM v_spk_vs_hp WHERE no_spk = ''%s''', [sNoSPK]);

  if q.FieldByName('qty_spk').AsFloat > q.FieldByName('qty_prod').AsFloat then begin
    MsgBox('Total hasil produksi belum memenuhi Qty. SPK.');
  end
  else begin
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_completed = 1 WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;

      MsgBox('SPK dengan No. : ' + sNoSPK + ' sudah berhasil ditutup (complete).');
    except
    end;
  end;
  q.Close;
  }
end;

procedure TfrmMasterSchedule.btnRefreshClick(Sender: TObject);
var
  sql, bm: string;

begin
  try
    Screen.Cursor := crSQLWait;
    zqrSPK.Close;
    zqrSPK.ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    zqrSPK.ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    zqrSPK.Open;
    Screen.Cursor := crDefault;
  except
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMasterSchedule.btnEditSPKClick(Sender: TObject);
var
  f: TfrmEditSPK;
  q,z : TZQuery;
  s, sNoSPK, sJenisSPK: string;
  i, recIdx: integer;
begin
  try
    sNoSPK := zqrSPK.FieldByName('no_spk').AsString;
    sJenisSPK := zqrSPK.FieldByName('jenis_spk').AsString;

    q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''',[sNoSPK]);
    if q.FieldByName('f_completed').AsInteger = 1 then begin
      MsgBox('SPK ini sudah selesai (complete).');
    end
    else begin
      f:= TfrmEditSPK.Create(self);
      f.NoSPK := q.FieldByName('no_spk').AsString;
      f.ShowModal;
    end;

    q.Close;
  except
  end;
end;

procedure TfrmMasterSchedule.btnCetakExcelClick(Sender: TObject);
begin
  try
  //frxReport1.ShowReport(True);
  //ExportGridToExcel(aplikasi.AppPath + '\tmp_ms.xls', cxGrid1);
  ExportGridToExcel(aplikasi.AppPath + '\tmp_ms.xls', cxGrid6);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_ms.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmMasterSchedule.tblView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  try
  if ARecord.Values[cxColComplete.Index] = 1 then begin
    AStyle := cxsSpkSelesai;
  end;
  except
  end;
end;

procedure TfrmMasterSchedule.btnLihatClick(Sender: TObject);
var
  q: TZQuery;
  sst,awal,hb,ha,hr: Double;
begin
  Screen.Cursor := crSQLWait;

  with zqrHP_Kirim do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrHslPrd do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrDetailKirim do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrDetailTerima do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  nxGrd.Cell[nxColQtySPK.Index,0].AsFloat := zqrSPK.FieldByName('qty').AsFloat;
  q := OpenRS('SELECT SUM(IFNULL(qty_prod,0)) qty_prod FROM tbl_hsl_prd WHERE no_spk = ''%s''',
    [zqrSPK.FieldByName('no_spk').AsString]);
  nxGrd.Cell[nxColQtyProd.Index,0].AsFloat := q.FieldByName('qty_prod').AsFloat;
  q.Close;

  q := OpenRS('SELECT SUM(IFNULL(qty,0)) qty FROM tbl_trs_kirim WHERE no_spk = ''%s'' ',
    [zqrSPK.FieldByName('no_spk').AsString]);
  nxGrd.Cell[nxColQtyKirim.Index,0].AsFloat := q.FieldByName('qty').AsFloat;
  q.Close;

  q := OpenRS('SELECT SUM(IFNULL(qty,0)) qty FROM tbl_trsmasuk_det ' +
    'WHERE no_spk = ''%s'' AND kode_brg = ''%s''',
    [zqrSPK.FieldByName('no_spk').AsString, zqrSPK.FieldByName('kode_brg').AsString]);
  nxGrd.Cell[nxColQtyTerima.Index,0].AsFloat := q.FieldByName('qty').AsFloat;
  q.Close;

  q := nil;

  {
  sst := zqrSPK.FieldByName('susut').AsString;
  hb := zqrSPK.FieldByName('qty_baik').AsFloat;
  ha := zqrSPK.FieldByName('qty_afkir').AsFloat;
  hr := zqrSPK.FieldByName('qty_retur').AsFloat;

  q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' AND kode_brg = %s',
    [zqrSPK.FieldByName('no_so').AsString, zqrSPK.FieldByName('kode_brg').AsString]);
  awal := q.FieldByName('qty').AsFloat;
  q.CLose;
  }

  //if 

  Screen.Cursor := crDefault;
end;

procedure TfrmMasterSchedule.btnEDClick(Sender: TObject);
var
  q: TZQuery;
begin
  try
  MsgBox(zqrSPK.FieldByName('kode_brg').AsString);
  q := OpenRS('SELECT f_ed, ed FROM tbl_barang WHERE kode =''%s''',
      [zqrSPK.FieldByName('kode_brg').AsString]);

  if not q.FieldByName('ed').IsNull then begin
    TBlobField(q.FieldByName('ed')).SaveToFile(aplikasi.AppPath + 'tmp.pdf');
    try
      ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp.pdf'), nil, nil, SW_SHOWNORMAL);
    except
    end;
  end;
  q.Close;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      q.Close;
    end;
  end;

end;

procedure TfrmMasterSchedule.Button2Click(Sender: TObject);
var
  ii: Integer;
begin
  MsgBox(IntToStr(tblView2.DataController.ItemCount));

  for ii := 0 to tblView2.DataController.ItemCount - 1 do begin
    MsgBox(IntToStr(ii) + ': ' + tblView2.DataController.GetDisplayText(0, ii));
    //MsgBox(tblView2.DataController.Values[0,ii]);
  end;
  
end;

procedure TfrmMasterSchedule.tblView2CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //
end;

procedure TfrmMasterSchedule.btnCetakSPKTuaClick(Sender: TObject);
begin
  try
    Screen.Cursor := crSQLWait;
    zqrSPKTua.Open;
    ExportGridToExcel(aplikasi.AppPath + '\tmp_spkold.xls', cxGrdSPKTua);
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_spkold.xls'),''
      ,nil,SW_SHOWNORMAL);
    Screen.Cursor := crDefault;
    zqrSPKTua.Close;
  except
    on E: Exception do begin
      Screen.Cursor := crDefault;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmMasterSchedule.tblView2EditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  try
    if AItem.Index = 31 then
      if AItem.EditValue = 'T' then
        lstSPKTutup.Add(zqrSPK.FieldByName('no_spk').AsString)
      else begin
        if lstSPKTutup.IndexOf(zqrSPK.FieldByName('no_spk').AsString) > -1 then
          lstSPKTutup.Delete(lstSPKTutup.IndexOf(zqrSPK.FieldByName('no_spk').AsString));
      end;
  except
  end;
end;

procedure TfrmMasterSchedule.btnBukaSPKClick(Sender: TObject);
var
  sNoSPK, chk: string;
  q: TZQuery;
  lst: TStringList;
  i, colChk: Integer;
begin
  if lstSPKTutup.Count = 0 then begin
    MsgBox('Belum ada No. SPK yang dipilih.');
    Abort;
  end;
  
  Screen.Cursor := crSQLWait;

  if lstSPKTutup.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to lstSPKTutup.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_completed = 0,' +
          'tgl_tutup = null, user_tutup = ' + QuotedStr('BUKA: ' + aplikasi.NamaUser) +
          ' WHERE no_spk = ' +QuotedStr(lstSPKTutup.Strings[i])
          );
      end;

      dm.zConn.Commit;
      Screen.Cursor := crDefault;
      MsgBox('Pembukaan SPK sudah berhasil. Tekan tombol Refresh untuk melihat perubahan.');
      //btnRefreshClick(nil);
      lstSPKTutup.Clear;
    except
      on E: Exception do begin
        Screen.Cursor := crDefault;
        MsgBox('Error: ' + E.Message);
        lstSPKTutup.Clear;
        dm.zConn.Rollback;
      end;
    end;
  end;
end;

procedure TfrmMasterSchedule.Button3Click(Sender: TObject);
var
  f: TfrmLapSPK;
begin
  {
  if (zqrSPK.FieldByName('no_spk_induk').IsNull) or
    (zqrSPK.FieldByName('no_spk_induk').AsString = '') then begin

    MsgBox('Mohon pilih SPK Induk.');
    Abort;

  end;}

  f := TfrmLapSPK.Create(Self);
  //22-12-2017
  f.zqrSpkKtgH.ParamByName('no_so').AsString := zqrSPK.FieldByName('no_so').AsString;
  f.zqrSpkKtgH.ParamByName('no_mo').AsString := zqrSPK.FieldByName('no_mo').AsString;
  f.zqrSpkKtgH.ParamByName('spk').AsString := zqrSPK.FieldByName('no_spk').AsString;

  f.zqrSpkKtgD.ParamByName('no_so').AsString := zqrSPK.FieldByname('no_so').AsString;
  //f.zqrSpkKtgD.ParamByName('no_mo').AsString := zqrSPK.FieldByname('no_mo').AsString;

  f.zqrBJ.ParamByName('no_so').AsString := zqrSPK.FieldByname('no_so').AsString;
  //f.zqrBJ.ParamByName('no_mo').AsString := zqrSPK.FieldByname('no_mo').AsString;

  f.zqrBomDet.ParamByName('no_so').AsString := zqrSPK.FieldByName('no_so').AsString;
  f.zqrBomDet.ParamByName('no_mo').AsString := zqrSPK.FieldByName('no_mo').AsString;

   f.zqrBomDet1.ParamByName('no_so').AsString := zqrSPK.FieldByName('no_so').AsString;
  f.zqrBomDet1.ParamByName('no_mo').AsString := zqrSPK.FieldByName('no_mo').AsString;

  f.zqrBomFG.ParamByName('no_so').AsString := zqrSPK.FieldByName('no_so').AsString;
  //f.zqrBomFG.ParamByName('no_mo').AsString := zqrSPK.FieldByName('no_mo').AsString;

  f.zqrKonversi.ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
  f.zqrSpkKtgH.Open;
  f.zqrSpkKtgD.Open;
  f.zqrBomDet.Open;
  f.zqrBomDet1.Open;
  f.zqrKonversi.Open ;
  f.zqrBJ.Open ;
  f.zqrBomFG.Open;
  f.rptSpkKtg.ShowReport(True);
end;

procedure TfrmMasterSchedule.Button4Click(Sender: TObject);
begin
  pnlPilCetSPK2.Visible := False;
end;

end.
