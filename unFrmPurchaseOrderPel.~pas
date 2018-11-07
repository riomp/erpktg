unit unFrmPurchaseOrderPel;

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
  cxMemo, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTP, unFrmWait, IdSMTPBase,
  IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdText, IdAttachmentFile, cxRadioGroup, ComCtrls, frxClass;

type
  TfrmPurchaseOrderPel = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    NxEdit1: TNxEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    btnTambah: TButton;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    cxLabel8: TcxLabel;
    cxLUSupp: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxdTglKirim: TcxDateEdit;
    cxLabel13: TcxLabel;
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
    NxButtonEdit1: TNxButtonEdit;
    cxLabel7: TcxLabel;
    cxsQty: TcxSpinEdit;
    btnCariSupp: TButton;
    pnlMemo: TPanel;
    btnSimpanKet: TButton;
    btnBatalMemo: TButton;
    cxMemo: TcxMemo;
    idSMTP: TIdSMTP;
    GroupBox1: TGroupBox;
    cxrNonPajak: TcxRadioButton;
    cxrStandard: TcxRadioButton;
    cxrImport: TcxRadioButton;
    cxLabel9: TcxLabel;
    cxCmbPembayaran: TcxComboBox;
    cxrPeletan: TcxRadioButton;
    cxLabel4: TcxLabel;
    btnCariBrg: TButton;
    cxLabel11: TcxLabel;
    cxCmbMataUang: TcxComboBox;
    cxlNoFOBJ: TcxLookupComboBox;
    zqrNoFOBJ: TZReadOnlyQuery;
    dsNoFOBJ: TDataSource;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    nxGrd: TNextGrid;
    nxColHapus: TNxImageColumn;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    nxColHarga: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    nxColSubtotal: TNxNumberColumn;
    nxColKeterangan: TNxTextColumn;
    NxEdit2: TNxEdit;
    Label5: TLabel;
    cxsTotal: TcxSpinEdit;
    Label1: TLabel;
    cxsPPN: TcxSpinEdit;
    Label3: TLabel;
    cxsTotPPN: TcxSpinEdit;
    Label2: TLabel;
    cxsGrandTotal: TcxSpinEdit;
    cxChk2Angka: TcxCheckBox;
    cxChk3Angka: TcxCheckBox;
    cxLabel12: TcxLabel;
    cxtNoPOPajak: TcxTextEdit;
    nxColMataUang: TNxComboBoxColumn;
    cxLabel14: TcxLabel;
    cxlAlamatKirim: TcxLookupComboBox;
    zqrAlmKirim: TZReadOnlyQuery;
    dsAlmKirim: TDataSource;
    btnCariAlamatKirim: TButton;
    btnCetak: TButton;
    cxtNoFOBJ: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxCmbDivisi: TcxComboBox;
    nxColNoPen: TNxTextColumn;
    NxEdit4: TNxEdit;
    cxLabel16: TcxLabel;
    cxCmbJenis: TcxComboBox;
    btnCetakPOInternal: TButton;
    btnCetakSPBB: TButton;
    cxLabel17: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    btnPosting: TButton;
    nxColLokasi: TNxTextColumn;
    nxColKondisi: TNxTextColumn;
    cxLabel18: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxtDriver: TcxTextEdit;
    cxChkTampilSPMBAll: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxCmbKategoriSOPropertiesChange(Sender: TObject);
    procedure NxButtonEdit1ButtonClick(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxsQtyKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariSuppClick(Sender: TObject);
    procedure pnlMemoExit(Sender: TObject);
    procedure NxTextColumn4ButtonClick(Sender: TObject);
    procedure btnSimpanKetClick(Sender: TObject);
    procedure btnBatalMemoClick(Sender: TObject);
    procedure cxMemoExit(Sender: TObject);
    procedure idSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure cxChk2AngkaClick(Sender: TObject);
    procedure cxsPPNPropertiesEditValueChanged(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxlNoFOBJPropertiesEditValueChanged(Sender: TObject);
    procedure cxrStandardClick(Sender: TObject);
    procedure btnCariAlamatKirimClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnCetakPOInternalClick(Sender: TObject);
    procedure cxLUSuppPropertiesEditValueChanged(Sender: TObject);
    procedure btnPostingClick(Sender: TObject);
    procedure btnCetakSPBBClick(Sender: TObject);
    procedure cxChkTampilSPMBAllClick(Sender: TObject);
  private
    mUserDept: string;
    mLstDaftarEmail: TStringList;
    fw: TFrmWait;
    f_app_po: Boolean;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure ResetCheckEmail;
    procedure SendEmailSO(sNoBukti: string; sCustomer: string);
    function GenerateHTML(sNoBukti: string) : string;
    procedure GetDaftarEmail;
    procedure HitungSubTotal;
  public
    property UserDept: string read mUserDept write mUserDept;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPurchaseOrderPel: TfrmPurchaseOrderPel;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unThreadKirimEmail,
  unFrmLapUmum;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CQTY : integer = 4;
  CSAT : Integer = 5;
  CSTOK_G02 : Integer = 6;
  CKET : Integer = 7;
  CKET2 : Integer = 8;

{$R *.dfm}

procedure TFrmPurchaseOrderPel.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmPurchaseOrderPel.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: Integer;
  tx: TcxCheckListBoxItem;
  bEditSO: boolean;
begin
  inherited;
  unTools.OpenAllQ(Self);

  cxdTglTrs.Date := Aplikasi.TanggalServer;

  //cxdTglTrs.Properties.ReadOnly := Not aplikasi.UbahTglTrs;

  cxtNoTrans.Text := GetLastFak('po_peletan');

  {
  bEditSO := False;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''%s'' ' +
    'AND nama = ''%s''',
    ['EditSalesOrder', aplikasi.NamaUser]);
  if not q.IsEmpty then
    if q.FieldByName('wwn').AsInteger = 1 then
      bEditSO := True;

  cxlNoBukti.Visible := bEditSO;
  btnEdit2.Visible := bEditSO;
  q.Close;
  }

  cxCmbPembayaran.Properties.Items.Add('');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Bulan');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Bulan');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Minggu');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Minggu');
  cxCmbPembayaran.Properties.Items.Add('3 (Tiga) Minggu');
  cxCmbPembayaran.Properties.Items.Add('45 Hari');
  cxCmbPembayaran.Properties.Items.Add('Kontan');
  cxCmbPembayaran.ItemIndex := 0;

  lst := TStringList.Create;
  lst.Add('boby@sdp.mail');
  lst.Add('vivi@sdp.mail');
  lst.Add('felgitotema@sdp.mail');
  //lst.Add('ferry@sdp.mail');
  lst.Add('sunanto@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');
  lst.Add('alex@sdp.mail');
  lst.Add('inge@sdp.mail');
  lst.Add('winsen@sdp.mail');

  mLstDaftarEmail := TStringList.Create;
  mLstDaftarEmail.CommaText := lst.CommaText;

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;

  Self.Jenis := 'tambah';


  pnlMemo.Left := 450;
  pnlMemo.Top := 175;

  cxChk2Angka.Checked := True;
  cxrNonPajak.Checked := True;

  cxCmbMataUang.Properties.Items.Add('USD');
  cxCmbMataUang.Properties.Items.Add('IDR');
  cxCmbMataUang.ItemIndex := 1;

  q := OpenRS('SELECT * FROM tbl_mata_uang ORDER BY mata_uang');
  while not q.Eof do begin
    nxColMataUang.Items.Add(q.FieldByName('mata_uang').AsString);
    q.Next;
  end;
  q.Close;

  cxtNoFOBJ.Left := cxlNoFOBJ.Left;
  cxtNoFOBJ.Width := cxlNoFOBJ.Width;
  cxtNoFOBJ.Visible := False;

  cxCmbDivisi.Properties.Items.Add('SDP 1');
  cxCmbDivisi.Properties.Items.Add('SDP 2');

  cxCmbJenis.Properties.Items.Add('BB');
  cxCmbJenis.Properties.Items.Add('BP');
  cxCmbJenis.Properties.Items.Add('LAIN-LAIN');

  pg.ActivePageIndex := 0;

  f_app_po := False;
