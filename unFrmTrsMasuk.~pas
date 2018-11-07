unit unFrmTrsMasuk;

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
  dxSkinValentine, dxSkinXmas2008Blue, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit,
  cxLabel, ZDataset, DB, NxEdit, PBNumEdit, cxMaskEdit, cxSpinEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckBox;

type
  TfrmTrsMasuk = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariPO: TButton;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    nxColHapus: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColRef: TNxTextColumn;
    nxColKet: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbGdg: TcxComboBox;
    cxLabel4: TcxLabel;
    cxtNoSpk: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtNoSo: TcxTextEdit;
    cxtNamaGdg: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    btnTambah: TButton;
    nxColNoSO: TNxTextColumn;
    nxColNoSPK: TNxTextColumn;
    NxEdit2: TNxEdit;
    cxtNoCCR: TcxTextEdit;
    cxLabel7: TcxLabel;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    nxColSatuan: TNxTextColumn;
    cxChkSOMda: TcxCheckBox;
    NxButtonEdit1: TNxButtonEdit;
    nxBeNoSO: TNxButtonEdit;
    nxBtnEditSO: TNxButtonEdit;
    btnCariBrg: TButton;
    cxLabel8: TcxLabel;
    cxlNoSO: TcxLookupComboBox;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxChkSOMdaClick(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure NxButtonEdit1ButtonClick(Sender: TObject);
    procedure nxBeNoSOButtonClick(Sender: TObject);
    procedure nxBtnEditSOButtonClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxlNoSOPropertiesEditValueChanged(Sender: TObject);
  private
    mUserDept: string;
    mJenisTrans: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    property JenisTrans: string write mJenisTrans;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
  end;

var
  frmPO: TFrmTrsMasuk;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSO, unFrmCariSPK;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CSAT : Integer = 4;
  CQTY : integer = 5;
  CNOSO : Integer = 6;
  CNOSPK : Integer = 7;
  CREF : Integer = 8;
  CKET : Integer = 9;

{$R *.dfm}

procedure TFrmTrsMasuk.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  aplikasi.log_('TRS-MASUK');

  btnCariPO.Visible := False;
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  // cek wewenang ubah tanggal transaksi
  // 13-06-2016
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''UbahTglTrs'' AND nama = ''%s''',
    [Aplikasi.NamaUser]);
  if q.IsEmpty then
    cxdTglTrs.Properties.ReadOnly := True
  else begin
    if q.FieldByName('wwn').AsString = '0' then
      cxdTglTrs.Properties.ReadOnly := True
    else
      cxdTglTrs.Properties.ReadOnly := False;
  end;
  q.Close;

  // collect gudang
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.fieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  cxLabel7.Visible := Aplikasi.EditTrans;
  cxlNoBukti.Visible := Aplikasi.EditTrans;
  btnEdit2.Visible := aplikasi.EditTrans;

  if Aplikasi.UserDept = 'PPIC' then begin
    cxCmbGdg.Text := 'G01';
    cxCmbGdg.Properties.ReadOnly := True;
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  end
  else if aplikasi.UserDept = 'QAC' then begin
    cxCmbGdg.Text := 'G03';
    cxCmbGdg.Properties.ReadOnly := True;
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
    cxLabel7.Visible := True;
    cxtNoCCR.Visible := True;
  end
  else begin
    cxLabel7.Visible := False;
    cxtNoCCR.Visible := False;
  end;

  // 01-09-2016
  cxCmbGdg.Properties.Items.CommaText := Aplikasi.WewenangGudang.CommaText;

  cxtNoTrans.Text := GetLastFak('brg_in');

  cxLabel8.Visible := False;
  cxlNoSO.Visible := False;

  zqrBrg.Open;
  zqrNoSO.Open;
  zqrNoBukti.Open;
  
end;

procedure TFrmTrsMasuk.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmTrsMasuk.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd.Cell[CKD_BRG,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TFrmTrsMasuk.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin
  Abort;
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
        q := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = ''%s''',
          [fKode.AsString]);
        nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.SelectCell(CQTY,ARow);
      end;
    end;
  end;
end;

