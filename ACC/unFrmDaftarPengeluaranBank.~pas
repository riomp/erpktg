unit unFrmDaftarPengeluaranBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxSpinEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  ExtCtrls;

type
  TfrmDaftarPengeluaranBank = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrBankKeluar: TZReadOnlyQuery;
    dsBankKeluar: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1f_posted: TcxGridDBColumn;
    cxGridDBTableView1no_jurnal: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1keterangan: TcxGridDBColumn;
    cxGridDBTableView1jumlah: TcxGridDBColumn;
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
  frmDaftarPengeluaranBank: TfrmDaftarPengeluaranBank;

implementation

uses
  unDm, unTools, unAplikasi, unFrmPengeluaranBank;

{$R *.dfm}

procedure TfrmDaftarPengeluaranBank.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarPengeluaranBank.btnProsesClick(Sender: TObject);
begin
  inherited;
      with zqrBankKeluar do begin
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

procedure TfrmDaftarPengeluaranBank.btnBaruClick(Sender: TObject);
var
  f : TfrmPengeluaranBank;
begin
  inherited;

    f := TfrmPengeluaranBank.Create(self);
    f.Jenis := 'tambah';
    f.cxtNoTrans.Text := GetLastFak('bank_keluar');
    f.memTbl.Append;
    f.cxdTgl.Date := APlikasi.TanggalServer;
    f.ShowModal;
    zqrBankKeluar.Close;
    zqrBankKeluar.Open;
end;

procedure TfrmDaftarPengeluaranBank.btnEditClick(Sender: TObject);
var
  f : TfrmPengeluaranBank;
begin
  inherited;

    f := TfrmPengeluaranBank.Create(self);
    f.Jenis := 'edit';
    f.NoBK:= zqrBankKeluar.FieldByName('no_jurnal').AsString;
    f.ShowModal;
    zqrBankKeluar.Close;
    zqrBankKeluar.Open;
end;

procedure TfrmDaftarPengeluaranBank.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrBankKeluar.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus pengeluaran bank ini ?','Hapus');
    if i = IDYES then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal WHERE no_jurnal = ''' + zqrBankKeluar.FieldByName('no_jurnal').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' + zqrBankKeluar.FieldByName('no_jurnal').AsString + '''');
      //aplikasi.log_('HAPUS JURNAL PENERIMAAN KAS', cxtNoTrans.Text);
      MsgBox('Transaksi pengeluaran bank sudah dihapus.');
      zqrBankKeluar.Close;
      zqrBankKeluar.Open;
    end;
  end
  else begin
     MsgBox('Pengeluaran bank sudah di Posting');
     Abort ;
  end;
end;

end.
