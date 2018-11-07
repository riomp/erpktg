unit unFrmLKM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxSpinEdit, cxCheckComboBox,
  cxCheckBox, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  cxGridExportLink, ShellAPI, IdMessage, IdText;

type
  TfrmLKM = class(TfrmTplMaster)
    zqrLKM: TZQuery;
    dsLKM: TDataSource;
    btnKeluar2: TButton;
    zqrDept: TZQuery;
    dsDept: TDataSource;
    cxGrdLkm: TcxGrid;
    cxTblViewLKM: TcxGridDBTableView;
    cxGrdLkmLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel1: TPanel;
    btnLKMBaru: TButton;
    cxTblViewLKMno_bukti: TcxGridDBColumn;
    cxTblViewLKMketerangan: TcxGridDBColumn;
    cxColStatus: TcxGridDBColumn;
    cxTblViewLKMapp1: TcxGridDBColumn;
    cxTblViewLKMapp2: TcxGridDBColumn;
    cxTblViewLKMdeskripsi: TcxGridDBColumn;
    cxTblViewLKMno_spk: TcxGridDBColumn;
    cxTblViewLKMkode_supp: TcxGridDBColumn;
    cxTblViewLKMkode_cust: TcxGridDBColumn;
    cxTblViewLKMkode_brg: TcxGridDBColumn;
    cxTblViewLKMnama: TcxGridDBColumn;
    cxTblViewLKMtanggal: TcxGridDBColumn;
    cxTblViewLKMshift: TcxGridDBColumn;
    cxTblViewLKMno_mesin: TcxGridDBColumn;
    cxTblViewLKMkode_produksi: TcxGridDBColumn;
    cxTblViewLKMno_tag_produksi: TcxGridDBColumn;
    cxTblViewLKMalokasi_barang: TcxGridDBColumn;
    cxTblViewLKMdeskripsi_ks: TcxGridDBColumn;
    cxTblViewLKMjenis_ks: TcxGridDBColumn;
    cxTblViewLKMakar_masalah: TcxGridDBColumn;
    cxTblViewLKMjenis_tp: TcxGridDBColumn;
    cxTblViewLKMdeskripsi_tp: TcxGridDBColumn;
    cxTblViewLKMjenis_ket: TcxGridDBColumn;
    cxTblViewLKMket_tambahan: TcxGridDBColumn;
    cxTblViewLKMtujuan_dept: TcxGridDBColumn;
    cxTblViewLKMjam: TcxGridDBColumn;
    cxTblViewLKMtanggal_selesai: TcxGridDBColumn;
    cxTblViewLKMuser: TcxGridDBColumn;
    cxTblViewLKMuser_dept: TcxGridDBColumn;
    cxTblViewLKMqty: TcxGridDBColumn;
    cxTblViewLKMhost: TcxGridDBColumn;
    cxTblViewLKMsatuan: TcxGridDBColumn;
    cxTblViewLKMjenis_input: TcxGridDBColumn;
    idSMTP: TIdSMTP;
    btnLihat: TButton;
    Panel2: TPanel;
    Button3: TButton;
    Panel3: TPanel;
    Button1: TButton;
    btnCetakLKM: TButton;
    btnEditLKM: TButton;
    cxTblViewLKMapp3: TcxGridDBColumn;
    btnAppManagerQAC: TButton;
    Button2: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    pnlSPK: TPanel;
    btnCloseDetSPK: TButton;
    cxLabel28: TcxLabel;
    btnSimpanDet: TButton;
    btnBatalDet: TButton;
    cxtNoMutasi: TcxTextEdit;
    cxTblViewNoRef: TcxGridDBColumn;
    btnTindakLanjutLKM: TButton;
    cxTblViewLKMColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnEditLKMClick(Sender: TObject);
    procedure btnLKMBaruClick(Sender: TObject);
    procedure btnTindakLanjutLKMClick(Sender: TObject);
    procedure btnCetakLKMClick(Sender: TObject);
    procedure btnLihatClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnAppManagerQACClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cxTblViewLKMStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnBatalDetClick(Sender: TObject);
    procedure btnCloseDetSPKClick(Sender: TObject);
    procedure btnSimpanDetClick(Sender: TObject);


  private
    mJenis: string;
    mApproval: string;
    mApproval1: Boolean;
    procedure ClearAll;
    procedure SendEmailLKMClose(sNoLKM: string);
  public
    property Jenis: string read mJenis write mJenis;
    property Approval: string read mApproval write mApproval;
  end;

var
  frmLKM: TfrmLKM;

implementation

uses unAplikasi, unDm, unTools, unFrmProsesLKM, unFrmTindakLanjutLKM,
  unFrmLapUmum;

{$R *.dfm}

procedure TfrmLKM.FormCreate(Sender: TObject);
var
  q, qw: TZQuery;
  wwnLihat: Boolean;
