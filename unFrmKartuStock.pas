unit unFrmKartuStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxLabel,
  StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxSpinEdit, cxCheckBox;

type
  TfrmKartuStock = class(TfrmTplTrans)
    zGudang: TZQuery;
    dsGudang: TDataSource;
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxLabel3: TcxLabel;
    cxlGudang: TcxLookupComboBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrKS: TZReadOnlyQuery;
    dsKS: TDataSource;
    cxTblKS: TcxGridDBTableView;
    cxColKode: TcxGridDBColumn;
    cxColDeskripsi: TcxGridDBColumn;
    cxColKelompok: TcxGridDBColumn;
    cxColSubKelompok: TcxGridDBColumn;
    cxColSatuan: TcxGridDBColumn;
    cxColSA: TcxGridDBColumn;
    cxColIn: TcxGridDBColumn;
    cxColOut: TcxGridDBColumn;
    cxColPlot: TcxGridDBColumn;
    cxColEnd: TcxGridDBColumn;
    cxColEndPlot: TcxGridDBColumn;
    cxColBuffer: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Shape7: TShape;
    cxLabel14: TcxLabel;
    cxChkPosting: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure cxTblKSStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure cxChkPostingPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKartuStock: TfrmKartuStock;

implementation

uses
  unDm, unTools, unAplikasi, unFrmHistoryMutasi, unFrmHistoryMutasiValue;

{$R *.dfm}

procedure TfrmKartuStock.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  zGudang.Open;
end;

procedure TfrmKartuStock.btnProsesClick(Sender: TObject);
var
  z,q : TZQuery ;
  i : Integer;
begin
  inherited;
  if cxChkPosting.Checked = False then begin
       Screen.Cursor := crSQLWait;
      dm.zConn.ExecuteDirect('call sp_kartustock(''' + cxlGudang.EditValue + ''',''' + FormatDateTime('yyyy-mm-dd', cxdTgl1.Date) + ''',''' + FormatDateTime('yyyy-mm-dd', cxdTgl2.Date) + ''')');

      zqrKS.SQL.Text := 'SELECT * FROM _ks';
      zqrKS.Open;

      if cxlGudang.EditValue='G-BB' then begin
        cxColPlot.Visible := True ;
        cxColEndPlot.Visible := True ;
      end
      else begin
         cxColPlot.Visible := False ;
        cxColEndPlot.Visible := False ;
      end;
       Screen.Cursor := crDefault;
  end else begin
    Screen.Cursor := crSQLWait;
     dm.zConn.ExecuteDirect('call sp_kartustockall(''' + FormatDateTime('yyyy-mm-dd', cxdTgl1.Date) + ''',''' + FormatDateTime('yyyy-mm-dd', cxdTgl2.Date) + ''')');

      zqrKS.SQL.Text := 'SELECT * FROM _ks';
      zqrKS.Open;
      Screen.Cursor := crDefault;
  end;

  {q := OpenRS('SELECT * FROM _ks');


  cxTblStock.DataController.BeginUpdate;
  while not q.Eof do begin
    Screen.Cursor := crSQLWait;
    with cxTblStock.DataController do begin
      i := AppendRecord;
      Values[i, cxColkode.Index]         := q.FieldByName('kode_brg').Value;
      Values[i, cxColDeskripsi.Index]    := q.FieldByName('deskripsi').Value;
      Values[i, cxColKelompok.Index]     := q.FieldByName('kelompok').Value;
      Values[i, cxColSubKelompok.Index]  := q.FieldByName('sub_kelompok').Value;
      Values[i, cxColSatuan.Index]       := q.FieldByName('unitid').Value;
    end;
    q.Next;
  end;
    Screen.Cursor := crDefault;
    q.Close;
  cxTblStock.DataController.EndUpdate;   }
end;

procedure TfrmKartuStock.cxTblKSStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  inherited;
   if (ARecord.Values[cxColBuffer.Index]=0) then begin
    AStyle := cxStyle1;
  end;
end;

procedure TfrmKartuStock.btnSimpanClick(Sender: TObject);
var
  f : TFrmHistoryMutasi ;
begin
  inherited;
  f := TFrmHistoryMutasi.Create(Self);
  f.IdBrg := zqrKS.FieldByName('kode_brg').AsString;
  f.lblJudul.Caption := zqrKS.FieldByName('kode_brg').AsString  + ' - ' + zqrKS.FieldByName('deskripsi').AsString;
  f.cxsSA.EditValue :=  zqrKS.FieldByName('saldo_awal').AsFloat ;
  f.cxdTgl1.Date := cxdTgl1.Date ;
  f.cxdTgl2.Date := cxdTgl2.Date ;
  f.zGudang.Open;
  f.cxlGudang.EditValue := cxlGudang.EditValue;
  f.ShowModal;
end;

procedure TfrmKartuStock.btnBaruClick(Sender: TObject);
var
  f : TfrmHistoryMutasiValue ;
begin
  inherited;
    f := TFrmHistoryMutasiValue.Create(Self);
  f.IdBrg := zqrKS.FieldByName('kode_brg').AsString;
  f.lblJudul.Caption := zqrKS.FieldByName('kode_brg').AsString  + ' - ' + zqrKS.FieldByName('deskripsi').AsString;
  f.cxsSA.EditValue :=  zqrKS.FieldByName('saldo_awal').AsFloat ;
  f.cxSAV.EditValue :=  zqrKS.FieldByName('hpp_awal').AsFloat ;
  f.cxsTSAV.EditValue :=  (zqrKS.FieldByName('saldo_awal').AsFloat * zqrKS.FieldByName('hpp_awal').AsFloat) ;
  f.cxdTgl1.Date := cxdTgl1.Date ;
  f.cxdTgl2.Date := cxdTgl2.Date ;
  f.zGudang.Open;
  f.cxlGudang.EditValue := cxlGudang.EditValue;
  f.ShowModal;
end;


procedure TfrmKartuStock.cxChkPostingPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if cxChkPosting.Checked = True then begin
    cxlGudang.Enabled := False;
    btnSimpan.Enabled := False;
    btnBaru.Enabled   := False;
  end
  else begin
    cxlGudang.Enabled := True;
    btnSimpan.Enabled := True;
    btnBaru.Enabled   := True;
  end;
end;

end.
