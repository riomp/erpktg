unit unFrmPenerimaanPlt;

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
  IdSSL, IdSSLOpenSSL, IdText, IdAttachmentFile;

type
  TfrmPenerimaanPlt = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNmBrg: TNxTextColumn;
    nxColQtySO: TNxNumberColumn;
    NxEdit1: TNxEdit;
    cxsTotalQty: TcxSpinEdit;
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
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
    nxColSat: TNxTextColumn;
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
    cxtNoSJ: TcxTextEdit;
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
    NxNumberColumn2: TNxNumberColumn;
    NxButtonEdit1: TNxButtonEdit;
    cxChkKirimEmail: TcxCheckBox;
    NxTextColumn3: TNxTextColumn;
    cxCmbKategoriSO2: TcxComboBox;
    cxCmbKategoriSO3: TcxComboBox;
    cxLabel7: TcxLabel;
    cxsQty: TcxSpinEdit;
    btnCariCust: TButton;
    pnlMemo: TPanel;
    btnSimpanKet: TButton;
    btnBatalMemo: TButton;
    cxMemo: TcxMemo;
    nxColKet: TNxTextColumn;
    idSMTP: TIdSMTP;
    btnCariBrg: TButton;
    cxLabel4: TcxLabel;
    cxsSusut: TcxSpinEdit;
    cxLabel14: TcxLabel;
    btnCetakSPBB: TButton;
    btnPosting: TButton;
    nxColHarga: TNxNumberColumn;
    cxLabel15: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxtDriver: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxtKelompok: TcxTextEdit;
    nxColLokasi: TNxTextColumn;
    nxColKondisi: TNxTextColumn;
    nxColFlag: TNxTextColumn;
    Panel1: TPanel;
    btnPosting2: TButton;
    btnBatalPosting: TButton;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
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
    procedure cxLUCustPropertiesChange(Sender: TObject);
    procedure NxButtonEdit1ButtonClick(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxsQtyKeyPress(Sender: TObject; var Key: Char);
    procedure btnCetakSPBBClick(Sender: TObject);
    procedure btnCariCustClick(Sender: TObject);
    procedure pnlMemoExit(Sender: TObject);
    procedure NxTextColumn4ButtonClick(Sender: TObject);
    procedure btnSimpanKetClick(Sender: TObject);
    procedure btnBatalMemoClick(Sender: TObject);
    procedure cxMemoExit(Sender: TObject);
    procedure idSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnPostingClick(Sender: TObject);
    procedure nxGrdBeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure cxLUCustPropertiesEditValueChanged(Sender: TObject);
    procedure btnBatalPostingClick(Sender: TObject);
    procedure btnPosting2Click(Sender: TObject);
  private
    mUserDept: string;
    mLstDaftarEmail: TStringList;
    fw: TFrmWait;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure ResetCheckEmail;
    procedure SendEmailSO(sNoBukti: string; jenis: string);
    function GenerateHTML(sNoBukti: string) : string;
    procedure GetDaftarEmail;
  public
    property UserDept: string read mUserDept write mUserDept;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPO: TFrmPenerimaanPlt;

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

procedure TFrmPenerimaanPlt.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmPenerimaanPlt.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: Integer;
  tx: TcxCheckListBoxItem;
  bEditSO: boolean;
begin
  inherited;
  Aplikasi.log_('PENERIMAAN-PELETAN');
  
  Screen.Cursor := crSQLWait;

  unTools.OpenAllQ(Self);

  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxdTglTrs.Properties.ReadOnly := Not aplikasi.UbahTglTrs;

  cxtNoTrans.Text := GetLastFak('sales_order_plt');

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

  cxCmbPembayaran.Properties.Items.Add('');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Bulan');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Bulan');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Minggu');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Minggu');
  cxCmbPembayaran.Properties.Items.Add('3 (Tiga) Minggu');
  cxCmbPembayaran.Properties.Items.Add('Kontan');
  cxCmbPembayaran.ItemIndex := 0;

  cxCmbKategoriSO.Properties.Items.CommaText :=
    '"",' +                                 // 0
    'ATAP,' +                               // 1
    '"DUMA DOOR",' +                        // 2
    '"PESANAN KHUSUS RIGID PVC",' +         // 3
    'SELANG,' +                             // 4
    'PGL,' +                                // 5
    'ACP,' +                                // 6
    '"PK SOFT PVC",' +                      // 7
    '"DUMA PANEL / PLAFON WPC",' +          // 8
    '"PINTU PVC",' +                        // 9
    '"SEDOTAN + ST.BAND + RAFIA",' +        // 10
    '"PK PE SENAR",' +                      // 11
    '"LAIN-LAIN (AFALAN)"';                 // 12
  cxCmbKategoriSO.ItemIndex := 0;

  cxCmbKategoriSO2.Properties.Items.CommaText :=
    cxCmbKategoriSO.Properties.Items.CommaText;
  cxCmbKategoriSO3.Properties.Items.CommaText :=
    cxCmbKategoriSO.Properties.Items.CommaText;

  lst := TStringList.Create;
  lst.Add('boby@sdp.mail');
  lst.Add('vivi@sdp.mail');
  lst.Add('felgitotema@sdp.mail');
  lst.Add('ferry@sdp.mail');
  lst.Add('sunanto@sdp.mail');
  //lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');
  lst.Add('alex@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;

  Self.Jenis := 'tambah';
  mLstDaftarEmail := TStringList.Create;

  pnlMemo.Left := 450;
  pnlMemo.Top := 175;

  cxChkKirimEmail.Properties.ReadOnly := True;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' ' +
    'AND nm_comp = ''EditCheckEmailSO''',
    [Aplikasi.NamaUser]
  );
  if not q.IsEmpty then begin
    if q.FieldByName('wwn').AsString = '1' then
      cxChkKirimEmail.Properties.ReadOnly := False;
  end;
  q.Close;

  // default nilai susut
  //cxsSusut.Value := 0.5;
  cxsSusut.Value := 1;

  cxLUCust.Properties.DropDownWidth := 2500;

  //zqrNoBukti.Open;
  //zqrCust.Open;
  //zqrBrg.Open;

  Panel1.Top := 0;
  Panel1.Left := 0;

  Screen.Cursor := crDefault;
