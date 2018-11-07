unit unFrmDaftarJurnalKerja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCheckBox, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls, cxContainer,
  cxTextEdit, cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmDaftarJurnalKerja = class(TfrmTransBaru)
    cxGrdIS: TcxGrid;
    cxTblJurnal: TcxGridDBTableView;
    cxTblJurnalno_jurnal: TcxGridDBColumn;
    cxTblJurnaltgl_jurnal: TcxGridDBColumn;
    cxTblJurnaldibuat_oleh: TcxGridDBColumn;
    cxTblJurnalkategori: TcxGridDBColumn;
    cxTblJurnaltgl_permintaan_selesai: TcxGridDBColumn;
    cxTblJurnalstatus: TcxGridDBColumn;
    cxTblJurnalColumn3: TcxGridDBColumn;
    cxGrdISLevel1: TcxGridLevel;
    zqrJurnal: TZReadOnlyQuery;
    dsJurnal: TDataSource;
    cxTblJurnalpic: TcxGridDBColumn;
    cxTblJurnalestimasi_start: TcxGridDBColumn;
    cxTblJurnalestimasi_finish: TcxGridDBColumn;
    cxTblJurnalactual_start: TcxGridDBColumn;
    cxTblJurnalactual_finish: TcxGridDBColumn;
    cxTblJurnalnote: TcxGridDBColumn;
    Label20: TLabel;
    cxmDeskProject: TcxMemo;
    btnEditPIC: TButton;
    btnStart: TButton;
    btnFinish: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSimpanApp: TButton;
    btnBatalApp: TButton;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    cmbRND: TComboBox;
    Label4: TLabel;
    cmbStatus: TComboBox;
    Label5: TLabel;
    cxMemoKetTidakApp: TcxMemo;
    Panel1: TPanel;
    Label6: TLabel;
    cxdTgl3: TcxDateEdit;
    btnSimpanStart: TButton;
    btnBatalStart: TButton;
    Label7: TLabel;
    cxtJudul: TcxTextEdit;
    Label8: TLabel;
    cxtTujuan: TcxTextEdit;
    procedure cxTblJurnalFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnEditPICClick(Sender: TObject);
    procedure btnBatalAppClick(Sender: TObject);
    procedure btnSimpanAppClick(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
    procedure btnBatalStartClick(Sender: TObject);
    procedure btnFinishClick(Sender: TObject);
    procedure btnSimpanStartClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarJurnalKerja: TfrmDaftarJurnalKerja;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmDaftarJurnalKerja.cxTblJurnalFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  cxmDeskProject.Text := '';
  cxtJudul.Text :='';
  cxtTujuan.Text :='' ;
  cxmDeskProject.Text := zqrJurnal.FieldByName('project').AsString;
  cxtJudul.Text := zqrJurnal.FieldByName('judul').AsString;
  cxtTujuan.Text := zqrJurnal.FieldByName('tujuan').AsString;
  if cxTblJurnalstatus.EditValue ='DONE' then
    btnHapus.Enabled := True
    else
    btnHapus.Enabled := False ;

end;

procedure TfrmDaftarJurnalKerja.FormCreate(Sender: TObject);
begin
  Panel2.Visible := False ;
  Panel1.Visible := False ;
  zqrJurnal.Open ;
end;

procedure TfrmDaftarJurnalKerja.btnEditPICClick(Sender: TObject);
begin
  if zqrJurnal.FieldByName('f_approve').AsInteger = 1 then begin
  Panel2.Visible := True ;
  cmbRND.Text := zqrJurnal.FieldByName('pic').AsString ;
  cxdTgl1.Date := zqrJurnal.FieldByName('estimasi_start').AsDateTime ;
  cxdTgl2.Date := zqrJurnal.FieldByName('estimasi_Finish').AsDateTime ;
  cmbStatus.Text := zqrJurnal.FieldByName('status').AsString ;
  cxMemoKetTidakApp.Text := zqrJurnal.FieldByName('note').AsString ;
  end;
end;

procedure TfrmDaftarJurnalKerja.btnBatalAppClick(Sender: TObject);
begin
  inherited;
  Panel2.Visible := False ;
  cmbRND.Text := '';
  cxdTgl1.Text := '' ;
  cxdTgl2.Text := '' ;
  cmbStatus.Text := '' ;
  cxMemoKetTidakApp.Text := '' ;
end;

procedure TfrmDaftarJurnalKerja.btnSimpanAppClick(Sender: TObject);
var
  q: TZQuery;
  bm: TBookmark;
begin
  q := OpenRS('SELECT * FROM tbl_jurnal_rnd WHERE no_jurnal = ''%s''',
    [zqrJurnal.FieldByName('no_jurnal').AsString]);
  if not q.IsEmpty then begin
    try
      dm.zConn.StartTransaction;
      q.Edit;

      q.FieldByName('pic').AsString  := cmbRND.Text ;
      q.FieldByName('estimasi_start').AsDateTime := cxdTgl1.EditValue;
      q.FieldByName('estimasi_finish').AsDateTime := cxdTgl2.EditValue;
      q.FieldByName('status').AsString := cmbStatus.Text ;
      q.FieldByName('note').AsString := cxMemoKetTidakApp.Text;

      q.Post;
      q.Close;

      dm.zConn.Commit;
      MsgBox('Edit Berhasil');

      try
        bm := zqrJurnal.GetBookmark;
        zqrJurnal.Close;
        zqrJurnal.Open;
        zqrJurnal.GotoBookmark(bm);
      except
      end;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
   Panel2.Visible := False ;
   cmbRND.Text := '';
  cxdTgl1.Text := '' ;
  cxdTgl2.Text := '' ;
  cmbStatus.Text := '' ;
  cxMemoKetTidakApp.Text := '' ;

   dsJurnal.DataSet.Refresh ;

end;

procedure TfrmDaftarJurnalKerja.btnStartClick(Sender: TObject);

begin
    if (zqrJurnal.FieldByName('f_approve').AsInteger = 1) then begin
    Panel1.Visible := True ;
    btnSimpanStart.Caption := 'Simpan Start';
   end;
end;

procedure TfrmDaftarJurnalKerja.btnBatalStartClick(Sender: TObject);
begin

    Panel1.Visible := False ;
    cxdTgl3.Text := '' ;

end;

procedure TfrmDaftarJurnalKerja.btnFinishClick(Sender: TObject);
begin
     if (zqrJurnal.FieldByName('f_approve').AsInteger = 1) or (zqrJurnal.FieldByName('status').AsString <> 'DONE') then begin
  Panel1.Visible := True ;
  btnSimpanStart.Caption := 'Simpan Finish';
  end;

end;

procedure TfrmDaftarJurnalKerja.btnSimpanStartClick(Sender: TObject);
var
  q: TZQuery;
begin
  if btnSimpanStart.Caption = 'Simpan Start' then begin

    q := OpenRS('SELECT * FROM tbl_jurnal_rnd WHERE no_jurnal = ''%s''',
    [zqrJurnal.FieldByName('no_jurnal').AsString]);
      if not q.IsEmpty then begin
      try
        dm.zConn.StartTransaction;
        q.Edit;

        q.FieldByName('actual_start').AsDateTime := cxdTgl3.EditValue;
        q.FieldByName('status').AsString := 'PROSES' ;
        q.FieldByName('note').AsString := '' ;

        q.Post;
        q.Close;

        dm.zConn.Commit;
        MsgBox('Data Tersimpan');

        try
          zqrJurnal.Close;
          zqrJurnal.Open;
        except
        end;

        except
          on E: Exception do begin
            dm.zConn.Rollback;
            MsgBox('Error: ' + E.Message);
          end;
        end;
      end;
     Panel1.Visible := False ;
      cxdTgl3.Text := '' ;
     dsJurnal.DataSet.Refresh ;
   end ;
   if btnSimpanStart.Caption = 'Simpan Finish' then begin
      q := OpenRS('SELECT * FROM tbl_jurnal_rnd WHERE no_jurnal = ''%s''',
    [zqrJurnal.FieldByName('no_jurnal').AsString]);
      if not q.IsEmpty then begin
      try
        dm.zConn.StartTransaction;
        q.Edit;

        q.FieldByName('actual_finish').AsDateTime := cxdTgl3.EditValue;
        q.FieldByName('status').AsString := 'DONE' ;

        q.Post;
        q.Close;

        dm.zConn.Commit;
        MsgBox('Data Tersimpan');

        try
          zqrJurnal.Close;
          zqrJurnal.Open;
        except
        end;

        except
          on E: Exception do begin
            dm.zConn.Rollback;
            MsgBox('Error: ' + E.Message);
          end;
        end;
      end;
     Panel1.Visible := False ;
      cxdTgl3.Text := '' ;
     dsJurnal.DataSet.Refresh ;
  end;

end;

procedure TfrmDaftarJurnalKerja.FormShow(Sender: TObject);
begin

if Aplikasi.UserDept <> 'RND' then begin
  zqrJurnal.Close;
   zqrJurnal.SQL.Strings[1] := 'WHERE dibuat_oleh = ''' +
          aplikasi.NamaUser  + '''';
   zqrJurnal.Open;
   btnHapus.Visible := True ;
   end
   else
    btnHapus.Visible := false ;

end;

procedure TfrmDaftarJurnalKerja.btnHapusClick(Sender: TObject);
var
  q : TZQuery ;
begin
  q := OpenRS('SELECT * FROM tbl_jurnal_rnd WHERE no_jurnal = ''%s''',
    [zqrJurnal.FieldByName('no_jurnal').AsString]);
      if not q.IsEmpty then begin
      try
        dm.zConn.StartTransaction;
        q.Edit;

        q.FieldByName('tgl_close').AsDateTime := Aplikasi.TanggalServer;
        q.FieldByName('status').AsString := 'CLOSE' ;

        q.Post;
        q.Close;

        dm.zConn.Commit;
        MsgBox('Data Telah Close');

        try
          zqrJurnal.Close;
          zqrJurnal.Open;
        except
        end;

        except
          on E: Exception do begin
            dm.zConn.Rollback;
            MsgBox('Error: ' + E.Message);
          end;
        end;
      end;
     dsJurnal.DataSet.Refresh ;

end;

end.
