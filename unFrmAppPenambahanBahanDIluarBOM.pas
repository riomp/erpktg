unit unFrmAppPenambahanBahanDIluarBOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBLookupComboBox, cxDropDownEdit,
  cxSpinEdit, DB, cxDBData, cxGridDBTableView, ZAbstractRODataset,
  ZDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TfrmAppPenamabahanDiluarBom = class(TfrmTplTrans)
    cxGrid14: TcxGrid;
    cxTblBom1Det: TcxGridTableView;
    cxColBomDetKode: TcxGridColumn;
    cxColBomDetBarang: TcxGridColumn;
    cxColBomDetSatuan: TcxGridColumn;
    cxColBomDetQty: TcxGridColumn;
    cxGridLevel11: TcxGridLevel;
    cxTblApp: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrApp: TZReadOnlyQuery;
    dsApp: TDataSource;
    cxTblAppno_mo: TcxGridDBColumn;
    cxTblAppno_spk: TcxGridDBColumn;
    cxTblAppkode_brg: TcxGridDBColumn;
    cxTblAppdeskripsi: TcxGridDBColumn;
    cxTblAppuser_request: TcxGridDBColumn;
    cxTblApptgl_request: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxTblAppFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAppPenamabahanDiluarBom: TfrmAppPenamabahanDiluarBom;

implementation

uses
  unTools, unAplikasi, unDm;

{$R *.dfm}

procedure TfrmAppPenamabahanDiluarBom.FormCreate(Sender: TObject);
begin
  inherited;
  zqrApp.Open ;
end;

procedure TfrmAppPenamabahanDiluarBom.cxTblAppFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i,j: Integer;
  sNoSPK: string;
begin
  inherited;
  try
    i := cxTblApp.DataController.GetFocusedRecordIndex;

    sNoSPK := cxTblApp.DataController.Values[i, cxTblAppno_spk.Index];

    q := OpenRS('SELECT a.*, b.deskripsi FROM tmp_tbl_bom_det a join tbl_barang b on a.kode_brg=b.kode WHERE a.no_spk = ''%s''',[sNoSPK]);

    cxTblBom1Det.DataController.RecordCount := 0;

    while not q.Eof do begin
      with cxTblBom1Det.DataController do begin
        j := AppendRecord;
         Values[j, cxColBomDetKode.Index] := q.FieldByName('kode_brg').AsString;
         Values[j, cxColBomDetBarang.Index] := q.FieldByName('deskripsi').AsString;
         Values[j, cxColBomDetQty.Index] := q.FieldByName('qty').AsFloat;
         Values[j, cxColBomDetSatuan.Index] := q.FieldByName('satuan').AsString;
      end;
      q.Next;
    end;
    q.Close;
  except
  end;
end;

procedure TfrmAppPenamabahanDiluarBom.btnSimpanClick(Sender: TObject);
var
  q: TZQuery;
  i,j: Integer;
  sNoSPK: string;
begin
  inherited;
   if cxTblBom1Det.DataController.RecordCount = 0 then Abort;
  try
     i := cxTblApp.DataController.GetFocusedRecordIndex;

    sNoSPK := cxTblApp.DataController.Values[i, cxTblAppno_spk.Index];

    q := OpenRS('SELECT * FROM tbl_bom_det WHERE no_spk = ''%s''',[sNoSPK]);


    dm.zConn.StartTransaction;
    
    for i := 0 to cxTblBom1Det.DataController.RecordCount - 1 do begin
      with cxTblBom1Det.DataController do begin
          q.Insert;
          q.FieldByName('no_spk').AsString := sNoSPK;
          q.FieldByName('no_mo').AsString := '';
          q.FieldByName('kode_brg').AsString := Values[i, cxColBomDetKode.Index];
          q.FieldByName('qty').AsFloat := Values[i, cxColBomDetQty.Index];
          q.FieldByName('satuan').AsString := Values[i, cxColBomDetSatuan.Index];
          q.Post;
      end;
    end;

    dm.zConn.ExecuteDirect('UPDATE tmp_tbl_bom_det SET f_approval=1 WHERE no_spk = ''' + sNoSPK + '''');
    dm.zConn.Commit;
    zqrApp.Close ;
    zqrApp.Open;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
