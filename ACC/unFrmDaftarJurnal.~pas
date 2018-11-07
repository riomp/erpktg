unit unFrmDaftarJurnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, StdCtrls, ExtCtrls, ZAbstractRODataset, ZDataset,
  cxSpinEdit;

type
  TfrmDaftarJurnal = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid2: TcxGrid;
    cxTblJurnalDet: TcxGridDBTableView;
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
    cxGrid1: TcxGrid;
    cxTblJurnal: TcxGridDBTableView;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    zqrJurnal: TZReadOnlyQuery;
    dsJurnal: TDataSource;
    cxTblJurnalf_posted: TcxGridDBColumn;
    cxTblJurnalno_jurnal: TcxGridDBColumn;
    cxTblJurnaltanggal: TcxGridDBColumn;
    cxTblJurnalketerangan: TcxGridDBColumn;
    zJurnalDet: TZReadOnlyQuery;
    dsJurnalDet: TDataSource;
    cxTblJurnalDetno_jurnal: TcxGridDBColumn;
    cxTblJurnalDetakun: TcxGridDBColumn;
    cxTblJurnalDetnama: TcxGridDBColumn;
    cxTblJurnalDetketerangan: TcxGridDBColumn;
    cxTblJurnalDetdebet: TcxGridDBColumn;
    cxTblJurnalDetkredit: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure cxTblJurnalFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarJurnal: TfrmDaftarJurnal;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmDaftarJurnal.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarJurnal.btnProsesClick(Sender: TObject);
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

procedure TfrmDaftarJurnal.cxTblJurnalFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  i: Integer;
begin
  inherited;
    try
    i := cxTblJurnal.DataController.GetFocusedRecordIndex;
    with zJurnalDet do begin
    if Active then Close;
      Screen.Cursor := crSQLWait;
      ParamByName('no_jurnal').AsString := cxTblJurnal.DataController.Values[i, cxTblJurnalno_jurnal.Index];
      Open;
      Screen.Cursor := crDefault;
    end;
  except
  end;
end;

end.
