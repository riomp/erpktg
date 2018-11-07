unit unFrmInputHasilProdTimb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, CPort, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  ZAbstractRODataset, ZDataset, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit;

type
  TfrmInputHasilProdTimb = class(TfrmTplTrans)
    CP: TComPort;
    cxTblSPK: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    cxTblSPKno_spk: TcxGridDBColumn;
    cxTblSPKjenis_spk: TcxGridDBColumn;
    cxTblSPKtanggal: TcxGridDBColumn;
    cxTblSPKjam: TcxGridDBColumn;
    cxTblSPKqty: TcxGridDBColumn;
    cxTblSPKkode_mesin: TcxGridDBColumn;
    cxTblSPKf_completed: TcxGridDBColumn;
    cxTblSPKno_trsplusminus: TcxGridDBColumn;
    cxTblSPKnama: TcxGridDBColumn;
    cxTblSPKno_so: TcxGridDBColumn;
    cxTblSPKtanggal_so: TcxGridDBColumn;
    cxTblSPKketerangan: TcxGridDBColumn;
    cxTblSPKf_app_prd: TcxGridDBColumn;
    cxTblSPKnama_mesin: TcxGridDBColumn;
    cxTblSPKkode_brg: TcxGridDBColumn;
    cxTblSPKf_wip: TcxGridDBColumn;
    cxTblSPKf_wip_awal: TcxGridDBColumn;
    cxTblSPKf_wip_akhir: TcxGridDBColumn;
    cxTblSPKdeskripsi: TcxGridDBColumn;
    cxTblSPKsatuan: TcxGridDBColumn;
    cxTblSPKkategori: TcxGridDBColumn;
    cxTblSPKsubkategori: TcxGridDBColumn;
    cxTblSPKrouting: TcxGridDBColumn;
    cxTblSPKno_spk_induk: TcxGridDBColumn;
    cxTblSPKqty_prod: TcxGridDBColumn;
    cxTblSPKqty_baik: TcxGridDBColumn;
    cxTblSPKqty_afkir: TcxGridDBColumn;
    cxTblSPKqty_retur: TcxGridDBColumn;
    cxTblSPKqty_reject: TcxGridDBColumn;
    cxTblSPKqty_terima: TcxGridDBColumn;
    cxTblSPKtoleransi: TcxGridDBColumn;
    cxTblSPKtgl_p_mulai: TcxGridDBColumn;
    cxTblSPKtgl_p_selesai: TcxGridDBColumn;
    cxTblSPKlain_lain: TcxGridDBColumn;
    cxTblSPKket_ppic: TcxGridDBColumn;
    cxTblSPKberat_per_unit: TcxGridDBColumn;
    cxTblSPKs_berat: TcxGridDBColumn;
    cxTblSPKs_panjang: TcxGridDBColumn;
    cxTblSPKpanjang: TcxGridDBColumn;
    cxTblSPKlebar: TcxGridDBColumn;
    cxTblSPKs_lebar: TcxGridDBColumn;
    cxTblSPKdiameter_dalam: TcxGridDBColumn;
    cxTblSPKdiameter_luar: TcxGridDBColumn;
    cxTblSPKs_diameter_dalam: TcxGridDBColumn;
    cxTblSPKs_diameter_luar: TcxGridDBColumn;
    cxTblSPKsusut: TcxGridDBColumn;
    cxTblSPKkode_brg_input: TcxGridDBColumn;
    cxTblSPKtgl_prd_check: TcxGridDBColumn;
    cxTblSPKno_urut_routing: TcxGridDBColumn;
    cxTblSPKjml_bb: TcxGridDBColumn;
    Button1: TButton;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    btnTimbang1: TButton;
    btnSimpanHP: TButton;
    GroupBox2: TGroupBox;
    btnTimbang2: TButton;
    btnSimpanReject: TButton;
    cxLabel3: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    Button6: TButton;
    Button7: TButton;
    Label1: TLabel;
    Label2: TLabel;
    cxLabel5: TcxLabel;
    cxlMesin: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxd1: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxd2: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxtOperator: TcxTextEdit;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    tmr: TTimer;
    tmr2: TTimer;
    cxtHPHide: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxCmbShift: TcxComboBox;
    cxsInputHP: TcxSpinEdit;
    Button2: TButton;
    cxsInputReject: TcxSpinEdit;
    cxtRejectHide: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxlKatAfal: TcxLookupComboBox;
    cxlKetMesin: TcxLookupComboBox;
    cxLabel11: TcxLabel;
    zqrKatAfal: TZReadOnlyQuery;
    dsKatAfal: TDataSource;
    zqrKetMesin: TZReadOnlyQuery;
    dsKetMesin: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnTimbang1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnSimpanHPClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSimpanRejectClick(Sender: TObject);
    procedure btnTimbang2Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure cxlKatAfalPropertiesChange(Sender: TObject);
  private
    procedure ClearInputHP;
  public
    { Public declarations }
  end;