begin
  inherited;

  wwnLihat := false;
  qw := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' AND nm_comp = ''LIHAT-LKM''',
    [aplikasi.NamaUser]);
  if not qw.IsEmpty then begin
    if qw.FieldByName('wwn').AsString = '1' then wwnLihat := true;
  end;
  qw.Close;


  pnlTengah.Enabled := True;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  if (aplikasi.UserDept = 'QAC') or (aplikasi.UserDept = 'DIR') or
    (aplikasi.NamaUser = 'ADMIN')then begin
     zqrLKM.SQL.Text := 'SELECT * FROM v_lkm order by tanggal desc';
  end
  else if aplikasi.UserDept <> 'QAC' then begin
    if wwnLihat then
      zqrLKM.SQL.Text := 'SELECT * FROM v_lkm order by tanggal desc'
    else
      zqrLKM.SQL.Text := Format('SELECT * FROM v_lkm WHERE dept_terkait = ''%s'' order by tanggal desc',
        [Aplikasi.UserDept]);
  end;
  //zqrLKM.Open;

  q := OpenRS('SELECT * FROM tbl_wewenang WHERE ' +
    'nama = ''%s'' AND nm_comp = ''InputLKM''',
    [aplikasi.NamaUser]);
  if q.FieldByName('wwn').AsString = '0' then begin
    btnLKMBaru.Visible := False;
    btnEditLKM.Left := btnLKMBaru.Left;
  end;
  q.Close;

  Panel2.Top := Panel1.Top;
  Panel2.Left := Panel1.Left;
  Panel2.Visible := True;
  Panel1.Visible := False;
  Panel3.Top := Panel2.Top;
  Panel3.Left := Panel2.Left + Panel2.Width;

  if (aplikasi.UserDept = 'QAC') and (aplikasi.Jabatan = 'MANAGER') then
    btnAppManagerQAC.Visible := True
  else
    btnAppManagerQAC.Visible := False;

  if aplikasi.UserDept = 'QAC' then
    Panel3.Visible := True
  else
    Panel3.Visible := False;
end;

procedure TfrmLKM.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  wwnLihat: boolean;
begin
  Screen.Cursor := crSQLWait;

  wwnLihat := false;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' AND nm_comp = ''LIHAT-LKM''',
    [APlikasi.NamaUser]);
  if not q.IsEmpty then begin
    if q.FieldByName('wwn').AsString = '1' then wwnLihat := true;
  end;
  q.Close;

  zqrLKM.Close;
  if (Aplikasi.UserDept = 'DIR') then
    zqrLKM.SQL.Text := 'SELECT *,ifnull(nama_customer,nama_supplier) as nama FROM v_lkm WHERE tanggal BETWEEN :tgl1 AND :tgl2'
    {zqrLKM.SQL.Text := Format('SELECT *,ifnull(nama_customer,nama_supplier) as nama FROM v_lkm WHERE tanggal BETWEEN :tgl1 AND :tgl2 ' +
      'AND dept_terkait = ''%s'' order by no_bukti desc',[aplikasi.UserDept]) }
  else begin
    if wwnLihat then
      zqrLKM.SQL.Text := 'SELECT *,ifnull(nama_customer,nama_supplier) as nama FROM v_lkm WHERE tanggal BETWEEN :tgl1 AND :tgl2 ' +
        ' order by no_bukti desc'
    else
      zqrLKM.SQL.Text := Format('SELECT *,ifnull(nama_customer,nama_supplier) as nama FROM v_lkm WHERE tanggal BETWEEN :tgl1 AND :tgl2 ' +
        ' order by no_bukti desc',[aplikasi.UserDept]);
  end;

  zqrLKM.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrLKM.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrLKM.Open;
  
  Screen.Cursor := crDefault;
end;

procedure TfrmLKM.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLKM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Release;
end;

procedure TfrmLKM.ClearAll;
begin
  //
end;

procedure TfrmLKM.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
  q: TZQuery;
begin
  if aplikasi.UserDept = 'QAC' then begin

  end
  else begin
    Panel2.Visible := True;
    q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' AND nm_comp = ''LIHAT-LKM''',
      [Aplikasi.NamaUser]);
    if not q.IsEmpty then begin
      if q.FieldByName('wwn').AsString = '1' then begin
        btnTindakLanjutLKM.Visible := False;
        Button3.Left := btnTindakLanjutLKM.Left;
        Button2.Left := Button3.Left + Button3.Width + 3;
      end;
    end;
    q.Close;
  end;

  if Jenis = 'tindak-lanjut' then begin
    Panel1.Visible := False;
    Panel2.Visible := True;
    Panel2.BringToFront;
  end;

   { aCol := cxTblViewLKM.CreateColumn;
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
    }
end;

procedure TfrmLKM.btnEditLKMClick(Sender: TObject);
var
  f: TfrmProsesLKM;
  qc: TZQuery;
  q: TZQuery;
