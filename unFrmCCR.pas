unit unFrmCCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, RzPanel, StdCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ZDataset, cxSpinEdit, cxMemo, DB,
  ZAbstractRODataset, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdMessage, IdText, IdAttachmentFile, IdSSL, IdSSLOpenSSL,
  IdIOHandlerSocket, IdIOHandlerStack;

type
  TfrmCCR = class(TForm)
    Label3: TLabel;
    cxeNoFRK: TcxTextEdit;
    Label4: TLabel;
    cxeDibuatOleh: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    cxeTanggal: TcxTextEdit;
    Label7: TLabel;
    cxeStatus: TcxTextEdit;
    Label8: TLabel;
    Label9: TLabel;
    cxTglTargetSelesai: TcxDateEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    cxeNoSO: TcxTextEdit;
    btnCariSO: TButton;
    Label11: TLabel;
    cxeNamaPerusahaan: TcxTextEdit;
    Label12: TLabel;
    cxeLokasiPasang: TcxTextEdit;
    Label13: TLabel;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxeNamaBrg: TcxTextEdit;
    cxtWarna: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    Label20: TLabel;
    btnSimpan: TButton;
    btnBatal: TButton;
    cxsJmlOrder: TcxSpinEdit;
    cxmDeskKomplain: TcxMemo;
    cxCmbKategori: TcxComboBox;
    zrq: TZReadOnlyQuery;
    cxLUDiberikanKpd: TcxLookupComboBox;
    dsUserApp: TDataSource;
    Label21: TLabel;
    cxtEmail: TcxTextEdit;
    cxtKodeCust: TcxTextEdit;
    Label14: TLabel;
    cxdTglPembelian: TcxDateEdit;
    cxtKodeBrg: TcxTextEdit;
    cxtBagian: TcxTextEdit;
    btnTambahPic: TButton;
    lblJmlImage: TLabel;
    Label15: TLabel;
    cxsJmlKomplain: TcxSpinEdit;
    chkPeletan: TCheckBox;
    Label22: TLabel;
    cxdTglPengiriman: TcxDateEdit;
    chkManual: TCheckBox;
    btnCariCust: TButton;
    Label2: TLabel;
    idSMTP: TIdSMTP;
    Label1: TLabel;
    Label23: TLabel;
    cxsQtyKomplain: TcxSpinEdit;
    Label24: TLabel;
    cxtNoPO: TcxTextEdit;
    cxtSJ: TcxTextEdit;
    Label25: TLabel;
    cxtSPK: TcxTextEdit;
    Label26: TLabel;
    cxtCP: TcxTextEdit;
    Label27: TLabel;
    cxtAplikasi: TcxTextEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    cxtNoted: TcxTextEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnCariSOClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLUDiberikanKpdPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnTambahPicClick(Sender: TObject);
    procedure chkManualClick(Sender: TObject);
    procedure btnCariCustClick(Sender: TObject);
    procedure cxCmbKategoriPropertiesEditValueChanged(Sender: TObject);
  private
    mKodeBrg: string;
    mNoSO: string;
    lstImage: TStringList;
    procedure ClearAll;
    procedure SendEmail(sNoCCR: string);
  public
    property KodeBrg: string write mKodeBrg;
    property NoSO: string write mNoSO;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmCCR: TfrmCCR;

implementation

uses unAplikasi, unDm, unTools, unFrmCariSO, unThreadKirimEmail,
  unFrmUploadImageRK, unFrmCariMOPlt, {unFrmCariCust,} unFrmWait, unFrmCari,
  unFrmLaporan1;

{$R *.dfm}