end;

procedure TFrmPenerimaanPlt.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmPenerimaanPlt.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmPenerimaanPlt.NxEdit1DblClick(Sender: TObject);
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
    f.jenis := 'barang-peletan';
    f.ShowModal;
    if f.ModalResult = idOk then begin
      s := f.Result;
      fKode := s.Objects[0] as TField;
      if not CekKodeBrg(fKode.AsString, ARow) then
        MsgBox('Kode Barang sudah ada.')
      else begin
        q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
          [fKode.AsString]);
        nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := fKode.AsString;
        nxGrd.Cell[nxColNmBrg.Index,ARow].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.Cell[nxColSat.Index,ARow].AsString := q.FieldByName('satuan').AsString;
        nxGrd.Cell[nxColQtySO.Index,ARow].AsFloat := 0;
        //nxGrd.Cell[CSTOK_G02,ARow].AsFloat := GetStokGudang(fKode.AsString, 'G01');
        //nxGrd.SelectCell(CQTY,ARow);
        HitungTotal;
      end;
    end;
  end;
end;

procedure TFrmPenerimaanPlt.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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
  else if ACol = nxColQtySO.Index then begin

    if nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString = '' then Abort;

    // cek apakah barang ini sudah di mutasi
    q := OpenRS('SELECT a.*, b.qty qty_so FROM v_stok_so a, tbl_so_det b WHERE a.no_bukti = ''%s'' ' +
      'AND a.kode_brg = %s AND ' +
      'a.no_bukti = b.no_bukti AND a.kode_brg = b.kode_brg',
      [cxtNoTrans.Text, nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString]);
    if not q.IsEmpty then begin
      if q.FieldByName('qty_g02').AsFloat > 0 then begin
        MsgBox('Kode barang : ' + nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString + #10#13 +
          'sudah ada di Gudang Customer sejumlah : ' + q.FieldByName('qty_g02').AsString + #10#13 +
          'Mohon hubungi PPIC terlebih dahulu untuk melakukan perubahan Qty. SO.');
        nxGrd.Cell[nxColQtySO.Index,ARow].AsFloat := q.FieldByName('qty_so').AsFloat;
        //nxGrd.SelectCell(nxColQtySO.Index, ARow);
        q.Close;
        Abort;
      end;
    end;
    q.Close;

    // cek apakah barang ini sudah dibuatkan SPK
    q := OpenRS('SELECT * FROM tbl_mo WHERE kode_brg = %s AND no_so = ''%s'' AND f_spk = 1',
      [nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString, cxtNoTrans.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode barang : ' + nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString + #10#13 +
          'sudah dibuatkan SPK : ' + q.FieldByName('no_spk').AsString + #10#13 +
          'Mohon hubungi PPIC terlebih dahulu untuk melakukan perubahan Qty. SO.');
      nxGrd.Cell[nxColQtySO.Index,ARow].AsFloat := q.FieldByName('qty_so').AsFloat;
    end;
    q.Close;

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
        nxGrd.SelectCell(CSAT,ARow)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end;
end;

procedure TFrmPenerimaanPlt.HitungTotal;
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

procedure TFrmPenerimaanPlt.ClearAll;
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
  cxtNoTrans.Text := GetLastFak('sales_order_plt');
  cxLUCust.Text := '';
  cxdTglKirim.Text := '';
  cxtKeterangan.Text := '';
  cxCmbPembayaran.ItemIndex := 0;
  //cxtPO.Text := '';
  cxtNoSJ.Text := '';
  cxCmbKategoriSO.ItemIndex := 0;
  cxLUBrg.Text := '';
  cxtSubject.Text := '';
  cxmIsiEmail.Text := '';
  Self.Jenis := 'tambah';
  chkSdhKirimEmail.Checked := False;
  cxChkKirimEmail.Checked := True;
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
  mLstDaftarEmail.Clear;
end;

procedure TFrmPenerimaanPlt.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('sales_order');
  cxlNoBukti.Text := '';
  Self.Jenis := 'tambah';
end;

procedure TFrmPenerimaanPlt.btnSimpanClick(Sender: TObject);
var
  barang, barang_det, hist, tbl_mo, tbl_tmp: TZTable;
  sNoTrs, sNoMO: string;
  i: integer;
  b: Boolean;
  in_head, in_det, q, qCekMO: TZQuery;
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
  else if Trim(cxtNopol.Text) = '' then begin
    MsgBox('Nopol harus diisi.');
    cxtNopol.SetFocus;
  end
  else if Trim(cxtDriver.Text) = '' then begin
    MsgBox('Nomer PO atau SC harus diisi.');
    cxtDriver.SetFocus;
  end
  else begin

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    // cek apakah SO sudah selesai 
    q := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);
    if not q.IsEmpty then begin
      if q.FieldByName('f_completed').AsInteger = 1 then begin
        MsgBox('SO ini sudah komplit / selesai. Tidak bisa di edit.');
        q.Close;
        Abort;
      end;
    end;
    q.Close;

    // cek karakter yang tidak diperbolehkan di notes
    for i := 0 to nxGrd.RowCount - 1 do begin
      if Length(Trim(nxGrd.Cell[nxColKet.Index, i].AsString)) > 0 then begin
        if Pos('[',Trim(nxGrd.Cell[nxColKet.Index,i].AsString)) > 0 then begin
          MsgBox('Ada karakter yang tidak diperbolehkan di bagian keterangan.');
          Abort;
        end;
        if Pos('''',Trim(nxGrd.Cell[nxColKet.Index,i].AsString)) > 0 then begin
          MsgBox('Ada karakter yang tidak diperbolehkan di bagian keterangan.');
          Abort;
        end;
      end;
    end;

    try
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans.Text;
      end
      else begin
        sNoTrs := GetLastFak('sales_order_plt');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        q := OpenRS('SELECT kode_brg, qty FROM tbl_so_det ' +
          'WHERE no_bukti = ''%s''',[cxtNoTrans.Text]);

        dm.zConn.ExecuteDirect('CREATE TABLE tmp_so ( ' +
            'kode_brg INTEGER(11), ' +
            'qty FLOAT(11,2)' +
          ')');

        tbl_tmp := OpenTbl('tmp_so');
        while not q.Eof do begin
          tbl_tmp.Insert;
          tbl_tmp.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
          tbl_tmp.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
          tbl_tmp.Post;
          q.Next;
        end;
        q.Close;
        q := nil;
        
        dm.zConn.ExecuteDirect('DELETE FROM tbl_so_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_so_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      //in_head := OpenTbl('tbl_so_head');
      //in_det := OpenTbl('tbl_so_det');
      in_head := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''', [sNoTrs]);
      in_det := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''', [sNoTrs]);

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('kode_customer').AsString := zqrCust.FieldByName('kode').AsString;
      in_head.FieldByName('kategori_so').AsString := 'PELETAN';
      in_head.FieldByName('no_sj_plt').AsString := cxtNoSJ.Text;
      in_head.FieldByName('tgl_required').AsDateTime := cxdTglKirim.Date;
      in_head.FieldByName('payment').AsString := cxCmbPembayaran.Text;
      in_head.FieldByName('notes').AsString := cxtKeterangan.Text;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('user').AsString := Aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByname('nopol').AsString := Trim(cxtNopol.Text);
      in_head.FieldByName('driver').AsString := Trim(cxtDriver.Text);
      if self.Jenis = 'edit' then
        in_head.FieldByName('f_revisi').AsInteger := 1
      else
        in_head.FieldByName('f_revisi').AsInteger := 0;

      in_head.FieldByName('kategori1').AsString := 'PELETAN';
      in_head.FieldByName('kategori2').AsString := '';
      in_head.FieldByName('kategori3').AsString := '';

      if Self.Jenis = 'edit' then begin
        in_head.FieldByName('user_edit').AsString := aplikasi.NamaUser;
        in_head.FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
        in_head.FieldByName('host').AsString := GetHostName2;
      end;

      in_head.FieldByName('susut').AsFloat := cxsSusut.Value;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        // jika edit maka simpan qty yang lama
        if Self.Jenis = 'edit' then begin
          if tbl_tmp.Locate('kode_brg',nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger,[]) then
            in_det.FieldByName('qty_lama').AsFloat := tbl_tmp.FieldByName('qty').AsFloat;
        end;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtySO.Index,i].AsFloat;
        in_det.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSat.Index,i].AsString;
        in_det.FieldByName('notes').AsString := UpperCase(nxGrd.Cell[nxColKet.Index,i].AsString);

        //in_det.FieldByName('ket_harga').AsString := UpperCase(nxGrd.Cell[CKET2,i].AsString);

        // jika pengeditan dari form SO
        if Self.Jenis = 'edit' then begin
          in_det.FieldByName('user_edit').AsString := Aplikasi.NamaUser;
          in_det.FieldByName('tgl_jam_edit').AsDateTime := aplikasi.NowServer;
          in_det.FieldByName('jenis_edit').AsString := 'SO-PLT';
        end;
        in_det.FieldByName('lokasi').AsString := UpperCase(nxGrd.Cell[nxColLokasi.Index, i].AsString);
        in_det.FieldByName('kondisi').AsString := UpperCase(nxGrd.Cell[nxColKondisi.Index, i].AsString);
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;
      MsgBox('Transaksi Sales Order Peletan sudah disimpan dengan nomer: ' + sNoTrs);

      i := QBox(Self, 'Cetak SPBB ?','SPBB');
      if i = IDYES then begin
        btnCetakSPBBClick(Self);
      end;

      Self.Jenis := '';

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

