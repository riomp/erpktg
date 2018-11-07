unit unFrmStatusReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxCheckBox,
  cxSpinEdit, cxCheckComboBox;

type
  TfrmStatusReq = class(TfrmTplMaster)
    cxgTbl1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    btnEdit2: TButton;
    zqrHead: TZReadOnlyQuery;
    dsHead: TDataSource;
    dsDet: TDataSource;
    zqrDet: TZReadOnlyQuery;
    cxgTbl1nama_karyawan: TcxGridDBColumn;
    cxgTbl1jabatan: TcxGridDBColumn;
    cxgTbl1bagian: TcxGridDBColumn;
    cxgTbl1no_bukti: TcxGridDBColumn;
    cxgTbl1tanggal: TcxGridDBColumn;
    cxgTbl1kode_proyek: TcxGridDBColumn;
    cxgTbl1diajukan: TcxGridDBColumn;
    cxgTbl1kode_kas: TcxGridDBColumn;
    cxgTbl1user: TcxGridDBColumn;
    cxgTbl1user_dept: TcxGridDBColumn;
    cxgTbl1tgl_input: TcxGridDBColumn;
    cxgTbl1f_app1: TcxGridDBColumn;
    cxgTbl1f_app2: TcxGridDBColumn;
    cxgTbl1f_app3: TcxGridDBColumn;
    cxgTbl1no_proyek: TcxGridDBColumn;
    cxgTbl1nama_paket: TcxGridDBColumn;
    cxgTbl1nama: TcxGridDBColumn;
    cxgTbl1jam: TcxGridDBColumn;
    cxgTbl1no_tr: TcxGridDBColumn;
    cxgTbl1dt_app1: TcxGridDBColumn;
    cxgTbl1dt_app2: TcxGridDBColumn;
    cxgTbl1dt_app3: TcxGridDBColumn;
    cxgTbl2: TcxGridDBTableView;
    cxgTbl2no_bukti: TcxGridDBColumn;
    cxgTbl2keterangan: TcxGridDBColumn;
    cxgTbl2merk: TcxGridDBColumn;
    cxgTbl2jumlah: TcxGridDBColumn;
    cxgTbl2satuan: TcxGridDBColumn;
    cxgTbl2harga_satuan: TcxGridDBColumn;
    cxgTbl2total: TcxGridDBColumn;
    cxgTbl2kode_req: TcxGridDBColumn;
    cxgTbl2kode_supp: TcxGridDBColumn;
    cxgTbl2keterangan_req: TcxGridDBColumn;
    cxgTbl2nama_supplier: TcxGridDBColumn;
    cxgTbl2kode_material: TcxGridDBColumn;
    cxgTbl2nama_material: TcxGridDBColumn;
    cxgTbl2f_lunas: TcxGridDBColumn;
    cxgTbl2id: TcxGridDBColumn;
    cxgTblDet: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxgTblDetno_bukti: TcxGridDBColumn;
    cxgTblDetketerangan: TcxGridDBColumn;
    cxgTblDetmerk: TcxGridDBColumn;
    cxgTblDetjumlah: TcxGridDBColumn;
    cxgTblDetsatuan: TcxGridDBColumn;
    cxgTblDetharga_satuan: TcxGridDBColumn;
    cxgTblDettotal: TcxGridDBColumn;
    cxgTblDetkode_req: TcxGridDBColumn;
    cxgTblDetkode_supp: TcxGridDBColumn;
    cxgTblDetketerangan_req: TcxGridDBColumn;
    cxgTblDetnama_supplier: TcxGridDBColumn;
    cxgTblDetkode_material: TcxGridDBColumn;
    cxgTblDetnama_material: TcxGridDBColumn;
    cxgTblDetf_lunas: TcxGridDBColumn;
    cxgTblDetid: TcxGridDBColumn;
    Button2: TButton;
    cxgTblDetColumn1: TcxGridDBColumn;
    btnSetLunas: TButton;
    procedure Button1Click(Sender: TObject);
    procedure cxgTbl1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnEdit2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSetLunasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatusReq: TfrmStatusReq;

implementation

uses unDm, unFrmTrsRequest;

{$R *.dfm}

procedure TfrmStatusReq.Button1Click(Sender: TObject);
begin
  inherited;  Close;
end;

procedure TfrmStatusReq.cxgTbl1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  with zqrDet do begin
    Close;
    ParamByName('no_bukti').AsString := zqrHead.FieldByName('no_bukti').AsString;
    Open;
  end;
end;

procedure TfrmStatusReq.btnEdit2Click(Sender: TObject);
var
  f: TFrmTrsRequest;
begin
  inherited;
  f := TFrmTrsRequest.Create(Self);
  f.NoRequest := zqrHead.FieldByName('no_bukti').AsString;
  f.ShowModal;
  //
end;

procedure TfrmStatusReq.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxgTblDet.CreateColumn;
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

procedure TfrmStatusReq.btnSetLunasClick(Sender: TObject);
var
  i: Integer;
  lstSJ: TStringList;
  chk: string;
begin
  lstSJ := TStringList.Create;
  for i := 0 to cxgTblDet.DataController.RecordCount - 1 do begin

    if VarIsNull(cxgTblDet.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxgTblDet.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSJ.Add(cxgTblDet.DataController.Values[i,1]);
    end;
  end;

  if lstSJ.Count > 0 then begin
    for i := 0 to lstSJ.Count - 1 do begin
      dm.zConn.ExecuteDirect('UPDATE tbl_trsrequest_det SET f_lunas = 1 WHERE ' +
        'id = ' + lstSJ.Strings[i]); 
    end;
    zqrDet.Close;
    zqrDet.Open;
  end;
end;

end.
