unit unFrmDaftarMTS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls, ExtCtrls,
  cxCheckBox;

type
  TfrmDaftarMTS = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrDaftarMTS: TZReadOnlyQuery;
    dsDaftarKPO: TDataSource;
    zMTSDet: TZReadOnlyQuery;
    dsKPODet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1f_completed: TcxGridDBColumn;
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
  frmDaftarMTS: TfrmDaftarMTS;

implementation

{$R *.dfm}


uses
  unDm
, unTools
, unAplikasi
, unFrmUtama , unFrmSO_MTS;

procedure TfrmDaftarMTS.FormCreate(Sender: TObject);
begin
  inherited;
   cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarMTS.btnProsesClick(Sender: TObject);
begin
  inherited;
    with zqrDaftarMTS do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zMTSdet.Close ;
  zMTSDet.Open ;
end;

procedure TfrmDaftarMTS.btnBaruClick(Sender: TObject);
var
  f : TfrmSO_MTS;
begin
  inherited;
  f := TfrmSO_MTS.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarMTS.Close;
  zqrDaftarMTS.Open;
end;

procedure TfrmDaftarMTS.btnEditClick(Sender: TObject);
var
  f :TfrmSO_MTS ;
begin
  inherited;

    f :=TfrmSO_MTS.Create(self);
    f.Jenis := 'edit';
    f.NoMTS:= zqrDaftarMTS.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrDaftarMTS.Close;
    zqrDaftarMTS.Open;
end;

procedure TfrmDaftarMTS.btnHapusClick(Sender: TObject);
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
          zqrDaftarMTS.FieldByName('no_bukti').AsString + '''');
        dm.zConn.ExecuteDirect('UPDATE tbl_mo SET f_tutupmanual = 1 WHERE no_so = ''' +
          zqrDaftarMTS.FieldByName('no_bukti').AsString + '''');



      dm.zConn.Commit;
     // zqrSOHead.Close;
      //zqrSOHead.Open;
      
      Screen.Cursor := crDefault;
      MsgBox('Penutupan SO MTS sudah berhasil.');
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        Screen.Cursor := crDefault;
        dm.zConn.Rollback;
      end;
    end;
end;

end.