procedure TFrmTrsMasuk.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = CKD_BRG then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = CQTY then begin

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(CQTY+1,ARow)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(CKD_BRG,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = CNOSO then begin
    try
      nxGrd.SelectCell(CNOSO,ARow+1);
    except
    end;
  end
  else if ACol = CREF then
    nxGrd.SelectCell(CKET, ARow);
end;

procedure TFrmTrsMasuk.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[CQTY,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
  if cxsTotalQty.Value = 0 then
    cxCmbGdg.Properties.ReadOnly := False;
end;

procedure TFrmTrsMasuk.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  btnCariPO.Visible := False;
  cxtNoTrans.Text := GetLastFak('brg_in');
  cxCmbGdg.Text := '';
  cxtNoCCR.Text := '';
end;

procedure TFrmTrsMasuk.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('brg_in');
  cxlNoBukti.Text := '';
end;

procedure TFrmTrsMasuk.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;

procedure TFrmTrsMasuk.btnSimpanClick(Sender: TObject);
var
  //in_head, in_det, barang, barang_det, hist: TZTable;
  in_head, in_det, barang, barang_det, hist: TZQuery;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q, qCekTgl: TZQuery;
begin
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if cxCmbGdg.Text = '' then begin
    MsgBox('Gudang harus diisi.');
    cxCmbGdg.Setfocus;
  end
  else begin
    // 13-06-2016
    qCekTgl := OpenRS('SELECT curdate() as tanggal');
    if qCekTgl.FieldByName('tanggal').AsDateTime <> Date then begin
      MsgBox('Tanggal komputer tidak sama dengan tanggal Server. Program tidak bisa dijalankan.');
      qCekTgl.Close;
      Application.Terminate;
    end;
    qCekTgl.Close;

    // cek apakah nomer SO sudah dipilih
    if mJenisTrans = 'ongkos' then begin
      if cxlNoSO.Text = '' then begin
        MsgBox('Pilih nomer SO.');
        cxlNoSO.SetFocus;
        Abort;
      end;
    end;

    // cek apakah mutasi ongkos sudah pernah dilakukan
    if mJenisTrans = 'ongkos' then begin
      q := OpenRS('SELECT a.kode_brg FROM tbl_trsmasuk_det a LEFT JOIN ' +
        'tbl_barang b ON a.kode_brg = b.kode ' +
        'WHERE no_so = ''%s'' ' +
        'AND b.deskripsi LIKE ''ONGKOS%s''',
        [cxlNoSO.Text, '%']);
      if not q.IsEmpty then begin
        MsgBox('Ongkos untuk nomer SO : ' + cxlNoSO.Text + ' sudah pernah di transaksikan.');
        q.Close;
        Abort;
      end;
      q.Close;
    end;

    //cek apakah ada referensi yang masih kosong
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[CKD_BRG,i].AsString <> '') and
        (Trim(nxGrd.Cell[CNOSO,i].AsString) = '') then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom No. SO yang kosong.');
      Abort;
    end;

    //cek apakah ada referensi yang masih kosong
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[CKD_BRG,i].AsString <> '') and
        (Trim(nxGrd.Cell[CNOSPK,i].AsString) = '') then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom No. SPK yang kosong.');
      Abort;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else begin
        sNoTrs := GetLastFak('brg_in');
        UpdateFaktur(Copy(sNoTrs,1,7));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin

        q := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        while not q.Eof do begin

          barang := OpenRS('SELECT kode, stok FROM tbl_barang WHERE kode = %s',
            [q.FieldByName('kode_brg').AsString]);
          barang.Edit;
          barang.FieldByName('stok').AsFloat :=
            barang.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
          barang.Post;
          barang.Close;

          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [q.FieldByName('kode_brg').AsString, q.FieldByName('kode_gdg').AsString]);

          barang_det.Edit;
          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
          barang_det.Post;
          barang_det.Close;

          q.Next;
        end;
        q.Close;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsmasuk_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsmasuk_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoTrs]);
      in_det := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''', [sNoTrs]);
      hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('referensi').AsString := '';
        in_det.FieldByName('keterangan').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);
        in_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        in_det.FieldByName('no_so').AsString := Trim(nxGrd.Cell[CNOSO,i].AsString);
        in_det.FieldByName('no_spk').AsString := Trim(nxGrd.Cell[CNOSPK,i].AsString);
        in_det.FieldByName('no_ccr').AsString := Trim(cxtNoCCR.Text);
        in_det.Post;

        // update stok
        barang := OpenRS('SELECT kode, stok FROM tbl_barang WHERE kode = %s', [nxGrd.Cell[nxColKodeBrg.Index, i].AsString]);
        barang.Edit;
        barang.FieldByName('stok').AsFloat :=
          barang.FieldByName('stok').AsFloat + nxGrd.Cell[CQTY,i].AsFloat;
        barang.Post;
        barang.Close;

        // update detail barang
        barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
          [nxGrd.Cell[nxColKodeBrg.Index,i].AsString, cxCmbGdg.Text]);
        if not barang_det.IsEmpty then
          barang_det.Edit
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
          barang_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        end;

        barang_det.FieldByName('stok').AsFloat :=
          barang_det.FieldByName('stok').AsFloat + nxGrd.Cell[CQTY,i].AsFloat;
        barang_det.Post;
        barang_det.Close;

        hist.Insert;
        hist.FieldByName('no_bukti').AsString := sNoTrs;
        hist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        hist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        hist.FieldByName('tipe').AsString := 'IN_';
        hist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        hist.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        hist.FieldByName('gudang').AsString := cxCmbGdg.Text;
        hist.FieldByName('referensi').AsString := '';
        hist.FieldByName('keterangan').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);
        hist.FieldByName('user').AsString := Aplikasi.NamaUser;
        hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        hist.FieldByName('no_so').AsString := Trim(nxGrd.Cell[CNOSO,i].AsString);
        hist.FieldByName('no_spk').AsString := Trim(nxGrd.Cell[CNOSPK,i].AsString);
        hist.FieldByName('no_spmb').AsString := '';
        hist.FieldByName('no_ccr').AsString := Trim(cxtNoCCR.Text);
        hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        hist.Post;
      end;

      in_head.Close;
      in_det.Close;
      hist.Close;

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi barang masuk sudah disimpan dengan nomer: ' + sNoTrs);
      btnBatalClick(nil);
      inherited;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;

end;

procedure TFrmTrsMasuk.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
var
  fs: TFrmCariSo;
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
    else if ACol = CKD_BRG then begin
      //self.NxEdit1DblClick(nil);
      fs := TFrmCariSO.Create(self);
      fs.fTrsMasuk := Self;
      fs.KodeCust := '';
      fs.ShowModal;
    end
    else if ACol = CNOSO then begin
    
    end;
  end;
end;

procedure TFrmTrsMasuk.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  if cxtNOTrans.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    if not q.IsEmpty then begin
      if q.FieldByName('no_pb').IsNull then begin
        i := QBox(Self, 'Hapus PO Nomer: ' + cxtNOTrans.Text,'Hapus PO');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_po_head WHERE no_bukti = ''' + cxtNOTrans.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det WHERE no_bukti = ''' + cxtNOTrans.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan PO berhasil.');
            btnBatalClick(nil);
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
      end
      else begin
        MsgBox('PO ini sudah diterima, tidak bisa dihapus.');
      end;
    end;
  end;
end;

procedure TfrmTrsMasuk.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TfrmTrsMasuk.btnTambahClick(Sender: TObject);
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

  //if not CekKodeBrg(sKodeBrg, ARow) then begin
  //  MsgBox('Kode Barang sudah ada.');
  //  cxLUBrg.Text := '';
  //end
  //else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT kode, deskripsi, satuan FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := 0;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  //end;
end;

procedure TfrmTrsMasuk.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TfrmTrsMasuk.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TfrmTrsMasuk.FormShow(Sender: TObject);
var
  qo: TZQuery;
begin
  Screen.Cursor := crSQLWait;
  
  if mUserDept = 'QAC' then begin
    cxLabel7.Visible := True;
    cxtNoCCR.Visible := True;
    cxCmbGdg.Text := 'G03';
    cxtNamaGdg.Text := unTools.GetNamaGudang('G03');
    cxCmbGdg.Properties.ReadOnly := True;
  end;

  if mJenisTrans = 'ongkos' then begin
    cxCmbGdg.Text := 'G02';
    cxtNamaGdg.Text := unTools.GetNamaGudang('G02');
    cxCmbGdg.Properties.ReadOnly := True;
    cxLabel8.Visible := True;
    cxlNoSO.Visible := True;
    zqrNoSO.Open;
    nxColHapus.Visible := False;
    nxColQty.Options := nxColQty.Options - [coEditing];
    nxColNoSO.Options := nxColNoSO.Options - [coEditing];
    nxColNoSPK.Visible := False;

    cxLUBrg.Enabled := False;
    btnCariBrg.Visible := False;
    btnTambah.Visible := False;
    cxChkSOMda.Visible := False;
    cxdTglTrs.Properties.ReadOnly := True;
  end;

  if aplikasi.NamaUser = 'ANTON' then begin
    zqrBrg.Close;
    zqrBrg.SQL.Text := 'SELECT * FROM v_brg_per_gdg_2 ' +
      'WHERE tipe LIKE ''SPT%'' ORDER BY deskripsi';
    zqrBrg.Open;
  end;

  // hacked 10-02-2016
  if Pos(aplikasi.NamaUser, 'SUNANTO;YOSEFS;TIWI;DWIHARJO') > 0 then begin
    zqrBrg.Close;
    zqrBrg.SQL.Text := 'SELECT * FROM v_brg_per_gdg_2 ' +
      'WHERE (tipe like ''BB%'') or (tipe like ''BPS%'') or (deskripsi like ''BOARD%'') ' +
      'or (deskripsi like ''AFAL%'') or (deskripsi like ''%BEKAS%'') ' +
      'or (deskripsi like ''%PINTU WPC%'') ' +
      'or (deskripsi like ''SUSRUKAN%'') ' +
      'or (deskripsi like ''%GRAM BESI%'') ' +
      'or (deskripsi like ''JENDELA%'')';
    zqrBrg.Open;
  end;

  // hacked 10-02-2016
  qo := OpenRS('SELECT * FROM _tbl_open WHERE tanggal = curdate()');
  if not qo.IsEmpty then begin
  // if Aplikasi.TanggalString = '2016-05-27' then begin
    if Pos(aplikasi.NamaUser, 'SUNANTO;TIWI') > 0 then begin
      zqrBrg.Close;
      zqrBrg.SQL.Text := 'SELECT * FROM v_brg_per_gdg_2';
      zqrBrg.Open;
    end;
  end;
  qo.Close;

  Screen.Cursor := crDefault;
end;

procedure TfrmTrsMasuk.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin
  if Trim(cxlNoBukti.Text) = '' then Abort;
  
  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  cxCmbGdg.Text := q.FieldByName('kode_gdg').AsString;
  cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  cxtNoCCR.Text := q.FieldByName('no_ccr').AsString;

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT kode, deskripsi, satuan FROM tbl_barang WHERE kode = ''%s''',
      [q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNM_BRG,i].AsString := qBrg.fieldByName('deskripsi').AsString;
    qBrg.Close;
    nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[CNOSO,i].AsString := q.FieldByName('no_so').AsString;
    nxGrd.Cell[CNOSPK,i].AsString := q.FieldByName('no_spk').AsString;
    nxGrd.Cell[CKET,i].AsString := q.FieldByName('keterangan').AsString;

    // cek apakah SO MDA atau Bukan
    if Copy(nxGrd.Cell[CNOSO,i].AsString,1,3) = 'SO/' then begin
      cxChkSOMda.EditValue := True;
      cxLUBrg.Enabled := False;
      btnTambah.Enabled := False;
    end;

    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
