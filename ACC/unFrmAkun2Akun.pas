unit unFrmAkun2Akun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls, DB,
  ZAbstractRODataset, ZDataset, cxLabel, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, NxColumnClasses, cxCalendar,
  NxColumns, ImgList, cxSpinEdit, cxCheckBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, kbmMemTable, cxNavigator,
  cxDBNavigator, unFrmTplTrans2, cxEditRepositoryItems;

type
  TfrmAkun2AKun = class(TfrmTplTrans2)
    nxGrd: TNextGrid;
    cxLabel1: TcxLabel;
    cxlAkun: TcxLookupComboBox;
    zqrAkun: TZReadOnlyQuery;
    dsAkun: TDataSource;
    nxColNoUrut: TNxIncrementColumn;
    nxColNamaAkun: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxdTgl: TcxDateEdit;
    nxColJml: TNxNumberColumn;
    nxColAkun: TNxButtonColumn;
    nxColNoTrans: TNxButtonColumn;
    nxColKeterangan: TNxTextColumn;
    nxColHapus: TNxImageColumn;
    ImageList1: TImageList;
    nxColJurnal: TNxTextColumn;
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxsTotal: TcxSpinEdit;
    cxtNoAkun: TcxTextEdit;
    zqrEdit: TZReadOnlyQuery;
    dsEdit2: TDataSource;
    cxChkPosting: TcxCheckBox;
    memTbl: TkbmMemTable;
    memTblnama_akun: TStringField;
    memTblnoakun: TStringField;
    memTbljumlah: TFloatField;
    memTblketerangan: TStringField;
    cxTbl: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    ds: TDataSource;
    zqrDetAkun: TZReadOnlyQuery;
    dsDetAkun: TDataSource;
    cxTblnama_akun: TcxGridDBColumn;
    cxTblnoakun: TcxGridDBColumn;
    cxTbljumlah: TcxGridDBColumn;
    cxTblketerangan: TcxGridDBColumn;
    cxDBNavigator1: TcxDBNavigator;
    cxTblColumn1: TcxGridDBColumn;
    memTblid2: TAutoIncField;
    memTbldebet: TFloatField;
    memTblkredit: TFloatField;
    cxTblColumn2: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1SpinItem1: TcxEditRepositorySpinItem;
    cxEditRepository1SpinItem2: TcxEditRepositorySpinItem;
    cxColUnit: TcxGridDBColumn;
    cxColDept: TcxGridDBColumn;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    zqrDept: TZReadOnlyQuery;
    dsDept: TDataSource;
    memTblunit: TStringField;
    memTbldept: TStringField;
    procedure nxColAkunButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure nxColNoTransButtonClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure cxlAkunPropertiesChange(Sender: TObject);
    procedure btnProsesEditClick(Sender: TObject);
    procedure cxTblFocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
    procedure btnBatalClick(Sender: TObject);
    procedure btnCariEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure memTblBeforePost(DataSet: TDataSet);
    procedure cxdTglExit(Sender: TObject);
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
  frmAkun2Akun: TFrmAkun2Akun;

implementation

uses unAplikasi, unDm, unTools, unFrmCari;

{$R *.dfm}

procedure TFrmAkun2Akun.nxColAkunButtonClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fNoAkun, fNama: TField;
  q: TZQuery;
  row, col: Integer;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'akun-pengeluaran';
  f.ShowModal;

  if f.ModalResult = mrOk then begin
    row := nxGrd.SelectedRow;
    col := nxGrd.SelectedColumn;

    s := f.Result;
    fNoAkun := s.Objects[0] as TField;
    fNama := s.Objects[1] as TField;
    nxGrd.Cell[nxColAkun.Index, row].AsString := fNoAkun.AsString;
    nxGrd.Cell[nxColNamaAkun.Index, row].AsString := fNama.AsString;
    nxGrd.SelectCell(nxColJml.Index, row);
  end;
  f.Release;
  
end;

procedure TFrmAkun2Akun.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  nxGrd.StartRowCount := 1;
  zqrAkun.Open;
  zqrEdit.Open;
  cxChkPosting.Checked := True;
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

procedure TFrmAkun2Akun.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  qa,qt: TZQuery;
  i: Integer;
begin
  inherited;
  with nxGrd do begin
    // kolom akun
    if Acol = nxColAkun.Index then begin
      if Trim(Cell[ACol, ARow].AsString) <> '' then begin
        if not AkunExists(Cell[ACol,ARow].AsString) then begin
          MsgBox('No. Akun ini tidak ada.');
          Cell[ACol,AROw].AsString := '';
        end
        else begin
          Cell[nxColNamaAkun.Index, ARow].AsString :=
            GetNamaAkun(Cell[ACol, ARow].AsString);
          SelectCell(nxColJml.Index, ARow);
        end;
      end;
    end
    // kolom jumlah
    else if ACol = nxColJml.Index then begin
      // cek kolom akun apakah sudah diisi
      if Trim(Cell[nxColAkun.Index, ARow].AsString) = '' then begin
        Cell[nxColJml.Index, ARow].Clear;
        SelectCell(nxColAkun.Index, ARow);
        Abort;
      end;

      if Cell[nxColJml.Index, ARow].AsFloat = 0 then
        Abort
      else begin
        HitungTotal;
        nxGrd.SelectCell(nxColNoTrans.Index, ARow);

        //if ARow = nxGrd.RowCount - 1 then begin
        //  nxGrd.AddRow();
        //  nxGrd.ScrollToRow(nxGrd.RowCount-1);
        //end;
        //nxGrd.SelectCell(nxColAkun.Index, ARow + 1);

      end;
    end
    else if ACol = nxColKeterangan.Index then begin
      try
        if ARow = nxGrd.RowCount-1 then begin
          i := nxGrd.AddRow();
          nxGrd.SelectCell(nxColAkun.Index, i);
        end
        else begin
          //nxGrd.SelectCell(nxColAkun.Index, ARow+1);
        end;
      except
      end;
    end;
  end;
