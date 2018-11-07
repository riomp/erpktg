unit unFrmListSurveyKepuasan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls, ExtCtrls;

type
  TfrmSurveyKepuasan = class(TfrmTransBaru)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrMO: TZReadOnlyQuery;
    dsMO: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1no: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1no_sj: TcxGridDBColumn;
    cxGridDBTableView1kode_sales: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1tgl_pengiriman: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    zSurvey: TZReadOnlyQuery;
    dsSurvey: TDataSource;
    cxGrid2DBTableView1kriteria: TcxGridDBColumn;
    cxGrid2DBTableView1poin: TcxGridDBColumn;
    cxGrid2DBTableView1note: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSurveyKepuasan: TfrmSurveyKepuasan;

implementation

uses unAplikasi, unDm, unTools, unFrmLaporan1;

{$R *.dfm}

procedure TfrmSurveyKepuasan.btnProsesClick(Sender: TObject);
begin
  with zqrMO do begin
    Screen.Cursor := crSQLWait;
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmSurveyKepuasan.btnSimpanClick(Sender: TObject);
var
  f : TFrm_LaporanUmum1;
begin
  f := TFrm_LaporanUmum1.Create(self);
  with f do begin
    zqrSurvey.Close;
    zqrSurvey.ParamByName('no_survey').AsString := zqrMO.fieldbyname('no').AsString ;
    zqrSurvey.Open ;
    rptSurvey.ShowReport(true);
  end;
  f.Release ;

end;

end.