end;

procedure TfrmTrsMasuk.cxChkSOMdaClick(Sender: TObject);
begin
  nxGrd.ClearRows;
  if cxChkSOMda.Checked then begin
    nxColNoSO.Options := nxColNoSO.Options - [coEditing];
    cxLUBrg.Enabled := False;
    btnTambah.Enabled := False;
  end
  else begin
    nxColNoSO.Options := nxColNoSO.Options + [coEditing];
    cxLUBrg.Enabled := True;
    btnTambah.Enabled := True;
  end;
  nxGrd.AddRow();
end;

procedure TfrmTrsMasuk.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and
    (ACol = CKD_BRG) then begin

    q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      ' AND kode_brg = ''%s''',
      [sNoSO, sKodeBrg]);

    if not q.IsEmpty then begin

      qb := OpenRS('SELECT kode, deskripsi, satuan FROM tbl_barang WHERE kode = %s',
        [q.FIeldByName('kode_brg').AsString]);
      nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNOSO,ARow].AsString := sNoSO;
      nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
      qb.Close;

      nxGrd.AddRow();
    end;

    HitungTotal;
  end;
end;

procedure TfrmTrsMasuk.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TfrmTrsMasuk.NxButtonEdit1ButtonClick(Sender: TObject);
var
  f: TfrmCariSPK;
  lst: TStringList;
  ARow, ACol: Integer;
