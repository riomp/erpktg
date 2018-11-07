unit unFrmAfterSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DB, ZAbstractRODataset, ZDataset, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxLabel, cxTextEdit, StdCtrls, ExtCtrls, dxSkinscxPCPainter, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxSpinEdit, ZAbstractDataset,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,IdMessage, IdText, IdAttachmentFile, IdSSL, IdSSLOpenSSL,
  IdIOHandlerSocket, IdIOHandlerStack;

type
  TfrmAfterSales = class(TfrmTransBaru)
    Label3: TLabel;
    Label1: TLabel;
    cmbJenis: TComboBox;
    cxLabel6: TcxLabel;
    cxdTglTrans: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxlCust: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxlSales: TcxLookupComboBox;
    Label2: TLabel;
    cxLabel1: TcxLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxdTglSJ: TcxDateEdit;
    cxtNoSJ: TcxTextEdit;
    cmbKategori: TComboBox;
    cxlDiberikan: TcxLookupComboBox;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    zqrSales: TZReadOnlyQuery;
    dsSales: TDataSource;
    Label6: TLabel;
    cxeDibuatOleh: TcxTextEdit;
    cxtNoTrans: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    zrq: TZReadOnlyQuery;
    dsUserApp: TDataSource;
    cxGrid6: TcxGrid;
    cxTblSurvey: TcxGridTableView;
    cxColKriteria: TcxGridColumn;
    cxColPoin: TcxGridColumn;
    cxColNote: TcxGridColumn;
    cxGridLevel4: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblKeluhan: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColKode: TcxGridColumn;
    cxColItem: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    cxColNoSO: TcxGridColumn;
    cxColNoSPK: TcxGridColumn;
    cxColNoCP: TcxGridColumn;
    cxColKeluhan: TcxGridColumn;
    zBrg: TZQuery;
    dsBrg: TDataSource;
    Label7: TLabel;
    cxtTempat: TcxTextEdit;
    Label27: TLabel;
    cxtAplikasi: TcxTextEdit;
    idSMTP: TIdSMTP;
    procedure FormCreate(Sender: TObject);
    procedure cmbJenisChange(Sender: TObject);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure cxTblKeluhanDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
        lstImage: TStringList;
    procedure ClearAll;
    procedure SendEmail(sNoCCR: string);
  public
    { Public declarations }
  end;

var
  frmAfterSales: TfrmAfterSales;

implementation

uses unDm, unAplikasi, unTools, unFrmLaporan1, unFrmLapUmum, unFrmTplTrans;

{$R *.dfm}

procedure TfrmAfterSales.FormCreate(Sender: TObject);
begin
  zqrCust.Open ;
  zqrSales.Open ;
  zrq.Open ;
  zBrg.Open ;

  cxdTglTrans.Date  := Aplikasi.TanggalServer ;
  cxdTglSJ.Date := Aplikasi.TanggalServer ;
  cxtNoTrans.Text := GetLastFak('komplain-customer');
  cxeDibuatOleh.Text := aplikasi.NamaUser;

  Self.Jenis := 'tambah';
  //cxPageControl1.ActivePageIndex := 1 ;
  cxTabSheet1.TabVisible := False ;
  cxTabSheet2.TabVisible := True ;

  cmbKategori.Items.Add('HARGA');
  cmbKategori.Items.Add('LAIN-LAIN');
  cmbKategori.Items.Add('MUTU PRODUKSI');
  cmbKategori.Items.Add('PELAYANAN');

end;

procedure TfrmAfterSales.cmbJenisChange(Sender: TObject);
var
  lst: TStringList;
  i,j:Integer ;
begin

  if cmbJenis.Text = 'SURVEY' then begin
    cmbKategori.Enabled := False ;
    cxlDiberikan.Enabled := False ;
     cxTabSheet1.TabVisible := True ;
    cxTabSheet2.TabVisible := False ;
    cxtAplikasi.Enabled := False ;
    cxtTempat.Enabled :=False ;

    lst := TStringList.Create;
    lst.CommaText := '"PELAYANAN","KUALITAS","PENGIRIMAN"';
    with cxTblSurvey.DataController do begin
    for j := 0 to lst.Count-1 do begin
      i := AppendRecord;
      Values[i, cxColKriteria.Index] := lst.Strings[j];
    end;
  end;

    end
      else begin
        cmbKategori.Enabled := True ;
        cxlDiberikan.Enabled := True ;
        cxTabSheet1.TabVisible := False ;
        cxTabSheet2.TabVisible := True ;
        cxtAplikasi.Enabled := True ;
        cxtTempat.Enabled :=True ;
      end

