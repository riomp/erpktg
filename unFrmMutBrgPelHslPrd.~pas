unit unFrmMutBrgPelHslPrd;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxLabel, cxMaskEdit,
  cxSpinEdit, DB, ZDataset, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP,IdMessage, IdText, cxCheckBox;

type
  TfrmMutBrgPelHslPrd = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxtKodeBrg: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxsQtySPK: TcxSpinEdit;
    cxsQtyProd: TcxSpinEdit;
    cxLabel4: TcxLabel;
    btnCari: TButton;
    cxLabel5: TcxLabel;
    cxtNoSO: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxtCustomer: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxsStokAsIs: TcxSpinEdit;
    cxLabel8: TcxLabel;
    cxsQtyMut: TcxSpinEdit;
    cxLabel9: TcxLabel;
    cxsQtyBaik: TcxSpinEdit;
    cxsQtyAfkir: TcxSpinEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxsQtyRetur: TcxSpinEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    idSMTP: TIdSMTP;
    GroupBox1: TGroupBox;
    cxChkAmbilBrg: TcxCheckBox;
    cxLabel15: TcxLabel;
    cxtKodeBrg2: TcxTextEdit;
    cxtDeskripsi2: TcxTextEdit;
    btnCariKodeBrg: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnCariKodeBrgClick(Sender: TObject);
    procedure cxChkAmbilBrgClick(Sender: TObject);
  private
    procedure ClearAll;
    procedure SendEmail;
  public
    { Public declarations }
  end;

var
  frmMutBrgPelHslPrd: TfrmMutBrgPelHslPrd;

implementation

uses unAplikasi, unDm, unFrmCari, unTools;

{$R *.dfm}

procedure TfrmMutBrgPelHslPrd.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
end;

procedure TfrmMutBrgPelHslPrd.btnCariClick(Sender: TObject);
var
  f: TfrmCari;
  lst: TStringList;
  fld: TField;
  q, q2, q3, qhp, qmo: TZQuery;
  gdg: String;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'spk-peletan';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    lst := f.Result;
    fld := lst.Objects[0] as TField;

    Screen.Cursor := crSQLWait;
    q := OpenRS('SELECT a.*, c.no_bukti no_so, c.qty qty_so, d.deskripsi, c.plt_completed FROM tbl_spk a ' +
      'LEFT JOIN tbl_mo b ON a.no_mo = a.no_mo AND a.no_spk = b.no_spk ' +
      'LEFT JOIN tbl_so_det c ON c.no_bukti = b.no_so AND c.kode_brg = b.kode_brg ' +
      'LEFT JOIN tbl_barang d ON d.kode = a.kode_brg ' +
      'WHERE a.no_spk = ''%s''',
      [fld.AsString]);

    cxtNoSPK.Text := fld.AsString;

    if q.FieldByName('f_completed').AsInteger = 1 then begin
      MsgBox('SPK ini sudah komplit.');
    end
    else if q.FieldByName('plt_completed').AsInteger = 1 then begin
      MsgBox('Item SO ini sudah komplit.');
    end
    else begin
      cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
      cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
      cxtNoSO.Text := q.FieldByName('no_so').AsString;
      cxsQtySPK.Value := q.FieldByName('qty').AsFloat -
        (0.01 * q.FieldByName('qty').AsFloat); 

      q2 := OpenRS('SELECT no_spk, SUM(qty_prod) qty_prod, SUM(qty_baik) qty_baik, ' +
        'SUM(qty_afkir) qty_afkir, SUM(qty_retur) qty_retur ' +
        'FROM tbl_hsl_prd WHERE no_spk = ''%s'' GROUP BY no_spk',[cxtNoSPK.Text]);
      cxsQtyProd.Value := q2.FieldByName('qty_prod').AsFloat;
      cxsQtyBaik.Value := q2.FieldByName('qty_baik').AsFloat;
      cxsQtyAfkir.Value := q2.FieldByName('qty_afkir').AsFloat;
      cxsQtyRetur.Value := q2.FieldByName('qty_retur').AsFloat;
      q2.Close;
      
      q2 := OpenRS('SELECT nama FROM v_so_head WHERE no_bukti = ''%s''',[cxtNoSO.Text]);
      cxtCustomer.Text := q2.FieldByName('nama').AsString;
      q2.Close;
      q2 := OpenRS('SELECT sf_getstok_per_gdg(%s,''%s'') AS stok',
        [cxtKodeBrg.Text, 'G-ASIS']);
      cxsStokAsIs.Value := q2.FieldByName('stok').AsFloat;
      q2.Close;
    end;
    q.Close;
    Screen.Cursor := crDefault;
  end;

