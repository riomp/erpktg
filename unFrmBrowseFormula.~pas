unit unFrmBrowseFormula;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, StdCtrls,
  cxCheckBox;

type
  TfrmBrowseFormula = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGrid1DBTableView1deskripsi: TcxGridDBColumn;
    zqrForH: TZReadOnlyQuery;
    dsForH: TDataSource;
    cxGridDBTableView1id: TcxGridDBColumn;
    cxGridDBTableView1kode: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    zqrForD: TZReadOnlyQuery;
    dsForD: TDataSource;
    cxGridDBTableView2id: TcxGridDBColumn;
    cxGridDBTableView2kode: TcxGridDBColumn;
    cxGridDBTableView2nama: TcxGridDBColumn;
    cxGridDBTableView2kode_brg: TcxGridDBColumn;
    cxGridDBTableView2qty: TcxGridDBColumn;
    cxGridDBTableView2satuan: TcxGridDBColumn;
    cxGridDBTableView2dibuka: TcxGridDBColumn;
    cxGridDBTableView2dibatasi: TcxGridDBColumn;
    cxGridDBTableView2deskripsi: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    Button1: TButton;
    btnKeluar: TButton;
    cxGrid1DBTableView1f_formula: TcxGridDBColumn;
    cxGridDBTableView2stok: TcxGridDBColumn;
    cxGrid1DBTableView1stok: TcxGridDBColumn;
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBrowseFormula: TfrmBrowseFormula;

implementation

uses unAplikasi, unDm, unTools, unFrmMstFormula;

{$R *.dfm}

procedure TfrmBrowseFormula.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with zqrForH do begin
    Close;
    ParamByName('kode').AsString := zqrBrg.FieldByName('kode').AsString;
    Open;
  end;
end;

procedure TfrmBrowseFormula.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with zqrForD do begin
    Close;
    ParamByName('kode').AsString := zqrForH.FieldByName('kode').AsString;
    ParamByName('nama').AsString := zqrForH.FieldByName('nama').AsString;
    Open;
  end;
end;

procedure TfrmBrowseFormula.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBrowseFormula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmBrowseFormula.Button1Click(Sender: TObject);
var
  q: TZQuery;
  f: TFrmMstFormula;
begin
  q := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = ''%s''',
    [zqrBrg.FieldByName('kode').AsString]);
  if not q.IsEmpty then begin
    f := TFrmMstFormula.Create(Self);
    f.Kode := q.FieldByName('kode_brg').AsString;
    f.Jenis := 'edit';
    f.ShowModal;
    f.Release;
  end;
  q.Close;
end;

procedure TfrmBrowseFormula.FormContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  Screen.Cursor := crSQLWait;
  zqrBrg.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmBrowseFormula.FormCreate(Sender: TObject);
begin
  if aplikasi.UserDept <> 'QAC' then begin
    Button1.Visible := False;
    btnKeluar.Left := Button1.Left;
  end;
  zqrBrg.Open;
end;

end.
