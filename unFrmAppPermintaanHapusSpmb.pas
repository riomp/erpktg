unit unFrmAppPermintaanHapusSpmb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, NxCellSource, DB, ZAbstractRODataset, ZDataset, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  IdMessage, IdText;


type
  TfrmAppPermintaanHapusSpmb = class(TForm)
    nxGrd: TNextGrid;
    nxColNoSPMB: TNxTextColumn;
    nxColTanggal: TNxDateColumn;
    nxColUser: TNxTextColumn;
    nxColDept: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    nxColNotApproval: TNxCheckBoxColumn;
    zqrSpmbHead: TZReadOnlyQuery;
    dsSpmbHead: TDataSource;
    nxDC: TNxDataCellSource;
    idSMTP: TIdSMTP;
    btnApproval: TButton;
    btnBatal: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnApprovalClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    procedure SendEMail(lstEmail, lstNoBukti, lstApp: TStringList);
  public
    { Public declarations }
  end;

var
  frmAppPermintaanHapusSpmb: TfrmAppPermintaanHapusSpmb;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmAppPermintaanHapusSpmb.FormCreate(Sender: TObject);
begin
  zqrSpmbHead.Open;
  nxDC.Execute;
end;

procedure TfrmAppPermintaanHapusSpmb.btnApprovalClick(Sender: TObject);
var
  i,j,k: Integer;
  q, q2, qu, qb, qrd, tbl, spmbhead, spmbdet, supp: TZQuery;
  b,b1,b2 : Boolean;
  lstEmail, lstNoBukti, lstApp: TStringList;
  sNoTrs, sNoTrsSJ: string;
begin
  if nxGrd.RowCount = 0 then Abort;
  b1 := false;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then b1 := True;
  end;
  b2 := False;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then b2 := True;
  end;

  if (b1 = False) and (b2 = False) then begin
    MsgBox('Lakukan pilihan untuk nomer retur yang akan di Approval atau tidak Approval.');
    Abort;
  end;

    // konfirmasi hapus SPMB
    k := QBox(Self,'PASTIKAN SEMUA HARDCOPY SPMB SUDAH DITARIK SEBELUM MELAKUKAN APPROVAL ?', 'Hapus SPMB');
    if k = IDNO then begin
      Abort;
    end;

  try
    dm.zConn.StartTransaction;

    lstEmail := TStringList.Create;
    lstNoBukti := TStringList.Create;
    lstApp := TStringList.Create;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('DELETE FROM tbl_spmb_head WHERE no_bukti = ''' + nxGrd.Cell[nxColNoSPMB.Index,i].AsString  + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spmb_det WHERE no_bukti = ''' + nxGrd.Cell[nxColNoSPMB.Index,i].AsString  + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
        lstNoBukti.Add(nxGrd.Cell[nxColNoSPMB.Index,i].AsString);
        lstEmail.Add(qu.FieldByName('email').AsString);
        lstApp.Add('APPROVED, ');
        qu.Close;

      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
          'SET f_hapus = 0 ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[nxColNoSPMB.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
          lstNoBukti.Add(nxGrd.Cell[nxColNoSPMB.Index,i].AsString);
          lstEmail.Add(qu.FieldByName('email').AsString);
          lstApp.Add('NOT APPROVED, ');
        qu.Close;

      end;
    end;
    
    dm.zConn.Commit;
    MsgBox('Permintaan hapus SPMB sudah disimpan.');

    SendEMail(lstEmail, lstNoBukti, lstApp);

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
      Abort;
    end;
  end;

  zqrSpmbHead.Close;
  nxDC.Active := False;
  zqrSpmbHead.Open;
  nxDC.Execute;

end;

procedure TfrmAppPermintaanHapusSpmb.SendEMail(lstEmail, lstNoBukti,
  lstApp: TStringList);
var
  email : TIdMessage;
  lst: TStringList;
  bdy: TIdText;
  i: Integer;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host := Aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := 'enny@sdp.mail';
    email.From.Name := 'ENNY SUSILOWATI';

    if aplikasi.debug then begin
      email.Recipients.EMailAddresses := 'rudy@sdp.mail';
    end
    else begin
      email.Recipients.EMailAddresses := lstEmail.CommaText;
    end;

    email.Subject := 'Konfirmasi Approval hapus SPMB No. Transaksi : ' + lstNoBukti.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');

    lst.Add('Transaksi hapus SPMB dengan nomor :');
    lst.Add('</br>');

    for i := 0 to lstNoBukti.Count - 1 do begin
      lst.Add('</br>');
      lst.Add('<b>' + lstNoBukti.Strings[i] + ' : ' + lstApp.Strings[i] + '</b>');
      lst.Add('</br>');
    end;

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

procedure TfrmAppPermintaanHapusSpmb.btnBatalClick(Sender: TObject);
begin
  Close;
end;

end.
