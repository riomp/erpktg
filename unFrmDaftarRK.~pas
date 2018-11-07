unit unFrmDaftarRK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RzPanel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxCheckBox, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxMemo, cxDropDownEdit,
  cxMaskEdit, cxCalendar, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdMessage, IdText, IdAttachmentFile;

type
  TfrmDaftarRK = class(TForm)
    Label1: TLabel;
    cxtBagian: TcxTextEdit;
    cxTblView: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zq: TZQuery;
    dsRK: TDataSource;
    cxTblViewno: TcxGridDBColumn;
    cxTblViewdibuat_oleh: TcxGridDBColumn;
    cxTblViewtanggal: TcxGridDBColumn;
    cxTblViewstatus: TcxGridDBColumn;
    cxTblViewkategori: TcxGridDBColumn;
    cxTblViewno_so: TcxGridDBColumn;
    cxTblViewnama_cust: TcxGridDBColumn;
    cxTblViewColumn1: TcxGridDBColumn;
    btnProses: TButton;
    btnTutup: TButton;
    btnCetak: TButton;
    cxTblViewColumn2: TcxGridDBColumn;
    cxTblViewColumn3: TcxGridDBColumn;
    cxTblViewColumn4: TcxGridDBColumn;
    cxTblViewColumn5: TcxGridDBColumn;
    btnRefresh: TButton;
    cxTblViewColumn6: TcxGridDBColumn;
    btnLihat: TButton;
    cxTblViewColumn7: TcxGridDBColumn;
    cxTblViewColumn8: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxTblViewColumn9: TcxGridDBColumn;
    Label2: TLabel;
    cxcStat: TcxComboBox;
    btnGo: TButton;
    cxStyle2: TcxStyle;
    cxTblViewdt_dept_terkait: TcxGridDBColumn;
    cxTblViewdt_mgr_area: TcxGridDBColumn;
    cxTblViewdt_mgr_qac: TcxGridDBColumn;
    cxTblViewdt_director: TcxGridDBColumn;
    cxTblViewdt_director2: TcxGridDBColumn;
    btnPenutupanCCR: TButton;
    Label16: TLabel;
    idSMTP: TIdSMTP;
    cxTblViewColumn10: TcxGridDBColumn;
    btnCetakSementara: TButton;
    cxTblViewColumn11: TcxGridDBColumn;
    cxTblViewColumn12: TcxGridDBColumn;
    cxTblViewColumn13: TcxGridDBColumn;
    cxTblViewColumn14: TcxGridDBColumn;
    cxTblViewColumn15: TcxGridDBColumn;
    cxTblViewColumn16: TcxGridDBColumn;
    cxTblViewColumn17: TcxGridDBColumn;
    procedure btnTutupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCetakClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLihatClick(Sender: TObject);
    procedure cxTblViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnGoClick(Sender: TObject);
    procedure btnPenutupanCCRClick(Sender: TObject);
    procedure btnCetakSementaraClick(Sender: TObject);
  private
    mJenis: string;
    procedure CetakRK(sNoRK: string);
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read mJenis write mJenis;
    procedure KirimEmail;
  end;

var
  frmDaftarRK: TfrmDaftarRK;

implementation

uses unAplikasi, unTools, unDm, unFrmProsesRK, unThreadKirimEmail,
  unFrmWait, unFrmLapCCR, unFrmProsesRK_NEW, unFrmProsesKC;

{$R *.dfm}

procedure TFrmDaftarRK.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmDaftarRK.btnTutupClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDaftarRK.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin

  cxcStat.Properties.Items.Add('PROCESSED');
  cxcStat.Properties.Items.Add('OPEN');
  cxcStat.Properties.Items.Add('CLOSED');

  {
  if (Aplikasi.NamaUser = 'ADMIN') then begin
    zq.Close;
    zq.SQL.Text := 'SELECT * FROM v_rk ORDER BY tanggal DESC';
    zq.Open;
    btnCetak.Visible := True;
    btnLihat.Visible := True;
  end
  else begin
    //zq.Close;
    //zq.ParamByName('bagian').AsString := aplikasi.UserDept;
    //zq.Open;
    btnCetak.Visible := False;
    btnLihat.Visible := False;
  end;
  }
  cxtBagian.Text := Aplikasi.UserDept;

  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' AND nm_comp = ''%s''',
    [aplikasi.NamaUser, 'ccr_cetak_sementara']);
  if not q.IsEmpty then
    if q.FieldByName('wwn').AsString = '1' then
      btnCetakSementara.Visible := True;
  q.Close;

