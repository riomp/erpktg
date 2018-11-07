unit unFrmTrsInsentifSopir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxSpinEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, ComCtrls, StdCtrls, ExtCtrls, ImgList,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, frxClass, frxDBSet, cxNavigator,
  frxExportXLS, scExcelExport, cxGridExportLink, ShellAPI, cxCheckBox;

type
  TfrmTrsInsentifSopir = class(TfrmTplTrans)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxtNoSPMB: TcxTextEdit;
    cxtNopol: TcxTextEdit;
    cxtTujuan: TcxTextEdit;
    btnTambah: TButton;
    cxLabel8: TcxLabel;
    cxdTglSJ: TcxDateEdit;
    cxsTotal: TcxSpinEdit;
    ImageList1: TImageList;
    btnCetak: TButton;
    zqrSJ: TZReadOnlyQuery;
    dsSJ: TDataSource;
    btnProses: TButton;
    zqrSopir: TZReadOnlyQuery;
    dsSopir: TDataSource;
    cxLabel11: TcxLabel;
    cxtNoBukti: TcxTextEdit;
    cxlNoSJ: TcxLookupComboBox;
    nxGrd: TNextGrid;
    NxImageColumn1: TNxImageColumn;
    nxNoUrut: TNxIncrementColumn;
    nxColTujuan: TNxTextColumn;
    nxColKernet: TNxTextColumn;
    nxColNoSJ: TNxTextColumn;
    nxColNoSPMB: TNxTextColumn;
    nxColTglSJ: TNxTextColumn;
    nxColSopir: TNxTextColumn;
    nxColNopol: TNxTextColumn;
    cxGrid1: TcxGrid;
    cxTblD: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    cxTblH: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    zqrH: TZReadOnlyQuery;
    dsH: TDataSource;
    zqrD: TZReadOnlyQuery;
    dsD: TDataSource;
    cxTblViewNoRefTblHno_bukti: TcxGridDBColumn;
    cxTblViewNoRefTblHnopol: TcxGridDBColumn;
    cxTblViewNoRefTblHsopir: TcxGridDBColumn;
    cxTblViewNoRefTblHuser: TcxGridDBColumn;
    cxTblViewNoRefTblHuser_dept: TcxGridDBColumn;
    cxTblViewNoRefTblHtgl_input: TcxGridDBColumn;
    cxTblViewNoRefTblHjam: TcxGridDBColumn;
    cxTblViewNoRefTblHinsentif_sopir: TcxGridDBColumn;
    cxTblViewNoRefTblHinsentif_kernet: TcxGridDBColumn;
    cxTblViewNoRefTblHjml_kirim: TcxGridDBColumn;
    cxTblViewNoRefTblHhost: TcxGridDBColumn;
    cxTblViewNoRefTblDid: TcxGridDBColumn;
    cxTblViewNoRefTblDno_bukti: TcxGridDBColumn;
    cxTblViewNoRefTblDtujuan: TcxGridDBColumn;
    cxTblViewNoRefTblDkernet: TcxGridDBColumn;
    cxTblViewNoRefTblDno_sj: TcxGridDBColumn;
    cxTblViewNoRefTblDno_spmb: TcxGridDBColumn;
    cxTblViewNoRefTblDtgl_sj: TcxGridDBColumn;
    cxLabel12: TcxLabel;
    cxdTgl3: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxdTgl4: TcxDateEdit;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    cxlbl1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxlbl2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    nxGrd1: TNextGrid;
    nxColChk: TNxCheckBoxColumn;
    nxColHapus: TNxImageColumn;
    nxColNo1: TNxIncrementColumn;
    nxColTgl: TNxTextColumn;
    nxColNoPolisi: TNxTextColumn;
    nxColNoSJ1: TNxTextColumn;
    nxColDriver: TNxTextColumn;
    nxColKernet1: TNxTextColumn;
    nxColAlamat: TNxTextColumn;
    nxColNoSpmb1: TNxTextColumn;
    nxColTglSPMB: TNxTextColumn;
    nxColTglRencKirim: TNxTextColumn;
    btnprocess: TButton;
    btnSimpan1: TButton;
    nxColInsDriver: TNxNumberColumn;
    nxColInsKernet: TNxNumberColumn;
    cxLabel14: TcxLabel;
    cxdTgl5: TcxDateEdit;
    cxdTgl6: TcxDateEdit;
    btnProsesCXGrid: TButton;
    cxnvgtr1: TcxNavigator;
    btnRefresh: TButton;
    Button2: TButton;
    cxlbl3: TcxLabel;
    cxLabel4: TcxLabel;
    cxlSopir: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxtKernet1: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxtInsSopir: TcxTextEdit;
    cxtInstKernet: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel15: TcxLabel;
    cxtKernet2: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxsInsSopir: TcxSpinEdit;
    cxsInsKernet1: TcxSpinEdit;
    cxsInsKernet2: TcxSpinEdit;
    cxtkernet: TcxTextEdit;
    cxtNoTrans: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridLevel3: TcxGridLevel;
    cxGridLevel4: TcxGridLevel;
    zqrInsHead: TZReadOnlyQuery;
    zqrInsDet: TZReadOnlyQuery;
    dsInsHead: TDataSource;
    dsInsDet: TDataSource;
    cxLabel18: TcxLabel;
    cxdTgl7: TcxDateEdit;
    cxLabel19: TcxLabel;
    cxdTgl8: TcxDateEdit;
    btnCetakLap: TButton;
    nxColNama: TNxTextColumn;
    cxTblViewNoRefGridDBTableView2id: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2no_bukti: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2tujuan: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2tgl_sj: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2no_sj: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2tgl_spmb: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2no_spmb: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2nopol: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2tgl_renc_kirim: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2nama: TcxGridDBColumn;
    cxLabel20: TcxLabel;
    cxtKernet3: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxsInsKernet3: TcxSpinEdit;
    nxColTujuanEx: TNxTextColumn;
    cxTblViewNoRefGridDBTableView1id: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1no_bukti: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1sopir: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1insentif_sopir: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1kernet1: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1insentif_kernet1: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1kernet2: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1insentif_kernet2: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1tgl_input: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1user: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1user_dept: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1kernet3: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView1insentif_kernet3: TcxGridDBColumn;
    cxTblViewNoRefGridDBTableView2tujuan_lain: TcxGridDBColumn;
    nxGrd2: TNextGrid;
    nxColCheck2: TNxCheckBoxColumn;
    nxColNo2: TNxIncrementColumn;
    nxColNoSJ2: TNxTextColumn;
    nxColNoPol2: TNxTextColumn;
    nxColCust2: TNxTextColumn;
    nxColTujuan2: TNxTextColumn;
    nxColTujuaLain2: TNxTextColumn;
    nxColNoSPMB2: TNxTextColumn;
    btnTambah1: TButton;
    nxColTglSJ2: TNxDateColumn;
    nxColTglSPMB2: TNxDateColumn;
    nxColTglRencKirim2: TNxDateColumn;
    cxlNamaSopir: TcxLookupComboBox;
    cxChkNamaSopir: TcxCheckBox;
    cxChkKernet1: TcxCheckBox;
    cxlNamaKernet1: TcxLookupComboBox;
    cxChkKernet2: TcxCheckBox;
    cxChkKernet3: TcxCheckBox;
    cxlNamaKernet2: TcxLookupComboBox;
    cxlNamaKernet3: TcxLookupComboBox;
    zqr1: TZReadOnlyQuery;
    ds1: TDataSource;
    zqr2: TZReadOnlyQuery;
    ds2: TDataSource;
    zqr3: TZReadOnlyQuery;
    ds3: TDataSource;
    zqr4: TZReadOnlyQuery;
    ds4: TDataSource;
    cxChkRekap: TcxCheckBox;
    cxLabel22: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cell(Sender: TObject; ACol, ARow: Integer);
    procedure cxtKernet1KeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblHFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnCetakClick(Sender: TObject);
    procedure btnprocessClick(Sender: TObject);
    procedure btnSimpan1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnProsesCXGridClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnCetakLapClick(Sender: TObject);
    procedure btnTambah1Click(Sender: TObject);
    procedure nxGrd1CellClick(Sender: TObject; ACol, ARow: Integer);
  private
    function CekSJ(sNoSJ : String; Row: Integer) : Boolean;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmTrsInsentifSopir: TfrmTrsInsentifSopir;

