unit unFrmApprovalPenambahanBOM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, NxCellSource, DB, ZAbstractRODataset, ZDataset, cxLabel,
  NxDBColumns, NxDBGrid, StdCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, IdMessage, IdText;

type
  TfrmApprovalPenambahanBOM = class(TForm)
    nxGrd: TNextGrid;
    TNxTextColumn1: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApp: TNxCheckBoxColumn;
    NxTextColumn1: TNxTextColumn;
    btnApproval: TButton;
    NextDBGrid1: TNextDBGrid;
    TNxDBNumberColumn1: TNxDBNumberColumn;
    TNxDBTextColumn8: TNxDBTextColumn;
    TNxDBTextColumn1: TNxDBTextColumn;
    TNxDBTextColumn2: TNxDBTextColumn;
    TNxDBTextColumn3: TNxDBTextColumn;
    TNxDBNumberColumn2: TNxDBNumberColumn;
    TNxDBTextColumn4: TNxDBTextColumn;
    TNxDBTextColumn5: TNxDBTextColumn;
    nxColKet: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    zqrHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxDC: TNxDataCellSource;
    zqrDet: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    idSMTP: TIdSMTP;
    Button1: TButton;
    NxDBTextColumn1: TNxDBTextColumn;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormCreate(Sender: TObject);
    procedure btnApprovalClick(Sender: TObject);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    procedure SendEmail(lstEmail, lstNoBukti: TStringList; sJenis: string);
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmApprovalPenambahanBOM: TfrmApprovalPenambahanBOM;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmApprovalPenambahanBOM.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalPenambahanBOM.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalPenambahanBOM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalPenambahanBOM.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDet.Close;
  zqrDet.ParamByName('no_spk').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDet.Open;
end;


procedure TfrmApprovalPenambahanBOM.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  zqrHead.Open;
  nxDC.Execute;

  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' AND nm_comp = ''LIHAT-APP-TAMBAH-BOM''',
    [Aplikasi.NamaUser]);
  if not q.IsEmpty then begin
    if q.FieldByName('wwn').AsString = '1' then begin
      button1.Left := btnApproval.Left;
      btnApproval.Visible := False;
      btnBatal.Visible := False;
    end;
  end;
  q.Close;
  
end;

procedure TfrmApprovalPenambahanBOM.btnApprovalClick(Sender: TObject);
var
  btn: TButton;
  sJenis: string;
  i : Integer;
  q, qh, qe, qb : TZQuery;
  //hist, barang, barang_det : TZTable;
  hist, barang, barang_det : TZQuery;
  lstEmail, lstNoBukti: TStringList;
begin
  btn := (Sender as TButton);
  if btn.Name = 'btnApproval' then
    sJenis := 'approval'
  else
    sJenis := 'not-approval';

  if nxGrd.RowCount = 0 then Abort;

  lstEmail := TStringList.Create;
  lstNoBukti := TStringList.Create;

  lstEmail.CommaText := 'yosef@sdp.mail,fredi@sdp.mail,aprilia@sdp.mail,felgito@sdp.mail,sunanto@sdp.mail';

  try
    Screen.Cursor := crSQLWait;
    dm.zConn.StartTransaction;

    for i := 0 to nxGrd.RowCount - 1 do begin

      if sJenis = 'approval' then begin

        if nxGrd.Cell[nxColApp.Index,i].AsBoolean then begin

          q := OpenRS('SELECT * FROM tmp_tbl_bom_det WHERE no_spk = ''%s''', [nxGrd.Cell[0,i].AsString]);
          qb := OpenRS('SELECT * FROM tbl_bom_det WHERE no_spk = ''%s''', [nxGrd.Cell[0, i].AsString]);

          dm.zConn.ExecuteDirect('UPDATE tmp_tbl_bom_det SET f_approval = 1, ' +
            'app_user = ''' + Aplikasi.NamaUser + ''', app_tgl = Now() ' +
            ' WHERE no_spk = ''' + nxGrd.Cell[0,i].AsString + '''');

          while not q.Eof do begin

            qb.Insert;
            qb.FieldByName('no_mo').AsString := q.FieldByName('no_mo').AsString;
            qb.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
            qb.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
            qb.FieldByName('berat').AsInteger := q.FieldByName('berat').AsInteger;
            qb.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
            qb.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
            qb.FieldByName('f_tambah').AsInteger := 1;
            qb.Post;

            q.Next;
          end;

          lstNoBukti.Add(nxGrd.Cell[0,i].AsString);

          q.Close;
          q := nil;
          qb.Close;
          qb := nil;
        end;
      end
      else begin
        if nxGrd.Cell[nxColApp.Index,i].AsBoolean then begin

          // update flag approval
          dm.zConn.ExecuteDirect('UPDATE tmp_tbl_bom_det ' +
            'SET f_approval = 2, ' +
            'user_approval = ''' + aplikasi.NamaUser + ''', ' +
            'tgl_approval = now() ' + 
            'WHERE no_spk = ''' + nxGrd.Cell[0,i].AsString + '''');
            
          lstNoBukti.Add(nxGrd.Cell[0,i].AsString);

        end;
      end;
    end;
    dm.zConn.Commit;

    Screen.Cursor := crDefault;
    MsgBox('Approval Transaksi Penambahan BOM sudah disimpan.');

    if lstEmail.Count > 0 then begin
      SendEmail(lstEmail, lstNoBukti, sJenis);
    end;

  except
    on E: Exception do begin
      Screen.Cursor := crDefault;
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;

  zqrHead.Close;
  zqrDet.Close;
  nxDC.Active := False;
  zqrHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalPenambahanBOM.SendEmail(lstEmail, lstNoBukti: TStringList; sJenis: string);
var
  email : TIdMessage;
  lst: TStringList;
  bdy: TIdText;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host := Aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := 'mda@sdp.mail';
    email.From.Name := 'MDA';

    if aplikasi.debug then begin
      email.Recipients.EMailAddresses := 'yosef@sdp.mail';
    end
    else begin
      email.Recipients.EMailAddresses := lstEmail.CommaText;
    end;

    email.Subject := 'Konfirmasi Approval Transaksi Penambahan BOM No. SPK : ' + lstNoBukti.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');

    lst.Add('Transaksi Penambahan BOM dengan No SPK :');
    lst.Add('</br>');
    lst.Add('<b>' + lstNoBukti.CommaText + '</b>');
    lst.Add('</br>');

    if sJenis = 'approval' then
      lst.Add('SUDAH DI APPROVE')
    else
      lst.Add('TIDAK DI APPROVE');

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

procedure TfrmApprovalPenambahanBOM.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  MsgBox('Email Permintaan Approval Transaksi Keluar sudah dikirim.');
end;

end.