procedure TFrmCCR.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmCCR.FormCreate(Sender: TObject);
begin
  aplikasi.log_('KOMPLAIN-CUSTOMER');
  
  cxeNoFRK.Text := GetLastFak('komplain-customer');
  cxeDibuatOleh.Text := aplikasi.NamaUser;

  cxeTanggal.Text := FormatDateTime('dd-MM-yyyy',
    aplikasi.TanggalServer);

  cxCmbKategori.Properties.Items.Add('HARGA');
  cxCmbKategori.Properties.Items.Add('LAIN-LAIN');
  cxCmbKategori.Properties.Items.Add('MUTU PRODUKSI');
  cxCmbKategori.Properties.Items.Add('PELAYANAN');
  cxCmbKategori.Properties.Items.Add('SURVEY KEPUASAN');

  lstImage := TStringList.Create;
  lblJmlImage.Caption := 'Jumlah Image : 0';
  cxeStatus.Text := 'PROCESSED';
  
  if DayOfWeek(aplikasi.TanggalServer) = 6 then
    cxTglTargetSelesai.Date := Aplikasi.TanggalServer + 3
  else if DayOfWeek(aplikasi.TanggalServer) = 7 then
    cxTglTargetSelesai.Date := Aplikasi.TanggalServer + 3
  else
    cxTglTargetSelesai.Date := Aplikasi.TanggalServer + 2;

  btnCariCust.Visible := False;
  zrq.Open;
end;

procedure TfrmCCR.btnCariSOClick(Sender: TObject);
var
  f: TfrmCariSO;
  f2: TfrmCariMOPlt;
  q, q2: TZQuery;
  noindex_s: String;
