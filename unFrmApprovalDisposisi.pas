unit unFrmApprovalDisposisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxContainer, cxLabel,
  ZAbstractRODataset, ZDataset, cxCheckComboBox, cxCheckBox, cxSpinEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdSMTPBase, IdSMTP,
  IdMessageClient, IdMessage, IdText, cxTextEdit, cxMemo, cxMaskEdit;

type
  TfrmApprovalDisposisi = class(TfrmTplTrans)
    cxTblH: TcxGridDBTableView;
    cxGrdHLevel1: TcxGridLevel;
    cxGrdH: TcxGrid;
    cxGrdD: TcxGrid;
    cxTblD: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrH: TZReadOnlyQuery;
    dsH: TDataSource;
    cxTblHno_bukti: TcxGridDBColumn;
    cxTblHtgl_input: TcxGridDBColumn;
    cxTblHberat_spmb: TcxGridDBColumn;
    cxTblHberat_packing: TcxGridDBColumn;
    cxTblHberat_lain: TcxGridDBColumn;
    cxTblHnopol: TcxGridDBColumn;
    cxTblHberat_bersih_truk: TcxGridDBColumn;
    cxTblHberat_timbangan: TcxGridDBColumn;
    cxTblHberat_bersih: TcxGridDBColumn;
    cxTblHselisih: TcxGridDBColumn;
    cxTblHpersentase: TcxGridDBColumn;
    cxTblHapp_qac: TcxGridDBColumn;
    cxTblHuser_qac: TcxGridDBColumn;
    cxTblHtgljam_app_qac: TcxGridDBColumn;
    cxTblHapp_whl: TcxGridDBColumn;
    cxTblHuser_whl: TcxGridDBColumn;
    cxTblHtgljam_app_whl: TcxGridDBColumn;
    cxTblHapp_mgmt: TcxGridDBColumn;
    cxTblHuser_mgmt: TcxGridDBColumn;
    cxTblHtgljam_app_mgmt: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    btnApproveDisposisi: TButton;
    btnNotApprove: TButton;
    zqrD: TZReadOnlyQuery;
    dsD: TDataSource;
    cxTblDno_bukti: TcxGridDBColumn;
    cxTblDno_spmb: TcxGridDBColumn;
    cxTblDberat_total: TcxGridDBColumn;
    cxTblDberat_packing: TcxGridDBColumn;
    idSMTP: TIdSMTP;
    cxLabel2: TcxLabel;
    cxmDeskripsi: TcxMemo;
    cxLabel3: TcxLabel;
    cxmAkarMasalah: TcxMemo;
    cxLabel4: TcxLabel;
    cxmKetTambahan: TcxMemo;
    cxGrid1: TcxGrid;
    cxTblDetSPMB: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxLabel5: TcxLabel;
    zqrDetSPMB: TZReadOnlyQuery;
    dsDetSPMB: TDataSource;
    cxTblDetSPMBno_so: TcxGridDBColumn;
    cxTblDetSPMBkode_brg: TcxGridDBColumn;
    cxTblDetSPMBqty: TcxGridDBColumn;
    cxTblDetSPMBsatuan: TcxGridDBColumn;
    cxTblDetSPMBdeskripsi: TcxGridDBColumn;
    cxTblDetSPMBisi_pak: TcxGridDBColumn;
    cxTblDetSPMBberat_total: TcxGridDBColumn;
    cxTblHColumn1: TcxGridDBColumn;
    cxTblHColumn2: TcxGridDBColumn;
    cxTblHColumn3: TcxGridDBColumn;
    Button1: TButton;
    cxLabel6: TcxLabel;
    GroupBox1: TGroupBox;
    cxsPersentase: TcxSpinEdit;
    btnUpdatePersen: TButton;
    cxTblHColumn4: TcxGridDBColumn;
    cxTblHColumn5: TcxGridDBColumn;
    cxTblDColumn1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxTblHFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnApproveDisposisiClick(Sender: TObject);
    procedure cxTblHEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxTblDFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure btnUpdatePersenClick(Sender: TObject);

  private
    mjenis: string;
    procedure SendEmail(lstNoDis: TStringList; Jabatan: string; Dept: string);

  public
    { Public declarations }
    property jenis: string read mjenis write mjenis;
  end;