end;

procedure TFrmPurchaseOrderPel.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmPurchaseOrderPel.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmPurchaseOrderPel.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  //if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = 1) then begin
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = CKD_BRG) then begin
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
        nxGrd.Cell[nxColNamaBrg.Index,ARow].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('satuan').AsString;
        nxGrd.Cell[nxColQty.Index,ARow].AsFloat := 1;
        nxGrd.SelectCell(nxColQty.Index,ARow);
        HitungTotal;
      end;
    end;
  end;
end;

procedure TFrmPurchaseOrderPel.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = nxColKodeBrg.Index then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = nxColQty.Index then begin

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString) = '' then begin
      nxGrd.Cell[nxColQty.Index,ARow].AsInteger := 0;
      nxGrd.SelectCell(nxColKodeBrg.Index,ARow);
    end
    else begin
      HitungSubTotal;
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(CSAT,ARow)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = nxColHarga.Index then begin
    if nxGrd.Cell[nxColQty.Index,Arow].AsFloat = 0 then Abort;
    if nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString = '' then Abort;

    HitungSubTotal;
    HitungTotal;

  end;
end;

procedure TFrmPurchaseOrderPel.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
  end;
  cxsTotal.Value := tmpQty;
  cxsTotPPN.Value := (cxsPPN.Value / 100 * cxsTotal.Value);
  cxsGrandTotal.Value := cxsTotal.Value + cxsTotPPN.Value;

  tmp := 0;
  tmpQty := 0;
end;

procedure TFrmPurchaseOrderPel.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotal.Value := 0;
  cxsTotPPN.Value := 0;
  cxsGrandTotal.Value := 0;
  cxsPPN.Value := 0;
  cxtNoTrans.Text := GetLastFak('sales_order');
  cxLUSupp.Text := '';
  cxdTglKirim.Text := '';
  cxtKeterangan.Text := '';
  cxCmbPembayaran.ItemIndex := 0;
  cxLUBrg.Text := '';
  cxtSubject.Text := '';
  cxmIsiEmail.Text := '';
  Self.Jenis := 'tambah';
  chkSdhKirimEmail.Checked := False;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxlAlamatKirim.Text := '';
  cxtNoFOBJ.Visible := False;

  cxLUBrg.Enabled := True;
  btnCariBrg.Enabled := True;
  cxsQty.Enabled := False;
  btnTambah.Enabled := True;

  cxtNopol.Text := '';
  cxtDriver.Text := '';

  zqrNoBukti.Close;
  zqrNoBukti.Open;
  zqrNoFOBJ.Close;
  zqrNoFOBJ.Open;
  zqrNoFOBJ.Close;
  zqrNoFOBJ.Open;
  
end;

procedure TFrmPurchaseOrderPel.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('po_peletan');
  cxlNoBukti.Text := '';
  cxCmbDivisi.Text := '';
  cxCmbJenis.Text := '';
  Self.Jenis := 'tambah';
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  f_app_po := False;
end;

procedure TFrmPurchaseOrderPel.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, in_det_e, barang,
  barang_det, hist, tbl_mo, tbl_tmp: TZTable;
  sNoTrs, sNoMO, sJenisPO, sNoPOPajak: string;
  i: integer;
  b: Boolean;
  q, qCekMO, qmu: TZQuery;
