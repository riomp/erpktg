unit unFrmTaxGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, cxSpinEdit, cxDBLookupComboBox,
  cxGridDBTableView, ZDataset, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, cxGridCustomTableView, cxGridTableView, cxTextEdit,
  StdCtrls, cxNavigator, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls;

type
  TfrmTaxGroup = class(TfrmTransBaru)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxNavigator1: TcxNavigator;
    GroupBox1: TGroupBox;
    Label73: TLabel;
    cxtAlt: TcxTextEdit;
    btnSimpanAlt: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxtDet: TcxGridTableView;
    cxColRate: TcxGridColumn;
    cxColDeskrpsi: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    zTblTax: TZTable;
    dsTax: TDataSource;
    zqrDetAkun: TZReadOnlyQuery;
    dsDetAkun: TDataSource;
    cxGrid1DBTableView1id_group: TcxGridDBColumn;
    cxGrid1DBTableView1deskripsi: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSimpanAltClick(Sender: TObject);
    procedure cxtDetDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTaxGroup: TfrmTaxGroup;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmTaxGroup.FormCreate(Sender: TObject);
begin
  inherited;
  zqrDetAkun.Open ;
  zTblTax.Open ;
end;

procedure TfrmTaxGroup.cxGrid1DBTableView1FocusedRecordChanged(
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
   cxtAlt.Text := cxGrid1DBTableView1.DataController.Values[i, cxGrid1DBTableView1id_group.Index];

    cxtDet.DataController.RecordCount := 0;
    q := OpenRS('SELECT * FROM tbl_taxgroup_det where id_group =''%s''',[cxtAlt.Text]) ;
  while not q.Eof do begin
    with cxtDet.DataController do begin
     j := AppendRecord ;
     Values[j, cxColRate.Index] := q.FieldByName('rate').AsFloat ;
     Values[j, cxColDeskrpsi.Index] := q.FieldByName('id_tax').AsString ;
    end;
    q.Next;
  end;
  q.Close;
  except
  end;
end;

procedure TfrmTaxGroup.btnSimpanAltClick(Sender: TObject);
var
  z : TZQuery ;
  i : Integer ;
begin
  inherited;
  dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_taxgroup_det WHERE id_group = ''%s''',[cxtAlt.Text ]));
   z := OpenRS('SELECT * FROM tbl_taxgroup_det WHERE id_group= ''%s''',[cxtAlt.Text ]);
   with cxtDet.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      z.Insert;
      z.FieldByName('id_group').Value := cxtAlt.Text;
      z.FieldByName('id_tax').Value := Values[i, cxColDeskrpsi.Index];
      z.FieldByName('rate').Value := Values[i, cxColRate.Index];
      z.Post;
    end;
  end;
  z.Close ;
   MsgBox('Tax Detail Disimpan');
end;

procedure TfrmTaxGroup.cxtDetDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
  var
  q : TZQuery ;
begin
  inherited;
if AItemIndex = cxColDeskrpsi.Index then begin
    try
      cxtDet.BeginUpdate;

         q := OpenRS('SELECT rate FROM tbl_tax_type WHERE id_tax = ''%s''',
        [ADataController.Values[ARecordIndex, cxColDeskrpsi.Index]]);
        ADataController.Values[ARecordIndex, cxColRate.Index] := q.FieldByName('rate').AsFloat;


    finally
      cxtDet.EndUpdate;
    end;
  end
end;

end.
