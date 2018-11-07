unit unThreadKirimEmail;

interface

uses
  Dialogs, SysUtils,Classes,IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdText, IdAttachmentFile;

type

  ThreadKirimEmail = class(TThread)
  private
    mEmailFrom: string;
    mSMTPServer: string;
    mPassword: string;
    mListEmail: TStringList;
    mEmailSend: string;
    mSubject: string;
    mBody: string;
    mLstBodyList: TStringList;
    mLstAttachment: TStringList;
    function prosesDataKirim: string;
  public
    IsFinish: Boolean;
    constructor CreateIt(CreateSuspended: Boolean);
    procedure Execute; override;
    destructor Destroy; override;

    property EmailFrom: string read mEmailFrom write mEmailFrom;
    property SMTPServer: string read mSMTPServer write mSMTPServer;
    property Password: string read mPassword write mPassword;
    property ListEmail: TStringList read mListEmail write mListEmail;
    property EmailSend: string read mEmailSend write mEmailSend;
    property Subject: string read mSubject write mSubject;
    property Body: string read mBody write mBody;
    property BodyList: TStringList write mLstBodyList;
    property LstAttachment: TStringList read mLstAttachment write mLstAttachment;
    procedure OnWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
    procedure OnWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  end;

implementation

uses unTools;

