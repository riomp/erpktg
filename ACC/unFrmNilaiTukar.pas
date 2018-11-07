unit unFrmNilaiTukar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxDBLookupComboBox,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  cxNavigator, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxCalendar,
  cxDropDownEdit, cxSpinEdit;

type
  TfrmNilaiTukar = class(TfrmTplTrans)
    cxGrid1: TcxGrid;
    cxTblRate: TcxGridDBTableView;
    cxTblRateid: TcxGridDBColumn;
    cxTblRatekode_brg: TcxGridDBColumn;
    cxTblRatedeskripsi: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxNavigator1: TcxNavigator;
    zTblRate: TZTable;
    dsRate: TDataSource;
    Edit1: TEdit;
    cxGrid2: TcxGrid;
    cxGrid2TableView1: TcxGridTableView;
    cxGrid2Level1: TcxGridLevel;
    cxTblRateDet: TcxGridTableView;
    cxColID: TcxGridColumn;
    cxColCurr1: TcxGridColumn;
    cxColCurr2: TcxGridColumn;
    cxColRate: TcxGridColumn;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cxTblRateFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTblRateDetDataControllerNewRecord(
      ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
     j : Integer ;
  public
    { Public declarations }
  end;

var
  frmNilaiTukar: TfrmNilaiTukar;

implementation

uses
  unTools, unDm, unAplikasi;

{$R *.dfm}

procedure TfrmNilaiTukar.FormCreate(Sender: TObject);
begin
  inherited;
  zTblRate.Open ;
end;

procedure TfrmNilaiTukar.cxTblRateFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
    i,k : Integer ;
    q : TZQuery;
begin
  inherited;
   try
    i := cxTblRate.DataController.GetFocusedRecordIndex;
    Edit1.Text := cxTblRate.DataController.Values[i, cxTblRateid.Index];
    j := cxTblRate.DataController.Values[i, cxTblRateid.Index];

     cxTblRateDet.DataController.RecordCount := 0;
    q := OpenRS('SELECT * FROM tbl_rate_det where id_rate= %s',[Edit1.Text]) ;
      while not q.Eof do begin
        with cxTblRateDet.DataController do begin
         k := AppendRecord ;
         Values[k, cxColID.Index] := q.FieldByName('id_rate').AsInteger ;
         Values[k, cxColCurr1.Index] := q.FieldByName('curr1').AsString ;
         Values[k, cxColCurr2.Index] := q.FieldByName('curr2').AsString ;
         Values[k, cxColRate.Index] := q.FieldByName('rate').AsFloat ;
        end;
        q.Next;
      end;
      q.Close;

  except
  end;
end;

procedure TfrmNilaiTukar.cxTblRateDetDataControllerNewRecord(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
begin
  inherited;
      with ADataController do begin
    Values[ARecordIndex, cxColCurr1.Index] := 'IDR';
    Values[ARecordIndex, cxColCurr2.Index] := 'IDR';
    Values[ARecordIndex, cxColRate.Index] := 1;
    Values[ARecordIndex, cxColID.Index] := j;
  end;
end;

procedure TfrmNilaiTukar.Button1Click(Sender: TObject);
var
  i : Integer ;
  q : TZQuery;
begin
  inherited;
  if (cxTblRateDet.DataController.EditState = [dceInsert, dceModified]) or (cxTblRateDet.DataController.EditState = [dceEdit, dceModified]) then begin
    MsgBox('Mohon selesaikan pengeditan detail sebelum disimpan.');
    Abort;
  end;

    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_rate_det WHERE id_rate = %s',[Edit1.Text]));
    dm.zConn.Commit;

   q := OpenRS('SELECT * FROM tbl_rate_det WHERE id_rate= %s',[Edit1.Text]);
   with cxTblRateDet.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      q.Insert;
      q.FieldByName('id_rate').Value :=  Values[i, cxColID.Index];
      q.FieldByName('curr1').Value :=  Values[i, cxColCurr1.Index];
      q.FieldByName('curr2').Value := Values[i, cxColCurr2.Index];
      q.FieldByName('rate').Value := Values[i, cxColRate.Index];
      q.Post;
    end;
  end;
  q.Close ;

  MsgBox('Data sudah tersimpan');
end;

end.
