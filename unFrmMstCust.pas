unit unFrmMstCust;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ExtCtrls, cxContainer, cxTextEdit,
  cxLabel, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCheckBox, Jpeg,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmMstCust = class(TfrmTplMaster)
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    cxTblViewsatuan: TcxGridDBColumn;
    zqTipe: TZQuery;
    dsTipe: TDataSource;
    zqKategori: TZQuery;
    dsKategori: TDataSource;
    zqskategori: TZQuery;
    dsSKategori: TDataSource;
    zqSatuan: TZQuery;
    dsSatuan: TDataSource;
    cxLabel9: TcxLabel;
    btnGenerate: TButton;
    cxTblViewColumn1: TcxGridDBColumn;
    zSales: TZQuery;
    dsSales: TDataSource;
    ScrollBox1: TScrollBox;
    cxLabel1: TcxLabel;
    cxtKode: TcxTextEdit;
    chkAktif: TcxCheckBox;
    cxLabel10: TcxLabel;
    cxtNama: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtKontak: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtAlamat: TcxTextEdit;
    cxtAlamat2: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtKota: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtProvinsi: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxtNegara: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtTelp: TcxTextEdit;
    cxtFax: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxCmbKelHrg: TcxComboBox;
    cxtHP: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxtEmail: TcxTextEdit;
    cxtUserWeb: TcxTextEdit;
    cxtPassword: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel15: TcxLabel;
    cxtNPWP: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxtPKP: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxlSales: TcxLookupComboBox;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxtUsaha: TcxTextEdit;
    cxtJenis: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxtKelurahan: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxtKecamatan: TcxTextEdit;
    cxLabel22: TcxLabel;
    cxtBrand: TcxTextEdit;
    cxLabel23: TcxLabel;
    cxtAlamatKirim: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxtStatus: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxtPemilik: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxtTlpPemilik: TcxTextEdit;
    cxLabel27: TcxLabel;
    cxtGedung: TcxTextEdit;
    cxLabel28: TcxLabel;
    cxtArea: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxtKaryawan: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxtKendaraan: TcxTextEdit;
    cxLabel31: TcxLabel;
    cxtLama: TcxTextEdit;
    cxLabel32: TcxLabel;
    cxtRekening: TcxTextEdit;
    cxLabel33: TcxLabel;
    cxtNamaRek: TcxTextEdit;
    cxLabel34: TcxLabel;
    cxtPurchasing: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxsKredit: TcxSpinEdit;
    cxLabel36: TcxLabel;
    cxlAkun: TcxLookupComboBox;
    cxtNoAkun: TcxTextEdit;
    Panel1: TPanel;
    zqrCoa: TZQuery;
    dsCoa: TDataSource;
    chkVer: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure cxlAkunPropertiesChange(Sender: TObject);
  private
    tbl: TZTable;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMstCust: TfrmMstCust;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmMstCust.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  tbl := OpenTbl('tbl_customer');
  pg.ActivePageIndex := 0;

  cxCmbKelHrg.Properties.Items.Add('');
  cxCmbKelHrg.Properties.Items.Add('JOB ORDER');
  cxCmbKelHrg.Properties.Items.Add('JOB ORDER - EXPORT');
  cxCmbKelHrg.Properties.Items.Add('JOB ORDER - GROUP');
  cxCmbKelHrg.Properties.Items.Add('AGRICULTURE');
  cxCmbKelHrg.Properties.Items.Add('GEOMEMBRANE');
  cxCmbKelHrg.ItemIndex := 0;

  zQry.Open ;
  zqTipe.Open ;
  zqKategori.Open ;
  zqskategori.Open ;
  zqSatuan.Open ;
  zSales.Open ;
  zqrCoa.Open;
end;

