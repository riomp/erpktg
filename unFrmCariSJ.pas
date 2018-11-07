unit unFrmCariSJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, StdCtrls,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, unFrmTrsRetur, unFrmTrsRetur3, unFrmTplTrans;

type
  TFrmCariSJ = class(TForm)
    zqrSOhead: TZReadOnlyQuery;
    dsSOHead: TDataSource;
    zqrSODet: TZReadOnlyQuery;
    dsSODet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1f_complete: TcxGridDBColumn;
    cxGridDBTableView1notes: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGrid1DBTableView1user_dept: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Button1: TButton;
    btnBatal: TButton;
    nxGrdSODet: TNextGrid;
    nxColKdBrg: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    nxColDipesan: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    nxColSPMB: TNxNumberColumn;
    nxColTerkirim: TNxNumberColumn;
    nxColNoSPMB: TNxNumberColumn;
    nxColNoSO: TNxTextColumn;
    procedure zqrSOheadAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure nxGrdSODetAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnProsesClick(Sender: TObject);
  private
    mNoSO: string;
    mKodeCust: string;
    mKodeBrg: string;
    mfRetur3: TFrmTrsRetur3;
    mfRetur: TFrmTrsRetur;
  public
    property NoSO: string read mNoSO;
    property KodeCust: string write mKodeCust;
    property KodeBrg: string read mKodeBrg;
    property frmRetur3: TfrmTrsRetur3 write mfRetur3;
    property frmRetur: TfrmTrsRetur write mfRetur;
  end;

var
  frmCariSO: TFrmCariSJ;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TFrmCariSJ.zqrSOheadAfterScroll(DataSet: TDataSet);
var
  no_bukti: string;
  i: Integer;
begin
  {
  try
    no_bukti := zqrSOhead.FieldByName('no_bukti').AsString;
    if zqrSODet.Active then zqrSODet.Close;
    zqrSODet.ParamByName('no_bukti').AsString := no_bukti;
    zqrSODet.Open;

    with nxGrdSODet do begin
      ClearRows;
      while not zqrSODet.Eof do begin
        i := AddRow();
        Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
        Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
        Cell[3,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
        Cell[4,i].AsString := zqrSODet.FieldByName('satuan').AsString;
        zqrSODet.Next;
      end;
    end;

  except
  end;
  }
end;

procedure TFrmCariSJ.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := EncodeDate(2013,1,1);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TFrmCariSJ.Button1Click(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  for i := 0 to nxGrdSODet.RowCount - 1 do begin
    if nxGrdSODet.Cell[0,i].AsBoolean then begin
      if Assigned(mfRetur) then begin
        mfRetur.AddRow(
          zqrSOhead.FieldByName('no_bukti').AsString,
          nxGrdSODet.Cell[1,i].AsString
        );
      end
      else if Assigned(mfRetur3) then begin
        mfRetur3.AddRow(
          zqrSOhead.FieldByName('no_bukti').AsString,
          nxGrdSODet.Cell[1,i].AsString,
          nxGrdSODet.Cell[nxCOlNoSO.Index,i].AsString
        );
      end;
    end;
  end;
  
end;

procedure TFrmCariSJ.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCariSJ.cxGridDBTableView1DblClick(Sender: TObject);
begin
  //btnProsesClick(nil);
end;

procedure TFrmCariSJ.FormShow(Sender: TObject);
begin
  //btnProsesClick(nil);
end;

procedure TFrmCariSJ.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  no_bukti: string;
  i: Integer;
  q, q2, qSPMB, qPM: TZQuery;
begin
  try
    no_bukti := zqrSOhead.FieldByName('no_bukti').AsString;
    if zqrSODet.Active then zqrSODet.Close;
    zqrSODet.ParamByName('no_bukti').AsString := no_bukti;
    zqrSODet.Open;

    with nxGrdSODet do begin
      ClearRows;
      while not zqrSODet.Eof do begin
        i := AddRow();
        Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
        Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
        Cell[nxColDipesan.Index,i].AsFloat := zqrSODet.FieldByName('qty_so').AsFloat;
        Cell[nxColTerkirim.Index,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
        Cell[nxColNoSO.Index,i].AsString := zqrSODet.FieldByName('no_so').AsString;
        Cell[nxColSatuan.Index,i].AsString := zqrSODet.FieldByName('satuan').AsString;
        zqrSODet.Next;
      end;
    end;

  except
  end;
end;

procedure TFrmCariSJ.nxGrdSODetAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  //if Assigned(mfSPMB) then begin
  //  if ACol = 0 then begin
  //    if nxGrdSODet.Cell[5,ARow].AsFloat = 0 then
  //      nxGrdSODet.Cell[0,ARow].AsBoolean := False;
  //  end;
  //end;
end;

procedure TFrmCariSJ.btnProsesClick(Sender: TObject);
begin
  with zqrSOhead do begin
    Close;
    ParamByName('tgl1').AsDate := cxdTgl1.Date;
    ParamByName('tgl2').AsDate := cxdTgl2.Date;
    Open;
  end;
end;

end.
