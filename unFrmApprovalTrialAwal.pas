unit unFrmApprovalTrialAwal;

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
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ZAbstractRODataset, ZDataset,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxCheckBox, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, cxMemo, cxSpinEdit;

type
  TfrmApprovalTrialAwal = class(TfrmTplTrans)
    cxTbl: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqrTrial: TZReadOnlyQuery;
    dsTrial: TDataSource;
    btnApp: TButton;
    btnTidakApp: TButton;
    btnKeluar2: TButton;
    idSMTP: TIdSMTP;
    cxTblno_trial: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTblf_status: TcxGridDBColumn;
    cxTblkode_brg: TcxGridDBColumn;
    cxTblkode_brg_jadi: TcxGridDBColumn;
    cxTblf_app_mgmt: TcxGridDBColumn;
    cxTblqty: TcxGridDBColumn;
    cxTblbahan_dari: TcxGridDBColumn;
    cxTblkode_brg_sample: TcxGridDBColumn;
    cxTblf_app_awal: TcxGridDBColumn;
    cxTblf_app_awal_user: TcxGridDBColumn;
    cxTblf_app_awal_tanggal: TcxGridDBColumn;
    cxTbldeskripsi: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxMemDesk: TcxMemo;
    cxLabel2: TcxLabel;
    cxtBahanDari: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtSample: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtSatuanSamples: TcxTextEdit;
    cxsJmlSamples: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxTblFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnAppClick(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnTidakAppClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

var
  frmApprovalTrialAwal: TfrmApprovalTrialAwal;

implementation

uses unDm, unAplikasi, unThreadKirimEmail, unTools;

{$R *.dfm}

procedure TfrmApprovalTrialAwal.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  zqrTrial.Open;
end;

procedure TfrmApprovalTrialAwal.cxTblFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q, qs: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',
    [zqrTrial.FieldByName('no_trial').AsString]);

  cxMemDesk.Text := q.FieldByName('deskripsi_awal').AsString;
  cxtBahanDari.Text := q.FieldByName('bahan_dari').AsString;

  if not q.FieldByName('kode_brg_sample').IsNull then begin
    qs := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = %s',
      [q.FieldByName('kode_brg_sample').AsString]);
    cxtSample.Text := qs.FieldByName('deskripsi').AsString;
    cxsJmlSamples.Value := q.FieldByName('jml_samples').AsFloat;
    cxtSatuanSamples.Text := q.FieldByName('satuan_samples').AsString;
    qs.Close;
  end
  else begin
    cxtSample.Text := '';
  end;

  q.Close;
end;

procedure TfrmApprovalTrialAwal.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxTbl.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; //TcxBooleanValueType;
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

procedure TfrmApprovalTrialAwal.btnAppClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody, lstEmail: TStringList;
  chk, sNoSO, sNoTrs, sKodeBrgSamples, sSatuanSamples : string;
  jml_samples: real;
  q: TZQuery;
  email: TIdMessage;
  bdy: TIdText;
  qCek, qCekPel, qh, qd, qhist, qs: TZQuery;
