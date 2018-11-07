unit unFrmTaxType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxNavigator, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable,
  ZDataset, StdCtrls, ExtCtrls, cxSpinEdit, cxDBLookupComboBox,
  cxContainer, cxTextEdit;

type
  TfrmTaxType = class(TfrmTransBaru)
    zTblTax: TZTable;
    dsTax: TDataSource;
    cxNavigator1: TcxNavigator;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1id_tax: TcxGridDBColumn;
    cxGrid1DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid1DBTableView1rate: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Label73: TLabel;
    cxtAlt: TcxTextEdit;
    btnSimpanAlt: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxtDet: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColIN: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxColOUT: TcxGridColumn;
    zqrDetAkun: TZReadOnlyQuery;
    dsDetAkun: TDataSource;
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanAltClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTaxType: TfrmTaxType;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmTaxType.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
    i,j : Integer ;
    q: TZQuery;
begin
  inherited;
   try
     i := cxGrid1DBTableView1.DataController.GetFocusedRecordIndex;
   cxtAlt.Text := cxGrid1DBTableView1.DataController.Values[i, cxGrid1DBTableView1id_tax.Index];

    cxtDet.DataController.RecordCount := 0;
    q := OpenRS('SELECT * FROM tbl_tax_detail where id_tax =''%s''',[cxtAlt.Text]) ;
  while not q.Eof do begin
    with cxtDet.DataController do begin
     j := AppendRecord ;
     Values[j, cxColno.Index] := q.FieldByName('no').AsInteger ;
     Values[j, cxColIN.Index] := q.FieldByName('in_tax').AsString ;
     Values[j, cxColOUT.Index] := q.FieldByName('out_tax').AsString ;
    end;
    q.Next;
  end;
  q.Close;
  except
  end;
end;

procedure TfrmTaxType.cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
  var
  Row: Integer;
begin
  inherited;
   Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmTaxType.FormCreate(Sender: TObject);
begin
  inherited;
zqrDetAkun.Open;
zTblTax.Open;
end;

procedure TfrmTaxType.btnSimpanAltClick(Sender: TObject);
var
  z : TZQuery ;
  i : Integer ;
begin
  inherited;
  dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_tax_detail WHERE id_tax = ''%s''',[cxtAlt.Text ]));
   z := OpenRS('SELECT * FROM tbl_tax_detail WHERE id_tax= ''%s''',[cxtAlt.Text ]);
   with cxtDet.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      z.Insert;
      z.FieldByName('No').Value := i+1;
      z.FieldByName('id_tax').Value := cxtAlt.Text;
      z.FieldByName('in_tax').Value := Values[i, cxColIN.Index];
      z.FieldByName('out_tax').Value := Values[i, cxColOUT.Index];
      z.Post;
    end;
  end;
  z.Close ;
   MsgBox('Tax Account Disimpan');
end;

end.