end;

procedure TfrmDaftarRK.btnProsesClick(Sender: TObject);
var
  sNoRK: string;
  {$DEFINE NOTOLD}
  {$IFDEF OLD}
  f: TfrmProsesRK;
  {$ELSE}
  f: TfrmProsesKC;
  {$ENDIF}
  q: TZQuery;
begin
  sNoRK := cxTblView.Controller.SelectedRecords[0].Values[0];

  {$DEFINE NOTOLD}
  {$IFDEF OLD}
  f := TfrmProsesRK.Create(Self);
  {$ELSE}
  f := TfrmProsesKC.Create(Self); 
  {$ENDIF}

  q := OpenRS('SELECT * FROM v_rk WHERE no = ''%s''',
    [sNoRK]);

  if jenis = 'dept_terkait' then
    f.DeptTerkait := True
  else if jenis = 'mgr_terkait' then begin
    if q.FieldByName('f_dept_terkait').AsInteger = 0 then begin
      MsgBox('Departemen terkait belum melengkapi data Resolusi Komplain.');
      q.Close;
      Abort;
    end
    else
      f.MgrTerkait := True;
  end
  else if jenis = 'mgr_qac' then begin
    {
    if q.FieldByName('f_mgr_area').AsInteger = 0 then begin
      MsgBox('Manager Departemen terkait belum melakukan Approval Resolusi Komplain.');
      q.Close;
      Abort;
    end
    else
      f.MgrQAC := True;
    }
    f.MgrQAC := True;
  end
  else if jenis = 'bd_dir' then begin
    if q.FieldByName('f_mgr_qac').AsInteger = 0 then begin
      MsgBox('Manager QAC belum melakukan Approval Resolusi Komplain.');
      q.Close;
      Abort;
    end
    else
      f.BDDir := True;
  end
  else if jenis = 'app_smg' then begin
    if q.FieldByName('f_director2').AsInteger = 0 then begin
      MsgBox('Sales Director belum melakukan Approval Resolusi Komplain.');
      q.Close;
      Abort;
    end
    else
      f.AppSmg := True;
  end
  else if jenis = 'sales_dir' then begin
    if q.FieldByName('f_director').AsInteger = 0 then begin
      MsgBox('Bussiness & Development Director belum melakukan Approval Resolusi Komplain.');
      q.Close;
      Abort;
    end
    else
      f.SalesDir := True;
  end
  else if jenis = 'GM' then begin
    if q.FieldByName('f_mgr_area').AsInteger = 0 then begin
      MsgBox('Atasan / Manager Departemen Terkait belum melakukan Approval Komplain Customer.');
      q.Close;
      Abort;
    end
    else
      f.GM := True;
  end;

  f.NoRK := sNoRK;
  f.ShowModal;
  f.Release;
  zq.Close;
  zq.Open;
end;

procedure TfrmDaftarRK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmDaftarRK.btnCetakClick(Sender: TObject);
var
  sNoRK: string;
  q: TZQuery;
  i: Integer;