procedure TfrmMstCust.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  tbl_sa: TZTable;
  q, qSA: TZQuery;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if (Trim(cxtKode.Text) = '') then begin
    MsgBox('Kode Customer harus diisi.');
    cxtKode.SetFocus;
  end
  else if Trim(cxtNama.Text) = '' then begin
    MsgBox('Nama Customer harus diisi.');
    cxtNama.SetFocus;
  end
  else if Trim(cxtAlamat.Text) = '' then begin
    MsgBox('Alamat customer harus diisi.');
    cxtAlamat.SetFocus;
  end
  else begin

    f := True;
    if self.Jenis = 'tambah' then begin

      if CheckKey('tbl_customer','kode', QuotedStr(Trim(cxtKode.Text))) then begin
        MsgBox('Kode Customer sudah ada.');
        cxtKode.SelectAll;
        cxtKode.SetFocus;
        f := False;
      end
      else
        tbl.Insert;
    end
    else begin
      if not CheckKey('tbl_customer','kode',QuotedStr(Trim(cxtKode.Text))) then begin
        MsgBox('Kode Customer belum ada.');
        cxtKode.SelectAll;
        cxtKode.SetFocus;
        f := False;
      end
      else begin
        tbl.Locate('kode',cxtKode.Text,[loCaseInsensitive]);
        tbl.Edit;
      end;
    end;

    if f then begin
      tbl.FieldByName('kode').AsString := cxtKode.Text;
      tbl.FieldByName('nama').AsString := Trim(cxtNama.Text);
      tbl.FieldByName('kontak').AsString := Trim(cxtKontak.Text);
      tbl.FieldByName('alamat').AsString := Trim(cxtAlamat.Text);
      tbl.FieldByName('alamat2').AsString := Trim(cxtAlamat2.Text);
      tbl.FieldByName('kelurahan').AsString := Trim(cxtKelurahan.Text);
      tbl.FieldByName('kecamatan').AsString := Trim(cxtKecamatan.Text);
      tbl.FieldByName('kota').AsString := Trim(cxtKota.Text);
      tbl.FieldByName('provinsi').AsString := Trim(cxtProvinsi.Text);
      tbl.FieldByName('negara').AsString := Trim(cxtNegara.Text);
      tbl.FieldByName('telpon').AsString := Trim(cxtTelp.Text);
      tbl.FieldByName('fax').AsString := Trim(cxtFax.Text);
      tbl.FieldByName('hp').AsString := Trim(cxtHP.Text);
      tbl.FieldByName('userweb').AsString := Trim(cxtUserWeb.Text);
      tbl.FieldByName('real_password').AsString := Trim(cxtPassword.Text);
      tbl.FieldByName('email').AsString := Trim(cxtEmail.Text);
      tbl.FieldByName('npwp').AsString := Trim(cxtNPWP.Text);
      tbl.FieldByName('pkp').AsString := Trim(cxtPKP.Text);
      tbl.FieldByName('jenis_kepemilikan').AsString := Trim(cxtJenis.Text);
      tbl.FieldByName('jenis_usaha').AsString := Trim(cxtUsaha.Text);
      tbl.FieldByName('brand').AsString := Trim(cxtBrand.Text);
      tbl.FieldByName('alamat_kirim').AsString := Trim(cxtAlamatKirim.Text);
      tbl.FieldByName('status_perusahaan').AsString := Trim(cxtStatus.Text);
      tbl.FieldByName('pemilik').AsString := Trim(cxtPemilik.Text);
      tbl.FieldByName('tlp_pemilik').AsString := Trim(cxtTlpPemilik.Text);
      tbl.FieldByName('status_gedung').AsString := Trim(cxtGedung.Text);
      tbl.FieldByName('market').AsString := Trim(cxtArea.Text);
      tbl.FieldByName('karyawan').AsString := Trim(cxtKaryawan.Text);
      tbl.FieldByName('kendaraan').AsString := Trim(cxtKendaraan.Text);
      tbl.FieldByName('lama_usaha').AsString := Trim(cxtLama.Text);
      tbl.FieldByName('rekening').AsString := Trim(cxtRekening.Text);
      tbl.FieldByName('atasnama').AsString := Trim(cxtNamaRek.Text);
      tbl.FieldByName('purchasing').AsString := Trim(cxtPurchasing.Text);
      tbl.FieldByName('limit_kredit').AsFloat := cxsKredit.EditValue;
      tbl.FieldByName('sales').AsString := cxlSales.EditValue;
       tbl.FieldByName('kelompok').AsString := cxCmbKelHrg.EditValue ;
      if self.Jenis = 'tambah' then begin
        //tbl.FieldByName('user_input').AsString := aplikasi.NamaUser;
        //tbl.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
      end;
      if Self.Jenis = 'edit' then begin
        //tbl.FieldByName('user_edit').AsString := aplikasi.NamaUser;
        //tbl.FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
      end;

      if chkAktif.Checked then
        i := 1
      else
        i := 0;

     { if Trim(cxCmbKelHrg.Text) <> '' then begin
        if cxCmbKelHrg.Text = 'KELOMPOK 1' then
          tbl.FieldByName('kelompok').AsString := 'KEL1'
        else
          tbl.FieldByName('kelompok').AsString := 'KEL2';
      end
      else
        tbl.FieldByName('kelompok').AsString := '';    }

      tbl.FieldByName('f_aktif').AsInteger := i;
      tbl.FieldByName('akun_piutang').AsString := cxtNoAkun.Text;

      tbl.Post;

      MsgBox('Data Master Customer sudah disimpan.');
      
      ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);
    end;

  end;
end;

procedure TfrmMstCust.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  chkAktif.Checked := False;
  cxCmbKelHrg.Text := '';
  cxsKredit.Value := 0;
end;

