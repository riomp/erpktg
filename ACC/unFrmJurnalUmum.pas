unit unFrmJurnalUmum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDBLookupComboBox,
  cxSpinEdit, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxNavigator, cxDBNavigator, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ZAbstractRODataset, ZDataset,
  kbmMemTable, cxEditRepositoryItems, ImgList, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxCheckBox, cxMaskEdit, cxCalendar,
  cxLabel, StdCtrls, ExtCtrls;

type
  TfrmJurnalUmum = class(TfrmTplTrans)
    cxLabel2: TcxLabel;
    cxdTgl: TcxDateEdit;
    cxChkPosting: TcxCheckBox;
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    cxlAkun: TcxLookupComboBox;
    cxtNoAkun: TcxTextEdit;
    ImageList1: TImageList;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1SpinItem1: TcxEditRepositorySpinItem;
    cxEditRepository1SpinItem2: TcxEditRepositorySpinItem;
    memTbl: TkbmMemTable;
    memTblnama_akun: TStringField;
    memTblnoakun: TStringField;
    memTbljumlah: TFloatField;
    memTblketerangan: TStringField;
    memTblid2: TAutoIncField;
    memTbldebet: TFloatField;
    memTblkredit: TFloatField;
    memTblunit: TStringField;
    memTbldept: TStringField;
    ds: TDataSource;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    zqrDept: TZReadOnlyQuery;
    dsDept: TDataSource;
    zqrAkun: TZReadOnlyQuery;
    dsAkun: TDataSource;
    zqrEdit: TZReadOnlyQuery;
    dsEdit2: TDataSource;
    zqrDetAkun: TZReadOnlyQuery;
    dsDetAkun: TDataSource;
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
    cxDBNavigator1: TcxDBNavigator;
    cxGrd: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTblnoakun: TcxGridDBColumn;
    cxTblnama_akun: TcxGridDBColumn;
    cxTbljumlah: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    cxColUnit: TcxGridDBColumn;
    cxColDept: TcxGridDBColumn;
    cxTblketerangan: TcxGridDBColumn;
    cxTblColumn1: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxdTglExit(Sender: TObject);
    procedure cxtNoTransPropertiesChange(Sender: TObject);
    procedure memTblBeforePost(DataSet: TDataSet);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxdTglPropertiesChange(Sender: TObject);
  private
    mJenisAkun: string;
    mNoJU: string;
    procedure ClearAll;
    procedure HitungTotal;
  public
    property JenisAkun: string write mJenisAkun;
    property NoJU: string read mNoJU write mNoJU;
  end;

var
  frmJurnalUmum: TfrmJurnalUmum;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmJurnalUmum.FormShow(Sender: TObject);
var
  q : TZQuery;
begin
  inherited;
   if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM v_jurnal WHERE no_jurnal = ''%s''',
    [NoJU]);
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
        'ORDER BY urutan',[NoJU]);
      while not q.Eof do begin
        memTbl.Insert;
        memTbl.FieldByName('nama_akun').AsString := q.FieldByName('akun').AsString;
        memTbl.FieldByName('noakun').AsString := q.FieldByName('akun').AsString;
        memTbl.FieldByName('debet').AsFloat := q.FieldByName('debet').AsFloat;
        memTbl.FieldByName('kredit').AsFloat := q.FieldByName('kredit').AsFloat;
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

procedure TfrmJurnalUmum.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  nxGrd.StartRowCount := 1;
  zqrAkun.Open;
  zqrEdit.Open;
  //cxChkPosting.Checked := True;
  zqrDetAkun.Open;
  memTbl.Open;

  //if Aplikasi.NamaUser <> 'ADMIN' then begin
  //  cxdTgl.Properties.ReadOnly := True;
  //end;

  {
  cxdTgl.Properties.ReadOnly := True;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''%s'' AND nama = ''%s''',
    ['UT_AntarAkun', aplikasi.NamaUser]);
  if not q.IsEmpty then begin
    if q.FieldByName('wwn').AsString = '1' then
      cxdTgl.Properties.ReadOnly := False;
  end;
  q.Close;
  }

  cxdTgl.Date := Aplikasi.TanggalServer;

  zqrDept.Open;
  zqrUnit.Open;
end;

procedure TfrmJurnalUmum.ClearAll;
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
end;

procedure TfrmJurnalUmum.HitungTotal;
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

procedure TfrmJurnalUmum.cxdTglExit(Sender: TObject);
begin
  inherited;
  if cxdTgl.Date > aplikasi.TanggalServer then begin
    MsgBox('Tanggal melebihi tanggal sistem.');
    cxdTgl.Date := aplikasi.TanggalServer;
  end;
end;

procedure TfrmJurnalUmum.cxtNoTransPropertiesChange(Sender: TObject);
begin
  inherited;
  if Self.Jenis = 'tambah' then begin
      cxtNoTrans.Text := GetLastFak('jurnal_umum',cxdTgl.Date);
  end;
end;

procedure TfrmJurnalUmum.memTblBeforePost(DataSet: TDataSet);
begin
  inherited;
 if memTbl.FieldByName('debet').AsFloat > 0 then
    if memTbl.FieldByName('kredit').AsFloat > 0 then begin
      MsgBox('Kredit atau Debet harus di isi salah satu.');
      Abort;
    end;
  if memTbl.FieldByName('kredit').AsFloat > 0 then
    if memTbl.FieldByName('debet').AsFloat > 0 then begin
      MsgBox('Kredit atau Debet harus di isi salah satu');
      Abort;
    end;
