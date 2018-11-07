unit unFrmSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxSpinEdit, NxEdit, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel, ZDataset, DB,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ZAbstractRODataset,
  ADODB;

type
  TfrmSO = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariSO: TButton;
    cxLabel6: TcxLabel;
    cxdTglSO: TcxDateEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKode: TNxTextColumn;
    nxColDeskripsi: TNxTextColumn;
    nxColStokLama: TNxNumberColumn;
    nxColStokBaru: TNxNumberColumn;
    NxImageColumn1: TNxImageColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    nxColKet: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbGdg: TcxComboBox;
    cxtNamaGdg: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLabel4: TcxLabel;
    cxLUBrg: TcxLookupComboBox;
    btnTambah: TButton;
    btnAdjustKor: TButton;
    btnImportExcel: TButton;
    adoConn: TADOConnection;
    nxColJenis: TNxTextColumn;
    nxColHPP: TNxNumberColumn;
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnCariSOClick(Sender: TObject);
    procedure btnAdjustKorClick(Sender: TObject);
    procedure btnImportExcelClick(Sender: TObject);
  private
    mJenis: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure ClearAll;
    procedure HitungTotal;
  public
    property Jenis : string read mJenis write mJenis;
  end;

var
  frmSO: TfrmSO;

implementation

uses unFrmCari, unTools, unDm, unAplikasi;

const
  CNO : integer = 0;
  CHAPUS: integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CSTK_LAMA : integer = 4;
  CSTK_BARU : integer = 5;
  CHPP : Integer = 6;
  CKET : Integer = 7;


{$R *.dfm}

procedure TfrmSO.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);

  {procedure hitungSubTotal;
  begin
    nxGrd.Cell[CSUBTOTAL,ARow].AsFloat :=
      (nxGrd.Cell[CQTY,ARow].AsFloat * nxGrd.Cell[CHRG_BRG,ARow].AsFloat) -
      (nxGrd.Cell[CQTY,ARow].AsFloat *
        ((nxGrd.Cell[CDISKON,ARow].AsFloat / 100) * nxGrd.Cell[CHRG_BRG,ARow].AsFloat));
  end;
  }

var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = CKD_BRG then begin

  end

  // kolom quantity
  else if ACol = CSTK_BARU then begin
    HitungTotal;
    if ARow < nxGrd.RowCount - 1 then
      nxGrd.SelectCell(1,nxGrd.RowCount-1)
    else begin
      i := nxGrd.AddRow();
      nxGrd.SelectCell(1,i);
      nxGrd.ScrollToRow(i);
    end;
  end;
end;

procedure TfrmSO.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = 1) then begin
    f := TFrmCari.Create(self);
    f.jenis := 'barang';
    f.ShowModal;
    if f.ModalResult = idOk then begin
      s := f.Result;
      fKode := s.Objects[0] as TField;
      if not CekKodeBrg(fKode.AsString, ARow) then
        MsgBox('Kode Barang sudah ada.')
      else begin
        q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
          [fKode.AsString]);
        nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('nama').AsString;
        nxGrd.Cell[CSTK_LAMA,ARow].AsFloat := q.FieldByName('stok').AsFloat;
        nxGrd.SelectCell(4,ARow);
      end;
    end;
  end;
end;

