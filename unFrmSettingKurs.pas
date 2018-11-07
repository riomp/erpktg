unit unFrmSettingKurs;

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
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid;

type
  TfrmSettingKurs = class(TfrmTplMaster)
    nxGrd: TNextGrid;
    nxColMataUang: TNxTextColumn;
    nxColRP: TNxNumberColumn;
    btnSimpan2: TButton;
    btnKeluar2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimpan2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettingKurs: TfrmSettingKurs;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmSettingKurs.FormCreate(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  inherited;

  pg.Enabled := True;

  q := OpenRS('SELECT * FROM tbl_mata_uang ORDER BY mata_uang');
  while not q.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
    q.Next;
  end;
  q.Close;

  for i := 0 to nxGrd.RowCount - 1 do begin
    q := OpenRS('SELECT * FROM tbl_kurs WHERE tanggal = ' +
      '(SELECT MAX(tanggal) FROM tbl_kurs) AND mata_uang = ''%s''',
      [nxGrd.Cell[nxColMataUang.Index, i].AsString]);
    if not q.IsEmpty then begin
      nxGrd.Cell[nxColRP.Index,i].AsFloat := q.FieldByName('rupiah').AsFloat;
    end;
    q.Close;  
  end;

  pnlTengah.Enabled := True;
end;

procedure TfrmSettingKurs.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmSettingKurs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Release;
end;

procedure TfrmSettingKurs.btnSimpan2Click(Sender: TObject);
var
  t: TZTable;
  i: Integer;
begin
  inherited;

  try
    dm.zConn.StartTransaction;
    t := OpenTbl('tbl_kurs');

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColRP.Index,i].AsFloat > 0 then begin
        t.Insert;
        t.FieldByName('tanggal').AsDateTime := APlikasi.NowServer;
        t.FieldByName('mata_uang').AsString := nxGrd.Cell[nxColMataUang.Index,i].AsString;
        t.FieldByName('rupiah').AsFloat := nxGrd.Cell[nxColRP.Index,i].AsFloat;
        t.Post;
      end;
    end;
    dm.zConn.Commit;
    MsgBox('Setting kurs sudah disimpan.');
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;

end;

end.
