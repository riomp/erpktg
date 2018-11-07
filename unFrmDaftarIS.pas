unit unFrmDaftarIS;

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
  cxLabel, cxTextEdit, cxMemo, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset;

type
  TfrmDaftarIS = class(TfrmTplTrans)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
    zqr: TZReadOnlyQuery;
    ds: TDataSource;
    cxGrid1DBTableView1no_is: TcxGridDBColumn;
    cxGrid1DBTableView1issue_date: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1app_rnd: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_app_rnd: TcxGridDBColumn;
    cxGrid1DBTableView1app_pm: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_app_pm: TcxGridDBColumn;
    btnEditIS: TButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    btnKeluar2: TButton;
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnEditISClick(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarIS: TfrmDaftarIS;

implementation

uses unAplikasi, unDm, unTools, unFrmIS;

{$R *.dfm}

procedure TfrmDaftarIS.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
begin
  inherited;
  try
    q := OpenRS('SELECT ket_tidak_app FROM tbl_is2 WHERE no_is = ''%s''',
      [zqr.FieldByName('no_is').AsString]);
    cxMemo1.Text := q.FieldByname('ket_tidak_app').AsString;
    q.Close;
  except
  end;
end;

procedure TfrmDaftarIS.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := true;
  zqr.Open;
end;

procedure TfrmDaftarIS.btnEditISClick(Sender: TObject);
var
  f: TFrmIS;
  NoIS: string;
begin
  NoIS := zqr.FieldByName('no_is').AsString;
  f := TfrmIS.Create(Self);
  f.NoIS := NoIS;
  f.Jenis := 'edit';
  f.Show;

end;

procedure TfrmDaftarIS.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