implementation

uses unAplikasi, unDm, unTools, NxCells, unFrmLapUmum, Clipbrd;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CTUJUAN : integer = 2;
  CKERNET : integer = 3;
  CNOSJ : integer = 4;
  CNOSPMB : Integer = 5;
  CTGLSJ : Integer = 6;
  CSOPIR : Integer = 7;
  CNOPOl : Integer = 8;

{$R *.dfm}

procedure TfrmTrsInsentifSopir.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
begin
  //inherited;
  if cxlNoSJ.Text = '' then begin
    MsgBox('No. Surat jalan masih kosong.');
    Abort;
  end;
  Screen.Cursor := crSQLWait;
  q := OpenRS('select c.no_bukti,c.tanggal,a.no_bukti as no_spmb, ' +
              'a.nopol,a.driver,b.nama from tbl_spmb_head a ' +
              'left join tbl_customer b on a.kode_customer=b.kode ' +
              'left join tbl_sj_head c on a.no_bukti=c.no_spmb ' +
              'where c.no_bukti is not null and c.no_bukti=''%s'' ' +
              'order by c.tanggal,a.nopol',[cxlNoSJ.Text]);
  if q.Eof then begin
    MsgBox('No. Surat Jalan tidak ditemukan.');
    cxlNoSJ.Text := '';
    cxlNoSJ.SetFocus;
    Screen.Cursor := crDefault;
    Abort;
  end
  else begin
    cxdTglSJ.EditValue := q.fieldByName('tanggal').AsDateTime;
    cxtNoSPMB.Text := q.fieldByName('no_spmb').AsString;
    cxtNopol.Text := q.fieldByName('nopol').AsString;
    cxlSopir.EditValue := q.fieldByName('driver').AsString;
    cxtTujuan.Text := q.fieldByName('nama').AsString;
    Screen.Cursor := crDefault;
    //cxtKernet.SetFocus;
  end;
  Screen.Cursor := crDefault;
