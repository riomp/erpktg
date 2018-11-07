unit unFrmAppPermintaanRevisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxTextEdit, cxMemo, cxDBEdit, cxLabel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckBox, ShellAPI,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  IdMessage, IdText, IdAttachmentFile;

type
  TfrmAppPermintaanRevisi = class(TfrmTplTrans)
    cxTbl: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqr: TZReadOnlyQuery;
    ds: TDataSource;
    cxTblno_bukti: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTbluser_req: TcxGridDBColumn;
    cxTbluser_dept_req: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cdbMemDesk: TcxDBMemo;
    Panel1: TPanel;
    btnApp: TButton;
    btnTidakApp: TButton;
    btnKeluar2: TButton;
    btnAttach1: TButton;
    btnAttach2: TButton;
    idSMTP: TIdSMTP;
    cxTblColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnAttach1Click(Sender: TObject);
    procedure btnAttach2Click(Sender: TObject);
    procedure btnAppClick(Sender: TObject);
    procedure btnTidakAppClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAppPermintaanRevisi: TfrmAppPermintaanRevisi;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmAppPermintaanRevisi.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  zqr.SQL.Text := Format('SELECT * FROM tbl_revisi_trs WHERE user_req IN ' +
    '(SELECT nama FROM tbl_user WHERE atasan1 = ''%s'' OR atasan2 = ''%s'') ' +
    'AND f_approval = 0',
    [Aplikasi.NamaUser, aplikasi.NamaUser]);
  zqr.Open;
end;

procedure TfrmAppPermintaanRevisi.FormShow(Sender: TObject);
var
  aCol, aCol2: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxTbl.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; 
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;

  aCol2 := cxTbl.CreateColumn;
  with aCol2 do begin
    Name := 'colKeterangan';
    Caption := 'Keterangan Tambahan';
  end;
  aCol2.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol2.PropertiesClass := TcxTextEditProperties;
  aCol2.Width := 300;
  with aCol2.Properties as TcxTextEditProperties do begin
    
  end;
  aCol2.Index := 5;

end;

procedure TfrmAppPermintaanRevisi.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmAppPermintaanRevisi.btnAttach1Click(Sender: TObject);
var
  q: TZQuery;
  ext: string;
begin
  inherited;
  q := OpenRS('SELECT attach1, ext1 FROM tbl_revisi_trs WHERE no_bukti = ''%s''',
    [zqr.FieldByName('no_bukti').AsString]);

  if q.FieldByName('attach1').IsNull then begin
    q.Close;
    Abort;
  end
  else begin
    ext := q.FieldByName('ext1').AsString;
    TBlobField(q.FieldByName('attach1')).SaveToFile(aplikasi.AppPath + 'tmp' + ext);
  end;
  q.Close;

  try
    ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp' + ext), nil, nil, SW_SHOWNORMAL);
  except
  end;
end;

procedure TfrmAppPermintaanRevisi.btnAttach2Click(Sender: TObject);
var
  q: TZQuery;
  ext: string;
begin
  inherited;
  q := OpenRS('SELECT attach2, ext2 FROM tbl_revisi_trs WHERE no_bukti = ''%s''',
    [zqr.FieldByName('no_bukti').AsString]);

  if q.FieldByName('attach2').IsNull then begin
    q.Close;
    Abort;
  end
  else begin
    ext := q.FieldByName('ext2').AsString;
    TBlobField(q.FieldByName('attach2')).SaveToFile(aplikasi.AppPath + 'tmp' + ext);
  end;
  q.Close;

  try
    ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp' + ext), nil, nil, SW_SHOWNORMAL);
  except
  end;
end;

procedure TfrmAppPermintaanRevisi.btnAppClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody: TStringList;
  chk, sNoSO: string;
  q: TZQuery;
  email: TIdMessage;
  bdy: TIdText;