begin
  inherited;
  try
  qc := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',
    [zqrLKM.FieldByName('no_bukti').AsString]);
  if (qc.FieldByName('app2').AsInteger = 1) and (aplikasi.NamaUser <> 'FERRY') then begin
    MsgBox('LKM ini tidak bisa diupdate karena sudah di Approval departemen terkait.');
  end
  else begin
    f := TfrmProsesLKM.Create(Self);
    f.NoLKM := zqrLKM.FieldByName('no_bukti').AsString;
    //f.Approval := mApproval;
    f.Jenis := 'lkm-edit';
    f.JenisLKM := 'lkm-edit';
    //f.Show;

    if zqrLKM.FieldByName('no_bukti').AsString = '' then begin
      f.Close;
      Abort;
    end
    else begin
        f.Show;
    end;

    f.cxtNoLKM.Text := qc.FieldByName('no_bukti').AsString;
    f.cxtNoSO.Text  := qc.FieldByName('no_so').AsString;
    f.cxtNoSPK.Text  := qc.FieldByName('no_spk').AsString;
    f.cxdTglLKM.Text   := qc.FieldByName('tanggal').AsString;
    f.cxtKodeBrg.Text   := qc.FieldByName('kode_brg').AsString;
    f.cxtDeskripsi.Text   := qc.FieldByName('deskripsi').AsString;
    f.cxsQty.Text   := qc.FieldByName('qty').AsString;
    f.cxtSatuan.Text   := qc.FieldByName('satuan').AsString;
    f.cxtNoRetur.Text   := qc.FieldByName('no_retur').AsString;

    if not qc.FieldByName('kode_supp').IsNull then begin
      f.cxChkSupp.Checked := True;
      f.cxlSupp.EditValue := qc.FieldByName('kode_supp').AsString;
    end;

    if not qc.FieldByName('kode_cust').IsNull then begin
      f.cxChkCust.Checked := True;
      f.cxlCust.EditValue := qc.FieldByName('kode_cust').AsString;
    end;

    f.cxtShift.Text   := qc.FieldByName('shift').AsString;
    f.cxtNoMesin.Text   := qc.FieldByName('no_mesin').AsString;
    f.cxtKodeProduksi.Text   := qc.FieldByName('kode_produksi').AsString;
    f.cxCmbJenis.Text   := qc.FieldByName('jenis_ks').AsString;
    f.cxtAlokasiBarang.Text   := qc.FieldByName('alokasi_barang').AsString;
    f.cxtJenisLainnya.Text   := qc.FieldByName('deskripsi_tp').AsString;
    f.cxmDeskKS.Text   := qc.FieldByName('deskripsi_ks').AsString;
    f.cxmAkarMasalah.text   := qc.FieldByName('akar_masalah').AsString;
    f.cxtStatus.Text   := qc.FieldByName('status').AsString;
    f.cxtDibuatOleh.Text   := qc.FieldByName('user').AsString;
    f.cxtTglInput.Text   := qc.FieldByName('tanggal').AsString;
    f.cxtUserInput.Text   := qc.FieldByName('user').AsString;
    f.cxlTujuanDept.Text  := qc.FieldByName('dept_terkait').AsString;
//    f.cxtnamamanager.Text := qc.FieldByName('manager_dept').AsString;
//    f.cxtemail.Text := qc.FieldByName('manager_email').AsString;
//    f.cxlTujuanDept.Text := qc.FieldByName('dept_terkait').AsString;
//    f.cxtnamamanager.Text := qc.FieldByName('manager_dept').AsString;
//    f.cxtemail.Text := qc.FieldByName('manager_email').AsString;

    f.btnCariNoSPK_Retur.Enabled := False;
    f.btnCariKodeBrg.Enabled := False;
    f.btnCariNoRetur.Enabled := False;

    f.cxtNoLKM.Properties.ReadOnly := True;
    f.cxdTglLKM.Properties.ReadOnly := True;
    f.cxtNoSPK.Properties.ReadOnly := True;
    f.cxtNoSO.Properties.ReadOnly := True;
    f.cxtKodeBrg.Properties.ReadOnly := True;
    f.cxtDeskripsi.Properties.ReadOnly := True;
    f.cxsQty.Properties.ReadOnly := True;
    f.cxtSatuan.Properties.ReadOnly := True;
    //f.cxChkSupp.Properties.ReadOnly := True;
    //f.cxChkCust.Properties.ReadOnly := True;
    //f.cxlSupp.Properties.ReadOnly := True;
    //f.cxlCust.Properties.ReadOnly := True;
    //f.cxtShift.Properties.ReadOnly := True;
    //f.cxtNoMesin.Properties.ReadOnly := True;
    //f.cxtKodeProduksi.Properties.ReadOnly := True;
    //f.cxtTagProduksi.Properties.ReadOnly := True;
    //f.cxtAlokasiBarang.Properties.ReadOnly := True;
    //f.cxCmbJenis.Properties.ReadOnly := True;
    //f.cxlUser.Properties.ReadOnly := True;
    //f.cxtDept.Properties.ReadOnly := True;
    //f.cxmDeskKS.Properties.ReadOnly := True;
    f.cxCmbKetTambahan.Properties.ReadOnly := True;
    f.cxmKetTambahan.Properties.ReadOnly := True;
    f.cxtStatus.Properties.ReadOnly := True;
    f.cxtDibuatOleh.Properties.ReadOnly := True;
    f.cxtTglInput.Properties.ReadOnly := True;
    f.cxtJamInput.Properties.ReadOnly := True;
    f.cxtUserInput.Properties.ReadOnly := True;

    if aplikasi.NamaUser = 'FERRY' then begin
      f.cxmAkarMasalah.Properties.ReadOnly := False;
      f.cxmAkarMasalah.Style.Color := clWhite;
    end
    else begin
      f.cxmAkarMasalah.Properties.ReadOnly := True;
      f.cxmAkarMasalah.Style.Color := clMoneyGreen;
    end;


    //f.cxtJenisLainnya.Properties.ReadOnly := True;



    f.cxtNoLKM.Style.Color := clMoneyGreen;
    f.cxtNoSO.Style.Color := clMoneyGreen;
    f.cxdTglLKM.Style.Color := clMoneyGreen;
    f.cxtNoSPK.Style.Color := clMoneyGreen;
    f.cxtKodeBrg.Style.Color := clMoneyGreen;
    f.cxtDeskripsi.Style.Color := clMoneyGreen;
    f.cxsQty.Style.Color := clMoneyGreen;
    f.cxtSatuan.Style.Color := clMoneyGreen;
    f.cxCmbKetTambahan.Style.Color := clMoneyGreen;
    f.cxmKetTambahan.Style.Color := clMoneyGreen;
    f.cxtStatus.Style.Color := clMoneyGreen;
    f.cxtDibuatOleh.Style.Color := clMoneyGreen;
    f.cxtTglInput.Style.Color := clMoneyGreen;
    f.cxtJamInput.Style.Color := clMoneyGreen;
    f.cxtUserInput.Style.Color := clMoneyGreen;
    //f.cxmAkarMasalah.Style.Color := clMoneyGreen;
    //f.cxtJenisLainnya.Style.Color := clMoneyGreen;
    f.cxmDeskKS.SetFocus;
    end;
  qc.Close;
  qc.Free;
    except
  end;
