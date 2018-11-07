unit unFrmAlamatKirim;

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
  cxData, cxDataStorage, DB, cxDBData, cxTextEdit, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls;

type
  TfrmAlamatKirim = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxtNama: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtAlamat: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtKota: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtKodePos: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtNegara: TcxTextEdit;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    cxtKode: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    tbl: TZTable;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmAlamatKirim: TfrmAlamatKirim;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmAlamatKirim.FormCreate(Sender: TObject);
begin
  inherited;
  tbl := OpenTbl('tbl_alamat_kirim');
  pg.ActivePageIndex := 0;
end;

procedure TfrmAlamatKirim.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  tbl_sa: TZTable;
  q, qSA: TZQuery;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;


  if Trim(cxtNama.Text) = '' then begin
    MsgBox('Nama harus diisi.');
    cxtNama.SetFocus;
  end
  else if Trim(cxtAlamat.Text) = '' then begin
    MsgBox('Alamat pengiriman harus diisi.');
    cxtAlamat.SetFocus;
  end
  else begin

    f := True;
    if self.Jenis = 'tambah' then begin
      tbl.Insert;
    end
    else begin
      tbl.Locate('kode',StrToInt(cxtKode.text),[loCaseInsensitive]);
      tbl.Edit;
    end;

    if f then begin
      tbl.FieldByName('kode').AsString := cxtKode.Text;
      tbl.FieldByName('nama').AsString := Trim(cxtNama.Text);
      tbl.FieldByName('alamat').AsString := Trim(cxtAlamat.Text);
      tbl.FieldByName('kota').AsString := Trim(cxtKota.Text);
      tbl.FieldByName('negara').AsString := Trim(cxtNegara.Text);
      tbl.FieldByName('kode_pos').AsString := Trim(cxtKodePos.Text);
      tbl.Post;

      MsgBox('Data Alamat pengiriman sudah disimpan.');
      ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);
    end;

  end;
end;

procedure TfrmAlamatKirim.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q: TZQuery;
  i: Integer;
begin
  inherited;

  if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM tbl_alamat_kirim WHERE kode = %s',
      [zQry.FieldByName('kode').AsString]);
    cxtKode.Text := q.FieldByName('kode').AsString;
    cxtNama.Text := q.FieldByName('nama').AsString;
    cxtAlamat.Text := q.FieldByName('alamat').AsString;
    cxtKodePos.Text := q.FieldByName('kode_pos').AsString;
    cxtNegara.Text := q.FieldByName('negara').AsString;

    pg.ActivePageIndex := 0;
    cxtNama.SetFocus;
    q.Close;
  end;
end;

procedure TfrmAlamatKirim.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  zQry.Close;
  zQry.Open;
end;

end.
