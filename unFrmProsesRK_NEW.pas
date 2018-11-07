unit unFrmProsesRK_NEW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, DB, ZAbstractRODataset, ZDataset, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDropDownEdit, cxMemo, StdCtrls,
  cxSpinEdit, cxMaskEdit, cxCalendar, cxTextEdit, ExtCtrls, RzPanel,
  cxLabel, unThreadKirimEmail, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdMessage, IdText, IdAttachmentFile, cxCheckBox;

type
  TfrmProsesRK_NEW = class(TForm)
    scrollBox: TScrollBox;
    Label2: TLabel;
    Label5: TLabel;
    cxeNoFRK: TcxTextEdit;
    cxeDibuatOleh: TcxTextEdit;
    cxeTanggal: TcxTextEdit;
    cxeStatus: TcxTextEdit;
    cxTglTargetSelesai: TcxDateEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxeNoSO: TcxTextEdit;
    cxeNamaPerusahaan: TcxTextEdit;
    cxeLokasiPasang: TcxTextEdit;
    cxtKodeCust: TcxTextEdit;
    cxdTglPembelian: TcxDateEdit;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxeNamaBrg: TcxTextEdit;
    cxtWarna: TcxTextEdit;
    cxsJmlOrder: TcxSpinEdit;
    btnSimpan: TButton;
    btnBatal: TButton;
    cxmDeskKomplain: TcxMemo;
    cxCmbKategori: TcxComboBox;
    cxLUDiberikanKpd: TcxLookupComboBox;
    cxtEmail: TcxTextEdit;
    cxtBagian: TcxTextEdit;
    zrq: TZReadOnlyQuery;
    dsUserApp: TDataSource;
    cxmVerifikasi: TcxMemo;
    cxmTindakan: TcxMemo;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    btnLihatFoto: TButton;
    grpSmg: TGroupBox;
    cxLabel12: TcxLabel;
    cxmTindakLanjut: TcxMemo;
    cxLabel13: TcxLabel;
    cxtNoSOGanti: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxtNoSJGanti: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxmCatatan: TcxMemo;
    cxLabel16: TcxLabel;
    cxdTglKeputusan: TcxDateEdit;
    cxLabel17: TcxLabel;
    cxCmbStatus: TcxComboBox;
    chkAppMgrTerkait: TCheckBox;
    chkAppMgrQAC: TCheckBox;
    chkAppBDDir: TCheckBox;
    chkAppSalesDir: TCheckBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    chkBrgDiganti: TCheckBox;
    btnSOPengganti: TButton;
    cxtMgrDept: TcxTextEdit;
    cxtMgrEmail: TcxTextEdit;
    cxsJmlKomplain: TcxSpinEdit;
    cxLabel18: TcxLabel;
    chkNotApp: TCheckBox;
    Label3: TLabel;
    cxdTglPengiriman: TcxDateEdit;
    cxLabel19: TcxLabel;
    cxmTindakanInt: TcxMemo;
    idSMTP: TIdSMTP;
    cxChkProsesLKM: TcxCheckBox;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnLihatFotoClick(Sender: TObject);
    procedure btnSOPenggantiClick(Sender: TObject);
    procedure chkBrgDigantiClick(Sender: TObject);
    procedure chkNotAppClick(Sender: TObject);
    procedure chkAppBDDirClick(Sender: TObject);
  private
    mNoRK: string;
    fDeptTerkait: Boolean;
    fMgrTerkait: Boolean;
    fMgrQAC : Boolean;
    fBDDir: Boolean;
    fAppSmg: Boolean;
    fSalesDir: Boolean;
    fView: Boolean;
    procedure SendEmail(lstEmail: TStringList);
    procedure SendEmailLkm;
    procedure UpdateTglSelesai(sNoRK: string);
  public
    property NoRK: string read mNoRK write mNoRK;
    property DeptTerkait: Boolean read fDeptTerkait write fDeptTerkait;
    property MgrTerkait: Boolean read fMgrTerkait write fMgrTerkait;
    property MgrQAC: Boolean read fMgrQAC write fMgrQAC;
    property BDDir: Boolean read fBDDir write fBDDir;
    property AppSmg: Boolean read fAppSmg write fAppSmg;
    property SalesDir: Boolean read fSalesDir write fSalesDir;
    property View: Boolean read fView write fView;
  end;

var
  frmProsesRK_NEW: TfrmProsesRK_NEW;

implementation

uses unAplikasi, unDm, unTools, unFrmDaftarRK, unFrmImageViewerRK, unFrmCariSO, unFrmWait;

{$R *.dfm}

procedure TfrmProsesRK_NEW.FormShow(Sender: TObject);
var
  q, qImg, q2: TZQuery;
  i: Integer;
  sStatus: string;
  tbl: TZTable;