begin
  ARow := nxGrd.SelectedRow;
  ACol := nxGrd.SelectedColumn;

  f := TfrmCariSPK.Create(Self);
  f.ShowModal;
  if f.ModalResult = idOk then begin
    lst := f.NoSPK;
    nxGrd.Cell[nxColNoSPK.Index,ARow].AsString := lst.Strings[0];
    nxGrd.SelectCell(nxColNoSPK.Index+1,ARow);
  end;
  f.Release;

end;

procedure TfrmTrsMasuk.nxBeNoSOButtonClick(Sender: TObject);
var
  f: TfrmCari;
  ARow, ACol: Integer;
  s: TStringList;
  fNoSO: TField;
begin
  ARow := nxGrd.SelectedRow;
  ACol := nxGrd.SelectedColumn;

  f := TfrmCari.Create(Self);
  f.Jenis := 'sales-order-mdb';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fNoSO := s.Objects[0] as TField;
    nxGrd.Cell[CNOSO,ARow].AsString := fNoSO.AsString;
    nxGrd.SelectCell(CNOSO+1,ARow);
  end;
  f.Release;
end;

procedure TfrmTrsMasuk.nxBtnEditSOButtonClick(Sender: TObject);
var
  f: TfrmCari;
  ARow, ACol: Integer;
  s: TStringList;
  fNoSO: TField;
