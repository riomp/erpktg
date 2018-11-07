unit unFrmApprovalMutasiGKAR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  NxDBColumns, NxColumns, DB, ZAbstractRODataset, ZDataset,
  NxColumnClasses, NxCellSource, NxGrid, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText;

type
  TfrmApprovalMutasiGKAR = class(TForm)
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxGrd: TNextGrid;
    nxDC: TNxDataCellSource;
    TNxTextColumn1: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    btnApproval: TButton;
    NextDBGrid1: TNextDBGrid;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBNumberColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    nxColNotApproval: TNxCheckBoxColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBTextColumn;
    idSMTP: TIdSMTP;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnApprovalClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    mJenisPO: string;
    procedure SendEmail(lstNoBukti: TStringList);
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property JenisPO: string read mJenisPO write mJenisPO;
  end;

var
  frmApprovalMutasiGKAR: TfrmApprovalMutasiGKAR;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmApprovalMutasiGKAR.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalMutasiGKAR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalMutasiGKAR.FormCreate(Sender: TObject);
var
  sSQL: string;
begin
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalMutasiGKAR.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;

procedure TfrmApprovalMutasiGKAR.btnApprovalClick(Sender: TObject);
var
  i: Integer;
  q, q2, barang_det, hist: TZQuery;
  tbl: TZTable;
  b1,b2: boolean;
  lstNoBukti: TStringList;
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
    MsgBox('Lakukan pilihan nomer PO yang akan di Approval atau tidak Approval.');
    Abort;
  end;

  lstNoBukti := TStringList.Create;

  try
    dm.zConn.StartTransaction;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        lstNoBukti.Add(nxGrd.Cell[TNxTextColumn1.Index, i].AsString);

        dm.zConn.ExecuteDirect('UPDATE tbl_trsmutasi_head ' +
          'SET f_app = 1, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        q := OpenRS('SELECT a.*, b.tanggal, b.user, b.user_dept FROM tbl_trsmutasi_det a inner join tbl_trsmutasi_head b on a.no_bukti = b.no_bukti WHERE a.no_bukti = ''%s''',
            [nxGrd.Cell[0,i].AsString]);

        while not q.Eof do begin

          // update detail barang gudang asal
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [q.FieldByName('kode_brg').AsString, q.FieldByName('gudang_asal').AsString]);

          if not barang_det.IsEmpty then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
            barang_det.FieldByName('kode_gdg').AsString := q.FieldByName('kode_gdg').AsString;
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
          barang_det.Post;

          // update detail barang gudang tujuan
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [q.FieldByName('kode_brg').AsString, q.FieldByName('gudang_tujuan').AsString]);

          if not barang_det.IsEmpty then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
            barang_det.FieldByName('kode_gdg').AsString := q.FieldByName('kode_gdg').AsString;
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
          barang_det.Post;

          barang_det.Close;

          hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',
            [q.FieldByName('no_bukti').AsString]);

          hist.Insert;
          hist.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
          hist.FieldByName('tanggal').AsDateTime := q.FieldByName('tanggal').AsDateTime;
          hist.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
          hist.FieldByName('tipe').AsString := 'OUT_';
          hist.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
          hist.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
          hist.FieldByName('gudang').AsString := q.FieldByName('gudang_asal').AsString;
          hist.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
          hist.FieldByName('user').AsString := q.FieldByName('user').AsString;
          hist.FieldByName('user_dept').AsString := q.FieldByName('user_dept').AsString;
          hist.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
          hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
          hist.FieldByName('no_lkm').AsString := q.FieldByName('no_lkm').AsString;
          hist.Post;

          hist.Insert;
          hist.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
          hist.FieldByName('tanggal').AsDateTime := q.FieldByName('tanggal').AsDateTime;
          hist.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
          hist.FieldByName('tipe').AsString := 'IN_';
          hist.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
          hist.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
          hist.FieldByName('gudang').AsString := q.FieldByName('gudang_tujuan').AsString;
          hist.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
          hist.FieldByName('user').AsString := q.FieldByName('user').AsString;
          hist.FieldByName('user_dept').AsString := q.FieldByName('user_dept').AsString;
          hist.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
          hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
          hist.FieldByName('no_lkm').AsString := q.FieldByName('no_lkm').AsString;
          hist.Post;

          hist.Close;

          q.Next;
        end;

        q.Close;
        q := nil;

      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head ' +
          'SET f_app = 2, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''')

      end;
    end;

    dm.zConn.Commit;

    MsgBox('Approval Mutasi G-KAR sudah disimpan.');

    if lstNoBukti.Count > 0 then
      SendEmail(lstNoBukti);

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
      Abort;
    end;
  end;

  zqrKorHead.Close;
  zqrDetKor.Close;
  nxDC.Active := False;
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalMutasiGKAR.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalMutasiGKAR.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = nxColApproval.Index then begin
    if nxGrd.Cell[nxColApproval.Index, ARow].AsBoolean then
      nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean := False;
  end;
  if ACol = nxColNotApproval.Index then begin
    if nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean then
      nxGrd.Cell[nxColApproval.Index,ARow].AsBoolean := False;
  end;
end;

procedure TfrmApprovalMutasiGKAR.SendEmail(lstNoBukti: TStringList);
var
  email : TIdMessage;
  lst, lstEmail: TStringList;
  bdy: TIdText;
  q: TZQuery;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host     := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    // ambil alamat email
    q := OpenRS('SELECT b.email FROM tbl_email_mda a LEFT JOIN tbl_user b ON a.nama_user = b.nama WHERE a.jenis = ''HSL-APP-MUTASI-GKAR''');
    lstEmail := TStringList.Create;
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('email').AsString);
      q.Next;
    end;
    q.Close;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    email.Subject := 'Approval Transaksi Mutasi Nomor : ' + lstNoBukti.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Transaksi mutasi barang sudah di Approval.');
    lst.Add('</br>');
    lst.Add('Nomor Transaksi : ' + lstNoBukti.CommaText);
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

end.