end;


procedure TfrmTrsInsentifSopir.FormCreate(Sender: TObject);
var
  sNoTrs: String;
begin
  inherited;
  sNoTrs := GetLastFak('insentif');

  cxdTgl1.Date := Date - 1;
  cxdTgl2.Date := Date - 1;
  cxdTglTrs.date := Date;

  cxdTgl5.Date := Date;
  cxdTgl6.Date := Date;
  nxGrd1.ClearRows;

  zqrSopir.Open;
//  zqrSJ.open;
//  zqrH.open;

  zqrInsHead.Open;
  zqrInsDet.Open;
  zqr1.Open;
  zqr2.Open;
  zqr3.Open;
  zqr4.Open;

  cxtNoTrans.Text := sNoTrs;
  cxtNoTrans.Style.Color := clSkyBlue;

  nxGrd2.Cell[nxColTglSJ2.Index,0].AsDateTime := aplikasi.Tanggal;
  nxGrd2.Cell[nxColTglSPMB2.Index,0].AsDateTime := aplikasi.Tanggal;
  nxGrd2.Cell[nxColTglRencKirim2.Index,0].AsDateTime := aplikasi.Tanggal;
end;

procedure TfrmTrsInsentifSopir.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  ACol, ARow, i, j: Integer;
  sTglSJ, sNoSJ, tmp: string;
