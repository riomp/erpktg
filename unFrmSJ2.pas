unit unFrmSJ2;

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
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckListBox, cxCheckBox,
  cxMemo;

type
  TfrmSJ2 = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariPO: TButton;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    NxTextColumn4: TNxTextColumn;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    btnTambah: TButton;
    NxEdit2: TNxEdit;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    NxTextColumn7: TNxTextColumn;
    cxLabel8: TcxLabel;
    dsCust: TDataSource;
    zqrCust: TZReadOnlyQuery;
    cxLUCust: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxdTglKirim: TcxDateEdit;
    cxLabel9: TcxLabel;
    cxCmbPembayaran: TcxComboBox;
    cxLabel11: TcxLabel;
    cxCmbKategoriSO: TcxComboBox;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxtPO: TcxTextEdit;
    cxtKeterangan: TcxTextEdit;
    cxChkLstEmail: TcxCheckListBox;
    chkSdhKirimEmail: TcxCheckBox;
    cxLabel5: TcxLabel;
    cxmIsiEmail: TcxMemo;
    cxmTemplate: TcxMemo;
    mm: TcxMemo;
    cxLabel2: TcxLabel;
    cxtSubject: TcxTextEdit;
    chkComplete: TcxCheckBox;
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
    procedure btnTambahClick(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxCmbKategoriSOPropertiesChange(Sender: TObject);
    procedure cxLUCustPropertiesChange(Sender: TObject);
  private
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure ResetCheckEmail;
    procedure SendEmailSO;
    function GenerateHTML : string;
  public
    property UserDept: string read mUserDept write mUserDept;
  end;

var
  frmSJ2: TFrmSJ2;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unThreadKirimEmail, unFrmWait;

const
  CNO : integer = 0;
  CKD_BRG : integer = 1;
  CNM_BRG : integer = 2;
  CSAT : Integer = 3;
  CQTY : integer = 4;
  CKET : Integer = 5;
  CHAPUS: integer = 6;

{$R *.dfm}

procedure TFrmSJ2.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: Integer;
  tx: TcxCheckListBoxItem;
  bEditSO: boolean;
begin
  inherited;
  unTools.OpenAllQ(Self);

  btnCariPO.Visible := False;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxdTglTrs.Properties.ReadOnly := Not aplikasi.UbahTglTrs;

  cxtNoTrans.Text := GetLastFak('sales_order');

  bEditSO := False;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''%s'' ' +
    'AND nama = ''%s''',
    ['EditSalesOrder', aplikasi.NamaUser]);
  if not q.IsEmpty then
    bEditSO := q.FieldByName('wwn').AsBoolean;

  cxlNoBukti.Visible := bEditSO;
  btnEdit2.Visible := bEditSO;
  q.Close;

  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Bulan');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Bulan');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Minggu');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Minggu');
  cxCmbPembayaran.Properties.Items.Add('3 (Tiga) Minggu');
  cxCmbPembayaran.Properties.Items.Add('Kontan');
  cxCmbPembayaran.ItemIndex := 0;

  cxCmbKategoriSO.Properties.Items.CommaText :=
    '"",' +
    'ATAP,' +
    '"DUMA DOOR",' +
    '"PESANAN KHUSUS RIGID PVC",' +
    'SELANG,' +
    'PGL,' +
    'ACP,' +
    '"PK SOFT PVC",' +
    '"DUMA PANEL / PLAFON WPC",' +
    '"PINTU PVC",' +
    '"SEDOTAN + ST.BAND + RAFIA",' +
    '"PK PE SENAR",' +
    '"LAIN-LAIN (AFALAN)"';
  cxCmbKategoriSO.ItemIndex := 0;

  lst := TStringList.Create;
  lst.Add('boby@sdp.mail');
  lst.Add('vivi@sdp.mail');
  lst.Add('felgitotema@sdp.mail');
  lst.Add('ferry@sdp.mail');
  lst.Add('hari@sdp.mail');
  lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;

  Self.Jenis := 'tambah';
end;

procedure TFrmSJ2.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmSJ2.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmSJ2.NxEdit1DblClick(Sender: TObject);
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
        nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
        nxGrd.SelectCell(CQTY,ARow);
      end;
    end;
  end;
end;

procedure TFrmSJ2.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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

    //if nxGrd.Cell[CQTY,ARow].AsInteger < 1 then begin
    //  nxGrd.Cell[CQTY,ARow].AsInteger := 1;
    //end;
    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
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
end;

procedure TFrmSJ2.HitungTotal;
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
end;

procedure TFrmSJ2.ClearAll;
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
  cxtNoTrans.Text := GetLastFak('sales_order');
  cxLUCust.Text := '';
  cxdTglKirim.Text := '';
  cxtKeterangan.Text := '';
  cxCmbPembayaran.ItemIndex := 0;
  cxtPO.Text := '';
  cxCmbKategoriSO.ItemIndex := 0;
  cxLUBrg.Text := '';
  cxtSubject.Text := '';
  cxmIsiEmail.Text := '';
  Self.Jenis := 'tambah';