function TFrmSO.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd.Cell[1,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TFrmSO.ClearAll;
var
  i: Integer;
begin
  cxtNoTrans.text := '';
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  btnCariSO.Visible := False;
  cxCmbGdg.Properties.ReadOnly := False;
  cxCmbGdg.Text := '';
  cxtNoTrans.Text := GetLastFak('koreksi');
end;

procedure TfrmSO.btnSimpanClick(Sender: TObject);
var
  so_head, so_det, history: TZTable;
  sNoSO: string;
  i: integer;
begin
  if cxCmbGdg.Text = '' then begin
    MsgBox('Pilih gudang.');
    cxCmbGdg.SetFocus;
  end

  //else if cxsTotalQty.Value = 0 then begin
  //  MsgBox('Detail Koreksi masih kosong.');
  //  nxGrd.SelectCell(0,0);
  //  nxGrd.SetFocus;
  //end
  
  else begin

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglSO.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal SO lebih kecil dari tanggal stok awal.');
      cxdTglSO.SetFocus;
      Abort;
    end;

    try
      sNoSO := GetLastFak('koreksi');
      dm.zConn.StartTransaction;

      so_head := OpenTbl('tbl_trskoreksi_head');
      so_det := OpenTbl('tbl_trskoreksi_det');

      so_head.Insert;
      so_head.FieldByName('no_bukti').AsString := sNoSO;
      so_head.FieldByName('tanggal').AsDateTime := cxdTglSO.Date;
      so_head.FieldByName('user').AsString := Aplikasi.NamaUser;
      so_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      so_head.FieldByName('f_approval').AsInteger := 0;
      so_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      so_head.Post;

      // simpan so_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        so_det.Insert;
        so_det.FieldByName('no_bukti').AsString := sNoSO;
        so_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        so_det.FieldByName('stok_lama').AsFloat := nxGrd.Cell[CSTK_LAMA,i].AsFloat;
        
        //so_det.FieldByName('stok_baru').AsFloat := nxGrd.Cell[CSTK_BARU,i].AsFloat;

        // 01-10-2014
        //so_det.FieldByName('stok_koreksi').AsFloat :=
        //  nxGrd.Cell[CSTK_BARU,i].AsFloat - nxGrd.Cell[CSTK_LAMA,i].AsFloat;

        so_det.FieldByName('stok_koreksi').AsFloat :=
          nxGrd.Cell[nxColStokBaru.Index,i].AsFloat;

        so_det.FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[CKET,i].AsString);
        so_det.FieldByName('gudang').AsString := cxCmbGdg.Text;
        so_det.FieldByName('f_approval').AsInteger := 0;
        so_det.FieldByName('jenis').AsString := nxGrd.Cell[nxColJenis.Index,i].AsString;
        so_det.FieldByName('hpp').AsFloat := nxGrd.Cell[nxColHPP.Index, i].AsFloat;
        so_det.Post;
      end;

      so_head.Close;
      so_det.Close;

      UpdateFaktur(Copy(sNoSO,1,7));

      dm.zConn.Commit;

      MsgBox('Koreksi sudah disimpan dengan nomer: ' + sNoSO);
      btnBatalClick(nil);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

end;

procedure TfrmSO.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  aplikasi.log_('KOREKSI-STOK');
  
  q := OpenRS('SELECT * FROM tbl_gudang WHERE f_aktif = 1');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  cxdTglSO.Date := Aplikasi.Tanggal;
  btnCariSO.Visible := False;
  cxtNoTrans.Text := GetLastFak('koreksi');
  cxdTglSO.Date := aplikasi.TanggalServer;

  if aplikasi.NamaUser <> 'ADMIN' then
    btnImportExcel.Visible := False;
  if aplikasi.NamaUser = 'SUNANTO' then
    btnImportExcel.Visible := True;
  zqrBrg.Open;
end;

procedure TfrmSO.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmSO.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    //tmp := tmp + nxGrd.Cell[CSTK_BARU,i].AsFloat;
    tmpQty := tmpQty + nxGrd.Cell[CSTK_BARU,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
  if cxsTotalQty.Value = 0 then
    cxCmbGdg.Properties.ReadOnly := False;
end;

procedure TfrmSO.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    if cxsTotalQty.Value > 0 then begin
      MsgBox('Detail transaksi harus dikosongi dulu.');
    end
    else
      cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TfrmSO.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg.Text = '' then Abort;
  
  if cxCmbGdg.Text = '' then begin
    MsgBox('Pilih kode gudang.');
    cxCmbGdg.SetFocus;
    Abort;
  end;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode Barang sudah ada.');
    cxLUBrg.Text := '';
  end
  else begin

    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    q.Close;

    q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' ' +
      'AND kode_gdg = ''%s''',
      [sKodeBrg, cxCmbGdg.Text]);
    nxGrd.Cell[CSTK_LAMA,ARow].AsFloat := q.FieldByName('stok').AsFloat;
    q.Close;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  end;