procedure TFrmPenerimaanPlt.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
var
  q: TZQuery;
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin

        // cek apakah item ini sudah dibuatkan SPMB
        q := OpenRS('SELECT * FROM tbl_spmb_det WHERE no_so = ''%s'' ' +
          'AND kode_brg = %s',
          [cxtNoTrans.Text, nxGrd.Cell[CKD_BRG,ARow].AsString]);
        if not q.IsEmpty then begin
          MsgBox('Item: ' + nxGrd.Cell[CKD_BRG,ARow].AsString +
            ' sudah dibuatkan SPMB No: ' + q.FieldByName('no_bukti').AsString);
        end
        else begin
          nxGrd.DeleteRow(nxGrd.SelectedRow);
          nxNoUrut.Refresh();
          HitungTotal;
          if nxGrd.RowCount = 0 then nxGrd.AddRow();
        end;
        q.Close;
      end;
    end
    else if ACol = CKD_BRG then begin
      self.NxEdit1DblClick(nil);
    end
    else if ACol = CKET then begin
      pnlMemo.Visible := True;
      cxMemo.Lines.Text := nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString;
      cxMemo.SetFocus;
    end;
    //else if ACol = CNM_BRG then begin
    //  self.NxEdit1DblClick(nil);
    //end;
  end;