end;

procedure TfrmAfterSales.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
  var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);

end;

procedure TfrmAfterSales.cxTblKeluhanDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  if AItemIndex = cxColItem.Index then begin
      try
        cxTblKeluhan.BeginUpdate;
        ADataController.Values[ARecordIndex, cxColkode.Index] :=
          ADataController.Values[ARecordIndex, cxColItem.Index];
      finally
        cxTblKeluhan.EndUpdate;
      end;
  end;

end;

procedure TfrmAfterSales.btnSimpanClick(Sender: TObject);
var
  no: string;
  q,z : TZQuery;
  i : Integer ;
  f: TFrm_LaporanUmum1 ;
begin
  if cxlCust.Text = '' then begin
    MsgBox('Mohon isi nama customer.');
    cxlCust.SetFocus;
    Abort;
  end;

  if cxlsales.Text = '' then begin
    MsgBox('Mohon isi nama sales.');
    cxlSales.SetFocus;
    Abort;
  end;

  if cxtNoSJ.Text = '' then begin
    MsgBox('Mohon isi nomor surat jalan.');
    cxtNoSJ.SetFocus;
    Abort;
  end;

  if cmbJenis.Text = 'KOMPLAIN' then begin
    if cxlDiberikan.Text = '' then begin
    MsgBox('Mohon isi diberikan kepada.');
    cxlDiberikan.SetFocus;
    Abort;
    end;
    if cmbKategori.Text = '' then begin
    MsgBox('Mohon isi kategori.');
    cmbKategori.SetFocus;
    Abort;
    end;

    no := GetLastFak('komplain-customer');
    UpdateFaktur(Copy(no,1,8));

    q := OpenRS('SELECT * FROM tbl_rk where no =''%s''',[cxtNoTrans.Text]) ;

    q.Insert ;
    with q do begin
      FieldByName('no').AsString := no;
      FieldByName('dibuat_oleh').AsString := cxeDibuatOleh.Text;
      FieldByName('diberikan_kepada').AsString := cxlDiberikan.Text;
      FieldByName('bagian').AsString := cxlDiberikan.EditValue ;
      FieldByName('kategori').AsString := cmbKategori.Text ;
      FieldByName('kode_cust').AsString := cxlCust.EditValue;
      FieldByName('kode_sales').AsString := cxlSales.EditValue;
      FieldByName('tanggal').AsDateTime := cxdTglTrans.Date ;
      FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      FieldByName('status').AsString := 'PROCESSED';
      FieldByName('no_sj').AsString := cxtNoSJ.Text ;
      FieldByName('tgl_pengiriman').AsDateTime := cxdTglSJ.Date;
      FieldByName('lokasi_pasang').AsString := cxtTempat.Text;
      FieldByName('aplikasi_produk').AsString := cxtAplikasi.Text ;
      Post ;
      Close;
    end;

    try
      with cxTblKeluhan.DataController do begin
          for i := 0 to RecordCount - 1 do begin
            z := OpenRS('SELECT * FROM tbl_rk_det where no_rk =''%s''',[cxtNoTrans.Text]) ;
            z.Insert;
            z.FieldByName('no_rk').AsString := cxtNoTrans.Text;
            z.FieldByName('no').AsInteger := i+1;
            z.FieldByName('kode_brg').AsString := Values[i, cxColKode.index];
            z.FieldByName('qty').AsFloat := Values[i, cxColQty.index];
            z.FieldByName('no_spk').AsString := Values[i, cxColNoSPK.index];
            z.FieldByName('no_so').AsString := Values[i, cxColNoSO.index];
            z.FieldByName('no_cp').AsString := Values[i, cxColNoCP.index];
            z.FieldByName('komplain').AsString := Values[i, cxColKeluhan.index];
            z.Post;
            z.Close;
          end;
      end;

      f := TFrm_LaporanUmum1.Create(Self);
      with f do begin
            zqrKeluhan.Close;
            zqrKeluhan.ParamByName('no_komplain').AsString := cxtNoTrans.Text;
            zqrKeluhan.Open ;
            rptKeluhan.ShowReport(true);
          end;
          f.Release ;



      SendEmail(no);

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

    end
    else begin

    no := GetLastFak('komplain-customer');
    UpdateFaktur(Copy(no,1,8));

    q := OpenRS('SELECT * FROM tbl_rk where no =''%s''',[cxtNoTrans.Text]) ;

    q.Insert ;
    with q do begin
      FieldByName('no').AsString := no;
      FieldByName('dibuat_oleh').AsString := cxeDibuatOleh.Text;
      FieldByName('kategori').AsString := 'SURVEY';
      FieldByName('kode_cust').AsString := cxlCust.EditValue;
      FieldByName('kode_sales').AsString := cxlSales.EditValue;
      FieldByName('tanggal').AsDateTime := cxdTglTrans.Date ;
      FieldByName('no_sj').AsString := cxtNoSJ.Text ;
      FieldByName('tgl_pengiriman').AsDateTime := cxdTglSJ.Date;
      Post ;
      Close;
    end;

    try
      with cxTblSurvey.DataController do begin
          for i := 0 to RecordCount - 1 do begin
            z := OpenRS('SELECT * FROM tbl_survey where no =''%s''',[cxtNoTrans.Text]) ;
            z.Insert;
            z.FieldByName('no').AsString := no;
            z.FieldByName('kriteria').AsString := Values[i, cxColKriteria.index];
            z.FieldByName('poin').AsString := Values[i, cxColPoin.index];
            z.FieldByName('kriteria').AsString := Values[i, cxColKriteria.index];
            z.FieldByName('note').AsString := Values[i, cxColNote.index];
            z.Post;
            z.Close;
          end;
      end;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

      f := TFrm_LaporanUmum1.Create(self);
      with f do begin
        zqrSurvey.Close;
        zqrSurvey.ParamByName('no_survey').AsString := cxtNoTrans.Text ;
        zqrSurvey.Open ;
        rptSurvey.ShowReport(true);
      end;
      f.Release ;

    //Application.MessageBox('Data Sudah Disimpan','Informasi',MB_OK);
    //Application.Terminate ;
  end ;
    // Application.Terminate;
    btnKeluarClick(nil);