begin

  q := OpenRS('SELECT * FROM tbl_rk WHERE no = ''%s''',
    [mNoRK]);

  grpSmg.Enabled := False;

  if not q.IsEmpty then begin
    cxeNoFRK.Text := mNoRK;
    cxeDibuatOleh.Text := q.FieldByName('dibuat_oleh').AsString;
    cxLUDiberikanKpd.Text := q.FieldByName('diberikan_kepada').AsString;
    cxtEmail.Text := q.FieldByName('email').AsString;
    cxeTanggal.Text := FormatDateTime('dd-MM-yyy',
      q.FieldByName('tanggal').AsDateTime);
    cxeStatus.Text := q.FieldByName('status').AsString;
    cxCmbKategori.Text := q.FieldByName('kategori').AsString;
    cxTglTargetSelesai.Date := q.FieldByName('target_selesai').AsDateTime;
    cxeNoSO.Text := q.FieldByName('no_so').AsString;
    cxtKodeCust.Text := q.FieldByName('kode_cust').AsString;
    cxeNamaPerusahaan.Text := q.FieldByName('nama_cust').AsString;
    cxeLokasiPasang.Text := q.FieldByName('lokasi_pasang').AsString;
    if not q.FieldByName('tgl_pembelian').IsNull then
      cxdTglPembelian.Date := q.FieldByName('tgl_pembelian').AsDateTime;
    if not q.FieldByName('tgl_pengiriman').IsNull then
    cxdTglPengiriman.Date := q.FieldByName('tgl_pengiriman').AsDateTime;
    cxtKodeBrg.Text := q.FieldByName('kode_barang').AsString;
    cxeNamaBrg.Text := q.FieldByName('nama_barang').AsString;
    cxtWarna.Text := q.FieldByName('warna').AsString;
    cxsJmlOrder.Value := q.FieldByName('jml_order').AsInteger;
    cxmDeskKomplain.Text := q.FieldByName('deskripsi_komplain').AsString;
    cxmVerifikasi.Text := q.FieldByName('verifikasi_analisa').AsString;
    cxmTindakan.Text := q.FieldByName('tindakan_perbaikan').AsString;
    cxmTindakanInt.Text := q.FieldByName('tindakan_perbaikan_int').AsString;
    cxmTindakLanjut.Text := q.FieldByName('tindak_lanjut').AsString;
    cxtNoSOGanti.Text := q.FieldByName('no_so_pengganti').AsString;
    cxtNoSJGanti.Text := q.FieldByName('no_sj_pengganti').AsString;
    cxmCatatan.Text := q.FieldByName('catatan_tambahan').AsString;

    if not q.FieldByName('tgl_keputusan').IsNull then
      cxdTglKeputusan.Date := q.FieldByName('tgl_keputusan').AsDateTime;

    cxtMgrDept.Text := q.FieldByName('mgr_dept').AsString;
    cxtMgrEmail.Text := q.FieldByName('mgr_email').AsString;

    if q.FieldByName('f_ganti').AsInteger = 1 then begin
      chkBrgDiganti.Checked := True;
    end;

    cxsJmlKomplain.Value := q.FieldBYName('qty_komplain').AsFloat;

    // get images
    qImg := OpenRS('SELECT COUNT(*) AS jml FROM tbl_img_rk WHERE no_rk = ''%s''',
      [cxeNoFRK.Text]);
    if not qImg.IsEmpty then
      cxLabel18.Caption := 'Jumlah Foto : ' + qImg.FieldByName('jml').AsString;
    qImg.Close;
    // eof get images

    {
    if fDeptTerkait = False then begin
      cxmTindakLanjut.Text := q.FieldByName('tindak_lanjut').AsString;
      cxdTglKeputusan.Date := q.FieldByName('tgl_keputusan').AsDateTime;
      cxtNoSOGanti.Text := q.FieldByName('no_so_pengganti').AsString;
      cxtNoSJGanti.Text := q.FieldByName('no_sj_pengganti').AsString;
      cxmCatatan.Text := q.FieldByName('catatan_tambahan').AsString;
      cxCmbStatus.Text := q.FieldByName('status').AsString;
    end;
    }

    // jika hanya view maka disable semua
    if fView then begin
      cxmVerifikasi.Properties.ReadOnly := True;
      cxmVerifikasi.Style.Color := clMoneyGreen;
      cxmTindakan.Properties.ReadOnly := True;
      cxmTindakanInt.Properties.ReadOnly := True;
      cxmTindakan.Style.Color := clMoneyGreen;
      cxmTindakanInt.Style.Color := clMoneyGreen;
      grpSmg.Enabled := False;
      btnSimpan.Enabled := False;
      GroupBox3.Enabled := False;
      Abort;
    end;

    if fDeptTerkait then begin
      if q.FieldByName('f_mgr_area').AsInteger = 1 then begin
        cxmVerifikasi.Properties.ReadOnly := True;
        cxmTindakan.Properties.ReadOnly := True;
        cxmTindakanInt.Properties.ReadOnly := True;
        cxmVerifikasi.Style.Color := clMoneyGreen;
        cxmTindakan.Style.Color := clMoneyGreen;
        cxmTindakanInt.Style.Color := clMoneyGreen;
        btnSimpan.Enabled := False;
      end;
      if Aplikasi.UserDept = 'QAC' then begin
        cxmVerifikasi.Properties.ReadOnly := False;
        cxmTindakan.Properties.ReadOnly := False;
        cxmTindakanInt.Properties.ReadOnly := False;
        cxmVerifikasi.Style.Color := clWindow;
        cxmTindakan.Style.Color := clWindow;
        cxmTindakanInt.Style.Color := clWindow;
        btnSimpan.Enabled := True;
      end;
    end;

    if fMgrTerkait then begin
      if q.FieldByName('f_mgr_qac').AsInteger = 1 then begin
        cxmVerifikasi.Properties.ReadOnly := True;
        cxmTindakan.Properties.ReadOnly := True;
        cxmTindakanInt.Properties.ReadOnly := True;
        cxmVerifikasi.Style.Color := clMoneyGreen;
        cxmTindakan.Style.Color := clMoneyGreen;
        cxmTindakanInt.Style.Color := clMoneyGreen;
        chkAppMgrTerkait.Checked := True;
        chkAppMgrTerkait.Enabled := False;
        btnSimpan.Enabled := False;
      end;
      if q.FieldByName('f_mgr_area').AsInteger = 1 then begin
        chkAppMgrTerkait.Checked := True;
        chkAppMgrTerkait.Enabled := False;
      end;
    end;

    if fMgrQAC then begin
      if q.FieldByName('f_director').AsInteger = 1 then begin
        cxmVerifikasi.Properties.ReadOnly := True;
        cxmTindakan.Properties.ReadOnly := True;
        cxmTindakanInt.Properties.ReadOnly := True;
        cxmVerifikasi.Style.Color := clMoneyGreen;
        cxmTindakan.Style.Color := clMoneyGreen;
        cxmTindakanInt.Style.Color := clMoneyGreen;
        chkAppMgrQAC.Checked := True;
        chkAppMgrQAC.Enabled := False;
        btnSimpan.Enabled := False;
      end;
      if q.FieldByName('f_mgr_qac').AsInteger = 1 then begin
        chkAppMgrQAC.Checked := True;
        chkAppMgrQAC.Enabled := False;
      end;
    end;

    if fBDDir then begin
      if q.FieldByName('f_director2').AsInteger = 1 then begin

        {
        cxmVerifikasi.Properties.ReadOnly := True;
        cxmTindakan.Properties.ReadOnly := True;
        cxmTindakanInt.Properties.ReadOnly := True;
        cxmVerifikasi.Style.Color := clMoneyGreen;
        cxmTindakan.Style.Color := clMoneyGreen;
        cxmTindakanInt.Style.Color := clMoneyGreen;
        }

        cxmVerifikasi.Properties.ReadOnly := False;
        cxmTindakan.Properties.ReadOnly := False;
        cxmTindakanInt.Properties.ReadOnly := False;

        chkAppBDDir.Checked := True;
        chkAppBDDir.Enabled := False;
        btnSimpan.Enabled := False;
      end;
      if q.FieldByName('f_director').AsInteger = 1 then begin
        chkAppBDDir.Checked := True;
        chkAppBDDir.Enabled := False;
      end;
    end;

    if fMgrTerkait then
      chkAppMgrTerkait.Visible := True;

    if fMgrQAC then
      chkAppMgrQAC.Visible := True;

    if fAppSmg then begin
      cxmTindakLanjut.Properties.ReadOnly := True;
      cxmTindakLanjut.Style.Color := clMoneyGreen;
      grpSmg.Enabled := True;
      cxmVerifikasi.Properties.ReadOnly := True;
      cxmTindakan.Properties.ReadOnly := True;
      cxmTindakanInt.Properties.ReadOnly := True;
      cxmVerifikasi.Style.Color := clMoneyGreen;
      cxmTindakan.Style.Color := clMoneyGreen;
      cxmTindakanInt.Style.Color := clMoneyGreen;
    end;

    if fBDDir then begin
      //cxmVerifikasi.Properties.ReadOnly := True;
      //cxmTindakan.Properties.ReadOnly := True;
      //cxmVerifikasi.Style.Color := clMoneyGreen;
      //cxmTindakan.Style.Color := clMoneyGreen;
      chkAppBDDir.Visible := True;
      chkNotApp.Visible := True;
    end;

    if fSalesDir then begin
      chkAppSalesDir.Visible := True;
      grpSmg.Enabled := True;
      btnSOPengganti.Enabled := False;
      cxtNoSJGanti.Properties.ReadOnly := True;
      cxtNoSJGanti.Style.Color := clMoneyGreen;
      cxmCatatan.Properties.ReadOnly := True;
      cxmCatatan.Style.Color := clMoneyGreen;
      if q.FieldByName('f_director2').AsInteger = 1 then begin
        chkAppSalesDir.Checked := True;
        chkAppSalesDir.Enabled := False;
      end;
    end;

    // jika selesai maka tidak bisa di edit
    if cxeStatus.Text = 'CLOSED' then begin
      cxmVerifikasi.Properties.ReadOnly := True;
      cxmTindakan.Properties.ReadOnly := True;
      cxmTindakanInt.Properties.ReadOnly := True;
      cxmTindakLanjut.Properties.ReadOnly := True;
      cxtNoSOGanti.Properties.ReadOnly := True;
      cxtNoSJGanti.Properties.ReadOnly := True;
      cxmCatatan.Properties.ReadOnly := True;
      cxdTglKeputusan.Properties.ReadOnly := True;
      cxCmbStatus.Properties.ReadOnly := True;
      btnSimpan.Enabled := False;

      MsgBox('Status Resolusi Komplain sudah SELESAI / CLOSED. ' + Chr(10) + Chr(13) +
        'Resolusi Komplain ini tidak bisa di Edit.');
    end;

    if (aplikasi.UserDept = 'QAC') and (aplikasi.NamaUser = 'FERRY') then begin
      tbl := OpenTbl('tbl_rk');
      if tbl.Locate('no', cxeNoFRK.Text, [loCaseInsensitive]) then begin
        sStatus := tbl.FieldByName('status').AsString;
        if sStatus <> 'CLOSED' then begin
          cxmVerifikasi.Properties.ReadOnly := False;
          cxmTindakan.Properties.ReadOnly := false;
          cxmTindakanInt.Properties.ReadOnly := False;
          cxmVerifikasi.Style.Color := clWhite;
          cxmTindakan.Style.Color := clWhite;
          cxmTindakanInt.Style.Color := clWhite;
        end;
      end;
      tbl.Close;
    end;

  end;

  // get jumlah komplain
  //if cxeNamaPerusahaan.Text <> '' then begin
  //  q2 := OpenRS('SELECT f_get_jml_komplain(''' + cxeNamaPerusahaan.Text + ''') AS jml');
  //  cxsJmlKomplain.Value := q2.FieldByName('jml').AsInteger;
  //  q2.Close;
  //end;

  q.Close;