end;

procedure TfrmLKM.btnLKMBaruClick(Sender: TObject);
var
  f: TfrmProsesLKM;
begin
  inherited;
  f := TfrmProsesLKM.Create(Self);
  f.Jenis := 'lkm-baru';
  f.Show;
end;

procedure TfrmLKM.btnTindakLanjutLKMClick(Sender: TObject);
var
  f: TfrmProsesLKM;
  q: TZQuery;
begin
  inherited;
  try
  f := TfrmProsesLKM.Create(Self);
  f.NoLKM := zqrLKM.FieldByName('no_bukti').AsString;
  f.JenisLKm := 'tindak-lanjut';

  q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
      [zqrLKM.FieldByName('no_bukti').AsString]);
         
  if (aplikasi.UserDept = 'QAC') and (aplikasi.Jabatan = 'MANAGER') then begin

  end
  else if (aplikasi.UserDept = 'DIR') and (aplikasi.Jabatan = 'DIREKTUR') then begin

  end
  else begin
    if aplikasi.UserDept <> zqrLKM.FieldByName('dept_terkait').AsString then begin
        MsgBox('Harus di tindak lanjuti oleh departemen terkait.');
        Abort;
    end;
  end;

  if aplikasi.UserDept = 'DIR' then begin
    if zqrLKM.FieldByName('app2').AsInteger = 0 then begin
      MsgBox('Approval departemen terkait belum dilakukan.');
      Abort;
    end
    else if zqrLKM.FieldByName('app1').IsNull then begin
      MsgBox('LKM Masih belum dapat approval dari Manager QAC.');
      Abort;
    end
    else begin
      // cek apakah lkm sudah di approval oleh manajemen
      if q.FieldByName('app3').AsInteger = 1 then begin
        MsgBox('LKM ini sudah di approval oleh Manajemen.');
        q.Close;
        Abort;
      end;
    end;
  end
  else begin

    if q.FieldByName('status').AsString = 'CLOSE' then begin
    MsgBox('No LKM ini sudah ditutup');
    q.Close;
    Abort;
    end;
    // cek apakah lkm sudah di approval atau belum
    // oleh depaprtemen terkait
    if q.FieldByName('app2').AsInteger = 1 then begin
      MsgBox('Approval departemen terkait sudah dilakukan.');
      q.Close;
      Abort;
    end;


  end;

  q.Close;

  f.ShowModal;
  btnProsesClick(nil);
  except
  end;
end;

procedure TfrmLKM.btnCetakLKMClick(Sender: TObject);
var
  f: TfrmLapUmum;
begin
  f := TfrmLapUmum.Create(Self);
  f.zqrLKM.Close;
  f.zqrLKM.ParamByName('no_bukti').AsString := zqrLKM.FieldByName('no_bukti').AsString;
  f.zqrLKM.Open;
  f.rptLKM.ShowReport(True);
  f.Release;
end;

procedure TfrmLKM.btnLihatClick(Sender: TObject);
var
  f: TfrmProsesLKM;
begin
  inherited;
  f := TfrmProsesLKM.Create(Self);
  f.Jenis := 'lihat-lkm';
  f.Show;
end;

procedure TfrmLKM.Button3Click(Sender: TObject);
var
  f: TfrmProsesLKM;
  q, qGiling: TZQuery;
  i: Integer;