begin
  if chkPeletan.Checked then begin
    f2 := TFrmCariMOPlt.Create(Self);
    f2.ShowModal;
    if f2.NoSO <> '' then begin
      q := OpenRS('SELECT * FROM tbl_penerimaan_plt ' +
        'WHERE no_penerimaan = ''%s''',
        [f2.NoSO]);
      if not q.IsEmpty then begin
        cxeNoSO.Text := f2.NoSO;
        cxtKodeCust.Text := 'PLT';
        cxeNamaPerusahaan.Text := q.FieldByName('nama_customer').AsString;
        cxdTglPembelian.Date := q.FieldByName('tgl_penerimaan').AsDateTime;
        cxdTglPengiriman.Date := q.FieldByName('tgl_penerimaan').AsDateTime;
        cxeNamaBrg.Text := q.FieldByName('nama_barang').AsString;
        cxsJmlOrder.Value := q.FieldByName('jumlah').AsInteger;
        cxeLokasiPasang.Text := '-';
        cxmDeskKomplain.SetFocus;
      end;
      q.Close;
    end;
    f2.Release;
  end
  else begin
    f := TfrmCariSO.Create(Self);
    f.fCCR := Self;
    f.ShowModal;

    if mNoSO <> '' then begin
      cxeNoSO.Text := mNoSO;

      q := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',
        [mNoSO]);
      cxtNoPO.Text := q.FieldByName('po#').AsString;  
      cxtKodeCust.Text := q.FieldBYName('kode_customer').AsString;
      cxeNamaPerusahaan.Text := q.FieldByName('nama').AsString;
      cxdTglPembelian.Date := q.FieldByName('tanggal').AsDateTime;
      q.Close;

      q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = ''%s''',
        [mNoSO, mKodeBrg]);
      cxtKodeBrg.Text := mKodeBrg;
      cxeNamaBrg.Text := q.FieldByName('deskripsi').AsString;
      cxsJmlOrder.Value := q.FieldByName('qty').AsFloat;
      cxsQtyKomplain.Properties.MaxValue := q.FieldByName('qty').AsFloat;

      q2 := OpenRS('SELECT MAX(a.tanggal) tanggal FROM tbl_sj_head a JOIN tbl_sj_det b WHERE a.no_bukti = b.no_bukti ' +
        'AND b.no_so = ''%s'' AND b.kode_brg = ''%s''',
        [mNoSO, mKodeBrg]);
      if not q2.IsEmpty then begin
        cxdTglPengiriman.Date := q2.FieldByName('tanggal').AsDateTime;
      end;
      q2.Close;
      q.Close;

      {if f.KodeBarang <> '' then begin

        {
        q := OpenRSM('SELECT * FROM tbl_so_head WHERE no_so = ''%s'' AND perusahaan = ''%s''',
          [f.NoSO, f.NamaCustomer]);
        cxeNoSO.Text := f.NoSO;
        if not q.IsEmpty then begin
          cxtKodeCust.Text := q.FieldByName('idpemesan').AsString;
          cxeNamaPerusahaan.Text := q.FieldByName('perusahaan').AsString;
          cxdTglPembelian.Date := q.FieldByName('tanggal').AsDateTime;
          cxdTglPengiriman.Date := q.FieldbyName('tgl_kirim').AsDateTime;
          noindex_s := q.FieldByName('noindex_s').AsString;
        end;
        q.Close;

        q := OpenRSM('SELECT * FROM tbl_so_det WHERE indexjurnal = ''%s'' AND ' +
          'kode = ''%s''',
          [noindex_s, f.KodeBarang]);
        if not q.IsEmpty then begin
          cxtKodeBrg.Text := q.FieldByName('kode').AsString;
          cxeNamaBrg.Text := q.FieldByName('deskripsi').AsString;
          cxsJmlOrder.Value := q.FieldByName('jumlah').AsFloat;
        end;
        q.Close;



      end;}
    end;
  end;

  // get jumlah komplain
  //if cxeNamaPerusahaan.Text <> '' then begin
  //  q := OpenRS('SELECT f_get_jml_komplain(''' + cxeNamaPerusahaan.Text + ''') AS jml');
  //  cxsJmlKomplain.Value := q.FieldByName('jml').AsInteger;
  //  q.Close;
  //end;
end;

procedure TfrmCCR.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCCR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmCCR.cxLUDiberikanKpdPropertiesChange(Sender: TObject);
begin
  // cxtEmail.Text := zrq.FieldByName('email').AsString;
  // cxtBagian.Text := zrq.FieldByName('user_dept').AsString;
  // cxtBagian.Text := aplikasi.UserDept;
end;

procedure TfrmCCR.btnSimpanClick(Sender: TObject);
var
  tbl, tbl_img: TZTable;
  no: string;
  email: TIdMessage;
  lst, lstBody, lstEmailTo: TStringList;
  i: Integer;
  Stream: TStream;
  img: TImage;
  q: TZQuery;
  fw: TfrmWait;
  bdy: TIdText;
  f : TFrm_LaporanUmum1 ;
begin
  if (Trim(cxLUDiberikanKpd.Text) = '') then
    cxLUDiberikanKpd.SetFocus
  else if Trim(cxCmbKategori.Text) = '' then
    cxCmbKategori.SetFocus
  //else if cxTglTargetSelesai.Text = '' then
  //  cxTglTargetSelesai.SetFocus
  else if (Trim(cxmDeskKomplain.Text) = '') and (cxCmbKategori.Text <> 'SURVEY KEPUASAN') then
    MsgBox('Deskripsi Komplain tidak boleh kosong.')
  else begin

    if (cxCmbKategori.Text <> 'PELAYANAN') and (cxCmbKategori.Text <> 'SURVEY KEPUASAN') then begin
      if Trim(cxeLokasiPasang.Text) = '' then begin
        MsgBox('Lokasi pasang harus diisi.');
        cxeLokasiPasang.SetFocus;
        Abort;
      end
      else if Trim(cxeNoSO.Text) = '' then begin
        MsgBox('No. SO harus diisi.');
        cxeNoSO.SetFocus;
        Abort;
      end
      else if cxsQtyKomplain.Value = 0 then begin
        MsgBox('Jumlah barang komplain harus diisi.');
        cxsQtyKomplain.Setfocus;
        Abort;
      end;
    end;

    no := GetLastFak('komplain-customer');
    UpdateFaktur(Copy(no,1,8));

    try
      dm.zConn.StartTransaction;

      tbl := OpenTbl('tbl_rk');

      tbl.Insert;
      tbl.FieldByName('no').AsString := no;
      tbl.FieldByName('dibuat_oleh').AsString := cxeDibuatOleh.Text;
      tbl.FieldByName('diberikan_kepada').AsString := cxLUDiberikanKpd.Text;
      //tbl.FieldByName('bagian').AsString := cxtBagian.Text;
      tbl.FieldByName('bagian').AsString := cxLUDiberikanKpd.EditValue;
      tbl.FieldByName('email').AsString := cxtEmail.Text;
      tbl.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      tbl.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      tbl.FieldByName('status').AsString := 'PROCESSED';
      tbl.FieldByName('kategori').AsString := cxCmbKategori.Text;
      tbl.FieldByName('target_selesai').AsDateTime := cxTglTargetSelesai.Date;
      tbl.FieldByName('no_so').AsString := cxeNoSO.Text;
      tbl.FieldByName('kode_cust').AsString := cxtKodeCust.Text;
      tbl.FieldByName('nama_cust').AsString := cxeNamaPerusahaan.Text;
      tbl.FieldByName('lokasi_pasang').AsString := cxeLokasiPasang.Text;

      if cxCmbKategori.Text <> 'PELAYANAN' then begin
        tbl.FieldByName('tgl_pembelian').AsDateTime := cxdTglPembelian.Date;
        tbl.FieldByName('tgl_pengiriman').AsDateTime := cxdTglPengiriman.Date;
      end;

      tbl.FieldByName('pelayanan').AsInteger := StrToInt(ComboBox1.Text);
      tbl.FieldByName('kualitas').AsInteger := StrToInt(ComboBox2.Text) ;
      tbl.FieldByName('pengiriman').AsInteger := StrToInt(ComboBox3.Text) ;
      tbl.FieldByName('noted').AsString := cxtNoted.Text ;
      tbl.FieldByName('no_sj').AsString := cxtSJ.Text ;
      tbl.FieldByName('no_spk').AsString := cxtSPK.Text ;
      tbl.FieldByName('cp').AsString := cxtCP.Text ;
      tbl.FieldByName('aplikasi_produk').AsString := cxtAplikasi.Text ;


      tbl.FieldByName('kode_barang').AsString := cxtKodeBrg.Text;
      tbl.FieldByName('nama_barang').AsString := cxeNamaBrg.Text;
      tbl.FieldByName('warna').AsString := '';
      tbl.FieldByName('jml_order').AsInteger := cxsJmlOrder.Value;
      tbl.FieldByName('deskripsi_komplain').AsString := cxmDeskKomplain.Text;
      tbl.FieldByName('jml_komplain').AsInteger := cxsJmlKomplain.Value;
      tbl.FieldByName('qty_komplain').AsFloat := cxsQtyKomplain.Value;

      // GET MANAGER DEPT TERKAIT
      {
      q := OpenRS('SELECT * FROM tbl_user WHERE user_dept = ''%s'' ' +
        ' AND jabatan = ''MANAGER''',
        [cxtBagian.Text]);
      lst := TStringList.Create;
      while not q.Eof do begin
        lst.Add(q.FieldByName('email').AsString);
        q.Next;
      end;

      tbl.FieldByName('mgr_dept').AsString := q.FieldByName('nama').AsString;
      tbl.FieldByName('mgr_email').AsString := lst.CommaText;
      q.Close;
      }

      tbl.Post;
      tbl.Close;

      // simpan image jika ada

      if lstImage.Count > 0 then begin
      
        img := TImage.Create(Self);
        tbl_img := OpenTbl('tbl_img_rk');

        for i := 0 to lstImage.Count - 1 do begin
          tbl_img.Insert;
          tbl_img.FieldByName('no_rk').AsString := cxeNoFRK.Text;
          TBlobField(tbl_img.FieldByName('img')).LoadFromFile(lstImage.Strings[i]);
          tbl_img.Post;
        end;
        tbl_img.Close;
      end;
      //Log('CCR: ' + no, Aplikasi.User);
      dm.zConn.Commit;

      lstEmailTo := TStringList.Create;
      q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK''');
      while not q.Eof do begin
        lstEmailTo.Add(q.FieldByName('alamat_email').AsString);
        q.Next;
      end;
      lstEmailTo.Add(cxtEmail.Text);
      q.Close;

      {
      // jika kategori adalah PELAYANAN
      if cxCmbKategori.Text = 'PELAYANAN' then begin
        q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK-SMG''');
        while not q.Eof do begin
          lstEmailTo.Add(q.FieldByName('alamat_email').AsString);
          q.Next;
        end;
      end;
      q.Close;
      }
      
      SendEmail(no);

      Close;

      // f := TFrm_LaporanUmum1.Create(Self);
       //if cxeNoFRK.Text <> '' then begin
      //    with f do begin
      //      zqrKeluhan.Close;
      //      zqrKeluhan.ParamByName('no').AsString := cxeNoFRK.Text ;
     //       zqrKeluhan.Open;
     //     end;
     //     f.Release;
     //  end;
      
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

