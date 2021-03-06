unit unFrmDaftarSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, StdCtrls, ExtCtrls, cxCheckBox;

type
  TfrmDaftarSO = class(TfrmTplTrans)
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
    zqrDaftarSO: TZReadOnlyQuery;
    dsDaftarSO: TDataSource;
    zSODet: TZReadOnlyQuery;
    dsSODet: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1kode_customer: TcxGridDBColumn;
    cxGridDBTableView1f_completed: TcxGridDBColumn;
    cxGridDBTableView1tgl_required: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1po: TcxGridDBColumn;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarSO: TfrmDaftarSO;

implementation

uses
  unDm, unTools, unAplikasi, unFrmSalesOrder_NEW, unFrmUtama;

{$R *.dfm}

procedure TfrmDaftarSO.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrDaftarSO do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zSODet.Close ;
  zSODet.Open ;
end;

procedure TfrmDaftarSO.FormCreate(Sender: TObject);
begin
  inherited;
   cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarSO.btnBaruClick(Sender: TObject);
var
 f : TfrmSalesOrder_NEW ;
begin
  inherited;
  f := TfrmSalesOrder_NEW.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarSO.Close;
  zqrDaftarSO.Open;
end;

procedure TfrmDaftarSO.btnEditClick(Sender: TObject);
var
  f : TfrmSalesOrder_NEW ;
begin
  inherited;

    f := TfrmSalesOrder_NEW.Create(self);
    f.Jenis := 'edit';
    f.NoSO:= zqrDaftarSO.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrDaftarSO.Close;
    zqrDaftarSO.Open;
end;

procedure TfrmDaftarSO.btnHapusClick(Sender: TObject);
var
  i: Integer;
  lstSJ, lstKet: TStringList;
  chk: string;
  qr, qh, qb, qbd, qhp, qa : TZQuery;
  st, sa: real;
begin
  inherited;
  Screen.Cursor := crSQLWait;

    try
      dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1, ' +
          'f_tutupmanual = 1 WHERE no_bukti = ''' +
          zqrDaftarSO.FieldByName('no_bukti').AsString + '''');
        dm.zConn.ExecuteDirect('UPDATE tbl_mo SET f_tutupmanual = 1 WHERE no_so = ''' +
          zqrDaftarSO.FieldByName('no_bukti').AsString + '''');


      
      dm.zConn.Commit;
     // zqrSOHead.Close;
      //zqrSOHead.Open;
      
      Screen.Cursor := crDefault;
      MsgBox('Penutupan SO sudah berhasil.');
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        Screen.Cursor := crDefault;
        dm.zConn.Rollback;
      end;
    end;

end;

end.