var
  frmInputHasilProdTimb: TfrmInputHasilProdTimb;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmInputHasilProdTimb.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  CP.Port := Aplikasi.ComPort;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  Panel1.Top := 6;
  Panel1.Left := 15;
end;

procedure TfrmInputHasilProdTimb.btnTimbang1Click(Sender: TObject);
begin
  inherited;
  try
    //CP.Connected := True;
    tmr.Enabled := True;
  except
  end;
end;

procedure TfrmInputHasilProdTimb.Button1Click(Sender: TObject);
begin
  inherited;
  cxtNoSPK.Text := zqrSPK.FieldByName('no_spk').AsString;
  cxtKodeBrg.Text := zqrSPK.FieldByName('kode_brg').AsString;
  cxtDeskripsi.Text := zqrSPK.FieldByName('deskripsi').AsString;
  cxlMesin.EditValue := zqrSPK.FieldByName('kode_mesin').AsString;
  Panel1.Visible := True;
end;

procedure TfrmInputHasilProdTimb.Button7Click(Sender: TObject);
begin
  inherited;
  ClearInputHP;
  Panel1.Visible := False;
end;

procedure TfrmInputHasilProdTimb.tmrTimer(Sender: TObject);
var
  s: string;
  y: integer;
  formatSettings : TFormatSettings;
begin
  inherited;
  cxtHPHide.Text := '40.25';
  tmr.Enabled := False;
  for y := Length(cxtHPHide.Text) downto 1 do
    s := s + cxtHPHide.Text[y];
    
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);
  if formatSettings.ThousandSeparator = '.' then
    s := StringReplace(s,'.',',',[rfReplaceAll]);

  cxsInputHP.EditValue := StrToFloat(s);
  tmr.Enabled := True;
end;

procedure TfrmInputHasilProdTimb.btnProsesClick(Sender: TObject);
begin
  inherited;
  zqrSPK.Close;
  zqrSPK.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrSPK.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrSPK.Open;  
end;

procedure TfrmInputHasilProdTimb.btnSimpanHPClick(Sender: TObject);
var
  sNoTrs, sNoBukti: string;
  q, qh, qd, qhst, qb, qbd, qbom: TZQuery;
  jml_bahan: real;
