unit unFrmCetakKirimConsum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxLabel, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset,
  cxCheckComboBox, cxCheckBox;

type
  TfrmCetakKirimConsum = class(TfrmTplTrans)
    cxTblH: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqrH: TZReadOnlyQuery;
    dsH: TDataSource;
    cxTblHno_bukti: TcxGridDBColumn;
    cxTblHtanggal: TcxGridDBColumn;
    cxTblHuser: TcxGridDBColumn;
    cxTblHuser_dept: TcxGridDBColumn;
    cxTblHf_cetak: TcxGridDBColumn;
    cxTblHColumn1: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxTblD: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrD: TZReadOnlyQuery;
    dsD: TDataSource;
    cxTblDkode_brg: TcxGridDBColumn;
    cxTblDgudang_asal: TcxGridDBColumn;
    cxTblDgudang_tujuan: TcxGridDBColumn;
    cxTblDqty: TcxGridDBColumn;
    cxTblDsatuan: TcxGridDBColumn;
    cxTblDdeskripsi: TcxGridDBColumn;
    btnCetak: TButton;
    cxTblHColumn2: TcxGridDBColumn;
    cxTblHColumn3: TcxGridDBColumn;
    procedure cxTblHFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCetakKirimConsum: TfrmCetakKirimConsum;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum;

{$R *.dfm}

procedure TfrmCetakKirimConsum.cxTblHFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  if zqrD.Active then zqrD.Close;
  zqrD.ParamByName('no_bukti').AsString := zqrH.FieldByName('no_bukti').AsString;
  zqrD.Open;
end;

procedure TfrmCetakKirimConsum.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxTblH.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; //TcxBooleanValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;
end;

procedure TfrmCetakKirimConsum.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
  i: Integer;
  lstSJ: TStringList;
  chk, sNoSO: string;
  qCek: TZQuery;
begin
  lstSJ := TStringList.Create;
  for i := 0 to cxTblH.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTblH.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblH.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSJ.Add('''' + cxTblH.DataController.Values[i,1] + '''');
      dm.zConn.ExecuteDirect('UPDATE tbl_trsmutasi_head ' +
        'SET f_cetak = f_cetak + 1 WHERE no_bukti = ''' +
        cxTblH.DataController.Values[i,1] + '''');
    end;
  end;

  if lstSJ.Count > 0 then begin
    f := TfrmLapUmum.Create(Self);

    if f.zqrKirimBC.Active then f.zqrKirimBC.Close;

    f.zqrKirimBC.SQL.Strings[1] := '';
    f.zqrKirimBC.SQL.Strings[1] :=  'WHERE no_bukti IN (' + lstSJ.CommaText + ')';
    f.zqrKirimBC.Open;
    f.rptKirimBC.ShowReport(True);
    f.Release;

  end;
end;

procedure TfrmCetakKirimConsum.FormCreate(Sender: TObject);
begin
  inherited;
  zqrH.Open;
end;

end.
