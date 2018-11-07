unit unFrmDaftarPembayaranPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  ExtCtrls;

type
  TfrmDaftarPembayaranPembelian = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid2: TcxGrid;
    cxTblPP: TcxGridDBTableView;
    cxTblPPf_posted: TcxGridDBColumn;
    cxTblPPno_bukti: TcxGridDBColumn;
    cxTblPPtanggal: TcxGridDBColumn;
    cxTblPPnama: TcxGridDBColumn;
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
    zqrPP: TZReadOnlyQuery;
    dsPP: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarPembayaranPembelian: TfrmDaftarPembayaranPembelian;

implementation

uses
  unDm, unAplikasi, unTools, unFrmPembayaranPembelian1;

{$R *.dfm}

procedure TfrmDaftarPembayaranPembelian.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarPembayaranPembelian.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrPP do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmDaftarPembayaranPembelian.btnBaruClick(Sender: TObject);
var
  f : TfrmPembayaranPembelian1;
begin
  inherited;

    f := TfrmPembayaranPembelian1.Create(self);
    f.Jenis := 'tambah';
    f.cxtNoTrans.Text := GetLastFak('pembayaran-pembelian');
    f.cxdTanggal.Date := APlikasi.TanggalServer;
    f.ShowModal;
    zqrPP.Close;
    zqrPP.Open;
end;

procedure TfrmDaftarPembayaranPembelian.btnEditClick(Sender: TObject);
  var
  f : TfrmPembayaranPembelian1;
begin
  inherited;
    f := TfrmPembayaranPembelian1.Create(self);
    f.Jenis := 'edit';
    f.NoPEB:= zqrPP.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrPP.Close;
    zqrPP.Open;
end;

procedure TfrmDaftarPembayaranPembelian.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrPP.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus Transaksi ini ?','Hapus');
    if i = IDYES then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trspelunasan WHERE no_bukti = ''' + zqrPP.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trspelunasan_det WHERE no_bukti = ''' + zqrPP.FieldByName('no_bukti').AsString + '''');
      //aplikasi.log_('HAPUS JURNAL PENERIMAAN KAS', cxtNoTrans.Text);
      MsgBox('Transaksi sudah dihapus.');
      zqrPP.Close;
      zqrPP.Open;
    end;
  end
  else begin
     MsgBox('Transaksi sudah di Posting');
     Abort ;
  end;
end;

end.
