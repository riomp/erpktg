unit unFrmPengeluaranBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDBLookupComboBox,
  cxSpinEdit, cxTextEdit, ImgList, kbmMemTable, cxEditRepositoryItems,
  ZAbstractRODataset, ZDataset, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxCalendar, cxCheckBox,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxLabel, StdCtrls, ExtCtrls;

type
  TfrmPengeluaranBank = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxlAkun: TcxLookupComboBox;
    cxtNoAkun: TcxTextEdit;
    cxChkPosting: TcxCheckBox;
    cxlUnit: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxdTgl: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxlDept: TcxLookupComboBox;
    cxtKeterangan: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxGrd: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTblnoakun: TcxGridDBColumn;
    cxTblnama_akun: TcxGridDBColumn;
    cxTbljumlah: TcxGridDBColumn;
    cxColUnit: TcxGridDBColumn;
    cxColDept: TcxGridDBColumn;
    cxTblketerangan: TcxGridDBColumn;
    cxTblColumn1: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    nxGrd: TNextGrid;
    nxColNoUrut: TNxIncrementColumn;
    nxColHapus: TNxImageColumn;
    nxColAkun: TNxButtonColumn;
    nxColNamaAkun: TNxTextColumn;
    nxColJml: TNxNumberColumn;
    nxColNoTrans: TNxButtonColumn;
    nxColKeterangan: TNxTextColumn;
    nxColJurnal: TNxTextColumn;
    cxsTotal: TcxSpinEdit;
    zqrAkun: TZReadOnlyQuery;
    dsAkun: TDataSource;
    zqrEdit: TZReadOnlyQuery;
    dsEdit2: TDataSource;
    zqrDetAkun: TZReadOnlyQuery;
    dsDetAkun: TDataSource;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1SpinItem1: TcxEditRepositorySpinItem;
    memTbl: TkbmMemTable;
    memTblnama_akun: TStringField;
    memTblnoakun: TStringField;
    memTbljumlah: TFloatField;
    memTblketerangan: TStringField;
    memTblid2: TAutoIncField;
    memTblunit: TStringField;
    memTbldept: TStringField;
    ds: TDataSource;
    ImageList1: TImageList;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    zqrDept: TZReadOnlyQuery;
    dsDept: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxdTglExit(Sender: TObject);
    procedure cxdTglPropertiesChange(Sender: TObject);
    procedure cxlAkunPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
     mJenisAkun: string;
    mNoBK: string;
    procedure ClearAll;
    procedure HitungTotal;
  public
    property JenisAkun: string write mJenisAkun;
    property NoBK: string read mNoBK write mNoBK;
  end;

var
  frmPengeluaranBank: TfrmPengeluaranBank;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmPengeluaranBank.ClearAll;
begin
nxGrd.ClearRows;
  cxdTgl.Text := '';
  cxlAkun.Text := '';
  cxtKeterangan.Text := '';
  cxtNoTrans.Text := '';
  cxtNoAkun.Text := '';
  zqrEdit.Close;
  zqrEdit.Open;
  cxChkPosting.Checked := False;
  cxChkPosting.Properties.ReadOnly := False;
  memTbl.EmptyTable;
  //cxlCari.Text := '';
  cxlUnit.Text := '';
  cxlDept.Text := '';
end;

procedure TfrmPengeluaranBank.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  nxGrd.StartRowCount := 1;
  zqrAkun.Open;
  zqrEdit.Open;
  zqrDetAkun.Open;
  memTbl.Open;

  cxdTgl.Date := aplikasi.TanggalServer;

  zqrUnit.Open;
  zqrDept.Open;
end;

procedure TfrmPengeluaranBank.HitungTotal;
var
  i,total: Integer;
begin
  total := 0;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColAkun.Index, i].AsString = '' then Continue;
    total := total + nxGrd.Cell[nxColJml.Index, i].AsInteger;
  end;
  cxsTotal.Value := total;
end;