begin

  if cxsTotal.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if cxLUSupp.Text = '' then begin
    MsgBox('Nama Supplier harus diisi.');
    cxLUSupp.SetFocus;
  end
  else if cxdTglKirim.Text = '' then begin
    MsgBox('Tanggal kirim harus diisi.');
    cxdTglKirim.SetFocus;
  end
  else if cxCmbPembayaran.Text = '' then begin
    MsgBox('Jenis pembayaran harus diisi.');
    cxCmbPembayaran.SetFocus;
  end
  //else if cxCmbMataUang.Text = '' then begin
  //  MsgBox('Pilih mata uang.');
  //  cxCmbMataUang.SetFocus;
  //end
  else if cxlAlamatKirim.Text = '' then begin
    MsgBox('Pilih alamat kirim.');
    cxlAlamatKirim.SetFocus;
  end
  else begin

    // cek mata uang
    {
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '') and
        (Trim(nxGrd.Cell[nxColMataUang.Index,i].AsString) = '') then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom mata uang yang kosong.');
      Abort;
    end;
    }

    // cek harga
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '') and
        (nxGrd.Cell[nxColHarga.Index,i].AsFloat = 0) then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom harga yang kosong.');
      Abort;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);
    if not q.IsEmpty then begin
      if q.FieldByName('f_completed').AsInteger = 1 then begin
        MsgBox('PO ini sudah komplit / selesai. Tidak bisa di edit.');
        q.Close;
        Abort;
      end;
    end;
    q.Close;

    try
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans.Text;
      end
      else begin
        sNoTrs := GetLastFak('po_peletan');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_po_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det_e WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_po_head');
      in_det := OpenTbl('tbl_po_det');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;

      if self.Jenis = 'edit' then
        in_head.FieldByName('no_fobj').AsString := cxtNoFOBJ.Text
      else
        in_head.FieldByName('no_fobj').AsString := cxlNoFOBJ.Text;

      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      //in_head.FieldByName('kode_supp').AsString := zqrCust.FieldByName('kode').AsString;
      in_head.FieldByName('kode_supp').AsString := 'SDP';
      in_head.FieldByName('ex_customer').AsString := zqrCust.FieldByName('kode').AsString;
      in_head.FieldByName('tgl_required').AsDateTime := cxdTglKirim.Date;

      in_head.FieldByName('jenis_po').AsString := 'pl';
      in_head.FieldByName('keterangan').AsString := cxtKeterangan.Text;
      in_head.FieldByName('pembayaran').AsString := cxCmbPembayaran.Text;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('user').AsString := Aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('ppn').AsFloat := cxsPPN.Value;

      if self.Jenis = 'edit' then
        in_head.FieldByName('f_revisi').AsInteger := 1
      else
        in_head.FieldByName('f_revisi').AsInteger := 0;

      if Self.Jenis = 'edit' then begin
        in_head.FieldByName('user_edit').AsString := aplikasi.NamaUser;
        in_head.FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
        in_head.FieldByName('host').AsString := GetHostName2;
        if f_app_po then
          in_head.FieldByName('f_approval').AsInteger := 1;
      end;

      in_head.FieldByName('currency').AsString := cxCmbMataUang.Text;
      in_head.FieldByName('kode_alamat_kirim').AsInteger := cxlAlamatKirim.EditValue;
      in_head.FieldByName('divisi').AsString := cxCmbDivisi.Text;
      in_head.FieldByName('digit').AsInteger := 2;
      in_head.FieldByName('f_approval').AsInteger := 1;
      in_head.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
      in_head.FieldByName('driver').AsString := Trim(cxtDriver.Text);
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
        in_det.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
        in_det.FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[nxColKeterangan.Index,i].AsString);
        in_det.FieldByName('mata_uang').AsString := nxGrd.Cell[nxColMataUang.Index,i].AsString;
        in_det.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKeterangan.Index,i].AsString;
        in_det.FieldByName('lokasi').AsString := UpperCase(nxGrd.Cell[nxColLokasi.Index, i].AsString);
        in_det.FieldByName('kondisi').AsString := UpperCase(nxGrd.Cell[nxColKondisi.Index, i].AsString);
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;
      Self.Jenis := '';
      MsgBox('Transaksi Purchase Order Peletan sudah disimpan dengan nomer: ' + sNoTrs);
      btnBatalClick(nil);

      //SendEmailPO(sNoTrs);

      mLstDaftarEmail.Clear;

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

procedure TFrmPurchaseOrderPel.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
var
  q: TZQuery;
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = nxColHapus.Index then begin
      if Trim(nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString) <> '' then begin

        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungSubTotal;
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();

        HitungSubTotal;
        HitungTotal;

      end;
    end
  end;

end;

procedure TFrmPurchaseOrderPel.btnHapusClick(Sender: TObject);
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