begin
  //inherited;
  if cxtKernet.Text = '' then begin
    MsgBox('Kernet harus di isi.');
    cxtKernet.SetFocus;
    Abort;
  end;

  if cxlNoSJ.Text = '' then Abort;



  sNoSJ := cxlNoSJ.Text;
  ARow := nxGrd.RowCount - 1;

  if not CekSJ(sNoSJ, ARow) then begin
    MsgBox('No SJ ini sudah ada.');
    ClearAll;
    Abort;
  end;

  if IntToStr(ARow) <> '0' then
  for i := 0 to nxGrd.RowCount - 2 do begin
    if (cxdTglSJ.Text <> Trim(nxGrd.Cell[CTGLSJ,i].asString)) then begin
      MsgBox('Tanggal SJ harus sama dengan inputan sebelumnya.');
      abort;
    end;
  end;

  for j := 0 to nxGrd.RowCount - 2 do begin
    if (cxlSopir.Text <> Trim(nxGrd.Cell[CSOPIR,j].asString)) then begin
      MsgBox('Nama sopir harus sama dengan inputan sebelumnya.');
      abort;
    end;
  end;

  sTglSJ := zqrSJ.FieldByName('tanggal').AsString;

  ARow := nxGrd.RowCount - 1;
  nxGrd.Cell[nxColTujuan.Index,ARow].AsString := cxtTujuan.Text;
  nxGrd.Cell[nxColKernet.Index,ARow].AsString := cxtKernet.Text;
  nxGrd.Cell[nxColNoSJ.Index,ARow].AsString := cxlNoSJ.Text;
  nxGrd.Cell[nxColNoSPMB.Index,ARow].AsString := cxtNoSPMB.Text;
  nxGrd.Cell[nxColSopir.Index,ARow].AsString := cxlSopir.Text;
  nxGrd.Cell[nxColTglSJ.Index,ARow].AsString := cxdTglSJ.Text;
  nxGrd.Cell[nxColNopol.Index,ARow].AsString := cxtNopol.Text;

  nxGrd.SelectCell(nxColTujuan.Index, nxGrd.LastAddedRow);
  nxGrd.SelectLastRow();

  nxGrd.AddRow();
  cxsTotal.EditValue := nxGrd.RowCount - 1;
  ClearAll;
  cxlNoSJ.SetFocus;
end;

function TfrmTrsInsentifSopir.CekSJ(sNoSJ : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sNoSJ = Trim(nxGrd.Cell[CNOSJ,i].asString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TfrmTrsInsentifSopir.cell(Sender: TObject; ACol, ARow: Integer);
begin
  inherited;
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[CTUJUAN, ARow].AsString) <> '' then begin

          nxGrd.DeleteRow(nxGrd.SelectedRow);
          nxNoUrut.Refresh();
          cxsTotal.EditValue := nxGrd.RowCount - 1;
          if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end;

  end;
end;

procedure TfrmTrsInsentifSopir.cxtKernet1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
    btnTambahClick(Self);
end;

procedure TfrmTrsInsentifSopir.ClearAll;
begin
  cxlNoSJ.Text := '';
  cxdTglSJ.Text := '';
  cxtNoSPMB.Text := '';
  cxtNopol.Text := '';
  cxlSopir.Text := '';
  cxtKernet.Text := '';
  cxtTujuan.Text := '';
  cxtNoTrans.Text := '';
  cxlSopir.Text := '';
  cxtKernet1.Text := '';
  cxtKernet2.Text := '';
  cxtKernet3.Text := '';
  cxsInsKernet1.Value := 0;
  cxsInsKernet2.Value := 0;
  cxsInsKernet3.Value := 0;
  cxsInsSopir.Value := 0;
end;

procedure TfrmTrsInsentifSopir.btnSimpanClick(Sender: TObject);
var
  sNoTrs: String;
  inshead, insdet: TZQuery;
  i: Integer;
begin
  //inherited;
  sNoTrs := GetLastFak('insentif');
  if cxtInsSopir.Text = '' then begin
    MsgBox('Insentif Sopir harus di isi.');
    abort;
  end;
  if cxtInstKernet.Text = '' then begin
    MsgBox('Insentif Kernet harus di isi.');
    abort;
  end;
  if cxsTotal.Text <> '0' then begin
    // proses simpan ke table insentifsopir head dan det
    try
      sNoTrs := GetLastFak('insentif');
      UpdateFaktur(Copy(sNoTrs,1,8));

      dm.zConn.StartTransaction;

      inshead := OpenRS('select * from tbl_insentifsopir_head WHERE no_bukti = ''%s''',[sNoTrs]);

      inshead.Insert;
      inshead.FieldByName('no_bukti').AsString := sNoTrs;
      inshead.FieldByName('nopol').AsString := nxGrd.Cell[nxColNopol.Index,0].AsString;;
      inshead.FieldByName('sopir').AsString := nxGrd.Cell[nxColSopir.Index,0].AsString;;
      inshead.FieldByName('user').AsString := aplikasi.NamaUser;
      inshead.FieldByName('user_dept').AsString := aplikasi.UserDept;
      inshead.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
      inshead.FieldByName('jam').AsString := aplikasi.JamString;
      inshead.FieldByName('insentif_sopir').AsFloat := cxtInsSopir.EditValue;
      inshead.FieldByName('insentif_kernet').AsFloat := cxtInstKernet.EditValue;
      inshead.FieldByName('jml_kirim').AsInteger := cxsTotal.EditValue;
      inshead.FieldByName('host').AsString := aplikasi.HostName;
      inshead.Post;
      inshead.Close;

      insdet := OpenRS('select * from tbl_insentifsopir_det where no_bukti = ''%s''',[sNoTrs]);
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CTUJUAN,i].AsString = '' then
          Continue;

          insdet.Insert;
          insdet.FieldByName('no_bukti').AsString := sNoTrs;
          insdet.FieldByName('tujuan').AsString := nxGrd.Cell[nxColTujuan.Index,i].AsString;
          insdet.FieldByName('kernet').AsString := nxGrd.Cell[nxColKernet.Index,i].AsString;
          insdet.FieldByName('no_sj').AsString:= nxGrd.Cell[nxColNoSJ.Index,i].AsString;
          insdet.FieldByName('no_spmb').AsString := nxGrd.Cell[nxColNoSPMB.Index,i].AsString;
          insdet.FieldByName('tgl_sj').AsDateTime := nxGrd.Cell[nxColTglSJ.Index,i].AsDateTime;
          insdet.Post;
      end;
      insdet.Close;

      dm.zConn.Commit;
      MsgBox('Data sudah disimpan dengan No. Insentif : ' + sNoTrs);
      ClearAll;
      nxGrd.ClearRows;
      cxsTotal.Text := '0';
      cxtInsSopir.Text := '0';
      cxtInstKernet.Text := '0';
      cxtNoBukti.Text := GetLastFak('insentif');
      zqrH.Close;
      zqrH.Open;
      
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end else begin
    MsgBox('Data masih kosong.');
  end;