procedure TfrmMstCust.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q, qstok: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM tbl_customer WHERE kode = ''%s''',
      [zQry.FieldByName('kode').AsString]);
    cxtKode.Text := q.FieldByName('kode').AsString;
    cxtNama.Text := q.FieldByName('nama').AsString;
    cxtKontak.Text := q.FieldByName('kontak').AsString;
    cxtAlamat.Text := q.FieldByName('alamat').AsString;
    cxtAlamat2.Text := q.FieldByName('alamat2').AsString;
    cxtKelurahan.Text := q.FieldByName('kelurahan').AsString;
    cxtKecamatan.Text := q.FieldByName('kecamatan').AsString;
    cxtKota.Text := q.FieldByName('kota').AsString;
    cxtProvinsi.Text := q.FieldByName('provinsi').AsString;
    cxtNegara.Text := q.FieldByName('negara').AsString;
    cxtTelp.Text := q.FieldByName('telpon').AsString;
    cxtFax.Text := q.FieldByName('fax').AsString;
    cxtHP.Text := q.FieldByName('hp').AsString;
    cxtUserWeb.Text := q.FieldByName('userweb').AsString;
    cxtPassword.Text := q.FieldByName('real_password').AsString;
    cxtEmail.Text := q.FieldByName('email').AsString;
    cxtNPWP.Text := q.FieldByName('npwp').AsString;
    cxtPKP.Text := q.FieldByName('pkp').AsString;
    cxtJenis.Text := q.FieldByName('jenis_kepemilikan').AsString;
    cxtUsaha.Text :=  q.FieldByName('jenis_usaha').AsString;
    cxtBrand.Text :=  q.FieldByName('brand').AsString ;
    cxtAlamatKirim.Text :=  q.FieldByName('alamat_kirim').AsString ;
    cxtStatus.Text :=  q.FieldByName('status_perusahaan').AsString;
    cxtPemilik.Text :=  q.FieldByName('pemilik').AsString ;
    cxtTlpPemilik.Text := q.FieldByName('tlp_pemilik').AsString ;
    cxtGedung.Text := q.FieldByName('status_gedung').AsString;
    cxtArea.Text :=  q.FieldByName('market').AsString ;
    cxtKaryawan.Text := q.FieldByName('karyawan').AsString;
    cxtKendaraan.Text := q.FieldByName('kendaraan').AsString ;
    cxtLama.Text := q.FieldByName('lama_usaha').AsString;
    cxtRekening.Text := q.FieldByName('rekening').AsString;
    cxtNamaRek.Text :=  q.FieldByName('atasnama').AsString;
    cxtPurchasing.Text := q.FieldByName('purchasing').AsString ;
    cxsKredit.EditValue := q.FieldByName('limit_kredit').AsFloat;
    cxlSales.EditValue := q.FieldByName('sales').AsString;
   { if q.FieldByName('kelompok').AsString = 'KEL1' then
      cxCmbKelHrg.Text := 'KELOMPOK 1'
    else
      cxCmbKelHrg.Text := 'KELOMPOK 2';  }
     cxCmbKelHrg.EditValue := q.FieldByName('kelompok').AsString;
    if q.FieldByName('f_aktif').AsInteger = 1 then
      chkAktif.Checked := True
    else
      chkAktif.Checked := False;

    pg.ActivePageIndex := 0;
    cxtKode.SetFocus;

    cxlAkun.EditValue := q.FieldByName('akun_piutang').AsString;
    cxtNoAkun.Text := q.FieldByName('akun_piutang').AsString;

    q.Close;
  end;
end;

procedure TfrmMstCust.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmMstCust.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
begin
  if Trim(cxtKode.Text) <> '' then begin
    q := OpenRS('SELECT * FROM tbl_so_head WHERE kode_customer = ''%s''',
      [cxtKode.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode Customer ini masih memiliki transaksi.');
    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('UPDATE tbl_customer SET f_aktif = 0 WHERE kode = ''' + cxtKode.Text + ''' ');
        dm.zConn.Commit;
        MsgBox('Kode barang: ' + cxtKode.Text + ' sudah berhasil di non aktifkan.');
        zQry.Close;
        zQry.Open;
        btnBatalClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;
end;

procedure TfrmMstCust.btnGenerateClick(Sender: TObject);
var
  q: TZQuery;
  sHasil, sPass: string;
begin
  if Trim(cxtNama.Text) <> '' then begin
    q := OpenRS('SELECT CONCAT(LEFT(REPLACE(''%s'','' '',''''),3),RIGHT(RAND(),5)) AS userweb, ' +
      'UPPER(SUBSTRING(MD5(RAND()) FROM 1 FOR 6)) as password',
      [cxtNama.Text]);
    sHasil := q.FieldByName('userweb').AsString;
    sPass := q.FieldByName('password').AsString;
    cxtUserWeb.Text := sHasil;
    cxtPassword.Text := sPass;
    q.Close;
  end;

end;


procedure TfrmMstCust.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
MousePos := ScreenToClient(MousePos);
If
(MousePos.X > ScrollBox1.Left) and
(MousePos.Y > ScrollBox1.Top) and
(MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
(MousePos.Y < ScrollBox1.Top + ScrollBox1.Height)
then ScrollBox1.Perform(WM_VSCROLL,1,0);

end;

procedure TfrmMstCust.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
MousePos := ScreenToClient(MousePos);
If
(MousePos.X > ScrollBox1.Left) and
(MousePos.Y > ScrollBox1.Top) and
(MousePos.X < ScrollBox1.Left + ScrollBox1.Width) and
(MousePos.Y < ScrollBox1.Top + ScrollBox1.Height)
then ScrollBox1.Perform(WM_VSCROLL,0,0);
end;

procedure TfrmMstCust.cxlAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtNoAkun.Text := zqrCoa.FieldByName('noakun').AsString;
end;

end.