procedure TFrmPurchaseOrderPel.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin

  if cxLUBrg.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  //if not CekKodeBrg(sKodeBrg, ARow) then begin
  //  i := QBox(Self, 'Barang dengan kode : ' + sKodeBrg + ' sudah ada.' + Chr(10) + Chr(13) +
  //    'Tetap tambahkan barang ini ? ' + Chr(10) + Chr(13) +
  //    'Pastikan untuk memberikan keterangan dengan benar.', 'Warning');
  //  if i = IDNO then Abort;
  //end;
  
  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end
  else begin
    cxLUBrg.Text := '';

    nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' + sKodeBrg + '''');

    nxGrd.Cell[nxColNamaBrg.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQty.Index,ARow].AsFloat := cxsQty.Value;
    nxGrd.Cell[nxColKeterangan.Index,ARow].Color := clSkyBlue;
    nxGrd.Cell[nxColMataUang.Index,ARow].AsString := 'IDR';

    q.Close;
    q := OpenRS('SELECT * FROM tbl_barang_supp WHERE kode_supp = ''%s'' ' +
      'AND kode_brg = %s',
      [cxLUSupp.EditValue, nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
    if not q.IsEmpty then begin
      nxGrd.Cell[nxColHarga.Index,ARow].AsFloat := q.FieldByName('harga').AsFloat;
    end;
    q.Close;

    HitungSubTotal;
    HitungTotal;
    
    nxGrd.SelectCell(nxColKodeBrg.Index, nxGrd.LastAddedRow);
    nxGrd.SelectLastRow();

    q.Close;

    nxGrd.AddRow();
  end;
  
end;

procedure TFrmPurchaseOrderPel.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  {
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
  }  
end;

procedure TFrmPurchaseOrderPel.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;

  q := OpenRS('SELECT * FROM v_po_head WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

  //cxtNoFOBJ.Visible := True;
  //cxtNoFOBJ.Text := q.FieldByName('no_fobj').AsString;

  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;
  cxLUSupp.EditValue := q.FieldByName('ex_customer').AsString;
  cxlAlamatKirim.EditValue := q.FieldByName('kode_alamat_kirim').AsString;
  cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
  cxtKeterangan.Text := q.FieldByName('keterangan').AsString;
  cxCmbPembayaran.Text := q.FieldByName('pembayaran').AsString;
  cxCmbDivisi.Text := q.FieldByName('divisi').AsString;
  
  if q.FieldByName('jenis_po').AsString = 'np' then
    cxrNonPajak.Checked := True
  else if q.FieldByName('jenis_po').AsString = 'st' then
    cxrStandard.Checked := True
  else if q.FieldByName('jenis_po').AsString = 'im' then
    cxrImport.Checked := True;

  if q.FieldByName('digit').AsInteger = 2 then
    cxChk2Angka.Checked := True
  else if q.FieldByName('digit').AsInteger = 3 then
    cxChk3Angka.Checked := True;

  cxCmbJenis.Text := q.FieldByName('jenis_po3').AsString;

  cxsPPN.Value := q.FieldByName('ppn').AsFloat;

  if q.FieldByName('f_approval').AsInteger = 1 then
    f_app_po := True
  else
    f_app_po := False;

  // jika nomer po pajak tidak kosong
  //if not q.FieldByName('no_po_pajak').IsNull then begin
  try
  cxtNoPOPajak.Text := q.FieldByName('no_po_pajak').AsString;
  except
  end;

  cxtNopol.Text := q.FieldByName('nopol').AsString;
  cxtDriver.Text := q.FieldByName('driver').AsString;

  q.Close;
  
  q := OpenRS('SELECT * FROM v_po_det WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;

  nxGrd.ClearRows();

  while not q.Eof do begin
    nxGrd.AddRow();
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQty.Index,i].AsString := q.FieldByName('qty').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
    nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
    nxGrd.Cell[nxColSubtotal.Index,i].AsFloat :=
      q.FieldByName('qty').AsFloat * q.FieldByName('harga').AsFloat;
    nxGrd.Cell[nxColKeterangan.Index,i].AsString :=
      q.FieldByName('keterangan').AsString;
    nxGrd.Cell[nxColKondisi.Index, i].AsString := q.FieldByName('kondisi').AsString;
    nxGrd.Cell[nxColLokasi.Index, i].AsString := q.FieldByName('lokasi').AsString;
    Inc(i);
    q.Next;
  end;
  q.Close;

  if cxtNoFOBJ.Text = '' then begin
    nxGrd.AddRow();
  end;

  HitungTotal;
end;

procedure TFrmPurchaseOrderPel.cxCmbKategoriSOPropertiesChange(Sender: TObject);
var
  sKat: string;
  i: Integer;
  tx: TcxCheckListBoxItem;
  cmb : TcxComboBox;
begin
  {
  sKat := cxCmbKategoriSO.Text;
  cmb := (Sender as TcxComboBox);

  if cmb.Name = 'cxCmbKategoriSO' then begin
    ResetCheckEmail;
    if cxCmbKategoriSO.ItemIndex = 0 then begin
      cxCmbKategoriSO2.ItemIndex := 0;
      cxCmbKategoriSO3.ItemIndex := 0;
    end;
  end
  else if cmb.Name = 'cxCmbKategoriSO2' then begin
    if cxCmbKategoriSO.Text = '' then begin
      cxCmbKategoriSO2.Text := '';
      cxCmbKategoriSO.SetFocus;
      Abort;
    end;
    if cxCmbKategoriSO.ItemIndex = cxCmbKategoriSO2.ItemIndex then begin
      cxCmbKategoriSO2.ItemIndex := 0;
      Abort;
    end;
  end
  else if cmb.Name = 'cxCmbKategoriSO3' then begin
    if cxCmbKategoriSO.Text = '' then begin
      cxCmbKategoriSO3.Text := '';
      cxCmbKategoriSO.SetFocus;
      Abort;
    end;
    if cxCmbKategoriSO2.Text = '' then begin
      cxCmbKategoriSO3.Text := '';
      cxCmbKategoriSO2.SetFocus;
      Abort;
    end;
    if cxCmbKategoriSO.ItemIndex = cxCmbKategoriSO3.ItemIndex then begin
      cxCmbKategoriSO3.ItemIndex := 0;
      Abort;
    end;
    if cxCmbKategoriSO2.ItemIndex = cxCmbKategoriSO3.ItemIndex then begin
      cxCmbKategoriSO3.ItemIndex := 0;
      Abort;
    end;
  end;
  i := (Sender as TcxComboBox).ItemIndex;

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
    tx.Text := 'sunanto@sdp.mail';
    //tx := cxChkLstEmail.Items.Add;
    //tx.Text := 'marion@sdp.mail';
  end;
  }
end;

procedure TFrmPurchaseOrderPel.ResetCheckEmail;
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
  //lst.Add('ferry@sdp.mail');
  lst.Add('sunanto@sdp.mail');
  //lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;
end;

procedure TFrmPurchaseOrderPel.SendEmailSO(sNoBukti: string; sCustomer: string);
var
  em: ThreadKirimEmail;
  lst0, lstFile, lst: TStringList;
  i : Integer;
  sTmp: string;
  f: TfrmWait;
  sNamaFile : string;
  email : TIdMessage;
  bdy: TIdText;
  q: TZQuery;
begin
  if cxChkLstEmail.Items.Count = 0 then
    ShowMessage('Email penerima masih kosong.')
  else begin
    try

    idSMTP.AuthType := satNone;
    idSMTP.Host := Aplikasi.ServerSMTP;
    idSMTP.Port     := 25;
    idSMTP.UserName := aplikasi.EmailUser;
    idSMTP.Password := '';

    //GetDaftarEmail;

    email := TIdMessage.Create(nil);
    try
      email.ContentType := 'multipart/mixed';
      email.From.Address := aplikasi.EmailUser;
      email.From.Name := aplikasi.NamaUser;

      if aplikasi.debug then
        email.Recipients.EMailAddresses := 'yosef@sdp.mail'
      else
        email.Recipients.EMailAddresses := mLstDaftarEmail.CommaText + ',' + aplikasi.EmailUser;

      //email.Subject := cxtSubject.Text;
      q := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',
        [sNoBukti]);
      //if jenis = 'tambah' then
        email.Subject := 'SO Baru (' + sNoBukti + ' - EX: ' + sCustomer + ')';
      //else if jenis = 'edit' then
      //  email.Subject := 'SO Revisi (' + sNoBukti + ' - ' + q.FieldByName('nama').AsString + ')';
      q.Close;

      //if Aplikasi.debug then
      //  em.EmailSend := 'yosef@sdp.mail'
      //else
      //  em.EmailSend := mLstDaftarEmail.CommaText + ',' + aplikasi.EmailUser;

      //em.Subject := cxtSubject.Text;
      //lstFile := TStringList.Create;
      //sNamaFile := GenerateHTML(sNoBukti);
      //lstFile.Add(sNamaFile);
      //em.LstAttachment := lstFile;

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

      bdy := TIdText.Create(email.MessageParts, lst);
      bdy.ContentType := 'text/html';

      lstFile := TStringList.Create;
      sNamaFile := GenerateHTML(sNoBukti);
      lstFile.Add(sNamaFile);
      if lstFile.Count > 0 then begin
        for i := 0 to lstFile.Count - 1 do begin
          TIdAttachmentFile.Create(email.MessageParts, lstFile.Strings[i]);
        end;
      end;

      idSMTP.Connect;
      try
        idSMTP.Send(email);
      finally
        idSMTP.Disconnect;
      end;
    finally
      email.Free;
    end;
    DeleteFile(sNamaFile);

    //em.BodyList := lst;
    //em.Resume;

    //Caption := Caption + ' - Kirim email : ';
    //repeat
    //  Caption := Caption + '=';
    //until em.IsFinish;

    //ShowMessage('Email sudah dikirim.');
    //Application.Terminate;
    //f := TfrmWait.Create(Self);
    //f.ShowModal;
    //Caption := 'Sales Order';

    except
      on E: Exception do begin
        ShowMessage('Error: ' + E.Message);
      end;
    end;
  end;

end;

function TFrmPurchaseOrderPel.GenerateHTML(sNoBukti: string) : string;
var
  lst: TStringList;
  sMemo: string;
  i: Integer;
  ibQ, qCust, qDet: TZQuery;
begin
  mm.Lines.Clear;
  mm.Lines.Text := cxmTemplate.Text;

  ibQ := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
    [sNoBukti]);

  mm.Text := StringReplace(mm.Text,'%tgl_order%',
    FormatDateTime('dd-mm-yyy', ibQ.FieldByName('tanggal').AsDateTime),[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%tglkirim%',
    FormatDateTime('dd-mm-yyy', ibQ.FieldByName('tgl_required').AsDateTime),[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%no_so%',
    ibQ.FieldByName('no_bukti').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text, '%po%',
    ibQ.FieldByName('po#').AsString,[rfReplaceAll]);
  mm.Text := StringReplace(mm.Text, '%sc%',
    ibQ.FieldByName('sc#').AsString,[rfReplaceAll]);

  qCust := OpenRS('SELECT * FROM tbl_customer WHERE kode = ''%s''',
    [ibQ.FieldByName('kode_customer').AsString]);
  mm.Text := StringReplace(mm.Text,'%perusahaan%',
    qCust.FieldByName('nama').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%alamat%',
    qCust.FieldByName('alamat').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%kota%',
    qCust.FieldByName('kota').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%negara%',
    qCust.FieldByName('negara').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%telpon%',
    qCust.FieldByName('telpon').AsString,[rfReplaceAll]);
  qCust.Close;

  mm.Text := StringReplace(mm.Text,'%memo%',
    ibQ.FieldbyName('notes').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%user%',
    Aplikasi.NamaUser,[rfReplaceAll]);

  qDet := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s''', [sNoBukti]);

  lst := TStringList.Create;
  lst.Add('<table border="1">');
  lst.Add('<tr>');
  lst.Add('<td><b>Deskripsi Barang</b></td>');
  lst.Add('<td><b>Jumlah</b></td>');
  lst.Add('<td><b>Satuan</b></td>');
  //lst.Add('<td><b>Keterangan</b></td>');
  lst.Add('</tr>');

  while not qDet.Eof do begin
    lst.Add('<tr>');
    lst.Add('<td bgcolor="#66FFFF">' + qDet.FieldByName('deskripsi').AsString + '</td>');
    lst.Add('<td bgcolor="#FFCCFF"><center>' + qDet.FieldByName('qty').AsString + '</center></td>');
    lst.Add('<td bgcolor="#66FFFF">' + qDet.FieldByName('satuan').AsString + '</td>');
    lst.Add('</tr>');
    lst.Add('<tr>');
    lst.Add('<td colspan="3" bgcolor="#FFFF99">KETERANGAN : </br>' +
      StringReplace(qDet.FieldByName('notes').AsString, #13,'</br>', [rfReplaceAll]) +
      '</td>');
    lst.Add('</tr>');
    //lst.Add('<td>' + qDet.FieldByName('notes').AsString + '</td>');
    //lst.Add('</tr>');
    qDet.Next;
  end;
  lst.Add('</table>');
  qDet.Close;

  mm.Text := StringReplace(mm.Text,'%content%',
    lst.Text,[rfReplaceAll]);

  mm.Lines.SaveToFile(Aplikasi.AppPath +
    StringReplace(sNoBukti,'/','-',[rfReplaceAll]) +
    '.html');

  Result := Aplikasi.AppPath +
    StringReplace(sNoBukti,'/','-',[rfReplaceAll]) + '.html';

end;

procedure TFrmPurchaseOrderPel.NxButtonEdit1ButtonClick(Sender: TObject);
var
  i: integer;
begin
  i := nxGrd.SelectedRow;
  nxGrd.Cell[CSTOK_G02,i].AsFloat :=
    GetStokGudang(nxGrd.Cell[CKD_BRG,i].AsString, 'G01');
  nxGrd.SelectCell(CKET,i);
  //MsgBox(FloatToStr(GetStokGudang(nxGrd.Cell[CKD_BRG,i].AsString, 'G01')));
end;

procedure TFrmPurchaseOrderPel.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
    //btnTambahClick(nil);
    cxsQty.SetFocus;
  end;
end;

procedure TFrmPurchaseOrderPel.cxsQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    btnTambahClick(nil);
    cxsQty.EditValue := 0;
    cxLUBrg.SetFocus;
  end;
end;

procedure TFrmPurchaseOrderPel.GetDaftarEmail;
var
  lst: TStringList;
  cmb : TcxComboBox;
  i,j: Integer;
begin
  {
  with mLstDaftarEmail do begin
    Add('boby@sdp.mail');
    Add('vivi@sdp.mail');
    Add('felgitotema@sdp.mail');
    Add('ferry@sdp.mail');
    Add('sunanto@sdp.mail');
    Add('fredi@sdp.mail');
    Add('enny@sdp.mail');


    lst := TStringList.Create;
    lst.Add('cxCmbKategoriSO');
    lst.Add('cxCmbKategoriSO2');
    lst.Add('cxCmbKategoriSO3');

    for j := 0 to lst.Count - 1 do begin
      cmb := (FindComponent(lst.Strings[j]) as TcxComboBox);
      i := cmb.ItemIndex;

      if i = 1 then begin
        Add('nina@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 2 then begin
        Add('nina@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 3 then begin
        Add('nina@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 4 then begin
        Add('etik@sdp.mail');
        Add('isjayatno@sdp.mail');
        Add('bayu@sdp.mail');
      end
      else if i = 5 then begin
        Add('etik@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 6 then begin
        Add('etik@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 7 then begin
        Add('etik@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 8 then begin
        Add('natalia@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 9 then begin
        Add('natalia@sdp.mail');
        //Add('faiz@sdp.mail');
        Add('bayu@sdp.mail');
      end
      else if i = 10 then begin
        Add('natalia@sdp.mail');
        Add('alex@sdp.mail');

      end
      else if i = 11 then begin
        Add('natalia@sdp.mail');
        Add('alex@sdp.mail');
      end
      else if i = 12 then begin
        Add('boby@sdp.mail');
        Add('vivi@sdp.mail');
        Add('natalia@sdp.mail');
        Add('enny@sdp.mail');
        Add('inge@sdp.mail');
        Add('sunanto@sdp.mail');
      end;

    end;
  end;
  }
end;

procedure TFrmPurchaseOrderPel.btnCariSuppClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'customer';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUSupp.EditValue := fKode.AsString;
  end;
  f.Release;
  cxLUSupp.SetFocus;
end;

procedure TFrmPurchaseOrderPel.pnlMemoExit(Sender: TObject);
begin
  pnlMemo.Visible := False;
end;

procedure TFrmPurchaseOrderPel.NxTextColumn4ButtonClick(Sender: TObject);
begin
  cxMemo.Lines.Text := nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString;
  pnlMemo.Visible := True;
  pnlMemo.SetFocus;
end;

procedure TFrmPurchaseOrderPel.btnSimpanKetClick(Sender: TObject);
begin
  if nxGrd.Cell[CKD_BRG,nxGrd.SelectedRow].AsString <> '' then
    nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString := cxMemo.Lines.Text;
  cxMemo.Lines.Text := '';
  pnlMemo.Visible := False;
end;

procedure TFrmPurchaseOrderPel.btnBatalMemoClick(Sender: TObject);
begin
  inherited;
  pnlMemo.Visible := False;
end;

procedure TFrmPurchaseOrderPel.cxMemoExit(Sender: TObject);
begin
  inherited;
  btnSimpanKetClick(nil);
end;

procedure TFrmPurchaseOrderPel.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  fw := TfrmWait.Create(self);
  fw.Show;
  Self.Enabled := False;
end;

procedure TFrmPurchaseOrderPel.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
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
  Self.Enabled := True;
  fw.Close;
  fw.Release;
  MsgBox('Email Sales Order berhasil dikirim.');
end;

procedure TFrmPurchaseOrderPel.cxChk2AngkaClick(Sender: TObject);
var
  chk: TcxCheckBox;
begin
  chk := (Sender as TcxCheckBox);

  if chk.Name = 'cxChk2Angka' then begin
    if chk.Checked then begin
      nxColQty.FormatMask := '#,##0.00';
      nxColHarga.FormatMask := '#,##0.00';
      nxColSubtotal.FormatMask := '#,##0.00';
      cxsTotal.Properties.DisplayFormat := '#,##0.00';
      cxsTotPPN.Properties.DisplayFormat := '#,##0.00';
      cxsGrandTotal.Properties.DisplayFormat := '#,##0.00';
      cxChk3Angka.Checked := False;
    end
    else
      cxChk3Angka.Checked := True;
  end
  else if chk.Name = 'cxChk3Angka' then begin
    if chk.Checked then begin
      nxColQty.FormatMask := '#,##0.000';
      nxColHarga.FormatMask := '#,##0.000';
      nxColSubtotal.FormatMask := '#,##0.000';
      cxsTotal.Properties.DisplayFormat := '#,##0.000';
      cxsTotPPN.Properties.DisplayFormat := '#,##0.000';
      cxsGrandTotal.Properties.DisplayFormat := '#,##0.000';
      cxChk2Angka.Checked := False;
    end
    else
      cxChk2Angka.Checked := True;
  end;

end;

procedure TFrmPurchaseOrderPel.HitungSubTotal;
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    nxGrd.Cell[nxColSubtotal.Index,i].AsFloat :=
      nxGrd.Cell[nxColQty.Index,i].AsFloat * nxGrd.Cell[nxColHarga.Index,i].AsFloat;
  end;
end;


procedure TFrmPurchaseOrderPel.cxsPPNPropertiesEditValueChanged(
  Sender: TObject);
var
  i: integer;
  subtotal, total: real;
begin
  try
    subtotal := 0;
    for i := 0 to nxGrd.RowCount - 1 do begin
      subtotal := subtotal + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
    end;
    if subtotal > 0 then begin
      total := (cxsPPN.Value / 100) * subtotal;
      cxsTotPPN.Value := total;
    end;
    cxsGrandTotal.Value := cxsTotPPN.Value + cxsTotal.Value;
  except
  end;
end;

procedure TFrmPurchaseOrderPel.btnCariBrgClick(Sender: TObject);
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
    cxsQty.SetFocus;
  end;
end;

procedure TFrmPurchaseOrderPel.cxlNoFOBJPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
  i: integer;
  no_penawaran: string;
begin
  // cek apakah fobj sudah diabuatkan penawaran
  q := OpenRS('SELECT * FROM v_penawaran_supp_det WHERE no_fobj = ''%s'' AND f_pilih = 1 AND kode_supp = ''%s''',
    [zqrNoFOBJ.FieldByName('no_fobj').AsString, zqrNoFOBJ.FieldByName('kode_supp').AsString]);
  if q.IsEmpty then begin
    MsgBox('No. FOBJ ini belum dibuatkan penawaran atau penawaran belum di seleksi.');
    q.Close;
    Abort;
  end
  else begin
    nxColHapus.Visible := False;

    cxLUBrg.Enabled := False;
    btnCariBrg.Enabled := False;
    cxsQty.Enabled := True;
    btnTambah.Enabled := False;

    no_penawaran := q.FieldByName('no_bukti').AsString;
    cxLUSupp.EditValue := q.FieldByName('kode_supp').AsString;
    cxLUSupp.Properties.ReadOnly := True;

    q.Close;
    q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
      [zqrNoFOBJ.FieldByName('no_fobj').ASString]);
    cxdTglKirim.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
    q.Close;

    nxGrd.ClearRows;

    q := OpenRS('SELECT * FROM v_penawaran_supp_det WHERE no_fobj = ''%s'' ' +
      'AND f_pilih = 1 ' +
      'AND kode_supp = ''%s'' ORDER BY kode_brg',
      [zqrNoFOBJ.FieldByName('no_fobj').AsString, zqrNoFOBJ.FieldByName('kode_supp').AsString]);

    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
      nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
      nxGrd.Cell[nxColNoPen.Index,i].AsString := q.FieldByName('no_bukti').AsString;
      q.Next;

      HitungSubTotal;
      HitungTotal;

    end;
    q.Close;

  end;
  q.Close;
