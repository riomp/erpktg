unit unFrmTindakLanjutTrial;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxMemo, cxTextEdit, cxLabel,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ZDataset, DB, ZAbstractRODataset,
  kbmMemTable, ComCtrls, cxCheckComboBox, cxCheckBox, cxSpinEdit, IdMessage,IdText,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP;

type
  TfrmTindakLanjutTrial = class(TfrmTplTrans)
    nxGrd: TNextGrid;
    nxColNoUrut: TNxIncrementColumn;
    nxColNoSPK: TNxTextColumn;
    nxColHslProd: TNxNumberColumn;
    cxLabel1: TcxLabel;
    cxtNoTrial: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxmDeskripsiTrial: TcxMemo;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxlBrgHasil: TcxLookupComboBox;
    nxColSelesai: TNxCheckBoxColumn;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    btnSimpanDetail: TButton;
    tmpBOM: TkbmMemTable;
    tmpBOMno_spk: TStringField;
    tmpBOMkode_brg: TIntegerField;
    tmpBOMpakai: TIntegerField;
    btnSimpan2: TButton;
    btnKeluar2: TButton;
    GroupBox2: TGroupBox;
    nxColPilih: TNxCheckBoxColumn;
    nxColSatuan0: TNxComboBoxColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColDeskripsi: TNxTextColumn;
    nxGrd1: TNextGrid;
    NxGraphicColumn1: TNxImageColumn;
    nxColNo1: TNxIncrementColumn;
    nxColKode1: TNxTextColumn;
    nxColDesk1: TNxTextColumn;
    nxColQty1: TNxNumberColumn;
    nxColPakai1: TNxNumberColumn;
    nxColSat1: TNxTextColumn;
    nxColNoSPK1: TNxTextColumn;
    nxColJenis: TNxTextColumn;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxtBrgSample: TcxTextEdit;
    cxsQtyBrgSample: TcxSpinEdit;
    cxtSatuanSamples: TcxTextEdit;
    nxColQtySPK: TNxNumberColumn;
    cxLabel7: TcxLabel;
    cxmDeskripsiHslPercobaan: TcxMemo;
    cxLabel8: TcxLabel;
    idSMTP: TIdSMTP;
    cxLabel9: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtDesk: TcxTextEdit;
    cxsHslPrd: TcxSpinEdit;
    cxtSatuan: TcxTextEdit;
    cxChkPosting: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdDetAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    mNoTrial: string;
    procedure SendEmail;
  public
    property NoTrial: string read mNoTrial write mNoTrial;
  end;

var
  frmTindakLanjutTrial: TfrmTindakLanjutTrial;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmTindakLanjutTrial.FormShow(Sender: TObject);