begin
  lst := TStringList.Create;
  lst2 := TStringList.Create;
  for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTbl.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTbl.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTbl.DataController.Values[i,1]);
      if not VarIsNull(cxTbl.DataController.Values[i,5]) then
        lst2.Add(cxTbl.DataController.Values[i,5])
      else
        lst2.Add('');
    end;
  end;

  if lst.Count > 0 then begin
    Screen.Cursor := crSQLWait;
    for i := 0 to lst.Count - 1 do begin
      dm.zConn.ExecuteDirect('UPDATE tbl_revisi_trs SET f_approval = 1, ' +
        'keterangan_app = ''' + UpperCase(lst2.Strings[i]) + ''', ' +
        'user_app = ''' + aplikasi.NamaUser + ''', ' +
        'tgl_app = now() ' + 
        'WHERE no_bukti = ''' + lst.Strings[i] + '''');

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

        email.Recipients.EMailAddresses := 'yosef@sdp.mail,rudy@sdp.mail,dwi@sdp.mail';

        email.Subject := 'Approval Permintaan Revisi No: ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Approval Permintaan Revisi</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT b.email, a.user_req, a.deskripsi FROM tbl_revisi_trs a ' +
          'LEFT JOIN tbl_user b ON a.user_req = b.nama ' +
          'WHERE no_bukti = ''%s''',
          [lst.Strings[i]]);
        email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
          q.FieldByName('email').AsString;
        lstBody.Add('User Request : ' + q.FieldByName('user_req').AsString);
        lstBody.Add('User Email   : ' + q.FieldByName('email').AsString);
        lstBody.Add('Deskripsi    : ');
        //lstBody.Add(StringReplace(q.FieldByName('deskripsi').AsString, #13, '<br/>', [rfReplaceAll]));
        lstBody.Add(q.FieldByName('deskripsi').AsString);
        lstBody.Add('Keterangan Tambahan : ');
        lstBody.Add(lst2.Strings[i]);
        q.Close;

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
        //email.Free;
        bdy.Free;
        lstBody.Free;
      end;

    end;
    zqr.Close;
    zqr.Open;
    Screen.Cursor := crDefault;
  end;

  if lst.Count > 0 then
    MsgBox('Approval permintaan revisi sudah disimpan.');
end;

procedure TfrmAppPermintaanRevisi.btnTidakAppClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody: TStringList;
  chk, sNoSO: string;
  q: TZQuery;
  email: TIdMessage;
  bdy: TIdText;
begin
  lst := TStringList.Create;
  lst2 := TStringList.Create;
  for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTbl.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTbl.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTbl.DataController.Values[i,1]);
      if not VarIsNull(cxTbl.DataController.Values[i,5]) then
        lst2.Add(cxTbl.DataController.Values[i,5])
      else
        lst2.Add('');
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin
      dm.zConn.ExecuteDirect('UPDATE tbl_revisi_trs SET f_approval = 2, ' +
        'keterangan_app = ''' + UpperCase(lst2.Strings[i]) + ''' ' +
        'WHERE no_bukti = ''' + lst.Strings[i] + '''');

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

        email.Recipients.EMailAddresses := 'yosef@sdp.mail,rudy@sdp.mail,dwi@sdp.mail';

        email.Subject := 'Tidak Approval Permintaan Revisi No: ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Tidak Approval Permintaan Revisi</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT b.email, a.user_req, a.deskripsi FROM tbl_revisi_trs a ' +
          'LEFT JOIN tbl_user b ON a.user_req = b.nama ' +
          'WHERE no_bukti = ''%s''',
          [lst.Strings[i]]);
        email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
          q.FieldByName('email').AsString;
        lstBody.Add('User Request : ' + q.FieldByName('user_req').AsString);
        lstBody.Add('User Email   : ' + q.FieldByName('email').AsString);
        lstBody.Add('Deskripsi    : ');
        //lstBody.Add(StringReplace(q.FieldByName('deskripsi').AsString, #13, '<br/>', [rfReplaceAll]));
        lstBody.Add(q.FieldByName('deskripsi').AsString);
        lstBody.Add('Keterangan Tambahan : ');
        lstBody.Add(lst2.Strings[i]);
        q.Close;

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
        //email.Free;
        bdy.Free;
        lstBody.Free;
      end;

    end;
    zqr.Close;
    zqr.Open;
  end;

  if lst.Count > 0 then
    MsgBox('Approval permintaan revisi sudah disimpan.');

end;

end.
