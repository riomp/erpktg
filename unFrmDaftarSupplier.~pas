unit unFrmDaftarSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls;

type
  TfrmDaftarSupplier = class(TfrmTplTrans)
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
    zQry: TZQuery;
    ds: TDataSource;
    cxGridDBTableView1kode: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarSupplier: TfrmDaftarSupplier;

implementation

uses
  unDm, unAplikasi, unTools, unFrmMstSupplier, unFrmMstSupplier1;

{$R *.dfm}

procedure TfrmDaftarSupplier.FormCreate(Sender: TObject);
begin
  inherited;
  zQry.Open;
end;

procedure TfrmDaftarSupplier.btnBaruClick(Sender: TObject);
var
  f : TfrmMstSupplier1;
begin
  inherited;
    f := TfrmMstSupplier1.Create(self);
    f.Jenis := 'tambah';
    f.chkAktif.Checked := True;
    f.ShowModal;
    zQry.Close;
    zQry.Open;
end;

procedure TfrmDaftarSupplier.btnEditClick(Sender: TObject);
var
  f :  TfrmMstSupplier1;
begin
  inherited;

    f :=  TfrmMstSupplier1.Create(self);
    f.Jenis := 'edit';
    f.NoSupp:= zQry.FieldByName('kode').AsString;
    f.ShowModal;
    zQry.Close;
    zQry.Open;
end;

end.
