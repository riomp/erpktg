unit unFrmLembur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  cxDBLookupComboBox, cxTimeEdit, cxTextEdit, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxMemo, cxDropDownEdit,
  cxMaskEdit, cxCalendar, cxLabel, cxLookupEdit, cxDBLookupEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmLembur = class(TfrmTransBaru)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxdLembur: TcxDateEdit;
    cmbLembur: TcxComboBox;
    cxLabel2: TcxLabel;
    cxMemo1: TcxMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblLembur: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColKode: TcxGridColumn;
    cxColNama: TcxGridColumn;
    cxColMulai: TcxGridColumn;
    cxColAkhir: TcxGridColumn;
    cxColKeterangan: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    zKaryawan: TZReadOnlyQuery;
    dsKaryawan: TDataSource;
    cxLabel4: TcxLabel;
    cxtDiajukan: TcxTextEdit;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    zLemburHead: TZReadOnlyQuery;
    dsLemburHead: TDataSource;
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxGrid1TableView1DataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
  private
    { Private declarations }
    mStatus: string;
  public
    { Public declarations }
  end;

var
  frmLembur: TfrmLembur;

implementation

uses unDm, unAplikasi, unTools, unFrmDataAbsen;

{$R *.dfm}

procedure TfrmLembur.cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: String);
    var
  Row: Integer;
begin
   Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmLembur.cxGrid1TableView1DataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
   if AItemIndex = cxColNama.Index then begin
      try
        cxTblLembur.BeginUpdate;
        ADataController.Values[ARecordIndex, cxColKode.Index] :=
          ADataController.Values[ARecordIndex, cxColNama.Index];
      finally
        cxTblLembur.EndUpdate;
      end;
  end;

end;

procedure TfrmLembur.FormCreate(Sender: TObject);
begin
  zKaryawan.Open ;

  //cxeDibuatOleh.Text := aplikasi.NamaUser;
   cxdTglTrs.Date  := Aplikasi.TanggalServer ;
   cxtNoTrans.Text := GetLastFak('lembur');

  Self.Jenis := 'tambah';

end;

procedure TfrmLembur.btnSimpanClick(Sender: TObject);
var
  sNoTrs : string;
  q,z : TZQuery ;
  i : integer;
begin
  if Trim(cmbLembur.Text) = '' then begin
    MsgBox('Lembur Pada Waktu harus di isi.');
    cmbLembur.SetFocus;
    Abort;
  end;

  if Trim(cxdLembur.Text) = '' then begin
    MsgBox('Tanggal lembur harus di isi.');
    cxdLembur.SetFocus;
    Abort;
  end;

  if Self.Jenis = 'tambah' then begin
    sNoTrs := GetLastFak('lembur');
    UpdateFaktur(Copy(sNoTrs,1,8));
  end
  else begin
    sNoTrs := cxtNoTrans.Text;
  end;

  q := OpenRS('SELECT * FROM tbl_lembur_head where no =''%s''',[sNoTrs]) ;

  if Self.Jenis ='tambah' then begin
    q.Insert;
        with cxTblLembur.DataController  do begin

          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_lembur_det where no =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('nomer').AsInteger := i+1;
            z.FieldByName('no').AsString := sNoTrs;
            z.FieldByName('nip').AsString := Values[i, cxColKode.index];
            z.FieldByName('mulai').AsDateTime := Values[i, cxColMulai.index];
            z.FieldByName('akhir').AsDatetime := Values[i, cxColAkhir.index];
            if (Values[i, cxColKeterangan.index]<>null) then
            z.FieldByName('keterangan').AsString := Values[i, cxColKeterangan.index];
            z.Post;
            z.Close;
          end;
        end;
    end
    else begin
      q.Edit;
      sNoTrs := cxtNoTrans.Text;
        try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_lembur_det WHERE no = ''' + cxtNOTrans.Text + '''');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;

        with cxTblLembur.DataController  do begin
        for i := 0 to cxTblLembur.DataController.RowCount -1 do begin
           z := OpenRS('SELECT * FROM tbl_lembur_det where no =''%s''',
              [cxtNoTrans.Text]) ;
           z.Insert;
            z.FieldByName('nomer').AsInteger := Values[i, cxColNo.index];
            z.FieldByName('no').AsString := sNoTrs;
            z.FieldByName('nip').AsString := Values[i, cxColKode.index];
            z.FieldByName('mulai').AsDateTime := Values[i, cxColMulai.index];
            z.FieldByName('akhir').AsDatetime := Values[i, cxColAkhir.index];
            z.FieldByName('keterangan').AsString := Values[i, cxColKeterangan.index];
           z.Post;
           z.Close;
        end;
        end;
      end;

  with q do begin
    FieldByName('no').AsString                := cxtNoTrans.Text ;
    FieldByName('tanggal').AsDatetime         := cxdTglTrs.EditValue ;
    FieldByName('jenis_lembur').AsString      := cmbLembur.Text ;
    FieldByName('diajukan_oleh').AsString     := cxtDiajukan.Text ;
    FieldByName('tgl_lembur').AsDateTime      := cxdLembur.EditValue ;
    FieldByName('uraian').AsString        := cxMemo1.Text ;
    if self.Jenis = 'tambah' then begin
          FieldByName('user_input').AsString := aplikasi.NamaUser;
          FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
          end;
    if Self.Jenis = 'edit' then begin
          FieldByName('user_edit').AsString := aplikasi.NamaUser;
          FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
    end;
    Post ;
    Close;
  end;

  FormCreate(nil);
  btnKeluarClick(nil);

end;

procedure TfrmLembur.btnEdit2Click(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer;

begin
   Self.Jenis :='edit';
   mstatus := 'onload';

  cxTblLembur.DataController.RecordCount := 0;
  cxtNoTrans.Text := zLemburHead.FieldByName('no').AsString;
  cxdTglTrs.EditValue := zLemburHead.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_lembur_head WHERE no = ''%s''', [ cxtNoTrans.Text]);

  with q do begin
    cxtNoTrans.Text     := FieldByName('no').AsString;
    cxdTglTrs.EditValue := FieldByName('tanggal').AsDatetime;
    cmbLembur.Text      := FieldByName('jenis_lembur').AsString;
    cxtDiajukan.Text    := FieldByName('diajukan_oleh').AsString;
    cxdLembur.EditValue := FieldByName('tgl_lembur').AsDateTime;
    cxMemo1.Text        := FieldByName('uraian').AsString;

    z := OpenRS('SELECT * FROM tbl_lembur_det where no =''%s'' order by nomer asc',[cxtNoTrans.Text]) ;
    while not z.Eof do begin
      cxGrid1.BeginUpdate;
      with cxTblLembur.DataController do begin
        i := AppendRecord ;
        Values[i, cxColNo.index]    := z.FieldByName('nomer').AsInteger;
        Values[i, cxColKode.index]  := z.FieldByName('nip').AsString ;
        Values[i, cxColNama.index] := z.FieldByName('nip').AsString;
        Values[i, cxColMulai.index] := z.FieldByName('mulai').AsDateTime;
        Values[i, cxColAkhir.index] := z.FieldByName('akhir').AsDatetime;
        Values[i, cxColKeterangan.index] := z.FieldByName('keterangan').AsString;
      end;
      cxGrid1.EndUpdate;
      z.Next;
    end;
    z.Close;

  end;

  mStatus := '';



end;

end.
