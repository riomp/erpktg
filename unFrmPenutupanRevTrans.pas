unit unFrmPenutupanRevTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
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
  cxTextEdit, cxMemo, cxDBEdit, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, ZAbstractRODataset, ZDataset, cxCheckBox, ShellAPI, IdMessage, IdText;

type
  TfrmPenutupanRevTrans = class(TfrmTplTrans)
    zqr: TZReadOnlyQuery;
    ds: TDataSource;
    idSMTP: TIdSMTP;
    cxGrd: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTblno_bukti: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTbluser_req: TcxGridDBColumn;
    cxTbluser_dept_req: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cdbMemDesk: TcxDBMemo;
    btnAttach1: TButton;
    btnAttach2: TButton;
    Panel1: TPanel;
    btnTutupRev: TButton;
    btnKeluar2: TButton;
    cxTblketerangan_app: TcxGridDBColumn;
    cxTbluser_app: TcxGridDBColumn;
    cxTbltgl_app: TcxGridDBColumn;
    cxTblf_approval: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnAttach1Click(Sender: TObject);
    procedure btnAttach2Click(Sender: TObject);
    procedure btnTutupRevClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPenutupanRevTrans: TfrmPenutupanRevTrans;

implementation

uses unTools, unDm, unAplikasi;

{$R *.dfm}

procedure TfrmPenutupanRevTrans.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  zqr.SQL.Text := 'SELECT * FROM tbl_revisi_trs WHERE f_closed = 0';
  zqr.Open;
end;

procedure TfrmPenutupanRevTrans.FormShow(Sender: TObject);
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
end;

procedure TfrmPenutupanRevTrans.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmPenutupanRevTrans.btnAttach1Click(Sender: TObject);
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

procedure TfrmPenutupanRevTrans.btnAttach2Click(Sender: TObject);
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


procedure TfrmPenutupanRevTrans.btnTutupRevClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody: TStringList;
  chk, sNoSO: string;
  q, qa: TZQuery;
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
      lst.Add(cxTbl.DataController.Values[i,2]);
      if not VarIsNull(cxTbl.DataController.Values[i,6]) then
        lst2.Add(cxTbl.DataController.Values[i,6])
      else
        lst2.Add('');
    end;
  end;

  if lst.Count > 0 then begin
    Screen.Cursor := crSQLWait;
    for i := 0 to lst.Count - 1 do begin
      dm.zConn.ExecuteDirect('UPDATE tbl_revisi_trs SET f_closed = 1, ' +
        'user_closed = ''' + aplikasi.NamaUser + ''', ' +
        'tgl_closed = now() ' +
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

        email.Subject := 'Tindak lanjut revisi transaksi Nomor : ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Permintaan Revisi sudah di tindak lanjuti</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT b.atasan1, b.atasan2, b.email, a.user_req, a.deskripsi FROM tbl_revisi_trs a ' +
          'LEFT JOIN tbl_user b ON a.user_req = b.nama ' +
          'WHERE no_bukti = ''%s''',
          [lst.Strings[i]]);
        email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
          q.FieldByName('email').AsString;

        qa := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',[q.FieldByName('atasan1').AsString]);
        if not qa.FieldByName('email').IsNull then
          if Trim(qa.FieldByName('email').AsString) <> '' then
            email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
              qa.FieldByName('email').AsString;
        qa.Close;
        qa := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',[q.FieldByName('atasan2').AsString]);
        if not qa.FieldByName('email').IsNull then
          if Trim(qa.FieldByName('email').AsString) <> '' then
            email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
              qa.FieldByName('email').AsString;
        qa.Close;

        lstBody.Add('User Request : ' + q.FieldByName('user_req').AsString);
        lstBody.Add('User Email   : ' + q.FieldByName('email').AsString);
        lstBody.Add('Deskripsi    : ');
        //lstBody.Add(StringReplace(q.FieldByName('deskripsi').AsString, #13, '<br/>', [rfReplaceAll]));
        lstBody.Add(q.FieldByName('deskripsi').AsString);
        lstBody.Add('Keterangan Tambahan : ');
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
    MsgBox('Permintaan revisi sudah ditutup.');
end;

end.
