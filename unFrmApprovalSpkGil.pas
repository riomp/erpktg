unit unFrmApprovalSpkGil;

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
  dxSkinXmas2008Blue, NxCellSource, DB, ZAbstractRODataset, ZDataset,
  cxLabel, NxDBColumns, NxDBGrid, StdCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,IdMessage, IdText;

type
  TfrmApprovalSpkGil = class(TForm)
    nxGrd: TNextGrid;
    nxColNoSPK: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApp: TNxCheckBoxColumn;
    btnApproval: TButton;
    NextDBGrid1: TNextDBGrid;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxDC: TNxDataCellSource;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    cxLabel2: TcxLabel;
    TNxDBTextColumn1: TNxDBTextColumn;
    TNxDBTextColumn2: TNxDBTextColumn;
    TNxDBTextColumn3: TNxDBTextColumn;
    TNxDBNumberColumn1: TNxDBNumberColumn;
    TNxDBNumberColumn2: TNxDBNumberColumn;
    TNxDBTextColumn4: TNxDBTextColumn;
    TNxDBTextColumn5: TNxDBTextColumn;
    TNxDBTextColumn7: TNxDBTextColumn;
    TNxDBTextColumn8: TNxDBTextColumn;
    idSMTP: TIdSMTP;
    NxTextColumn1: TNxTextColumn;
    nxColKet: TNxDBTextColumn;
    btnDitolak: TButton;
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnApprovalClick(Sender: TObject);
    procedure idSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure FormShow(Sender: TObject);
  private
    mJenis: string;
    procedure SendEmail(lstEmail, lstNoSPK: TStringList);
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read mJenis write mJenis;
  end;

var
  frmApprovalSpkGil: TfrmApprovalSpkGil;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmApprovalSpkGil.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalSpkGil.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalSpkGil.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalSpkGil.FormCreate(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin

  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''LihatApprovalSPKPotong'' ' +
    'AND nama = ''%s''', [aplikasi.NamaUser]);
  if (not q.IsEmpty) and (q.FieldByName('wwn').AsString = '1') then begin
    btnApproval.Visible := False;
    i := btnBatal.Left;
    btnBatal.Left := btnApproval.Left;
    nxColApp.Visible := False;
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''mnPPIC_AppSpkPotMgr'' ' +
    'AND nama = ''%s''', [Aplikasi.NamaUser]);
  if (not q.IsEmpty) and (q.FieldByName('wwn').AsString = '1') then begin
    btnApproval.Visible := True;
    btnBatal.Left := i;
  end;
  q.Close;

  nxDC.Execute;
end;

procedure TfrmApprovalSpkGil.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_bukti').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;

procedure TfrmApprovalSpkGil.btnApprovalClick(Sender: TObject);
var
  i : Integer;
  q, qh, qe : TZQuery;
  hist, barang, barang_det : TZTable;
  lstEmail, lstNoSPK: TStringList;
