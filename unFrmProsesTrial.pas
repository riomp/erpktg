unit unFrmProsesTrial;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxDropDownEdit, cxCalendar,
  cxSpinEdit, cxMemo, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxTextEdit, DB, ZAbstractRODataset, ZDataset,
  cxCheckBox, IdSMTP, IdMessage, IdText, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdAttachmentFile, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  ComCtrls, ImgList;

type
  TfrmProsesTrial = class(TfrmTplTrans)
    ScrollBox1: TScrollBox;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxtDibuatOleh: TcxTextEdit;
    cxmKetTrial: TcxMemo;
    cxLabel8: TcxLabel;
    cxtStatus: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel3: TcxLabel;
    cxtNoTrial: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxdTglPmohonan: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxmHasilTrial: TcxMemo;
    cxLabel24: TcxLabel;
    cxLabel26: TcxLabel;
    btnSimpanTrial: TButton;
    btnKeluarTrial: TButton;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxChkAppTrial: TcxCheckBox;
    idSMTP: TIdSMTP;
    GroupBox1: TGroupBox;
    btnTmbhImage: TButton;
    cxLabel25: TcxLabel;
    cxlukuran: TcxLabel;
    cxlMesin: TcxLookupComboBox;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    GroupBox2: TGroupBox;
    cxLabel1: TcxLabel;
    pgBom: TPageControl;
    tbA: TTabSheet;
    tbB: TTabSheet;
    tbC: TTabSheet;
    nxGrd1: TNextGrid;
    nxColNo1: TNxIncrementColumn;
    nxColDesk1: TNxTextColumn;
    nxColQty1: TNxNumberColumn;
    nxColSat1: TNxTextColumn;
    cxtDesk: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxCmbSatuan: TcxComboBox;
    cxsQtyBom: TcxSpinEdit;
    btnTambahBom: TButton;
    NxGraphicColumn1: TNxImageColumn;
    ImageList1: TImageList;
    nxGrd2: TNextGrid;
    NxImageColumn1: TNxImageColumn;
    NxIncrementColumn2: TNxIncrementColumn;
    nxColDesk2: TNxTextColumn;
    nxColQty2: TNxNumberColumn;
    nxColSat2: TNxTextColumn;
    nxGrd3: TNextGrid;
    NxImageColumn2: TNxImageColumn;
    NxIncrementColumn3: TNxIncrementColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn6: TNxTextColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKeluarTrialClick(Sender: TObject);
    procedure btnTmbhImageClick(Sender: TObject);
    procedure btnSimpanTrialClick(Sender: TObject);
    procedure btnTambahBomClick(Sender: TObject);

  private
    mJenisLKM: string;
    mNoLKM: string;
    mLstKomponen, lstImage: TStringList;
    mApproval: string;
    procedure SendEmail;
  public
    property JenisLKM: string read mJenisLKM write mJenisLKM;
    property NoLKM: string read mNoLKM write mNoLKM;
    property Approval: string read mApproval write mApproval;
  end;

var
  frmProsesTrial: TfrmProsesTrial;

implementation

uses unAplikasi, unDm, unTools, unFrmCari, unFrmTrial, unFrmUploadImageRK,
  unFrmImageViewerRK;

{$R *.dfm}

procedure TfrmProsesTrial.FormShow(Sender: TObject);
begin
  //inherited;
end;

procedure TfrmProsesTrial.FormCreate(Sender: TObject);
var
  lst: TList;
  q: TZQuery;
begin
  inherited;

  cxtNoTrial.Text := GetLastFak('trial');
  cxdTglPmohonan.Date := aplikasi.TanggalServer;
  cxtStatus.Text := 'OPEN';
  cxtDibuatOleh.Text := aplikasi.NamaUser;

  q := OpenRS('SELECT satuan FROM tbl_satuan ORDER BY satuan');
  while not q.Eof do begin
    cxCmbSatuan.Properties.Items.Add(q.FieldByName('satuan').AsString);
    q.Next;
  end;
  cxCmbSatuan.ItemIndex := 0;
  q.Close;

  {
  if (aplikasi.NamaUser <> 'BOBY') or (aplikasi.NamaUser <> 'VIVI') then begin
    cxChkAppTrial.Enabled := False;
  end;
  }

  lst := TList.Create;
  lst.Add(zqrCust);
  lst.Add(zqrMesin);
  OpenSQL(lst);


  lstImage := TStringList.Create;

end;

procedure TfrmProsesTrial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Release;
end;

procedure TfrmProsesTrial.btnKeluarTrialClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmProsesTrial.SendEmail;
var
  email : TIdMessage;
  lst, lstBody: TStringList;
  bdy: TIdText;
  i: Integer;
  q: TZQuery;

