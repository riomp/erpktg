unit unFrmDaftarJurnalUmum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxSpinEdit,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  ExtCtrls;

type
  TfrmDaftarJU = class(TfrmTransBaru)
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
    zqrJurnal: TZReadOnlyQuery;
    dsJurnal: TDataSource;
    cxGridDBTableView1f_posted: TcxGridDBColumn;
    cxGridDBTableView1no_jurnal: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1keterangan: TcxGridDBColumn;
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
  frmDaftarJU: TfrmDaftarJU;

implementation

uses
  unTools, unAplikasi, unDm, unFrmAkun2Akun, unFrmJurnalUmum;

{$R *.dfm}

procedure TfrmDaftarJU.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarJU.btnProsesClick(Sender: TObject);
begin
  inherited;
    with zqrJurnal do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmDaftarJU.btnEditClick(Sender: TObject);
var
  f : TfrmJurnalUmum;
begin
  inherited;

    f := TfrmJurnalUmum.Create(self);
    f.Jenis := 'edit';
    f.NoJU:= zqrJurnal.FieldByName('no_jurnal').AsString;
    f.ShowModal;
    zqrJurnal.Close;
    zqrJurnal.Open;
end;

procedure TfrmDaftarJU.btnBaruClick(Sender: TObject);
var
  f :  TfrmJurnalUmum;
begin
  inherited;

    f :=  TfrmJurnalUmum.Create(self);
    f.Jenis := 'tambah';
    f.cxtNoTrans.Text := GetLastFak('jurnal_umum');
    f.memTbl.Append;
    f.cxdTgl.Date := APlikasi.TanggalServer;
    f.ShowModal;
    zqrJurnal.Close;
    zqrJurnal.Open;
end;

procedure TfrmDaftarJU.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrJurnal.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus Jurnal Umum ini ?','Hapus');
    if i = IDYES then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal WHERE no_jurnal = ''' + zqrJurnal.FieldByName('no_jurnal').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' + zqrJurnal.FieldByName('no_jurnal').AsString + '''');
      //aplikasi.log_('HAPUS JURNAL PENERIMAAN KAS', cxtNoTrans.Text);
      MsgBox('Transaksi Jurnal Umum sudah dihapus.');
      zqrJurnal.Close;
      zqrJurnal.Open;
    end;
  end
  else begin
     MsgBox('Jurnal Umum sudah di Posting');
     Abort ;
  end;
end;

end.
