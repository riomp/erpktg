unit unFrmProsesKC;

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
  IdSMTP, IdMessage, IdText, IdAttachmentFile,
  IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL;

type
  TfrmProsesKC = class(TForm)
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
    cxtBagian: TcxTextEdit;
    zrq: TZReadOnlyQuery;
    dsUserApp: TDataSource;
    cxmAnalisaMasalah: TcxMemo;
    cxmAnalisaAkarMasalah: TcxMemo;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
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
    cxmTindakanKoreksi: TcxMemo;
    idSMTP: TIdSMTP;
    cxLabel20: TcxLabel;
    cxmTindakanKorektif: TcxMemo;
    cxdDueDate1: TcxDateEdit;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxtPIC1: TcxTextEdit;
    cxLabel23: TcxLabel;
    cxdDueDate2: TcxDateEdit;
    cxLabel24: TcxLabel;
    cxtPIC2: TcxTextEdit;
    chkAppGM: TCheckBox;
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
    fGM: Boolean;
    fView: Boolean;
    procedure SendEmail(lstEmail: TStringList);
    procedure UpdateTglSelesai(sNoRK: string);
  public
    property NoRK: string read mNoRK write mNoRK;
    property DeptTerkait: Boolean read fDeptTerkait write fDeptTerkait;
    property MgrTerkait: Boolean read fMgrTerkait write fMgrTerkait;
    property MgrQAC: Boolean read fMgrQAC write fMgrQAC;
    property BDDir: Boolean read fBDDir write fBDDir;
    property AppSmg: Boolean read fAppSmg write fAppSmg;
    property SalesDir: Boolean read fSalesDir write fSalesDir;
    property GM: Boolean read fGM write fGM;
    property View: Boolean read fView write fView;
  end;

var
  frmProsesKC: TfrmProsesKC;

implementation

uses unAplikasi, unDm, unTools, unFrmDaftarRK, unFrmImageViewerRK, unFrmCariSO, unFrmWait;

{$R *.dfm}

procedure TfrmProsesKC.FormShow(Sender: TObject);
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
    cxmAnalisaMasalah.Text := q.FieldByName('analisa_masalah').AsString;
    cxmAnalisaAkarMasalah.Text := q.FieldByName('analisa_akar_masalah').AsString;
    cxmTindakanKoreksi.Text := q.FieldbyName('tindakan_koreksi').AsString;
    cxmTindakanKorektif.Text := q.FieldByName('tindakan_korektif').AsString;
    cxtNoSOGanti.Text := q.FieldByName('no_so_pengganti').AsString;
    cxtNoSJGanti.Text := q.FieldByName('no_sj_pengganti').AsString;
    cxmCatatan.Text := q.FieldByName('catatan_tambahan').AsString;

    cxdDueDate1.Date := q.FieldByName('due_tkor').AsDateTime;
    cxtPIC1.Text := q.FieldByname('pic_tkor').AsString;
    cxdDueDate2.Date := q.FieldByName('due_tkorf').AsDateTime;
    cxtPIC2.Text := q.FieldByName('pic_tkorf').AsString;

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

    // jika hanya view maka disable semua
    if fView then begin
      cxmAnalisaMasalah.Properties.ReadOnly := True;
      cxmAnalisaAkarMasalah.Properties.ReadOnly := True;
      cxmTindakanKoreksi.Properties.ReadOnly := True;
      cxmTindakanKorektif.Properties.ReadOnly := True;

      cxmAnalisaMasalah.Style.Color := clMoneyGreen;
      cxmAnalisaAkarMasalah.Style.Color := clMoneyGreen;
      cxmTindakanKoreksi.Style.Color := clMoneyGreen;
      cxmTindakanKorektif.Style.Color := clMoneyGreen;

      grpSmg.Enabled := False;
      btnSimpan.Enabled := False;
      GroupBox3.Enabled := False;
      Abort;
    end;

    if fDeptTerkait then begin
      if q.FieldByName('f_mgr_area').AsInteger = 1 then begin
        btnSimpan.Enabled := False;
      end;
    end;

    if fMgrTerkait then begin
      if q.FieldByName('f_mgr_qac').AsInteger = 1 then begin
        chkAppMgrTerkait.Checked := True;
        chkAppMgrTerkait.Enabled := False;
        btnSimpan.Enabled := False;
      end;
      if q.FieldByName('f_mgr_area').AsInteger = 1 then begin
        chkAppMgrTerkait.Checked := True;
        chkAppMgrTerkait.Enabled := False;
        btnSimpan.Enabled := False;
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
    end;

    if fGM then begin
      chkAppGM.Visible := True;
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
      cxtNoSOGanti.Properties.ReadOnly := True;
      cxtNoSJGanti.Properties.ReadOnly := True;
      cxmCatatan.Properties.ReadOnly := True;
      cxdTglKeputusan.Properties.ReadOnly := True;
      cxCmbStatus.Properties.ReadOnly := True;
      btnSimpan.Enabled := False;

      MsgBox('Status Resolusi Komplain sudah SELESAI / CLOSED. ' + Chr(10) + Chr(13) +
        'Resolusi Komplain ini tidak bisa di Edit.');
    end;

  end;

  q.Close;
