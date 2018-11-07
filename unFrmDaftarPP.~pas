unit unFrmDaftarPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxCheckBox,
  ZAbstractRODataset, ZDataset;

type
  TfrmDaftarPP = class(TfrmTplTrans)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrDaftarPP: TZReadOnlyQuery;
    dsDaftarPP: TDataSource;
    zPPDet: TZReadOnlyQuery;
    dsPPdet: TDataSource;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1id: TcxGridDBColumn;
    cxGrid2DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGrid2DBTableView1keterangan: TcxGridDBColumn;
    cxGrid2DBTableView1mata_uang: TcxGridDBColumn;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1tgl_diperlukan: TcxGridDBColumn;
    cxGridDBTableView1jam: TcxGridDBColumn;
    cxGridDBTableView1diajukan_oleh: TcxGridDBColumn;
    cxGridDBTableView1diajukan_dept: TcxGridDBColumn;
    cxGridDBTableView1level_kebutuhan: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1tgl_input: TcxGridDBColumn;
    cxGridDBTableView1f_penawaran: TcxGridDBColumn;
    cxGridDBTableView1f_po: TcxGridDBColumn;
    cxGridDBTableView1f_app: TcxGridDBColumn;
    cxGridDBTableView1tgl_app: TcxGridDBColumn;
    cxGridDBTableView1user_app: TcxGridDBColumn;
    cxGridDBTableView1f_app_gm: TcxGridDBColumn;
    cxGridDBTableView1tgl_app_gm: TcxGridDBColumn;
    cxGridDBTableView1user_app_gm: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1f_void: TcxGridDBColumn;
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarPP: TfrmDaftarPP;

implementation

uses
  unDm, unFrmUtama, unAplikasi, unTools, unFrmTrsPermintaanPembelian, unFrmLapUmum;

{$R *.dfm}

procedure TfrmDaftarPP.btnBaruClick(Sender: TObject);
var
  f : TfrmTrsPermintaanPembelian ;
begin
  inherited;
  f := TfrmTrsPermintaanPembelian.Create(self);
  f.Jenis := 'T';
  f.btnBaru.Enabled := False;
  f.ShowModal;
  zqrDaftarPP.Close;
  zqrDaftarPP.Open;
end;

procedure TfrmDaftarPP.btnEditClick(Sender: TObject);
var
  f : TfrmTrsPermintaanPembelian ;
begin
  inherited;

    f := TfrmTrsPermintaanPembelian.Create(self);
    f.Jenis := 'E';
    f.NoPP:= zqrDaftarPP.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrDaftarPP.Close;
    zqrDaftarPP.Open;
end;

procedure TfrmDaftarPP.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
   { if zqrDaftarPP.FieldByName('f_app').AsInteger = 0 then
   btnEdit.Enabled := True else btnEdit.Enabled := False ;}
   if (zqrDaftarPP.FieldByName('user_app').AsString=Aplikasi.NamaUser) or (Aplikasi.NamaUser='ADMIN') then
   btnBatal.Enabled := True else btnBatal.Enabled := False ;

   if (zqrDaftarPP.FieldByName('diajukan_oleh').AsString=Aplikasi.NamaUser) or (Aplikasi.NamaUser='ADMIN') then
   btnHapus.Enabled := True else btnHapus.Enabled := False ;

   if (zqrDaftarPP.FieldByName('f_void').asInteger =1) then begin
   btnEdit.Enabled := False;
   btnHapus.Enabled := False ;
   end
    else begin
     btnEdit.Enabled := True ;
      btnHapus.Enabled := True ;
     end;
end;

procedure TfrmDaftarPP.btnProsesClick(Sender: TObject);
begin
  inherited;
  if Aplikasi.NamaUser='ADMIN' then begin
     with zqrDaftarPP do begin
        if Active then Close;
        Screen.Cursor := crSQLWait;
        ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
        ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
        Open;
        Screen.Cursor := crDefault;
      end;
      zPPDet.Close ;
      zPPDet.Open;
  end
  else begin
    with zqrDaftarPP do begin
        if Active then Close;
        Screen.Cursor := crSQLWait;
        SQL.Text := 'SELECT a.*  FROM tbl_fobj_head as a WHERE diajukan_oleh='''+ Aplikasi.NamaUser +''' and (a.tanggal BETWEEN :tgl1 AND :tgl2)';
        ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
        ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
        Open;
        Screen.Cursor := crDefault;
      end;
      zPPDet.Close ;
      zPPDet.Open;
  end;
end;

procedure TfrmDaftarPP.FormCreate(Sender: TObject);
begin
  inherited;
 cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarPP.btnSimpanClick(Sender: TObject);
var
  q: TZQuery;
  f: TfrmLapUmum;
begin
  inherited;
   q := OpenRS('SELECT a.no_bukti, a.tanggal, a.tgl_diperlukan, a.diajukan_oleh, a.diajukan_dept, a.level_kebutuhan, ' +
      'b.kode_brg, c.deskripsi, b.qty, b.satuan, b.keterangan ' +
      'FROM tbl_fobj_head a ' +
      'LEFT JOIN tbl_fobj_det b ON a.`no_bukti` = b.`no_bukti` ' +
      'LEFT JOIN tbl_barang c ON b.`kode_brg` = c.`kode` ' +
      'WHERE a.no_bukti = ''%s''', [zqrDaftarPP.FieldByName('no_bukti').AsString]);
  if not q.IsEmpty then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrPP.Close;
      zqrPP.ParamByName('no_bukti').AsString := zqrDaftarPP.FieldByName('no_bukti').AsString;
      zqrPP.Open;
      rptPP1.ShowReport(True);
      Release;
    end;
  end
  else begin
    MsgBox('PP ini belum disimpan.');
  end;
  q.Close;
end;

procedure TfrmDaftarPP.btnBatalClick(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
   // q := OpenRS('SELECT * from tbl_po_head WHERE no_bukti = ''%s''', [zqrDaftarPP.FieldByName('NoPO').AsString]);

  if zqrDaftarPP.FieldByName('f_po').AsInteger = 1 then  begin
    MsgBox('Maaf,Sudah di Buat PO.');
    end
  else begin
    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head SET f_app=0,user_app="" WHERE no_bukti = ''' + zqrDaftarPP.FieldByName('no_bukti').AsString + '''');
    dm.zConn.Commit;
    MsgBox('PP berhasil di Unapprove');
    btnProsesClick(nil);
  end;

end;

procedure TfrmDaftarPP.btnHapusClick(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
  q := OpenRS('SELECT * from tbl_fobj_head WHERE no_bukti = ''%s''', [zqrDaftarPP.FieldByName('no_bukti').AsString]);

   if q.FieldByName('f_app').AsInteger = 1 then  begin
    MsgBox('Maaf,PP sudah diapprove.');
    end
  else begin
    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head SET f_void=1,user_void='''+ Aplikasi.NamaUser + ''' WHERE no_bukti = ''' + zqrDaftarPP.FieldByName('no_bukti').AsString + '''');
    dm.zConn.Commit;
    MsgBox('PP berhasil di Void');
    btnProsesClick(nil);
  end;

end;

end.