end;

procedure TFrmPenerimaanPlt.btnHapusClick(Sender: TObject);
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

procedure TFrmPenerimaanPlt.btnTambahClick(Sender: TObject);
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

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end
  else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' + sKodeBrg + '''');

    nxGrd.Cell[nxColNmBrg.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;

    // jika mengandung kata WK maka susut jadi 2 %
    if Pos('WK', q.FieldByName('deskripsi').AsString) > 0 then
      cxsSusut.Value := 2
    else
      cxsSusut.Value := 1;

    nxGrd.Cell[nxColSat.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQtySO.Index,ARow].AsFloat := cxsQty.Value;
    //nxGrd.Cell[CSTOK_G02,ARow].AsFloat :=
    //  GetStokGudang(sKodeBrg, 'G01');
    nxGrd.Cell[nxColKet.Index,ARow].Color := clSkyBlue;

    if cxtKelompok.Text = 'KEL1' then begin
      nxGrd.Cell[nxColHarga.Index, ARow].AsFloat := q.FieldByName('hrg_kel1').AsFloat;
      nxGrd.Cell[nxColFlag.Index, ARow].AsString := '1';
    end
    else if cxtKelompok.Text = 'KEL2' then begin
      nxGrd.Cell[nxColHarga.Index, ARow].AsFloat := q.FieldByName('hrg_kel2').AsFloat;
      nxGrd.Cell[nxColFlag.Index, ARow].AsString := '1';
    end;

    HitungTotal;
    nxGrd.SelectCell(nxColKodeBrg.Index, nxGrd.LastAddedRow);
    nxGrd.SelectLastRow();

    q.Close;
    nxGrd.AddRow();
  end;
  
end;

procedure TFrmPenerimaanPlt.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  {
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
  }  
end;

procedure TFrmPenerimaanPlt.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  //cxLUCust.Text := zqrNoBukti.FieldByName('nama').AsString;
  cxLUCust.EditValue := zqrNoBukti.FieldByName('kode_customer').Value;

  // ambil data kelompok
  q := OpenRS('SELECT kelompok FROM tbl_customer WHERE kode = ''%s''',
    [zqrNoBukti.FieldByName('kode_customer').AsString]);
  if not q.IsEmpty then begin
    if not q.FieldByName('kelompok').IsNull then
      cxtKelompok.Text := q.FieldByName('kelompok').AsString;    
  end;  
  q.Close;

  q := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

  if q.FieldByName('f_email').AsInteger = 1 then
    chkSdhKirimEmail.Checked := True;
  cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
  cxtKeterangan.Text := q.FieldByName('notes').AsString;
  cxCmbPembayaran.Text := q.FieldByName('payment').AsString;
  //cxtPO.Text := q.FieldByName('po#').AsString;
  //cxtSC.Text := q.FIeldByName('sc#').AsString;
  cxtNoSJ.Text := q.FieldByName('no_sj_plt').AsString;
  cxCmbKategoriSO.Text := q.FieldByName('kategori1').AsString;
  cxCmbKategoriSO2.Text := q.FieldByName('kategori2').AsString;
  cxCmbKategoriSO3.Text := q.FieldByName('kategori3').AsString;
  //Self.cxCmbKategoriSOPropertiesChange(cxCMbKategoriSO3);
  cxtNopol.Text := q.FieldByName('nopol').AsString;
  cxtDriver.Text := q.FieldByName('driver').AsString;
  cxsSusut.Value := q.FieldByName('susut').AsFloat;

  q.Close;

  try
    cxtSubject.Text := 'SO Revisi (' + cxtNoTrans.Text +
      ' - ' + cxLUCust.Text + ')';
  except
  end;

  //q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = trim(''%s'')',
  //  [cxtNoTrans.Text]);
  q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = trim(''%s'')',
    [zqrNoBukti.FieldByName('no_bukti').AsString]);
  //MsgBox(IntToStr(q.RecordCount));

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;
  nxGrd.ClearRows();
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNmBrg.Index,i].AsString := qBrg.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQtySO.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
    nxGrd.Cell[nxColSat.Index,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQtySO.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColKet.Index,i].AsString := q.FieldByName('notes').AsString;
    nxGrd.Cell[nxColLokasi.Index,i].AsString := q.FieldByName('lokasi').AsString;
    nxGrd.Cell[nxColKondisi.Index,i].AsString := q.FieldByName('kondisi').AsString;
    Inc(i);
    qBrg.Close;
    q.Next;
  end;
  q.Close;
  nxGrd.AddRow();

  HitungTotal;
