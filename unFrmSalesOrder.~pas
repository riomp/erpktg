unit unFrmSalesOrder;

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
  IdSSL, IdSSLOpenSSL, IdText, IdAttachmentFile, ShellAPI;

type
  TfrmSalesOrder = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColQtySO: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
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
    cxLabel4: TcxLabel;
    cxtSC: TcxTextEdit;
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
    NxTextColumn4: TNxTextColumn;
    idSMTP: TIdSMTP;
    btnCariBrg: TButton;
    nxColED: TNxHyperlinkColumn;
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
    procedure Button1Click(Sender: TObject);
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
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
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
  frmPO: TFrmSalesOrder;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unThreadKirimEmail;

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

procedure TFrmSalesOrder.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmSalesOrder.FormCreate(Sender: TObject);
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
  cxdTglTrs.Properties.ReadOnly := Not aplikasi.UbahTglTrs;

  cxtNoTrans.Text := GetLastFak('sales_order');

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
    '"LAIN-LAIN (AFALAN)",' +               // 12
    '"SELANG PE FLOW HOSE",' +               // 13
    '"TAMPAR / ROPE"';                       // 14
  cxCmbKategoriSO.ItemIndex := 0;
  
  cxCmbKategoriSO2.Properties.Items.CommaText :=
    cxCmbKategoriSO.Properties.Items.CommaText;
  cxCmbKategoriSO3.Properties.Items.CommaText :=
    cxCmbKategoriSO.Properties.Items.CommaText;

  lst := TStringList.Create;
  lst.Add('boby@sdp.mail');
  lst.Add('vivi@sdp.mail');
  lst.Add('felgitotema@sdp.mail');

  //19-10-2015 -> email pak ferry tidak masuk SO
  //lst.Add('ferry@sdp.mail');
  
  lst.Add('sunanto@sdp.mail');
  //lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');

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

  cxLUCust.Properties.DropDownWidth := 2500;
end;

procedure TFrmSalesOrder.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmSalesOrder.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmSalesOrder.NxEdit1DblClick(Sender: TObject);
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

        {
        if q.FieldByName('f_ed').AsInteger = 1 then begin
          if q.FieldByName('ed').IsNull then begin
            MsgBox('Engineering Drawing untuk barang ini belum di tentukan. ' + Chr(10) + Chr(13) +
              'Mohon konfirmasi dengan pihak QAC untuk setting ED.');
            q.Close;
            Abort;
          end;
        end;
        }

        nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
        nxGrd.Cell[CQTY,ARow].AsFloat := 1;
        nxGrd.Cell[CSTOK_G02,ARow].AsFloat := GetStokGudang(fKode.AsString, 'G01');
        
        if q.FieldByName('f_ed').AsInteger = 1 then
          nxGrd.Cell[nxColED.Index,ARow].AsString := 'Lihat ED';

        nxGrd.SelectCell(CQTY,ARow);
        HitungTotal;
      end;
    end;
  end;
end;

procedure TFrmSalesOrder.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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

procedure TFrmSalesOrder.HitungTotal;
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

procedure TFrmSalesOrder.ClearAll;
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
  chkSdhKirimEmail.Checked := False;
  cxChkKirimEmail.Checked := True;
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
  mLstDaftarEmail.Clear;
end;

procedure TFrmSalesOrder.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('sales_order');
  cxlNoBukti.Text := '';
  Self.Jenis := 'tambah';
end;

