unit unFrmMstCustNew;

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
  TfrmMstCustNew = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxtKontak: TcxTextEdit;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    cxTblViewsatuan: TcxGridDBColumn;
    chkAktif: TcxCheckBox;
    zqTipe: TZQuery;
    dsTipe: TDataSource;
    zqKategori: TZQuery;
    dsKategori: TDataSource;
    zqskategori: TZQuery;
    dsSKategori: TDataSource;
    zqSatuan: TZQuery;
    dsSatuan: TDataSource;
    cxtNama: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxtKode: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtAlamat: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtKota: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtProvinsi: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxtNegara: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtTelp: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxtHP: TcxTextEdit;
    cxtFax: TcxTextEdit;
    cxtUserWeb: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtPassword: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxtEmail: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxtAlamat2: TcxTextEdit;
    btnGenerate: TButton;
    cxLabel13: TcxLabel;
    cxCmbKelHrg: TcxComboBox;
    cxLabel14: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTblViewColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
  private
    tbl: TZTable;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMstCustNew: TfrmMstCustNew;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmMstCustNew.FormCreate(Sender: TObject);
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
end;

procedure TfrmMstCustNew.btnSimpanClick(Sender: TObject);
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
      tbl.FieldByName('kota').AsString := Trim(cxtKota.Text);
      tbl.FieldByName('provinsi').AsString := Trim(cxtProvinsi.Text);
      tbl.FieldByName('negara').AsString := Trim(cxtNegara.Text);
      tbl.FieldByName('telpon').AsString := Trim(cxtTelp.Text);
      tbl.FieldByName('fax').AsString := Trim(cxtFax.Text);
      tbl.FieldByName('hp').AsString := Trim(cxtHP.Text);
      tbl.FieldByName('userweb').AsString := Trim(cxtUserWeb.Text);
      tbl.FieldByName('real_password').AsString := Trim(cxtPassword.Text);
      tbl.FieldByName('email').AsString := Trim(cxtEmail.Text);
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

      tbl.Post;

      MsgBox('Data Master Customer sudah disimpan.');
      
      ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);
    end;

  end;
end;

procedure TfrmMstCustNew.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  chkAktif.Checked := False;
  cxCmbKelHrg.Text := ''
end;

procedure TfrmMstCustNew.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
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
    cxtKota.Text := q.FieldByName('kota').AsString;
    cxtProvinsi.Text := q.FieldByName('provinsi').AsString;
    cxtNegara.Text := q.FieldByName('negara').AsString;
    cxtTelp.Text := q.FieldByName('telpon').AsString;
    cxtFax.Text := q.FieldByName('fax').AsString;
    cxtHP.Text := q.FieldByName('hp').AsString;
    cxtUserWeb.Text := q.FieldByName('userweb').AsString;
    cxtPassword.Text := q.FieldByName('real_password').AsString;
    cxtEmail.Text := q.FieldByName('email').AsString;
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
    q.Close;
  end;
end;

procedure TfrmMstCustNew.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmMstCustNew.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
begin
  if Trim(cxtKode.Text) <> '' then begin
    q := OpenRS('SELECT * FROM tbl_so_head WHERE kode_customer = %s',
      [cxtKode.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode Customer ini masih memiliki transaksi.');
    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('UPDATE tbl_customer SET f_aktif = 0 WHERE kode = ' +
          cxtKode.Text);
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

procedure TfrmMstCustNew.btnGenerateClick(Sender: TObject);
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


end.
