unit unFrmMstKaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ZAbstractRODataset, ZDataset, StdCtrls, ExtCtrls, cxContainer,
  cxDropDownEdit, cxCheckBox, cxMaskEdit, cxCalendar, cxTextEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ZAbstractDataset, cxPC,
  cxSpinEdit;

type
  TfrmMstKaryawan = class(TfrmTransBaru)
    dsKaryawan: TDataSource;
    zqrKaryawan: TZReadOnlyQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1nip: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1departemen: TcxGridDBColumn;
    cxGrid1DBTableView1status: TcxGridDBColumn;
    Button1: TButton;
    dsDepartemen: TDataSource;
    zDepartemen: TZQuery;
    GroupBox1: TGroupBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    cxChkAktif: TcxCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxdTglLahir: TcxDateEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxTextEdit11: TcxTextEdit;
    cxComboBox2: TcxComboBox;
    cblDepartemen: TcxLookupComboBox;
    cxTextEdit15: TcxTextEdit;
    cxTextEdit13: TcxTextEdit;
    cxTextEdit12: TcxTextEdit;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblKeluarga: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColNama: TcxGridColumn;
    cxColStatus: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxTblJabatan: TcxGridTableView;
    cxColNoSurat: TcxGridColumn;
    cxColTglSK: TcxGridColumn;
    cxColDepartement: TcxGridColumn;
    cxColJabatan: TcxGridColumn;
    cxColStatusJbt: TcxGridColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxTblTraining: TcxGridTableView;
    cxColJenis: TcxGridColumn;
    cxColTglTraining: TcxGridColumn;
    cxColModul: TcxGridColumn;
    cxColTrainer: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    Label17: TLabel;
    cxComboBox3: TcxComboBox;
    Label18: TLabel;
    cxComboBox4: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnBaruClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMstKaryawan: TfrmMstKaryawan;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmMstKaryawan.FormCreate(Sender: TObject);
var
  i : Integer ;
begin
   for i:= 0 to ComponentCount-1 do
  begin
      if Components[i] is TGroupBox then
      (Components[i] as TGroupBox).Enabled := False;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxComboBox then
      (Components[i] as TcxComboBox).Text := '';
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
  end;
  btnSimpan.Enabled := False ;
  Button1.Enabled := False ;
  zqrKaryawan.Open ;
  zDepartemen.Open ;
end;

procedure TfrmMstKaryawan.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
  q,z : TZQuery;
  i : Integer ;
begin
    for i:= 0 to ComponentCount-1 do
  begin
      if Components[i] is TGroupBox then
      (Components[i] as TGroupBox).Enabled := False;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxComboBox then
      (Components[i] as TcxComboBox).Text := '';
  end;

  q := OpenRS('SELECT * FROM tbl_karyawan_ktg WHERE nip = ''%s''',[zqrKaryawan.FieldByName('nip').AsString]);
    q.Open;

    with q do begin
      cxTextEdit1.Text      := FieldByName('nip').AsString;
      cxTextEdit2.Text      := FieldByName('nama').AsString;
      cxTextEdit3.Text      := FieldByName('tmp_lahir').AsString;
      cxTextEdit4.Text      := FieldByName('alamat_ktp').AsString;
      cxTextEdit5.Text      := FieldByName('alamat_domisili').AsString;
      cxTextEdit6.Text      := FieldByName('no_tlp').AsString;
      cxTextEdit7.Text      := FieldByName('no_darurat').AsString;
      cxTextEdit8.Text      := FieldByName('nama_darurat').AsString;
      cxTextEdit9.Text      := FieldByName('no_ktp').AsString;
      cxTextEdit10.Text     := FieldByName('no_npwp').AsString;
      cxTextEdit11.Text     := FieldByName('no_bpjstk').AsString;
      cxTextEdit12.Text     := FieldByName('no_bpjsks').AsString;
      cxTextEdit13.Text     := FieldByName('no_rek').AsString;
      cblDepartemen.EditValue    := FieldByName('departemen').AsString;
      cxTextEdit15.Text     := FieldByName('jabatan').AsString;
      cxdTglLahir.Date      := FieldByName('tgl_lahir').AsDateTime;
      cxComboBox1.Text      := FieldByName('gender').AsString;
      cxComboBox2.Text      := FieldByName('status').AsString;

      if FieldByName('f_aktif').AsInteger = 1 then
      cxChkAktif.Checked := True
    else
      cxChkAktif.Checked := False;
    end;

    q.Close;

    

end;

procedure TfrmMstKaryawan.btnBaruClick(Sender: TObject);
var
  i : Integer ;