var
  frmApprovalDisposisi: TfrmApprovalDisposisi;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmApprovalDisposisi.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxTblH.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;

  zqrH.Close;
  if (aplikasi.UserDept = 'QAC') and (aplikasi.Jabatan = 'STAFF') then begin
    zqrH.SQL.Strings[1] := 'WHERE app_staff_qac = 0'
  end
  else if aplikasi.UserDept = 'QAC' then begin
    zqrH.SQL.Strings[1] := 'WHERE app_qac = 0 AND app_staff_qac = 1 AND abs(persentase) > 5';
  end
  else if aplikasi.UserDept = 'WHL' then begin
    zqrH.SQL.Strings[1] := 'WHERE app_whl = 0 AND ((app_qac = 1 AND abs(persentase) > 5) OR (app_staff_qac = 1 AND abs(persentase) <= 5))';
    //zqrH.SQL.Strings[1] := 'WHERE app_whl = 0 AND (app_staff_qac = 1 AND abs(persentase) < 5)';
  end
  else if aplikasi.UserDept = 'DIR' then begin
    zqrH.SQL.Strings[1] := 'WHERE app_staff_qac = 1 AND app_qac = 1 AND app_whl = 1 AND app_mgmt = 0 AND (abs(persentase) > 5)';
  end;
  zqrH.Open;
  
end;

procedure TfrmApprovalDisposisi.cxTblHFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;

  cxmDeskripsi.Text := zqrH.FieldByName('deskripsi').AsString;
  cxmAkarMasalah.Text := zqrH.FieldByName('akar_masalah').AsString;
  cxmKetTambahan.Text := zqrH.FieldByName('ket_tambahan').AsString;
  cxsPersentase.Value := zqrH.FieldByName('persentase').AsFloat;

  zqrD.Close;
  zqrD.ParamByName('no_bukti').AsString := zqrH.FieldByName('no_bukti').AsString;
  zqrD.Open;
end;

procedure TfrmApprovalDisposisi.btnApproveDisposisiClick(Sender: TObject);
var
  i: Integer;
  lst: TStringList;
  chk, sNoSO: string;
  q: TZQuery;