end;

procedure TFrmPenerimaanPlt.cxCmbKategoriSOPropertiesChange(Sender: TObject);
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

procedure TFrmPenerimaanPlt.ResetCheckEmail;
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
  lst.Add('sunanto@sdp.mail');
  //lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;
end;

procedure TFrmPenerimaanPlt.SendEmailSO(sNoBukti: string; jenis: string);
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

    Screen.Cursor := crSQLWait;
    
    idSMTP.AuthType := satNone;
    idSMTP.Host := Aplikasi.ServerSMTP;
    idSMTP.Port     := 25;
    idSMTP.UserName := aplikasi.EmailUser;
    idSMTP.Password := '';

    GetDaftarEmail;

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
        email.Subject := 'SO Baru (' + sNoBukti + ' - ' + q.FieldByName('nama').AsString + ')';
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
      Screen.Cursor := crDefault;
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

function TFrmPenerimaanPlt.GenerateHTML(sNoBukti: string) : string;
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
    StringReplace(cxtNoTrans.Text,'/','-',[rfReplaceAll]) +
    '.html');

  Result := Aplikasi.AppPath +
    StringReplace(cxtNoTrans.text,'/','-',[rfReplaceAll]) + '.html';

end;

procedure TFrmPenerimaanPlt.cxLUCustPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  {
  try
    if Self.Jenis <> 'edit' then begin
      cxtSubject.Text := 'SO Baru (' + cxtNoTrans.Text +
      ' - ' + cxLUCust.Text + ')';
    end;
    q := OpenRS('SELECT kelompok FROM tbl_customer WHERE kode = ''%s''',[cxLUCust.EditValue]);
    //cxtKelompok.Text := zqrCust.FieldByName('kelompok').AsString;
    cxtKelompok.Text := q.FieldByName('kelompok').AsString;
    q.Close;

  except
  end;
  }
end;

procedure TFrmPenerimaanPlt.NxButtonEdit1ButtonClick(Sender: TObject);
var
  i: integer;