procedure TFrmSalesOrder.btnSimpanClick(Sender: TObject);
var
  //in_head, in_det, barang,
  //barang_det, hist, tbl_mo, tbl_tmp: TZTable;
  tbl_tmp: TZTable;
  sNoTrs, sNoMO: string;
  i: integer;
  b: Boolean;
  q, qCekMO, in_head, in_det, barang_det, barang, hist,
  tbl_mo: TZQuery;
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
  //else if cxCmbPembayaran.Text = '' then begin
  //  MsgBox('Jenis pembayaran harus diisi.');
  //  cxCmbPembayaran.SetFocus;
  //end
  //else if (Trim(cxtPO.Text) = '') and (Trim(cxtSC.Text) = '') then begin
  //  MsgBox('Nomer PO atau SC harus diisi.');
  //  cxtPO.SetFocus;
  //end
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

    // cek apakah SO sudah ada, jika sudah ada maka edit
    //q := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
    //  [cxtNoTrans.Text]);
    //if not q.IsEmpty then
    //  Self.Jenis := 'edit'
    //else
    //  Self.Jenis := '';
    //q.Close;

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

    i := unTools.QBox(Self, 'Pastikan sekali lagi tanggal required sudah benar.' + Chr(10) + Chr(13) +
      'Lanjutkan penyimpanan SO ?', 'Tgl. Required');
    if i = IDNO then Abort;

    try
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans.Text;
      end
      else begin
        sNoTrs := GetLastFak('sales_order');
        UpdateFaktur(Copy(sNoTrs,1,7));
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
      in_head := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
        [sNoTrs]);

      //in_det := OpenTbl('tbl_so_det');
      in_det := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''',
        [sNoTrs]);

      //tbl_mo := OpenTbl('tbl_mo');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('kode_customer').AsString := zqrCust.FieldByName('kode').AsString;
      in_head.FieldByName('kategori_so').AsString := cxCmbKategoriSO.Text;
      in_head.FieldByName('po#').AsString := cxtPO.Text;
      in_head.FieldByName('sc#').AsString := cxtSC.Text;
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

      //if chkComplete.Checked then
      //  in_head.FieldByName('f_completed').AsInteger := 1
      //else
      //  in_head.FieldByName('f_completed').AsInteger := 0;

      in_head.FieldByName('kategori1').AsString := cxCmbKategoriSO.Text;
      in_head.FieldByName('kategori2').AsString := cxCmbKategoriSO2.Text;
      in_head.FieldByName('kategori3').AsString := cxCmbKategoriSO3.Text;

      if Self.Jenis = 'edit' then begin
        in_head.FieldByName('user_edit').AsString := aplikasi.NamaUser;
        in_head.FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
        in_head.FieldByName('host').AsString := GetHostName2;
      end;

      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;

        // jika edit maka simpan qty yang lama
        if Self.Jenis = 'edit' then begin
          if tbl_tmp.Locate('kode_brg',nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger,[]) then
            in_det.FieldByName('qty_lama').AsFloat := tbl_tmp.FieldByName('qty').AsFloat;
        end;

        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('notes').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);
        in_det.FieldByName('ket_harga').AsString :=
          UpperCase(nxGrd.Cell[CKET2,i].AsString);

        if Self.Jenis = 'edit' then begin

          qCekMO := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' ' +
            'AND kode_brg = %s',
            [sNoTrs, nxGrd.Cell[nxColKodeBrg.Index,i].AsString]
          );

          if tbl_tmp.Locate('kode_brg',nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger,[]) then begin

            if tbl_tmp.FieldByName('qty').AsFloat <> nxGrd.Cell[nxColQtySO.Index,i].AsFloat then begin

              // update qty lama tbl_mo
              if tbl_tmp.Locate('kode_brg',nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger,[]) then begin
                qCekMO.Edit;
                qCekMO.FieldByName('qty_mo').AsFloat := nxGrd.Cell[nxColQtySO.Index,i].AsFloat;
                qCekMO.FieldByName('qty_so').AsFloat := nxGrd.Cell[nxColQtySO.Index,i].AsFloat;
                qCekMO.FieldByName('qty_lama').AsFloat := tbl_tmp.FieldByName('qty').AsFloat;
                qCekMO.FieldByName('jml_revisi').AsInteger := qCekMO.FieldByName('jml_revisi').AsInteger + 1;
                qCekMO.Post;
              end;

              // update jml_revisi tbl_so_det
              in_det.FieldByName('jml_revisi').AsInteger :=
                in_det.FieldByName('jml_revisi').AsInteger + 1;
            end;
          end;

          qCekMO.Close;
          qCekMO := nil;
        end;

        // jika pengeditan dari form SO 
        if Self.Jenis = 'edit' then begin
          in_det.FieldByName('user_edit').AsString := Aplikasi.NamaUser;
          in_det.FieldByName('tgl_jam_edit').AsDateTime := aplikasi.NowServer;
          in_det.FieldByName('jenis_edit').AsString := 'SO';
        end;

        in_det.Post;

        if Self.Jenis <> 'edit' then begin
          sNoMO := GetLastFak('master_order');
          UpdateFaktur(Copy(sNoMO,1,7));

          tbl_mo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''', [sNoMO]);

          with tbl_mo do begin
            Insert;
            FieldByName('no_mo').AsString := sNoMO;
            FieldByName('no_so').AsString := sNoTrs;
            FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
            FieldByName('qty_mo').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
            FieldByName('qty_so').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
            Post;
          end;
        end;
      end;

      in_head.Close;
      in_det.Close;

      //if Self.Jenis <> 'edit' then
      //  UpdateFaktur(Copy(sNoTrs,1,7));

      if Self.Jenis = 'edit' then begin
        try

          // masukkan item baru jika ada
          q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
            'AND kode_brg NOT IN (' +
            ' SELECT kode_brg FROM tbl_mo WHERE no_so = ''%s'')',
            [sNoTrs, sNoTrs]);

          //tbl_mo := OpenTbl('tbl_mo');

          if not q.IsEmpty then begin
            while not q.Eof do begin
              sNoMO := GetLastFak('master_order');
              UpdateFaktur(Copy(sNoMO,1,7));

              tbl_mo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''', [sNoMO]);

              with tbl_mo do begin
                Insert;
                FieldByName('no_mo').AsString := sNoMO;
                FieldByName('no_so').AsString := sNoTrs;
                FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
                FieldByName('qty_mo').AsFloat := q.FieldByName('qty').AsFloat;
                FieldByName('qty_so').AsFloat := q.FieldByName('qty').AsFloat;
                Post;
              end;
              q.Next;
            end;
          end;
          tbl_mo.Close;
          q.Close;

          dm.zConn.ExecuteDirect(
            Format('DELETE FROM tbl_mo WHERE no_so = ''%s'' ' +
              'AND kode_brg NOT IN ' +
              '(SELECT kode_brg FROM tbl_so_det WHERE no_bukti = ''%s'')',
              [sNoTrs, sNoTrs]
            )
          );

          dm.zConn.ExecuteDirect('DROP TABLE tmp_so');
        except
        end;
      end;

      dm.zConn.Commit;
      MsgBox('Transaksi Sales Order sudah disimpan dengan nomer: ' + sNoTrs);

      if Aplikasi.Cabang = 'SBY' then begin
        if cxChkKirimEmail.Checked then
          SendEmailSO(sNoTrs, Self.jenis);
      end;

      mLstDaftarEmail.Clear;
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

procedure TFrmSalesOrder.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
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

procedure TFrmSalesOrder.btnHapusClick(Sender: TObject);
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

procedure TFrmSalesOrder.btnTambahClick(Sender: TObject);
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

  {$DEFINE CEKITEMSAMA}
  {$IFDEF CEKITEMSAMA}
  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end
  else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    {
    if q.FieldByName('f_ed').AsInteger = 1 then begin
      if q.FieldByName('ed').IsNull then begin
        MsgBox('Engineering Drawing untuk barang ini belum di tentukan. ' + Chr(10) + Chr(13) +
          'Mohon konfirmasi dengan pihak QAC untuk setting ED.');
        q.Close;
        Abort;
      end;
    end;
    }

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := cxsQty.Value;
    nxGrd.Cell[CSTOK_G02,ARow].AsFloat :=
      GetStokGudang(sKodeBrg, 'G01');
    nxGrd.Cell[CKET,ARow].Color := clSkyBlue;

    if not q.FieldByName('ed').IsNull then
      nxGrd.Cell[nxColED.Index,ARow].AsString := 'Lihat ED';

    HitungTotal;
    nxGrd.SelectCell(CKD_BRG, nxGrd.LastAddedRow);
    nxGrd.SelectLastRow();

    q.Close;
    nxGrd.AddRow();
  end;
  {$ELSE}

  cxLUBrg.Text := '';
  nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
  q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
    sKodeBrg + '''');

  {
  if q.FieldByName('f_ed').AsInteger = 1 then begin
    if q.FieldByName('ed').IsNull then begin
      MsgBox('Engineering Drawing untuk barang ini belum di tentukan. ' + Chr(10) + Chr(13) +
        'Mohon konfirmasi dengan pihak QAC untuk setting ED.');
      q.Close;
      Abort;
    end;
  end;
  }

  nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
  nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
  nxGrd.Cell[CQTY,ARow].AsFloat := cxsQty.Value;
  nxGrd.Cell[CSTOK_G02,ARow].AsFloat :=
    GetStokGudang(sKodeBrg, 'G01');
  nxGrd.Cell[CKET,ARow].Color := clSkyBlue;

  if not q.FieldByName('ed').IsNull then
    nxGrd.Cell[nxColED.Index,ARow].AsString := 'Lihat ED';

  HitungTotal;
  nxGrd.SelectCell(CKD_BRG, nxGrd.LastAddedRow);
  nxGrd.SelectLastRow();

  q.Close;
  nxGrd.AddRow();

  {$ENDIF}