end;

procedure TFrmCCR.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].ClassName = 'TcxTextEdit' then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i].ClassName = 'TcxDateEdit' then
      (Components[i] as TcxDateEdit).Text := '';
  end;
  cxsJmlOrder.Value := 0;
  cxLUDiberikanKpd.Text := '';
  cxCmbKategori.Text := '';
  cxmDeskKomplain.Text := '';
  cxtEmail.Text := '';
  cxeNoFRK.Text := GetLastFak('frk');
end;

procedure TfrmCCR.btnTambahPicClick(Sender: TObject);
var
  f: TfrmUploadImageRK;
begin
  f := TfrmUploadImageRK.Create(Self);

  if lstImage.Count > 0 then
    f.ListImage := lstImage;

  f.ShowModal;
  lblJmlImage.Caption := 'Jumlah Image : ' + IntToStr(f.ListImage.Count);
  lstImage := f.ListImage;
end;

procedure TfrmCCR.chkManualClick(Sender: TObject);
begin
  if chkManual.Checked then begin

    //if cxCmbKategori.Text <> 'PELAYANAN' then begin
    //  chkManual.Checked := False;
    //  MsgBox('Input manual hanya bisa untuk kategori PELAYANAN.');
    //  Abort;
    //end;

    btnCariSO.Visible := False;
    cxeNoSO.Properties.ReadOnly := False;
    cxeNoSO.Style.Color := clWindow;

    cxdTglPembelian.Properties.ReadOnly := False;
    cxdTglPembelian.Style.Color := clWindow;

    cxdTglPengiriman.Properties.ReadOnly := False;
    cxdTglPengiriman.Style.Color := clWindow;

    btnCariCust.Visible := True;

    cxeNamaBrg.Properties.ReadOnly := False;
    cxeNamaBrg.Style.Color := clWindow;

    cxsJmlOrder.Properties.ReadOnly := False;
    cxsJmlOrder.Style.Color := clWindow;
    chkPeletan.Visible := False;
  end
  else begin
    btnCariSO.Visible := True;
    cxeNoSO.Properties.ReadOnly := True;
    cxeNoSO.Style.Color := clMoneyGreen;

    cxdTglPembelian.Properties.ReadOnly := True;
    cxdTglPembelian.Style.Color := clMoneyGreen;

    cxdTglPengiriman.Properties.ReadOnly := True;
    cxdTglPengiriman.Style.Color := clMoneyGreen;

    btnCariCust.Visible := False;

    cxeNamaBrg.Properties.ReadOnly := True;
    cxeNamaBrg.Style.Color := clMoneyGreen;

    cxsJmlOrder.Properties.ReadOnly := True;
    cxsJmlOrder.Style.Color := clMoneyGreen;
    chkPeletan.Visible := True;
    cxtKodeCust.Text := '';
    cxeNamaPerusahaan.Text := '';
    cxeNamaBrg.Text := '';
    cxsJmlOrder.Value := 0;
  end;