begin
  lst := TStringList.Create;
  lst2 := TStringList.Create;
  for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTbl.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTbl.DataController.Values[i,0];

    if chk = 'T' then
      lst.Add(cxTbl.DataController.Values[i,1]);

  end;

  if lst.Count > 0 then begin
    lstEmail := TStringList.Create;
    q := OpenRS('SELECT a.*, b.email FROM tbl_email_mda a ' +
      'LEFT JOIN tbl_user b ON a.nama_user = b.nama ' +
      'WHERE a.jenis = ''HSL-APP-AWAL-TRIAL''');
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('email').AsString);
      q.Next;
    end;
    q.Close;

    for i := 0 to lst.Count-1  do begin

      dm.zConn.ExecuteDirect(
        'update tbl_logbook_design set f_app_awal = 1, ' +
        'f_app_awal_user = ''' + aplikasi.NamaUser + ''', ' +
        'f_app_awal_tanggal = NOW() ' +
        'where no_trial = ''' + lst.Strings[i] + '''');

      // get kode barang samples
      qs := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s'' AND kode_brg = ''%s''',
        [zqrTrial.FieldByName('no_trial').AsString, zqrTrial.FieldByName('kode_brg').AsString]);

      if not qs.IsEmpty then begin
        if qs.FieldByName('jml_samples').AsFloat > 0 then begin
          sKodeBrgSamples := qs.FieldByName('kode_brg_sample').AsString;
          jml_samples := qs.FieldByName('jml_samples').AsFloat;
          sSatuanSamples := qs.FieldByName('satuan_samples').AsString;

          // pengurangan stok samples
          sNoTrs := unTools.GetLastFak('brg_out');
          unTools.UpdateFaktur(Copy(sNoTrs,1,7));
          qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''',[sNoTrs]);
          qh.Insert;
          qh.FieldByName('no_bukti').AsString := sNoTrs;
          qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.FieldByName('f_approval').AsInteger := 1;
          qh.FieldByName('user_approval').AsString := Aplikasi.NamaUser;
          qh.Post;
          qh.Close;

          qd := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',[sNoTrs]);
          qd.Insert;
          qd.FieldByName('no_bukti').AsString := sNoTrs;
          qd.FieldByName('kode_brg').AsString := sKodeBrgSamples;
          qd.FieldByName('qty').AsFloat := jml_samples;
          qd.FieldByName('satuan').AsString := sSatuanSamples;
          qd.FieldByName('referensi').AsString := lst.Strings[i];
          qd.Post;
          qd.Close;

          qhist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);
          with qhist do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoTrs;
            FieldByName('tanggal').AsDateTime := APlikasi.TanggalServer;
            FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := sKodeBrgSamples;
            FieldByName('tipe').AsString := 'OUT_';
            FieldByName('qty').AsFloat := jml_samples;
            FieldByName('satuan').AsString := sSatuanSamples;
            FieldByName('gudang').AsString := 'G01';
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            //FieldByName('no_trial').AsString := lst.Strings[i];
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            Post;
          end;
          qhist.Close;
        end;
      end;
      qs.Close;

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
          email.Recipients.EMailAddresses := lstEmail.CommaText;

        email.Subject := 'Approval Trial No: ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Approval Transaksi Trial</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[lst.Strings[i]]);
        
        lstBody.Add('User Input   : ' + q.FieldByName('user').AsString);
        lstBody.Add('Deskripsi    : ');
        lstBody.Add(q.FieldByName('deskripsi_awal').AsString);
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
  end;
  zqrTrial.Close;
  zqrTrial.Open;
  
  if lst.Count > 0 then
    MsgBox('Approval transaksi trial sudah disimpan.');
end;

procedure TfrmApprovalTrialAwal.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmApprovalTrialAwal.btnTidakAppClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody, lstEmail: TStringList;
  chk, sNoSO: string;
  q: TZQuery;
  email: TIdMessage;
  bdy: TIdText;
  qCek, qCekPel: TZQuery;
begin
  lst := TStringList.Create;
  lst2 := TStringList.Create;
  for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTbl.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTbl.DataController.Values[i,0];

    if chk = 'T' then
      lst.Add(cxTbl.DataController.Values[i,1]);
      
  end;

  if lst.Count > 0 then begin
    lstEmail := TStringList.Create;
    q := OpenRS('SELECT a.*, b.email FROM tbl_email_mda a ' +
      'LEFT JOIN tbl_user b ON a.nama_user = b.nama ' +
      'WHERE a.jenis = ''HSL-APP-AWAL-TRIAL''');
    while not q.Eof do begin
      lstEmail.Add(q.FieldByName('email').AsString);
      q.Next;
    end;
    q.Close;

    for i := 0 to lst.Count-1  do begin

      dm.zConn.ExecuteDirect(
        'update tbl_logbook_design set f_app_awal = 2, ' +
        'f_app_awal_user = ''' + aplikasi.NamaUser + ''', ' +
        'f_app_awal_tanggal = NOW() ' + 
        'where no_trial = ''' + lst.Strings[i] + '''');
    
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
          email.Recipients.EMailAddresses := lstEmail.CommaText;

        email.Subject := 'Approval Trial No: ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Approval Transaksi Trial : Ditolak</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[lst.Strings[i]]);
        
        lstBody.Add('User Input   : ' + q.FieldByName('user').AsString);
        lstBody.Add('Deskripsi    : ');
        lstBody.Add(q.FieldByName('deskripsi_awal').AsString);
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
  end;
  zqrTrial.Close;
  zqrTrial.Open;
  
  if lst.Count > 0 then
    MsgBox('Approval transaksi trial sudah disimpan.');
end;

end.