begin
  inherited;
  f := TfrmProsesLKM.Create(Self);
  f.Jenis := 'lihat-lkm';
  f.JenisLKM := 'lihat-lkm';

  q := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',
    [zqrLKM.FieldByName('no_bukti').AsString]);

  if zqrLKM.FieldByName('no_bukti').AsString = '' then begin
    f.Close;
     Abort;
  end
  else begin
    f.Show;
  end;
  
  if not q.IsEmpty then begin
    f.cxtNoLKM.Text := zqrLKM.FieldByName('no_bukti').AsString;
    f.lblJudul.Caption := 'Lihat Detail LKM';
    f.cxChkAppLKM.Visible := False;

    f.cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;

    if not q.FieldByName('kode_supp').IsNull then begin
      f.cxChkSupp.Checked := True;
      f.cxlSupp.EditValue := q.FieldByName('kode_supp').AsString;
    end;

    if not q.FieldByName('kode_cust').IsNull then begin
      f.cxChkCust.Checked := True;
      f.cxlCust.EditValue := q.FieldByName('kode_cust').AsString;
    end;

    f.cxtShift.Text := q.FieldByName('shift').AsString;
    f.cxtNoMesin.Text := q.FieldByName('no_mesin').AsString;
    f.cxtKodeProduksi.Text := q.FieldByName('kode_produksi').AsString;
    f.cxtTagProduksi.Text := q.FieldByName('no_tag_produksi').AsString;
    f.cxtAlokasiBarang.Text := q.FieldByName('alokasi_barang').AsString;
    f.cxCmbJenis.Text := q.FieldByName('jenis_ks').AsString;
    //cxlUser.Text := q.FieldByName('user_dept_terkait').AsString;
    f.cxtDept.Text := q.FieldByName('user_dept').AsString;
    f.cxmDeskKS.Text := q.FieldByName('deskripsi_ks').AsString;
    f.cxmAkarMasalah.Text := q.FieldByName('akar_masalah').AsString;
    f.cxCmbKetTambahan.Text := q.FieldByName('jenis_ket').AsString;
    f.cxmKetTambahan.Text := q.FieldByName('ket_tambahan').AsString;
    f.cxtNoRetur.Text := q.FieldByName('no_retur').AsString;

    f.cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;
    f.cxtStatus.Text := q.FieldByName('status').AsString;
    f.cxtNoSPK.Text := q.FieldByName('no_spk').AsString;
    f.cxtNoSO.Text := q.FieldByName('no_so').AsString;
    f.cxtDibuatOleh.Text := q.FieldByName('user').AsString;

    f.cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    f.cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    f.cxsQty.Value := q.FieldByName('qty').AsFloat;
    f.cxtSatuan.Text := q.FieldByName('satuan').AsString;
    f.cxlTujuanDept.Text := q.FieldByName('dept_terkait').AsString;
    f.cxtJenisLainnya.Text := q.FieldByName('deskripsi_tp').AsString;



    qGiling := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
    [zqrLKM.FieldByName('no_bukti').AsString]);
    f.cxsQtyGiling.Value := qGiling.FieldByName('qty_giling').AsFloat;
    qGiling.Close;

    f.cxsQtyGiling.Properties.ReadOnly := True;
    f.cxsQtyGiling.Style.Color := clMoneyGreen;
    {
    //ambil kode brg dari so
    qso := OpenRS('SELECT * FROM tbl_so_det WHERE notes = ''%s''',
    [zqrLKM.FieldByName('no_bukti').AsString]);
    f.cxlBarang.EditValue := qso.FieldByName('kode_brg').AsInteger;
    f.cxsBrgHasil.Value :=  qso.FieldByName('qty_brg_hsl').AsFloat;
    f.cxsBrgKonversi.Value :=  qso.FieldByName('qty').AsFloat;
    qso.Close;
    }

    
    f.btnCariNoSPK_Retur.Enabled := False;
    f.btnCariKodeBrg.Enabled := False;
    f.btnCariNoRetur.Enabled := False;
    f.btnCariSO.Enabled := False;

    f.btnTmbhImage.Caption := 'Lihat Image';
    f.btnSimpanLKM.Enabled := False;
    f.cxtUserInput.Text := q.FieldByName('user').AsString;
    f.cxtTglInput.Text := q.FieldByName('tanggal').AsString;
    //MsgBox('asa' + ' ' + 'asaa');
    //f.cxtJamInput.Text := TimeToStr(q.FieldByName('tanggal').AsString);

    f.cxtNoLKM.Properties.ReadOnly := True;
    f.cxdTglLKM.Properties.ReadOnly := True;
    f.cxtNoSPK.Properties.ReadOnly := True;
    f.cxtNoSO.Properties.ReadOnly := True;
    f.cxtKodeBrg.Properties.ReadOnly := True;
    f.cxtDeskripsi.Properties.ReadOnly := True;
    f.cxsQty.Properties.ReadOnly := True;
    f.cxtSatuan.Properties.ReadOnly := True;
    f.cxChkSupp.Properties.ReadOnly := True;
    f.cxChkCust.Properties.ReadOnly := True;
    f.cxlSupp.Properties.ReadOnly := True;
    f.cxlCust.Properties.ReadOnly := True;
    f.cxtShift.Properties.ReadOnly := True;
    f.cxtNoMesin.Properties.ReadOnly := True;
    f.cxtKodeProduksi.Properties.ReadOnly := True;
    f.cxtTagProduksi.Properties.ReadOnly := True;
    f.cxtAlokasiBarang.Properties.ReadOnly := True;
    f.cxCmbJenis.Properties.ReadOnly := True;
    f.cxlUser.Properties.ReadOnly := True;
    f.cxtDept.Properties.ReadOnly := True;
    f.cxmDeskKS.Properties.ReadOnly := True;
    f.cxCmbKetTambahan.Properties.ReadOnly := True;
    f.cxmKetTambahan.Properties.ReadOnly := True;
    f.cxtStatus.Properties.ReadOnly := True;
    f.cxtDibuatOleh.Properties.ReadOnly := True;
    f.cxtTglInput.Properties.ReadOnly := True;
    f.cxtJamInput.Properties.ReadOnly := True;
    f.cxtUserInput.Properties.ReadOnly := True;
    f.cxmAkarMasalah.Properties.ReadOnly := True;
    f.cxtJenisLainnya.Properties.ReadOnly := True;

    f.cxtNoLKM.Style.Color := clMoneyGreen;
    f.cxdTglLKM.Style.Color := clMoneyGreen;
    f.cxtNoSPK.Style.Color := clMoneyGreen;
    f.cxtNoRetur.Style.Color := clMoneyGreen;
    f.cxtNoSO.Style.Color := clMoneyGreen;
    f.cxtKodeBrg.Style.Color := clMoneyGreen;
    f.cxtDeskripsi.Style.Color := clMoneyGreen;
    f.cxsQty.Style.Color := clMoneyGreen;
    f.cxtSatuan.Style.Color := clMoneyGreen;
    f.cxChkSupp.Style.Color := clMoneyGreen;
    f.cxChkCust.Style.Color := clMoneyGreen;
    f.cxlSupp.Style.Color := clMoneyGreen;
    f.cxlCust.Style.Color := clMoneyGreen;
    f.cxtShift.Style.Color := clMoneyGreen;
    f.cxtNoMesin.Style.Color := clMoneyGreen;
    f.cxtKodeProduksi.Style.Color := clMoneyGreen;
    f.cxtTagProduksi.Style.Color := clMoneyGreen;
    f.cxtAlokasiBarang.Style.Color := clMoneyGreen;
    f.cxCmbJenis.Style.Color := clMoneyGreen;
    f.cxlUser.Style.Color := clMoneyGreen;
    f.cxtDept.Style.Color := clMoneyGreen;
    f.cxmDeskKS.Style.Color := clMoneyGreen;
    f.cxCmbKetTambahan.Style.Color := clMoneyGreen;
    f.cxmKetTambahan.Style.Color := clMoneyGreen;
    f.cxtStatus.Style.Color := clMoneyGreen;
    f.cxtDibuatOleh.Style.Color := clMoneyGreen;
    f.cxtTglInput.Style.Color := clMoneyGreen;
    f.cxtJamInput.Style.Color := clMoneyGreen;
    f.cxtUserInput.Style.Color := clMoneyGreen;
    f.cxmAkarMasalah.Style.Color := clMoneyGreen;
    f.cxtJenisLainnya.Style.Color := clMoneyGreen;

    f.cxlTujuanDept.Properties.ReadOnly := True;
    f.cxlTujuanDept.Style.Color := clMoneyGreen;

  end;
  q.Close;
