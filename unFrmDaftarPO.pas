unit unFrmDaftarPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel;

type
  TfrmDaftarPO = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1id: TcxGridDBColumn;
    cxGrid2DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGrid2DBTableView1keterangan: TcxGridDBColumn;
    cxGrid2DBTableView1mata_uang: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    zqrDaftarPO: TZReadOnlyQuery;
    dsDaftarPO: TDataSource;
    zPODet: TZReadOnlyQuery;
    dsPOdet: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1no_fobj: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1kode_supp: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1pembayaran: TcxGridDBColumn;
    cxGridDBTableView1f_completed: TcxGridDBColumn;
    cxGridDBTableView1host: TcxGridDBColumn;
    cxGridDBTableView1ppn: TcxGridDBColumn;
    cxGridDBTableView1currency: TcxGridDBColumn;
    cxGridDBTableView1f_approval: TcxGridDBColumn;
    cxGridDBTableView1kode_alamat_kirim: TcxGridDBColumn;
    cxGridDBTableView1no_penawaran: TcxGridDBColumn;
    cxGridDBTableView1tgl_app: TcxGridDBColumn;
    cxGridDBTableView1user_app: TcxGridDBColumn;
    cxGridDBTableView1divisi: TcxGridDBColumn;
    cxGridDBTableView1f_cetak: TcxGridDBColumn;
    cxGridDBTableView1digit: TcxGridDBColumn;
    cxGridDBTableView1no_so: TcxGridDBColumn;
    cxGridDBTableView1ex_customer: TcxGridDBColumn;
    cxGridDBTableView1nopol: TcxGridDBColumn;
    cxGridDBTableView1driver: TcxGridDBColumn;
    cxGridDBTableView1f_terima_sj: TcxGridDBColumn;
    cxGridDBTableView1f_samples: TcxGridDBColumn;
    cxGridDBTableView1user_request: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1no_internal: TcxGridDBColumn;
    cxGridDBTableView1no_po_pajak: TcxGridDBColumn;
    cxGridDBTableView1tgl_required: TcxGridDBColumn;
    cxGridDBTableView1jenis_po: TcxGridDBColumn;
    cxGridDBTableView1jenis_po2: TcxGridDBColumn;
    cxGridDBTableView1jam: TcxGridDBColumn;
    cxGridDBTableView1keterangan: TcxGridDBColumn;
    cxGridDBTableView1f_revisi: TcxGridDBColumn;
    cxGridDBTableView1user_edit: TcxGridDBColumn;
    cxGridDBTableView1tgl_edit: TcxGridDBColumn;
    cxGridDBTableView1tgl_input: TcxGridDBColumn;
    cxGridDBTableView1f_void: TcxGridDBColumn;
    cxGridDBTableView1user_void: TcxGridDBColumn;
    btnCetak: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarPO: TfrmDaftarPO;

implementation

uses
  unDm, unTools, unAplikasi, unFrmUtama, unFrmPurchaseOrderKTG, unFrmLapUmum;

{$R *.dfm}

procedure TfrmDaftarPO.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarPO.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrDaftarPO do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zPODet.Close ;
  zPODet.Open ;
end;

procedure TfrmDaftarPO.btnBaruClick(Sender: TObject);
var
 f : TfrmPurchaseOrderKTG ;
begin
  inherited;
  f := TfrmPurchaseOrderKTG.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarPO.Close;
  zqrDaftarPO.Open;
end;

procedure TfrmDaftarPO.btnEditClick(Sender: TObject);
var
  f : TfrmPurchaseOrderKTG ;
begin
  inherited;

    f := TfrmPurchaseOrderKTG.Create(self);
    f.Jenis := 'edit';
    f.NoPO:= zqrDaftarPO.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrDaftarPO.Close;
    zqrDaftarPO.Open;

end;

procedure TfrmDaftarPO.btnSimpanClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
begin
  inherited;
  if zqrDaftarPO.FieldByName('f_approval').AsInteger = 0 then Abort;

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [zqrDaftarPO.FieldByName('no_bukti').AsString]);
  if q.IsEmpty then begin
    MsgBox('PO ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_approval').AsInteger = 0 then begin
      MsgBox('PO Ini belum di Approval.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;

  f := TFrmLapUmum.Create(Self);
  //if zqrDaftarPO.FieldByName('no_bukti').AsString <> '' then begin
    with f do begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := zqrDaftarPO.FieldByName('no_bukti').AsString;
      zqrPO.Open;
    end;
    f.Release;
  //end;
end;

procedure TfrmDaftarPO.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
    if (zqrDaftarPO.FieldByName('user_app').AsString=Aplikasi.NamaUser) or (Aplikasi.NamaUser='ADMIN') then
   btnBatal.Enabled := True else btnBatal.Enabled := False ;

   if (zqrDaftarPO.FieldByName('user').AsString=Aplikasi.NamaUser) or (Aplikasi.NamaUser='ADMIN') then
   btnHapus.Enabled := True else btnHapus.Enabled := False ;

   if (zqrDaftarPO.FieldByName('f_void').asInteger =1) then begin
   btnEdit.Enabled := False;
   btnHapus.Enabled := False ;
   end
    else begin
     btnEdit.Enabled := True ;
      btnHapus.Enabled := True ;
     end;
end;

procedure TfrmDaftarPO.btnBatalClick(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
   q := OpenRS('SELECT count(no_po) as jumlah FROM tbl_spbb_head WHERE no_po = ''%s''', [zqrDaftarPO.FieldByName('no_bukti').AsString]);

  if q.FieldByName('jumlah').AsInteger = 1 then  begin
    MsgBox('Maaf,Sudah Di Buat LPB.');
    end
  else begin
    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_approval=0,user_app="" WHERE no_bukti = ''' + zqrDaftarPO.FieldByName('no_bukti').AsString + '''');
    dm.zConn.Commit;
    MsgBox('PO berhasil di Unapprove');
    btnProsesClick(nil);
  end;
end;

procedure TfrmDaftarPO.btnHapusClick(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
   q := OpenRS('SELECT * from tbl_po_head WHERE no_bukti = ''%s''', [zqrDaftarPO.FieldByName('no_bukti').AsString]);

   if q.FieldByName('f_approval').AsInteger = 1 then  begin
    MsgBox('Maaf,PO sudah diapprove.');
    end
  else begin
    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_void=1,user_void='''+ Aplikasi.NamaUser + ''' WHERE no_bukti = ''' + zqrDaftarPO.FieldByName('no_bukti').AsString + '''');
    dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head SET f_po=0 WHERE no_bukti = ''' + zqrDaftarPO.FieldByName('no_fobj').AsString + '''');
    dm.zConn.Commit;
    dm.zConn.Commit;
    MsgBox('PO berhasil di Void');
    btnProsesClick(nil);
  end;
end;

procedure TfrmDaftarPO.btnCetakClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
begin
  inherited;
  if zqrDaftarPO.FieldByName('f_approval').AsInteger = 0 then Abort;

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [zqrDaftarPO.FieldByName('no_bukti').AsString]);
  if q.IsEmpty then begin
    MsgBox('PO ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_approval').AsInteger = 0 then begin
      MsgBox('PO Ini belum di Approval.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;

  f := TFrmLapUmum.Create(Self);
  //if zqrDaftarPO.FieldByName('no_bukti').AsString <> '' then begin
    with f do begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := zqrDaftarPO.FieldByName('no_bukti').AsString;
      zqrPO.Open;
      rptPO.ShowReport(True);
    end;
    f.Release;
  //end;
end;

end.