var
  q: TZQuery;
  i,j: integer;
  lst: TStringList;
  grd: TNextGrid;
  sNoSPK: string;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  
  q := OpenRS('SELECT a.*, c.deskripsi, c.satuan, b.deskripsi deskripsi_samples, b.satuan satuan_samples FROM tbl_logbook_design a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg_sample = b.kode ' +
    'LEFT JOIN tbl_barang c ON a.kode_brg = c.kode ' +
    'WHERE a.no_trial = ''%s'' AND a.jenis = ''BARANG JADI''',[mNoTrial]);
  cxtNoTrial.Text := mNoTrial;
  cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
  cxtDesk.Text := q.FieldByName('deskripsi').AsString;
  cxmDeskripsiTrial.Lines.Text := q.FieldByName('deskripsi_trial').AsString;
  cxtBrgSample.Text := q.FieldByName('deskripsi_samples').AsString;
  cxmDeskripsiHslPercobaan.Text := q.FieldByName('hasil_percobaan').AsString;
  cxsQtyBrgSample.Value := q.FieldByname('jml_samples').AsFloat;
  cxtSatuanSamples.Text := q.FieldByName('satuan_samples').AsString;
  if q.FieldByName('f_posting_hasil').AsInteger = 1 then begin
    cxChkPosting.Checked := True;
    cxChkPosting.Properties.ReadOnly := True;
  end;
  q.Close;

  // detail spk
  lst := TStringList.Create;
  q := OpenRS('SELECT a.no_spk, a.kode_brg, c.deskripsi, c.satuan, b.jenis, d.qty qty_spk, ' +
    'IFNULL((SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = a.no_spk),0) as hsl_prd ' + 
    'FROM tbl_mo a ' +
    'LEFT JOIN tbl_logbook_design b ON a.no_trial = b.no_trial AND a.kode_brg = b.kode_brg ' +
    'LEFT JOIN tbl_barang c ON c.kode = a.kode_brg ' +
    'LEFT JOIN tbl_spk d ON d.no_spk = a.no_spk ' +
    'WHERE a.no_trial = ''%s'' ' +
    'GROUP BY a.no_spk, a.kode_brg, c.deskripsi, c.satuan, b.jenis, d.qty',
    [cxtNoTrial.Text]);
  while not q.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColNoSPK.Index, i].AsString := q.FieldByName('no_spk').AsSTring;
    nxGrd.Cell[nxColJenis.Index, i].AsString := q.FieldByName('jenis').AsString;
    nxGrd.Cell[nxColKodeBrg.Index, i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColDeskripsi.Index, i].AsString := q.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQtySPK.Index, i].AsFloat := q.FieldByName('qty_spk').AsFloat;
    nxGrd.Cell[nxColSatuan0.Index, i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColHslProd.Index, i].AsFloat := q.FieldByName('hsl_prd').AsFloat;
    if q.FieldByName('jenis').AsString = 'BARANG JADI' then begin
      cxsHslPrd.Value := q.FieldByName('hsl_prd').AsFloat;
      cxtSatuan.Text := q.FieldByName('satuan').AsString;
    end;
    lst.Add(QuotedStr(q.FieldByName('no_spk').AsString));
    q.Next;
  end;
  q.Close;

  {
  // init detail bom
  q := OpenRS('SELECT a.*, IFNULL(b.pakai,0) pakai ' +
    'FROM tbl_bom_det a LEFT JOIN tbl_logbook_bom_det b ' +
    'ON a.no_spk = b.no_spk AND a.kode_brg = b.kode_brg ' +
    'WHERE a.no_spk IN (' +
    lst.CommaText + ') order by a.no_spk');
  while not q.Eof do begin
    tmpBOM.Insert;
    tmpBOM.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
    tmpBOM.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
    tmpBOM.FieldByName('pakai').AsFloat := q.FieldByName('pakai').AsFloat;
    tmpBOM.Post;
    q.Next;
  end;
  q.Close;

  for i := 0 to lst.Count - 1 do begin
    grd := FindComponent('nxGrd' + IntToStr(i+1)) as TNextGrid;
    sNoSPK := lst.Strings[i];
    q := OpenRS('SELECT a.*, b.deskripsi, IFNULL(c.pakai,0) pakai ' +
      'FROM tbl_bom_det a LEFT JOIN tbl_barang b ' +
      'ON a.kode_brg = b.kode ' +
      'LEFT JOIN tbl_logbook_bom_det c ON c.kode_brg = a.kode_brg AND c.no_spk = a.no_spk ' +
      'WHERE a.no_spk = %s',[sNoSPK]);
    while not q.Eof do begin
      j := grd.AddRow();
      grd.Cell[nxColKode1.Index, j].AsString := q.FieldByName('kode_brg').AsString;
      grd.Cell[nxColDesk1.Index, j].AsString := q.FieldByName('deskripsi').AsString;
      grd.Cell[nxColNoSPK1.Index, j].AsString := q.FieldByName('no_spk').AsString;
      grd.Cell[nxColQty1.Index, j].AsFloat := q.FieldByName('pakai').AsFloat;
      q.Next;
    end;
    q.Close;
    grd.Enabled := False;
  end;
  }
  Screen.Cursor := crDefault;

end;

procedure TfrmTindakLanjutTrial.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  q: TZQuery;
  i: Integer;