end;

procedure TfrmSO.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TfrmSO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Release;
end;

procedure TfrmSO.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
begin
  if mJenis = 'adjust' then Abort;
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[1, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
    else if ACol = CKD_BRG then begin
      if cxCmbGdg.Text = '' then
        cxCmbGdg.SetFocus
      else
        NxEdit1DblClick(nil);
    end;
  end;
end;

procedure TfrmSO.FormShow(Sender: TObject);
begin
  inherited;
  if mJenis = 'adjust' then begin
    self.Caption := 'Adjust Koreksi Stok';
    lblJudul.Caption := 'Adjust Koreksi Stok';
    btnCariSO.Visible := True;
    btnAdjustKor.Left := btnSimpan.Left;
    btnAdjustKor.Top := btnSimpan.Top;
    btnAdjustKor.Visible := True;
    btnSimpan.Visible := False;
    btnKeluar.Left := btnAdjustKor.Left + btnAdjustKor.Width + 5;
    cxtNoTrans.Text := '';
    cxCmbGdg.Properties.ReadOnly := True;
    cxdTglSO.Text := '';
    cxLUBrg.Enabled := False;
    btnTambah.Visible := False;
  end;
end;

procedure TfrmSO.btnCariSOClick(Sender: TObject);
var
  f: TfrmCari;
  fld: TField;
  sList: TStringList;
  q, q2: TZQuery;
  i: Integer;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'adjust_koreksi';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    sList := f.Result;
    fld := TField(sList.Objects[0]);

    cxtNOTrans.Text := fld.AsString;

    // head
    q := OpenRS('SELECT * FROM tbl_trskoreksi_head WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    cxdTglSO.Date := q.FieldByName('tanggal').AsDateTime;
    q.Close;

    // detail
    q := OpenRS('SELECT * FROM tbl_trskoreksi_det WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    cxCmbGdg.Text := q.FieldByName('gudang').AsString;  
    i := 0;
    while not q.Eof do begin
      nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CSTK_LAMA,i].AsFloat := q.FieldByName('stok_lama').AsFloat;
      nxGrd.Cell[CSTK_BARU,i].AsFloat := q.FieldByName('stok_baru').AsFloat;
      nxGrd.Cell[CKET,i].AsString := q.FieldByName('keterangan').AsString;

      q2 := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CNM_BRG,i].AsString := q2.FieldByName('deskripsi').AsString;
      q2.Close;

      Inc(i);
      nxGrd.AddRow();
      q.Next;
    end;
    nxGrd.Columns[4].Editing := False;
    nxGrd.Columns[5].Editing := False;
    nxGrd.Columns[6].Visible := False;

    HitungTotal;
    q.Close;
  end;
end;

procedure TfrmSO.btnAdjustKorClick(Sender: TObject);
var
  q, q2: TZQuery;
  tbl_history, tbl_barang, tbl_barang_det, tbl_kor_head: TZTable;
begin
  if cxtNoTrans.Text = '' then begin
    MsgBox('Pilih No. Transaksi Koreksi.');
    cxtNoTrans.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;

      tbl_history := OpenTbl('tbl_history');
      tbl_barang := OpenTbl('tbl_barang');
      tbl_barang_det := OpenTbl('tbl_barang_det');
      tbl_kor_head := OpenTbl('tbl_trskoreksi_head');

      // update header koreksi
      if tbl_kor_head.Locate('no_bukti', cxtNoTrans.Text,[]) then begin
        tbl_kor_head.Edit;
        tbl_kor_head.FieldByName('tgl_adjust').AsDateTime := aplikasi.TanggalServer;
        tbl_kor_head.FieldByName('jam_adjust').AsDateTime := aplikasi.ServerTime;
        tbl_kor_head.Post;
      end;
      tbl_kor_head.Close;

      q := OpenRS('SELECT * FROM tbl_trskoreksi_det ' +
        'WHERE no_bukti = ''%s''',
        [cxtNoTrans.Text]);
      while not q.Eof do begin

        tbl_history.Insert;
        tbl_history.FieldByName('no_bukti').AsString := cxtNoTrans.Text;
        tbl_history.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
        tbl_history.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
        tbl_history.FieldByName('tipe').AsString := 'IN_';
        tbl_history.FieldByName('qty').AsFloat := q.FieldByName('stok_koreksi').AsFloat;
        tbl_history.FieldByName('gudang').AsString := q.FieldByName('gudang').AsString;
        tbl_history.FieldByName('referensi').AsString := '';
        tbl_history.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
        tbl_history.FieldByName('user').AsString := aplikasi.NamaUser;
        tbl_history.FieldByName('user_dept').AsString := aplikasi.UserDept;
        tbl_history.Post;

        if tbl_barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([q.FieldByName('kode_brg').AsInteger,
            q.FieldByName('gudang').AsString]),[]) then 
          tbl_barang_det.Edit
        else begin
          tbl_barang_det.Insert;
          tbl_barang_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        end;
        tbl_barang_det.FieldByName('stok').AsFloat :=
          q.FieldByName('stok_baru').AsFloat;
        tbl_barang_det.Post;


        if tbl_barang.Locate('kode', q.FieldByName('kode_brg').AsInteger,[]) then begin
          q2 := OpenRS('SELECT sf_get_stok(%s) AS stok',
            [q.FieldByName('kode_brg').AsString]);
          tbl_barang.Edit;
          tbl_barang.FieldByName('stok').AsFloat := q2.FieldByName('stok').AsFloat;
          tbl_barang.Post;
        end;

        q.Next;
      end;

      dm.zConn.ExecuteDirect('UPDATE tbl_trskoreksi_head SET f_adjust = 1 ' +
          'WHERE no_bukti = ''' + cxtNoTrans.Text + '''');

      tbl_history.Close;
      tbl_barang.Close;
      tbl_barang_det.Close;

      dm.zConn.Commit;

      MsgBox('Koreksi No. : ' + cxtNoTrans.Text + ' sudah di Adjust.');

      ClearAll;
      self.FormShow(nil);
      cxtNoTrans.SetFocus;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;

end;

procedure TfrmSO.btnImportExcelClick(Sender: TObject);
var
  q: TADOQuery;
  i: integer;
  q2, q3: TZQuery;
  sTglStok: string;
begin
  adoConn.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=' + aplikasi.AppPath + '\koreksi.xls;' +
    'Extended Properties="Excel 8.0;HDR=Yes;IMEX=1"';
  adoConn.LoginPrompt := False;
  adoConn.Connected := true;

  q := TADOQuery.Create(nil);
  q.Connection := adoConn;
  q.SQL.Text := 'SELECT * FROM [koreksi$]';
  q.Open;

  nxGrd.ClearRows;
  sTglStok := FormatDateMySQL(Aplikasi.TanggalServer);

  while not q.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColKode.Index,i].AsString := q.FieldByName('kode').AsString;

    q2 := OpenRS('SELECT * FROM tbl_barang WHERE kode = ' + q.FieldByName('kode').AsString);
    if not q2.IsEmpty then begin

      q3 := OpenRS('SELECT sf_getstokawal2(%s,''%s'',''%s'') AS stok',
        [q.FieldByName('kode').AsString,
         'G01',
         sTglStok
         //q.FieldByName('tgl_stok').AsString
        ]);

      nxGrd.Cell[nxColStokLama.Index,i].AsFloat := q3.FieldByName('stok').AsFloat;
      q3.Close;

      nxGrd.Cell[nxColDeskripsi.Index,i].AsString := q2.FieldByName('deskripsi').AsString;
      //nxGrd.Cell[nxColStokLama.Index,i].AsFloat := q2.FieldByName('stok').AsFloat;

    end;
    q2.Close;

    nxGrd.Cell[nxCOlStokBaru.Index,i].AsFloat := q.FieldByName('koreksi').AsFloat;
    nxGrd.Cell[nxColKet.Index, i].AsString := UpperCase(q.FieldByName('keterangan').AsString);
    nxGrd.Cell[nxColJenis.Index,i].AsString := '1';

    q.Next;
  end;
  q.Close;
  adoConn.Close;

end;

end.