end;

procedure TFrmPurchaseOrderPel.cxrStandardClick(Sender: TObject);
var
  chk: TcxRadioButton;
  q: TZQuery;
begin
  inherited;
  chk := (Sender as TcxRadioButton);
  // get no po pajak standard
  //cxtNoPOPajak.Text := '';

  if (chk.Name = 'cxrStandard') or (chk.Name = 'cxrImport') then begin
    if Self.Jenis = 'edit' then begin
      q := OpenRS('SELECT * FROM v_po_head WHERE no_bukti = ''%s''',
        [cxtNoTrans.Text]);
      if q.FieldByName('no_po_pajak').IsNull then
        cxtNoPOPajak.Text := GetLastNoPOPajak()
      else
        cxtNoPOPajak.Text := q.FieldByName('no_po_pajak').AsString;
    end
    else begin
      cxtNoPOPajak.Text := GetLastNoPOPajak();
    end;
  end
  else if chk.Name = 'cxrNonPajak' then begin
    cxtNoPOPajak.Text := '';
  end;

end;

procedure TFrmPurchaseOrderPel.btnCariAlamatKirimClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'alamat-kirim';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxlAlamatKirim.EditValue := fKode.AsInteger;
  end;
  f.Release;
  cxlAlamatKirim.SetFocus;