end;

procedure TfrmProsesKC.FormCreate(Sender: TObject);
begin

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
  chkAppGM.TabOrder := chkAppMgrTerkait.Top;
  chkAppGM.Left := chkAppMgrTerkait.Left;

end;

procedure TfrmProsesKC.btnSimpanClick(Sender: TObject);
var
  tbl: TZQuery;
  email_penerima: string;
  lstEmailPenerima: TStringList;
  email: TIdMessage;

  q, qEmailMgr: TZQuery;
  lstBody: TStringList;
  i: Integer;
  sBagian, sDibuatOleh,
    sStatus, sql, sKetNotApp: string;
  
  fw: TfrmWait;
  bdy: TIdText;
  idSSLGMail : TIdSSLIOHandlerSocketOpenSSL;
begin

  if Trim(cxmAnalisaMasalah.Text) = '' then  begin
    MsgBox('Analisa Masalah harus diisi.');
    cxmAnalisaMasalah.SetFocus;
  end
  else if Trim(cxmAnalisaAkarMasalah.Text) = '' then begin
    MsgBox('Analisa Akar Masalah harus diisi.');
    cxmAnalisaAkarMasalah.SetFocus;
  end
  else if Trim(cxmTindakanKoreksi.Text) = '' then begin
    MsgBox('Tindakan Koreksi harus diisi.');
    cxmTindakanKoreksi.SetFocus;
  end
  else if Trim(cxmTindakanKorektif.Text) = '' then begin
    MsgBox('Tindakan Korektif harus diisi.');
    cxmTindakanKorektif.SetFocus;
  end
  else begin

    if fDeptTerkait then begin
      if cxdDueDate1.Text = '' then begin
        MsgBox('Due date tindakan koreksi harus di isi.');
        cxdDueDate1.SetFocus;
        Abort;
      end;

      if Trim(cxtPIC1.Text) = '' then begin
        MsgBox('PIC Tindakan koreksi harus di isi.');
        cxtPIC1.SetFocus;
        Abort;
      end;

      if cxdDueDate2.Text = '' then begin
        MsgBox('Due date tindakan korektif harus di isi.');
        cxdDueDate2.SetFocus;
        Abort;
      end;

      if Trim(cxtPIC2.Text) = '' then begin
        MsgBox('PIC Tindakan korektif harus di isi.');
        cxtPIC2.SetFocus;
        Abort;
      end;
      
    end;

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

    if fGM then begin
      if (not chkAppGM.Checked) and (not chkNotApp.Checked) then begin
        MsgBox('Mohon pilih Approval atau Tidak Approval.');
        Abort;
      end;
    end;

    try
      dm.zConn.StartTransaction;

      tbl := OpenRS('SELECT * FROM tbl_rk WHERE no = ''%s''',[cxeNoFRK.Text]);

      if tbl.Locate('no', cxeNoFRK.Text, [loCaseInsensitive]) then begin
        tbl.Edit;

        sBagian := tbl.FieldByName('bagian').AsString;
        sDibuatOleh := tbl.FieldByName('dibuat_oleh').AsString;

        sStatus := 'PROCESSED';

        if (fDeptTerkait) or (fMgrTerkait)  then begin
          tbl.FieldByName('f_dept_terkait').AsInteger := 1;
          tbl.FieldByName('dt_dept_terkait').AsDateTime := Aplikasi.NowServer;
          tbl.FieldByName('analisa_masalah').AsString := Trim(cxmAnalisaMasalah.Lines.Text);
          tbl.FieldByName('analisa_akar_masalah').AsString := Trim(cxmAnalisaAkarMasalah.Text);
          tbl.FieldByName('tindakan_koreksi').AsString := Trim(cxmTindakanKoreksi.Text);
          tbl.FieldByName('tindakan_korektif').AsString := Trim(cxmTindakanKorektif.Text);
          tbl.FieldByName('due_tkor').AsDateTime := cxdDueDate1.Date;
          tbl.FieldByName('pic_tkor').AsString := Trim(cxtPIC1.Text);
          tbl.FieldByName('due_tkorf').AsDateTime := cxdDueDate2.Date;
          tbl.FieldByName('pic_tkorf').AsString := Trim(cxtPIC2.Text);
          if fMgrTerkait then begin
            if chkAppMgrTerkait.Checked then begin
              tbl.FieldByName('f_mgr_area').AsInteger := 1;
              tbl.FieldByName('dt_mgr_area').AsDateTime := Aplikasi.NowServer;
            end;
          end;
        end
        else if (fAppSmg) or (fSalesDir) then begin

        end
        else if (fGM) then begin
          if chkAppGM.Checked then begin
            tbl.FieldByName('f_gm').AsInteger := 1;
            tbl.FieldByName('dt_gm').AsDateTime := Aplikasi.NowServer;
            sStatus := 'CLOSED';
          end;
        end;

        tbl.FieldByName('status').AsString := sStatus;

        if sStatus = 'CLOSED' then
          tbl.FieldByName('tgl_selesai').AsDateTime := Aplikasi.NowServer;

        tbl.Post;
      end;

      dm.zConn.Commit;

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
            q := OpenRS('SELECT * FROM tbl_email WHERE (jenis = ''RK'') AND ' +
              '(jenis = ''RK-CFT'')');
            while not q.Eof do begin
              lstEmailPenerima.Add(q.FieldByName('alamat_email').AsString);
              q.Next;
            end;
            q.Close;

            // GET EMAIL MGR
            lstEmailPenerima.Add(cxtMgrEmail.Text);

            // 20-10-2015
            // tambahkan email pak BOBY
            lstEmailPenerima.Add('boby@sdp.mail');

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
              lstBody.Add('<b>ANALISA MASALAH</b>');
              lstBody.Add(Trim(cxmAnalisaMasalah.Lines.Text));
              lstBody.Add('');
              lstBody.Add('<b>ANALISA AKAR MASALAH</b>');
              lstBody.Add(Trim(cxmAnalisaAkarMasalah.Lines.Text));
              lstBody.Add('');
              lstBody.Add('<b>TINDAKAN KOREKSI</b>');
              lstBody.Add(Trim(cxmTindakanKoreksi.Text));
              lstBody.Add('');
              lstBody.Add('<b>TINDAKAN KOREKTIF</b>');
              lstBody.Add(Trim(cxmTindakanKorektif.Text));
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

        lstEmailPenerima := TStringList.Create;
        if fDeptTerkait then begin
          qEmailMgr := OpenRS('SELECT * FROM tbl_user WHERE user_dept = ''%s'' ' +
            'AND jabatan IN (''SUPERVISOR'',''ASSISTANT MANAGER'',''MANAGER'')',
            [Aplikasi.UserDept]);
          while not qEmailMgr.Eof do begin
            lstEmailPenerima.Add(qEmailMgr.FieldByName('email').AsString);
            qEmailMgr.Next;
          end;
          qEmailMgr.Close;
        end
        else if fMgrTerkait then
          sql := 'SELECT * FROM tbl_email WHERE jenis = ''RK'' AND ' +
            'jabatan = ''GM'''
        else if fBDDir then begin
          
        end
        else if fSalesDir then
          sql := 'SELECT * FROM tbl_user WHERE nama = ''' +
            sDibuatOleh + ''''
        else if fGM then begin
          qEmailMgr := OpenRS('SELECT * FROM tbl_user WHERE user_dept = ''%s''',[Aplikasi.UserDept]);
          while not qEmailMgr.Eof do begin
            lstEmailPenerima.Add(qEmailMgr.FieldByName('email').AsString);
            qEmailMgr.Next;
          end;
          lstEmailPenerima.Add(Aplikasi.EmailUser);
          qEmailMgr.Close;
        end;

        if sql <> '' then begin
          q := OpenRS(sql);
          while not q.Eof do begin
            lstEmailPenerima.Add(q.FieldByName('alamat_email').AsString);
            q.Next;
          end;
          q.Close;
        end;

        q := OpenRS('SELECT * FROM tbl_rk WHERE no = ''%s''',
          [cxeNoFRK.Text]);

        idSSLGMail                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
        idSSLGMail.SSLOptions.Method := sslvTLSv1;
        idSSLGMail.SSLOptions.Mode   := sslmUnassigned;

        idSMTP.AuthType := satDefault;
        idSMTP.IOHandler := idSSLGMail;
        idSMTP.UseTLS    := utUseExplicitTLS;
        idSMTP.Host := aplikasi.ServerSMTP;
        idSMTP.Host      := aplikasi.ServerSMTP;
        idSMTP.Port      := Aplikasi.EmailServerPort;
        idSMTP.UserName  := aplikasi.EmailUser;
        idSMTP.Password  := aplikasi.EmailPassword;

        email := TIdMessage.Create(nil);
        try
          email.ContentType := 'multipart/mixed';
          email.From.Address := aplikasi.EmailUser;
          email.From.Name := aplikasi.NamaUser;

          //if Aplikasi.debug then
          //  email.Recipients.EMailAddresses := 'yosef@sdp.mail'
          //else
            email.Recipients.EMailAddresses := lstEmailPenerima.CommaText;

          email.Subject := 'Resolusi Komplain NO#: ' + cxeNoFRK.Text + ', SO#: ' +
            cxeNoSO.Text + ', ' + cxeNamaPerusahaan.Text + ', Status: ' +
            q.FieldByName('status').AsString;

          lstBody := TStringList.Create;
          lstBody.Add('<html>');
          lstBody.Add('<head>');
          lstBody.Add('</head>');
          lstBody.Add('<body>');
          lstBody.Add('<h3>KOMPLAIN CUSTOMER</h3></br></br>');
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
            if q.FieldByName('f_gm').AsInteger = 1 then
              lstBody.Add('<b>GENERAL MANAGER : CHECKED</b>');
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

procedure TfrmProsesKC.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProsesKC.btnLihatFotoClick(Sender: TObject);
var
  f: TfrmImageViewerRK;
begin
  f := TfrmImageViewerRK.Create(Self);
  f.NoRK := cxeNoFRK.Text;
  f.ShowModal;
end;

procedure TfrmProsesKC.btnSOPenggantiClick(Sender: TObject);
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

procedure TfrmProsesKC.SendEmail(lstEmail: TStringList);
begin
  //
end;

procedure TfrmProsesKC.chkBrgDigantiClick(Sender: TObject);
begin
  if not chkBrgDiganti.Checked then
    cxtNoSOGanti.Text := '';
end;

procedure TfrmProsesKC.chkNotAppClick(Sender: TObject);
begin
  if chkNotApp.Checked then
    chkAppBDDir.Checked := False;
end;

procedure TfrmProsesKC.chkAppBDDirClick(Sender: TObject);
begin
  if chkAppBDDir.Checked then
    chkNotApp.Checked := False;
end;

procedure TfrmProsesKC.UpdateTglSelesai(sNoRK: string);
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