procedure TfrmPengeluaranBank.FormShow(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
if mJenisAkun = 'non-tunai' then begin
    zqrAkun.Close;
    zqrAkun.SQL.Text := 'SELECT noakun, nama, ' +
      '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak ' +
      'FROM tbl_coa a ' +
      'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND noakun <> ''1010101''';
    zqrAkun.Open;

    zqrEdit.Close;
    zqrEdit.SQL.Text := 'SELECT DISTINCT a.no_jurnal, a.tanggal, b.keterangan FROM ' +
      'tbl_jurnal a INNER JOIN tbl_jurnal_det b ON a.no_jurnal = b.no_jurnal ' +
      'LEFT JOIN tbl_coa c ON c.noakun = b.akun ' +
      'WHERE c.tipe IN (19,10) AND b.kredit > 0 ';
    zqrEdit.Open;

  end
  else begin
    zqrAkun.Close;
    zqrAkun.SQL.Text := 'SELECT noakun, nama, ' +
      '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak ' +
      'FROM tbl_coa a ' +
      'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND tipe = 19';
    zqrAkun.Open;

    zqrDetAkun.Close;
    zqrDetAkun.SQL.Text := 'SELECT noakun, nama, ' +
      '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak ' +
      'FROM tbl_coa a ' +
      'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND tipe <> 19';
    zqrDetAkun.Open;
  end;

  if Self.Jenis = 'edit' then begin

     q := OpenRS('SELECT * FROM v_jurnal WHERE no_jurnal = ''%s'' ' +
    'AND kredit > 0',[mNoBK]);
      cxlAkun.EditValue := q.FieldByName('akun').AsString;
      cxdTgl.Date := q.FieldByName('tanggal').AsDateTime;
      cxtNoTrans.Text := q.FieldByName('no_jurnal').AsString;
      cxtKeterangan.Text := q.FieldByName('keterangan').AsString;

      if q.FieldByName('f_posted').AsInteger = 1 then begin
        cxChkPosting.Checked := True;
        cxChkPosting.Properties.ReadOnly := True;
      end;

      q.Close;

      memTbl.EmptyTable;

      q := OpenRS('SELECT * FROM v_jurnal ' +
        'WHERE no_jurnal = ''%s'' ' +
        'AND debet > 0 ORDER BY urutan',[mNoBK]);
      while not q.Eof do begin
        memTbl.Insert;
        memTbl.FieldByName('nama_akun').AsString := q.FieldByName('akun').AsString;
        memTbl.FieldByName('noakun').AsString := q.FieldByName('akun').AsString;
         memTbl.FieldByName('unit').AsString := q.FieldByName('unit').AsString;
        memTbl.FieldByName('dept').AsString := q.FieldByName('dept').AsString;
        memTbl.FieldByName('jumlah').AsFloat := q.FieldByName('debet').AsFloat;
        memTbl.FieldByName('keterangan').AsString := q.FieldByname('keterangan_det').AsString;
        memTbl.FieldByName('id').Asinteger := q.FieldByname('urutan').AsInteger;
        memTbl.Post;
        q.Next;
      end;
      q.Close;
      HitungTotal;

      if not memTbl.IsEmpty then memTbl.First;

      if cxsTotal.Value > 0 then nxGrd.AddRow();
  end;
end;

procedure TfrmPengeluaranBank.cxdTglExit(Sender: TObject);
begin
  inherited;
  if mJenisAkun = 'non-tunai' then begin
    if cxdTgl.Date > aplikasi.TanggalServer then begin
      MsgBox('Tanggal melebihi tanggal sistem.');
      cxdTgl.Date := aplikasi.TanggalServer;
    end;
  end;
end;

procedure TfrmPengeluaranBank.cxdTglPropertiesChange(Sender: TObject);
begin
  inherited;
    if Self.Jenis = 'tambah' then begin
      cxtNoTrans.Text := GetLastFak('bank_keluar',cxdTgl.Date);
  end;
end;

procedure TfrmPengeluaranBank.cxlAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxlAkun.Text = '' then
    cxtNoAkun.Text := ''
  else
    cxtNoAkun.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TfrmPengeluaranBank.btnSimpanClick(Sender: TObject);
var
  i, id: Integer;
  f: boolean;
  qjh, qjd: TZQuery;
  sNoJ: string;
  total: real;
begin
  inherited;
  if Trim(cxlAkun.Text) = '' then begin
    MsgBox('No. Akun harus diisi.');
    cxlAkun.SetFocus;
  end
  else begin

    memTbl.First;
    while not memTbl.Eof do begin
      if memTbl.FieldByName('noakun').AsString = '' then begin
        MsgBox('Masih ada No. Akun yang kosong.');
        Abort;
      end;
      if memTbl.FieldByName('jumlah').AsFloat = 0 then begin
        MsgBox('Masih ada jumlah pengeluaran yang 0.');
        Abort;
      end;
      if Trim(memTbl.FieldByName('keterangan').AsString) = '' then begin
        MsgBox('Masih ada detail keterangan yang kosong.');
        Abort;
      end;
      memTbl.Next;
    end;

    if memTbl.IsEmpty then begin
      MsgBox('Detail transaksi masih kosong.');
      Abort;
    end;

    if Self.Jenis = 'edit' then begin
      if (cxChkPosting.Checked) and (cxChkPosting.Properties.ReadOnly) then begin
        MsgBox('Transaksi sudah di posting. Tidak bisa di edit.');
        Abort;
      end;
    end;

    if memTbl.State in [dsEdit, dsInsert] then memTbl.Post;

    try
      dm.zConn.StartTransaction;

      if Self.Jenis = 'tambah' then begin
        sNoJ := GetLastFak('bank_keluar',cxdTgl.Date);
        UpdateFaktur(Copy(sNoJ,1,7));
      end
      else
        sNoJ := cxtNoTrans.Text;

      qjh := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''',[sNoJ]);
      with qjh do begin
        if not IsEmpty then
          Edit
        else
          Insert;
        FieldByName('no_jurnal').AsString := sNoJ;
        FieldByName('tanggal').AsDateTime := cxdTgl.Date;
        FieldByName('keterangan').AsString := cxtKeterangan.Text;
        FieldByName('jenis').AsString := 'OB';
        if cxChkPosting.Checked then
          FieldByName('f_posted').AsInteger := 1;
        FieldByName('periode').AsString := Aplikasi.Periode;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept; 
        Post;
      end;
      qjh.Close;

      qjh := OpenRS('SELECT * FROM tbl_jurnal_tmp WHERE no_jurnal = ''%s''',[sNoJ]);
      with qjh do begin
        Insert;
        FieldByName('no_jurnal').AsString := sNoJ;
        FieldByName('tanggal').AsDateTime := cxdTgl.Date;
        FieldByName('keterangan').AsString := cxtKeterangan.Text;
        FieldByName('jenis').AsString := 'PBANK';
        if cxChkPosting.Checked then
          FieldByName('f_posted').AsInteger := 1;
        FieldByName('periode').AsString := Aplikasi.Periode;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        Post;
      end;
      qjh.Close;

      qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s'' ' +
        'AND akun = ''%s''', [sNoJ, cxlAkun.EditValue]);
      with qjd do begin
        if not IsEmpty then
          Edit
        else
          Insert;
        FieldByName('no_jurnal').AsString := sNoJ;
        FieldByName('akun').AsString := cxlAkun.EditValue;
        FieldByName('kredit').AsFloat := 0;
        FieldByName('keterangan').AsString := cxtKeterangan.Text;
        FieldByName('dc').AsString := 'C';
        FieldByName('f_head').AsInteger := 1;
        if cxlUnit.EditValue <> null then
        FieldByName('unit').AsString := cxlUnit.EditValue;
        if cxlDept.EditValue <> null then
        FieldByName('dept').AsString := cxlDept.EditValue;
        Post;
      end;
      qjd.Close;

      qjd := OpenRS('SELECT * FROM tbl_jurnal_det_tmp WHERE no_jurnal = ''%s'' ' +
        'AND akun = ''%s''', [sNoJ, cxlAkun.EditValue]);
      with qjd do begin
        Insert;
        FieldByName('no_jurnal').AsString := sNoJ;
        FieldByName('akun').AsString := cxlAkun.EditValue;
        FieldByName('kredit').AsFloat := 0;
        FieldByName('keterangan').AsString := cxtKeterangan.Text;
        FieldByName('f_head').AsInteger := 1;
        Post;
      end;
      qjd.Close;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' +
          sNoJ + ''' AND akun <> ''' + cxlAkun.EditValue + '''');
      end;

      total := 0;
      memTbl.First;
      while not memTbl.Eof do begin
        //qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s'' ' +
        //  'AND akun = ''%s''',
        //  [sNoJ, memTbl.FieldByName('noakun').AsString]);

        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s'' AND akun = ''%s''',
          [sNoJ, cxlAkun.EditValue]);

        with qjd do begin
          //if not IsEmpty then
          //  Edit
          //else
            Insert;
          FieldByName('no_jurnal').AsString := sNoJ;
          FieldByName('akun').AsString := memTbl.FieldByName('noakun').AsString;
          FieldByName('debet').AsFloat := memTbl.FieldByName('jumlah').AsFloat;
          FieldByName('keterangan').AsString := memTbl.FieldByName('keterangan').AsString;
          FieldByName('nr').AsInteger := memTbl.FieldByName('id').AsInteger;
          FieldByName('unit').AsString := memTbl.FieldByName('unit').AsString;
          FieldByName('dept').AsString := memTbl.FieldByName('dept').AsString;
          FieldByName('dc').AsString := 'D';
          total := total + memTbl.FieldByName('jumlah').AsFloat;
          Post;
        end;
        qjd.Close;
        memTbl.Next;
      end;

      total := 0;
      memTbl.First;
      while not memTbl.Eof do begin

        qjd := OpenRS('SELECT * FROM tbl_jurnal_det_tmp WHERE no_jurnal = ''%s'' AND akun = ''%s''',
          [sNoJ, cxlAkun.EditValue]);

        with qjd do begin
          Insert;
          FieldByName('no_jurnal').AsString := sNoJ;
          FieldByName('akun').AsString := memTbl.FieldByName('noakun').AsString;
          FieldByName('debet').AsFloat := memTbl.FieldByName('jumlah').AsFloat;
          FieldByName('keterangan').AsString := memTbl.FieldByName('keterangan').AsString;
          FieldByName('nr').AsInteger := memTbl.FieldByName('id').AsInteger;
          total := total + memTbl.FieldByName('jumlah').AsFloat;
          Post;
        end;
        qjd.Close;
        memTbl.Next;
      end;

      dm.zConn.ExecuteDirect(
        Format('UPDATE tbl_jurnal_det SET kredit = ' +
          StringReplace(FloatToStr(total),',','.',[rfReplaceAll]) + ' WHERE no_jurnal = ''%s'' AND debet = 0',
          [sNoJ])
      );

      dm.zConn.ExecuteDirect(
        Format('UPDATE tbl_jurnal_det_tmp SET kredit = ' +
          StringReplace(FloatToStr(total),',','.',[rfReplaceAll]) + ' WHERE no_jurnal = ''%s'' AND debet = 0',
          [sNoJ])
      );

      dm.zConn.Commit;

      //aplikasi.log_('SIMPAN JURNAL PENGELUARAN KAS', sNoJ);

      MsgBox('Transaksi pengeluaran kas sudah disimpan dengan No: ' + sNoJ);

      //ClearAll;
      //cxtNoTrans.Text := GetLastFak('jurnal');
      btnBatalClick(nil);
      close ;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;  
    
  end;
end;

end.