begin

  sNoRK := cxTblView.Controller.SelectedRecords[0].Values[0];

  if (mJenis = 'app_smg') or (aplikasi.NamaUser = 'ADMIN') then begin
    q := OpenRS('SELECT * FROM v_rk WHERE no = ''%s''',
      [sNoRK]);

    // cek apakah resolusi komplain masih dalam kondisi OPEN
    if (q.FieldByName('status').AsString = 'OPEN') or
      (q.FieldByName('status').AsString = 'PROCESSED') then begin
      MsgBox('RK No: ' + sNoRK + ' -> Status masih TERBUKA / OPEN / PROCESSED.' + Chr(10) + Chr(13) +
        'Masukkan Nomer SO Pengganti.');
      q.Close;
      Abort;
    end;

    // cek apakah resolusi komplain bagian smg sudah diisi
    if (q.FieldByName('tindak_lanjut').IsNull) or
      (Trim(q.FieldByName('tindak_lanjut').AsString) = '') then begin
      MsgBox('RK No: ' + sNoRK + ' -> Tindak Lanjut masih kosong.');
      q.Close;
      Abort;
    end;

    if q.FieldByName('f_cetak').AsInteger = 0 then begin
      if q.FieldByName('f_director2').AsInteger = 1 then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_rk SET f_cetak = 1, ' +
          'status = ''CLOSED'' ' +
          'WHERE no = ''' +
          sNoRK + '''');
        CetakRK(sNoRK);
      end
      else begin
        MsgBox('Resolusi komplain belum bisa di cetak karena Approval ' + Chr(10) + Chr(13) +
          'Sales Director / CFT-SMG Manager belum ada.');
      end;
    end
    else begin
      i := unTools.QBox(self, 'Resolusi komplain sudah pernah dicetak. ' + Chr(10) + Chr(13) +
        'Cetak ulang resolusi komplain ?', 'Resolusi Komplain');
      if i = IDYES then
        CetakRK(sNoRK);
    end;
  end
  else begin
    MsgBox('Form Resolusi Komplain hanya bisa dicetak oleh bagian : CFT/SMG');
  end;
end;

procedure TfrmDaftarRK.btnRefreshClick(Sender: TObject);
begin
  zq.Close;
  zq.Open;
end;

procedure TFrmDaftarRK.CetakRK(sNoRK: string);
var
  f: TfrmLapCCR;
begin
  f := TfrmLapCCR.Create(Self);
  f.zqRK.Close;
  f.zqRK.SQL.Text := 'SELECT * FROM tbl_rk WHERE no = ''' + sNoRK + '''';
  f.zqRK.Open;
  f.rptRK.ShowReport(True);

  {
  Rpt.NamaFile := 'rpt_rk';
  Rpt.SQL := 'SELECT * FROM tbl_rk WHERE no = ''' +
    sNoRK + '''';
  Rpt.preview;
  }
end;

procedure TfrmDaftarRK.FormShow(Sender: TObject);
var
  s: String;
begin
  if mJenis = 'dept_terkait' then
    s := 'Departemen Terkait'
  else if mJenis = 'mgr_terkait' then
    s := 'Manager Departemen Terkait'
  else if mJenis = 'mgr_qac' then
    s := 'Approval Manager QAC'
  else if mJenis = 'bd_dir' then
    s := 'Approval Bussiness & Development Director'
  else if mJenis = 'sales_dir' then
    s := 'Approval Sales Director'
  else if mJenis = 'GM' then
    s := 'Approval GM'
  else if mJenis = 'penutupan_ccr' then begin
    s := 'Penutupan CCR';
    btnPenutupanCCR.Visible := True;
  end;

  Caption := Caption + ' :: ' + s;

  if mJenis = 'GM' then begin
    zq.Close;
    zq.SQL.Text := 'SELECT * FROM v_rk ORDER BY tanggal DESC';
    zq.Open;
  end
  else begin
    zq.Close;
    zq.ParamByName('bagian').AsString := aplikasi.UserDept;
    zq.Open;
  end;

end;

procedure TfrmDaftarRK.btnLihatClick(Sender: TObject);
var
  sNoRK: string;
  f: TfrmProsesRK;
  q: TZQuery;
begin
  sNoRK := cxTblView.Controller.SelectedRecords[0].Values[0];
  f := TfrmProsesRK.Create(Self);
  if Jenis = 'mgr_qac' then begin
    f.View := False;
  end
  else begin
    f.View := True;
  end;

  f.NoRK := sNoRK;
  f.ShowModal;
  f.Release;
end;

procedure TfrmDaftarRK.cxTblViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  {
  if (ARecord.Values[2] >= 48) and (ARecord.Values[15] <> 'SELESAI')then begin
    AStyle := cxStyle1;
  end;
  if ARecord.Values[7] = 'CLOSED' then begin
    AStyle := cxStyle2;
  end;
  }
end;

procedure TfrmDaftarRK.btnGoClick(Sender: TObject);
begin
  cxTblView.DataController.Filter.BeginUpdate;
  try
    cxTblView.DataController.Filter.Root.Clear;
    cxTblView.DataController.Filter.Root.AddItem(cxTblViewStatus,
      foEqual,
      cxcStat.Text,
      cxcStat.Text);
  finally
    cxTblView.DataController.Filter.EndUpdate;
    cxTblView.DataController.Filter.Active := True;
  end;
end;

procedure TfrmDaftarRK.KirimEmail;
var
  email: THreadKirimEmail;
begin

end;

procedure TfrmDaftarRK.btnPenutupanCCRClick(Sender: TObject);
var
  sNoRK, dept, kategori,
  deskripsi_komplain, verifikasi_analisa,
  tindakan_perbaikan, tindak_lanjut,
  catatan_tambahan: string;
  q, qCCR: TZQuery;
  lstEmail, lstBody: TStringList;
  //email: ThreadKirimEmail;
  fw: TfrmWait;
  email: TIdMessage;
  bdy: TIdText;
begin
  sNoRK := cxTblView.Controller.SelectedRecords[0].Values[0];
  // cek apakah semua bos sudah approval
  q := OpenRS('SELECT * FROM tbl_rk WHERE f_dept_terkait = 1 AND ' +
    'f_mgr_area = 1 AND ' +
    'f_mgr_qac = 1 AND ' +
    'f_director = 1 AND ' +
    'f_director2 = 1 AND no = ''%s''', [sNoRK]);
  if q.IsEmpty then begin
    MsgBox('Approval CCR : ' + sNoRK + ' belum lengkap.');
    q.Close;
    Abort;
  end
  else begin
    // jika CCR sudah ditutup
    if q.FieldByName('status').AsString = 'CLOSED' then begin
      MsgBox('CCR : ' + sNoRK + ' sudah ditutup.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;
  
  lstEmail := TStringList.Create;

  dm.zConn.ExecuteDirect('UPDATE tbl_rk SET status = ''CLOSED'',  ' +
    'WHERE no = ''' + sNoRK + '''');

  // get bagian dan lain-lain
  qCCR := OpenRS('SELECT * FROM tbl_rk WHERE no = ''%s''', [sNoRK]);
  dept := qCCR.FieldByName('bagian').AsString;

  // GET MANAGER DEPT TERKAIT
  q := OpenRS('SELECT * FROM tbl_user WHERE divisi = ''%s'' ' +
    ' AND jabatan = ''MANAGER''', [dept]);
  while not q.Eof do begin
    lstEmail.Add(q.FieldByName('email').AsString);
    q.Next;  
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK''');
  while not q.Eof do begin
    lstEmail.Add(q.FieldByName('alamat_email').AsString);
    q.Next;
  end;
  q.Close;

  // jika kategori adalah PELAYANAN
  if kategori = 'PELAYANAN' then begin
    q := OpenRS('SELECT * FROM tbl_email WHERE jenis = ''RK-SMG''');
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('alamat_email').AsString);
      q.Next;
    end;
  end;
  q.Close;

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
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    email.Subject := 'CCR CLOSED NO#: ' + sNoRK + ', SO#: ' +
      qCCR.FieldByName('no_so').AsString + ', '
      + qCCR.FieldByName('nama_cust').AsString + ' ';

    lstBody := TStringList.Create;
    lstBody.Add('<html>');
    lstBody.Add('<head>');
    lstBody.Add('</head>');
    lstBody.Add('<body>');
    lstBody.Add('<h3>CUSTOMER CONCERN RECORD</h3></br></br>');
    lstBody.Add('<pre>');
    lstBody.Add('Nomer      : ' + qCCR.FieldByName('no').AsString);
    lstBody.Add('Tanggal    : ' + FormatDateTime('dd-MM-yyyy', qCCR.FieldByName('tanggal').AsDateTime));
    lstBody.Add('Dibuat     : ' + qCCR.FieldByName('dibuat_oleh').AsString);
    lstBody.Add('Kepada     : ' + qCCR.FieldByName('diberikan_kepada').AsString);
    lstBody.Add('Bagian     : ' + qCCR.FieldByName('bagian').AsString);
    lstBody.Add('Status     : <b>' + qCCR.FieldByName('status').AsString + '</b>');
    lstBody.Add('Kategori   : ' + qCCR.FieldByName('kategori').AsString);
    lstBody.Add('Target Sls.: ' + FormatDateTime('dd-MM-yyyy', qCCR.FieldByName('target_selesai').AsDateTime));
    lstBody.Add('');
    lstBody.Add('<b>DATA CUSTOMER</b>');
    lstBody.Add('No. SO     : ' + qCCR.FieldByName('no_so').AsString);
    lstBody.Add('Kode Cust. : ' + qCCR.FieldByName('kode_cust').AsString);
    lstBody.Add('Nama Cust. : ' + qCCR.FieldByName('nama_cust').AsString);
    lstBody.Add('Lok. Pasang: ' + qCCR.FieldByName('lokasi_pasang').AsString);
    lstBody.Add('Tgl.SO     : ' + FormatDateTime('dd-MM-yyyy', qCCR.FieldByName('tgl_pembelian').AsDateTime));
    lstBody.Add('Tgl. Kirim : ' + FormatDateTime('dd-MM-yyyy', qCCR.FieldByName('tgl_pengiriman').AsDateTime));
    lstBody.Add('');
    lstBody.Add('<b>DATA BARANG</b>');
    lstBody.Add('Kode Brg.  : ' + qCCR.FieldByName('target_selesai').AsString);
    lstBody.Add('Nama Brg.  : ' + qCCR.FieldByName('nama_barang').AsString);
    lstBody.Add('Warna      : ' + qCCR.FieldByName('warna').AsString);
    lstBody.Add('Jml. Order : ' + qCCR.FieldByName('jml_order').AsString);
    lstBody.Add('');
    lstBody.Add('<b>DESKRIPSI KOMPLAIN</b>');
    lstBody.Add(qCCR.FieldByName('deskripsi_komplain').AsString);
    lstBody.Add('');
    lstBody.Add('<b>VERIFIKASI ANALISA PRODUK</b>');
    lstBody.Add(qCCR.FieldByName('verifikasi_analisa').AsString);
    lstBody.Add('');
    lstBody.Add('<b>TINDAKAN PERBAIKAN</b>');
    lstBody.Add(qCCR.FieldByName('tindakan_perbaikan_int').AsString);
    lstBody.Add('');
    lstBody.Add('<b>TINDAK LANJUT</b>');
    lstBody.Add(qCCR.FieldByName('tindak_lanjut').AsString);
    lstBody.Add('');
    lstBody.Add('<b>PIC DEPT. TERKAIT : CHECKED</b>');
    lstBody.Add('<b>APPROVAL MANAGER AREA : CHECKED</b>');
    lstBody.Add('<b>APPROVAL MANAGER QAC : CHECKED</b>');
    lstBody.Add('<b>APPROVAL BUSSINESS AND DEVELOPMENT DIRECTOR : CHECKED</b>');
    lstBody.Add('<b>SALES DIRECTOR : CHECKED</b>');
    lstBody.Add('');
    lstBody.Add('<b>APPROVAL BUSSINESS AND DEVELOPMENT DIRECTOR : CHECKED</b>');

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
  
  {
  email := ThreadKirimEmail.CreateIt(True);
  email.EmailFrom := Aplikasi.CCR_email;
  email.SMTPServer := Aplikasi.SMTPServer;
  email.Password := Aplikasi.CCR_email_pass;
  email.EmailSend := lstEmail.CommaText;
  //email.EmailSend := 'yosef@sdp.mail';
  email.Subject := 'CCR CLOSED NO#: ' + sNoRK + ', SO#: ' +
    qCCR.FieldByName('no_so').AsString + ', '
    + qCCR.FieldByName('nama_cust').AsString + ' ' + Aplikasi.StrUjiCoba;

  email.BodyList := lstBody;
  email.Resume;

  fw := TfrmWait.Create(Self);
  fw.ShowModal;
  }
  qCCR.Edit;
  qCCR.FieldByName('dt_closed').AsDateTime := Aplikasi.NowServer;
  qCCR.FieldByName('tgl_selesai').AsDateTime := Aplikasi.NowServer;
  qCCR.Post;
  qCCR.Close;

  MsgBox('Resolusi Komplain dengan nomor : ' + sNoRK + ' sudah ditutup.');

end;

procedure TfrmDaftarRK.btnCetakSementaraClick(Sender: TObject);
var
  sNoRK: string;
begin
  sNoRK := cxTblView.Controller.SelectedRecords[0].Values[0];
  CetakRK(sNoRK);  
end;

end.