end;

procedure TfrmLKM.btnAppManagerQACClick(Sender: TObject);
var
  f: TfrmProsesLKM;
  q: TZQuery;
  i: Integer;
begin
  inherited;
  
  f := TfrmProsesLKM.Create(Self);
  f.Jenis := 'app1';


   q := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',
    [zqrLKM.FieldByName('no_bukti').AsString]);

  if zqrLKM.FieldByName('app1').AsInteger = 1 then begin
      f.Close;
      MsgBox('No LKM ini sudah di approval Manager QAC');
      Abort;
  end;

  if zqrLKM.FieldByName('no_bukti').AsString = '' then begin
      f.Close;
      Abort;
  end
  else begin
        f.Show;
  end;
  if not q.IsEmpty then begin
    f.cxtNoLKM.Text := zqrLKM.FieldByName('no_bukti').AsString;
    f.lblJudul.Caption := 'Approval Manager QAC';
    f.cxChkAppLKM.Visible := True;
    f.cxChkAppLKM.Caption := 'Approval Manager QAC';

    f.cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;

    if not q.FieldByName('kode_supp').IsNull then begin
      f.cxChkSupp.Checked := True;
      f.cxlSupp.EditValue := q.FieldByName('kode_supp').AsString;
    end;

    if not q.FieldByName('kode_cust').IsNull then begin
      f.cxChkCust.Checked := True;
      f.cxlCust.EditValue := q.FieldByName('kode_cust').AsString;
    end;

    f.cxtShift.Text := q.FieldByName('shift').AsString;
    f.cxtNoMesin.Text := q.FieldByName('no_mesin').AsString;
    f.cxtKodeProduksi.Text := q.FieldByName('kode_produksi').AsString;
    f.cxtTagProduksi.Text := q.FieldByName('no_tag_produksi').AsString;
    f.cxtAlokasiBarang.Text := q.FieldByName('alokasi_barang').AsString;
    f.cxCmbJenis.Text := q.FieldByName('jenis_ks').AsString;
    //cxlUser.Text := q.FieldByName('user_dept_terkait').AsString;
    f.cxtDept.Text := q.FieldByName('user_dept').AsString;
    f.cxmDeskKS.Text := q.FieldByName('deskripsi_ks').AsString;
    f.cxmAkarMasalah.Text := q.FieldByName('akar_masalah').AsString;
    f.cxCmbKetTambahan.Text := q.FieldByName('jenis_ket').AsString;
    f.cxmKetTambahan.Text := q.FieldByName('ket_tambahan').AsString;

    f.cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;
    f.cxtStatus.Text := q.FieldByName('status').AsString;
    f.cxtNoSPK.Text := q.FieldByName('no_spk').AsString;
    f.cxtNoSO.Text := q.FieldByName('no_so').AsString;
    f.cxtDibuatOleh.Text := q.FieldByName('user').AsString;

    f.cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    f.cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    f.cxsQty.Value := q.FieldByName('qty').AsFloat;
    f.cxtSatuan.Text := q.FieldByName('satuan').AsString;
    f.cxlTujuanDept.Text := q.FieldByName('dept_terkait').AsString;

    f.btnCariNoSPK_Retur.Enabled := False;
    f.btnCariKodeBrg.Enabled := False;

    f.btnTmbhImage.Caption := 'Lihat Image';
    f.btnSimpanLKM.Enabled := True;
    
    f.cxtUserInput.Text := q.FieldByName('user').AsString;
    f.cxtTglInput.Text := q.FieldByName('tanggal').AsString;
    //MsgBox('asa' + ' ' + 'asaa');
    //f.cxtJamInput.Text := TimeToStr(q.FieldByName('tanggal').AsString);

    f.cxtNoLKM.Properties.ReadOnly := True;
    f.cxdTglLKM.Properties.ReadOnly := True;
    f.cxtNoSPK.Properties.ReadOnly := True;
    f.cxtNoSO.Properties.ReadOnly := True;
    f.cxtKodeBrg.Properties.ReadOnly := True;
    f.cxtDeskripsi.Properties.ReadOnly := True;
    f.cxsQty.Properties.ReadOnly := True;
    f.cxtSatuan.Properties.ReadOnly := True;
    f.cxChkSupp.Properties.ReadOnly := True;
    f.cxChkCust.Properties.ReadOnly := True;
    f.cxlSupp.Properties.ReadOnly := True;
    f.cxlCust.Properties.ReadOnly := True;
    f.cxtShift.Properties.ReadOnly := True;
    f.cxtNoMesin.Properties.ReadOnly := True;
    f.cxtKodeProduksi.Properties.ReadOnly := True;
    f.cxtTagProduksi.Properties.ReadOnly := True;
    f.cxtAlokasiBarang.Properties.ReadOnly := True;
    f.cxCmbJenis.Properties.ReadOnly := True;
    f.cxlUser.Properties.ReadOnly := True;
    f.cxtDept.Properties.ReadOnly := True;
    f.cxmDeskKS.Properties.ReadOnly := True;
    f.cxCmbKetTambahan.Properties.ReadOnly := True;
    f.cxmKetTambahan.Properties.ReadOnly := True;
    f.cxtStatus.Properties.ReadOnly := True;
    f.cxtDibuatOleh.Properties.ReadOnly := True;
    f.cxtTglInput.Properties.ReadOnly := True;
    f.cxtJamInput.Properties.ReadOnly := True;
    f.cxtUserInput.Properties.ReadOnly := True;
    f.cxmAkarMasalah.Properties.ReadOnly := True;
    f.cxtJenisLainnya.Properties.ReadOnly := True;

    f.cxtNoLKM.Style.Color := clMoneyGreen;
    f.cxdTglLKM.Style.Color := clMoneyGreen;
    f.cxtNoSPK.Style.Color := clMoneyGreen;
    f.cxtNoSO.Style.Color := clMoneyGreen;
    f.cxtKodeBrg.Style.Color := clMoneyGreen;
    f.cxtDeskripsi.Style.Color := clMoneyGreen;
    f.cxsQty.Style.Color := clMoneyGreen;
    f.cxtSatuan.Style.Color := clMoneyGreen;
    f.cxChkSupp.Style.Color := clMoneyGreen;
    f.cxChkCust.Style.Color := clMoneyGreen;
    f.cxlSupp.Style.Color := clMoneyGreen;
    f.cxlCust.Style.Color := clMoneyGreen;
    f.cxtShift.Style.Color := clMoneyGreen;
    f.cxtNoMesin.Style.Color := clMoneyGreen;
    f.cxtKodeProduksi.Style.Color := clMoneyGreen;
    f.cxtTagProduksi.Style.Color := clMoneyGreen;
    f.cxtAlokasiBarang.Style.Color := clMoneyGreen;
    f.cxCmbJenis.Style.Color := clMoneyGreen;
    f.cxlUser.Style.Color := clMoneyGreen;
    f.cxtDept.Style.Color := clMoneyGreen;
    f.cxmDeskKS.Style.Color := clMoneyGreen;
    f.cxCmbKetTambahan.Style.Color := clMoneyGreen;
    f.cxmKetTambahan.Style.Color := clMoneyGreen;
    f.cxtStatus.Style.Color := clMoneyGreen;
    f.cxtDibuatOleh.Style.Color := clMoneyGreen;
    f.cxtTglInput.Style.Color := clMoneyGreen;
    f.cxtJamInput.Style.Color := clMoneyGreen;
    f.cxtUserInput.Style.Color := clMoneyGreen;
    f.cxmAkarMasalah.Style.Color := clMoneyGreen;
    f.cxtJenisLainnya.Style.Color := clMoneyGreen;

    f.cxlTujuanDept.Properties.ReadOnly := True;
    f.cxlTujuanDept.Style.Color := clMoneyGreen;

  end;
  q.Close;
 end;

