unit unFrmDaftarCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, ExtCtrls;

type
  TfrmDaftarCustomer = class(TfrmTplTrans)
    zQry: TZQuery;
    ds: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1kode: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
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
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarCustomer: TfrmDaftarCustomer;

implementation

uses
  unDm, unTools, unAplikasi, unFrmMstCust1;

{$R *.dfm}

procedure TfrmDaftarCustomer.FormCreate(Sender: TObject);
begin
  inherited;
  zQry.Open;
end;

procedure TfrmDaftarCustomer.btnBaruClick(Sender: TObject);
var
  f : TfrmMstCust1;
begin
  inherited;
    f := TfrmMstCust1.Create(self);
    f.Jenis := 'tambah';
    f.chkAktif.Checked := True;
    f.ShowModal;
    zQry.Close;
    zQry.Open;
end;

procedure TfrmDaftarCustomer.btnEditClick(Sender: TObject);
var
  f :  TfrmMstCust1;
begin
  inherited;

    f :=  TfrmMstCust1.Create(self);
    f.Jenis := 'edit';
    f.NoCust:= zQry.FieldByName('kode').AsString;
    f.ShowModal;
    zQry.Close;
    zQry.Open;
end;

end.
