unit unFrmDaftarPenerimaanKas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit, cxCheckBox,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  ExtCtrls;

type
  TfrmDaftarTerimaKas = class(TfrmTransBaru)
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
    zqrKasMasuk: TZReadOnlyQuery;
    dsKasMasuk: TDataSource;
    cxGridDBTableView1no_jurnal: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1keterangan: TcxGridDBColumn;
    cxGridDBTableView1jumlah: TcxGridDBColumn;
    cxGridDBTableView1f_posted: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarTerimaKas: TfrmDaftarTerimaKas;

implementation

uses
  unFrmPenerimaanKas2, unTools, unAplikasi, unDm, unFrmUtama, unFrmPenerimaanKas3;

{$R *.dfm}

procedure TfrmDaftarTerimaKas.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarTerimaKas.btnProsesClick(Sender: TObject);
begin
  inherited;
   with zqrKasMasuk do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  //zPPDet.Close ;
  //zPPDet.Open;
end;

procedure TfrmDaftarTerimaKas.btnEditClick(Sender: TObject);
var
  f : TfrmPenerimaanKas;
begin
  inherited;

    f := TfrmPenerimaanKas.Create(self);
    f.Jenis := 'edit';
    f.NoKM:= zqrKasMasuk.FieldByName('no_jurnal').AsString;
    f.ShowModal;
    zqrKasMasuk.Close;
    zqrKasMasuk.Open;
end;

procedure TfrmDaftarTerimaKas.btnBaruClick(Sender: TObject);
var
  f : TfrmPenerimaanKas;
begin
  inherited;

    f := TfrmPenerimaanKas.Create(self);
    f.Jenis := 'tambah';
    f.cxtNoTrans.Text := GetLastFak('kas_masuk');
    f.memTbl.Append;
    f.cxdTgl.Date := APlikasi.TanggalServer;
    f.ShowModal;
    zqrKasMasuk.Close;
    zqrKasMasuk.Open;
end;

procedure TfrmDaftarTerimaKas.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrKasMasuk.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus penerimaan kas ini ?','Hapus');
    if i = IDYES then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal WHERE no_jurnal = ''' + zqrKasMasuk.FieldByName('no_jurnal').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' + zqrKasMasuk.FieldByName('no_jurnal').AsString + '''');
      //aplikasi.log_('HAPUS JURNAL PENERIMAAN KAS', cxtNoTrans.Text);
      MsgBox('Transaksi penerimaan kas sudah dihapus.');
      zqrKasMasuk.Close;
      zqrKasMasuk.Open;
    end;
  end
  else begin
     MsgBox('Penerimaan kas sudah di Posting');
     Abort ;
  end;
end;

end.