begin
  inherited;

  if cxsInputHP.Value = 0 then begin
    MsgBox('Hasil Produksi masih 0.');
    Abort;
  end;

  if VarIsNullDate(cxd1.EditValue) then begin
    MsgBox('Isi Tanggal dan Jam.');
    cxd1.SetFocus;
    ABort;
  end;

  if VarIsNullDate(cxd2.EditValue) then begin
    MsgBox('Isi Tanggal dan Jam.');
    cxd2.SetFocus;
    Abort;
  end;

  if Trim(cxtOperator.Text) = '' then begin
    MsgBox('Mohon isi nama operator.');
    cxtOperator.SetFocus;
    Abort;
  end;

  if cxCmbShift.Text = '' then begin
    MsgBox('Mohon pilih Shift.');
    cxCmbShift.SetFocus;
    Abort;
  end;

  tmr.Enabled := false;

  try
    dm.ZConn.StartTransaction;
    
    sNoTrs := GetLastFak('hasil_produksi');
    UpdateFaktur(Copy(sNoTrs,1,8));

    q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[sNoTrs]);
    q.Insert;
    q.FieldByName('no_spk').AsString := cxtNoSPK.Text;
    q.FieldByName('no_bukti').AsString := sNoTrs;
    q.FieldByName('shift').AsString := cxCmbShift.Text;
    q.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
    q.FieldByName('jam1').AsDateTime := cxd1.EditValue;
    q.FieldByName('jam2').AsDateTime := cxd2.EditValue;
    q.FieldByName('operator').AsString := cxtOperator.Text;
    q.FieldByName('mesin').AsString := cxlMesin.EditValue;
    q.FieldByName('qty_prod').AsFloat := cxsInputHP.Value;
    q.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
    q.FieldByName('user').AsString := Aplikasi.NamaUser;
    q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
    q.FieldByName('ket_mesin').AsString := '-';
    q.Post;

    // jika selain barang jadi maka masukkan barang ke gudang G-WIP
    if zqrSPK.FieldByName('routing').AsString <> 'BJ' then begin
      sNoBukti := GetLastFak('brg_in');
      UpdateFaktur(Copy(sNoBukti,1,7));
      qh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoBukti]);
      qh.Insert;
      qh.FieldByName('no_bukti').AsString := sNoBukti;
      qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      qh.FieldByName('user').AsString := Aplikasi.NamaUser;
      qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      qh.Post;
      qh.Close;

      qd := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoBukti]);
      qd.Insert;
      qd.FieldByName('no_bukti').AsString := sNoBukti;
      qd.FieldByName('kode_brg').AsString := zqrSPK.FieldByName('kode_brg').AsString;
      qd.FieldByName('qty').AsFloat := cxsInputHP.Value;
      qd.FieldByName('kode_gdg').AsString := 'G-WIP';
      qd.FieldByName('satuan').AsString := zqrSPK.FieldByName('satuan').AsString;
      qd.FieldByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
      qd.Post;
      qd.Close;

      qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
      with qhst do begin
        Insert;
        FieldByName('no_bukti').AsString := sNoBukti;
        FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        FieldByName('kode_brg').AsString := zqrSPK.FieldByName('kode_brg').AsString;
        FieldByName('tipe').AsString := 'IN_';
        FieldByName('qty').AsFloat := cxsInputHP.Value;
        FieldByName('satuan').AsString := zqrSPK.FieldByName('satuan').AsString;
        FieldByName('gudang').AsString := 'G-WIP';
        FieldByName('user').AsString := Aplikasi.NamaUser;
        FieldByName('user_dept').AsString := Aplikasi.UserDept;
        FieldByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
        FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        FieldByName('hpp').AsFloat := GetHPP(zqrSPK.FieldByName('kode_brg').AsString, 'G-WIP');
        FieldByName('unit_ktg').AsString := GetUnitKTG(zqrSPK.FieldByName('kode_brg').AsString);
        Post;
      end;
      qhst.Close;

      qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[zqrSPK.FieldByName('kode_brg').AsString]);
      qb.Edit;
      qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat + cxsInputHP.Value;
      qb.Post;
      qb.Close;

      qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-WIP''',
        [zqrSPK.FieldByName('kode_brg').AsString]);
      if qbd.IsEmpty then
        qbd.Insert
      else
        qbd.Edit;
      qbd.FieldByName('kode_brg').AsString := zqrSPK.FieldByName('kode_brg').AsString;
      qbd.FieldByName('kode_gdg').AsString := 'G-WIP';
      qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat + cxsInputHP.Value;
      qbd.Post;
      qbd.Close; 

      // kurangi stok WIP BOM
      qbom := OpenRS('SELECT kode_brg, LEFT(kode_brg,1) prefix_kodebrg, qty, satuan FROM tbl_bom_det WHERE no_spk = ''%s''',
        [zqrSPK.FieldByName('no_spk').AsString]);
      while not qbom.Eof do begin
        if qbom.FieldByName('prefix_kodebrg').AsString = 'B' then begin

          sNoBukti := GetLastFak('brg_out');
          UpdateFaktur(Copy(sNoBukti,1,7));

          qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''',[sNoBukti]);
          qh.Insert;
          qh.FieldByName('no_bukti').AsString := sNoBukti;
          qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.Post;
          qh.Close;

          qd := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',[sNoBukti]);
          qd.Insert;
          qd.FieldByName('no_bukti').AsString := sNoBukti;
          qd.FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;

          jml_bahan := qbom.FieldByName('qty').AsFloat / zqrSPK.FieldByName('qty').AsFloat;
          qd.FieldByName('qty').AsFloat := jml_bahan * cxsInputHP.Value;

          qd.FieldByName('kode_gdg').AsString := 'G-WIP';
          qd.FieldByName('satuan').AsString := zqrSPK.FieldByName('satuan').AsString;
          qd.FieldByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;

          qd.Post;
          qd.Close;

          qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
          with qhst do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoBukti;
            FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;
            FieldByName('tipe').AsString := 'OUT_';
            FieldByName('qty').AsFloat := jml_bahan * cxsInputHP.Value;
            FieldByName('satuan').AsString := qbom.FieldByName('satuan').AsString;
            FieldByName('gudang').AsString := 'G-WIP';
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            FieldByName('hpp').AsFloat :=
              GetHPP(qbom.FieldByName('kode_brg').AsString, 'G-WIP');
            FieldByName('unit_ktg').AsString := GetUnitKTG(qbom.FieldByname('kode_brg').AsString);
            Post;
          end;
          qhst.Close;

          qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[qbom.FieldByName('kode_brg').AsString]);
          qb.Edit;
          qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat - (jml_bahan * cxsInputHP.Value);
          qb.Post;
          qb.Close;

          qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-WIP''',
            [qbom.FieldByName('kode_brg').AsString]);
          if qbd.IsEmpty then
            qbd.Insert
          else
            qbd.Edit;
          qbd.FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;
          qbd.FieldByName('kode_gdg').AsString := 'G-WIP';
          qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat - (jml_bahan * cxsInputHP.Value);
          qbd.Post;
          qbd.Close;

        end;
        qbom.Next;
      end;
      qbom.Close;

    end;

    dm.zConn.Commit;

    MsgBox('Hasil Produksi sudah disimpan.');
    Panel1.Visible := false;

    ClearInputHP;

  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmInputHasilProdTimb.ClearInputHP;
