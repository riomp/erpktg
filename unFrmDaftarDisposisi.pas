unit unFrmDaftarDisposisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox,
  cxSpinEdit, cxContainer, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ZAbstractRODataset, ZDataset, cxCheckComboBox, cxTextEdit, cxMemo,
  kbmMemTable,frxClass, cxMaskEdit, cxDropDownEdit, cxCalendar, unAplikasi;
type
  TfrmDaftarDisposisi = class(TfrmTplTrans)
    zqrH: TZReadOnlyQuery;
    dsH: TDataSource;
    zqrD: TZReadOnlyQuery;
    dsD: TDataSource;
    cxGrdD: TcxGrid;
    cxTblD: TcxGridDBTableView;
    cxTblDno_bukti: TcxGridDBColumn;
    cxTblDno_spmb: TcxGridDBColumn;
    cxTblDberat_total: TcxGridDBColumn;
    cxTblDberat_packing: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxGrdH: TcxGrid;
    cxTblH: TcxGridDBTableView;
    cxTblHno_bukti: TcxGridDBColumn;
    cxTblHtgl_input: TcxGridDBColumn;
    cxTblHapp_qac: TcxGridDBColumn;
    cxTblHapp_whl: TcxGridDBColumn;
    cxTblHberat_spmb: TcxGridDBColumn;
    cxTblHberat_bersih_truk: TcxGridDBColumn;
    cxTblHpersentase: TcxGridDBColumn;
    cxTblHberat_packing: TcxGridDBColumn;
    cxTblHberat_lain: TcxGridDBColumn;
    cxTblHnopol: TcxGridDBColumn;
    cxTblHberat_timbangan: TcxGridDBColumn;
    cxTblHberat_bersih: TcxGridDBColumn;
    cxTblHselisih: TcxGridDBColumn;
    cxTblHuser_qac: TcxGridDBColumn;
    cxTblHtgljam_app_qac: TcxGridDBColumn;
    cxTblHuser_whl: TcxGridDBColumn;
    cxTblHtgljam_app_whl: TcxGridDBColumn;
    cxTblHapp_mgmt: TcxGridDBColumn;
    cxTblHuser_mgmt: TcxGridDBColumn;
    cxTblHtgljam_app_mgmt: TcxGridDBColumn;
    cxGrdHLevel1: TcxGridLevel;
    btnCetak: TButton;
    btnKeluar2: TButton;
    rptDisposisi: TfrxReport;
    cxLabel2: TcxLabel;
    cxmDeskripsi: TcxMemo;
    cxLabel3: TcxLabel;
    cxmAkarMasalah: TcxMemo;
    cxLabel4: TcxLabel;
    cxmKetTambahan: TcxMemo;
    cxTblDColumn1: TcxGridDBColumn;
    btnRefresh: TButton;
    cxTblHColumn1: TcxGridDBColumn;
    cxTblHColumn2: TcxGridDBColumn;
    cxTblHColumn3: TcxGridDBColumn;
    cxTblHColumn4: TcxGridDBColumn;
    cxTblHColumn5: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    procedure btnKeluar2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTblHFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure cxTblHEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarDisposisi: TfrmDaftarDisposisi;

implementation

uses unTools, unFrmLapUmum, unDm;

{$R *.dfm}

procedure TfrmDaftarDisposisi.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmDaftarDisposisi.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxTblH.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;
end;

procedure TfrmDaftarDisposisi.cxTblHFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  cxmDeskripsi.Text := zqrH.FieldByName('deskripsi').AsString;
  cxmAkarMasalah.Text := zqrH.FieldByName('akar_masalah').AsString;
  cxmKetTambahan.Text := zqrH.FieldByName('ket_tambahan').AsString;

  zqrD.Close;
  zqrD.ParamByName('no_bukti').AsString := zqrH.FieldByName('no_bukti').AsString;
  zqrD.Open;
end;

procedure TfrmDaftarDisposisi.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := Aplikasi.TanggalServer;
  cxdTgl2.Date := Aplikasi.TanggalServer;
end;

procedure TfrmDaftarDisposisi.btnCetakClick(Sender: TObject);
var
  i,j,btnSelected: Integer;
  lst,lstD: TStringList;
  chk, sNoSO: string;
  q,qd: TZQuery;
  f: TfrmLapUmum;
  Memo: TfrxMemoView;
begin
  inherited;
  lst := TStringList.Create;
  lstD := TStringList.Create;
  for i := 0 to cxTblH.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTblH.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblH.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblH.DataController.Values[i,1]);
    end;
  end;

  btnSelected := MessageDlg('Cetak disposisi muat barang.',mtCustom,[mbYes,mbCancel], 0);

  if btnSelected = mrYes then begin

    for j := 0 to lst.Count - 1 do begin
      q := OpenRS('select * from tbl_disposisi_head where no_bukti = ''' + lst.Strings[j] + '''');

        qd := OpenRS('select * from tbl_disposisi_det where no_bukti = ''' + lst.Strings[j] + '''');
        lstd.Clear;
        while not qd.Eof do begin
          lstd.Add(qd.fieldByName('no_spmb').AsString);
          qd.Next;
        end;
        qd.Close;

        Memo := rptDisposisi.FindObject('Memo1') as TfrxMemoView;
        Memo.Text := lstd.CommaText;
        Memo := rptDisposisi.FindObject('Memo2') as TfrxMemoView;
        Memo.Text := q.fieldByName('tgl_input').AsString;
        Memo := rptDisposisi.FindObject('Memo3') as TfrxMemoView;
        Memo.Text := q.fieldByName('nopol').AsString;
        Memo := rptDisposisi.FindObject('Memo7') as TfrxMemoView;
        Memo.Text := q.fieldByName('berat_spmb').AsString;
        Memo := rptDisposisi.FindObject('Memo8') as TfrxMemoView;
        Memo.Text := q.fieldByName('selisih').AsString;
        Memo := rptDisposisi.FindObject('Memo9') as TfrxMemoView;
        Memo.Text := q.fieldByName('persentase').AsString;
        //rptDisposisi.ShowReport(True);
        rptDisposisi.PrepareReport;
        rptDisposisi.PrintOptions.ShowDialog := False;
        rptDisposisi.Print;

      q.Close;
    end;
  end else begin
  
  end;
end;

procedure TfrmDaftarDisposisi.cxTblHEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  i : Integer;
begin
  inherited;

  if AItem.Index = 0 then begin
    if AItem.EditValue = 'T' then begin
      if Abs(zqrH.FieldByName('persentase').AsFloat) < 5 then begin
        if not ((zqrH.FieldByName('app_qac').AsInteger = 1) and
          (zqrH.FieldByName('app_whl').AsInteger = 1)) then begin
          AItem.EditValue := 'F';
        end;
      end
      else if Abs(zqrH.FieldByName('persentase').AsFloat) >= 5 then begin
        if not((zqrH.FieldByName('app_qac').AsInteger = 1) and
          (zqrH.FieldByName('app_whl').AsInteger = 1) and
          (zqrH.FieldByName('app_mgmt').AsInteger = 1)) then begin
          AItem.EditValue := 'F';
         end;
      end;
    end
  end;

end;

procedure TfrmDaftarDisposisi.btnRefreshClick(Sender: TObject);
begin
  inherited;
  try
    zqrH.Close;
    zqrH.Open;
  except
  end;
end;

procedure TfrmDaftarDisposisi.btnProsesClick(Sender: TObject);
begin
  inherited;
  zqrH.Close;
  zqrH.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrH.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrH.Open;
end;

end.