procedure TfrmLKM.Button1Click(Sender: TObject);
var
  q : TZQuery;
  i : integer;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
      [zqrLKM.FieldByName('no_bukti').AsString]);

  if zqrLKM.FieldByName('status').AsString = 'CLOSE' then begin
       MsgBox('No LKM ini sudah ditutup.');
       Abort;
  end;

  if (aplikasi.UserDept = 'QAC') and (aplikasi.Jabatan <> 'MANAGER') then begin
      //f.Close;
      MsgBox('LKM hanya bisa di tutup oleh pihak Manager');
      q.Close;
      Abort;
  end;

  if (zqrLKM.FieldByName('app3').AsInteger = 0) or (zqrLKM.FieldByName('app3').IsNull) then begin
    //f.Close;
    MsgBox('LKM ini belum mendapatkan approval dari Manajemen');
    q.Close;
    Abort;
  end
  else begin
      //MsgBox('LKM ini bisa ditutup ' + q.FieldByName('no_bukti').AsString);
    // if (application.messagebox('No LKM berikut akan ditutup?' ,'Peringatan',mb_yesno)=idyes) then begin
           // MsgBox('LKM ini bisa ditutup');
           //update status = close, update tanggal selesai, kirim email ke pak boby
     //   q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
     //     [zqrLKM.FieldByName('no_bukti').AsString]);
     //   q.Edit;
     //   q.FieldByName('tanggal_selesai').AsDateTime := aplikasi.TanggalServer;
     //   q.FieldByName('status').AsString := 'CLOSE';
     //   q.Post;
     //   q.Close;
     //   MsgBox('LKM sudah berhasil ditutup.');
     //   Close;
     //end
     //else begin

     //end;

     // 09-08-2016
     //pnlSPK.Visible := True;
     //cxtNoMutasi.SetFocus;
    i := QBox(Self,'Tutup LKM : ' + zqrLKM.FieldByName('no_bukti').AsString + '?','Tutup LKM');
    if i = IDYES then begin
      q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
        [zqrLKM.FieldByName('no_bukti').AsString]);
      q.Edit;
      q.FieldByName('tanggal_selesai').AsDateTime := aplikasi.TanggalServer;
      q.FieldByName('status').AsString := 'CLOSE';
      q.FieldByName('app4').AsInteger := 1;
      // q.FieldByName('no_ref').AsString := cxtNoMutasi.Text;
      q.FieldByName('tgl_app4').AsDateTime := Aplikasi.NowServer;
      q.Post;
      q.Close;
      MsgBox('LKM : ' + zqrLKM.FieldByName('no_bukti').AsString + ' sudah berhasil ditutup.');
      SendEmailLKMClose(zqrLKM.FieldByName('no_bukti').AsString);
      Close;
    end;
  end;