begin
  inherited;

  // detail bom
  nxGrd1.ClearRows;
  
  if ARow = -1 then Abort;
  q := OpenRS('SELECT a.*, b.deskripsi, b.satuan satuan1 FROM tbl_bom_det a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE a.no_spk = ''%s''',
    [nxGrd.Cell[nxColNoSPK.Index, ARow].AsString]);
  while not q.Eof do begin
    i := nxGrd1.AddRow();
    nxGrd1.Cell[nxColKode1.Index, i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd1.Cell[nxColDesk1.Index, i].AsString := q.FieldByName('deskripsi').AsString;
    nxGrd1.Cell[nxColQty1.Index, i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd1.Cell[nxColSat1.Index, i].AsString := q.FieldByName('satuan1').AsString;
    q.Next;
  end;
  q.Close;
  
end;

procedure TfrmTindakLanjutTrial.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  pnlTengah.Enabled := True;
  tmpBOM.Open;

  q := OpenRS('SELECT satuan FROM tbl_satuan ORDER BY satuan');
  while not q.Eof do begin
    nxColSatuan0.Items.Add(q.FieldByName('satuan').AsString);
    q.Next;
  end;
  q.Close;

  zqrBrg.Open;
end;

procedure TfrmTindakLanjutTrial.nxGrdDetAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  sNoSPK: string;
  iKodeBrg: Integer;
begin
  inherited;
  {
  if ACol = nxColPemakaian.Index then begin
    sNoSPK := nxGrd.Cell[nxColNoSPK.Index, nxGrd.SelectedRow].AsString;
    iKodeBrg := nxGrdDet.Cell[nxColKodeBrg.Index, ARow].AsInteger;
    if tmpBOM.Locate('no_spk;kode_brg',
      VarArrayOf([sNoSPK, iKodeBrg]),[]) then begin
      tmpBOM.Edit;
      tmpBOM.FieldByName('pakai').AsFloat := nxGrdDet.Cell[nxColPemakaian.Index, ARow].AsFloat;
      tmpBOM.Post;
    end;
  end;
  }
end;

procedure TfrmTindakLanjutTrial.btnKeluarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTindakLanjutTrial.btnSimpanClick(Sender: TObject);
var
  i,j: Integer;
  q, q1, q2, qh, qd, qb: TZQuery;
  grd: TNextGrid;
  sNoTrs: string;
begin
  if Trim(cxmDeskripsiHslPercobaan.Text) = '' then begin
    MsgBox('Deskripsi hasil percobaan harus di isi.');
    cxmDeskripsiHslPercobaan.SetFocus
  end
  else begin

    // cek apakah trial sudah pernah input hasil percobaan
    q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial.Text]);
    if q.FieldByName('f_posting_hasil').AsInteger = 1 then begin
      MsgBox('Trial ini sudah posting hasil percobaan, tidak bisa di edit.');
      q.Close;
      Abort;
    end;
    q.Close;

    try
      dm.zConn.StartTransaction;

      q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s'' AND jenis = ''BARANG JADI''',
        [cxtNoTrial.Text]);
      q.Edit;
      q.FieldByName('hasil_percobaan').AsString := Trim(cxmDeskripsiHslPercobaan.Text);
      q.FieldByName('tgl_input_hasil').AsDateTime := Aplikasi.NowServer;
      if cxChkPosting.Checked then begin
        q.FieldByName('f_posting_hasil').AsInteger := 1;
      end;
      q.Post;

      if cxChkPosting.Checked then begin
        // transaksi keluar dari G03
        sNoTrs := GetLastFak('brg_out');
        unTools.UpdateFaktur(Copy(sNoTrs,1,7));

        qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''',[sNoTrs]);
        qh.Insert;
        qh.FieldByName('no_bukti').AsString := sNoTrs;
        qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        qh.FieldByName('user').AsString := Aplikasi.NamaUser;
        qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        qh.FieldByName('f_approval').AsString := '1';
        qh.FieldByName('user_approval').AsString := Aplikasi.NamaUser;
        qh.Post;
        qh.Close;

        qd := OpenRS('SELECT * FROM tbl_trskeluar_det where no_bukti = ''%s''',[sNoTrs]);
        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoTrs;
        qd.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qd.FieldByName('qty').AsFloat := cxsHslPrd.Value;
        qd.FieldByName('satuan').AsString := cxtSatuan.Text;
        qd.FieldByName('keterangan').AsString := 'HASIL TRIAL: ' + cxtNoTrial.Text;
        qd.FieldByName('kode_gdg').AsString := 'G03';
        qd.Post;
        qd.Close;

        qh := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);
        qh.Insert;
        qh.FieldByName('no_bukti').AsString := sNoTrs;
        qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        qh.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
        qh.FieldByName('tipe').AsSTring := 'OUT_';
        qh.FieldByName('qty').AsFloat := cxsHslPrd.Value;
        qh.FieldByName('satuan').AsString := cxtSatuan.Text;
        qh.FieldByName('gudang').AsString := 'G03';
        qh.FieldByName('no_trial').AsString := cxtNoTrial.Text;
        qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        qh.Post;
        qh.Close;

        qh := OpenRS('SELECT kode, stok FROM tbl_barang WHERE kode = %s',
          [cxtKodeBrg.Text]);
        qh.Edit;
        qh.FieldByName('stok').AsFloat :=
          qh.FieldByName('stok').AsFloat - cxsHslPrd.Value;
        qh.Post;
        qh.Close;

        qh := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''G03''',
          [cxtKodeBrg.Text]);
        qh.Edit;
        qh.FieldByName('stok').AsFloat :=
          qh.FieldByName('stok').AsFloat - cxsHslPrd.Value;
        qh.Post;
        qh.Close;
      end;

      dm.zConn.Commit;

      if cxChkPosting.Checked then begin
        SendEmail;
        MsgBox('Hasil Percobaan: ' + cxtNoTrial.Text + ' sudah disimpan dan diposting.');
      end
      else begin
        MsgBox('Hasil Percobaan: ' + cxtNoTrial.Text + ' sudah disimpan.');
      end;

      Close;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmTindakLanjutTrial.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  grd: TNextGrid;
begin
  inherited;
  if ACol = nxColPilih.Index then begin
    grd := FindComponent('nxGrd' + IntToStr(ARow+1)) as TNextGrid;
    grd.Enabled := nxGrd.Cell[nxColPilih.Index, ARow].AsBoolean;
  end;
end;

procedure TfrmTindakLanjutTrial.SendEmail;
var
  lst0, lstFile, lst, lstE: TStringList;
  i : Integer;
  sTmp: string;
  sNamaFile, sNoTrial : string;
  email : TIdMessage;
  bdy: TIdText;
  q, qe: TZQuery;
begin
  try

  idSMTP.AuthType := satNone;
  idSMTP.Host := Aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    // ambil daftar email
    lstE := TStringList.Create;
    qe := OpenRS('SELECT b.email FROM tbl_email_mda a ' +
      'LEFT JOIN tbl_user b ON a.nama_user = b.nama ' +
      'WHERE a.jenis = ''HASIL-TRIAL''');
    while not qe.Eof do begin
      lstE.Add(qe.FieldByName('email').AsString);
      qe.Next;
    end;
    qe.Close;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := lstE.CommaText;

    sNoTrial := cxtNoTrial.Text;

    q := OpenRS('SELECT a.*, b.deskripsi, c.deskripsi deskripsi_sample FROM tbl_logbook_design a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'LEFT JOIN tbl_barang c ON c.kode = a.kode_brg_sample ' +
      'WHERE a.no_trial = ''%s''',[sNoTrial]);

    email.Subject := 'Hasil Trial QAC No: ' + sNoTrial;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('<h3>HASIL TRIAL NO : ' + cxtNoTrial.Text + '</h3></br></br>');
    lst.Add('<pre>');
    lst.Add('Kode Barang      : ' + q.FieldByName('kode_brg').AsString);
    lst.Add('Deskripsi        : ' + q.FieldByName('deskripsi').AsString);
    lst.Add('Kode Brg. Sample : ' + q.FieldByName('kode_brg_sample').AsString);
    lst.Add('Desk. Brg Sample : ' + q.FieldByName('deskripsi_sample').AsString);
    lst.Add('Qty. Brg Sample  : ' + q.FieldByName('jml_samples').AsString + q.FieldByName('satuan_samples').AsString);
    lst.Add('Deskripsi Strial : ' + cxmDeskripsiTrial.Text);
    lst.Add('Deskripsi Hasil  ');
    lst.Add('  Percobaan      : ' + cxmDeskripsiHslPercobaan.Text);
    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');
    q.Close;

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

  except
    on E: Exception do begin
      ShowMessage('Error: ' + E.Message);
    end;
  end;

end;

end.