end;

procedure TFrmPurchaseOrderPel.btnCetakClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
begin

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('PO ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_approval').AsInteger = 0 then begin
      MsgBox('PO Ini belum di Approval.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;

  f := TFrmLapUmum.Create(Self);
  if cxtNoTrans.Text <> '' then begin
    with f do begin
      zqrPOPeletan.Close;
      zqrPOPeletan.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
      zqrPOPeletan.Open;
      rptPOPeletan.ShowReport(True);
    end;
    f.Release;
  end;

end;

procedure TFrmPurchaseOrderPel.btnCetakPOInternalClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
  Memo: TfrxMemoView;
begin

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('PO ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_approval').AsInteger = 0 then begin
      MsgBox('PO Ini belum di Approval.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;

  f := TFrmLapUmum.Create(Self);
  if cxtNoTrans.Text <> '' then begin
    with f do begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
      zqrPO.Open;

      if cxrNonPajak.Checked then begin
        rptPONonPajak.ShowReport(True);
      end
      else if cxrStandard.Checked then begin
        Memo := rptPO.FindObject('NOPOInternal') as TfrxMemoView;
        Memo.Visible := True;
        rptPO.ShowReport(True);
      end;
    end;
    f.Release;
  end;

end;

procedure TFrmPurchaseOrderPel.cxLUSuppPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_customer WHERE kode = ''%s''',
    [zqrCust.FieldByName('kode').AsString]);
  //cxCmbPembayaran.Text := q.FIeldByName('pembayaran').AsString;
  q.Close;
end;

procedure TfrmPurchaseOrderPel.btnPostingClick(Sender: TObject);
var
  q, qd, qh, th, tbl_mo, qso, qsod: TZQuery;
  b: Boolean;
  tb, tbd: TZTable;
  sNoMO, sNoSO: string;
  ans: Integer;
begin
  ans := unTools.QBox(Self, 'Posting nomer PO ini ?','Posting PO');
  if ans = IDNO then begin
    Abort;
  end;

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('PO Peletan ini belum disimpan.');
  end
  else begin
    if q.FieldByName('f_posted').AsInteger = 1 then begin
      MsgBox('PO Peletan sudah di posting.');
    end
    else begin

      // cek apakah masih ada harga yang kosong
      qd := OpenRS('SELECT * FROM tbl_po_det WHERE no_bukti = ''%s'' AND harga = 0',
        [cxtNoTrans.Text]);
      if not qd.IsEmpty then begin
        MsgBox('Masih ada harga yang kosong.');
      end
      else begin

        qd.Close;
        qd := OpenRS('SELECT * FROM tbl_po_det WHERE no_bukti = ''%s''',[cxtNoTrans.Text]);
        th := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

        sNoSO := GetLastFak('sales_order_plt');
        UpdateFaktur(Copy(sNoSO, 1, 8));

        qso := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''', [sNoSO]);
        qsod := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''', [sNoSO]);

        try
          dm.zConn.StartTransaction;

          // insert so head
          qso.Insert;
          qso.FieldByName('no_bukti').AsString := sNoSO;
          qso.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          qso.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
          qso.FieldByName('kode_customer').AsString := 'SDP';
          qso.FieldByName('ex_customer').AsString := zqrCust.FieldByName('kode').AsString;
          qso.FieldByName('kategori_so').AsString := 'PELETAN';
          qso.FieldByName('tgl_required').AsDateTime := cxdTglKirim.Date;
          qso.FieldByName('payment').AsString := cxCmbPembayaran.Text;
          qso.FieldByName('notes').AsString := cxtKeterangan.Text;
          qso.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qso.FieldByName('user').AsString := aplikasi.NamaUser;
          qso.FieldByName('user_dept').AsString := aplikasi.UserDept;
          qso.FieldByName('susut').AsFloat := 1;
          qso.FieldByName('nopol').AsString := cxtNopol.Text;
          qso.FieldByName('driver').AsString := cxtDriver.Text;
          qso.Post;

          while not qd.Eof do begin
            qsod.Insert;
            qsod.FieldByName('no_bukti').AsString := sNoSO;
            qsod.FieldByName('kode_brg').AsInteger := qd.FieldByName('kode_brg').AsInteger;
            qsod.FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
            qsod.FieldByName('satuan').AsString := 'KG';
            qsod.FieldByName('notes').AsString := qd.FieldByName('keterangan').AsString;
            qsod.FieldByName('lokasi').AsString := qd.FieldByName('lokasi').AsString;
            qsod.FieldByName('kondisi').AsString := qd.FieldByName('kondisi').AsString;
            qsod.Post;

            th.Insert;
            th.FieldByName('no_bukti').AsString := sNoSO;
            th.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            th.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            th.FieldByName('kode_brg').AsString := qd.FieldByName('kode_brg').AsString;
            th.FieldByName('tipe').AsString := 'IN_';
            th.FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
            th.FieldByName('satuan').AsString := 'KG';
            th.FieldByName('gudang').AsString := 'G01';
            th.FieldByName('user').AsString := Aplikasi.NamaUser;
            th.FieldByName('user_dept').AsString := aplikasi.UserDept;
            th.FieldByName('no_so').AsString := sNoSO;
            th.Post;

            dm.zConn.ExecuteDirect(Format('UPDATE tbl_po_det SET no_so_plt = ''%s'' ' +
              'WHERE no_bukti = ''%s''',
              [sNoSO, cxtNoTrans.Text]));

            dm.zConn.ExecuteDirect('UPDATE tbl_barang SET stok = stok + ' +
              StringReplace(FloatToStr(qd.FieldByName('qty').AsFloat),',','.',[rfReplaceAll]) +
              ' WHERE kode = ' + qd.FieldByName('kode_brg').AsString);

            dm.zConn.ExecuteDirect('UPDATE tbl_barang_det SET stok = stok + ' +
              StringReplace(FloatToStr(qd.FieldByName('qty').AsFloat),',','.',[rfReplaceAll]) +
              ' WHERE kode_brg = ' + qd.FieldByName('kode_brg').AsString + ' AND kode_gdg = ''G01''');

            sNoMO := GetLastFak('master_order');
            UpdateFaktur(Copy(sNoMO,1,7));

            tbl_mo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''', [sNoMO]);

            with tbl_mo do begin
              Insert;
              FieldByName('no_mo').AsString := sNoMO;
              FieldByName('no_so').AsString := sNoSO;
              FieldByName('kode_brg').AsString := qd.FieldByName('kode_brg').AsString;
              FieldByName('qty_mo').AsFloat := qd.FieldBYName('qty').AsFloat;
              FieldByName('qty_so').AsFloat := qd.FieldBYName('qty').AsFloat;
              FieldByName('lokasi').AsString := qd.FieldByName('lokasi').AsString;
              FieldByName('kondisi').AsString := qd.FieldByName('kondisi').AsString;
              FieldByName('no_po').AsString := cxtNoTrans.Text;
              Post;
            end;

            qd.Next;
          end;

          dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_completed = 1, f_posted = 1 ' +
            'WHERE no_bukti = ''' + cxtNoTrans.Text + '''');

          th.Close;
          tbl_mo.Close;

          dm.zConn.Commit;

          MsgBox('PO Peletan sudah berhasil di posting. ' + Chr(10) + Chr(13) +
            'No. SO: ' + sNoSO);

          qso := OpenRS('SELECT a.*, b.nama nama_ex FROM tbl_po_head a LEFT JOIN tbl_customer b ' +
            'ON a.kode_supp = b.kode ' +
            'WHERE a.no_bukti = ''%s''', [cxtNoTrans.Text]);

          SendEmailSO(sNoSO, qso.FieldByName('nama_ex').AsString);
          qso.Close;

          ClearAll;

        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;

      end;
      qd.Close;

    end;
  end;
  q.Close;