begin
  for i:= 0 to ComponentCount-1 do
  begin
      if Components[i] is TGroupBox then
      (Components[i] as TGroupBox).Enabled := True;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxComboBox then
      (Components[i] as TcxComboBox).Text := '';
  end;
  btnSimpan.Enabled := True ;
  Button1.Enabled := True ;
  btnBaru.Enabled := False ;
  cxTextEdit1.SetFocus;

  Self.Jenis :='tambah' ;
end;

procedure TfrmMstKaryawan.Button1Click(Sender: TObject);
var
  i : Integer ;

begin
     for i:= 0 to ComponentCount-1 do
  begin
      if Components[i] is TGroupBox then
      (Components[i] as TGroupBox).Enabled := False;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxComboBox then
      (Components[i] as TcxComboBox).Text := '';
  end;
    btnSimpan.Enabled := False ;
  Button1.Enabled := False ;
  btnBaru.Enabled := True ;

    cxPageControl1.ActivePageIndex := 0;
    cxTblKeluarga.DataController.RecordCount := 0;
    cxTblJabatan.DataController.RecordCount := 0;
    cxTblTraining.DataController.RecordCount := 0;
  //cxTextEdit2.SetFocus ;
end;

procedure TfrmMstKaryawan.btnSimpanClick(Sender: TObject);
var
  q,z,r,s,a : TZQuery ;
  i,j,k : integer;