end;

procedure TfrmMutBrgPelHslPrd.btnSimpanClick(Sender: TObject);
var
  q1,q2, qh, qd, qhs, barang, barang_det,
  qhp: TZQuery;
  sNoTrs: string;
begin
  if Trim(cxtNoSPK.Text) = '' then begin
    MsgBox('Pilih dulu nomor SPK.');
    cxtNoSPK.SetFocus;
  end
  else if cxsQtyMut.Value = 0 then begin
    MsgBox('Qty. mutasi harus diisi.');
    cxsQtyMut.SetFocus;
  end
  else begin
    q1 := OpenRS('SELECT SUM(qty_prod) qty_prod FROM tbl_hsl_prd WHERE no_spk = ''%s''',
      [cxtNoSPK.Text]);
    if cxsQtyMut.Value > (cxsQtySPK.Value - q1.FieldByName('qty_prod').AsFloat) then begin
      MsgBox('Qty. Mutasi melebihi Qty. SPK - Qty. Prod.');
      q1.Close;
      Abort;
    end
    else begin
      try
        dm.zConn.StartTransaction;

        // transaksi keluar dari G-ASIS
        sNoTrs := GetLastFak('mutasi_antar_barang');
        UpdateFaktur(Copy(sNoTrs,1,8));

        qh := OpenRS('SELECT * FROM tbl_trsmutasi_head WHERE no_bukti = ''%s''',[sNoTrs]);
        qd := OpenRS('SELECT * FROM tbl_trsmutasi_det WHERE no_bukti = ''%s''',[sNoTrs]);
        qhs := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoTrs]);

        qh.Insert;
        qh.FieldByName('no_bukti').AsString := sNoTrs;
        qh.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
        qh.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
        qh.FieldByName('user').AsString := aplikasi.NamaUser;
        qh.FieldByName('user_dept').AsString := aplikasi.UserDept;
        qh.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        qh.FieldByName('f_app').AsInteger := 1;
        qh.FieldByName('user_app').AsString := 'ADMIN';
        qh.FieldByName('tgl_app').AsDateTime := Aplikasi.NowServer;
        qh.Post;

        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoTrs;
        if cxChkAmbilBrg.Checked then begin
          qd.FieldByName('kode_brg').AsString := cxtKodeBrg2.Text;
          qd.FieldByName('kode_brg_tujuan').AsString := cxtKodeBrg.Text;
        end
        else
          qd.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qd.FieldByName('gudang_asal').AsString := 'G-ASIS';
        qd.FieldByName('gudang_tujuan').AsString := 'G02';
        qd.FieldByName('qty').AsFloat := cxsQtyMut.Value;
        qd.FieldByName('satuan').AsString := 'KG';
        qd.FieldByName('no_so').AsString := cxtNoSO.Text;
        qd.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        qd.Post;

        if cxChkAmbilBrg.Checked then begin
          // update detail barang (-)
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [cxtKodeBrg2.Text, 'G-ASIS']);
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([StrToInt(cxtKodeBrg2.Text), 'G-ASIS']),[]) then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
            barang_det.FieldByName('kode_gdg').AsString := 'G-ASIS';
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - cxsQtyMut.Value;
          barang_det.Post;
          barang_det.Close;

          // update detail barang (+)
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, 'G-ASIS']);
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([StrToInt(cxtKodeBrg.Text), 'G-ASIS']),[]) then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
            barang_det.FieldByName('kode_gdg').AsString := 'G-ASIS';
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat + cxsQtyMut.Value;
          barang_det.Post;
          barang_det.Close;

        end
        else begin
          // update detail barang
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, 'G-ASIS']);
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([StrToInt(cxtKodeBrg.Text), 'G-ASIS']),[]) then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
            barang_det.FieldByName('kode_gdg').AsString := 'G-ASIS';
          end;

          barang_det.FieldByName('stok').AsFloat :=
          barang_det.FieldByName('stok').AsFloat - cxsQtyMut.Value;
          barang_det.Post;
          barang_det.Close;
        end;

        qhs.Insert;
        qhs.FieldByName('no_bukti').AsString := sNoTrs;
        qhs.FieldByName('tanggal').AsDateTime := APlikasi.TanggalServer;
        if cxChkAmbilBrg.Checked then
          qhs.FieldByName('kode_brg').AsString := cxtKodeBrg2.Text
        else
          qhs.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qhs.FieldByName('tipe').AsString := 'OUT_';
        qhs.FieldByName('qty').AsFloat := cxsQtyMut.Value;
        qhs.FieldByName('satuan').AsString := 'KG';
        qhs.FieldByName('gudang').AsString := 'G-ASIS';
        qhs.FieldByName('no_so').AsString := cxtNoSO.Text;
        qhs.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        qhs.FieldByName('keterangan').AsString := 'MUTASI G-ASIS KE HASIL PRD PELETAN';
        qhs.FieldByName('user').AsString := Aplikasi.NamaUser;
        qhs.FieldByName('user_dept').AsString := aplikasi.UserDept;
        qhs.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        qhs.Post;

        qhs.Insert;
        qhs.FieldByName('no_bukti').AsString := sNoTrs;
        qhs.FieldByName('tanggal').AsDateTime := APlikasi.TanggalServer;
        qhs.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qhs.FieldByName('tipe').AsString := 'IN_';
        qhs.FieldByName('qty').AsFloat := cxsQtyMut.Value;
        qhs.FieldByName('satuan').AsString := 'KG';
        qhs.FieldByName('gudang').AsString := 'G02';
        qhs.FieldByName('no_so').AsString := cxtNoSO.Text;
        qhs.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        qhs.FieldByName('keterangan').AsString := 'MUTASI G-ASIS KE HASIL PRD PELETAN';
        qhs.FieldByName('user').AsString := Aplikasi.NamaUser;
        qhs.FieldByName('user_dept').AsString := aplikasi.UserDept;
        qhs.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        qhs.Post;

        {
        qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''', [sNoTrs]);
        qd := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''', [sNoTrs]);
        qhs := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoTrs]);

        qh.Insert;
        qh.FieldByName('no_bukti').AsString := sNoTrs;
        qh.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
        qh.FieldByName('user').AsString := aplikasi.NamaUser;
        qh.FieldByName('user_dept').AsString := aplikasi.UserDept;
        qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        qh.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        qh.FieldByName('f_approval').AsInteger := 1;
        qh.FieldByName('user_approval').AsString := aplikasi.NamaUser;
        qh.Post;

        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoTrs;
        qd.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qd.FieldByName('qty').AsFloat := cxsQtyMut.Value;
        qd.FieldByName('satuan').AsString := 'KG';
        qd.FieldByName('keterangan').AsString := 'MUTASI G-ASIS KE HASIL PRD PELETAN';
        qd.FieldByName('no_so').AsString := cxtNoSO.Text;
        qd.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        qd.FieldByName('kode_gdg').AsString := 'G-ASIS';
        qd.Post;

        // update stok
        barang := OpenRS('SELECT stok FROM tbl_barang WHERE kode = %s',[cxtKodeBrg.Text]);
        barang.Edit;
        barang.FieldByName('stok').AsFloat :=
          barang.FieldByName('stok').AsFloat - cxsQtyMut.Value;
        barang.Post;
        barang.Close;

        // update detail barang
        barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
          [cxtKodeBrg.Text, 'G-ASIS']);
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([StrToInt(cxtKodeBrg.Text), 'G-ASIS']),[]) then
          barang_det.Edit
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
          barang_det.FieldByName('kode_gdg').AsString := 'G-ASIS';
        end;

        barang_det.FieldByName('stok').AsFloat :=
          barang_det.FieldByName('stok').AsFloat - cxsQtyMut.Value;
        barang_det.Post;
        barang_det.Close;

        qhs.Insert;
        qhs.FieldByName('no_bukti').AsString := sNoTrs;
        qhs.FieldByName('tanggal').AsDateTime := APlikasi.TanggalServer;
        qhs.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qhs.FieldByName('tipe').AsString := 'OUT_';
        qhs.FieldByName('qty').AsFloat := cxsQtyMut.Value;
        qhs.FieldByName('satuan').AsString := 'KG';
        qhs.FieldByName('gudang').AsString := 'G-ASIS';
        qhs.FieldByName('no_so').AsString := cxtNoSO.Text;
        qhs.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        qhs.FieldByName('keterangan').AsString := 'MUTASI G-ASIS KE HASIL PRD PELETAN';
        qhs.FieldByName('user').AsString := Aplikasi.NamaUser;
        qhs.FieldByName('user_dept').AsString := aplikasi.UserDept;
        qhs.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        qhs.Post;

        // masuk ke hasil produksi
        sNoTrs := GetLastFak('hasil_produksi');
        UpdateFaktur(Copy(sNoTrs,1,8));
        qhp := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''', [sNoTrs]);
        qhp.Insert;
        qhp.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        qhp.FieldByName('no_bukti').AsString := sNoTrs;
        qhp.FieldByName('tanggal').AsDateTime := Aplikasi.NowServer;
        qhp.FieldByName('qty_prod').AsFloat := cxsQtyMut.Value;
        qhp.FieldByName('qty_baik').AsFloat := cxsQtyMut.Value;
        qhp.FieldByName('user').AsString := Aplikasi.NamaUser;
        qhp.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        qhp.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        qhp.FieldByName('kg_sak').AsFloat := 25;
        qhp.Post;
        }

        dm.zConn.Commit;

        MsgBox('Transaksi mutasi dari G-ASIS ke G-CUST sudah disimpan.');

        //SendEmail;

        ClearAll;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;


  end;

end;

procedure TfrmMutBrgPelHslPrd.ClearAll;
var
  i: Integer;
begin
  for i := 0 to Self.ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i].Tag = 2 then
      (Components[i] as TcxSpinEdit).Value := 0;
  end;
  cxtNoSPK.SetFocus;
end;

procedure TFrmMutBrgPelHslPrd.SendEmail;
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

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := 'felgito@sdp.mail,ferry@sdp.mail,fredi@sdp.mail,alex@sdp.mail';

    email.Subject := 'Trasaksi Mutasi Barang Peletan Dari G-ASIS ke Hasil Produksi';

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Terdapat transaksi mutasi barang peletan dari G-ASIS ke Hasil Produksi');
    lst.Add('</br>');
    lst.Add('Nomor SPK : ' + cxtNoSPK.Text);
    lst.Add('</br>');
    lst.Add('Nomor SO  : ' + cxtNoSO.Text);
    lst.Add('</br>');
    lst.Add('Customer  : ' + cxtCustomer.Text);
    lst.Add('</br>');
    lst.Add('Qty. Mut  : ' + cxsQtyMut.Text);
    lst.Add('</br>');
    lst.Add('User      : ' + aplikasi.NamaUser);
    lst.Add('</br>');
    lst.Add('Dept      : ' + aplikasi.UserDept);
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

procedure TfrmMutBrgPelHslPrd.btnCariKodeBrgClick(Sender: TObject);
var
  f: TfrmCari;
  lst: TStringList;
  fld: TField;
  q, q2: TZQuery;
  gdg: String;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'barang-jasa-pelet';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    lst := f.Result;
    fld := lst.Objects[0] as TField;

    Screen.Cursor := crSQLWait;
    q := OpenRS('SELECT kode, deskripsi, sf_get_stok2(kode,''G-ASIS'') stok FROM tbl_barang WHERE kode = %s',
      [fld.AsString]);

    if q.FieldByName('stok').AsInteger <= 0 then begin
      MsgBox('Stok G-ASIS tidak mencukupi');
    end
    else begin
      cxtKodeBrg2.Text := q.FieldByName('kode').AsString;
      cxtDeskripsi2.Text := q.fieldByName('deskripsi').AsString;
      cxsStokAsIs.Value := q.fieldByName('stok').AsFloat;
    end;
    q.Close;
    Screen.Cursor := crDefault;
  end;

end;
procedure TfrmMutBrgPelHslPrd.cxChkAmbilBrgClick(Sender: TObject);
begin
  inherited;
  if cxChkAmbilBrg.Checked then
    GroupBox1.Enabled := True
  else
    GroupBox1.Enabled := False;
end;

end.