begin
 {
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
    //MsgBox(zqrBagian.FieldByName('email').AsString);

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else begin
      if (mJenisLKM = 'lkm-baru') or (Jenis = 'lkm-edit') then begin
          email.Recipients.EMailAddresses :=
          cxtemail.Text + ',boby@sdp.mail,vivi@sdp.mail,ferry@sdp.mail,eva@sdp.mail'
      end

      else if mJenisLKM = 'tindak-lanjut' then begin
           q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
                [mNoLKM]);

           if q.FieldByName('dept_terkait').AsString = aplikasi.UserDept then begin
              email.Recipients.EMailAddresses :=
              'ferry@sdp.mail';
              q.Close;
           end
           else if aplikasi.UserDept = 'DIR' then begin
              email.Recipients.EMailAddresses :=
              cxtemail.Text + ',boby@sdp.mail,vivi@sdp.mail,ferry@sdp.mail';
           end
           else begin

           end;
      end
      else begin

      end;
    end;

    if lstImage.Count > 0 then begin
      for i := 0 to lstImage.Count - 1 do begin
        TIdAttachmentFile.Create(email.MessageParts, lstImage.Strings[i]);
      end;
    end;

    if (mJenisLKM = 'lkm-baru') or (Jenis = 'lkm-edit') then begin
        email.Subject := 'LKM Baru NO#: ' + cxtNoTrial.Text;
    end
    else if mJenisLKM = 'tindak-lanjut' then begin
        email.Subject := 'Tindak lanjut LKM NO#: ' + cxtNoTrial.Text;
    end
    else begin

    end;

    if (mJenisLKM = 'lkm-baru') or (Jenis = 'lkm-edit') then begin
        lstBody := TStringList.Create;
        lstBody.Add('<html>');
        lstBody.Add('<head>');
        lstBody.Add('</head>');
        lstBody.Add('<body>');
        lstBody.Add('<h3>LAPORAN KETIDAKSESUAIAN MUTU</h3></br></br>');
        lstBody.Add('<pre>');
        lstBody.Add('Nomer LKM    : ' + cxtNoTrial.Text);
        lstBody.Add('Tgl.Terbit   : ' + cxdTglLKM.Text);
        lstBody.Add('Kode Brg.    : ' + cxtKodeBrg.Text);
        lstBody.Add('Deskripsi    : ' + cxtDeskripsi.Text);
        lstBody.Add('Qty          : ' + cxsQty.Text);
        lstBody.Add('Satuan       : ' + cxtSatuan.Text);
        lstBody.Add('Dept.Tujuan  : ' + cxlTujuanDept.Text);
        lstBody.Add('Jenis LKM    : ' + cxCmbJenis.Text);
        lstBody.Add('Deskripsi Ketidaksesuaian : ');
        lstBody.Add(cxmDeskKS.Text);
    end
    else if mJenisLKM = 'tindak-lanjut' then begin
           q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
                [mNoLKM]);
           if q.FieldByName('dept_terkait').AsString = aplikasi.UserDept then begin
              lstBody := TStringList.Create;
              lstBody.Add('<html>');
              lstBody.Add('<head>');
              lstBody.Add('</head>');
              lstBody.Add('<body>');
              lstBody.Add('<h3>TINDAK LANJUT LAPORAN KETIDAKSESUAIAN MUTU</h3></br></br>');
              lstBody.Add('<pre>');
              lstBody.Add('Nomer LKM    : ' + cxtNoTrial.Text);
              lstBody.Add('Tgl.Terbit   : ' + cxdTglLKM.Text);
              lstBody.Add('Kode Brg.    : ' + cxtKodeBrg.Text);
              lstBody.Add('Deskripsi    : ' + cxtDeskripsi.Text);
              lstBody.Add('Qty          : ' + cxsQty.Text);
              lstBody.Add('Satuan       : ' + cxtSatuan.Text);
              lstBody.Add('Dept.Tujuan  : ' + cxlTujuanDept.Text);
              lstBody.Add('Jenis LKM    : ' + cxCmbJenis.Text);
              lstBody.Add('Deskripsi Ketidaksesuaian : ');
              lstBody.Add(cxmDeskKS.Text);
              lstBody.Add('Akar Masalah : ');
              lstBody.Add(cxmAkarMasalah.Text);
              q.Close
           end
           else if aplikasi.UserDept = 'DIR' then begin
              lstBody := TStringList.Create;
              lstBody.Add('<html>');
              lstBody.Add('<head>');
              lstBody.Add('</head>');
              lstBody.Add('<body>');
              lstBody.Add('<h3>TINDAK LANJUT LAPORAN KETIDAKSESUAIAN MUTU</h3></br></br>');
              lstBody.Add('<pre>');
              lstBody.Add('Nomer LKM    : ' + cxtNoTrial.Text);
              lstBody.Add('Tgl.Terbit   : ' + cxdTglLKM.Text);
              lstBody.Add('Kode Brg.    : ' + cxtKodeBrg.Text);
              lstBody.Add('Deskripsi    : ' + cxtDeskripsi.Text);
              lstBody.Add('Qty          : ' + cxsQty.Text);
              lstBody.Add('Satuan       : ' + cxtSatuan.Text);
              lstBody.Add('Dept.Tujuan  : ' + cxlTujuanDept.Text);
              lstBody.Add('Jenis LKM    : ' + cxCmbJenis.Text);
              lstBody.Add('Deskripsi Ketidaksesuaian : ');
              lstBody.Add(cxmDeskKS.Text);
              lstBody.Add('Akar Masalah : ');
              lstBody.Add(cxmAkarMasalah.Text);
              lstBody.Add('Ket Tambahan : ');
              lstBody.Add(cxCmbKetTambahan.Text);
              lstBody.Add(cxmKetTambahan.Text);
              end
           else begin

           end;

    end
    else begin

    end;

    bdy := TIdText.Create(email.MessageParts, lstBody);
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
    }
