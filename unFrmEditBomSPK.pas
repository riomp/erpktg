unit unFrmEditBomSPK;

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
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit, NxColumnClasses,
  NxColumns, cxMaskEdit, cxSpinEdit;

type
  TfrmEditBomSPK = class(TfrmTplMaster)
    cxTblViewno_spk: TcxGridDBColumn;
    cxTblViewno_so: TcxGridDBColumn;
    cxTblViewkode_brg: TcxGridDBColumn;
    cxTblViewdeskripsi: TcxGridDBColumn;
    cxTblViewqty: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxtKodeBrg: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxtDesk: TcxTextEdit;
    cxtNoSO: TcxTextEdit;
    cxtCustomer: TcxTextEdit;
    nxGrd: TNextGrid;
    cxLabel4: TcxLabel;
    nxColKodeBrg: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColQtyBom: TNxNumberColumn;
    nxColQtyRev: TNxNumberColumn;
    cxTblViewColumn1: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cxsQtySPK: TcxSpinEdit;
    procedure btnSimpan2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnSimpanClick(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmEditBomSPK: TfrmEditBomSPK;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmEditBomSPK.btnSimpan2Click(Sender: TObject);
begin
  //

end;

procedure TfrmEditBomSPK.FormCreate(Sender: TObject);
begin
  inherited;
  pg.Enabled := True;
  zQry.Open;
end;

procedure TfrmEditBomSPK.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  qq: TZQuery;
  ii: Integer;
begin
  cxtNoSPK.Text := zQry.FieldByName('no_spk').AsString;
  cxtNoSO.Text := zQry.FieldByName('no_so').AsString;
  cxtKodeBrg.Text := zQry.FieldByName('kode_brg').AsString;
  cxtDesk.Text := zQry.FieldByName('deskripsi').AsString;
  cxsQtySPK.Value := zQry.FieldByName('qty').AsFloat;
  cxtCustomer.Text := zQry.FieldByName('nama').AsString;

  qq := OpenRS('SELECT a.kode_brg, b.deskripsi, a.qty FROM ' +
    'tbl_bom_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'WHERE no_spk = ''%s''', [cxtNoSPK.Text]);
  nxGrd.ClearRows;
  while not qq.Eof do begin
    ii := nxGrd.AddRow();
    nxGrd.Cell[nxColKodeBrg.Index, ii].AsString := qq.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColDesk.Index, ii].AsString := qq.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQtyBom.Index, ii].AsFloat := qq.FieldByName('qty').AsFloat;
    qq.Next;
  end;
  qq.Close;
  pg.ActivePageIndex := 0;

end;

procedure TfrmEditBomSPK.btnSimpanClick(Sender: TObject);
var
  ii, jj: integer;

begin
  inherited;
  jj := 0;
  for ii := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColQtyRev.Index, ii].AsFloat > 0 then begin
      dm.zConn.ExecuteDirect(
        Format('UPDATE tbl_bom_det SET qty = %s ' +
          ' WHERE no_spk = ''%s'' AND kode_brg = %s',
          [StringReplace(nxGrd.Cell[nxColQtyRev.Index, ii].AsString,',','.',[rfReplaceAll]),
           cxtNoSPK.Text,
           nxGrd.Cell[nxColKodeBrg.Index, ii].AsString
          ])
      );
      Inc(jj);
    end;
  end;

  if jj > 0 then begin
    MsgBox('Pengeditan BOM SPK sudah dilakukan.');
    ClearAll;
  end;

end;

procedure TfrmEditBomSPK.ClearAll;
begin
  cxtNoSPK.Text := '';
  cxtNoSO.Text := '';
  cxtKodeBrg.Text := '';
  cxtDesk.Text := '';
  cxsQtySPK.Value := 0;
  cxtCustomer.Text := '';
  nxGrd.ClearRows;
  btnBatalClick(nil);
end;

end.