end;

procedure TfrmAfterSales.ClearAll;
begin

end;

procedure TfrmAfterSales.SendEmail(sNoCCR: string);
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
  q := OpenRS('SELECT * FROM tbl_user WHERE user_dept = ''%s''',[cxlDiberikan.EditValue]);
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

    email.Subject := 'Komplain Customer NO#: ' + sNoCCR + ' ';

    lstBody := TStringList.Create;
    lstBody.Add('<html>');
    lstBody.Add('<head>');
    lstBody.Add('</head>');
    lstBody.Add('<body>');
    lstBody.Add('<h3>CUSTOMER CONCERN RECORD</h3></br></br>');
    lstBody.Add('<pre>');
    lstBody.Add('Nomer      : ' + sNoCCR);
    lstBody.Add('Tanggal    : ' + cxdTglTrans.Text);
    lstBody.Add('Dibuat     : ' + cxeDibuatOleh.Text);
    lstBody.Add('Kepada     : ' + cxlDiberikan.Text);
    lstBody.Add('Kategori   : ' + cmbKategori.Text);
    lstBody.Add('');
    lstBody.Add('<b>DATA CUSTOMER</b>');
    lstBody.Add('Kode Cust. : ' + cxlCust.EditValue);
    lstBody.Add('Nama Cust. : ' + cxlCust.Text);
    lstBody.Add('Lok. Pasang: ' + cxtTempat.Text);
    lstBody.Add('No. SJ     : ' + cxtNoSJ.Text);
    lstBody.Add('Tgl. Kirim : ' + cxdTglSJ.Text);
    lstBody.Add('');

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

end.
