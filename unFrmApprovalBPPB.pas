unit unFrmApprovalBPPB;

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
  TfrmApprovalBPPB = class(TForm)
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
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxDC: TNxDataCellSource;
    zqrDetKor: TZReadOnlyQuery;
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
  frmApprovalBPPB: TFrmApprovalBPPB;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TFrmApprovalBPPB.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmApprovalBPPB.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmApprovalBPPB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TFrmApprovalBPPB.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_bukti').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;


procedure TFrmApprovalBPPB.FormCreate(Sender: TObject);
begin
  if aplikasi.UserDept = 'WHL' then begin
    zqrKorHead.SQL.Text := 'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept ' +
      'FROM tbl_trskeluar_head a WHERE a.f_approval = 0 AND a.user_dept = ''WHL'' ' +
      'ORDER BY a.tanggal DESC';
  end;

  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TFrmApprovalBPPB.btnApprovalClick(Sender: TObject);
var
  btn: TButton;
  sJenis: string;
  i : Integer;
  q, qh, qe : TZQuery;
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

  try
    dm.zConn.StartTransaction;

    //barang := OpenTbl('tbl_barang');
    //barang_det := OpenTbl('tbl_barang_det');
    //hist := OpenTbl('tbl_history');

    for i := 0 to nxGrd.RowCount - 1 do begin

      if sJenis = 'approval' then begin

        if nxGrd.Cell[nxColApp.Index,i].AsBoolean then begin

          qh := OpenRS('SELECT a.*, b.email FROM tbl_trskeluar_head a ' +
            'LEFT JOIN tbl_user b ' +
            ' ON a.user = b.nama ' +
            'WHERE a.no_bukti = ''%s''',
            [nxGrd.Cell[0,i].AsString]);

          q := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',
            [nxGrd.Cell[0,i].AsString]);

          lstEmail.Add(qh.FieldByname('email').AsString);

          while not q.Eof do begin

            // update stok
            barang := OpenRS('SELECT stok FROM tbl_barang WHERE kode = %s', [q.FieldByName('kode_brg').AsString]);
            //if barang.Locate('kode', q.FieldByName('kode_brg').AsInteger,[]) then begin
              barang.Edit;
              barang.FieldByName('stok').AsFloat :=
                barang.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
              barang.Post;
            //end;
            barang.Close;

            // update detail barang
            barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
              [q.FieldByName('kode_brg').AsString, q.FieldByName('kode_gdg').AsString]);
            //if barang_det.Locate('kode_brg;kode_gdg',
            //  VarArrayOf([q.FieldByName('kode_brg').AsInteger, q.FieldByName('kode_gdg').AsString]),[]) then
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
            barang_det.Close;

            hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',
              [q.FieldByName('no_bukti').AsString]);
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
            hist.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
            hist.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
            hist.FieldByName('no_spmb').AsString := q.FieldByName('no_spmb').AsString;
            hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
            hist.Post;
            hist.Close;
            
            q.Next;
          end;

          // update flag approval
          dm.zConn.ExecuteDirect('UPDATE tbl_trskeluar_head ' +
            'SET f_approval = 1, ' +
            'user_approval = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' + qh.FieldByName('no_bukti').AsString + '''');
            
          lstNoBukti.Add(qh.FieldByName('no_bukti').AsString);

          q.Close;
          q := nil;
          qh.Close;
          qh := nil;
        end;
      end
      else begin
        if nxGrd.Cell[nxColApp.Index,i].AsBoolean then begin

          qh := OpenRS('SELECT a.*, b.email FROM tbl_trskeluar_head a ' +
            'LEFT JOIN tbl_user b ' +
            ' ON a.user = b.nama ' +
            'WHERE a.no_bukti = ''%s''',
            [nxGrd.Cell[0,i].AsString]);

          lstEmail.Add(qh.FieldByname('email').AsString);

          // update flag approval
          dm.zConn.ExecuteDirect('UPDATE tbl_trskeluar_head ' +
            'SET f_approval = 2, ' +
            'user_approval = ''' + aplikasi.NamaUser + ''' ' + 
            ' WHERE no_bukti = ''' + qh.FieldByName('no_bukti').AsString + '''');
          lstNoBukti.Add(qh.FieldByName('no_bukti').AsString);
          
        end;
      end;
    end;
    dm.zConn.Commit;

    MsgBox('Approval Transaksi Keluar sudah disimpan.');

    if lstEmail.Count > 0 then begin
      SendEmail(lstEmail, lstNoBukti, sJenis);
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

procedure TFrmApprovalBPPB.SendEmail(lstEmail, lstNoBukti: TStringList; sJenis: string);
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

    email.Subject := 'Konfirmasi Approval Transaksi Pengeluaran Barang No. Transaksi : ' + lstNoBukti.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');

    lst.Add('Transaksi Pengeluaran barang dengan nomor :');
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

procedure TFrmApprovalBPPB.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  MsgBox('Email Permintaan Approval Transaksi Keluar sudah dikirim.');
end;

end.
