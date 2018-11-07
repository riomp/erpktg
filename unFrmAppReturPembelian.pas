unit unFrmAppReturPembelian;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, IdMessage, IdText,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP;

type
  TfrmAppReturPembelian = class(TForm)
    nxGrd: TNextGrid;
    nxColNoRetur: TNxTextColumn;
    nxColTanggal: TNxDateColumn;
    nxColSupplier: TNxTextColumn;
    nxColUser: TNxTextColumn;
    nxColDept: TNxTextColumn;
    nxColNoFOBJ: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    nxColNotApproval: TNxCheckBoxColumn;
    btnApproval: TButton;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    nxColGdg: TNxDBComboBoxColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    nxGrdDet: TNextGrid;
    nxColKodeBrg: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColGudang: TNxComboBoxColumn;
    nxColNmCust: TNxTextColumn;
    nxColNoPO: TNxTextColumn;
    nxColNoSPBB: TNxTextColumn;
    nxColNoSPMB: TNxTextColumn;
    nxColQtyRetur: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    nxColKet: TNxTextColumn;
    nxColJenis: TNxTextColumn;
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxDC: TNxDataCellSource;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    idSMTP: TIdSMTP;
    procedure FormCreate(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnApprovalClick(Sender: TObject);
  private
    procedure SendEMail(lstEmail, lstNoBukti, lstApp: TStringList);
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmAppReturPembelian: TfrmAppReturPembelian;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmAppReturPembelian.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmAppReturPembelian.FormCreate(Sender: TObject);
begin
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmAppReturPembelian.SendEMail(lstEmail, lstNoBukti, lstApp: TStringList);
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
    email.From.Address := 'mda@sdp.mail';
    email.From.Name := 'MDA';

    if aplikasi.debug then begin
      email.Recipients.EMailAddresses := 'rudy@sdp.mail';
    end
    else begin
      email.Recipients.EMailAddresses := lstEmail.CommaText;
    end;

    email.Subject := 'Konfirmasi Approval Retur Pembelian No. Transaksi : ' + lstNoBukti.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');

    lst.Add('Transaksi Retur Pembelian dengan nomor :');
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

procedure TfrmAppReturPembelian.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  i: integer;
begin
  if ACol = nxColApproval.Index then begin
    if nxGrd.Cell[nxColApproval.Index, ARow].AsBoolean then
      nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if i <> ARow then begin
        nxGrd.Cell[nxColApproval.Index,i].AsBoolean := False;
      end;
    end;
  end;
  if ACol = nxColNotApproval.Index then begin
    if nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean then
      nxGrd.Cell[nxColApproval.Index,ARow].AsBoolean := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if i <> ARow then begin
        nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean := False;
      end;
    end;
  end;
end;

procedure TfrmAppReturPembelian.btnBatalClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAppReturPembelian.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  i: integer;
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;

  nxGrdDet.ClearRows;
  while not zqrDetKor.Eof do begin
    i := nxGrdDet.AddRow();
    nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString := zqrDetKor.FieldByName('kode_brg').AsString;
    nxGrdDet.Cell[nxColDesk.Index,i].AsString := zqrDetKor.FieldByName('deskripsi').AsString;
    nxGrdDet.Cell[nxColGudang.Index,i].AsString := 'G01';
    nxGrdDet.Cell[nxColNoPO.Index,i].AsString := zqrDetKor.FieldByName('no_po').AsString;
    //nxGrdDet.Cell[nxColNoSPBB.Index,i].AsString := zqrDetKor.FieldByName('no_spbb').AsString;
    nxGrdDet.Cell[nxColQtyRetur.Index,i].AsFloat := zqrDetKor.FieldByName('qty').AsFloat;
    nxGrdDet.Cell[nxColSatuan.Index,i].AsString := zqrDetKor.FieldByName('satuan').AsString;
    nxGrdDet.Cell[nxColKet.Index,i].AsString := zqrDetKor.FieldByName('keterangan').AsString;
    //nxGrdDet.Cell[nxColJenis.Index,i].AsString := zqrDetKor.FieldByName('jenis_retur').AsString;
    //nxGrdDet.Cell[nxColNoSO.Index,i].AsString := zqrDetKor.FieldByName('no_so').AsString;
    zqrDetKor.Next;
  end;
end;

procedure TfrmAppReturPembelian.btnApprovalClick(Sender: TObject);
var
  i,j: Integer;
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
  try
    dm.zConn.StartTransaction;

    lstEmail := TStringList.Create;
    lstNoBukti := TStringList.Create;
    lstApp := TStringList.Create;
    // Simpan data ke DB
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trsreturpemb_head ' +
          'SET f_approval = 1, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[nxColNoRetur.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
        lstNoBukti.Add(nxGrd.Cell[nxColNoRetur.Index,i].AsString);
        lstEmail.Add(qu.FieldByName('email').AsString);
        lstApp.Add('APPROVED, ');
        qu.Close;

      {
        //qrd := OpenRS('SELECT * FROM tbl_trsreturpemb_det WHERE no_bukti = ''%s''',
         // [nxGrd.Cell[nxColNoRetur.Index,i].AsString]);

        for j := 0 to nxGrdDet.RowCount - 1 do begin
          if nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString = '' then
          Continue;
          tbl_barang := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
                   [nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);
          tbl_barang.Edit;
          tbl_barang.FieldByName('stok').AsFloat := tbl_barang.FieldByName('stok').AsFloat - nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
          tbl_barang.Post;
          tbl_barang.Close;
        end;

        for j := 0 to nxGrdDet.RowCount - 1 do begin
          if nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString = '' then
          Continue;
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
                 [nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString , 'G01']);
          barang_det.Edit;
          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
          barang_det.Post;
          barang_det.Close;
        end;

        history := OpenRS('select * from tbl_history limit 1');
        with history do begin
          for j := 0 to nxGrdDet.RowCount - 1 do begin
            if nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString = '' then
            Continue;

            Insert;
            FieldByName('no_bukti').AsString := nxGrd.Cell[nxColNoRetur.Index,i].AsString;;
            FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            FieldByName('kode_brg').AsString :=  nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString;
            FieldByName('tipe').AsString := 'OUT_';
            FieldByName('qty').AsString := nxGrdDet.Cell[nxColQtyRetur.Index,j].AsString;
            FieldByName('satuan').AsString := nxGrdDet.Cell[nxColSatuan.Index,j].AsString;
            FieldByName('gudang').AsString := 'G01';
            FieldByName('keterangan').AsString := nxGrdDet.Cell[nxColKet.Index,j].AsString;
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_po').AsString := nxGrdDet.Cell[nxColNoPO.Index,j].AsString;
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            //FieldByName('no_spbb').AsString := nxGrdDet.Cell[nxColNoSPBB.Index,j].AsString;
            Post;
          end;
        Close;
        end;
      }

        sNoTrs := GetLastFak('spmb');
        UpdateFaktur(Copy(sNoTrs,1,9));

        // Simpan Data di Tabel SPMB
        spmbhead := OpenRS('select * from tbl_spmb_head limit 1');
        with spmbhead do begin
            if nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString = '' then
            Continue;

            Insert;
            FieldByName('no_bukti').AsString := sNoTrs;
            FieldByName('no_retur').AsString := nxGrd.Cell[nxColNoRetur.Index,i].AsString;
            supp := OpenRS('select kode from tbl_supplier where nama = ''%s''',[nxGrd.Cell[nxColSupplier.Index,i].AsString]);
            FieldByName('kode_supplier').AsString := supp.FieldByName('kode').AsString;
            FieldByName('tanggal').AsString := nxGrd.Cell[nxColTanggal.Index,i].AsString;
            FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('nopol').AsString := '';
            FieldByName('driver').AsString := '';
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            FieldByName('f_completed').AsString := '1';
            FieldByName('f_sopirluar').AsString := '1';
            FieldByName('ongkos_kirim').AsString := '0';
            Post;
        Close;
        end;

        spmbdet := OpenRS('select * from tbl_spmb_det');
        with spmbdet do begin
          for j := 0 to nxGrdDet.RowCount - 1 do begin
            if nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString = '' then
            Continue;

            Insert;
            FieldByName('no_bukti').AsString := sNoTrs;
            FieldByName('no_so').AsString := nxGrdDet.Cell[nxColNoSPBB.Index,j].AsString;
            FieldByName('kode_brg').AsString := nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString;
            //FieldByName('no_so').AsString := '';
            FieldByName('qty_so').AsString := '0';
            FieldByName('qty').AsString := nxGrdDet.Cell[nxColQtyRetur.Index,j].AsString;
            FieldByName('qty_baik').AsString := '0';
            FieldByName('qty_afkir').AsString := '0';
            FieldByName('qty_retur').AsString := '0';
            FieldByName('satuan').AsString := nxGrdDet.Cell[nxColSatuan.Index,j].AsString;
            FieldByName('kode_gdg').AsString := 'G02';
            FieldByName('f_completed').AsString := '0';
            FieldByName('keterangan').AsString := nxGrdDet.Cell[nxColKet.Index,j].AsString;;
            Post;
          end;
        Close;
        end;


        nxGrdDet.ClearRows;
      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_trsreturpemb_head ' +
          'SET f_approval = 2, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[nxColNoRetur.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
          lstNoBukti.Add(nxGrd.Cell[nxColNoRetur.Index,i].AsString);
          lstEmail.Add(qu.FieldByName('email').AsString);
          lstApp.Add('NOT APPROVED');
        qu.Close;
        
      end;
    end;
    
    dm.zConn.Commit;
    MsgBox('Approval Transaksi Retur Pembelian sudah disimpan.');

    SendEMail(lstEmail, lstNoBukti, lstApp);

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

    {
  try
    dm.zConn.StartTransaction;

    lstEmail := TStringList.Create;
    lstNoBukti := TStringList.Create;
    lstApp := TStringList.Create;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trsreturpemb_head ' +
          'SET f_approval = 1, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[nxColNoRetur.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
        lstNoBukti.Add(nxGrd.Cell[nxColNoRetur.Index,i].AsString);
        lstEmail.Add(qu.FieldByName('email').AsString);
        lstApp.Add('APPROVED');
        qu.Close;

        //tbl := OpenTbl('tbl_history');
        tbl := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [nxGrd.Cell[0,i].AsString]);
        tbl_barang := OpenRS('SELECT kode, stok FROM tbl_barang');
        tbl_barang_det := OpenTbl('tbl_barang_det');


        qrd := OpenRS('SELECT * FROM tbl_trsreturpemb_det WHERE no_bukti = ''%s''',
          [nxGrd.Cell[nxColNoRetur.Index,i].AsString]);

        for j := 0 to nxGrdDet.RowCount - 1 do begin

          if tbl_barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger,
              nxGrdDet.Cell[nxColGudang.Index,j].AsString]),[]) then
            tbl_barang_det.Edit
          else begin
            tbl_barang_det.Insert;
            tbl_barang_det.FieldByName('kode_gdg').AsString := nxGrdDet.Cell[nxColGudang.Index,j].AsString;
          end;
          tbl_barang_det.FieldByName('stok').AsFloat :=
            tbl_barang.FieldByName('stok').AsFloat - nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
          tbl_barang_det.Post;

          if tbl_barang.Locate('kode', nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger,[]) then begin
            q2 := OpenRS('SELECT sf_get_stok(%s) AS stok',
              [nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);
            tbl_barang.Edit;
            tbl_barang.FieldByName('stok').AsFloat := q2.FieldByName('stok').AsFloat;
            q2.Close;
            tbl_barang.Post;
          end;

          // update gudang di table detail retur
          if qrd.Locate('no_bukti;kode_brg',
            VarArrayOf([nxGrd.Cell[TNxTextColumn1.Index,i].AsString, nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger]),[]) then begin
            qrd.Edit;
            qrd.FieldByName('kode_gdg').AsString := nxGrdDet.Cell[nxColGdg.Index,j].AsString;
            qrd.Post;
          end;

          tbl.Insert;
          tbl.FieldByName('no_bukti').AsString := nxGrd.Cell[0,i].AsString;
          tbl.FieldByName('tanggal').AsDateTime := nxGrd.Cell[1,i].AsDateTime;
          tbl.FieldByName('kode_brg').AsInteger := nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger;
          tbl.FieldByName('tipe').AsString := 'IN_';
          tbl.FieldByName('qty').AsFloat := nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
          tbl.FieldByName('gudang').AsString := nxGrdDet.Cell[nxColGudang.Index,j].AsString;
          tbl.FieldByName('no_sj').AsString := nxGrdDet.Cell[nxColNoSJ.Index,j].AsString;
          tbl.FieldByName('no_so').AsString := nxGrdDet.Cell[nxColNoSO.Index,j].AsString;
          tbl.FieldByName('referensi').AsString := '';
          tbl.FieldByName('keterangan').AsString := nxGrdDet.Cell[nxColKet.Index,j].AsString;
          tbl.FieldByName('user').AsString := Aplikasi.NamaUser; //q.FieldByName('user').AsString;
          tbl.FieldByName('user_dept').AsString := aplikasi.UserDept; //q.FieldByName('user_dept').AsString;
          tbl.Post;

          if nxGrd.Cell[nxColJenisRetur2.Index, i].AsString = '0' then begin

            qsj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s'' ' +
              'AND kode_brg = %s',
              [nxGrdDet.Cell[nxColNoSJ.Index, j].AsString,nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);

            if not qsj_det.IsEmpty then begin
              qsj_det.Edit;
              qsj_det.FieldByName('qty').AsFloat :=
                qsj_det.FieldByName('qty').AsFloat - nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
              qsj_det.Post;

              dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 0 ' +
                'WHERE no_bukti = ''' + nxGrdDet.Cell[nxColNoSO.Index,j].AsString + '''');
            end;
            qsj_det.Close;

          end;

        end;
        tbl.Close;
        tbl_barang.Close;
        tbl_barang_det.Close;
        nxGrdDet.ClearRows;
      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_trskoreksi_head ' +
          'SET f_approval = 2, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' + 
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
          lstNoBukti.Add(nxGrd.Cell[TNxTextColumn1.Index,i].AsString);
          lstEmail.Add(qu.FieldByName('email').AsString);
          lstApp.Add('APPROVED');
        qu.Close;
        
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Approval Transaksi Retur Penjualan sudah disimpan.');

    SendEMail(lstEmail, lstNoBukti, lstApp);

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
     }
end;

end.