begin
  lst := TStringList.Create;
  for i := 0 to cxTblH.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTblH.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblH.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblH.DataController.Values[i,1]);
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin
      if (aplikasi.UserDept = 'QAC') and (aplikasi.Jabatan = 'STAFF') then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_disposisi_head SET app_staff_qac = 1,' +
          'deskripsi = ''' + Trim(cxmDeskripsi.Text) + ''', ' +
          'akar_masalah = ''' + Trim(cxmAkarMasalah.Text) + ''', ' +
          'ket_tambahan = ''' + Trim(cxmKetTambahan.Text) + ''', ' +
          'user_staff_qac = ''' + aplikasi.NamaUser + ''', tgljam_app_staff_qac = NOW() WHERE no_bukti = ''' + lst.Strings[i] + '''');
      end
      else begin
        if aplikasi.UserDept = 'WHL' then begin
          if zqrH.FieldByName('persentase').AsFloat <= 5 then begin
            dm.zConn.ExecuteDirect('UPDATE tbl_disposisi_head SET app_whl = 1,' +
              'app_qac = 1,' +
              'tgljam_app_qac = NOW(),' + 
              'app_mgmt = 1,' +
              'tgljam_app_mgmt = NOW(), ' + 
              'deskripsi = ''' + Trim(cxmDeskripsi.Text) + ''', ' +
              'akar_masalah = ''' + Trim(cxmAkarMasalah.Text) + ''', ' +
              'ket_tambahan = ''' + Trim(cxmKetTambahan.Text) + ''', ' +
              'user_whl = ''' + aplikasi.NamaUser + ''', tgljam_app_whl = NOW() WHERE no_bukti = ''' + lst.Strings[i] + '''');
          end
          else begin
            dm.zConn.ExecuteDirect('UPDATE tbl_disposisi_head SET app_whl = 1,' +
              'deskripsi = ''' + Trim(cxmDeskripsi.Text) + ''', ' +
              'akar_masalah = ''' + Trim(cxmAkarMasalah.Text) + ''', ' +
              'ket_tambahan = ''' + Trim(cxmKetTambahan.Text) + ''', ' +
              'user_whl = ''' + aplikasi.NamaUser + ''', tgljam_app_whl = NOW() WHERE no_bukti = ''' + lst.Strings[i] + '''');
          end;
        end
        else if aplikasi.UserDept = 'QAC' then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_disposisi_head SET app_qac = 1,' +
            'deskripsi = ''' + Trim(cxmDeskripsi.Text) + ''', ' +
            'akar_masalah = ''' + Trim(cxmAkarMasalah.Text) + ''', ' +
            'ket_tambahan = ''' + Trim(cxmKetTambahan.Text) + ''', ' +
            'user_qac = ''' + aplikasi.NamaUser + ''', tgljam_app_qac = NOW() WHERE no_bukti = ''' + lst.Strings[i] + '''');
        end
        else if aplikasi.UserDept = 'DIR' then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_disposisi_head SET app_mgmt = 1,' +
            'user_mgmt = ''' + aplikasi.NamaUser + ''', tgljam_app_mgmt = NOW() WHERE no_bukti = ''' + lst.Strings[i] + '''');
        end;
      end;
    end;

    MsgBox('Approval disposisi sudah dilakukan.');

    SendEmail(lst, Aplikasi.Jabatan, Aplikasi.UserDept);

    try
      zqrH.Close;
      zqrH.Open;
    except
    end;

  end;
  
end;

procedure TfrmApprovalDisposisi.SendEmail(lstNoDis: TStringList; Jabatan: string; Dept: string);
var
  email : TIdMessage;
  lst, lstBody: TStringList;
  bdy: TIdText;
  i, j: Integer;
  q, qd: TZQuery;
  NoSPMB, sNoDis: String;

begin

  idSMTP.AuthType := satNone;
  idSMTP.Host     := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := 'MDA@SDP.MAIL';
    email.From.Name := 'MDA';
    if mjenis = 'edit' then begin

      email.Subject := '#REVISI BERAT DISPOSISI MUAT BARANG QAC NO.#: ' + lstNoDis.CommaText;

      if aplikasi.debug then
        email.Recipients.EMailAddresses := 'yosef@sdp.mail'
      else begin
        email.Recipients.EMailAddresses := 'sunanto@sdp.mail,ferry@sdp.mail,enny@sdp.mail,natalia@sdp.mail,' +
          'erina@sdp.mail,nina@sdp.mail,yosef.servianto@sdp.mail,dwiharjo@sdp.mail,boby@sdp.mail,vivi@sdp.mail,yosef@sdp.mail';
      end;

      lstBody := TStringList.Create;
      lstBody.Add('<html>');
      lstBody.Add('<head>');
      lstBody.Add('</head>');
      lstBody.Add('<body>');

      for i := 0 to lstNoDis.Count-1 do begin
        sNoDis := lstNoDis.Strings[i];

        q := OpenRS('SELECT * FROM tbl_disposisi_head WHERE no_bukti = ''%s''',[sNoDis]);
        qd := OpenRS('SELECT * FROM tbl_disposisi_det WHERE no_bukti = ''%s''',[sNoDis]);


        lstBody.Add('<h3>#REVISI BERAT DISPOSISI MUAT BARANG QAC :</h3></br></br>');


        lstBody.Add('<pre>');
        lstBody.Add('Nomer Disposisi   : ' + sNoDis);
        while not qd.Eof do begin
          NoSPMB := NoSPMB + qd.FieldByName('no_spmb').AsString + ',';
          qd.Next;
        end;

        lstBody.Add('Nomer SPMB        : ' + NoSPMB);
        lstBody.Add('Tgl.Terbit        : ' + FormatDateTime('dd-mm-yyyy', q.FieldByName('tgl_input').AsDateTime));
        lstBody.Add('Berat Tot. SPMB   : ' + FormatFloat('#,#0.00',q.FieldByName('berat_spmb').AsFloat));
        lstBody.Add('Berat Packing     : ' + FormatFloat('#,#0.00',q.FieldByName('berat_packing').AsFloat));
        lstBody.Add('Berat Lain        : ' + FormatFloat('#,#0.00',q.FieldByName('berat_lain').AsFloat));
        lstBody.Add('------------------------------------------------------------- +');
        lstBody.Add('Berat Total       : ' + FormatFloat('#,#0.00',q.FieldByName('berat_spmb').AsFloat + q.FieldByName('berat_packing').AsFloat + q.FieldByName('berat_lain').AsFloat));
        lstBody.Add('Nomer Polisi      : ' + q.FieldByName('nopol').AsString);
        lstBody.Add('Berat Bersih Truk : ' + FormatFloat('#,#0.00', q.FieldByName('berat_bersih_truk').AsFloat));
        lstBody.Add('Berat Timbangan   : ' + FormatFloat('#,#0.00', q.FieldByName('berat_timbangan').AsFloat));
        lstBody.Add('Berat Bersih      : ' + FormatFloat('#,#0.00', q.FieldByName('berat_bersih').AsFloat));
        lstBody.Add('Selisih           : ' + FormatFloat('#,#0.00', q.FieldByName('selisih').AsFloat));
        lstBody.Add('% Perbedaan       : ' + FormatFloat('#,#0.00', q.FieldByName('persentase').AsFloat));
        lstBody.Add('Persentase awal   : ' + FormatFloat('#,#0.00', q.FieldByName('persentase_lama').AsFloat));
        lstBody.Add('Keterangan Revisi : ' + q.FieldByName('akar_masalah').AsString);
        lstBody.Add('</br>');

        q.Close;
        qd.Close;
      end;

      bdy := TIdText.Create(email.MessageParts, lstBody);
      bdy.ContentType := 'text/html';

    end else begin
      if Jabatan = 'STAFF' then
        email.Subject := 'APPROVAL DISPOSISI MUAT BARANG STAFF QAC NO.#: ' + lstNoDis.CommaText
      else
        email.Subject := 'APPROVAL DISPOSISI MUAT BARANG DEPT. ' + Dept + ' NO.#: ' + lstNoDis.CommaText;

      if aplikasi.debug then
        email.Recipients.EMailAddresses := 'yosef@sdp.mail,dwi@sdp.mail'
      else begin
        email.Recipients.EMailAddresses := 'sunanto@sdp.mail,ferry@sdp.mail,enny@sdp.mail,natalia@sdp.mail,' +
          'erina@sdp.mail,nina@sdp.mail,yosef.servianto@sdp.mail,dwiharjo@sdp.mail,boby@sdp.mail,vivi@sdp.mail,yosef@sdp.mail';


      end;

      lstBody := TStringList.Create;
      lstBody.Add('<html>');
      lstBody.Add('<head>');
      lstBody.Add('</head>');
      lstBody.Add('<body>');

      for i := 0 to lstNoDis.Count-1 do begin
        sNoDis := lstNoDis.Strings[i];

        q := OpenRS('SELECT * FROM tbl_disposisi_head WHERE no_bukti = ''%s''',[sNoDis]);
        qd := OpenRS('SELECT * FROM tbl_disposisi_det WHERE no_bukti = ''%s''',[sNoDis]);

        if Jabatan = 'STAFF' then
          lstBody.Add('<h3>APPROVAL DISPOSISI MUAT BARANG STAFF QAC :</h3></br></br>')
        else
          lstBody.Add('<h3>APPROVAL DISPOSISI MUAT BARANG DEPT ' + Dept + ' :</h3></br></br>');

        lstBody.Add('<pre>');
        lstBody.Add('Nomer Disposisi   : ' + sNoDis);
        while not qd.Eof do begin
          NoSPMB := NoSPMB + qd.FieldByName('no_spmb').AsString + ',';
          qd.Next;
        end;

        lstBody.Add('Nomer SPMB        : ' + NoSPMB);
        lstBody.Add('Tgl.Terbit        : ' + FormatDateTime('dd-mm-yyyy', q.FieldByName('tgl_input').AsDateTime));
        lstBody.Add('Berat Tot. SPMB   : ' + FormatFloat('#,#0.00',q.FieldByName('berat_spmb').AsFloat));
        lstBody.Add('Berat Packing     : ' + FormatFloat('#,#0.00',q.FieldByName('berat_packing').AsFloat));
        lstBody.Add('Berat Lain        : ' + FormatFloat('#,#0.00',q.FieldByName('berat_lain').AsFloat));
        lstBody.Add('------------------------------------------------------------- +');
        lstBody.Add('Berat Total       : ' + FormatFloat('#,#0.00',q.FieldByName('berat_spmb').AsFloat + q.FieldByName('berat_packing').AsFloat + q.FieldByName('berat_lain').AsFloat));
        lstBody.Add('Nomer Polisi      : ' + q.FieldByName('nopol').AsString);
        lstBody.Add('Berat Bersih Truk : ' + FormatFloat('#,#0.00', q.FieldByName('berat_bersih_truk').AsFloat));
        lstBody.Add('Berat Timbangan   : ' + FormatFloat('#,#0.00', q.FieldByName('berat_timbangan').AsFloat));
        lstBody.Add('Berat Bersih      : ' + FormatFloat('#,#0.00', q.FieldByName('berat_bersih').AsFloat));
        lstBody.Add('Selisih           : ' + FormatFloat('#,#0.00', q.FieldByName('selisih').AsFloat));
        lstBody.Add('% Perbedaan       : ' + FormatFloat('#,#0.00', q.FieldByName('persentase').AsFloat));
        lstBody.Add('</br>');

        q.Close;
        qd.Close;
      end;

      bdy := TIdText.Create(email.MessageParts, lstBody);
      bdy.ContentType := 'text/html';

    end;

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