end;

procedure TfrmTrsInsentifSopir.cxTblHFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if zqrD.Active then zqrD.Close;
  zqrD.ParamByName('no_bukti').AsString := zqrH.FieldByName('no_bukti').AsString;
  zqrD.Open;
end;

procedure TfrmTrsInsentifSopir.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
  Memo: TfrxMemoView;
begin
  inherited;
  if (cxdTgl5.Text = '') OR (cxdTgl6.Text = '') then begin
      MsgBox('Tanggal masih kosong.');
      abort;
  end;
  f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrInsentif.Close;
      Memo := rptInsentif.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := 'PERIODE ' + cxdTgl1.Text + ' - ' + cxdTgl2.Text;
      zqrInsentif.ParamByName('tgl1').AsString := cxdTgl1.Text;
      zqrInsentif.ParamByName('tgl2').AsString := cxdTgl2.Text;
      zqrInsentif.Open;
      rptInsentif.ShowReport(True);
      Release;
    end;
end;

procedure TfrmTrsInsentifSopir.btnprocessClick(Sender: TObject);
var
  q : TZQuery;
  i : Integer;
begin

  Screen.Cursor := crSQLWait;
  q := OpenRS('select distinct a.tanggal, a.nopol, a.driver, a.nama, a.alamat, ' +
              'a.no_bukti, c.no_bukti as no_spmb, c.tanggal as tgl_spmb, c.tgl_renc_krm as tgl_rencana_kirim ' +
              'from v_lap_sj a ' +
              'join tbl_history b on a.no_bukti = b.no_bukti and a.kode_brg = b.kode_brg join tbl_spmb_head c on c.no_bukti = a.no_spmb ' +
              'where a.tanggal  between ''%s'' and ''%s'' and a.no_bukti not in (select no_sj from tbl_insentif_sopir_det) order by a.driver,a.tanggal,a.nopol',[FormatDateTime('YYYY-MM-DD',cxdTgl1.date),FormatDateTime('YYYY-MM-DD',cxdTgl2.date)]);
  q.Open;
  if q.RecordCount > 1 then begin
    nxGrd1.ClearRows;
  end;

  nxGrd1.ClearRows;
  if not q.IsEmpty then begin
    while not q.Eof do begin
      i := nxGrd1.AddRow();
      nxGrd1.Cell[nxColTgl.Index, i].AsDateTime := q.FieldByName('tanggal').AsDateTime;
      nxGrd1.Cell[nxColNoPolisi.Index, i].AsString := q.FieldByName('nopol').AsString;
      nxGrd1.Cell[nxColDriver.Index, i].AsString := q.FieldByName('driver').AsString;
      nxGrd1.Cell[nxColNama.Index, i].AsString := q.FieldByName('nama').AsString;
      nxGrd1.Cell[nxColAlamat.Index, i].AsString := q.FieldByName('alamat').AsString;
      nxGrd1.Cell[nxColTujuanEx.Index, i].AsString := '-';
      nxGrd1.Cell[nxColNoSJ1.Index, i].AsString := q.FieldByName('no_bukti').AsString;
      nxGrd1.Cell[nxColNoSpmb1.Index, i].AsString := q.FieldByName('no_spmb').AsString;
      nxGrd1.Cell[nxColTglSPMB.Index, i].AsDateTime := q.FieldByName('tgl_spmb').AsDateTime;
      nxGrd1.Cell[nxColTglRencKirim.Index, i].AsDateTime := q.FieldByName('tgl_rencana_kirim').AsDateTime;
      q.Next;
    end;
  end;
  q.Close;

  Screen.Cursor := crDefault;
