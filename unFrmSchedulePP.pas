unit unFrmSchedulePP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxTextEdit, cxCalendar, cxSpinEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxLabel, ZDataset, DB;

type
  TfrmSchedulePP = class(TfrmTransBaru)
    cxLabel1: TcxLabel;
    cxtNoBukti: TcxTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxsQty: TcxSpinEdit;
    cxgrdPP: TcxGrid;
    cxTblPP: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColTgl: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColKeterangan: TcxGridColumn;
    cxgrdlvl1Grid1Level1: TcxGridLevel;
    Label1: TLabel;
    Label5: TLabel;
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSchedulePP: TfrmSchedulePP;

implementation

uses
  unDm, unTools, unAplikasi, unFrmTplTrans;

{$R *.dfm}

procedure TfrmSchedulePP.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  row : Integer;
begin
  inherited;
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmSchedulePP.btnSimpanClick(Sender: TObject);
var
  qh : TZQuery;
  i : Integer;
begin
  inherited;
  if cxTblPP.DataController.RecordCount=0 then begin
    MsgBox('Qty Schedule Tidak Sama dengan Qty Request') ;
  end
  else if cxTblPP.DataController.Summary.FooterSummaryValues[0]<>cxsQty.EditValue then begin
   MsgBox('Qty Schedule Tidak Sama dengan Qty Request') ;
   end
   else begin
   try
      dm.zConn.StartTransaction;
       qh := OpenRS('SELECT * FROM tbl_schedule_pp WHERE no_bukti = ''%s'' and no_urut=''%s'' and kode_brg=''%s''',[cxtNoBukti.Text,label1.Caption,label5.Caption]);
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_schedule_pp WHERE no_bukti = ''%s'' and no_urut=''%s'' and kode_brg=''%s''',[cxtNoBukti.Text,label1.Caption,label5.Caption]));
      for i := 0 to cxTblPP.DataController.RecordCount - 1 do begin
        with cxTblPP.DataController do begin
          qh.Insert;
          qh.FieldByName('no_bukti').AsString := cxtNoBukti.Text;
          qh.FieldByName('no').AsInteger := i+1;
          qh.FieldByName('tgl').AsDateTime:= Values[i, cxColTgl.Index];
          qh.FieldByName('no_urut').AsInteger := StrToInt(label1.Caption);
          qh.FieldByName('kode_brg').AsString := label5.Caption;
          if Values[i, cxColKeterangan.Index]<>null then
          qh.FieldByName('keterangan').AsString := Values[i, cxColKeterangan.Index];
          qh.FieldByName('qty').AsFloat := Values[i, cxColQty.Index];
          qh.Post;
        end;
      end;
      qh.Close;
      dm.zConn.Commit;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
    end;
    btnBatalClick(nil);
    Close;
end;

end.
