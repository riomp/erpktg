unit unFrmDaftarSI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls, ExtCtrls;

type
  TfrmDaftarSI = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrSI: TZReadOnlyQuery;
    dsSI: TDataSource;
    cxGrid2: TcxGrid;
    cxTblSI: TcxGridDBTableView;
    cxTblSIf_posted: TcxGridDBColumn;
    cxTblSIno_bukti: TcxGridDBColumn;
    cxTblSItanggal: TcxGridDBColumn;
    cxTblSInama: TcxGridDBColumn;
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
  frmDaftarSI: TfrmDaftarSI;

implementation

uses
  unDm, unTools, unAplikasi, unFrmSI;

{$R *.dfm}

procedure TfrmDaftarSI.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarSI.btnProsesClick(Sender: TObject);
begin
  inherited;
        with zqrSI do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmDaftarSI.btnBaruClick(Sender: TObject);
var
  f : TfrmSI;
begin
  inherited;

    f := TfrmSI.Create(self);
    f.Jenis := 'tambah';
    f.cxtNoTrans.Text := GetLastFak('invoice');
    f.cxdTanggal.Date := APlikasi.TanggalServer;
    f.ShowModal;
    zqrSI.Close;
    zqrSI.Open;
end;

procedure TfrmDaftarSI.btnEditClick(Sender: TObject);
var
  f : TfrmSI;
begin
  inherited;
    f := TfrmSI.Create(self);
    f.Jenis := 'edit';
    f.NoSI:= zqrSI.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrSI.Close;
    zqrSI.Open;
end;

procedure TfrmDaftarSI.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrSI.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus Transaksi ini ?','Hapus');
    if i = IDYES then begin
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_head WHERE no_bukti = ''' + zqrSI.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ''' + zqrSI.FieldByName('no_bukti').AsString + '''');
      //aplikasi.log_('HAPUS JURNAL PENERIMAAN KAS', cxtNoTrans.Text);
      MsgBox('Transaksi sudah dihapus.');
      zqrSI.Close;
      zqrSI.Open;
    end;
  end
  else begin
     MsgBox('Transaksi sudah di Posting');
     Abort ;
  end;
end;

end.
