unit unFrmEditDetailBOM_SPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit,
  cxLabel, ZDataset;

type
  TfrmEditDetailBOM_SPK = class(TForm)
    cxLabel1: TcxLabel;
    cxtDibuka: TcxTextEdit;
    cxtDibatasi: TcxTextEdit;
    cxLabel2: TcxLabel;
    nxGrd: TNextGrid;
    nxColNo: TNxIncrementColumn;
    nxColKode: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    btnOK: TButton;
    btnBatal: TButton;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    nxColStok: TNxNumberColumn;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    mKode, mNama, mDibatasi, mDibuka: string;
    mQty: real;
    mResult: string;
  public
    property Kode: string write mKode;
    property Nama: string write mNama;
    property Dibuka: string write mDibuka;
    property Dibatasi: string write mDibatasi;
    property Qty: Real write mQty;
    property Result: string read mResult;
  end;

var
  frmEditDetailBOM_SPK: TfrmEditDetailBOM_SPK;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmEditDetailBOM_SPK.FormShow(Sender: TObject);
var
  q, qs: TZQuery;
  sql: string;
  i: integer;
begin
  cxtDibuka.Text := mDibuka;
  cxtDibatasi.Text := mDibatasi;

  if mDibatasi <> '' then
    sql := Format('SELECT kode, deskripsi FROM tbl_barang WHERE ' +
      'subkategori = ''%s''',[mDibatasi])
  else
    sql := Format('SELECT kode, deskripsi FROM tbl_barang ' +
      'WHERE kategori = ''%s''',[mDibuka]);

  q := OpenRS(sql);

  while not q.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColKode.Index, i].AsString := q.FieldByName('kode').AsString;
    nxGrd.Cell[nxColDesk.Index, i].AsString := q.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQty.Index, i].AsFloat := mQty;

    qs := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''G01''',
      [q.FieldByName('kode').AsString]);
    nxGrd.Cell[nxColStok.Index,i].AsFloat := qs.FieldByName('stok').AsFloat;
    qs.Close;

    q.Next;
  end;
  
  q.Close;

end;

procedure TfrmEditDetailBOM_SPK.btnOKClick(Sender: TObject);
begin
  mResult := nxGrd.Cell[nxColKode.Index, nxGrd.SelectedRow].AsString;
  ModalResult := mrOk;
end;

procedure TfrmEditDetailBOM_SPK.btnBatalClick(Sender: TObject);
begin
  ModalResult := mrNone;
  Close;
end;

end.