procedure TfrmApprovalDisposisi.cxTblHEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
var
  q: TZQuery;
begin
  inherited;
  if AItem.Index = 0 then begin
    // cek apakah disposisi sudah di approval oleh WHL dan QAC
    {
    q := OpenRS('SELECT app_qac, app_whl FROM tbl_disposisi_head WHERE no_bukti = ''%s''',[zqrH.FieldByName('no_bukti').AsString]);
    if (q.FieldByName('app_whl').AsInteger = 0) or (q.FieldByName('app_qac').AsInteger = 0) then begin
      MsgBox('Approval departemen QAC atau WHL belum dilakukan');
      AItem.EditValue := 'F';
    end;
    q.Close;
    }
  end;
end;

procedure TfrmApprovalDisposisi.cxTblDFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  zqrDetSPMB.Close;
  zqrDetSPMB.ParamByName('no_spmb').AsString := zqrD.FieldByName('no_spmb').AsString;
  zqrDetSPMB.Open;
end;

procedure TfrmApprovalDisposisi.Button1Click(Sender: TObject);
begin
  inherited;
  try
    zqrH.Close;
    zqrH.Open;
  except
  end;
end;

procedure TfrmApprovalDisposisi.btnUpdatePersenClick(Sender: TObject);
var
  q: TZQuery;
  lst : TStringList;