begin
  i := nxGrd.SelectedRow;
  nxGrd.Cell[CSTOK_G02,i].AsFloat :=
    GetStokGudang(nxGrd.Cell[CKD_BRG,i].AsString, 'G01');
  nxGrd.SelectCell(CKET,i);
  //MsgBox(FloatToStr(GetStokGudang(nxGrd.Cell[CKD_BRG,i].AsString, 'G01')));
end;

procedure TFrmPenerimaanPlt.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
    //btnTambahClick(nil);
    cxsQty.SetFocus;
  end;
end;

procedure TFrmPenerimaanPlt.cxsQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    btnTambahClick(nil);
    cxsQty.EditValue := 0;
    cxLUBrg.SetFocus;
  end;
end;

procedure TFrmPenerimaanPlt.GetDaftarEmail;
var
  lst: TStringList;
  cmb : TcxComboBox;
  i,j: Integer;
begin
  with mLstDaftarEmail do begin
    Add('boby@sdp.mail');
    Add('vivi@sdp.mail');
    Add('felgitotema@sdp.mail');
    // Add('ferry@sdp.mail');
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
        //Add('bayu@sdp.mail');
        Add('maria@sdp.mail');
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
        //Add('bayu@sdp.mail');
        Add('maria@sdp.mail');
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

end;

procedure TFrmPenerimaanPlt.btnCetakSPBBClick(Sender: TObject);
var
  q, q2: TZQuery;
  f: TFrmLapUmum;
  tsh, tsd: TZTable;
  sNoTrs: string;
  i: Integer;
begin
  q := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('SO Peletan ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_posted').AsInteger = 1 then begin
      MsgBox('SO Peletan ini sudah di posting, tidak bisa cetak SPBB.');
    end
    else begin
      q2 := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_so = ''%s''',
        [cxtNoTrans.Text]);

      if q2.IsEmpty then begin
        sNoTrs := GetLastFak('spbb');
        UpdateFaktur(Copy(sNoTrs,1,9))
      end
      else begin
        sNoTrs := q2.FieldByName('no_bukti').AsString;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_head WHERE no_so = ''' +
          cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_det WHERE no_so = ''' +
          cxtNoTrans.Text + '''');
      end;

      try
        dm.zConn.StartTransaction;
        tsh := OpenTbl('tbl_spbb_head');
        tsd := OpenTbl('tbl_spbb_det');

        tsh.Insert;
        tsh.FieldByName('no_bukti').AsString := sNoTrs;
        tsh.FieldByName('no_so').AsString := cxtNoTrans.Text;
        tsh.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        tsh.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
        tsh.FieldByName('keterangan').AsString := cxtKeterangan.Text;
        tsh.FieldByName('user').AsString := aplikasi.NamaUser;
        tsh.FieldByName('user_dept').AsString := aplikasi.UserDept;
        tsh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        tsh.FieldByName('host').AsString := GetHostName2;
        tsh.FieldByName('nopol').AsString := '';
        tsh.FieldByName('driver').AsString := '';
        tsh.FieldByName('no_sj').AsString := cxtNoSJ.Text;
        tsh.Post;

        for i := 0 to nxGrd.RowCount -1 do begin
          if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then Continue;
          tsd.Insert;
          tsd.FieldByName('no_bukti').AsString := sNoTrs;
          tsd.FieldByName('no_so').AsString := cxtNoTrans.Text;
          tsd.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          tsd.FieldByName('satuan').AsString := 'KG';
          tsd.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
          tsd.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index,i].AsString;
          tsd.FieldByName('lokasi').AsString := nxGrd.Cell[nxColLokasi.Index,i].AsString;
          tsd.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtySO.Index, i].AsFloat;
          tsd.Post;
        end;

        dm.zConn.Commit;

        f := TfrmLapUmum.Create(Self);
        f.zqrSPBBPlt.Close;
        f.zqrSPBBPlt.ParamByName('no_so').AsString := cxtNoTrans.Text;
        f.zqrSPBBPlt.Open;
        f.rptSPBB_PLT.ShowReport(True);
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

procedure TFrmPenerimaanPlt.btnCariCustClick(Sender: TObject);
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
    cxLUCust.EditValue := fKode.AsString;
  end;
  f.Release;
  cxLUCust.SetFocus;
end;

procedure TFrmPenerimaanPlt.pnlMemoExit(Sender: TObject);
begin
  pnlMemo.Visible := False;
end;

procedure TFrmPenerimaanPlt.NxTextColumn4ButtonClick(Sender: TObject);
begin
  cxMemo.Lines.Text := nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString;
  pnlMemo.Visible := True;
  pnlMemo.SetFocus;
end;

