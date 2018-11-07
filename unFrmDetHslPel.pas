unit unFrmDetHslPel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ZDataset, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, StdCtrls,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxLabel;

type
  TfrmDetHslPel = class(TForm)
    nxGrd: TNextGrid;
    nxColPilih: TNxCheckBoxColumn;
    nxColQty: TNxNumberColumn;
    nxColIndex: TNxNumberColumn;
    cxLabel1: TcxLabel;
    cxsTot: TcxSpinEdit;
    btnSimpan: TButton;
    btnBatal: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    mNoSO: string;
    mKodeBrg: string;
    mJenis: string;
    mLst: TStringList;
    mTotal: Real;
    procedure HitungTotal;
  public
    property NoSO: string write mNoSO;
    property KodeBrg: string write mKodeBrg;
    property Jenis: string write mJenis;
    property ListOfR: TStringList read mLst;
    property Total: Real read mTotal;
  end;

var
  frmDetHslPel: TfrmDetHslPel;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmDetHslPel.FormShow(Sender: TObject);
var
  q: TZQuery;
  i: integer;
  s: string;
begin
  if mJenis = 'afkir' then
    s := ' AND a.qty_afkir > 0'
  else
    s := ' AND a.qty_retur > 0';

  q := OpenRS('SELECT a.id, a.qty_afkir, a.qty_retur FROM tbl_hsl_prd_det a JOIN tbl_hsl_prd b ON ' +
    'a.no_bukti = b.no_bukti JOIN tbl_mo c ON b.no_spk = c.no_spk ' +
    'WHERE c.no_so = ''%s'' AND f_terima = 1' + s,
    [mNoSO]);

  while not q.Eof do begin
    i := nxGrd.AddRow();

    nxGrd.Cell[nxColIndex.Index,i].AsInteger := q.FieldByName('id').AsInteger;
    
    if mJenis = 'afkir' then
      nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty_afkir').AsFloat
    else
      nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty_retur').AsFloat;
    q.Next;  
  end;
  q.Close;
end;

procedure TfrmDetHslPel.FormCreate(Sender: TObject);
begin
  mLst := TStringList.Create;
end;

procedure TfrmDetHslPel.btnSimpanClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColPilih.Index,i].AsBoolean then
      mLst.Add(nxGrd.Cell[nxColIndex.Index,i].AsString + '=o')
    else
      mLst.Add(nxGrd.Cell[nxColIndex.Index,i].AsString + '=x');
  end;
  ModalResult := mrOk;
end;

procedure TfrmDetHslPel.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmDetHslPel.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  i: Integer;
begin
  if ACol = nxColPilih.Index then begin
    if nxGrd.Cell[nxColPilih.Index,ARow].AsBoolean then
      HitungTotal;
  end;
end;

procedure TfrmDetHslPel.HitungTotal;
var
  i: integer;
  tot: Real;
begin
  tot := 0;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColPilih.Index,i].AsBoolean then
      tot := tot + nxGrd.Cell[nxColQty.Index, i].AsFloat;
  end;
  mTotal := tot;
  cxsTot.Value := tot;
end;

end.
