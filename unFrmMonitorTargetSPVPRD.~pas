unit unFrmMonitorTargetSPVPRD;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, ZAbstractRODataset, ZDataset, cxSpinEdit,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxTimeEdit, cxGridExportLink, ShellAPI, cxCheckBox;

type
  TfrmMonitorTargetSPVPRD = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxTblH: TcxGridDBTableView;
    cxGrdHLevel1: TcxGridLevel;
    cxGrdH: TcxGrid;
    zqrMonSPV: TZReadOnlyQuery;
    dsMonSPV: TDataSource;
    cxTblHtanggal: TcxGridDBColumn;
    cxTblHmesin: TcxGridDBColumn;
    cxTblHshift2: TcxGridDBColumn;
    cxTblHjam_efektif: TcxGridDBColumn;
    cxTblColPencapaian: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrDet: TZReadOnlyQuery;
    dsDet: TDataSource;
    btnInputKet: TButton;
    Panel1: TPanel;
    cxLabel3: TcxLabel;
    cxdTglKet: TcxDateEdit;
    cxLabel4: TcxLabel;
    btnClosePanel: TButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    nxGrd: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColKet: TNxTextColumn;
    nxColJam1: TNxTimeColumn;
    cxLabel7: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxtMesin: TcxTextEdit;
    cxtShift: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxsPencapaian: TcxSpinEdit;
    cxtKeterangan: TcxTextEdit;
    cxtmJam1: TcxTimeEdit;
    btnBatalKet: TButton;
    Button4: TButton;
    cxLabel9: TcxLabel;
    cxsJamEfektif: TcxSpinEdit;
    btnKeluar2: TButton;
    cxLabel10: TcxLabel;
    cxGridDBTableView1no_spk: TcxGridDBColumn;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1qty_prod: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxtmJam2: TcxTimeEdit;
    cxLabel11: TcxLabel;
    Button1: TButton;
    nxColHapus: TNxImageColumn;
    nxColJam2: TNxTimeColumn;
    cxtId_Ref: TcxTextEdit;
    cxTblHColumn1: TcxGridDBColumn;
    cxChkNoTarget: TcxCheckBox;
    cxTblHColumn2: TcxGridDBColumn;
    btnSimpan2: TButton;
    cxTblHColumn3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    cxLabel12: TcxLabel;
    NxTimeColumn1: TNxTimeColumn;
    zqrKet: TZReadOnlyQuery;
    dsKet: TDataSource;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1keterangan: TcxGridDBColumn;
    cxGrid2DBTableView1jam1: TcxGridDBColumn;
    cxGrid2DBTableView1jam2: TcxGridDBColumn;
    nxColTgl1: TNxDateColumn;
    nxColTgl2: TNxDateColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure btnClosePanelClick(Sender: TObject);
    procedure btnInputKetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblHStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btnBatalKetClick(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure cxTblHFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure cxtKeteranganKeyPress(Sender: TObject; var Key: Char);
    procedure cxtmJam1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitorTargetSPVPRD: TfrmMonitorTargetSPVPRD;

implementation

uses unAplikasi, unDm, unTools, unFrmUtama;

{$R *.dfm}

procedure TfrmMonitorTargetSPVPRD.btnProsesClick(Sender: TObject);
var
  sTgl1, sTgl2: string;
  q: TZQuery;
  sql, spv: string;
begin
  inherited;
  Screen.Cursor := crSQLWait;

  spv := '';
  q := OpenRS('SELECT * FROM tbl_mesin WHERE spv_prd = ''%s'' LIMIT 1',
    [Aplikasi.NamaUser]);
  if not q.IsEmpty then
    spv := q.FieldByName('spv_prd').AsString;
  q.Close;

  sTgl1 := FormatDateMySQL(cxdTgl1.Date);
  sTgl2 := FormatDateMySQL(cxdTgl2.Date);
  dm.zConn.ExecuteDirect('call sp_target_spv2(''' + sTgl1 + ''',''' + sTgl2 + ''')');

  zqrMonSPV.Close;

  if cxChkNoTarget.Checked then
    zqrMonSPV.SQL.Text := 'select a.tanggal, a.mesin, a.shift2, ' +
      'if (a.satuan=''KG'', sum(a.qty_prod_kg / a.target_kg), sum(a.qty_prod / a.target)) jam_efektif, ' +
      'if(a.satuan=''KG'', sum(a.qty_prod_kg / a.target_kg) / a.jam_kerja * 100, ' +
      'sum(a.qty_prod / a.target) / a.jam_kerja * 100) pencapaian, ' +
      'a.jam_kerja, b.spv_prd, if(ifnull(c.pencapaian,0)=0,0,1) f_lap ' +
      'from _tmp_target_ a ' +
      'left join tbl_mesin b on b.kode = a.mesin ' +
      'left join tbl_laptargetspv_head c on c.tanggal = a.tanggal and c.mesin = a.mesin and c.shift = a.shift2 $ ' +
      'group by a.tanggal, a.mesin, a.shift2, a.jam_kerja, b.spv_prd, c.pencapaian ' +
      'having ((sum(a.qty_prod_kg / a.target_kg) / a.jam_kerja * 100) < 85) or ((sum(a.qty_prod / a.target) / a.jam_kerja * 100) < 85)'
  else
    zqrMonSPV.SQL.Text := 'select a.tanggal, a.mesin, a.shift2, ' +
      'if (a.satuan=''KG'', sum(a.qty_prod_kg / a.target_kg), sum(a.qty_prod / a.target)) jam_efektif, ' +
      'if(a.satuan=''KG'', sum(a.qty_prod_kg / a.target_kg) / a.jam_kerja * 100, ' +
      'sum(a.qty_prod / a.target) / a.jam_kerja * 100) pencapaian, ' +
      'a.jam_kerja, b.spv_prd, if(ifnull(c.pencapaian,0)=0,0,1) f_lap ' +
      'from _tmp_target_ a ' +
      'left join tbl_mesin b on b.kode = a.mesin ' +
      'left join tbl_laptargetspv_head c on c.tanggal = a.tanggal and c.mesin = a.mesin and c.shift = a.shift2 $ ' +
      'group by a.tanggal, a.mesin, a.shift2, a.jam_kerja, b.spv_prd, c.pencapaian';

  {
  if cxChkNoTarget.Checked then
    zqrMonSPV.SQL.Text := 'select a.tanggal, a.mesin, a.shift2, sum(qty_prod_kg / target_per_jam_kg) jam_efektif, ' +
      'sum(qty_prod_kg / target_per_jam_kg) / jam_kerja * 100 pencapaian, ' +
      'jam_kerja, b.spv_prd, if(ifnull(c.pencapaian,0)=0,0,1) f_lap ' +
      'from _tmp_target_ a ' +
      'left join tbl_mesin b on b.kode = a.mesin ' +
      'left join tbl_laptargetspv_head c on c.tanggal = a.tanggal and c.mesin = a.mesin and c.shift = a.shift2 $' +
      'group by a.tanggal, a.mesin, a.shift2, jam_kerja, b.spv_prd, c.pencapaian ' +
      'having (sum(qty_prod_kg / target_per_jam_kg) / jam_kerja * 100) < 85'
  else
    zqrMonSPV.SQL.Text := 'select a.tanggal, a.mesin, a.shift2, sum(qty_prod_kg / target_per_jam_kg) jam_efektif, ' +
      'sum(qty_prod_kg / target_per_jam_kg) / jam_kerja * 100 pencapaian, ' +
      'jam_kerja, b.spv_prd, if(ifnull(c.pencapaian,0)=0,0,1) f_lap ' +
      'from _tmp_target_ a ' +
      'left join tbl_mesin b on b.kode = a.mesin ' +
      'left join tbl_laptargetspv_head c on c.tanggal = a.tanggal and c.mesin = a.mesin and c.shift = a.shift2 $' +
      'group by a.tanggal, a.mesin, a.shift2, jam_kerja, c.pencapaian';
  }

  sql := zqrMonSPV.SQL.Text;
  if spv <> '' then
    sql := StringReplace(sql, '$', ' WHERE b.spv_prd = ''' + spv + ''' ', [rfReplaceAll])
  else
    sql := StringReplace(sql, '$', ' ', [rfReplaceAll]);
  zqrMonSPV.SQL.Text := sql;

  zqrMonSPV.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmMonitorTargetSPVPRD.btnClosePanelClick(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
end;

procedure TfrmMonitorTargetSPVPRD.btnInputKetClick(Sender: TObject);
var
  q, qd, qw: TZQuery;
  i: Integer;
begin
  inherited;
  cxdTglKet.Date := zqrMonSPV.FieldByName('tanggal').AsDateTime;
  cxtMesin.Text := zqrMonSPV.FieldByName('mesin').AsString;
  cxtShift.Text := zqrMonSPV.FieldByName('shift2').AsString;
  cxsPencapaian.Value := zqrMonSPV.FieldByName('pencapaian').AsFloat;

  // cek apakah sudah pernah dimasukkan
  q := OpenRS('select * from tbl_laptargetspv_head where tanggal = ''%s'' and mesin = ''%s'' and shift = ''%s''',
    [
      FormatDateMySQL(cxdTglKet.Date),
      cxtMesin.Text,
      cxtShift.Text
    ]);
  if not q.IsEmpty then begin
    qw := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' AND nm_comp = ''%s''',
      [aplikasi.NamaUser, 'EditTargetSPV']);

    if not qw.IsEmpty then begin
      if qw.FieldByName('wwn').AsString = '1' then begin
        qd := OpenRS('select keterangan, date(jam1) tgl1, time(jam1) jam1, date(jam2) tgl2, time(jam2) jam2 from tbl_laptargetspv_det where id_ref = ' +
          q.FieldByName('id').AsString);
        nxGrd.ClearRows;
        while not qd.Eof do begin
          i := nxGrd.AddRow();
          nxGrd.Cell[nxColKet.Index, i].AsString := qd.FieldByName('keterangan').AsString;
          nxGrd.Cell[nxColJam1.Index, i].AsDateTime := qd.FieldByName('jam1').AsDateTime;
          nxGrd.Cell[nxColJam2.Index, i].AsDateTime := qd.FieldByName('jam2').AsDateTime;
          nxGrd.Cell[nxColTgl1.Index, i].AsDateTime := qd.FieldByName('tgl1').AsDateTime;
          nxGrd.Cell[nxColTgl2.Index, i].AsDateTime := qd.FieldByName('tgl2').AsDateTime;
          qd.Next;
        end;
        qd.Close;
      end
      else begin
        MsgBox('Entry laporan sudah dilakukan.');
        Abort;
      end;
    end
    else begin
      MsgBox('Entry laporan sudah dilakukan.');
      Abort;
    end;
  end;
  q.Close;

  Panel1.Visible := True;
