unit unFrmApprovalTrial;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel;

type
  TfrmApprovalTrial = class(TfrmTplTrans)
    cxTbl: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqrTrial: TZReadOnlyQuery;
    dsTrial: TDataSource;
    cxTblno_trial: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTbldept: TcxGridDBColumn;
    cxTblkode_customer: TcxGridDBColumn;
    cxTblpemohon: TcxGridDBColumn;
    cxTbltgl_selesai: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTbluser_dept: TcxGridDBColumn;
    cxTbltgl_input: TcxGridDBColumn;
    cxTbldeskripsi_trial: TcxGridDBColumn;
    cxTblsatuan: TcxGridDBColumn;
    cxTblwaktu: TcxGridDBColumn;
    cxTblf_status: TcxGridDBColumn;
    cxTblf_posted: TcxGridDBColumn;
    cxTblkode_brg_jadi: TcxGridDBColumn;
    cxTblf_app_mgmt: TcxGridDBColumn;
    cxTbldeskripsi: TcxGridDBColumn;
    nxGrdSPK: TNextGrid;
    nxColNoUrut: TNxIncrementColumn;
    nxColNoSPK: TNxTextColumn;
    nxColHslPrd: TNxNumberColumn;
    GroupBox2: TGroupBox;
    pgBom: TPageControl;
    tbA: TTabSheet;
    nxGrd1: TNextGrid;
    NxGraphicColumn1: TNxImageColumn;
    nxColNo1: TNxIncrementColumn;
    nxColKode1: TNxTextColumn;
    nxColDesk1: TNxTextColumn;
    nxColQty1: TNxNumberColumn;
    nxColPakai1: TNxNumberColumn;
    nxColSat1: TNxTextColumn;
    nxColNoSPK1: TNxTextColumn;
    tbB: TTabSheet;
    nxGrd2: TNextGrid;
    NxImageColumn1: TNxImageColumn;
    NxIncrementColumn2: TNxIncrementColumn;
    nxColKode2: TNxTextColumn;
    nxColDesk2: TNxTextColumn;
    nxColQty2: TNxNumberColumn;
    nxColPakai2: TNxNumberColumn;
    nxColSat2: TNxTextColumn;
    nxColNoSPK2: TNxTextColumn;
    tbC: TTabSheet;
    nxGrd3: TNextGrid;
    NxImageColumn2: TNxImageColumn;
    NxIncrementColumn3: TNxIncrementColumn;
    nxColKode3: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    nxColPakai3: TNxNumberColumn;
    NxTextColumn6: TNxTextColumn;
    nxColNoSPK3: TNxTextColumn;
    btnApp: TButton;
    btnTidakApp: TButton;
    btnKeluar2: TButton;
    idSMTP: TIdSMTP;
    cxLabel1: TcxLabel;
    cxCmbKeputusan: TcxComboBox;
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
  frmApprovalTrial: TfrmApprovalTrial;

implementation

uses unDm, unAplikasi, unThreadKirimEmail, unTools;

{$R *.dfm}

procedure TfrmApprovalTrial.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  zqrTrial.Open;

  with cxCmbKeputusan.Properties.Items do begin
    Add('');
    Add('DIGILING');
    Add('AS IS');
  end;

end;

