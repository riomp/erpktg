unit unFrmPembayaranKas2;

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
  TfrmPembayaranKas2 = class(TfrmTplTrans)
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
    cxEditRepository1: TcxEditRepository;
    cxEditRepository1SpinItem1: TcxEditRepositorySpinItem;
    memTblunit: TStringField;
    memTbldept: TStringField;
    cxColUnit: TcxGridDBColumn;
    cxColDept: TcxGridDBColumn;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    zqrDept: TZReadOnlyQuery;
    dsDept: TDataSource;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxlUnit: TcxLookupComboBox;
    cxlDept: TcxLookupComboBox;
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
    procedure cxdTglExit(Sender: TObject);
    procedure cxdTglPropertiesChange(Sender: TObject);
  private
    mJenisAkun: string;
    procedure ClearAll;
    procedure HitungTotal;
  public
    property JenisAkun: string write mJenisAkun;
  end;

var
  frmPembayaranKas2: TFrmPembayaranKas2;

implementation

uses unAplikasi, unDm, unTools, unFrmCari;

{$R *.dfm}

procedure TFrmPembayaranKas2.nxColAkunButtonClick(Sender: TObject);
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

procedure TFrmPembayaranKas2.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  nxGrd.StartRowCount := 1;
  zqrAkun.Open;
  zqrEdit.Open;
  zqrDetAkun.Open;
  memTbl.Open;

 { cxdTgl.Properties.ReadOnly := True;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''%s'' AND nama = ''%s''',
    ['UT_PengeluaranKas', aplikasi.NamaUser]);
  if not q.IsEmpty then begin
    if q.FieldByName('wwn').AsString = '1' then
      cxdTgl.Properties.ReadOnly := False;
  end; 
  q.Close; }

  {
  if Aplikasi.NamaUser <> 'ADMIN' then begin
    cxdTgl.Properties.ReadOnly := True;
  end;
  cxdTgl.Date := Aplikasi.TanggalServer;
  }

  //if aplikasi.Ekspedisi = '1' then
  //  cxdTgl.Properties.ReadOnly := False;

  cxdTgl.Date := aplikasi.TanggalServer;

  zqrUnit.Open;
  zqrDept.Open;
end;

procedure TFrmPembayaranKas2.nxGrdAfterEdit(Sender: TObject; ACol,
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

procedure TFrmPembayaranKas2.nxColNoTransButtonClick(Sender: TObject);
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

procedure TFrmPembayaranKas2.btnSimpanClick(Sender: TObject);
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
        FieldByName('jenis').AsString := 'OK';
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
        FieldByName('jenis').AsString := 'PKAS';
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
        FieldByName('unit').AsString := cxlUnit.Text;
        FieldByName('dept').AsString := cxlDept.Text;
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

procedure TFrmPembayaranKas2.ClearAll;
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

procedure TFrmPembayaranKas2.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNoTrans.Text := GetLastFak('jurnal');
  {
  if mJenisAkun <> 'non-tunai' then begin
    try
      cxlAkun.EditValue := '1010101';
      cxlAkun.Properties.ReadOnly := True;
      cxlAkun.Enabled := False;
    except
    end;
    memTbl.Append;
  end;
  }
  memTbl.Append;
  cxdTgl.Date := aplikasi.TanggalServer;
end;

procedure TFrmPembayaranKas2.HitungTotal;
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

procedure TFrmPembayaranKas2.nxGrdCellDblClick(Sender: TObject; ACol,
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

procedure TFrmPembayaranKas2.cxlAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxlAkun.Text = '' then
    cxtNoAkun.Text := ''
  else
    cxtNoAkun.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TFrmPembayaranKas2.btnProsesEditClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  inherited;
  //if cxlCari.Text = '' then Abort;

  q := OpenRS('SELECT * FROM v_jurnal WHERE no_jurnal = ''%s'' ' +
    'AND kredit > 0',[zqrEdit.FieldByName('no_jurnal').AsString]);
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
    'AND debet > 0 ORDER BY urutan',[zqrEdit.FieldByName('no_jurnal').AsString]);
  while not q.Eof do begin
    memTbl.Insert;
    memTbl.FieldByName('nama_akun').AsString := q.FieldByName('akun').AsString;
    memTbl.FieldByName('noakun').AsString := q.FieldByName('akun').AsString;
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

procedure TfrmPembayaranKas2.cxTblFocusedItemChanged(
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


procedure TfrmPembayaranKas2.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmPembayaranKas2.btnCariEditClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fld: TField;
begin
  inherited;
  f := TFrmCari.Create(self);
  if mJenisAkun = 'non-tunai' then
    f.Jenis := 'pengeluaran-kas-non-tunai'
  else
    f.Jenis := 'pengeluaran-kas';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fld := s.Objects[0] as TField;
    btnProsesEditClick(nil);
    f.Release;
  end;
end;

procedure TfrmPembayaranKas2.FormShow(Sender: TObject);
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
      'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND tipe = 1';
    zqrAkun.Open;

    zqrDetAkun.Close;
    zqrDetAkun.SQL.Text := 'SELECT noakun, nama, ' +
      '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak ' +
      'FROM tbl_coa a ' +
      'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND tipe <> 1';
    zqrDetAkun.Open;
  end;
  
  {
  if aplikasi.Ekspedisi = '1' then
    cxdTgl.Properties.ReadOnly := False;
  }  
end;

procedure TfrmPembayaranKas2.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if Trim(cxtNoTrans.Text) = '' then Abort;
  i := unTools.QBox(Self, 'Hapus pengeluaran kas ini ?','Hapus');
  if i = IDYES then begin
    dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal WHERE no_jurnal = ''' + cxtNoTrans.Text + '''');
    dm.zConn.ExecuteDirect('DELETE FROM tbl_jurnal_det WHERE no_jurnal = ''' + cxtNoTrans.Text + '''');
    //aplikasi.log_('HAPUS JURNAL PENGELUARAN KAS', cxtNoTrans.Text);
    MsgBox('Transaksi pengeluaran kas sudah dihapus.');
    btnBatalClick(nil);
  end;
end;

procedure TfrmPembayaranKas2.btnEditClick(Sender: TObject);
begin
  inherited;
  if mJenisAkun <> 'non-tunai' then begin
    try
      cxlAkun.EditValue := '1010101';
      cxlAkun.Properties.ReadOnly := True;
      cxlAkun.Enabled := False;
    except
    end;
  end;
  //btnPrint.Visible := False;
end;

procedure TfrmPembayaranKas2.cxdTglExit(Sender: TObject);
begin
  inherited;
  if mJenisAkun = 'non-tunai' then begin
    if cxdTgl.Date > aplikasi.TanggalServer then begin
      MsgBox('Tanggal melebihi tanggal sistem.');
      cxdTgl.Date := aplikasi.TanggalServer;
    end;
  end;
end;

procedure TfrmPembayaranKas2.cxdTglPropertiesChange(Sender: TObject);
begin
  inherited;
   cxtNoTrans.Text := GetLastFak('jurnal',cxdTgl.Date)
end;

end.