end;

procedure TFrmSalesOrder.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  {
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
  }  
end;

procedure TFrmSalesOrder.btnEdit2Click(Sender: TObject);
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

  if q.FieldByName('f_email').AsInteger = 1 then
    chkSdhKirimEmail.Checked := True;
  cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
  cxtKeterangan.Text := q.FieldByName('notes').AsString;
  cxCmbPembayaran.Text := q.FieldByName('payment').AsString;
  cxtPO.Text := q.FieldByName('po#').AsString;
  cxtSC.Text := q.FIeldByName('sc#').AsString;
  cxCmbKategoriSO.Text := q.FieldByName('kategori1').AsString;
  cxCmbKategoriSO2.Text := q.FieldByName('kategori2').AsString;
  cxCmbKategoriSO3.Text := q.FieldByName('kategori3').AsString;
  //Self.cxCmbKategoriSOPropertiesChange(cxCMbKategoriSO3);

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
    nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNM_BRG,i].AsString := qBrg.fieldByName('deskripsi').AsString;

    nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[CKET,i].AsString := q.FieldByName('notes').AsString;
    nxGrd.Cell[CSTOK_G02,i].AsFloat := GetStokGudang(
      q.FieldByName('kode_brg').AsString, 'G01');
    Inc(i);
    qBrg.Close;
    q.Next;
  end;
  q.Close;
  nxGrd.AddRow();

  HitungTotal;
