unit unFrmSettingDefaultAkun2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls,
  cxDBLookupComboBox;

type
  TfrmSettingDefaultAkun2 = class(TfrmTplMaster)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxtbDefAkun: TcxGridTableView;
    cxColJenis: TcxGridColumn;
    cxColKodeAkun: TcxGridColumn;
    cxColNamaAkun: TcxGridColumn;
    cxColKodeJenis: TcxGridColumn;
    zqrAkunDef: TZReadOnlyQuery;
    dsAkunDef: TDataSource;
    btnSimpan2: TButton;
    btnKeluar2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cxtbDefAkunDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettingDefaultAkun2: TfrmSettingDefaultAkun2;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmSettingDefaultAkun2.FormCreate(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  inherited;
  zqrAkunDef.Open;
  q := OpenRS('SELECT * FROM tbl_akundefault');
  while not q.Eof do begin
    with cxtbDefAkun.DataController do begin
      i := AppendRecord;
      Values[i, cxColJenis.Index] := q.FieldByName('nama').AsString;
      Values[i, cxColKodeAkun.Index] := q.FieldByName('noakun').AsString;
      Values[i, cxColKodeJenis.Index] := q.Fieldbyname('jenis').AsString;
    end;
    q.Next;
  end;
  q.Close;
end;

procedure TfrmSettingDefaultAkun2.cxtbDefAkunDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColKodeAkun.Index then
    ADataController.Values[ARecordIndex, cxColNamaAkun.Index] := ADataController.Values[ARecordIndex, cxColKodeAkun.Index];
  if AItemIndex = cxColNamaAkun.Index then
    ADataController.Values[ARecordIndex, cxColKodeAkun.Index] := ADataController.Values[ARecordIndex, cxColNamaAkun.Index];
end;

procedure TfrmSettingDefaultAkun2.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSettingDefaultAkun2.btnSimpan2Click(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  inherited;
  with cxtbDefAkun.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      dm.zConn.ExecuteDirect(
        Format('UPDATE tbl_akundefault SET noakun = ''%s'' WHERE jenis = ''%s''',
          [Values[i, cxColKodeAkun.Index], Values[i, cxColKodeJenis.Index]])
      );
    end;
  end;
  MsgBox('Setting default akun sudah disimpan.');
end;

end.