begin
  cxlMesin.Text := '';
  cxd1.Text := '';
  cxd2.Text := '';
  cxtOperator.Text := '';
  cxCmbShift.Text := '';
  cxsInputHP.Value := 0;
  cxsInputReject.Value := 0;
  cxlKatAfal.Text := '';
  cxlKetMesin.Text := '';
end;

procedure TfrmInputHasilProdTimb.Button2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmInputHasilProdTimb.btnSimpanRejectClick(Sender: TObject);
var
  sNoTrs, sNoBukti: string;
  q, qh, qd, qhst, qb, qbd, qbom: TZQuery;
  jml_bahan: real;
begin
  inherited;

  if cxsInputReject.Value = 0 then begin
    MsgBox('Hasil Reject masih 0.');
    Abort;
  end;

  if VarIsNullDate(cxd1.EditValue) then begin
    MsgBox('Isi Tanggal dan Jam.');
    cxd1.SetFocus;
    ABort;
  end;

  if VarIsNullDate(cxd2.EditValue) then begin
    MsgBox('Isi Tanggal dan Jam.');
    cxd2.SetFocus;
    Abort;
  end;

  if Trim(cxtOperator.Text) = '' then begin
    MsgBox('Mohon isi nama operator.');
    cxtOperator.SetFocus;
    Abort;
  end;

  if cxCmbShift.Text = '' then begin
    MsgBox('Mohon pilih Shift.');
    cxCmbShift.SetFocus;
    Abort;
  end;

  if cxlKatAfal.Text = '' then begin
    MsgBox('Pilih kategori afalan.');
    cxlKatAfal.SetFocus;
    Abort;
  end;

  if cxlKatAfal.Text = '' then begin
    MsgBox('Pilih kategori afalan.');
    cxlKatAfal.SetFocus;
    Abort;
  end;

  if cxlKetMesin.Text = '' then begin
    MsgBox('Pilih keterangan mesin.');
    cxlKetMesin.SetFocus;
    Abort;
  end;

  tmr.Enabled := false;

  try
    dm.ZConn.StartTransaction;
    
    sNoTrs := GetLastFak('hasil_produksi');
    UpdateFaktur(Copy(sNoTrs,1,8));

    q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[sNoTrs]);
    q.Insert;
    q.FieldByName('no_spk').AsString := cxtNoSPK.Text;
    q.FieldByName('no_bukti').AsString := sNoTrs;
    q.FieldByName('shift').AsString := cxCmbShift.Text;
    q.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
    q.FieldByName('jam1').AsDateTime := cxd1.EditValue;
    q.FieldByName('jam2').AsDateTime := cxd2.EditValue;
    q.FieldByName('operator').AsString := cxtOperator.Text;
    q.FieldByName('mesin').AsString := cxlMesin.EditValue;
    q.FieldByName('qty_reject').AsFloat := cxsInputReject.Value;
    q.FieldByName('kategori_afdown').AsString := cxlKatAfal.EditValue;
    q.FieldByName('ket_mesin').AsString := cxlKetMesin.EditValue;
    q.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
    q.FieldByName('user').AsString := Aplikasi.NamaUser;
    q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
    q.FieldByName('ket_mesin').AsString := '-';
    q.Post;

    dm.zConn.Commit;

    MsgBox('Hasil Produksi sudah disimpan.');
    Panel1.Visible := false;

    ClearInputHP;

  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmInputHasilProdTimb.btnTimbang2Click(Sender: TObject);
begin
  inherited;
  try
    tmr2.Enabled := True;
  except
  end;
end;

procedure TfrmInputHasilProdTimb.tmr2Timer(Sender: TObject);
var
  s: string;
  y: integer;
  formatSettings : TFormatSettings;
begin
  inherited;
  cxtRejectHide.Text := '40.25';
  tmr2.Enabled := False;
  for y := Length(cxtRejectHide.Text) downto 1 do
    s := s + cxtRejectHide.Text[y];

  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, formatSettings);
  if formatSettings.ThousandSeparator = '.' then
    s := StringReplace(s,'.',',',[rfReplaceAll]);

  cxsInputReject.EditValue := StrToFloat(s);
  tmr2.Enabled := True;
end;

procedure TfrmInputHasilProdTimb.cxlKatAfalPropertiesChange(
  Sender: TObject);
begin
  inherited;
  try
    zqrKetMesin.Close;
    zqrKetMesin.ParamByName('kategori').AsString := zqrKatAfal.FieldByName('kategori').AsString;
    zqrKetMesin.Open;
  except
  end;
end;

end.