end;

procedure TfrmProsesTrial.btnTmbhImageClick(Sender: TObject);
var
  f: TfrmUploadImageRK;
  fv: TfrmImageViewerRK;
begin
  {
  if btnTmbhImage.Caption = 'Tambah Image' then begin

    f := TfrmUploadImageRK.Create(Self);

    if lstImage.Count > 0 then
      f.ListImage := lstImage;

    f.ShowModal;
    cxLabel25.Caption := 'Jumlah Image : ' + IntToStr(f.ListImage.Count);
    lstImage := f.ListImage;
  end
  else begin
    fv := TfrmImageViewerRK.Create(Self);
    fv.Jenis := 'lkm';
    fv.NoLKM := cxtNoTrial.Text;
    fv.ShowModal;
  end;
  }
end;
procedure TfrmProsesTrial.btnSimpanTrialClick(Sender: TObject);
var
  q: TZQuery;
  sNoTrans: string;
  f: TfrmTrial;
begin

  {
  if cxlCust.Text = '' then begin
    MsgBox('Customer harus di isi.');
    Abort;
  end else if  cxtFContoh.Text = '' then begin
    MsgBox('F. Contoh harus di isi.');
    Abort;
  end else if  cxtFContoh.Text = '' then begin
    MsgBox('F. Contoh harus di isi.');
    Abort;
  end else if  cxtWarna.Text = '' then begin
    MsgBox('Warna harus di isi.');
    Abort;
  end else if  cxtPanjang.Text = '' then begin
    MsgBox('Panjang harus di isi.');
    Abort;
  end else if  cxtLebar.Text = '' then begin
    MsgBox('Lebar harus di isi.');
    Abort;
  end else if  cxtKekerasan.Text = '' then begin
    MsgBox('Kekerasan harus di isi.');
    Abort;
  end else if  cxtKekenyalan.Text = '' then begin
    MsgBox('Kekenyalan harus di isi.');
    Abort;
  end;

  try

   dm.zConn.StartTransaction;

   sNoTrans := GetLastFak('trial');
   UpdateFaktur(Copy(sNoTrans,1,8));

   q := OpenRS('SELECT * FROM tbl_trial WHERE no_bukti = ''%s''',
        [cxtNoTrial.Text]);
   with q do begin
    Insert;
      FieldByName('no_bukti').AsString := cxtNoTrial.Text;
      FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
      FieldByName('customer').AsString := cxlCust.Text;
      FieldByName('f_contoh').AsInteger := cxtFContoh.EditValue;
      FieldByName('warna').AsString := cxtWarna.Text;
      FieldByName('panjang').AsString := cxtPanjang.Text;
      FieldByName('lebar').AsString := cxtLebar.Text;
      FieldByName('kekerasan').AsString := cxtKekerasan.Text;
      FieldByName('kekenyalan').AsString := cxtKekenyalan.Text;
      FieldByName('f_status').AsInteger := 0;
      FieldByName('keterangan').AsString := cxmKetTrial.Text;
      FieldByName('hasil_trial').AsString := cxmHasilTrial.Text;
      FieldByName('f_app').AsInteger := 0;
      FieldByName('user').AsString := cxtDibuatOleh.Text;
    Post;
   end;

   dm.zConn.Commit;

      q.Close;
      f.zqrTrial.Refresh;
      MsgBox('Proses TRIAL sudah disimpan dengan nomor : ' + sNoTrans);
      Close;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
   }
end;

procedure TfrmProsesTrial.btnTambahBomClick(Sender: TObject);
var
  grd: TNextGrid;
  i: Integer;
begin
  if Trim(cxtDesk.Text) = '' then begin
    MsgBox('Deskripsi BOM harus diisi.');
    cxtDesk.SetFocus;
  end
  else if cxsQtyBom.Value = 0 then begin
    MsgBox('Qty. BOM harus diisi.');
    cxsQtyBom.SetFocus;
  end
  else if cxCmbSatuan.Text = '' then begin
    MsgBox('Satuan harus diisi.');
    cxCmbSatuan.SetFocus;
  end
  else begin
    if pgBom.ActivePageIndex = 0 then
      grd := nxGrd1
    else if pgBom.ActivePageIndex = 1 then
      grd := nxGrd2
    else
      grd := nxGrd3;

    i := grd.AddRow();
    grd.Cell[nxColDesk1.Index, i].AsString := cxtDesk.Text;
    grd.Cell[nxColQty1.Index, i].AsFloat := cxsQtyBom.Value;
      
  end;







end;

end.