begin
  inherited;
  if cxTextEdit1.Text = '' then begin
    MsgBox('NIP Karyawan Belum Diisi');
    cxTextEdit1.SetFocus;
    Abort;
  end;

   q := OpenRS('SELECT * FROM tbl_karyawan_ktg where NIP=''%s''',[cxTextEdit1.Text]) ;

   if Self.Jenis ='tambah' then begin
     if not q.IsEmpty then begin
        MsgBox('NIP Karyawan Sudah Ada');
        cxTextEdit1.SelectAll ;
        cxTextEdit1.SetFocus ;
      end
      else begin
        q.Insert;

          //Data Keluarga
          with cxTblKeluarga.DataController  do begin
            for i := 0 to cxTblKeluarga.DataController.RowCount -1 do begin
             z := OpenRS('SELECT * FROM tbl_keluarga where nip =''%s''',
                [cxTextEdit1.Text]) ;
             z.Insert;
             z.FieldByName('no').AsInteger := i+1;
             z.FieldByName('nip').AsString := cxTextEdit1.Text ;
             z.FieldByName('nama').AsString := Values[i, cxColNama.Index] ;
             z.FieldByName('status').AsString := Values[i, cxColStatus.Index];
             z.Post;
             z.Close;
            end;
          end;

          //History Jbatan
          with cxTblJabatan.DataController  do begin
            for j := 0 to cxTblJabatan.DataController.RowCount -1 do begin
             r := OpenRS('SELECT * FROM tbl_history_jabatan where nip =''%s''',
                [cxTextEdit1.Text]) ;
             r.Insert;
             r.FieldByName('tanggal').AsDateTime := Values[j, cxColTglSK.Index];
             r.FieldByName('nip').AsString := cxTextEdit1.Text ;
             r.FieldByName('departement').AsString := Values[j, cxColDepartement.Index] ;
             r.FieldByName('jabatan').AsString := Values[j, cxColJabatan.Index] ;
             r.FieldByName('status').AsString := Values[j, cxColStatusJbt.Index];
             //r.FieldByName('nomor').AsString := Values[j, cxColNoSurat.Index];
             r.Post;
             r.Close;
            end;
          end;

          //History TRaining
          with cxTblTraining.DataController  do begin
            for k := 0 to cxTblTraining.DataController.RowCount -1 do begin
             a := OpenRS('SELECT * FROM tbl_training where nip =''%s''',
              [cxTextEdit1.Text]) ;
             a.Insert;
             a.FieldByName('tanggal').AsDateTime := Values[k, cxColTglTraining.Index];
             a.FieldByName('nip').AsString := cxTextEdit1.Text ;
             a.FieldByName('jenis').AsString := Values[k, cxColJenis.Index] ;
             a.FieldByName('modul').AsString := Values[k, cxColModul.Index] ;
             a.FieldByName('trainer').AsString := Values[k, cxColTrainer.Index];
             a.Post;
             a.Close;
            end;
          end;
      end ;
      end
    else begin
      q.Edit ;

           try
              dm.zConn.StartTransaction;
              dm.zConn.ExecuteDirect('DELETE FROM tbl_keluarga WHERE nip = ''' + cxTextEdit1.Text  + '''');
              //dm.zConn.ExecuteDirect('DELETE FROM tbl_history_jabatan WHERE nip = ''' + cxTextEdit1.Text  + '''');
              //dm.zConn.ExecuteDirect('DELETE FROM tbl_training WHERE nip = ''' + cxTextEdit1.Text  + '''');
              dm.zConn.Commit;
             
              except
                  on E: Exception do begin
                   MsgBox('Error: ' + E.Message);
                    dm.zConn.Rollback;
                  end;
           end;

           //Data Keluarga
              with cxTblKeluarga.DataController  do begin
              for i := 0 to cxTblKeluarga.DataController.RowCount -1 do begin
               z := OpenRS('SELECT * FROM tbl_keluarga where nip =''%s''',
                  [cxTextEdit1.Text]) ;
               z.Insert;
               z.FieldByName('no').AsInteger := i+1;
               z.FieldByName('nip').AsString := cxTextEdit1.Text ;
               z.FieldByName('nama').AsString := Values[i, cxColNama.Index] ;
               z.FieldByName('status').AsString := Values[i, cxColStatus.Index];
               z.Post;
               z.Close;
              end;
              end;


           try
              dm.zConn.StartTransaction;
              //dm.zConn.ExecuteDirect('DELETE FROM tbl_keluarga WHERE nip = ''' + cxTextEdit1.Text  + '''');
              dm.zConn.ExecuteDirect('DELETE FROM tbl_history_jabatan WHERE nip = ''' + cxTextEdit1.Text  + '''');
              //dm.zConn.ExecuteDirect('DELETE FROM tbl_training WHERE nip = ''' + cxTextEdit1.Text  + '''');
              dm.zConn.Commit;
             
              except
                  on E: Exception do begin
                   MsgBox('Error: ' + E.Message);
                    dm.zConn.Rollback;
                  end;
           end;

           //History Jbatan
          with cxTblJabatan.DataController  do begin
            for j := 0 to cxTblJabatan.DataController.RowCount -1 do begin
             r := OpenRS('SELECT * FROM tbl_history_jabatan where nip =''%s''',
                [cxTextEdit1.Text]) ;
             r.Insert;
             r.FieldByName('tanggal').AsDateTime := Values[j, cxColTglSK.Index];
             r.FieldByName('nip').AsString := cxTextEdit1.Text ;
             r.FieldByName('departement').AsString := Values[j, cxColDepartement.Index] ;
             r.FieldByName('jabatan').AsString := Values[j, cxColJabatan.Index] ;
             r.FieldByName('status').AsString := Values[j, cxColStatusJbt.Index];
             //r.FieldByName('nomor').AsString := Values[j, cxColNoSurat.Index];
             r.Post;
             r.Close;
            end;
          end;

          try
              dm.zConn.StartTransaction;
              //dm.zConn.ExecuteDirect('DELETE FROM tbl_keluarga WHERE nip = ''' + cxTextEdit1.Text  + '''');
              //dm.zConn.ExecuteDirect('DELETE FROM tbl_history_jabatan WHERE nip = ''' + cxTextEdit1.Text  + '''');
              dm.zConn.ExecuteDirect('DELETE FROM tbl_training WHERE nip = ''' + cxTextEdit1.Text  + '''');
              dm.zConn.Commit;
             
              except
                  on E: Exception do begin
                   MsgBox('Error: ' + E.Message);
                    dm.zConn.Rollback;
                  end;
           end;

           //History TRaining
          with cxTblTraining.DataController  do begin
            for k := 0 to cxTblTraining.DataController.RowCount -1 do begin
             a := OpenRS('SELECT * FROM tbl_training where nip =''%s''',
              [cxTextEdit1.Text]) ;
             a.Insert;
             a.FieldByName('tanggal').AsDateTime := Values[k, cxColTglTraining.Index];
             a.FieldByName('nip').AsString := cxTextEdit1.Text ;
             a.FieldByName('jenis').AsString := Values[k, cxColJenis.Index] ;
             a.FieldByName('modul').AsString := Values[k, cxColModul.Index] ;
             a.FieldByName('trainer').AsString := Values[k, cxColTrainer.Index];
             a.Post;
             a.Close;
            end;
          end;

        end;

    with q do begin
          FieldByName('nip').AsString   := cxTextEdit1.Text;
          FieldByName('nama').AsString  := cxTextEdit2.Text;
          FieldByName('tmp_lahir').AsString := cxTextEdit3.Text;
          FieldByName('alamat_ktp').AsString  := cxTextEdit4.Text;
          FieldByName('alamat_domisili').AsString := cxTextEdit5.Text;
          FieldByName('no_tlp').AsString  := cxTextEdit6.Text;
          FieldByName('no_darurat').AsString := cxTextEdit7.Text;
          FieldByName('nama_darurat').AsString := cxTextEdit8.Text;
          FieldByName('no_ktp').AsString := cxTextEdit9.Text;
          FieldByName('no_npwp').AsString := cxTextEdit10.Text;
          FieldByName('no_bpjstk').AsString := cxTextEdit11.Text;
          FieldByName('no_bpjsks').AsString := cxTextEdit12.Text ;
          FieldByName('no_rek').AsString := cxTextEdit13.Text;
          s := OpenRS('SELECT * FROM tbl_history_jabatan where nip =''%s'' order by tanggal desc limit 1',
            [cxTextEdit1.Text]) ;
          FieldByName('departemen').AsString := s.FieldByName('departement').AsString;
          FieldByName('jabatan').AsString := s.FieldByName('jabatan').AsString;
          FieldByName('tgl_lahir').AsDateTime := cxdTglLahir.Date;
          FieldByName('gender').AsString  := cxComboBox1.Text;
          FieldByName('status').AsString  := s.FieldByName('status').AsString ;

          if cxChkAktif.Checked = True then
             FieldByName('f_aktif').AsInteger := 1 else
          FieldByName('f_aktif').AsInteger := 0 ;

          Post ;
          Close;
          dsKaryawan.dataset.refresh ;

          try

               except
                  on E: Exception do begin
                    MsgBox('Error: ' + E.Message);
                    dm.zConn.Rollback;
                  end;
             end;

          MsgBox('Data Sudah Disimpan');


       for i:= 0 to ComponentCount-1 do
        begin
            if Components[i] is TGroupBox then
            (Components[i] as TGroupBox).Enabled := False;
          if Components[i] is TcxTextEdit then
            (Components[i] as TcxTextEdit).Text := '';
          if Components[i] is TcxComboBox then
            (Components[i] as TcxComboBox).Text := '';
        end;
          btnSimpan.Enabled := False ;
        Button1.Enabled := False ;
        btnBaru.Enabled := True ;

        cxPageControl1.ActivePageIndex := 0;
        cxTblKeluarga.DataController.RecordCount := 0;
        cxTblJabatan.DataController.RecordCount := 0;
        cxTblTraining.DataController.RecordCount := 0;
      end;