end;

procedure TfrmPurchaseOrderPel.btnCetakSPBBClick(Sender: TObject);
var
  q, q2: TZQuery;
  f: TFrmLapUmum;
  tsh, tsd: TZTable;
  sNoTrs: string;
  i: Integer;
begin
  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('PO Peletan ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_posted').AsInteger = 1 then begin
      MsgBox('SO Peletan ini sudah di posting, tidak bisa cetak SPBB.');
    end
    else begin
      q2 := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_po = ''%s''',
        [cxtNoTrans.Text]);

      if q2.IsEmpty then begin
        sNoTrs := GetLastFak('spbb');
        UpdateFaktur(Copy(sNoTrs,1,9))
      end
      else begin
        sNoTrs := q2.FieldByName('no_bukti').AsString;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_head WHERE no_po = ''' +
          cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_det WHERE no_po = ''' +
          cxtNoTrans.Text + '''');
      end;

      try
        dm.zConn.StartTransaction;
        tsh := OpenTbl('tbl_spbb_head');
        tsd := OpenTbl('tbl_spbb_det');

        tsh.Insert;
        tsh.FieldByName('no_bukti').AsString := sNoTrs;
        tsh.FieldByName('no_po').AsString := cxtNoTrans.Text;
        tsh.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        tsh.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
        tsh.FieldByName('keterangan').AsString := cxtKeterangan.Text;
        tsh.FieldByName('user').AsString := aplikasi.NamaUser;
        tsh.FieldByName('user_dept').AsString := aplikasi.UserDept;
        tsh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        tsh.FieldByName('host').AsString := GetHostName2;
        tsh.FieldByName('nopol').AsString := '';
        tsh.FieldByName('driver').AsString := '';
        tsh.FieldByName('no_sj').AsString := '';
        tsh.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
        tsh.FieldByName('driver').AsString := Trim(cxtDriver.Text);
        tsh.Post;

        for i := 0 to nxGrd.RowCount -1 do begin
          if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then Continue;
          tsd.Insert;
          tsd.FieldByName('no_bukti').AsString := sNoTrs;
          tsd.FieldByName('no_po').AsString := cxtNoTrans.Text;
          tsd.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          tsd.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index, i].AsFloat;
          tsd.FieldByName('satuan').AsString := 'KG';
          tsd.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
          tsd.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKeterangan.Index,i].AsString;
          tsd.FieldByName('lokasi').AsString := UpperCase(nxGrd.Cell[nxColLokasi.Index,i].AsString);
          tsd.FieldByName('kondisi').AsString := UpperCase(nxGrd.Cell[nxColKondisi.Index, i].AsString);
          tsd.Post;
        end;

        dm.zConn.Commit;

        f := TfrmLapUmum.Create(Self);
        f.zqrSpbbPoPlt.Close;
        f.zqrSpbbPoPlt.ParamByName('no_po').AsString := cxtNoTrans.Text;
        f.zqrSpbbPoPlt.Open;
        f.rptSPBB_PoPlt.ShowReport(True);
        f.Release;

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
  end;
  q.Close;
  
end;

procedure TfrmPurchaseOrderPel.cxChkTampilSPMBAllClick(Sender: TObject);
begin
  zqrNoBukti.Close;
  if cxChkTampilSPMBAll.Checked then
    zqrNoBukti.SQL.Text := 'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept, c.nama as ex_customer ' +
      'from tbl_po_head a left join tbl_customer b on a.kode_supp = b.kode ' +
      'left join tbl_customer c on c.kode = a.ex_customer ' +
      'where left(a.no_bukti,3) = ''POP'''
  else
    zqrNoBukti.SQL.Text := 'select a.no_bukti, a.tanggal, b.nama, a.user, a.user_dept, c.nama as ex_customer ' +
      'from tbl_po_head a left join tbl_customer b on a.kode_supp = b.kode ' +
      'left join tbl_customer c on c.kode = a.ex_customer ' +
      'where left(a.no_bukti,3) = ''POP'' AND f_posted = 0';
  zqrNoBukti.Open;
end;

end.
