unit unFrmPencairanDana;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxSpinEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmPencairanDana = class(TfrmTplMaster)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxtbJurnal: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnApprove: TButton;
    btnKeluar2: TButton;
    zqrPelunasan: TZReadOnlyQuery;
    dsPelunasan: TDataSource;
    cxtbJurnalno_bukti: TcxGridDBColumn;
    cxtbJurnaltanggal: TcxGridDBColumn;
    cxtbJurnaljml_pembayaran: TcxGridDBColumn;
    cxtbJurnalakun_bank: TcxGridDBColumn;
    cxtbJurnalnama: TcxGridDBColumn;
    cxtbJurnalColumn1: TcxGridDBColumn;
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnApproveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPencairanDana: TfrmPencairanDana;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmPencairanDana.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPencairanDana.btnProsesClick(Sender: TObject);
begin
  inherited;
  zqrPelunasan.Close;
  zqrPelunasan.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrPelunasan.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrPelunasan.Open;
end;

procedure TfrmPencairanDana.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := Aplikasi.TanggalServer;
  cxdTgl2.Date := Aplikasi.TanggalServer;
end;

procedure TfrmPencairanDana.btnApproveClick(Sender: TObject);
var
  sNoJ, sAkun: string;
  q: TZQuery;
begin
  inherited;

  sNoJ := GetLastFak('jurnal');
  UpdateFaktur(Copy(sNoJ,1,6));
  sAkun := GetDefaultAkun('depositintransit');
  q := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
  q.Insert;
  q.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
  q.FieldByName('no_jurnal').AsString := sNoJ;
  q.FieldByName('akun').AsString := sAkun;
  q.FieldByName('debet').AsFloat := zqrPelunasan.FieldByName('jml_pembayaran').AsFloat;
  q.FieldByName('keterangan').AsString := 'PENCAIRAN';
  q.FieldByName('dc').AsString := 'D';
  q.FieldByName('kode_suppcust').AsString := zqrPelunasan.FieldByname('kode_supp').AsString;
  q.Post;

  sAkun := zqrPelunasan.FieldByName('akun_bank').AsString;
  q.Insert;
  q.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
  q.FieldByName('no_jurnal').AsString := sNoJ;
  q.FieldByName('akun').AsString := sAkun;
  q.FieldByName('kredit').AsFloat := zqrPelunasan.FieldByName('jml_pembayaran').AsFloat;
  q.FieldByName('keterangan').AsString := 'PENCAIRAN';
  q.FieldByName('dc').AsString := 'D';
  q.FieldByName('kode_suppcust').AsString := zqrPelunasan.FieldByName('kode_supp').AsString;
  q.Post;

  dm.zConn.ExecuteDirect('UPDATE tbl_trspelunasan SET f_cair = 1 WHERE no_bukti = ''' +
    zqrPelunasan.FieldByName('no_bukti').AsString + '''');

  zqrPelunasan.Close;
  zqrPelunasan.Open;
end;

end.
