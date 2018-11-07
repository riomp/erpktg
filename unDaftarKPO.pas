unit unDaftarKPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls, ExtCtrls;

type
  TfrmDaftarKPO = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrDaftarKPO: TZReadOnlyQuery;
    dsDaftarKPO: TDataSource;
    zKPODet: TZReadOnlyQuery;
    dsKPODet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGridDBTableView1no_kpo: TcxGridDBColumn;
    cxGridDBTableView1no_quote: TcxGridDBColumn;
    cxGridDBTableView1tgl_kpo: TcxGridDBColumn;
    cxGridDBTableView1kode_customer: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGrid2DBTableView1no: TcxGridDBColumn;
    cxGrid2DBTableView1kode_item: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1unitid: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    btnCetak: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarKPO: TfrmDaftarKPO;

implementation
  uses
  unDm
, unAplikasi
, unTools
, unFrmKonfirmPO , unFrmLaporan1;
{$R *.dfm}




procedure TfrmDaftarKPO.FormCreate(Sender: TObject);
begin
  inherited;
   cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarKPO.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrDaftarKPO do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zKPODet.Close ;
  zKPODet.Open ;
end;

procedure TfrmDaftarKPO.btnBaruClick(Sender: TObject);
var
 f : TfrmKonfirmasiPO;
begin
  inherited;
  f := TfrmKonfirmasiPO.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarKPO.Close;
  zqrDaftarKPO.Open;
end;

procedure TfrmDaftarKPO.btnEditClick(Sender: TObject);
var
  f :TfrmKonfirmasiPO ;
begin
  inherited;

    f :=TfrmKonfirmasiPO.Create(self);
    f.Jenis := 'edit';
    f.NoKPO:= zqrDaftarKPO.FieldByName('no_kpo').AsString;
    f.ShowModal;
    zqrDaftarKPO.Close;
    zqrDaftarKPO.Open;
end;

procedure TfrmDaftarKPO.btnCetakClick(Sender: TObject);
var
  f : TFrm_LaporanUmum1;
begin
  inherited;
     f := TFrm_LaporanUmum1.Create(Self);
    with f do begin
      zqrKPO.Close;
      zqrKPO.ParamByName('no_kpo').AsString := zqrDaftarKPO.FieldByName('no_kpo').AsString;
      zqrKPO.Open;
      rptKPO.ShowReport(True);
    end;
    f.Release;
end;

procedure TfrmDaftarKPO.btnHapusClick(Sender: TObject);
var
  q : TZQuery;
  i : Integer;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_so_head where no_kpo =''%s''',[ zqrDaftarKPO.FieldByName('no_kpo').AsString]) ;

  if not q.IsEmpty then begin
     MsgBox('Konfirmasi PO ini sudah ada transaksi!');
     end
  else begin
        i := QBox(Self, 'Hapus Konfirmasi PO Nomer: ' + zqrDaftarKPO.FieldByName('no_kpo').AsString,'Hapus Konfirmasi PO');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_kpo_head WHERE no_quote = ''' + zqrDaftarKPO.FieldByName('no_kpo').AsString + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_kpo_det WHERE no_quote = ''' + zqrDaftarKPO.FieldByName('no_kpo').AsString + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Konfoirmasi PO berhasil.');
            zqrDaftarKPO.Close;
            zqrDaftarKPO.Open;
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
    end;

end;

end.