end;

procedure TfrmProsesRK_NEW.FormCreate(Sender: TObject);
begin
  //self.Refresh;
  //scrollBox.Refresh;
  scrollBox.VertScrollBar.Position := 0;

  cxeNoFRK.Text := GetLastFak('frk');
  cxeDibuatOleh.Text := Aplikasi.NamaUser;

  cxeTanggal.Text := FormatDateTime('dd-MM-yyyy',
    Aplikasi.TanggalServer);

  cxCmbKategori.Properties.Items.Add('HARGA');
  cxCmbKategori.Properties.Items.Add('LAIN-LAIN');
  cxCmbKategori.Properties.Items.Add('MUTU PRODUKSI');
  cxCmbKategori.Properties.Items.Add('PELAYANAN');

  fDeptTerkait := False;
  fMgrTerkait := False;
  fBDDir := False;
  fAppSmg := False;
  fSalesDir := False;
  fView := False;

  chkAppMgrQAC.Top := chkAppMgrTerkait.Top;
  chkAppMgrQAC.Left := chkAppMgrTerkait.Left;
  chkAppBDDir.Top := chkAppMgrTerkait.Top;
  chkAppBDDir.Left := chkAppMgrTerkait.Left;
  chkAppSalesDir.Top := chkAppMgrTerkait.Top;
  chkAppSalesDir.Left := chkAppMgrTerkait.Left;

  { 22-02-2016 -> sesuai dengan request bu vivi
  if aplikasi.NamaUser = 'VIVI' then begin
    cxChkProsesLKM.Enabled := True;
  end else begin
    cxChkProsesLKM.Enabled := False;
  end;
  }
end;

procedure TfrmProsesRK_NEW.btnSimpanClick(Sender: TObject);
var
  tbl, tbl_lkm: TZTable;
  email_penerima, sNoTrans: string;
  lstEmailPenerima: TStringList;

  //email: ThreadKirimEmail;
  email: TIdMessage;

  q, qbrg, qemail, qretur, tbl_l: TZQuery;
  lstBody: TStringList;
  i: Integer;
  sBagian, sDibuatOleh,
    sStatus, sql, sKetNotApp: string;
  //f: TfrmRKNotApp;
  fw: TfrmWait;
  bdy: TIdText;
  tmp: String;