end;

procedure TfrmMstKaryawan.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
  var
  i,j,k : Integer ;
  z,r,a : TZQuery;
  begin
  Self.Jenis := 'edit';

  z := OpenRS('SELECT * FROM tbl_keluarga where nip =''%s'' order by no asc',[cxTextEdit1.Text]) ;
  while not z.Eof do begin
    with cxTblKeluarga.DataController do begin
     i := AppendRecord ;
     Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
     Values[i, cxColNama.index] := z.FieldByName('nama').AsString;
     Values[i, cxColStatus.Index] := z.FieldByName('status').AsString;
    end;
    z.Next;
  end;
  z.Close;

   r := OpenRS('SELECT * FROM tbl_history_jabatan where nip =''%s'' order by tanggal desc',[cxTextEdit1.Text]) ;
  while not r.Eof do begin
    with cxTblJabatan.DataController do begin
     j := AppendRecord ;
     Values[j, cxColTglSK.Index] := r.FieldByName('tanggal').AsDateTime;
     Values[j, cxColDepartement.Index]  := r.FieldByName('departement').AsString ;
     Values[j, cxColJabatan.Index] := r.FieldByName('jabatan').AsString ;
     Values[j, cxColStatusJbt.Index] := r.FieldByName('status').AsString ;
    end;
    r.Next;
  end;
  r.Close;

     a:= OpenRS('SELECT * FROM tbl_training where nip =''%s'' order by tanggal desc',[cxTextEdit1.Text]) ;
  while not a.Eof do begin
    with cxTblTraining.DataController do begin
     k := AppendRecord ;
     Values[k, cxColTglTraining.Index] := a.FieldByName('tanggal').AsDateTime;
     Values[k, cxColJenis.Index] := a.FieldByName('jenis').AsString ;
     Values[k, cxColModul.Index]:= a.FieldByName('modul').AsString ;
     Values[k, cxColTrainer.Index] :=  a.FieldByName('trainer').AsString ;
    end;
    a.Next;
  end;
  a.Close;




     for i:= 0 to ComponentCount-1 do
  begin
      if Components[i] is TGroupBox then
      (Components[i] as TGroupBox).Enabled := True;
  end;
  btnSimpan.Enabled := True ;
  Button1.Enabled := True ;
  btnBaru.Enabled := False ;

end;

procedure TfrmMstKaryawan.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
  var
    row : integer ;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);

end;

end.