procedure TfrmApprovalTrial.cxTblFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q, qd: TZQuery;
  i,j,k: Integer;
  grd: TNextGrid;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_logbook_spk_det WHERE no_trial = ''%s''',
    [zqrTrial.FieldByName('no_trial').AsString]);

  nxGrdSPK.ClearRows;
  nxGrd1.ClearRows;
  nxGrd2.ClearRows;
  nxGrd3.ClearRows;
  
  j := 1;
  while not q.Eof do begin
    i := nxGrdSPK.AddRow();
    nxGrdSPK.Cell[nxColNoSPK.Index, i].AsString := q.FieldByName('no_spk').AsString;
    nxGrdSPK.Cell[nxColHslPrd.Index, i].AsFloat := q.FieldByName('hsl_prod').AsFloat;

    qd := OpenRS('SELECT a.*, b.deskripsi, b.satuan FROM tbl_logbook_bom_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE no_trial = ''%s'' AND no_spk = ''%s''',
      [zqrTrial.FieldByName('no_trial').AsString, q.FieldByName('no_spk').AsString]);
      
    grd := FindComponent('nxGrd' + IntToStr(j)) as TNextGrid;
    while not qd.Eof do begin
      k := grd.AddRow();
      grd.Cell[nxColKode1.Index, k].AsString := qd.FieldByName('kode_brg').AsString;
      grd.Cell[nxColDesk1.Index, k].AsString := qd.FieldByName('deskripsi').AsString;
      grd.Cell[nxColPakai1.Index, k].AsFloat := qd.FieldByName('pakai').AsFloat;
      grd.Cell[nxColSat1.Index, k].AsString := qd.FieldByName('satuan').AsString;
      qd.Next;
    end;
    qd.Close;
    q.Next;
    Inc(j);
  end;
  q.Close;
end;

procedure TfrmApprovalTrial.FormShow(Sender: TObject);
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

procedure TfrmApprovalTrial.btnAppClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody: TStringList;
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

    if chk = 'T' then begin
      lst.Add('''' + cxTbl.DataController.Values[i,1] + '''');
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count-1  do begin
      dm.zConn.ExecuteDirect('update tbl_logbook_design set f_app_mgmt = 1 where no_trial = ' +
                              lst.Strings[i]);
    
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

        email.Recipients.EMailAddresses := 'ferry@sdp.mail';

        email.Subject := 'Approval Transaksi Trial No: ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Approval Transaksi Trial</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT b.email, a.user, a.deskripsi_trial FROM tbl_logbook_design a ' +
          'LEFT JOIN tbl_user b ON a.user = b.nama ' +
          'WHERE a.no_trial = %s',
          [lst.Strings[i]]);
        email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
          q.FieldByName('email').AsString;
        lstBody.Add('User Request : ' + q.FieldByName('user').AsString);
        lstBody.Add('User Email   : ' + q.FieldByName('email').AsString);
        lstBody.Add('Deskripsi    : ');
        //lstBody.Add(StringReplace(q.FieldByName('deskripsi').AsString, #13, '<br/>', [rfReplaceAll]));
        lstBody.Add(q.FieldByName('deskripsi_trial').AsString);
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

procedure TfrmApprovalTrial.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmApprovalTrial.btnTidakAppClick(Sender: TObject);
var
  i: Integer;
  lst, lst2, lstBody: TStringList;
  chk, sNoSO: string;
  q: TZQuery;
  email: TIdMessage;
  bdy: TIdText;
  qCek, qCekPel: TZQuery;
begin
  inherited;
  lst := TStringList.Create;
  lst2 := TStringList.Create;
  for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTbl.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTbl.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add('''' + cxTbl.DataController.Values[i,1] + '''');
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count-1  do begin
      dm.zConn.ExecuteDirect('update tbl_logbook_design set f_app_mgmt = 2 where no_trial = ' +
                              lst.Strings[i]);

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

        email.Recipients.EMailAddresses := 'ferry@sdp.mail';

        email.Subject := 'Tidak di Approval Transaksi Trial No: ' + lst.Strings[i];

        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>Tidak di Approval Transaksi Trial</h3></br></br>');
        lstBody.Add('<pre>');

        q := OpenRS('SELECT b.email, a.user, a.deskripsi_trial FROM tbl_logbook_design a ' +
          'LEFT JOIN tbl_user b ON a.user = b.nama ' +
          'WHERE a.no_trial = %s',
          [lst.Strings[i]]);
        email.Recipients.EMailAddresses := email.Recipients.EMailAddresses + ',' +
          q.FieldByName('email').AsString;
        lstBody.Add('User Request : ' + q.FieldByName('user').AsString);
        lstBody.Add('User Email   : ' + q.FieldByName('email').AsString);
        lstBody.Add('Deskripsi    : ');
        //lstBody.Add(StringReplace(q.FieldByName('deskripsi').AsString, #13, '<br/>', [rfReplaceAll]));
        lstBody.Add(q.FieldByName('deskripsi_trial').AsString);
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