end;

procedure TfrmCCR.btnCariCustClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'customer';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxtKodeCust.Text := fKode.AsString;
    q := OpenRS('SELECT * FROM tbl_customer WHERE kode = ''%s''',
      [fKode.AsString]);
    cxeNamaPerusahaan.Text := q.FieldByName('nama').AsString;  
    q.Close;  
  end;
  f.Release;
  
end;

procedure TFrmCCR.SendEmail(sNoCCR: string);
var
  email : TIdMessage;
  lstEmailTo, lstBody: TStringList;
  bdy: TIdText;
  q: TZQuery;
  idSSLGMail : TIdSSLIOHandlerSocketOpenSSL;
  i: Integer;
begin

  Screen.Cursor := crHourGlass;

  idSSLGMail                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  idSSLGMail.SSLOptions.Method := sslvTLSv1;
  idSSLGMail.SSLOptions.Mode   := sslmUnassigned;

  idSMTP.AuthType  := satDefault;
  idSMTP.IOHandler := idSSLGMail;
  idSMTP.UseTLS    := utUseImplicitTLS;
  idSMTP.Host      := aplikasi.ServerSMTP;
  idSMTP.Port      := 465;
  idSMTP.UserName  := aplikasi.EmailUser;
  idSMTP.Password  := aplikasi.EmailPassword;

  lstEmailTo := TStringList.Create;
  {
  q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK''');
  while not q.Eof do begin
    lstEmailTo.Add(q.FieldByName('alamat_email').AsString);
    q.Next;
  end;
  q.Close;
  }
  q := OpenRS('SELECT * FROM tbl_user WHERE user_dept = ''%s''',[cxLUDiberikanKpd.EditValue]);
  while not q.Eof do begin
    lstEmailTo.Add(q.FieldByName('email').AsString);
    q.Next;
  end;
  // lstEmailTo.Add(cxtEmail.Text);

  {
  // jika kategori adalah PELAYANAN
  if cxCmbKategori.Text = 'PELAYANAN' then begin
    q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK-SMG''');
    while not q.Eof do begin
      lstEmailTo.Add(q.FieldByName('alamat_email').AsString);
      q.Next;
    end;
  end;
  q.Close;
  }

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    //if aplikasi.debug then
    //  email.Recipients.EMailAddresses := 'yosef.ray@gmail.com'
    //else
      email.Recipients.EMailAddresses := lstEmailTo.CommaText;

    if lstImage.Count > 0 then begin
      for i := 0 to lstImage.Count - 1 do
        TIdAttachmentFile.Create(email.MessageParts, lstImage.Strings[i]);
    end;

    email.Subject := 'Komplain Customer NO#: ' + sNoCCR + ', SO#: ' +
      cxeNoSO.Text + ', ' + cxeNamaPerusahaan.Text + ' ';

    lstBody := TStringList.Create;
    lstBody.Add('<html>');
    lstBody.Add('<head>');
    lstBody.Add('</head>');
    lstBody.Add('<body>');
    lstBody.Add('<h3>CUSTOMER CONCERN RECORD</h3></br></br>');
    lstBody.Add('<pre>');
    lstBody.Add('Nomer      : ' + sNoCCR);
    lstBody.Add('Tanggal    : ' + cxeTanggal.Text);
    lstBody.Add('Dibuat     : ' + cxeDibuatOleh.Text);
    lstBody.Add('Kepada     : ' + cxLUDiberikanKpd.Text);
    lstBody.Add('Bagian     : ' + cxtBagian.Text);
    lstBody.Add('Status     : ' + cxeStatus.Text);
    lstBody.Add('Kategori   : ' + cxCmbKategori.Text);
    lstBody.Add('Target Sls.: ' + FormatDateTime('dd-MM-yyyy', cxTglTargetSelesai.Date));
    lstBody.Add('');
    lstBody.Add('<b>DATA CUSTOMER</b>');
    lstBody.Add('No. SO     : ' + cxeNoSO.Text);
    lstBody.Add('No. PO     : ' + cxtNoPO.Text);
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
    lstBody.Add(cxmDeskKomplain.Text);

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

    Screen.Cursor := crDefault;
    MsgBox('Resolusi Komplain sudah disimpan dengan nomor : ' + sNoCCR);

    Close;

  finally
    email.Free;
  end;

  Screen.Cursor := crDefault;
  Close;
end;


{
var
  email : TIdMessage;
  lst: TStringList;
  bdy: TIdText;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := 'boby@sdp.mail,vivi@sdp.mail';

    email.Subject := 'Approval Transaksi Keluar Nomor : ' + cxtNoTrans.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada transaksi pengeluaran barang yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('Nomor Transaksi : ' + cxtNoTrans.Text);
    lst.Add('</br>');
    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');

    bdy := TIdText.Create(email.MessageParts, lst);
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
end;}

procedure TfrmCCR.cxCmbKategoriPropertiesEditValueChanged(Sender: TObject);
begin
  {
  if cxCmbKategori.Text = 'PELAYANAN' then begin
    GroupBox1.Enabled := False;
    GroupBox2.Enabled := False;
    cxmDeskKomplain.SetFocus;
  end
  else begin
    GroupBox1.Enabled := True;
    GroupBox2.Enabled := True;
  end;
  }
end;

end.