begin

  if Trim(cxmVerifikasi.Text) = '' then  begin
    MsgBox('Verifikasi Analisa Produk harus diisi.');
    cxmVerifikasi.SetFocus;
  end
  else if Trim(cxmTindakan.Text) = '' then begin
    MsgBox('Tindakan perbaikan harus diisi.');
    cxmTindakan.SetFocus;
  end
  else begin

    if fSalesDir then
      if Trim(cxmTindakLanjut.Text) = '' then begin
        MsgBox('Tindak Lanjut Komplain Customer harus diisi.');
        cxmTindakLanjut.SetFocus;
        Abort;
      end;

    if fMgrTerkait then
      if not chkAppMgrTerkait.Checked then begin
        MsgBox('Approval Resolusi Komplain belum dilakukan.');
        Abort;
      end;

    if fMgrQAC then
      if not chkAppMgrQAC.Checked then begin
        MsgBox('Approval Resolusi Komplain belum dilakukan.');
        Abort;
      end;

    {
    sKetNotApp := '';
    if (fBDDir) and (chkNotApp.Checked)  then begin
      f := TfrmRKNotApp.Create(Self);
      f.ShowModal;
      if f.Keterangan <> '' then
        sKetNotApp := f.Keterangan
      else begin
        MsgBox('Keterangan Tidak Approval harus diisi.');
        f.Release;
        Abort;
      end;
      f.Release;
    end;
    }


    if fBDDir then
      if not chkNotApp.Checked then begin
        if not chkAppBDDir.Checked then begin
          MsgBox('Approval Resolusi Komplain belum dilakukan.');
          Abort;
        end;
      end;

    if fSalesDir then
      if not chkAppSalesDir.Checked then begin
        MsgBox('Approval Resolusi Komplain belum dilakukan.');
        Abort;
      end;

    // Cari no retur di tbl_lkm
    if cxChkProsesLKM.Checked then begin
      //ambil no retur dari trspenjualan_det
      tmp := '';
      qretur := OpenRS('SELECT * FROM tbl_trsreturpenj_head WHERE no_ccr = ''%s''', [cxeNoFRK.Text]);
      tmp := qretur.fieldByName('no_bukti').AsString;
      qretur.Close;

      tbl_l := OpenRs('SELECT * FROM tbl_lkm WHERE no_retur = ' + QuotedStr(tmp));
      if not tbl_l.IsEmpty then begin
        MsgBox('No. FRK ini sudah pernah di lkm kan. Uncheck proses LKM.');
        tbl_l.Close;
        Abort;
      end;
      tbl_l.Close;
    end;

    try
      dm.zConn.StartTransaction;

      //insert proses LKM
      sNoTrans := GetLastFak('lkm');
      UpdateFaktur(Copy(sNoTrans,1,8));

      if cxChkProsesLKM.Checked then begin
        tbl_lkm := OpenTbl('tbl_lkm');
        with tbl_lkm do begin
          insert;
          FieldByName('no_bukti').AsString := sNoTrans;
          FieldByName('kode_cust').AsString := Trim(cxtKodeCust.Text);
          FieldByName('no_spk').AsString := '';
          FieldByName('no_so').AsString := Trim(cxeNoSO.Text);
          FieldByName('shift').AsString := '';
          FieldByName('no_mesin').AsString := '';
          FieldByName('kode_produksi').AsString := '';
          FieldByName('no_tag_produksi').AsString := '';
          FieldByName('alokasi_barang').AsString := '';
          FieldByName('jenis_ks').AsString := 'PRODUK TIDAK SESUAI';
          FieldByName('deskripsi_ks').AsString := Trim(cxmDeskKomplain.Text);
          FieldByName('akar_masalah').AsString := Trim(cxmVerifikasi.Text);
          FieldByName('deskripsi_tp').AsString := '';
          FieldByName('app1').AsInteger := 1;
          FieldByName('app2').AsInteger := 1;
          FieldByName('tujuan_ke').AsString := cxtMgrDept.Text;
          FieldByName('tujuan_dept').AsString := cxtBagian.Text;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          FieldByName('status').AsString := 'OPEN';
          FieldByName('user').AsString := Aplikasi.NamaUser;
          FieldByName('user_dept').AsString := aplikasi.UserDept;
          FieldByName('qty').AsFloat := cxsJmlKomplain.Value;
          FieldByName('jenis_input').AsString := 'NON-POE';

          //ambil dari trspenjualan_det
          qretur := OpenRS('SELECT no_bukti FROM tbl_trsreturpenj_head WHERE no_ccr = ''%s''', [cxeNoFRK.Text]);
          FieldByName('no_retur').AsString := qretur.FieldByName('no_bukti').AsString;
          qretur.close;

          //buka query barang
          qbrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''', [cxtKodeBrg.Text]);
          FieldByName('satuan').AsString := qbrg.FieldByName('satuan').AsString;
          FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          FieldByName('kategori_barang').AsString := qbrg.FieldByName('kategori').AsString;
          qbrg.Close;

          //buka query email
          qemail := OpenRS('SELECT * FROM tbl_user WHERE nama = ''%s''', [cxLUDiberikanKpd.Text]);
          FieldByName('dept_terkait').AsString := qemail.FieldByName('user_dept').AsString;
          FieldByName('manager_dept').AsString := cxLUDiberikanKpd.Text;
          FieldByName('manager_email').AsString := qemail.FieldByName('email').AsString;
          qemail.Close;

          // update history, update field no_lkm
          dm.zConn.ExecuteDirect(
            'UPDATE tbl_history SET no_lkm = ' + QuotedStr(sNoTrans) +
            'WHERE no_ccr = ' + QuotedStr(cxeNoFRK.Text) +
            'AND gudang = ''G03'''
          );

          Post;
        end;
      end;

      tbl := OpenTbl('tbl_rk');
      if tbl.Locate('no', cxeNoFRK.Text, [loCaseInsensitive]) then begin
        tbl.Edit;

        sBagian := tbl.FieldByName('bagian').AsString;
        sDibuatOleh := tbl.FieldByName('dibuat_oleh').AsString;

        sStatus := 'PROCESSED';
        if (aplikasi.UserDept = 'QAC') and (aplikasi.NamaUser = 'FERRY') then begin
          tbl.FieldByName('verifikasi_analisa').AsString := Trim(cxmVerifikasi.Text);
          tbl.FieldByName('tindakan_perbaikan').AsString := Trim(cxmTindakan.Text);
          tbl.FieldByName('tindakan_perbaikan_int').AsString := Trim(cxmTindakanInt.Text);
        end;

        if (fDeptTerkait) or (fMgrTerkait) or (fMgrQAC) then begin
          tbl.FieldByName('f_dept_terkait').AsInteger := 1;
          tbl.FieldByName('dt_dept_terkait').AsDateTime := Aplikasi.NowServer;
          tbl.FieldByName('verifikasi_analisa').AsString := Trim(cxmVerifikasi.Text);
          tbl.FieldByName('tindakan_perbaikan').AsString := Trim(cxmTindakan.Text);
          tbl.FieldByName('tindakan_perbaikan_int').AsString := Trim(cxmTindakanInt.Text);
          if fMgrTerkait then begin
            if chkAppMgrTerkait.Checked then begin
              tbl.FieldByName('f_mgr_area').AsInteger := 1;
              tbl.FieldByName('dt_mgr_area').AsDateTime := Aplikasi.NowServer;
            end;
          end;
          if fMgrQAC then begin
            if chkAppMgrQAC.Checked then begin
              tbl.FieldByName('f_mgr_qac').AsInteger := 1;
              tbl.FieldByName('dt_mgr_qac').AsDateTime := Aplikasi.NowServer;
            end;
          end;
        end
        else if (fAppSmg) or (fSalesDir) then begin
          tbl.FieldByName('tindak_lanjut').AsString :=
            Trim(cxmTindakLanjut.Text);
          //tbl.FieldByName('no_so_pengganti').AsString := Trim(cxtNoSOGanti.Text);
          tbl.FieldByName('no_sj_pengganti').AsString := Trim(cxtNoSJGanti.Text);
          tbl.FieldByName('catatan_tambahan').AsString := Trim(cxmCatatan.Text);

          if cxdTglKeputusan.Text <> '' then
            tbl.FieldByName('tgl_keputusan').AsDateTime := cxdTglKeputusan.Date;

          if (chkBrgDiganti.Checked) and
            (cxtNoSOGanti.Text = '') then begin
            tbl.FieldByName('f_ganti').AsInteger := 1;
            tbl.FieldByName('status').AsString := 'OPEN';
            sStatus := 'OPEN';
          end;

          if fAppSmg then begin
            //08-09-2014
            //if (chkBrgDiganti.Checked) and
            //  (cxtNoSOGanti.Text <> '') then begin

              if chkBrgDiganti.Checked then
                tbl.FieldByName('f_ganti').AsInteger := 1
              else
                tbl.FieldByName('f_ganti').AsInteger := 0;

              tbl.FieldByName('no_so_pengganti').AsString := cxtNoSOGanti.Text;
              tbl.FieldByName('no_sj_pengganti').AsString := cxtNoSJGanti.Text;

              if Trim(cxmTindakLanjut.Text) <> '' then begin
                tbl.FieldByName('status').AsString := 'CLOSED';
                tbl.FieldByName('tgl_keputusan').AsDateTime :=
                  Aplikasi.TanggalServer;
                sStatus := 'CLOSED';
              end
            //  else
            //    sStatus := 'PROCESSED';
            //end;

            // 08-09-2014
            //if (not chkBrgDiganti.Checked) then begin
            //  tbl.FieldByName('f_ganti').AsInteger := 0;
              //if Trim(cxmTindakLanjut.Text) = '' then
              //  sStatus := 'PROCESSED'
              //else
              //sStatus := 'CLOSED';
            //end;
          end;
        end;

        tbl.FieldByName('status').AsString := sStatus;
        if sStatus = 'CLOSED' then
          tbl.FieldByName('tgl_selesai').AsDateTime := Aplikasi.NowServer;

        if fBDDir then begin

          tbl.FieldByName('verifikasi_analisa').AsString := Trim(cxmVerifikasi.Text);
          tbl.FieldByName('tindakan_perbaikan').AsString := Trim(cxmTindakan.Text);
          tbl.FieldByName('tindakan_perbaikan_int').AsString := Trim(cxmTindakanInt.Text);

          if sKetNotApp = '' then begin
            tbl.FieldByName('f_director').AsInteger := 1;
            tbl.FieldByName('dt_director').AsDateTime := Aplikasi.NowServer;
          end
          else begin
            tbl.FieldByName('f_dept_terkait').AsInteger := 0;
            tbl.FieldByName('f_mgr_area').AsInteger := 0;
            tbl.FieldByName('f_mgr_qac').AsInteger := 0;
            tbl.FieldByName('ket_notapp').AsString := sKetNotApp;
            tbl.FieldByName('verifikasi_analisa').AsString :=
              cxmVerifikasi.Text;
            tbl.FieldByName('tindakan_perbaikan').AsString :=
              cxmTindakan.Text;
            tbl.FieldByName('tindakan_perbaikan_int').AsString :=
              cxmTindakanInt.Text;
          end;
        end;

        if fSalesDir then begin
          tbl.FieldByName('f_director2').AsInteger := 1;
          tbl.FieldByName('dt_director2').AsDateTime := Aplikasi.NowServer;

          tbl.FieldByName('verifikasi_analisa').AsString :=
            cxmVerifikasi.Text;
          tbl.FieldByName('tindakan_perbaikan').AsString :=
            cxmTindakan.Text;
          tbl.FieldByName('tindakan_perbaikan_int').AsString :=
            cxmTindakanInt.Text;

        end;

        tbl.Post;
      end;

      dm.zConn.Commit;

      if cxChkProsesLKM.Checked then begin

        idSMTP.AuthType := satNone;
        idSMTP.Host := aplikasi.ServerSMTP;
        idSMTP.Port     := 25;
        idSMTP.UserName := aplikasi.EmailUser;
        idSMTP.Password := '';

        email := TIdMessage.Create(nil);
        try
          email.ContentType := 'multipart/mixed';
          email.From.Address := aplikasi.EmailUser;
          email.From.Name := aplikasi.NamaUser;

          if aplikasi.debug then
            email.Recipients.EMailAddresses := 'yosef@sdp.mail'
          else begin
            email.Recipients.EMailAddresses :='boby@sdp.mail,vivi@sdp.mail,ferry@sdp.mail,eva@sdp.mail,' +
              cxtMgrEmail.Text;
          end;

          qbrg := OpenRS('SELECT deskripsi, satuan FROM tbl_barang WHERE kode = ''%s''', [cxtKodeBrg.Text]);

          email.Subject := 'LKM Baru NO#: ' + sNoTrans;
          lstBody := TStringList.Create;
          lstBody.Add('<html>');
          lstBody.Add('<head>');
          lstBody.Add('</head>');
          lstBody.Add('<body>');
          lstBody.Add('<h3>LAPORAN KETIDAKSESUAIAN MUTU</h3></br></br>');
          lstBody.Add('<pre>');
          lstBody.Add('Nomer LKM    : ' + sNoTrans);
          lstBody.Add('Tgl.Terbit   : ' + aplikasi.TanggalString);
          lstBody.Add('Kode Brg.    : ' + cxtKodeBrg.Text);
          lstBody.Add('Deskripsi    : ' + qbrg.FieldByName('deskripsi').AsString);
          lstBody.Add('Qty          : ' + cxsJmlKomplain.Text);
          lstBody.Add('Satuan       : ' + qbrg.FieldByName('satuan').AsString);
          lstBody.Add('Dept.Tujuan  : ' + cxLUDiberikanKpd.Text);
          lstBody.Add('Jenis LKM    : ' + 'PRODUK TIDAK SESUAI');
          lstBody.Add('Deskripsi Ketidaksesuaian : ');
          lstBody.Add(cxmDeskKomplain.Text);

          qbrg.Close;

          bdy := TIdText.Create(email.MessageParts, lstBody);
          bdy.ContentType := 'text/html';

          idSMTP.Connect;
          try
            idSMTP.Send(email);
          finally
            idSMTP.Disconnect;
          end;
        finally
          email.Free;
        end;
      end;

      MsgBox('Resolusi Komplain No. : ' +
        cxeNoFRK.Text + ' sudah di update');

      if ((AppSmg) and (sStatus = 'CLOSED')) or
        ((fSalesDir) and (sStatus = 'CLOSED')) then begin
        i := QBox(Self, 'Cetak Formulir Resolusi Komplain ?', 'Resolusi Komplain');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('UPDATE tbl_rk SET f_cetak = 1 ' +
              'WHERE no = ''' + cxeNoFRK.Text + '''');

            // GET ALL EMAIL FOR RK
            lstEmailPenerima := TStringList.Create;
            lstEmailPenerima.Add(cxtEmail.Text);
            q := OpenRS('SELECT * FROM tbl_email WHERE (jenis = ''RK'') AND ' +
              '(jenis = ''RK-CFT'')');
            while not q.Eof do begin
              lstEmailPenerima.Add(q.FieldByName('alamat_email').AsString);
              q.Next;
            end;
            q.Close;

            // GET EMAIL MGR
            lstEmailPenerima.Add(cxtMgrEmail.Text);
            
            // tambahkan email p. boby dan qac
            // 11-03-2016
            lstEmailPenerima.Add('boby@sdp.mail');
            lstEmailPenerima.Add('rio@sdp.mail');
            lstEmailPenerima.Add('eko@sdp.mail');
            lstEmailPenerima.Add('eva@sdp.mail');

            // SEND EMAIL TO ALL
            q := OpenRS('SELECT * FROM tbl_rk WHERE no = ''%s''',
              [cxeNoFRK.Text]);

            idSMTP.AuthType := satNone;
            idSMTP.Host := aplikasi.ServerSMTP;
            idSMTP.Port     := 25;
            idSMTP.UserName := aplikasi.EmailUser;
            idSMTP.Password := '';

            email := TIdMessage.Create(nil);
            try
              email.ContentType := 'multipart/mixed';
              email.From.Address := aplikasi.EmailUser;
              email.From.Name := aplikasi.NamaUser;

              if Aplikasi.debug then
                email.Recipients.EMailAddresses := 'yosef@sdp.mail'
              else
                email.Recipients.EMailAddresses := lstEmailPenerima.CommaText;

              email.Subject := 'Resolusi Komplain NO#: ' + cxeNoFRK.Text + ', SO#: ' +
                cxeNoSO.Text + ', ' + cxeNamaPerusahaan.Text + ', Status: ' +
                q.FieldByName('status').AsString;

              lstBody := TStringList.Create;
              lstBody.Add('<html>');
              lstBody.Add('<head>');
              lstBody.Add('</head>');
              lstBody.Add('<body>');
              lstBody.Add('<h3>RESOLUSI KOMPLAIN</h3></br></br>');
              lstBody.Add('<pre>');
              lstBody.Add('Nomer      : ' + cxeNoFRK.Text);
              lstBody.Add('Tanggal    : ' + cxeTanggal.Text);
              lstBody.Add('Dibuat     : ' + cxeDibuatOleh.Text);
              lstBody.Add('Kepada     : ' + q.FieldByName('diberikan_kepada').AsString);
              lstBody.Add('Bagian     : ' + q.FieldByName('bagian').AsString);

              if not q.IsEmpty then
                lstBody.Add('Status     : ' + q.FieldByName('status').AsString)
              else
                lstBody.Add('Status     : ' + cxeStatus.Text);

              lstBody.Add('Kategori   : ' + cxCmbKategori.Text);
              lstBody.Add('Target Sls.: ' + FormatDateTime('dd-MM-yyyy', cxTglTargetSelesai.Date));
              lstBody.Add('');
              lstBody.Add('<b>DATA CUSTOMER</b>');
              lstBody.Add('No. SO     : ' + cxeNoSO.Text);
              lstBody.Add('Kode Cust. : ' + cxtKodeCust.Text);
              lstBody.Add('Nama Cust. : ' + cxeNamaPerusahaan.Text);
              lstBody.Add('Lok. Pasang: ' + cxeLokasiPasang.Text);
              lstBody.Add('Tgl.SO     : ' + cxdTglPembelian.Text);
              lstBody.Add('Tgl. Kirim : ' + cxdTglPengiriman.Text);
              lstBody.Add('');
              lstBody.Add('<b>DATA BARANG</b>');
              lstBody.Add('Kode Brg.  : ' + cxtKodeBrg.Text);
              lstBody.Add('Nama Brg.  : ' + cxeNamaBrg.Text);
              lstBody.Add('Warna      : ' + cxtWarna.Text);
              lstBody.Add('Jml. Order : ' + cxsJmlOrder.Text);
              lstBody.Add('');
              lstBody.Add('<b>DESKRIPSI KOMPLAIN</b>');
              lstBody.Add(Trim(cxmDeskKomplain.Text));
              lstBody.Add('');
              lstBody.Add('<b>VERIFIKASI ANALISA PRODUK</b>');
              lstBody.Add(Trim(cxmVerifikasi.Text));
              lstBody.Add('');
              lstBody.Add('<b>TINDAKAN PERBAIKAN</b>');
              lstBody.Add(Trim(cxmTindakan.Text));
              lstBody.Add('');
              lstBody.Add('<b>TINDAKAN PERBAIKAN INTERNAL</b>');
              lstBody.Add(Trim(cxmTindakanInt.Text));
              lstBody.Add('');
              lstBody.Add('<b>TINDAK LANJUT</b>');
              lstBody.Add(Trim(cxmTindakLanjut.Text));
              lstBody.Add('');

              lstBody.Add('<b>PIC DEPT. TERKAIT : CHECKED</b>');
              lstBody.Add('<b>APPROVAL MANAGER AREA : CHECKED</b>');
              lstBody.Add('<b>APPROVAL MANAGER QAC : CHECKED</b>');
              lstBody.Add('<b>APPROVAL BUSSINESS AND DEVELOPMENT DIRECTOR : CHECKED</b>');
              lstBody.Add('<b>SALES DIRECTOR : CHECKED</b>');
              lstBody.Add('</pre>');

              lstBody.Add('</br>');
              lstBody.Add('</body>');
              lstBody.Add('</html>');

              bdy := TIdText.Create(email.MessageParts, lstBody);
              bdy.ContentType := 'text/html';

              idSMTP.Connect;
              
              try
                idSMTP.Send(email);
              finally
                idSMTP.Disconnect;
              end;

            finally
              email.Free;
            end;
            
            q.Close;

            //email := ThreadKirimEmail.CreateIt(True);
            //email.EmailFrom := Aplikasi.CCR_email;
            //email.SMTPServer := Aplikasi.SMTPServer;
            //email.Password := Aplikasi.CCR_email_pass;
            //email.EmailSend := lstEmailPenerima.CommaText;
            //email.EmailSend := 'yosef@sdp.mail';

            //email.BodyList := lstBody;
            //email.Resume;

            //ShowMessage('Email sudah dikirim.');
            //Application.Terminate;

            //fw := TfrmWait.Create(Self);
            //fw.ShowModal;

            //Rpt.NamaFile := 'rpt_rk';
            //  Rpt.SQL := 'SELECT * FROM tbl_rk WHERE no = ''' +
            //  cxeNoFRK.Text + '''';
            //Rpt.preview;
            //dm.zConn.Commit;

            Close;

          except
            on E: Exception do begin
              dm.zConn.Rollback;
              MsgBox('Error: ' + E.Message);
              Abort;
            end;
          end;
        end;
        Close;
      end

      // JIKA BELUM CLOSED
      else begin

        // get email penerima
        //q := OpenRSM('SELECT * FROM tbl_userapp WHERE namauser = ''%s''',
        //  [cxeDibuatOleh.Text]);
        //email_penerima := q.FieldByName('email').AsString;

        lstEmailPenerima := TStringList.Create;

        //lstEmailPenerima.Add(q.FieldByName('email').AsString);
        //lstEmailPenerima.Add(Trim(cxtEmail.Text));
        //q.Close;

        if fDeptTerkait then
          //
        else if fMgrTerkait then
          sql := 'SELECT * FROM tbl_email WHERE jenis = ''RK'' AND ' +
            'jabatan = ''MGR'' AND bagian = ''QAC'''
        else if fMgrQAC then
          sql := 'SELECT * FROM tbl_email WHERE jenis = ''RK'' AND ' +
            'jabatan = ''BDIR'''
        else if fBDDir then begin
          if sKetNotApp = '' then
            sql := 'SELECT * FROM tbl_email WHERE jenis = ''RK'' AND ' +
              'jabatan = ''SDIR'''
          else begin
            sql := '';
            lstEmailPenerima.Add(cxtEmail.Text);
            lstEmailPenerima.Add(cxtMgrEmail.Text);
            q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK'' AND ' +
              'jabatan = ''MGR'' AND bagian = ''QAC''');
            if not q.IsEmpty then begin
              lstEmailPenerima.Add(q.FieldByName('alamat_email').AsString);
            end;
            q.Close;
          end;
        end
        else if fSalesDir then
          sql := 'SELECT * FROM tbl_user WHERE nama = ''' +
            sDibuatOleh + '''';

        if sql <> '' then begin
          q := OpenRS(sql);
          if not q.IsEmpty then begin
            if fSalesDir then
              lstEmailPenerima.Add(q.FieldByName('email').AsString)
            else
              lstEmailPenerima.Add(q.FieldByName('alamat_email').AsString);
          end;
          q.Close;
        end;

        if fDeptTerkait then
          lstEmailPenerima.Add(cxtMgrEmail.Text);

        // staff qac
        // 11-03-2016
        lstEmailPenerima.Add('rio@sdp.mail');
        lstEmailPenerima.Add('eko@sdp.mail');
        lstEmailPenerima.Add('eva@sdp.mail');

        // ambil email dari database
        //q := OpenRSM('SELECT * FROM tbl_email WHERE jenis = ''RK''');
        //while not q.Eof do begin
        //  lstEmailPenerima.Add(q.FieldByName('alamat_email').AsString);
        //  q.Next;
        //end;
        //q.Close;

        q := OpenRS('SELECT * FROM tbl_rk WHERE no = ''%s''',
          [cxeNoFRK.Text]);


        //email := ThreadKirimEmail.CreateIt(True);
        //email.EmailFrom := Aplikasi.CCR_email;
        //email.SMTPServer := Aplikasi.SMTPServer;
        //email.Password := Aplikasi.CCR_email_pass;
        //email.EmailSend := lstEmailPenerima.CommaText;
        //email.EmailSend := 'yosef@sdp.mail';

        idSMTP.AuthType := satNone;
        idSMTP.Host := aplikasi.ServerSMTP;
        idSMTP.Port     := 25;
        idSMTP.UserName := aplikasi.EmailUser;
        idSMTP.Password := '';

        email := TIdMessage.Create(nil);
        try
          email.ContentType := 'multipart/mixed';
          email.From.Address := aplikasi.EmailUser;
          email.From.Name := aplikasi.NamaUser;

          if Aplikasi.debug then
            email.Recipients.EMailAddresses := 'yosef@sdp.mail'
            //email.Recipients.EMailAddresses := 'root@localhost.com'
          else
            email.Recipients.EMailAddresses := lstEmailPenerima.CommaText;

          email.Subject := 'Resolusi Komplain NO#: ' + cxeNoFRK.Text + ', SO#: ' +
            cxeNoSO.Text + ', ' + cxeNamaPerusahaan.Text + ', Status: ' +
            q.FieldByName('status').AsString;

          lstBody := TStringList.Create;
          lstBody.Add('<html>');
          lstBody.Add('<head>');
          lstBody.Add('</head>');
          lstBody.Add('<body>');
          lstBody.Add('<h3>RESOLUSI KOMPLAIN</h3></br></br>');
          lstBody.Add('<pre>');
          lstBody.Add('Nomer      : ' + cxeNoFRK.Text);
          lstBody.Add('Tanggal    : ' + cxeTanggal.Text);
          lstBody.Add('Dibuat     : ' + cxeDibuatOleh.Text);
          lstBody.Add('Kepada     : ' + q.FieldByName('diberikan_kepada').AsString);
          lstBody.Add('Kepada     : ' + q.FieldByName('bagian').AsString);

          if not q.IsEmpty then
            lstBody.Add('Status     : ' + q.FieldByName('status').AsString)
          else
            lstBody.Add('Status     : ' + cxeStatus.Text);

          lstBody.Add('Kategori   : ' + cxCmbKategori.Text);
          lstBody.Add('Target Sls.: ' + FormatDateTime('dd-MM-yyyy', cxTglTargetSelesai.Date));
          lstBody.Add('');
          lstBody.Add('<b>DATA CUSTOMER</b>');
          lstBody.Add('No. SO     : ' + cxeNoSO.Text);
          lstBody.Add('Kode Cust. : ' + cxtKodeCust.Text);
          lstBody.Add('Nama Cust. : ' + cxeNamaPerusahaan.Text);
          lstBody.Add('Lok. Pasang: ' + cxeLokasiPasang.Text);
          lstBody.Add('Tgl.Pbelian: ' + cxdTglPembelian.Text);
          lstBody.Add('Tgl. Kirim : ' + cxdTglPengiriman.Text);
          lstBody.Add('');
          lstBody.Add('<b>DATA BARANG</b>');
          lstBody.Add('Kode Brg.  : ' + cxtKodeBrg.Text);
          lstBody.Add('Nama Brg.  : ' + cxeNamaBrg.Text);
          lstBody.Add('Warna      : ' + cxtWarna.Text);
          lstBody.Add('Jml. Order : ' + cxsJmlOrder.Text);
          lstBody.Add('');
          lstBody.Add('<b>DESKRIPSI KOMPLAIN</b>');
          lstBody.Add(Trim(cxmDeskKomplain.Text));
          lstBody.Add('');
          lstBody.Add('<b>VERIFIKASI ANALISA PRODUK</b>');
          lstBody.Add(Trim(cxmVerifikasi.Text));
          lstBody.Add('');
          lstBody.Add('<b>TINDAKAN PERBAIKAN</b>');
          lstBody.Add(Trim(cxmTindakan.Text));
          lstBody.Add('');

          if (fAppSmg) or (fSalesDir) then begin
            lstBody.Add('<b>TINDAK LANJUT</b>');
            lstBody.Add(Trim(cxmTindakLanjut.Text));
            lstBody.Add('');
          end;

          if not q.IsEmpty then begin
            if q.FieldByName('f_dept_terkait').AsInteger = 1 then
              lstBody.Add('<b>PIC DEPT. TERKAIT : CHECKED</b>');
            if q.FieldByName('f_mgr_area').AsInteger = 1 then
              lstBody.Add('<b>APPROVAL MANAGER AREA : CHECKED</b>');
            if q.FieldByName('f_mgr_qac').AsInteger = 1 then
              lstBody.Add('<b>APPROVAL MANAGER QAC : CHECKED</b>');
            if q.FieldByName('f_director').AsInteger = 1 then
              lstBody.Add('<b>APPROVAL BUSSINESS AND DEVELOPMENT DIRECTOR : CHECKED</b>');
            if q.FieldByName('f_director2').AsInteger = 1 then
              lstBody.Add('<b>SALES DIRECTOR : CHECKED</b>');
          end;

          if (fBDDir) and (sKetNotApp <> '') then begin
            lstBody.Add('<b>APPROVAL BUSSINESS AND DEVELOPMENT DIRECTOR : CHECKED</b>');
            lstBody.Add('<b><font color="blue">KETERANGAN : ' + sKetNotApp + '</font></b>');
          end;

          lstBody.Add('</pre>');

          lstBody.Add('</br>');
          lstBody.Add('</body>');
          lstBody.Add('</html>');

          bdy := TIdText.Create(email.MessageParts, lstBody);
          bdy.ContentType := 'text/html';

          idSMTP.Connect;

          try
            idSMTP.Send(email);
          finally
            idSMTP.Disconnect;
          end;

        finally
          email.Free;
        end;

        q.Close;

        //email.BodyList := lstBody;
        //email.Resume;

        //ShowMessage('Email sudah dikirim.');
        //Application.Terminate;
        //fw := TfrmWait.Create(Self);
        //fw.ShowModal;

        Close;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;