constructor ThreadKirimEmail.CreateIt(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  FreeOnTerminate := True;
  //Suspended := False;
  mListEmail := TStringList.Create;
  mLstAttachment := TStringList.Create;
  IsFinish := False;
end;

procedure ThreadKirimEmail.Execute;
var
  bdy: TIdText;
  email      : TIdMessage;
  idSMTPGMail: TIdSMTP;
  idSSLGMail : TIdSSLIOHandlerSocketOpenSSL;
  html: TStringList;
  i: Integer;
begin
  idSMTPGMail := TIdSMTP.Create(nil);
  idSMTPGMail.AuthType := satNone;
  idSMTPGMail.Host := mSMTPServer;
  idSMTPGMail.Port     := 25;
  idSMTPGMail.UserName := mEmailFrom;
  idSMTPGMail.Password := mPassword;
  idSMTPGMail.OnWork := Self.OnWork;
  IdSMTPGmail.OnWorkEnd := Self.OnWorkEnd;

  email := TIdMessage.Create(nil);
  email.ContentType := 'multipart/mixed';

  bdy := TIdText.Create(email.MessageParts, mLstBodyList);
  bdy.ContentType := 'text/html';

  //bdy.Body.Text := mBody;

  email.From.Address              := mEmailFrom;
  email.Recipients.EMailAddresses := mEmailSend;
  email.Subject                   := mSubject;

  // attachment
  if mLstAttachment.Count > 0 then begin
    for i := 0 to mLstAttachment.Count - 1 do begin
      TIdAttachmentFile.Create(email.MessageParts, mLstAttachment.Strings[i]);
    end;
  end;

  try
    idSMTPGMail.Connect;
    idSMTPGMail.Send(email);
    idSMTPGMail.Disconnect;
  except
    on E: Exception do begin
      ShowMessage(E.Message + Chr(10) + Chr(13) +
        'Terjadi Error pengiriman email, mohon ulangi pengiriman email.');
    end;
  end;

  {


    idSSLGMail                   := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    idSSLGMail.SSLOptions.Method := sslvTLSv1;
    idSSLGMail.SSLOptions.Mode   := sslmUnassigned;

    idSMTPGMail                  := TIdSMTP.Create(nil);
    idSMTPGMail.IOHandler        := idSSLGMail;
    idSMTPGMail.UseTLS           := utUseExplicitTLS;

    email                           := TIdMessage.Create(nil);
    email.From.Address              := 'pregool@gmail.com';
    email.Recipients.EMailAddresses := 'yoseg.ray@gmail.com';
    email.Subject                   := '';

    idSMTPGMail.Host     := 'smtp.gmail.com';
    idSMTPGMail.Port     := 587;
    idSMTPGMail.UserName := 'pregool@gmail.com';
    idSMTPGMail.Password := '7263540011..';

    email := TIdMessage.Create(nil);
    email.ContentType := 'multipart/mixed';

    bdy := TIdText.Create(email.MessageParts, mLstBodyList);
    bdy.ContentType := 'text/html';

    // attachment
    {
    if mLstAttachment.Count > 0 then begin
      for i := 0 to mLstAttachment.Count - 1 do begin
        TIdAttachmentFile.Create(email.MessageParts, mLstAttachment.Strings[i]);
      end;
    end;


    try
      idSMTPGMail.Connect;
      idSMTPGMail.Send(email);
      idSMTPGMail.Disconnect;
    except

    end;

    email.Free;
    idSSLGMail.Free;
    idSMTPGMail.Free;
  }
end;

destructor ThreadKirimEmail.Destroy;
begin
  inherited Destroy;
end;

function ThreadKirimEmail.prosesDataKirim : string;
var
  sTmp: string;
  {
  sTmp, sTmp2, sTglServer,
  statusEOD: string;
  q, q2: TZQuery;
  jmlTrs, rpTrs: Real;
  }
begin
  {
  // ambil tanggal server
  sTglServer := aplikasi.TanggalString;

  // jumlah transaksi
  q := OpenRS('SELECT COUNT(*) AS jml FROM tsale WHERE tgltrs = ''%s''',
    [sTglServer]);
  jmlTrs := q.FieldByName('jml').AsFloat;
  q.Close;

  // rupiah transaksi
  q := OpenRS('SELECT SUM(jum-disc) As jml FROM tsale WHERE tgltrs = ''%s''',
    [sTglServer]);
  rpTrs := q.FieldByName('jml').AsFloat;
  q.Close; 
                  
  // status EOD
  q := OpenRS('SELECT * FROM treod WHERE tanggal = ''%s''',
    [sTglServer]);
  if not q.IsEmpty then
    if q.FieldByName('eod').AsString = 'F' then
      statusEOD := 'Belum EOD'
    else
      statusEOD := 'Sudah EOD';
  q.Close;

  // kode kasir yang digunakan
  q := OpenRS('SELECT kodeuser, namauser, clerek FROM cekeod c, userapp u ' +
    'WHERE c.kodeuser = u.kode AND ' +
    'tglksr = ''%s''',
    [sTglServer]);
  sTmp2 := '';  
  if not q.IsEmpty then
    while not q.Eof do begin
      sTmp2 := sTmp2 +
        '- Kode Kasir : ' + q.FieldByName('kodeuser').AsString + chr(13) +
        '  Nama User  : ' + q.FieldByName('namauser').AsString + chr(13) + 
        '  Status     : ';
      if q.FieldByName('clerek').AsString = 'F' then
        sTmp2 := sTmp2 + 'Belum Clerek' + chr(13);

      // ambil transaksi kasir
      q2 := OpenRS('SELECT SUM(jum-disc) As jml FROM tsale WHERE Left(nofak,3) = ''%s'' ' +
        'AND tgltrs = ''%s''',
        [q.FieldByName('kodeuser').AsString, sTglServer]);
      sTmp2 := sTmp2 +
        '  Jml. Trans : ' + FormatFloat('#,##', q2.FieldByName('jml').AsFloat) + chr(13);
      q2.Close;
      q2 := nil;

      q.Next;
    end;
  q.Close;

  sTmp := 'LAPORAN EMAIL POINT OF SALES' + chr(13) +
          '============================' + chr(13) +
          'Jml. Transaksi : ' + FormatFloat('#,##', jmlTrs) + chr(13) +
          'Rp. Transaksi  : ' + FormatFloat('#,##', rpTrs) + chr(13) +
          '(Sudah dikurangi diskon) ' + chr(13) + 
          'Status EOD     : ' + statusEOD + chr(13) +  
          '============================' + chr(13) + chr(13) +
          'KASIR DAN CLEREK : ' + chr(13) +
          '============================' + chr(13) +
          sTmp2 + chr(13) +
          '============================';

  Result := sTmp;

  q.Close;
  q := nil;
  }
end;

procedure ThreadKirimEmail.OnWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
begin
  
end;

procedure ThreadKirimEmail.OnWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  IsFinish := True;
end;

end.
 