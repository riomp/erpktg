unit unFrmBuatSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxLabel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxSpinEdit, cxGridCustomTableView, cxGridTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, ZDataset, cxCheckBox;

type
  TfrmBuatSPK = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoSO: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtCustomer: TcxTextEdit;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    cxTbl: TcxGridTableView;
    cxColKode: TcxGridColumn;
    cxColDesk: TcxGridColumn;
    cxColQtySO: TcxGridColumn;
    cxColQtySPK: TcxGridColumn;
    cxColJenis: TcxGridColumn;
    cxTblColumn1: TcxGridColumn;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    mNoSO: string;
    mNoMO: string;
    mKodeBrg: string;
  public
    property NoSO: string read mNoSO write mNoSO;
    property NoMO: string read mNoMO write mNoMO;
    property KodeBrg: string read mKodeBrg write mKodeBrg;
  end;

var
  frmBuatSPK: TfrmBuatSPK;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmBuatSPK.FormShow(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  inherited;
  q := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',[mNoSO]);
  cxtNoSO.Text := q.FieldByName('no_bukti').AsString;
  cxtCustomer.Text := q.FieldByName('nama').AsString;
  q.Close;

  q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = ''%s''',
    [mNoSO, mKodeBrg]);
    
  i := cxTbl.DataController.AppendRecord;

  with cxTbl.DataController do begin
    Values[i, cxColKode.Index] := q.FieldByname('kode_brg').AsString;
    Values[i, cxColDesk.Index] := q.FieldByName('deskripsi').AsString;
    Values[i, cxColQtySO.Index] := q.FieldByname('qty').AsFloat;
    Values[i, cxColJenis.Index] := 'BARANG JADI';

    q.Close;

    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_routing a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE a.kode = ''%s''',[mKodeBrg]);
    while not q.Eof do begin
      i := AppendRecord;
      Values[i, cxColKode.Index] := q.FieldByname('kode_brg').AsString;
      Values[i, cxColDesk.Index] := q.FieldByName('deskripsi').AsString;
      Values[i, cxColQtySO.Index] := 0;
      Values[i, cxColJenis.Index] := q.FieldByName('routing').AsString;
      q.Next;
    end;
    q.Close;
  end;
  
end;

procedure TfrmBuatSPK.Button2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