begin
  inherited;
  lst := TStringList.Create();
  mjenis := 'edit';
  q := OpenRS('SELECT * FROM tbl_disposisi_head WHERE no_bukti = ''%s''',[zqrH.FieldByName('no_bukti').AsString]);
  if (aplikasi.Jabatan = 'STAFF') and (aplikasi.UserDept = 'QAC') then begin
    //if cxsPersentase.Value < 5 then begin
      q.Edit;
      q.FieldByName('persentase_lama').AsFloat := q.FieldByName('persentase').AsFloat;
      q.FieldByName('persentase').AsFloat := cxsPersentase.Value;
      q.Post;
      zqrH.Close;
      zqrH.Open;
    //end
    //else begin
    //  MsgBox('Pengeditan tidak dapat dilakukan.');
    //end;

  end
  else if (aplikasi.Jabatan = 'MANAGER') and (aplikasi.UserDept = 'QAC') then begin
    q.Edit;
    q.FieldByName('persentase_lama').AsFloat := q.FieldByName('persentase').AsFloat;
    q.FieldByName('persentase').AsFloat := cxsPersentase.Value;
    q.Post;
    zqrH.Close;
    zqrH.Open;
  end
  else begin
    MsgBox('Pengeditan tidak dapat dilakukan.');
    Abort;
  end;
  lst.Add(zqrH.FieldByName('no_bukti').AsString);
  SendEmail(lst, Aplikasi.Jabatan, Aplikasi.UserDept);
  q.Close;

  try
    zqrH.Close;
    zqrH.Open;
  except
  end;
end;

end.
procedure TfrmApprovalDisposisi.pnlTengahClick(Sender: TObject);
begin
  inherited;

end;