end;

procedure TfrmTrsInsentifSopir.btnSimpan1Click(Sender: TObject);
var
  i, j : Integer;
  q, qhead : TZQuery;
  sNoTrs : String;
  b: Boolean;
begin

  if cxlSopir.Text = '' then begin
    MsgBox('Nama Sopir masih kosong.');
    Abort;
  end
  else if cxsInsSopir.Value = 0 then begin
    MsgBox('Insentif Sopir tidak boleh 0.');
    Abort;
  end;
//  else if cxtKernet1.Text = '' then begin
//    MsgBox('Nama Kernet masih kosong');
//    Abort;
//  end
//  else if cxsInsKernet1.Value = 0 then begin
//    MsgBox('Insentif Kernet tidak boleh 0.');
//    Abort;
//  end;

  b := False;
  for j := 0 to nxGrd1.RowCount - 1 do begin
   if nxGrd1.Cell[nxColChk.Index,j].AsBoolean  then begin
     b := true;
     Break;
   end;
  end;

  if b = false then begin
   Msgbox('Detail insentif belum dipilih.');
   Abort;
  end;

  if nxGrd1.RowCount = 0 then begin
    MsgBox('Data belum ada.');
    Abort;
  end;


  try

    sNoTrs := GetLastFak('insentif');
    UpdateFaktur(Copy(sNoTrs,1,8));

    dm.zConn.StartTransaction;

    qhead := OpenRS('select * from tbl_insentif_sopir');
    qhead.Open;
      qhead.Insert;
      qhead.FieldByName('no_bukti').AsString := sNoTrs;
      qhead.FieldByName('sopir').AsString := cxlSopir.Text;
      qhead.FieldByName('kernet1').AsString := cxtKernet1.Text;
      qhead.FieldByName('kernet2').AsString := cxtKernet2.Text;
      qhead.FieldByName('kernet3').AsString := cxtKernet3.Text;
      qhead.FieldByName('insentif_sopir').AsFloat := cxsInsSopir.Value;
      qhead.FieldByName('insentif_kernet1').AsFloat := cxsInsKernet1.Value;
      qhead.FieldByName('insentif_kernet2').AsFloat := cxsInsKernet2.Value;
      qhead.FieldByName('insentif_kernet3').AsFloat := cxsInsKernet3.Value;
      qhead.FieldByName('tgl_input').AsDateTime := cxdTglTrs.EditValue;
      qhead.FieldByName('user').AsString := aplikasi.NamaUser;
      qhead.FieldByName('user_dept').AsString := aplikasi.UserDept;
      qhead.Post;
    qhead.Close;

    q := OpenRS('select * from tbl_insentif_sopir_det');
    q.Open;
    for i := 0 to nxGrd1.RowCount - 1 do begin
      if nxGrd1.Cell[nxColChk.Index,i].AsBoolean then begin
        q.Insert;
        q.FieldByName('no_bukti').AsString := sNoTrs;
        q.FieldByName('tgl_sj').AsDateTime := nxGrd1.Cell[nxColTgl.Index,i].AsDateTime;
        q.FieldByName('nopol').AsString := nxGrd1.Cell[nxColNoPolisi.Index,i].AsString;
        q.FieldByName('no_sj').AsString := nxGrd1.Cell[nxColNoSJ1.Index,i].AsString;
        q.FieldByName('tujuan').AsString := nxGrd1.Cell[nxColAlamat.Index,i].AsString;
        q.FieldByName('tujuan_lain').AsString := nxGrd1.Cell[nxColTujuanEx.Index,i].AsString;
        q.FieldByName('nama').AsString := nxGrd1.Cell[nxColNama.Index,i].AsString;
        q.FieldByName('no_spmb').AsString := nxGrd1.Cell[nxColNoSpmb1.Index,i].AsString;
        q.FieldByName('tgl_spmb').AsDateTime := nxGrd1.Cell[nxColTglSPMB.Index,i].AsDateTime;
        q.FieldByName('tgl_renc_kirim').AsDateTime := nxGrd1.Cell[nxColTglRencKirim.Index,i].AsDateTime;
        q.post;
      end;
    end;
    dm.zConn.Commit;
    nxGrd1.ClearRows;
    MsgBox('Data Insentif sopir sudah disimpan.');
    btnprocessClick(Self);
    ClearAll;
    cxtNoTrans.Text := GetLastFak('insentif');
    zqrInsHead.Close;
    zqrInsDet.Close;
    zqrInsHead.Open;
    zqrInsDet.Open;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
      Abort;
    end;
  end;
  q.Close;