end;

procedure TfrmSalesOrder.cxCmbKategoriSOPropertiesChange(Sender: TObject);
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

procedure TFrmSalesOrder.ResetCheckEmail;
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

procedure TfrmSalesOrder.SendEmailSO(sNoBukti: string; jenis: string);
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
      if jenis = 'tambah' then
        email.Subject := 'SO Baru (' + sNoBukti + ' - ' + q.FieldByName('nama').AsString + ')'
      else if jenis = 'edit' then 
        email.Subject := 'SO Revisi (' + sNoBukti + ' - ' + q.FieldByName('nama').AsString + ')';
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

function TfrmSalesOrder.GenerateHTML(sNoBukti: string) : string;
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

procedure TfrmSalesOrder.cxLUCustPropertiesChange(Sender: TObject);
begin
  try
    if Self.Jenis <> 'edit' then begin
      cxtSubject.Text := 'SO Baru (' + cxtNoTrans.Text +
      ' - ' + cxLUCust.Text + ')';
    end;
  except
  end;
end;

procedure TfrmSalesOrder.NxButtonEdit1ButtonClick(Sender: TObject);
var
  i: integer;
begin
  i := nxGrd.SelectedRow;
  nxGrd.Cell[CSTOK_G02,i].AsFloat :=
    GetStokGudang(nxGrd.Cell[CKD_BRG,i].AsString, 'G01');
  nxGrd.SelectCell(CKET,i);
  //MsgBox(FloatToStr(GetStokGudang(nxGrd.Cell[CKD_BRG,i].AsString, 'G01')));