end;

procedure TFrmSJ2.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('sales_order');
  cxlNoBukti.Text := '';
end;

procedure TFrmSJ2.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;

procedure TFrmSJ2.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if cxLUCust.Text = '' then begin
    MsgBox('Nama Customer harus diisi.');
    cxLUCust.SetFocus;
  end
  else if cxdTglKirim.Text = '' then begin
    MsgBox('Tanggal kirim harus diisi.');
    cxdTglKirim.SetFocus;
  end
  else if cxCmbPembayaran.Text = '' then begin
    MsgBox('Jenis pembayaran harus diisi.');
    cxCmbPembayaran.SetFocus;
  end
  else if cxCmbKategoriSO.Text = '' then begin
    MsgBox('Kategori SO harus diisi.');
    cxCmbKategoriSO.SetFocus;
  end
  else begin

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else
        sNoTrs := GetLastFak('sales_order');

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_so_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_so_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_so_head');
      in_det := OpenTbl('tbl_so_det');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('kode_customer').AsString := zqrCust.FieldByName('kode').AsString;
      in_head.FieldByName('kategori_so').AsString := cxCmbKategoriSO.Text;
      in_head.FieldByName('po#').AsString := cxtPO.Text;
      in_head.FieldByName('tgl_required').AsDateTime := cxdTglKirim.Date;
      in_head.FieldByName('payment').AsString := cxCmbPembayaran.Text;
      in_head.FieldByName('notes').AsString := cxtKeterangan.Text; 

      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('user').AsString := Aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      if self.Jenis = 'edit' then
        in_head.FieldByName('f_revisi').AsInteger := 1
      else
        in_head.FieldByName('f_revisi').AsInteger := 0;

      if chkComplete.Checked then
        in_head.FieldByName('f_completed').AsInteger := 1
      else
        in_head.FieldByName('f_completed').AsInteger := 0;

      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[1,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('notes').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;
      if Self.Jenis <> 'edit' then
        UpdateFaktur(Copy(sNoTrs,1,7));

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi Sales Order sudah disimpan dengan nomer: ' + sNoTrs);

      SendEmailSO;

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

procedure TFrmSJ2.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
begin
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
      self.NxEdit1DblClick(nil);
    end;
  end;
end;

procedure TFrmSJ2.btnHapusClick(Sender: TObject);
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

procedure TFrmSJ2.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg.Text = '' then Abort;

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
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := 1;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  end;
end;

procedure TFrmSJ2.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  {
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
  }  
end;

procedure TFrmSJ2.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;
  cxLUCust.Text := zqrNoBukti.FieldByName('nama').AsString;

  q := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);
  cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
  cxtKeterangan.Text := q.FieldByName('notes').AsString;
  cxCmbPembayaran.Text := q.FieldByName('payment').AsString;
  cxtPO.Text := q.FieldByName('po#').AsString;
  q.Close;

  try
    cxtSubject.Text := 'SO Revisi (' + cxtNoTrans.Text +
      ' - ' + cxLUCust.Text + ')';
  except
  end;

  q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNM_BRG,i].AsString := qBrg.fieldByName('deskripsi').AsString;
    qBrg.Close;
    nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[CKET,i].AsString := q.FieldByName('notes').AsString;
    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
end;

procedure TFrmSJ2.cxCmbKategoriSOPropertiesChange(Sender: TObject);
var
  sKat: string;
  i: Integer;
  tx: TcxCheckListBoxItem;
begin
  sKat := cxCmbKategoriSO.Text;
  i := cxCmbKategoriSO.ItemIndex;
  ResetCheckEmail;
  if i = 1 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'nina@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
  end
  else if i = 2 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'nina@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 3 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'nina@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 4 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'bayu@sdp.mail';
    //tx.Text := 'maria@sdp.mail';
  end
  else if i = 5 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
  end
  else if i = 6 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 7 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
  end
  else if i = 8 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 9 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 10 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'alex@sdp.mail';
    //tx := cxChkLstEmail.Items.Add;
    //tx.Text := 'bayu@sdp.mail';
  end
  else if i = 11 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'alex@sdp.mail';
  end
  else if i = 12 then begin
    cxChkLstEmail.Items.Clear;
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'boby@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'vivi@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'enny@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'inge@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'hari@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'marion@sdp.mail';
  end;

end;

procedure TFrmSJ2.ResetCheckEmail;
var
  lst: TStringList;
  tx: TcxCheckListBoxItem;
  i: Integer;
begin
  cxChkLstEmail.Items.Clear;
  lst := TStringList.Create;
  lst.Add('boby@sdp.mail');
  lst.Add('vivi@sdp.mail');
  lst.Add('felgitotema@sdp.mail');
  lst.Add('ferry@sdp.mail');
  lst.Add('hari@sdp.mail');
  lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;
