unit unFrmDaftarPenerimaanBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,
  ExtCtrls, cxCheckBox;

type
  TfrmDaftarPenerimaanBarang = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    zqrDaftarLPB: TZReadOnlyQuery;
    dsDaftarLPB: TDataSource;
    zLPBDet: TZReadOnlyQuery;
    dsLPBDet: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1f_approval: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarPenerimaanBarang: TfrmDaftarPenerimaanBarang;

implementation

uses
  unDm, unTools, unAplikasi, unFrmSPBB, unFrmPB;

{$R *.dfm}

procedure TfrmDaftarPenerimaanBarang.FormCreate(Sender: TObject);
begin
  inherited;
    cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarPenerimaanBarang.btnProsesClick(Sender: TObject);
begin
  inherited;
   with zqrDaftarLPB do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zLPBDet.Close ;
  zLPBDet.Open ;
end;

procedure TfrmDaftarPenerimaanBarang.btnBaruClick(Sender: TObject);
var
 f : TfrmPenerimaanBarang;
begin
  inherited;
  f := TfrmPenerimaanBarang.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarLPB.Close;
  zqrDaftarLPB.Open;
end;

procedure TfrmDaftarPenerimaanBarang.btnEditClick(Sender: TObject);
var
 f : TfrmPenerimaanBarang;
begin
  inherited;
  f := TfrmPenerimaanBarang.Create(self);
  f.Jenis := 'edit';
  f.NoLPB:= zqrDaftarLPB.FieldByName('no_bukti').AsString;
  f.ShowModal;
  zqrDaftarLPB.Close;
  zqrDaftarLPB.Open;
end;

end.