end;

procedure TFrmAkun2Akun.nxColNoTransButtonClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fNoTrs: TField;
  q: TZQuery;
  row, col: Integer;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'all-trans';
  f.ShowModal;

  if f.ModalResult = mrOk then begin
    row := nxGrd.SelectedRow;
    col := nxGrd.SelectedColumn;

    s := f.Result;
    fNoTrs := s.Objects[0] as TField;
    nxGrd.Cell[nxColNoTrans.Index, row].AsString := fNoTrs.AsString;
    nxGrd.SelectCell(nxColKeterangan.Index, row);
  end;
  f.Release;
  
end;

procedure TFrmAkun2Akun.btnSimpanClick(Sender: TObject);
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
        sNoJ := GetLastFak('jurnal');
        UpdateFaktur(Copy(sNoJ,1,6));
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

      ClearAll;
      cxtNoTrans.Text := GetLastFak('jurnal');
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;  
    
  end;
end;

procedure TFrmAkun2Akun.ClearAll;
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
  cxlCari.Text := '';
end;

procedure TFrmAkun2Akun.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNoTrans.Text := GetLastFak('jurnal');
  if mJenisAkun <> 'non-tunai' then begin
    try
      cxlAkun.EditValue := '1010101';
      cxlAkun.Properties.ReadOnly := True;
      cxlAkun.Enabled := False;
    except
    end;
    memTbl.Append;
  end;
  cxdTgl.Date := aplikasi.TanggalServer;
end;

procedure TFrmAkun2Akun.HitungTotal;
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

procedure TFrmAkun2Akun.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  inherited;
  if ACol = nxColHapus.Index then begin
    if nxGrd.SelectedRow > -1 then begin
      if Trim(nxGrd.Cell[nxColAkun.Index, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxColNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end;
  end;
end;

procedure TFrmAkun2Akun.cxlAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxlAkun.Text = '' then
    cxtNoAkun.Text := ''
  else
    cxtNoAkun.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TFrmAkun2Akun.btnProsesEditClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  inherited;
  if cxlCari.Text = '' then Abort;
  
  q := OpenRS('SELECT * FROM v_jurnal WHERE no_jurnal = ''%s''',
    [zqrEdit.FieldByName('no_jurnal').AsString]);
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
    'ORDER BY urutan',[zqrEdit.FieldByName('no_jurnal').AsString]);
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

procedure TFrmAkun2Akun.cxTblFocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  inherited;
  {
  if (memTbl.State in [dsInsert, dsEdit]) then begin
    if APrevFocusedItem.Index = 0 then
      memTbl.FieldByName('noakun').AsString := APrevFocusedItem.EditValue;
    if APrevFocusedItem.Index = 1 then
      cxTbl.Columns[0].EditValue := memTbl.FieldByName('noakun').AsString;
  end;
  }
end;


procedure TFrmAkun2Akun.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TFrmAkun2Akun.btnCariEditClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fld: TField;
begin
  inherited;
  f := TFrmCari.Create(self);
  f.Jenis := 'antar-akun';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fld := s.Objects[0] as TField;
    cxlCari.EditValue := fld.Value;
    btnProsesEditClick(nil);
    f.Release;
  end;
end;

procedure TFrmAkun2Akun.FormShow(Sender: TObject);
var
  q : TZQuery;
begin
  inherited;
  {
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
    'WHERE c.tipe NOT IN (19,10) AND b.kredit > 0 ';
  zqrEdit.Open;
  }
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

procedure TFrmAkun2Akun.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  
  if (cxChkPosting.Properties.ReadOnly) and
    (cxChkPosting.Checked) then begin
    MsgBox('Transaksi ini sudah di posting. Tidak bisa dihapus.');
    Abort;
  end;

  if Trim(cxtNoTrans.Text) = '' then Abort;
  i := unTools.QBox(Self, 'Hapus pengeluaran kas ini ?','Hapus');
  if i = IDYES then begin
    dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal WHERE no_jurnal = ''' + cxtNoTrans.Text + '''');
    dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' + cxtNoTrans.Text + '''');
    aplikasi.log_('HAPUS JURNAL ANTAR AKUN');
    MsgBox('Transaksi pengeluaran kas sudah dihapus.');
    btnBatalClick(nil);
  end;
end;

procedure TFrmAkun2Akun.btnEditClick(Sender: TObject);
begin
  inherited;
  cxlCari.Text := '';
  {
  if mJenisAkun <> 'non-tunai' then begin
    try
      cxlAkun.EditValue := '1010101';
      cxlAkun.Properties.ReadOnly := True;
      cxlAkun.Enabled := False;
    except
    end;
  end;
  }
end;

procedure TfrmAkun2AKun.memTblBeforePost(DataSet: TDataSet);
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

procedure TfrmAkun2AKun.cxdTglExit(Sender: TObject);
begin
  inherited;
  if cxdTgl.Date > aplikasi.TanggalServer then begin
    MsgBox('Tanggal melebihi tanggal sistem.');
    cxdTgl.Date := aplikasi.TanggalServer;
  end;
end;

end.
