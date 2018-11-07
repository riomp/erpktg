unit unFrmHasilPercobaan;

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
  ZAbstractRODataset, ZDataset, cxMaskEdit, cxSpinEdit, cxTextEdit, cxMemo,
  cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmHasilPercobaan = class(TfrmTplTrans)
    cxGrd: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTblno_trial: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTblkode_brg: TcxGridDBColumn;
    cxTbldeskripsi: TcxGridDBColumn;
    cxTblqty: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTblf_status: TcxGridDBColumn;
    cxTblkode_brg_jadi: TcxGridDBColumn;
    cxTblf_app_mgmt: TcxGridDBColumn;
    cxTblbahan_dari: TcxGridDBColumn;
    cxTblkode_brg_sample: TcxGridDBColumn;
    cxTblf_app_awal: TcxGridDBColumn;
    cxTblf_app_awal_user: TcxGridDBColumn;
    cxTblf_app_awal_tanggal: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxMemDesk: TcxMemo;
    cxLabel2: TcxLabel;
    cxtBahanDari: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtSample: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtSatuanSamples: TcxTextEdit;
    cxsJmlSamples: TcxSpinEdit;
    zqrTrial: TZReadOnlyQuery;
    dsTrial: TDataSource;
    cxmHasilPercobaan: TcxMemo;
    cxLabel5: TcxLabel;
    cxTblColumn1: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    cxTblColumn4: TcxGridDBColumn;
    procedure cxTblFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHasilPercobaan: TfrmHasilPercobaan;

implementation

uses unTools, unDm, unAplikasi;

{$R *.dfm}

procedure TfrmHasilPercobaan.cxTblFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q, qs: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',
    [zqrTrial.FieldByName('no_trial').AsString]);

  cxMemDesk.Text := q.FieldByName('deskripsi_awal').AsString;
  cxmHasilPercobaan.Text := q.FieldByName('hasil_percobaan').AsString;
  cxtBahanDari.Text := q.FieldByName('bahan_dari').AsString;

  if not q.FieldByName('kode_brg_sample').IsNull then begin
    qs := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = %s',
      [q.FieldByName('kode_brg_sample').AsString]);
    cxtSample.Text := qs.FieldByName('deskripsi').AsString;
    cxsJmlSamples.Value := q.FieldByName('jml_samples').AsFloat;
    cxtSatuanSamples.Text := q.FieldByName('satuan_samples').AsString;
    qs.Close;
  end
  else begin
    cxtSample.Text := '';
  end;

  q.Close;
end;

procedure TfrmHasilPercobaan.FormCreate(Sender: TObject);
begin
  inherited;
  zqrTrial.Open;
  pnlTengah.Enabled := True;
end;

end.