end;

procedure TfrmLKM.Button2Click(Sender: TObject);
var
  f: TfrmLapUmum;
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrdLkm);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLKM.cxTblViewLKMStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  try
    if (ARecord.Values[cxColStatus.Index] = 'CLOSE') then
      AStyle := cxStyle1
    else if (ARecord.Values[cxColStatus.Index] = 'OPEN') then
      AStyle := cxStyle2;
  except
  end;
end;

procedure TfrmLKM.btnBatalDetClick(Sender: TObject);
begin
  pnlSPK.Visible := False;
  cxtNoMutasi.Text := '';
end;

procedure TfrmLKM.btnCloseDetSPKClick(Sender: TObject);
begin
  pnlSPK.Visible := False;
  cxtNoMutasi.Text := '';
end;

procedure TfrmLKM.btnSimpanDetClick(Sender: TObject);
var
  q : TZQuery;
begin
 //MsgBox('LKM ini bisa ditutup ' + q.FieldByName('no_bukti').AsString);
     if (application.messagebox('No LKM berikut akan ditutup?' ,'Peringatan',mb_yesno)=idyes) then begin
           // MsgBox('LKM ini bisa ditutup');
           //update status = close, update tanggal selesai, kirim email ke pak boby
        q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
          [zqrLKM.FieldByName('no_bukti').AsString]);
        q.Edit;
        q.FieldByName('tanggal_selesai').AsDateTime := aplikasi.TanggalServer;
        q.FieldByName('status').AsString := 'CLOSE';
        q.FieldByName('app4').AsInteger := 1;
        q.FieldByName('no_ref').AsString := cxtNoMutasi.Text;
        q.FieldByName('tgl_app4').AsDateTime := Aplikasi.NowServer;
        q.Post;
        q.Close;
        MsgBox('LKM sudah berhasil ditutup.');
        Close;
     end
     else begin

     end;

end;

procedure TfrmLKM.SendEmailLKMClose(sNoLKM: string);
var
  email : TIdMessage;
  lst, lstBody: TStringList;
  bdy: TIdText;
  i: Integer;
  q: TZQuery;
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
    email.From.Name := 'MDA';

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else begin
      email.Recipients.EMailAddresses := 'ferry@sdp.mail,rio@sdp.mail,eko@sdp.mail,elia@sdp.mail,eva@sdp.mail,' +
        'saiful@sdp.mail,felgitotema@sdp.mail,sunanto@sdp.mail,fredi@sdp.mail';
    end;

    email.Subject := 'Penutupan LKM NO#: ' + sNoLKM;
    q := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',[sNoLKM]);

    lstBody := TStringList.Create;
    lstBody.Add('<html>');
    lstBody.Add('<head>');
    lstBody.Add('</head>');
    lstBody.Add('<body>');
    lstBody.Add('<h3>PENUTUPAN LAPORAN KETIDAKSESUAIAN MUTU</h3></br></br>');
    lstBody.Add('<pre>');
    lstBody.Add('Nomer LKM    : ' + sNoLKM);
    lstBody.Add('Tgl.Terbit   : ' + FormatDateTime('dd-MM-yyyy',q.FieldByName('tanggal').AsDateTime));
    lstBody.Add('Kode Brg.    : ' + q.FieldByName('kode_brg').AsString);
    lstBody.Add('Deskripsi    : ' + q.FieldByName('deskripsi').AsString);
    lstBody.Add('Qty          : ' + q.FieldByName('qty').AsString);
    lstBody.Add('Satuan       : ' + q.FieldByName('satuan').AsString);
    lstBody.Add('Dept.Tujuan  : ' + q.FieldByName('dept_terkait').AsString);
    lstBody.Add('Jenis LKM    : ' + q.FieldByName('jenis_ks').AsString);
    lstBody.Add('Deskripsi Ketidaksesuaian : ');
    lstBody.Add(q.FieldByName('deskripsi_ks').AsString);
    lstBody.Add('Akar Masalah : ');
    lstBody.Add(q.FieldByName('akar_masalah').AsString);
    lstBody.Add('Keterangan Tambahan : ');
    lstBody.Add(q.FieldByName('ket_tambahan').AsString);
    q.Close;

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

end;

end.