procedure TFrmPenerimaanPlt.btnSimpanKetClick(Sender: TObject);
begin
  if nxGrd.Cell[CKD_BRG,nxGrd.SelectedRow].AsString <> '' then
    nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString := cxMemo.Lines.Text;
  cxMemo.Lines.Text := '';
  pnlMemo.Visible := False;
end;

procedure TFrmPenerimaanPlt.btnBatalMemoClick(Sender: TObject);
begin
  inherited;
  pnlMemo.Visible := False;
end;

procedure TFrmPenerimaanPlt.cxMemoExit(Sender: TObject);
begin
  inherited;
  btnSimpanKetClick(nil);
end;

procedure TFrmPenerimaanPlt.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  fw := TfrmWait.Create(self);
  fw.Show;
  Self.Enabled := False;
end;

procedure TFrmPenerimaanPlt.idSMTPWorkEnd(ASender: TObject;
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
  Screen.Cursor := crDefault;
  MsgBox('Email Sales Order berhasil dikirim.');
end;

procedure TFrmPenerimaanPlt.btnCariBrgClick(Sender: TObject);
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

procedure TfrmPenerimaanPlt.btnPostingClick(Sender: TObject);
var
  q, qd, qh, th, tbl_mo: TZQuery;
  b: Boolean;
  tb, tbd: TZTable;
  sNoMO: string;
begin
  q := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('SO Peletan ini belum disimpan.');
  end
  else begin
    if q.FieldByName('f_posted').AsInteger = 1 then begin
      MsgBox('SO Peletan sudah di posting');
    end
    else begin

      // cek apakah masih ada harga yang kosong
      qd := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' AND harga = 0',
        [cxtNoTrans.Text]);
      if not qd.IsEmpty then begin
        MsgBox('Masih ada harga yang kosong.');
      end
      else begin
        nxGrd.Parent := Panel1;
        nxGrd.Top := 40;
        nxGrd.Left := 16;
        Panel1.Visible := True;
        Panel1.BringToFront;
        Abort;

        Screen.Cursor := crSQLWait;
        
        qd.Close;
        qd := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''',[cxtNoTrans.Text]);

        //th := OpenTbl('tbl_history');
        //tbl_mo := OpenTbl('tbl_mo');

        try
          dm.zConn.StartTransaction;

          while not qd.Eof do begin
            th := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[qd.FieldByName('no_bukti').AsString]);
            th.Insert;
            th.FieldByName('no_bukti').AsString := qd.FieldByName('no_bukti').AsString;
            th.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            th.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            th.FieldByName('kode_brg').AsString := qd.FieldByName('kode_brg').AsString;
            th.FieldByName('tipe').AsString := 'IN_';
            th.FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
            th.FieldByName('satuan').AsString := 'KG';
            th.FieldByName('gudang').AsString := 'G01';
            th.FieldByName('user').AsString := Aplikasi.NamaUser;
            th.FieldByName('user_dept').AsString := aplikasi.UserDept;
            th.FieldByName('no_so').AsString := qd.FieldByName('no_bukti').AsString;
            th.FieldByName('tgl_input').AsDateTime := Aplikasi.ServerTime;
            th.Post;
            th.Close;

            dm.zConn.ExecuteDirect('UPDATE tbl_barang SET stok = stok + ' +
              StringReplace(FloatToStr(qd.FieldByName('qty').AsFloat),',','.',[rfReplaceAll]) +
              ' WHERE kode = ' + qd.FieldByName('kode_brg').AsString);

            dm.zConn.ExecuteDirect('UPDATE tbl_barang_det SET stok = stok + ' +
              StringReplace(FloatToStr(qd.FieldByName('qty').AsFloat),',','.',[rfReplaceAll]) +
              ' WHERE kode_brg = ' + qd.FieldByName('kode_brg').AsString + ' AND kode_gdg = ''G01''');

            sNoMO := GetLastFak('master_order');
            UpdateFaktur(Copy(sNoMO,1,7));
            tbl_mo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
            with tbl_mo do begin
              Insert;
              FieldByName('no_mo').AsString := sNoMO;
              FieldByName('no_so').AsString := cxtNoTrans.Text;
              FieldByName('kode_brg').AsString := qd.FieldByName('kode_brg').AsString;
              FieldByName('qty_mo').AsFloat := qd.FieldBYName('qty').AsFloat;
              FieldByName('qty_so').AsFloat := qd.FieldBYName('qty').AsFloat;
              FieldByName('lokasi').AsString := qd.FieldByName('lokasi').AsString;
              FieldByName('kondisi').AsString := qd.FieldByName('kondisi').AsString;
              Post;
            end;
            tbl_mo.Close;

            qd.Next;
          end;

          dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_posted = 1 ' +
            'WHERE no_bukti = ''' + cxtNoTrans.Text + '''');

          //th.Close;
          //tbl_mo.Close;  

          dm.zConn.Commit;

          Screen.Cursor := crDefault;

          MsgBox('SO Peletan sudah berhasil di posting.');

          SendEmailSO(cxtNoTrans.Text, '');

          ClearAll;

        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            Screen.Cursor := crDefault;
            dm.zConn.Rollback;
          end;
        end;

      end;
      qd.Close;       

    end;
  end;
  q.Close;


end;

procedure TfrmPenerimaanPlt.nxGrdBeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
  inherited;
  if ACol = nxColHarga.Index then begin
    if nxGrd.Cell[nxColFlag.Index, ARow].AsString = '1' then Accept := False;
  end;
end;

procedure TfrmPenerimaanPlt.cxLUCustPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
begin
  try
    if Self.Jenis <> 'edit' then begin
      cxtSubject.Text := 'SO Baru (' + cxtNoTrans.Text +
      ' - ' + cxLUCust.Text + ')';
    end;
    q := OpenRS('SELECT kelompok FROM tbl_customer WHERE kode = ''%s''',[cxLUCust.EditValue]);
    cxtKelompok.Text := q.FieldByName('kelompok').AsString;
    q.Close;
    
  except
  end;
