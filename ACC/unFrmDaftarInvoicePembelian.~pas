unit unFrmDaftarInvoicePembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxSpinEdit,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  ExtCtrls;

type
  TfrmDaftarInvoicePembelian = class(TfrmTplTrans)
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
    zqrPI: TZReadOnlyQuery;
    dsPI: TDataSource;
    cxGridDBTableView1f_posted: TcxGridDBColumn;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarInvoicePembelian: TfrmDaftarInvoicePembelian;

implementation

uses
  unDm, unTools, unAplikasi, unFrmPI;

{$R *.dfm}

procedure TfrmDaftarInvoicePembelian.FormCreate(Sender: TObject);
begin
  inherited;
   cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarInvoicePembelian.btnProsesClick(Sender: TObject);
begin
  inherited;
      with zqrPI do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
   if cxGridDBTableView1.DataController.RecordCount = 0 then
  btnEdit.Enabled := False ;
end;

procedure TfrmDaftarInvoicePembelian.btnBaruClick(Sender: TObject);
var
  f : TfrmPI;
begin
  inherited;

    f :=  TfrmPI.Create(self);
    f.Jenis := 'tambah';
    f.cxtNoTrans.Text := GetLastFak('invoice_pembelian');
    f.cxdTanggal.Date := APlikasi.TanggalServer;
    f.ShowModal;
    zqrPI.Close;
    zqrPI.Open;
end;

procedure TfrmDaftarInvoicePembelian.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrPI.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus Transaksi ini ?','Hapus');
    if i = IDYES then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_head WHERE no_bukti = ''' + zqrPI.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ''' + zqrPI.FieldByName('no_bukti').AsString + '''');
      //aplikasi.log_('HAPUS JURNAL PENERIMAAN KAS', cxtNoTrans.Text);
      MsgBox('Transaksi sudah dihapus.');
      zqrPI.Close;
      zqrPI.Open;
    end;
  end
  else begin
     MsgBox('Transaksi sudah di Posting');
     Abort ;
  end;
end;

procedure TfrmDaftarInvoicePembelian.btnEditClick(Sender: TObject);
var
  f : TfrmPI;
begin
  inherited;
    f := TfrmPI.Create(self);
    f.Jenis := 'edit';
    f.NoPI:= zqrPI.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrPI.Close;
    zqrPI.Open;
end;

end.