end;

procedure TfrmJurnalUmum.btnSimpanClick(Sender: TObject);
var
  i, id: Integer;
  f: boolean;
  qjh, qjd: TZQuery;
  sNoJ: string;
  total, totD, totK: real;
  begin
  inherited;
    if 1 <> 1 then begin

  end
  else begin

    memTbl.First;
    while not memTbl.Eof do begin
      if memTbl.FieldByName('noakun').AsString = '' then begin
        MsgBox('Masih ada No. Akun yang kosong.');
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

    if memTbl.State in [dsEdit, dsInsert] then memTbl.Post;

    // cek balance
    memTbl.First;
    totD := 0; totK := 0;
    while not memTbl.Eof do begin
      totD := totD + memTbl.FieldByName('debet').AsFloat;
      totK := totK + memTbl.FieldByName('kredit').AsFloat;
      memTbl.Next;
    end;
    if totD <> totK then begin
      MsgBox('Total Debet dan Kredit masih belum Balance.');
      Abort;
    end;
    memTbl.First;

    if Self.Jenis = 'edit' then begin
      if (cxChkPosting.Checked) and (cxChkPosting.Properties.ReadOnly) then begin
        MsgBox('Transaksi sudah di posting. Tidak bisa di edit.');
        Abort;
      end;
    end;

    try
      dm.zConn.StartTransaction;

      if Self.Jenis = 'tambah' then begin
        sNoJ := GetLastFak('jurnal_umum',cxdTgl.Date);
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
        FieldByName('jenis').AsString := 'ANTAR-AKUN';
        if cxChkPosting.Checked then
          FieldByName('f_posted').AsInteger := 1;
        FieldByName('periode').AsString := Aplikasi.Periode;
        FieldByName('jenis').AsString := 'AA';  
        Post;
      end;

      qjh := OpenRS('SELECT * FROM tbl_jurnal_tmp WHERE no_jurnal = ''%s''',[sNoJ]);
      with qjh do begin
        Insert;
        FieldByName('no_jurnal').AsString := sNoJ;
        FieldByName('tanggal').AsDateTime := cxdTgl.Date;
        FieldByName('keterangan').AsString := cxtKeterangan.Text;
        FieldByName('jenis').AsString := 'ANTAR-AKUN';
        if cxChkPosting.Checked then
          FieldByName('f_posted').AsInteger := 1;
        FieldByName('periode').AsString := Aplikasi.Periode;
        FieldByName('jenis').AsString := 'AA';
        Post;
      end;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' + sNoJ + '''');
      end;

      qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);

      total := 0;
      memTbl.First;
      while not memTbl.Eof do begin
        with qjd do begin
          Insert;
          FieldByName('no_jurnal').AsString := sNoJ;
          FieldByName('akun').AsString := memTbl.FieldByName('noakun').AsString;
          FieldByName('debet').AsFloat := memTbl.FieldByName('debet').AsFloat;
          FieldByName('kredit').AsFloat := memTbl.FieldByName('kredit').AsFloat;
          FieldByName('keterangan').AsString := memTbl.FieldByName('keterangan').AsString;
          FieldByName('nr').AsInteger := memTbl.FieldByName('id').AsInteger;
          if memTbl.FieldByName('debet').AsFloat > 0 then
            FieldByName('dc').AsString := 'C'
          else
            FieldByName('dc').AsString := 'D';
          FieldByName('unit').AsString := memTbl.FieldByName('unit').AsString;
          FieldByName('dept').AsString := memTbl.FieldByName('dept').AsString;
          Post;
        end;
        memTbl.Next;
      end;
      qjd.Close;

      qjd := OpenRS('SELECT * FROM tbl_jurnal_det_tmp WHERE no_jurnal = ''%s''',[sNoJ]);

      total := 0;
      memTbl.First;
      while not memTbl.Eof do begin
        with qjd do begin
          Insert;
          FieldByName('no_jurnal').AsString := sNoJ;
          FieldByName('akun').AsString := memTbl.FieldByName('noakun').AsString;
          FieldByName('debet').AsFloat := memTbl.FieldByName('debet').AsFloat;
          FieldByName('kredit').AsFloat := memTbl.FieldByName('kredit').AsFloat;
          FieldByName('keterangan').AsString := memTbl.FieldByName('keterangan').AsString;
          FieldByName('nr').AsInteger := memTbl.FieldByName('id').AsInteger;
          Post;
        end;
        memTbl.Next;
      end;
      qjd.Close;

      dm.zConn.Commit;

      aplikasi.log_('SIMPAN JURNAL ANTAR AKUN');

      MsgBox('Transaksi Antar Akun sudah disimpan dengan No: ' + sNoJ);

      //ClearAll;
      //cxtNoTrans.Text := GetLastFak('jurnal');
      Close ;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;  
    
  end;

end;

procedure TfrmJurnalUmum.cxdTglPropertiesChange(Sender: TObject);
begin
  inherited;
    if Self.Jenis = 'tambah' then begin
      cxtNoTrans.Text := GetLastFak('jurnal_umum',cxdTgl.Date);
  end;
end;

end.