end;

procedure TfrmPenerimaanPlt.btnBatalPostingClick(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
  nxGrd.Parent := pnlTengah;
  nxGrd.Top := 269;
  nxGrd.Left := 16;
end;

procedure TfrmPenerimaanPlt.btnPosting2Click(Sender: TObject);
var
  sNoMO: string;
  qd, th, tbl_mo: TZQuery;
begin

  Screen.Cursor := crSQLWait;

  qd := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''',[cxtNoTrans.Text]);

  try
    dm.zConn.StartTransaction;

    while not qd.Eof do begin
      th := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[qd.FieldByName('no_bukti').AsString]);
      th.Insert;
      th.FieldByName('no_bukti').AsString := qd.FieldByName('no_bukti').AsString;
      th.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      th.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      th.FieldByName('kode_brg').AsString := qd.FieldByName('kode_brg').AsString;
      th.FieldByName('tipe').AsString := 'IN_';
      th.FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
      th.FieldByName('satuan').AsString := 'KG';
      th.FieldByName('gudang').AsString := 'G01';
      th.FieldByName('user').AsString := Aplikasi.NamaUser;
      th.FieldByName('user_dept').AsString := aplikasi.UserDept;
      th.FieldByName('no_so').AsString := qd.FieldByName('no_bukti').AsString;
      th.FieldByName('tgl_input').AsDateTime := Aplikasi.ServerTime;
      th.Post;
      th.Close;

      dm.zConn.ExecuteDirect('UPDATE tbl_barang SET stok = stok + ' +
        StringReplace(FloatToStr(qd.FieldByName('qty').AsFloat),',','.',[rfReplaceAll]) +
        ' WHERE kode = ' + qd.FieldByName('kode_brg').AsString);

      dm.zConn.ExecuteDirect('UPDATE tbl_barang_det SET stok = stok + ' +
        StringReplace(FloatToStr(qd.FieldByName('qty').AsFloat),',','.',[rfReplaceAll]) +
        ' WHERE kode_brg = ' + qd.FieldByName('kode_brg').AsString + ' AND kode_gdg = ''G01''');

      sNoMO := GetLastFak('master_order');
      UpdateFaktur(Copy(sNoMO,1,7));
      tbl_mo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
      with tbl_mo do begin
        Insert;
        FieldByName('no_mo').AsString := sNoMO;
        FieldByName('no_so').AsString := cxtNoTrans.Text;
        FieldByName('kode_brg').AsString := qd.FieldByName('kode_brg').AsString;
        FieldByName('qty_mo').AsFloat := qd.FieldBYName('qty').AsFloat;
        FieldByName('qty_so').AsFloat := qd.FieldBYName('qty').AsFloat;
        FieldByName('lokasi').AsString := qd.FieldByName('lokasi').AsString;
        FieldByName('kondisi').AsString := qd.FieldByName('kondisi').AsString;
        Post;
      end;
      tbl_mo.Close;

      qd.Next;
    end;

    dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_posted = 1 ' +
      'WHERE no_bukti = ''' + cxtNoTrans.Text + '''');

    //th.Close;
    //tbl_mo.Close;  

    dm.zConn.Commit;

    Screen.Cursor := crDefault;

    MsgBox('SO Peletan sudah berhasil di posting.');

    nxGrd.Parent := pnlTengah;
    nxGrd.Top := 269;
    nxGrd.Left := 16;
    Panel1.Visible := False;

    SendEmailSO(cxtNoTrans.Text, '');

    ClearAll;

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      Screen.Cursor := crDefault;
      dm.zConn.Rollback;
    end;
  end;
end;

end.