begin

  if nxGrd.RowCount = 0 then Abort;

  lstEmail := TStringList.Create;
  lstNoSPK := TStringList.Create;

  try
    dm.zConn.StartTransaction;

    barang := OpenTbl('tbl_barang');
    barang_det := OpenTbl('tbl_barang_det');
    hist := OpenTbl('tbl_history');

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApp.Index,i].AsBoolean then begin

        q := OpenRS('SELECT * FROM tbl_trsspkgiling_det WHERE no_bukti = ''%s''',
          [nxGrd.Cell[nxColNoSPK.Index,i].AsString]);

        qh := OpenRS('SELECT a.*, b.email FROM tbl_trsspkgiling_head a LEFT JOIN tbl_user b ' +
          ' ON a.user = b.nama ' +
          'WHERE a.no_bukti = ''%s''',
          [nxGrd.Cell[nxColNoSPK.Index,i].AsString]);

        lstEmail.Add(qh.FieldByname('email').AsString);

        while not q.Eof do begin

          // update stok
          if barang.Locate('kode', q.FieldByName('kode_brg').AsInteger,[]) then begin
            barang.Edit;
            barang.FieldByName('stok').AsFloat :=
              barang.FieldByName('stok').AsFloat -
                q.FieldByName('qty').AsFloat;
            barang.Post;
          end;

          // update detail barang
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([q.FieldByName('kode_brg').AsInteger, q.FieldByName('kode_gdg').AsString]),[]) then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
            barang_det.FieldByName('kode_gdg').AsString := q.FieldByName('kode_gdg').AsString;
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
          barang_det.Post;

          hist.Insert;
          hist.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
          hist.FieldByName('tanggal').AsDateTime := qh.FieldByName('tanggal').AsDateTime;
          hist.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
          hist.FieldByName('tipe').AsString := 'OUT_';
          hist.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
          hist.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
          hist.FieldByName('gudang').AsString := q.FieldByName('kode_gdg').AsString;
          hist.FieldByName('referensi').AsString := '';
          hist.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
          hist.FieldByName('user').AsString := Aplikasi.NamaUser;
          hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
          hist.FieldByName('no_so').AsString := '';
          hist.FieldByName('no_spk').AsString := '';
          hist.FieldByName('no_spmb').AsString := '';
          hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
          hist.Post;
          q.Next;
        end;

        // update flag approval
        dm.zConn.ExecuteDirect('UPDATE tbl_trsspkpotong_head ' +
          'SET f_approval = 1 WHERE no_bukti = ''' + qh.FieldByName('no_bukti').AsString + '''');
        lstNoSPK.Add(qh.FieldByName('no_bukti').AsString);

        q.Close;
        q := nil;
        qh.Close;
        qh := nil;

      end;
    end;
    dm.zConn.Commit;

    MsgBox('Approval SPK Giling sudah disimpan.');

    if lstEmail.Count > 0 then begin
      SendEmail(lstEmail, lstNoSPK);
    end;

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;

  zqrKorHead.Close;
  zqrDetKor.Close;
  nxDC.Active := False;
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalSpkGil.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  Self.Enabled := False;
end;

procedure TfrmApprovalSpkGil.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  Self.Enabled := True;
  MsgBox('Email Konfirmasi Approval SPK Potong sudah dikirim.');
end;

procedure TfrmApprovalSpkGil.SendEmail(lstEmail, lstNoSPK: TStringList);
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
    email.From.Name := aplikasi.NamaUser;

    if aplikasi.debug then begin
      email.Recipients.EMailAddresses := 'yosef@sdp.mail';
    end
    else begin
      email.Recipients.EMailAddresses := 'fredi@sdp.mail';
    end;

    email.Subject := 'Konfirmasi Approval SPK Giling No : ' + lstNoSPK.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    if mJenis = 'app_mgr' then begin
      lst.Add('Ada transaksi SPK Potong yang perlu di Approval, silahkan cek aplikasi MDA');
      lst.Add('</br>');
      lst.Add('Nomor SPK : ' + lstNoSPK.CommaText);
    end
    else begin
      lst.Add('SPK Giling dengan nomor :');
      lst.Add('</br>');
      lst.Add('<b>' + lstNoSPK.CommaText + '</b>');
      lst.Add('</br>');
      lst.Add('SUDAH DI APPROVE');
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

procedure TfrmApprovalSpkGil.FormShow(Sender: TObject);
begin
  nxDC.Active := False;
  if mJenis = 'app_mgr' then begin
    nxColApp.Visible := True;
    nxColApp.Header.Caption := 'Approval MGR';
    if zqrKorHead.Active then zqrKorHead.Close;
    zqrKorHead.SQL.Add('AND f_app_mgr = 0');
    zqrKorHead.Open;
  end
  else begin
    if zqrKorHead.Active then zqrKorHead.Close;
    zqrKorHead.Open;
  end;
  nxDC.Active := True;
end;

end.
