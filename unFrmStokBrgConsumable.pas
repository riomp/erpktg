unit unFrmStokBrgConsumable;

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
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxGridExportLink, ShellAPI;

type
  TfrmStokBrgConsumable = class(TfrmTplTrans)
    cxTblSBC: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqrSBC: TZReadOnlyQuery;
    dsSBC: TDataSource;
    cxTblSBCdept: TcxGridDBColumn;
    cxTblSBCdivisi: TcxGridDBColumn;
    cxTblSBCkode_brg: TcxGridDBColumn;
    cxTblSBCdeskripsi: TcxGridDBColumn;
    cxTblSBCmasuk: TcxGridDBColumn;
    cxTblSBCkeluar: TcxGridDBColumn;
    cxTblSBCstok_akhir: TcxGridDBColumn;
    cxTblDet: TcxGridDBTableView;
    cxGrdDetLevel1: TcxGridLevel;
    cxGrdDet: TcxGrid;
    zqrDet: TZReadOnlyQuery;
    dsDet: TDataSource;
    cxTblDetno_bukti: TcxGridDBColumn;
    cxTblDettanggal: TcxGridDBColumn;
    cxTblDetjenis: TcxGridDBColumn;
    cxTblDetkode_brg: TcxGridDBColumn;
    cxTblDetdeskripsi: TcxGridDBColumn;
    cxTblDetqty: TcxGridDBColumn;
    cxTblDetuser: TcxGridDBColumn;
    cxTblDetuser_dept: TcxGridDBColumn;
    Button1: TButton;
    procedure cxTblSBCFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStokBrgConsumable: TfrmStokBrgConsumable;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmStokBrgConsumable.cxTblSBCFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  try
    zqrDet.Close;
    zqrDet.ParamByName('kode_brg').AsInteger := zqrSBC.FieldByName('kode_brg').AsInteger;
    zqrDet.ParamByName('dept').AsString := zqrSBC.FieldByName('dept').AsString;
    zqrDet.ParamByName('divisi').AsString := zqrSBC.FieldByName('divisi').AsString;
    zqrDet.Open;
  except
  end;
end;

procedure TfrmStokBrgConsumable.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
end;

procedure TfrmStokBrgConsumable.Button1Click(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrd);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
