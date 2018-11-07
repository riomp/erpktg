unit unFrmMstTarget;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
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
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, StdCtrls, ExtCtrls, ZAbstractRODataset, ZDataset,
  cxGridExportLink, ShellAPI;

type
  TfrmMstTarget = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxlBrg: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxlMesin: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxsTarget: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxsTargetKG: TcxSpinEdit;
    cxTblView: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    btnSimpan2: TButton;
    zqrTarget: TZReadOnlyQuery;
    dsTarget: TDataSource;
    cxTblViewkode_brg: TcxGridDBColumn;
    cxTblViewdeskripsi: TcxGridDBColumn;
    cxTblViewkode_mesin: TcxGridDBColumn;
    cxTblViewtarget: TcxGridDBColumn;
    cxTblViewtarget_kg: TcxGridDBColumn;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxsKapasitas: TcxSpinEdit;
    cxTblViewColumn1: TcxGridDBColumn;
    btnExcel: TButton;
    cxTblViewColumn2: TcxGridDBColumn;
    btnHapusTarget: TButton;
    procedure btnSimpan2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnExcelClick(Sender: TObject);
    procedure btnHapusTargetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMstTarget: TfrmMstTarget;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMstTarget.btnSimpan2Click(Sender: TObject);
var
  q: TZQuery;
  bm: Variant;
begin
  inherited;

  //if cxsTarget.Value = 0 then begin
  //  cxsTarget.SetFocus;
  //  Abort;
  //end;

  if cxsTargetKG.Value = 0 then begin
    cxsTargetKG.SetFocus;
    Abort;
  end;

  q := OpenRS('SELECT * FROM tbl_kapasitas_mesin WHERE kode_brg = ''%s'' AND kode_mesin = ''%s''',
    [zqrBrg.FieldByName('kode').AsString, zqrMesin.FieldByName('kode').AsString]);
  if not q.IsEmpty then
    q.Edit
  else
    q.Insert;
  q.FieldByName('kode_mesin').AsString := zqrMesin.FieldByName('kode').AsString;
  q.FieldByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
  q.FieldByName('target').AsFloat := cxsTarget.Value;
  q.FieldByName('target_kg').AsFloat := cxsTargetKG.Value;
  q.FieldByName('kapasitas').AsString := cxsKapasitas.Value;
  q.Post;

  try
    bm := zqrTarget.Bookmark;
    zqrTarget.Close;
    zqrTarget.Open;
    zqrTarget.Bookmark := bm;
  except
  end;

end;

procedure TfrmMstTarget.FormCreate(Sender: TObject);
begin
  inherited;
  zqrTarget.Open;
  zqrBrg.Open;
  zqrMesin.Open;
end;

procedure TfrmMstTarget.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  try
    cxlBrg.EditValue := zqrTarget.FieldByName('kode_brg').Value;
    cxlMesin.EditValue := zqrTarget.FieldByName('kode_mesin').Value;
    cxsTarget.Value := zqrTarget.FieldByName('target').Value;
    cxsTargetKG.Value := zqrTarget.FieldByName('target_kg').Value;
    cxsKapasitas.Value := zqrTarget.FieldByName('kapasitas').Value;
  except
  end;
end;

procedure TfrmMstTarget.btnExcelClick(Sender: TObject);
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

procedure TfrmMstTarget.btnHapusTargetClick(Sender: TObject);
begin
  inherited;
  try
    zqrTarget.Delete;
  except
  end;
end;

end.