end;

procedure TFrmSJ2.SendEmailSO;
var
  em: ThreadKirimEmail;
  lst0, lstFile, lst: TStringList;
  i : Integer;
  sTmp: string;
  f: TfrmWait;
  sNamaFile : string;
begin
  if cxChkLstEmail.Items.Count = 0 then
    ShowMessage('Email penerima masih kosong.')
  else begin
    try
    em := ThreadKirimEmail.CreateIt(True);
    em.EmailFrom := aplikasi.EmailUser;
    em.SMTPServer := aplikasi.ServerSMTP;

    lst0 := TStringList.Create;
    for i := 0 to cxChkLstEmail.Items.Count - 1 do begin
      lst0.Add(cxChkLstEmail.Items[i].Text);
    end;

    //em.EmailSend := lst0.CommaText + ',' + cxcPengirim.Text;
    em.EmailSend := 'yosef@sdp.mail';

    em.Subject := cxtSubject.Text;
    lstFile := TStringList.Create;
    sNamaFile := GenerateHTML;
    lstFile.Add(sNamaFile);
    em.LstAttachment := lstFile;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    cxmIsiEmail.Text := StringReplace(cxmIsiEmail.Text, #13, '<br/>', [rfReplaceAll]);
    lst.Add('<font color="#FF0000" size="15">' + cxmIsiEmail.Text + '</font>');
    lst.Add('</br>');
    lst.Add('<font color="#666666"><b><i>Ada SO baru (1 (SDP 1)) ditambahkan dalam database. Mohon agar di cek dan ditindaklanjuti. Terima kasih.</br>');
    lst.Add('"SAVE PAPER - THINK BEFORE YOU PRINT!"</i></b></font>');

    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');
    em.BodyList := lst;
    em.Resume;

    //ShowMessage('Email sudah dikirim.');
    //Application.Terminate;
    f := TfrmWait.Create(Self);
    f.ShowModal;

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_email = 1 ' +
        'WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      dm.zConn.Commit;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

    except
      on E: Exception do begin
        ShowMessage('Error: ' + E.Message);
      end;
    end;
  end;

end;

function TFrmSJ2.GenerateHTML : string;
var
  lst: TStringList;
  sMemo: string;
  i: Integer;
  ibQ, qCust: TZQuery;
begin
  mm.Lines.Clear;
  mm.Lines.Text := cxmTemplate.Text;

  ibQ := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  mm.Text := StringReplace(mm.Text,'%tgl_order%',
    FormatDateTime('dd-mm-yyy', ibQ.FieldByName('tanggal').AsDateTime),[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%no_so%',
    ibQ.FieldByName('no_bukti').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%perusahaan%',
    cxLUCust.Text,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%alamat%',
    zqrCust.FieldByName('alamat').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%kota%',
    zqrCust.FieldByName('kota').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%negara%',
    zqrCust.FieldByName('negara').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%telpon%',
    zqrCust.FieldByName('telpon').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%memo%',
    cxtKeterangan.Text,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%user%',
    Aplikasi.NamaUser,[rfReplaceAll]);

  lst := TStringList.Create;
  lst.Add('<table border="1">');
  lst.Add('<tr>');
  lst.Add('<td><b>Deskripsi Barang</b></td>');
  lst.Add('<td><b>Jumlah</b></td>');
  lst.Add('<td><b>Satuan</b></td>');
  lst.Add('<td><b>Keterangan</b></td>');
  lst.Add('</tr>');

  for i := 0 to nxGrd.RowCount-1 do begin
    if nxGrd.Cell[CKD_BRG,i].AsString = '' then Continue;
    lst.Add('<tr>');
    lst.Add('<td>' + nxGrd.Cell[CNM_BRG,i].AsString + '</td>');
    lst.Add('<td><center>' + nxGrd.Cell[CQTY,i].AsString + '</center></td>');
    lst.Add('<td>' + nxGrd.Cell[CSAT,i].AsString + '</td>');
    lst.Add('<td>' + nxGrd.Cell[CKET,i].AsString + '</td>');
    lst.Add('</tr>');
  end;
  lst.Add('</table>');

  mm.Text := StringReplace(mm.Text,'%content%',
    lst.Text,[rfReplaceAll]);

  mm.Lines.SaveToFile(Aplikasi.AppPath +
    StringReplace(cxtNoTrans.Text,'/','-',[rfReplaceAll]) +
    '.html');

  Result := Aplikasi.AppPath + cxtNoTrans.text + '.html';

end;

procedure TFrmSJ2.cxLUCustPropertiesChange(Sender: TObject);
begin
  try
    if Self.Jenis = 'tambah' then begin
      cxtSubject.Text := 'SO Baru (' + cxtNoTrans.Text +
      ' - ' + cxLUCust.Text + ')';
    end;
  except
  end;
end;

end.
