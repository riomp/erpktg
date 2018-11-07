unit unFrmPermintaanRevisi;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMemo, cxLabel,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, ZDataset,
  IdMessage, IdText, DB, IdAttachmentFile, cxMaskEdit, cxDropDownEdit;

type
  TfrmPermintaanRevisi = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxmDesk: TcxMemo;
    btnAttach1: TButton;
    btnAttach2: TButton;
    Panel1: TPanel;
    Label1: TLabel;
    btnSimpan2: TButton;
    btnBatal2: TButton;
    idSMTP: TIdSMTP;
    OpenDlg: TOpenDialog;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxtAttach1: TcxTextEdit;
    cxtAttach2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxCmbAplikasi: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnBatal2Click(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
    procedure btnAttach1Click(Sender: TObject);
    procedure btnAttach2Click(Sender: TObject);
  private
    procedure SendEmail(sNoTrs: string);
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmPermintaanRevisi: TfrmPermintaanRevisi;

implementation

uses unTools, unAplikasi, unDm;

{$R *.dfm}

procedure TfrmPermintaanRevisi.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;

  //
  OpenDlg.Filter := 'PDF (*.pdf)|*.PDF|JPG (*.jpg)|*.JPG|Excel (*.xls)|*.XLS' +
    '|Excel XLSX (*.xlsx)|*.XLSX';

  // combo
  cxCmbAplikasi.Properties.Items.Add('MDA');
  cxCmbAplikasi.Properties.Items.Add('HRIS');
  cxCmbAplikasi.Properties.Items.Add('LAIN-LAIN');
  cxCmbAplikasi.ItemIndex := 0;
end;

procedure TfrmPermintaanRevisi.btnBatal2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPermintaanRevisi.btnSimpan2Click(Sender: TObject);
var
  sNoTrs: string;
  q: TZQuery;
begin
  inherited;
  if Trim(cxmDesk.Text) = '' then begin
    MsgBox('Deskripsi revisi harus diisi.');
    cxmDesk.SetFocus;
  end
  else begin
    try
      Screen.Cursor := crSQLWait;
      sNoTrs := GetLastFak('revisi_trs');
      UpdateFaktur(Copy(sNoTrs,1,8));

      q := OpenRS('SELECT * FROM tbl_revisi_trs WHERE no_bukti = ''%s''',[sNoTrs]);
      q.Insert;
      q.FieldByName('no_bukti').AsString := sNoTrs;
      q.FieldByName('tanggal').AsDateTime := aplikasi.NowServer;
      q.FieldByName('deskripsi').AsString := cxmDesk.Text;
      q.FieldByName('user_req').AsString := Aplikasi.NamaUser;
      q.FieldByName('user_dept_req').AsString := Aplikasi.UserDept;
      if Edit1.Text <> '' then begin
        TBlobField(q.FieldByName('attach1')).LoadFromFile(Edit1.text);
        q.FieldByName('ext1').AsString := ExtractFileExt(Edit1.Text)
      end;
      if Edit2.Text <> '' then begin
        TBlobField(q.FieldByName('attach2')).LoadFromFile(Edit2.text);
        q.FieldByName('ext2').AsString := ExtractFileExt(Edit2.Text)
      end;
      q.FieldByName('jenis').AsString := cxCmbAplikasi.Text;
      q.Post;

      MsgBox('Permintaan revisi transaksi sudah disimpan.');

      SendEmail(sNoTrs);

      ClearAll;
      cxmDesk.SetFocus;
      Screen.Cursor := crDefault;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        Screen.Cursor := crDefault;
        MsgBox('Error: ' + E.Message);
      end;
    end;

  end;
end;

procedure TFrmPermintaanRevisi.SendEmail(sNoTrs: string);
var
  email : TIdMessage;
  lst: TStringList;
  bdy: TIdText;
  atasan1, atasan2, email1, email2, eml: string;
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_user WHERE nama = ''%s''',[Aplikasi.NamaUser]);
  atasan1 := q.FieldByName('atasan1').AsString;
  atasan2 := q.FieldByName('atasan2').AsString;
  q.Close;

  eml := '';
  q := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',[atasan1]);
  if not q.IsEmpty then begin
    email1 := q.FieldByName('email').AsString;
    eml := email1;
  end;
  q.Close;

  q := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',[atasan2]);
  if not q.IsEmpty then begin
    email2 := q.FieldByName('email').AsString;
    eml := eml + ',' + email2;
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
      email.Recipients.EMailAddresses := email1 + ',' + email2
    else
      email.Recipients.EMailAddresses := eml + ',' +
        'yosef@sdp.mail,dwi@sdp.mail,rudy@sdp.mail,sunanto@sdp.mail';

    if cxCmbAplikasi.Text = 'HRIS' then
      email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',boby@sdp.mail,ita@sdp.mail,ferydwi@sdp.mail'; 

    email.Subject := 'Permintaan Revisi Transaksi Nomor : ' + sNoTrs;

    if Edit1.Text <> '' then
      TIdAttachmentFile.Create(email.MessageParts, Edit1.Text);
    if Edit2.Text <> '' then
      TIdAttachmentFile.Create(email.MessageParts, Edit2.Text);

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada permintaan revisi transaksi yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('User Request : ' + aplikasi.NamaUser);
    lst.Add('</br>');
    lst.Add('Deskripsi Permintaan :');
    lst.Add('</br>');
    cxmDesk.Text := StringReplace(cxmDesk.Text, #13, '<br/>', [rfReplaceAll]);
    lst.Add(cxmDesk.Text);
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

end;

procedure TfrmPermintaanRevisi.btnAttach1Click(Sender: TObject);
begin
  inherited;
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 250000 then
        MsgBox('Ukuran file tidak boleh lebih dari 250KB.')
      else begin
        Edit1.Text := OpenDlg.FileName;
        cxtAttach1.Text := ExtractFileName(Edit1.Text);
      end;
    end;
  except
  end;
end;

procedure TfrmPermintaanRevisi.btnAttach2Click(Sender: TObject);
begin
  inherited;
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 250000 then
        MsgBox('Ukuran file tidak boleh lebih dari 250KB.')
      else begin
        Edit2.Text := OpenDlg.FileName;
        cxtAttach2.Text := ExtractFileName(Edit2.Text);
      end;
    end;
  except
  end;
end;

procedure TfrmPermintaanRevisi.ClearAll;
begin
  cxmDesk.Text := '';
  cxtAttach1.Text := '';
  cxtAttach2.Text := '';
  Edit1.Text := '';
  Edit2.Text;
end;

end.