end;

procedure TfrmSalesOrder.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
    //btnTambahClick(nil);
    cxsQty.SetFocus;
  end;
end;

procedure TfrmSalesOrder.cxsQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    btnTambahClick(nil);
    cxsQty.EditValue := 0;
    cxLUBrg.SetFocus;
  end;
end;

procedure TfrmSalesOrder.GetDaftarEmail;
var
  lst: TStringList;
  cmb : TcxComboBox;
  i,j: Integer;
begin
  with mLstDaftarEmail do begin
    Add('boby@sdp.mail');
    Add('vivi@sdp.mail');
    Add('felgitotema@sdp.mail');
    //Add('ferry@sdp.mail');
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
        Add('arsita@sdp.mail');
        Add('isjayatno@sdp.mail');
        //Add('bayu@sdp.mail');
        Add('maria@sdp.mail');
      end
      else if i = 5 then begin
        Add('etik@sdp.mail');
        Add('arsita@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 6 then begin
        Add('etik@sdp.mail');
        Add('arsita@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 7 then begin
        Add('etik@sdp.mail');
        Add('arsita@sdp.mail');
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
      end
      else if i = 13 then begin
        Add('alex@sdp.mail');
        Add('arsita@sdp.mail');
      end
      else if i = 14 then begin
        Add('alex@sdp.mail');
        Add('natalia@sdp.mail');
      end;

    end;
  end;

end;

procedure TfrmSalesOrder.Button1Click(Sender: TObject);
begin
  inherited;
  MsgBox(IntToStr(cxCmbKategoriSO.ItemIndex));
end;

procedure TfrmSalesOrder.btnCariCustClick(Sender: TObject);
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

procedure TfrmSalesOrder.pnlMemoExit(Sender: TObject);
begin
  pnlMemo.Visible := False;
end;

procedure TfrmSalesOrder.NxTextColumn4ButtonClick(Sender: TObject);
begin
  cxMemo.Lines.Text := nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString;
  pnlMemo.Visible := True;
  pnlMemo.SetFocus;
end;

procedure TfrmSalesOrder.btnSimpanKetClick(Sender: TObject);
begin
  if nxGrd.Cell[CKD_BRG,nxGrd.SelectedRow].AsString <> '' then
    nxGrd.Cell[CKET,nxGrd.SelectedRow].AsString := cxMemo.Lines.Text;
  cxMemo.Lines.Text := '';
  pnlMemo.Visible := False;
end;

procedure TfrmSalesOrder.btnBatalMemoClick(Sender: TObject);
begin
  inherited;
  pnlMemo.Visible := False;
end;

procedure TfrmSalesOrder.cxMemoExit(Sender: TObject);
begin
  inherited;
  btnSimpanKetClick(nil);
end;

procedure TfrmSalesOrder.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  fw := TfrmWait.Create(self);
  fw.Show;
  Self.Enabled := False;
end;

procedure TfrmSalesOrder.idSMTPWorkEnd(ASender: TObject;
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

procedure TfrmSalesOrder.btnCariBrgClick(Sender: TObject);
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

procedure TfrmSalesOrder.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  q: TZQuery;
begin
  inherited;
  if ACol = nxColED.Index then begin
    if nxGrd.Cell[nxColED.Index, ARow].AsString <> '' then begin
      q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
      if not q.FieldByName('ed').IsNull then begin
        TBlobField(q.FieldByName('ed')).SaveToFile(aplikasi.AppPath + 'tmp.pdf');
        try
        ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp.pdf'), nil, nil, SW_SHOWNORMAL);
        except
        end;
      end;
      q.Close;
    end;
  end;
end;

end.