end;

procedure TfrmMonitorTargetSPVPRD.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Aplikasi.TanggalServer);
  cxdTgl2.Date := LDOM(aplikasi.TanggalServer);
end;

procedure TfrmMonitorTargetSPVPRD.cxTblHStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
  try

    // sudah mutasi
    if (ARecord.Values[cxTblColPencapaian.Index] < 85) then begin
      AStyle := cxStyle1;
    end;

  except
  end;
end;

procedure TfrmMonitorTargetSPVPRD.btnBatalKetClick(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
  cxtKeterangan.Text := '';
  nxGrd.ClearRows;
  cxtmJam1.Text := '00:00';
  cxtmJam1.Text := '00:00';
end;

procedure TfrmMonitorTargetSPVPRD.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMonitorTargetSPVPRD.cxTblHFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  try
    zqrDet.Close;
    zqrDet.ParamByName('tanggal').AsDate := zqrMonSPV.FieldByName('tanggal').AsDateTime;
    zqrDet.ParamByName('mesin').AsString := zqrMonSPV.FieldByName('mesin').AsString;
    zqrDet.ParamByName('shift').AsString := zqrMonSPV.FieldByName('shift2').AsString;
    zqrDet.Open;

    zqrKet.Close;
    zqrKet.ParamByName('tanggal').AsDate := zqrMonSPV.FieldByName('tanggal').AsDateTime;
    zqrKet.ParamByName('mesin').AsString := zqrMonSPV.FieldByName('mesin').AsString;
    zqrKet.ParamByName('shift').AsString := zqrMonSPV.FieldByName('shift2').AsString;
    zqrKet.Open;
    
  except
  end;
end;

procedure TfrmMonitorTargetSPVPRD.Button1Click(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrdH);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmMonitorTargetSPVPRD.Button4Click(Sender: TObject);
var
  q: TZQuery;
  id_ref, i: Integer;
begin
  inherited;
  if Trim(cxtKeterangan.Text) = '' then Abort;

  i := nxGrd.AddRow();
  nxGrd.Cell[nxColKet.Index, i].AsString := Trim(cxtKeterangan.Text);
  if cxtmJam1.Time > cxtmJam2.Time then begin
    nxGrd.Cell[nxColJam1.Index, i].AsDateTime := cxtmJam1.Time;
    nxGrd.Cell[nxColJam2.Index, i].AsDateTime := cxtmJam2.Time;
    nxGrd.Cell[nxColTgl1.Index, i].AsDateTime := cxdTglKet.Date;
    nxGrd.Cell[nxColTgl2.Index, i].AsDateTime := cxdTglKet.Date + 1;
  end
  else begin
    nxGrd.Cell[nxColJam1.Index, i].AsDateTime := cxtmJam1.Time;
    nxGrd.Cell[nxColJam2.Index, i].AsDateTime := cxtmJam2.Time;
    nxGrd.Cell[nxColTgl1.Index, i].AsDateTime := cxdTglKet.Date;
    nxGrd.Cell[nxColTgl2.Index, i].AsDateTime := cxdTglKet.Date;
  end;

  cxtKeterangan.Text := '';
  cxtKeterangan.SetFocus;
end;

procedure TfrmMonitorTargetSPVPRD.btnSimpan2Click(Sender: TObject);
var
  q: TZQuery;
  id_ref, i: Integer;
  dt1, dt2: TDateTime;
  sJenis: string;
  y,m,d,hh,mm,ss, msec: word;
begin
  inherited;

  if nxGrd.RowCount = 0 then begin
    MsgBox('Detail keterangan harus di isi.');
    Abort;
  end;

  id_ref := 0;
  q := OpenRS('SELECT * FROM tbl_laptargetspv_head WHERE tanggal = ''%s'' and mesin = ''%s'' and shift = ''%s''',
    [
      FormatDateMySQL(cxdTglKet.Date),
      cxtMesin.Text,
      cxtShift.Text
    ]);
  if not q.IsEmpty then begin
    q.Edit;
    id_ref := q.FieldByName('id').AsInteger;
    sJenis := 'edit';
  end
  else begin
    q.Insert;
    sJenis := 'add';
  end;

  q.FieldByName('tanggal').AsDateTime := cxdTglKet.Date;
  q.FieldByName('mesin').AsString := cxtMesin.Text;
  q.FieldByName('shift').AsString := cxtShift.Text;
  q.FieldByName('pencapaian').AsFloat := cxsPencapaian.Value;
  q.Post;

  if sJenis = 'add' then begin
    if id_ref = 0 then begin
      q := OpenRS('SELECT MAX(id) maksid FROM tbl_laptargetspv_head');
      id_ref := q.FieldByName('maksid').AsInteger;
      q.Close;
    end;
  end;

  // hapus detail
  dm.zConn.ExecuteDirect('DELETE FROM tbl_laptargetspv_det WHERE id_ref = ' + IntToStr(id_ref));

  q.Close;
  q := OpenRS('SELECT * FROM tbl_laptargetspv_det WHERE id_ref = %s',[IntToStr(id_ref)]);
  q.Open;

  for i := 0 to nxGrd.RowCount - 1 do begin
    q.Insert;
    q.FieldByName('id_ref').AsInteger := id_ref;
    q.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index, i].AsString;

    DecodeDate(nxGrd.Cell[nxColTgl1.Index, i].AsDateTime, y, m, d);
    DecodeTime(nxGrd.Cell[nxColJam1.Index, i].AsDateTime, hh, mm, ss, msec);
    dt1 := EncodeDate(y,m,d) + EncodeTime(hh,mm,ss,msec);

    q.FieldByName('jam1').AsDateTime := dt1;

    DecodeDate(nxGrd.Cell[nxColTgl2.Index, i].AsDateTime, y, m, d);
    DecodeTime(nxGrd.Cell[nxColJam2.Index, i].AsDateTime, hh, mm, ss, msec);
    dt1 := EncodeDate(y,m,d) + EncodeTime(hh,mm,ss,msec);

    q.FieldByName('jam2').AsDateTime := dt1;
    q.FieldByName('user').AsString := aplikasi.NamaUser;
    q.Post;
  end;

  MsgBox('Laporan pencapaian target produksi sudah disimpan.');
  nxGrd.ClearRows;
  cxtKeterangan.Text := '';
  Panel1.Visible := False;

end;

procedure TfrmMonitorTargetSPVPRD.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  inherited;
  if ACol = nxColHapus.Index then begin
    nxGrd.DeleteRow(ARow);
  end;
end;

procedure TfrmMonitorTargetSPVPRD.cxtKeteranganKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    cxtmJam1.SetFocus;
end;

procedure TfrmMonitorTargetSPVPRD.cxtmJam1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    cxtmJam2.SetFocus;
end;

end.