end;

procedure TfrmTrsInsentifSopir.Button2Click(Sender: TObject);
begin
  inherited;

  try
  if FileExists('D:\tmpIns.xls') then
    DeleteFile('D:\tmpIns.xls');
  ExportGridToExcel('D:\tmpIns.xls', cxgrid2);
  ShellExecute(Handle,'open', PChar('D:\tmpIns.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MessageDlg('Error',mtWarning,[mbOk],0);
      //MessageBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmTrsInsentifSopir.btnProsesCXGridClick(Sender: TObject);
begin
  inherited;
  zqrInsHead.Close;
  zqrInsHead.ParamByName('tgl5').AsDate := cxdTgl5.Date;
  zqrInsHead.ParamByName('tgl6').AsDate := cxdTgl6.Date;
  zqrInsHead.Open;
end;

procedure TfrmTrsInsentifSopir.btnRefreshClick(Sender: TObject);
begin
  inherited;
  btnProsesCXGridClick(Self);
end;

procedure TfrmTrsInsentifSopir.btnCetakLapClick(Sender: TObject);
var
  f: TfrmLapUmum;
  Memo: TfrxMemoView;
begin
  inherited;
  if (cxdTgl7.Text = '') OR (cxdTgl8.Text = '') then begin
      MsgBox('Tanggal masih kosong.');
      abort;
  end;
  f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrRekapIns.Close;
      Memo := rptRekapIns.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := 'PERIODE ' + cxdTgl7.Text + ' - ' + cxdTgl8.Text;
      if cxChkRekap.Checked = True then begin
        zqrRekapIns.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrRekapIns.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrRekapIns.Open;
        rptRekapIns.ShowReport(True);
      end;


      zqrInsentif.Close;
      Memo := rptInsentif.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := 'PERIODE ' + cxdTgl7.Text + ' - ' + cxdTgl8.Text;

      if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = false) and (cxChkkernet2.Checked = false) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = true) and (cxChkkernet2.Checked = false) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
        zqrInsentif.SQL.Strings[7] := 'and a.kernet1 = ''' + cxlNamaKernet1.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = true) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
        zqrInsentif.SQL.Strings[7] := 'and a.kernet1 = ''' + cxlNamaKernet1.Text + ''' ';
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = true) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = true) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
        zqrInsentif.SQL.Strings[7] := 'and a.kernet1 = ''' + cxlNamaKernet1.Text + ''' ';
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
        zqrInsentif.SQL.Strings[9] := 'and a.kernet3 = ''' + cxlNamaKernet3.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = false) and (cxChkkernet1.Checked = true) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = true) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[7] := 'and a.kernet1 = ''' + cxlNamaKernet1.Text + ''' ';
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
        zqrInsentif.SQL.Strings[9] := 'and a.kernet3 = ''' + cxlNamaKernet3.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = false) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = true) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
        zqrInsentif.SQL.Strings[9] := 'and a.kernet3 = ''' + cxlNamaKernet3.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = false) and (cxChkkernet1.Checked = true) and (cxChkkernet2.Checked = false) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[7] := 'and a.kernet1 = ''' + cxlNamaKernet1.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = false) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = true) and (cxChkkernet1.Checked = false) and (cxChkkernet2.Checked = false) and (cxChkkernet3.Checked = true) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[6] := 'and a.sopir = ''' + cxlNamaSopir.Text + ''' ';
        zqrInsentif.SQL.Strings[9] := 'and a.kernet3 = ''' + cxlNamaKernet3.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = false) and (cxChkkernet1.Checked = true) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[7] := 'and a.kernet1 = ''' + cxlNamaKernet1.Text + ''' ';
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = false) and (cxChkkernet1.Checked = false) and (cxChkkernet2.Checked = true) and (cxChkkernet3.Checked = false) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[8] := 'and a.kernet2 = ''' + cxlNamaKernet2.Text + ''' ';
      end
      else if (cxChkNamaSopir.Checked = false) and (cxChkkernet1.Checked = false) and (cxChkkernet2.Checked = false) and (cxChkkernet3.Checked = true) then begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
        zqrInsentif.SQL.Strings[9] := 'and a.kernet3 = ''' + cxlNamaKernet3.Text + ''' ';
      end
      else begin
        zqrInsentif.ParamByName('tgl7').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl7.date);
        zqrInsentif.ParamByName('tgl8').AsString := FormatDateTime('YYYY-MM-DD',cxdTgl8.date);
      end;

      zqrInsentif.Open;
      rptInsentif.ShowReport(True);
      Release;
    end;
end;

procedure TfrmTrsInsentifSopir.btnTambah1Click(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qg: TZQuery;
begin
  inherited;

  if nxGrd1.RowCount = 0 then begin
    MsgBox('Klik tombol proses dulu untuk menambahkan data.');
    Abort;
  end;

  ACol := nxGrd1.SelectedColumn;

  nxGrd1.AddRow();
  ARow := nxGrd1.RowCount-1;
  nxGrd1.Cell[nxColChk.Index,ARow].AsBoolean := True;
  nxGrd1.Cell[nxColNoSJ1.Index,ARow].AsString := nxGrd2.Cell[nxColNoSJ2.Index,0].AsString;
  nxGrd1.Cell[nxColTgl.Index,ARow].AsString := nxGrd2.Cell[nxColTglSJ2.Index,0].AsString;
  nxGrd1.Cell[nxColNoPolisi.Index,ARow].AsString := nxGrd2.Cell[nxColNoPol2.Index,0].AsString;
  nxGrd1.Cell[nxColNama.Index,ARow].AsString := nxGrd2.Cell[nxColCust2.Index,0].AsString;
  nxGrd1.Cell[nxColAlamat.Index,ARow].AsString := nxGrd2.Cell[nxColTujuan2.Index,0].AsString;
  nxGrd1.Cell[nxColTujuanEx.Index,ARow].AsString := nxGrd2.Cell[nxColTujuaLain2.Index,0].AsString;
  nxGrd1.Cell[nxColNoSpmb1.Index,ARow].AsString := nxGrd2.Cell[nxColNoSPMB2.Index,0].AsString;
  nxGrd1.Cell[nxColTglSPMB.Index,ARow].AsString := nxGrd2.Cell[nxColTglSPMB2.Index,0].AsString;
  nxGrd1.Cell[nxColTglRencKirim.Index,ARow].AsString := nxGrd2.Cell[nxColTglRencKirim2.Index,0].AsString;
  MsgBox('Data berhasil ditambahkan.');
  nxGrd2.ClearRows;
  nxGrd2.AddRow();
  nxGrd2.Cell[nxColTglSJ2.Index,0].AsDateTime := aplikasi.Tanggal;
  nxGrd2.Cell[nxColTglSPMB2.Index,0].AsDateTime := aplikasi.Tanggal;
  nxGrd2.Cell[nxColTglRencKirim2.Index,0].AsDateTime := aplikasi.Tanggal;
end;

procedure TfrmTrsInsentifSopir.nxGrd1CellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  s: string;
begin
  inherited;
  s := '';

  s := nxGrd1.Cell[Acol,Arow].AsString;
  Clipboard.AsText := s;
end;

end.
