unit unFrmPilihPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxCheckBox,
  cxSpinEdit, cxDBLookupComboBox, cxContainer, DB, ZAbstractRODataset,
  ZDataset, cxLabel, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmPilihPO = class(TForm)
    cxGrid1: TcxGrid;
    cxtbSO: TcxGridTableView;
    cxColPilih: TcxGridColumn;
    cxColTanggal: TcxGridColumn;
    cxColNoPO: TcxGridColumn;
    cxColKodeBrg: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColQtyPO: TcxGridColumn;
    cxColQtyDiterima: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColGdg: TcxGridColumn;
    cxColJmlTerima: TcxGridColumn;
    cxColIdBrg: TcxGridColumn;
    cxColIdSO: TcxGridColumn;
    cxColIdSatuan: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    Button1: TButton;
    Button2: TButton;
    cxLabel1: TcxLabel;
    zqrPO: TZReadOnlyQuery;
    dsPO: TDataSource;
    zqrGdg: TZReadOnlyQuery;
    dsGdg: TDataSource;
    cxColHarga: TcxGridColumn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxtbSODataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mIdBrg, mIdSupp: String;
    mIdPO: String;
    mIsEdit: Boolean;
  public
    { Public declarations }
     property IdBrg: String read mIdBrg write mIdBrg;
    property IdSupp: String read mIdSupp write mIdSupp;
    property IdPO: String read mIdPO;
    property IsEdit: boolean write mIsEdit;
  end;

var
  frmPilihPO: TfrmPilihPO;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmPilihPO.Button1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmPilihPO.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel ;
end;

procedure TfrmPilihPO.cxtbSODataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  sa: Real;
begin

  if AItemIndex = cxColPilih.Index then begin
    if ADataController.Values[ARecordIndex, AItemIndex] = 1 then begin
      if (ADataController.Values[ARecordIndex, cxColJmlTerima.Index] = 0) or
        VarIsNull(ADataController.Values[ARecordIndex, cxColJmlTerima.Index]) then begin
        MsgBox('Masukkan Jumlah penerimaan terlebih dahulu.');
        ADataController.Values[ARecordIndex, AItemIndex] := 0;
        Abort;
      end
      else if VarIsNull(ADataController.Values[ARecordIndex, cxColGdg.Index])= True then begin
        MsgBox('Pilih Gudang penerimaan terlebih dahulu.');
        Abort;
      end;
    end;
  end
  else if AItemIndex = cxColJmlTerima.Index then begin
      if ( ADataController.Values[ARecordIndex, cxColJmlTerima.Index] >
        (ADataController.Values[ARecordIndex, cxColQtyPO.Index]- ADataController.Values[ARecordIndex, cxColQtyDiterima.Index])) then begin
        MsgBox('Jumlah Barang Diterima Melebihi PO.');
        Abort
      end;
  end;

  {if AItemIndex = cxColGdg.Index then begin
    sa := GetStokGudang(ADataController.Values[ARecordIndex, cxColIdBrg.Index], ADataController.Values[ARecordIndex, cxColGdg.Index]);
    ADataController.Values[ARecordIndex, cxColStok.Index] := sa;
  end; }
end;

procedure TfrmPilihPO.FormCreate(Sender: TObject);
begin
   zqrGdg.Open;
end;

procedure TfrmPilihPO.FormShow(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  if not mIsEdit then begin
    q := OpenRS('SELECT a.tanggal, a.no_bukti, b.kode_brg, c.kode, c.deskripsi, b.qty, b.satuan, ' +
      '(SELECT ifnull(SUM(qty),0) FROM tbl_spbb_det WHERE no_po = a.no_bukti AND kode_brg = b.kode_brg) qty_terkirim ' +
      'FROM tbl_po_head a ' +
      'LEFT JOIN tbl_po_det b ON a.no_bukti = b.no_bukti ' +
      'LEFT JOIN tbl_barang c ON c.kode = b.kode_brg ' +
      'WHERE a.kode_supp = ''%s'' AND a.f_completed = 0 AND a.f_approval = 1 and (b.qty-(SELECT ifnull(SUM(qty),0) FROM tbl_spbb_det WHERE no_po = a.no_bukti AND kode_brg = b.kode_brg))>=1 ', [IdSupp]) ;
  end
  else begin
    q := OpenRS('SELECT a.tanggal, a.no_bukti, b.kode_brg, c.kode, c.deskripsi, b.qty,b.satuan, ' +
      '(SELECT ifnull(SUM(qty),0) FROM tbl_spbb_det WHERE no_po = a.no_bukti AND kode_brg = b.kode_brg) qty_terkirim ' +
      'FROM tbl_po_head a ' +
      'LEFT JOIN tbl_po_det b ON a.no_bukti = b.no_bukti ' +
      'LEFT JOIN tbl_barang c ON c.kode = b.kode_brg ' +
      'WHERE a.kode_supp = ''%s'' AND a.f_approval = 1 and (b.qty-(SELECT ifnull(SUM(qty),0) FROM tbl_spbb_det WHERE no_po = a.no_bukti AND kode_brg = b.kode_brg))>=1', [IdSupp]);
  end;
  cxtbSO.BeginUpdate;
  while not q.Eof do begin
    with cxtbSO.DataController do begin
      i := AppendRecord;
      Values[i, cxColPilih.Index] := 0;
      Values[i, cxColTanggal.Index] := q.FieldByName('tanggal').AsDateTime;
      Values[i, cxColNoPO.Index] := q.FieldByname('no_bukti').AsString;
      Values[i, cxColKodeBrg.Index] := q.FieldByName('kode').AsString;
      Values[i, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
      Values[i, cxColQtyPO.Index] := q.FieldByName('qty').AsFloat;
      Values[i, cxColQtyDiterima.Index] := q.FieldByName('qty_terkirim').AsFloat;
      Values[i, cxColIdBrg.Index] := q.FieldByName('kode_brg').AsString;
      //Values[i, cxColHarga.Index] := q.FieldByName('harga').AsFloat;
      //Values[i, cxColIdSO.Index] := q.FieldByName('id').AsString;
      //Values[i, cxColGdg.Index] := Aplikasi.GdgBB;
      //Values[i, cxColStok.Index] := GetStokGudang(q.FieldByName('kode_brg').AsInteger, Aplikasi.GdgBJ);
      Values[i, cxColSatuan.Index] := q.FieldByName('satuan').AsString;
      //Values[i, cxColIdSatuan.Index] := q.FieldByName('id_satuan').AsInteger;
    end;
    q.Next;
  end;
  cxtbSO.EndUpdate;
end;

end.