end;

procedure TfrmProsesRK_NEW.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProsesRK_NEW.btnLihatFotoClick(Sender: TObject);
var
  f: TfrmImageViewerRK;
begin
  f := TfrmImageViewerRK.Create(Self);
  f.NoRK := cxeNoFRK.Text;
  f.ShowModal;
end;

procedure TfrmProsesRK_NEW.btnSOPenggantiClick(Sender: TObject);
var
  f: TfrmCariSO;
  q: TZQuery;
  noindex_s: String;
begin
  {
  f := TfrmCariSO.Create(Self);
  f.zq.Close;
  f.zq.SQL.Text := 'SELECT * FROM v_so_jk WHERE posted = ''T'' ' +
    'ORDER BY tanggal DESC';
  f.zq.Open;
  f.ShowModal;
  if f.NoSO <> '' then begin
    cxtNoSOGanti.Text := f.NoSO;
  end;
  f.Release;
  }
end;

procedure TfrmProsesRK_NEW.SendEmail(lstEmail: TStringList);
begin
  //
end;

procedure TfrmProsesRK_NEW.SendEmailLkm;
begin
  //
end;

procedure TfrmProsesRK_NEW.chkBrgDigantiClick(Sender: TObject);
begin
  if not chkBrgDiganti.Checked then
    cxtNoSOGanti.Text := '';
end;

procedure TfrmProsesRK_NEW.chkNotAppClick(Sender: TObject);
begin
  if chkNotApp.Checked then
    chkAppBDDir.Checked := False;
end;

procedure TfrmProsesRK_NEW.chkAppBDDirClick(Sender: TObject);
begin
  if chkAppBDDir.Checked then
    chkNotApp.Checked := False;
end;

procedure TfrmProsesRK_NEW.UpdateTglSelesai(sNoRK: string);
var
  sql: string;
begin
  try
    dm.zConn.StartTransaction;
    sql := Format('UPDATE tbl_rk SET tgl_selesai = CURDATE() WHERE no = ''%s''',
      [sNoRK]);
    dm.zConn.ExecuteDirect(sql);
    dm.zConn.Commit;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
    end;
  end;
end;

end.