begin
  ARow := nxGrd.SelectedRow;
  ACol := nxGrd.SelectedColumn;

  if nxGrd.Cell[CKD_BRG,ARow].AsString = '' then begin
    MsgBox('Mohon isi kode barang.');
    Abort;
  end;

  f := TfrmCari.Create(Self);
  f.Jenis := 'sales-order';
  f.KodeBrg := nxGrd.Cell[CKD_BRG,ARow].AsString;
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fNoSO := s.Objects[0] as TField;
    nxGrd.Cell[CNOSO,ARow].AsString := fNoSO.AsString;
    nxGrd.SelectCell(CNOSO+1,ARow);
  end;
  f.Release;
end;

procedure TfrmTrsMasuk.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUBrg.EditValue := fKode.AsInteger;
  end;

end;

procedure TfrmTrsMasuk.cxlNoSOPropertiesEditValueChanged(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  try
    q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND deskripsi LIKE ''ONGKOS%s''',
      [zqrNoSO.FieldByName('no_bukti').AsString, '%']);
    if not q.IsEmpty then begin
      nxGrd.ClearRows;
      while not q.Eof do begin
        i := nxGrd.AddRow();
        nxGrd.Cell[nxColKodeBrg.Index, i].AsString := q.FieldByName('kode_brg').AsString;
        nxGrd.Cell[nxColNamaBrg.Index, i].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.Cell[nxColSatuan.Index, i].AsString := q.FieldByName('satuan').AsString;
        nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
        nxGrd.Cell[nxColNoSO.Index,i].AsString := q.FieldByName('no_bukti').AsString;
        nxGrd.Cell[nxColNoSPK.Index,i].AsString := '-';
        nxGrd.Cell[nxColKet.Index,i].AsString := '';
        q.Next;
        HitungTotal;
      end;
    end;  
    q.Close;
  except
  end;

end;

end.
