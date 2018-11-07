unit unFrmProsesLKM;

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
  IdMessageClient, IdSMTPBase, IdAttachmentFile, ShellAPI;

type
  TfrmProsesLKM = class(TfrmTplTrans)
    ScrollBox1: TScrollBox;
    cxtTujuan: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxlTujuanDept: TcxLookupComboBox;
    cxLabel9: TcxLabel;
    cxtDibuatOleh: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxtTglInput: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxtJamInput: TcxTextEdit;
    cxtUserInput: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxtSatuan: TcxTextEdit;
    cxmDeskKS: TcxMemo;
    cxsQty: TcxSpinEdit;
    btnCariNoSPK_Retur: TButton;
    btnCariKodeBrg: TButton;
    cxLabel8: TcxLabel;
    cxtStatus: TcxTextEdit;
    cxlSupp: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxlCust: TcxLookupComboBox;
    cxLabel18: TcxLabel;
    cxtShift: TcxTextEdit;
    cxtNoMesin: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxtKodeProduksi: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxtTagProduksi: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxtAlokasiBarang: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxLabel3: TcxLabel;
    cxtNoLKM: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxdTglLKM: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxmAkarMasalah: TcxMemo;
    cxLabel23: TcxLabel;
    cxCmbJenis: TcxComboBox;
    cxtJenisLainnya: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxCmbKetTambahan: TcxComboBox;
    cxmKetTambahan: TcxMemo;
    cxLabel24: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    Panel1: TPanel;
    btnSimpanLKM: TButton;
    btnKeluarLKM: TButton;
    zqrSupp: TZReadOnlyQuery;
    zqrCust: TZReadOnlyQuery;
    dsSupp: TDataSource;
    dsCust: TDataSource;
    cxChkSupp: TcxCheckBox;
    cxChkCust: TcxCheckBox;
    zqrBagian: TZReadOnlyQuery;
    dsBagian: TDataSource;
    cxChkAppLKM: TcxCheckBox;
    idSMTP: TIdSMTP;
    zqrUser: TZReadOnlyQuery;
    dsUser: TDataSource;
    cxlUser: TcxLookupComboBox;
    cxtDept: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxtNoSO: TcxTextEdit;
    GroupBox1: TGroupBox;
    btnTmbhImage: TButton;
    cxLabel25: TcxLabel;
    cxtnamamanager: TcxTextEdit;
    cxtemail: TcxTextEdit;
    cxtkategoribrg: TcxTextEdit;
    pnlDetailSPK: TPanel;
    btnCloseDetSPK: TButton;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxsHslProd: TcxSpinEdit;
    cxsSerTem: TcxSpinEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxsJmlKar1: TcxSpinEdit;
    cxsJmlKar2: TcxSpinEdit;
    btnSimpanDet: TButton;
    btnBatalDet: TButton;
    cxlNoRetur: TcxLabel;
    cxtNoRetur: TcxTextEdit;
    btnCariNoRetur: TButton;
    btnCariSO: TButton;
    GroupBox2: TGroupBox;
    btnTambahFile: TButton;
    cxLabel32: TcxLabel;
    OpenDlg: TOpenDialog;
    cxtNamaFile: TcxTextEdit;
    btnLihatFile: TButton;
    zqrBarang: TZReadOnlyQuery;
    dsBarang: TDataSource;
    cxlBarang: TcxLookupComboBox;
    cxLabel33: TcxLabel;
    cxLabel35: TcxLabel;
    cxsQtyGiling: TcxSpinEdit;
    cxLabel36: TcxLabel;
    cxsBrgKonversi: TcxSpinEdit;
    procedure btnBatalDetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxCmbJenisPropertiesChange(Sender: TObject);
    procedure btnSimpanLKMClick(Sender: TObject);
    procedure cxChkSuppClick(Sender: TObject);
    procedure cxChkCustClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKeluarLKMClick(Sender: TObject);
    procedure btnCariKodeBrgClick(Sender: TObject);
    procedure cxlUserPropertiesEditValueChanged(Sender: TObject);
    procedure btnCariNoSPK_ReturClick(Sender: TObject);
    procedure btnCloseDetSPKClick(Sender: TObject);
    procedure btnSimpanDetClick(Sender: TObject);
    procedure btnTmbhImageClick(Sender: TObject);
    procedure cxlTujuanPropertiesEditValueChanged(Sender: TObject);
    procedure pnlDetailSPKExit(Sender: TObject);
    procedure btnCariNoReturClick(Sender: TObject);
    procedure btnCariSOClick(Sender: TObject);
    procedure btnTambahFileClick(Sender: TObject);
    procedure btnLihatFileClick(Sender: TObject);
    procedure cxCmbKetTambahanClick(Sender: TObject);
  private
    mJenisLKM: string;
    mNoLKM: string;
    mLstKomponen, lstImage: TStringList;
    mApproval: string;
    procedure lkm_baru;
    procedure lkm_edit;
    procedure ValidasiLKMBaru;
    procedure ValidasiLKMEdit;
    procedure edit_lkm;
    procedure tindak_lanjut;
    procedure SendEmail;
    procedure SendEmailPPIC;
  public
    property JenisLKM: string read mJenisLKM write mJenisLKM;
    property NoLKM: string read mNoLKM write mNoLKM;
    property Approval: string read mApproval write mApproval;
  end;

var
  frmProsesLKM: TfrmProsesLKM;

implementation

uses unAplikasi, unDm, unTools, unFrmCari, unFrmLKM, unFrmUploadImageRK,
  unFrmImageViewerRK;

{$R *.dfm}

procedure TfrmProsesLKM.btnBatalDetClick(Sender: TObject);
begin
  inherited;
  pnlDetailSPK.Visible := False;
  cxtNoSPK.Text := '';
  cxtKodeBrg.Text := '';
  cxtNoSO.Text := '';
  cxtDeskripsi.Text := '';
  btnCariKodeBrg.Enabled := True;
  cxsQty.Properties.ReadOnly := False;
  cxsQty.Value := 0;
end;

procedure TfrmProsesLKM.FormShow(Sender: TObject);
begin
  //inherited;

  mLstKomponen := TStringList.Create;

  if mJenisLKM = 'lkm-baru' then begin
    Caption := 'LKM Baru';
    lblJudul.Caption := 'LKM Baru';
    cxmAkarMasalah.Properties.ReadOnly := True;
    cxCmbKetTambahan.Properties.ReadOnly := True;
    cxmKetTambahan.Properties.ReadOnly := True;
    cxtTglInput.Properties.ReadOnly := True;
    cxtJamInput.Properties.ReadOnly := True;
    cxtUserInput.Properties.ReadOnly := True;
    
    cxmAkarMasalah.Style.Color := clMoneyGreen;
    cxCmbKetTambahan.Style.Color := clMoneyGreen;
    cxmKetTambahan.Style.Color := clMoneyGreen;
    btnLihatFile.Visible := False;
  end
  else if mJenisLKM = 'tindak-lanjut' then begin
    Caption := 'Tindak Lanjut LKM';
    lblJudul.Caption := 'Tindak Lanjut LKM';

    if aplikasi.UserDept = 'DIR' then begin
      cxChkAppLKM.Caption := 'Approval Manajemen';
      cxChkAppLKM.Checked := True;
    end
    else begin
      cxChkAppLKM.Caption := 'Approval Departemen Terkait';
    end;

    btnTmbhImage.Caption := 'Lihat Image';
    btnLihatFile.Left := btnTambahFile.Left;
    btnTambahFile.Visible := False;

    tindak_lanjut;

  end
  else if mJenisLKM = 'lkm-edit' then begin
    Caption := 'Edit LKM';
    lblJudul.Caption := 'Edit LKM';
    btnTambahFile.Visible := False;
    btnLihatFile.Left := btnTambahFile.Left;

    edit_lkm;
  end
   else if mJenisLKM = 'app1' then begin
    Caption := 'Approval LKM (Manager QAC)';
    lblJudul.Caption := 'Approval LKM (Manager QAC)';
  end
  else if mJenisLKM = 'app2' then begin
    Caption := 'Approval LKM (Departemen Terkait)';
    lblJudul.Caption := 'Approval LKM (Departemen Terkait)';
  end
  else if mJenisLKM = 'app3' then begin
    Caption := 'Approval LKM (Management)';
    lblJudul.Caption := 'Approval LKM (Management)';
  end;

  if mJenisLKM = 'lkm-baru' then begin
    lkm_baru();
    cxtJamInput.Text := formatdatetime('hh:nn:ss',now);
    cxtTglInput.Text := formatdatetime('dd/mm/yyyy',now);
    cxtUserInput.Text := aplikasi.NamaUser
  end
  else if mJenisLKM = 'lkm-edit' then begin
    lkm_edit();
  end
  else if mJenisLKM = 'lihat-lkm' then begin
    btnLihatFile.Left := btnTambahFile.Left;
    btnTambahFile.Visible := False;
  end;
  cxsQtyGiling.Value := cxsQty.Value;
  cxsQtyGiling.Properties.MaxValue := cxsQty.Value;
  cxsQtyGiling.Properties.MinValue := 0;
end;

procedure TfrmProsesLKM.FormCreate(Sender: TObject);
var
  lst: TList;
begin
  inherited;
  aplikasi.log_('INPUT-EDIT LKM');

  cxCmbJenis.Properties.Items.Add('BAHAN BAKU / BAHAN PEMBANTU SAAT INSPEKSI MASUK');
  cxCmbJenis.Properties.Items.Add('BAHAN BAKU / BAHAN PEMBANTU PADA SAAT PROSES PRODUKSI BERLANGSUNG');
  cxCmbJenis.Properties.Items.Add('PRODUK TIDAK SESUAI');
  cxCmbJenis.Properties.Items.Add('LAINNYA');

  {
  cxCmbDeskTP.Properties.Items.Add('PERBAIKAN / MODIFIKASI MESIN');
  cxCmbDeskTP.Properties.Items.Add('PERUBAHAN SISTEM / STANDARD');
  cxCmbDeskTP.Properties.Items.Add('LAINNYA');
  }

  cxCmbKetTambahan.Properties.Items.Add('DITERIMA');
  cxCmbKetTambahan.Properties.Items.Add('REJECT / GILING');
  cxCmbKetTambahan.Properties.Items.Add('RETUR KE SUPPLIER');
  cxCmbKetTambahan.Properties.Items.Add('LAINNYA');

  cxlSupp.Enabled := False;
  cxlCust.Enabled := False;
  cxtJenisLainnya.Enabled := False;

  lst := TList.Create;
  lst.Add(zqrSupp);
  lst.Add(zqrCust);
  lst.Add(zqrBagian);
  //lst.Add(zqrUser);
  OpenSQL(lst);

  lstImage := TStringList.Create;

  pnlDetailSPK.Top := 60;
  pnlDetailSPK.Left := 205;

  zqrBarang.Open;
  //cxlBarang.Style.Color := clMoneyGreen;
end;

procedure TfrmProsesLKM.cxCmbJenisPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxCmbJenis.Text = 'LAINNYA' then begin
    cxtJenisLainnya.Enabled := True;
    cxtJenisLainnya.SetFocus;
  end
  else begin
    cxtJenisLainnya.Enabled := False;
  end;
end;

procedure TfrmProsesLKM.lkm_baru;
var
  i: integer;
begin
  cxtNoLKM.Text := GetLastFak('lkm');
  cxdTglLKM.Date := aplikasi.TanggalServer;

  cxCmbKetTambahan.Enabled := False;
  cxmKetTambahan.Enabled := False;
  cxmAkarMasalah.Enabled := False;
  cxCmbKetTambahan.Enabled := False;
  cxmKetTambahan.Enabled := False;

  cxtStatus.Text := 'OPEN';
  cxtDibuatOleh.Text := Aplikasi.NamaUser;
end;

procedure TfrmProsesLKM.btnSimpanLKMClick(Sender: TObject);
var
  q: TZQuery;
  sNoSO, sNoMo: String;
  qSoH, qSoD, qMo, qbrg: TZQuery;
begin

  if Jenis = 'lkm-edit' then begin
    ValidasiLKMBaru
  end;

  if Jenis = 'app1' then begin

    //MsgBox('proses approval manager QAC');
    if  cxChkAppLKM.Checked = False then begin
        MsgBox('Approval harus diisi.');
        cxChkAppLKM.SetFocus;
        abort;
    end
    else begin
      q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
          [cxtNoLKM.Text]);
        q.Edit;
        q.FieldByName('app1').AsInteger := 1;
        q.FieldByName('tgl_app1').AsDateTime := Aplikasi.NowServer;
        q.FieldByName('user_mgrqac').AsString := aplikasi.NamaUser;
        q.Post;
        q.Close;
        MsgBox('LKM sudah berhasil di approval.');
        Close;
    end;

  end;

  if mJenisLKM = 'lkm-baru' then
    ValidasiLKMBaru
  else if mJenisLKM = 'tindak-lanjut' then begin

    if aplikasi.UserDept <> 'DIR' then begin

      if aplikasi.UserDept <> cxlTujuanDept.Text then begin
         MsgBox('Harus di tindak lanjuti oleh departemen terkait.');
         Abort;
      end;

      if Trim(cxmAkarMasalah.Lines.Text) = '' then begin
        MsgBox('Akar masalah harus diisi.');
        cxmAkarMasalah.SetFocus;
      end
      else if cxChkAppLKM.Checked = False then begin
        MsgBox('Approval harus diisi.');
        cxChkAppLKM.SetFocus;
      end
      else begin
        q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
          [cxtNoLKM.Text]);
        q.Edit;
        q.FieldByName('akar_masalah').AsString := Trim(cxmAkarMasalah.Lines.Text);
        q.FieldByName('app2').AsInteger := 1;
        q.FieldByName('tgl_app2').AsDateTime := Aplikasi.NowServer;
        q.FieldByName('user_terkait').AsString := aplikasi.NamaUser;
        q.Post;
        q.Close;
        SendEmail;
        MsgBox('LKM sudah berhasil disimpan.');
        Close;
      end;
    end
    else begin
      if Trim(cxCmbKetTambahan.Text) = '' then begin
        MsgBox('Pilihan keterangan tambahan harus diisi.');
        cxCmbKetTambahan.SetFocus;
      end
      else if Trim(cxmKetTambahan.Lines.Text) = '' then begin
        MsgBox('Keterangan tambahan harus diisi.');
        cxmKetTambahan.SetFocus;
      end
      else if cxChkAppLKM.Checked =False then begin
        MsgBox('Approval harus diisi.');
        cxChkAppLKM.SetFocus;
      end
      else begin


        //Simpan ke tabel LKM
        q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
          [cxtNoLKM.Text]);
        q.Edit;
        q.FieldByName('jenis_ket').AsString := cxCmbKetTambahan.Text;
        q.FieldByName('ket_tambahan').AsString := Trim(cxmKetTambahan.Lines.Text);
        q.FieldByName('app3').AsInteger := 1;
        q.FieldByName('tgl_app3').AsDateTime := Aplikasi.NowServer;
        q.FieldByName('status').AsString := 'OPEN';
        q.FieldByName('tanggal_selesai').AsDateTime := aplikasi.TanggalServer;
        q.FieldByName('user_manajemen').AsString := aplikasi.NamaUser;
        q.Post;
        q.Close;      

      {
        if (cxCmbKetTambahan.Text = 'REJECT / GILING') and (cxlBarang.Text = '') then begin
          MsgBox('Nama Barang Hasil masih kosong.');
          abort;
        end;


        if cxlBarang.Text <> '' then begin
          //Simpan ke tabel SO
          sNoSo := GetLastFak('mts');
          UpdateFaktur(Copy(sNoSo,1,8));

          qSoH := OpenRS('SELECT * FROM tbl_so_head ' +
          'WHERE no_bukti = ''%s''',[cxtNoLKM.Text]);
          qSoH.Insert;
          qSoH.FieldByName('no_bukti').AsString := sNoSO;
          qSoH.FieldByName('tanggal').AsDateTime := aplikasi.Tanggal;
          qSoH.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qSoH.FieldByName('kode_customer').AsString := 'SDP';
          qSoH.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qSoH.FieldByName('user').AsString := Aplikasi.NamaUser;
          qSoH.FieldByName('user_dept').AsString := aplikasi.UserDept;
          qSoH.FieldByName('f_revisi').AsInteger := 0;
          qSoH.FieldByName('kategori1').AsString := 'GILING';
          qSoH.Post;

          qSoD := OpenRS('SELECT * FROM tbl_so_det ' +
          'WHERE no_bukti = ''%s''',[cxtNoLKM.Text]);
          qSoD.Insert;
          qSoD.FieldByName('no_bukti').AsString := sNoSO;
          qSoD.FieldByName('kode_brg').AsInteger := cxlBarang.EditValue;

          qbrg := OpenRS('SELECT * FROM tbl_barang ' +
            'WHERE kode = ''%s''',[cxlBarang.EditValue]);
            //if qbrg.FieldByName('berat_per_unit_b').AsInteger > 0 then begin
              qSoD.FieldByName('qty').AsFloat := qbrg.FieldByname('berat_per_unit_b').AsFloat * cxsBrgHasil.Value;
            //end;
          qSoD.FieldByName('qty_lama').AsFloat := 0;
          qSoD.FieldByName('satuan').AsString := qbrg.FieldByName('satuan').AsString;
          qSoD.FieldByName('f_completed').AsInteger := 0;
          qsod.FieldByName('jml_revisi').AsInteger := 0;
          qsod.FieldByName('qty_brg_hsl').AsFloat := cxsBrgHasil.Value;
          qsod.FieldByName('qty_non_kg').AsInteger := cxsQty.Value;
          qsod.FieldByName('notes').AsString := cxtNoLKM.Text;
          qsod.FieldByName('harga').AsInteger := 0;
          qsod.FieldByName('plt_completed').AsInteger := 0;
          qsod.FieldByName('kode_brg_input').AsString := cxtKodeBrg.Text;
          qsod.Post;

          qSoH.Close;
          qbrg.Close;
          qSoD.Close;

          //Simpan ke tabel MO
          sNoMO := GetLastFak('master_order');
          UpdateFaktur(Copy(sNoMO,1,7));

          qMo := OpenRS('SELECT * FROM tbl_mo ' +
          'WHERE no_mo = ''%s''',[cxtNoLKM.Text]);
          qMo.Insert;
          qMo.FieldByName('no_mo').AsString := sNoMo;
          qMo.FieldByName('no_so').AsString := sNoSO;

          if cxtNoSPK.Text = '' then begin
            qMo.FieldByName('f_spk').AsInteger := 0;
          end else begin
            qMo.FieldByName('f_spk').AsInteger := 1;
            qMo.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          end;

          qMo.FieldByName('kode_brg').AsInteger := cxlBarang.EditValue;
          qbrg := OpenRS('SELECT * FROM tbl_barang ' +
            'WHERE kode = ''%s''',[cxlBarang.EditValue]);
            //if qbrg.FieldByName('berat_per_unit_b').AsFloat > 0 then begin
              qMo.FieldByName('qty_mo').AsFloat := qbrg.FieldByname('berat_per_unit_b').AsFloat * cxsBrgHasil.Value;
              qMo.FieldByName('qty_so').AsFloat := qbrg.FieldByname('berat_per_unit_b').AsFloat * cxsBrgHasil.Value;
            //end;
          qMo.FieldByName('urutan').AsInteger := 0;
          qMo.FieldByName('f_selesai').AsInteger := 0;
          qMo.FieldByName('t_qty_spk').AsInteger := 0;
          qMo.FieldByName('t_qty_batal').AsInteger := 0;
          qMo.FieldByName('t_qty_prd').AsInteger := 0;
          qMo.FieldByName('f_app_mts').AsInteger := 0;
          qMo.FieldByName('f_tambahan').AsInteger := 0;
          qMo.FieldByName('f_app_spk').AsInteger := 0;
          qMo.FieldByName('f_cetak_spk').AsInteger := 0;
          qMo.FieldByName('jml_revisi').AsInteger := 0;
          qMo.FieldByName('qty_lama').AsInteger := 0;
          qMo.FieldByName('f_split').AsInteger := 0;
          qMo.FieldByName('app_cft').AsInteger := 0;
          qMo.FieldByName('f_tutupmanual').AsInteger := 0;
          qMo.Post;
          qMo.Close;
          qbrg.Close;          
        end;

        }

        if cxCmbKetTambahan.Text = 'REJECT / GILING' then begin
          q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
            [cxtNoLKM.Text]);
          q.Edit;
          q.FieldByName('qty_giling').AsFloat := cxsQtyGiling.Value;
          q.FieldByName('f_spk').AsInteger := 0;
          q.Post;
          q.Close;
        end;

        if cxCmbKetTambahan.Text = 'REJECT / GILING' then begin
          SendEmailPPIC;
        end;

        SendEmail;

        MsgBox('LKM sudah berhasil disimpan.');
        Close;
      end;
    end;
  end;

end;

procedure TfrmProsesLKM.cxChkSuppClick(Sender: TObject);
begin
  cxlSupp.Enabled := cxChkSupp.Checked;
  if cxChkSupp.Checked then begin
    cxChkCust.Checked := False;
    cxlCust.Enabled := False;
  end;
end;

procedure TfrmProsesLKM.cxChkCustClick(Sender: TObject);
begin
  cxlCust.Enabled := cxChkCust.Checked;
  if cxChkCust.Checked then begin
    cxChkSupp.Checked := False;
    cxlSupp.Enabled := False;
  end;
end;

procedure TfrmProsesLKM.ValidasiLKMBaru;
var
  tbl_l, tbl_k, tbl_img, tbl_prd, tbl_file: TZTable;
  tbl_mhead, tbl_mdet: TZTable;
  tbl_h, tbl_h1, qcek, tbl_inhead, tbl_indet: TZQuery;
  tbl_brg, q : TZQuery;
  sNoTrans, sNoTrans1, sNoMutasi, sPrefixSO, sGdg, sNoIn: string;
  img: TImage;
  i: Integer;
  today: TDateTime;
  f: TfrmLKM;
begin

  today:=Now;

  if mJenisLKM = 'lkm-baru' then begin
    if cxtNoRetur.Text <> '' then begin

    end
    else begin
      if (cxtKodeBrg.Text <> '') and (cxtNoSPK.Text = '') then begin
        //pengecekan stok berdasarkan barang
        q := OpenRS('SELECT satuan, kategori, sf_getstok_per_gdg(kode, ''G01'') stok2 FROM tbl_barang WHERE kode = ' + cxtKodeBrg.Text);
        if q.FieldByName('stok2').AsFloat < cxsQty.Value then begin
          MsgBox('Tidak boleh melebihi stok gudang.');
          Abort;
        end;
        q.Close;
      end;
     end;
  end;

  if cxCmbJenis.Text = '' then begin
    MsgBox('Pilih jenis ketidaksesuaian.');
    cxCmbJenis.SetFocus;
  end
  else if Trim(cxmDeskKS.Text) = '' then begin
    MsgBox('Deskripsi ketidaksesuaian dan Tindak Lanjut ketidaksesuaian harus diisi.');
    cxmDeskKS.SetFocus;
  end
  else if Trim(cxtKodeBrg.Text) = '' then begin
    MsgBox('Kode barang harus diisi.');
    cxtKodeBrg.SetFocus;
  end
   else if cxsQty.Value < 1 then begin
    MsgBox('Qty. LKM harus diisi.');
    cxsQty.SetFocus;
  end
  else if Trim(cxlTujuanDept.Text) = '' then begin
    MsgBox('Dept tujuan Harus diisi.');
    cxlTujuanDept.SetFocus;
  end
  else begin

    // cek kode supplier
    if cxChkSupp.Checked then begin
      if Trim(cxlSupp.Text) = '' then begin
        MsgBox('Supplier harus diisi.');
        Abort;
      end;
    end;

    // cek kode customer
    if cxChkCust.Checked then begin
      if Trim(cxlCust.Text) = '' then begin
        MsgBox('Customer harus diisi.');
        Abort;
      end;
    end;

    if mJenisLKM = 'lkm-baru' then begin
      //pengecekan stok barang berdasarkan spk
      if cxsJmlKar2.EditValue > 0 then begin
          if Copy(cxtNoSO.Text,1,3) = 'MTS' then begin
            qcek := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
                  'AND kode_gdg = ''%s''',
                  [cxtKodeBrg.Text,'G01']);
            if qcek.FieldByName('stok').AsFloat < cxsQty.EditValue then begin
              MsgBox('Qty melebihi stok gudang SDP');
              Abort;
            end;
            qcek.Close;
          end
          else if copy(cxtNoSO.Text,1,2) = 'SO' then begin
            qcek := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
                  'AND kode_gdg = ''%s''',
                  [cxtKodeBrg.Text,'G02']);
            if qcek.FieldByName('stok').AsFloat < cxsQty.EditValue then begin
              MsgBox('Qty melebihi stok gudang Customer');
              Abort;
            end;
            qcek.Close;
          end;
       end;
    end;

    tbl_l := OpenTbl('tbl_lkm');

    try
      if mJenisLKM = 'lkm-baru' then begin
        sNoTrans := GetLastFak('lkm');
        UpdateFaktur(Copy(sNoTrans,1,8));
      end
      else if Jenis = 'lkm-edit' then begin
        sNoTrans := cxtNoLKM.Text;
      end;

      dm.zConn.StartTransaction;

    if cxtNoRetur.Text <> '' then begin
      with tbl_l do begin
        if mJenisLKM = 'lkm-baru' then
          Insert
        else if Jenis = 'lkm-edit' then begin
          if Locate('no_bukti', cxtNoLKM.Text,[]) then
            Edit;
        end;

        FieldByName('no_bukti').AsString := sNoTrans;

        if cxChkSupp.Checked then
          FieldByName('kode_supp').AsString := zqrSupp.FieldByName('kode').AsString;
        if cxChkCust.Checked then
          FieldByName('kode_cust').AsString := zqrCust.FieldByName('kode').AsString;

        FieldByName('no_spk').AsString := Trim(cxtNoSPK.Text);
        FieldByName('no_so').AsString := Trim(cxtNoSO.Text);
        FieldByName('shift').AsString := Trim(cxtShift.Text);
        FieldByName('no_mesin').AsString := Trim(cxtNoMesin.Text);
        FieldByName('kode_produksi').AsString := Trim(cxtKodeProduksi.Text);
        FieldByName('no_tag_produksi').AsString := Trim(cxtTagProduksi.Text);
        FieldByName('alokasi_barang').AsString := Trim(cxtAlokasiBarang.Text);
        FieldByName('jenis_ks').AsString := cxCmbJenis.Text;
        FieldByName('deskripsi_ks').AsString := Trim(cxmDeskKS.Text);
        FieldByName('deskripsi_tp').AsString := Trim(cxtJenisLainnya.Text);

        if aplikasi.NamaUser = 'FERRY' then begin
        FieldByName('akar_masalah').AsString := Trim(cxmAkarMasalah.Text);
        end;

        if cxChkAppLKM.Checked then begin
          if mApproval = 'app1' then begin
            FieldByName('app1').AsInteger := 1;
            FieldByName('user_app1').AsString := Aplikasi.NamaUser;
          end
          else if mApproval = 'app2' then begin
            FieldByName('app2').AsInteger := 1;
            FieldByName('user_app2').AsString := aplikasi.NamaUser;
          end
          else if mApproval = 'app3' then begin
            FieldByName('app3').AsInteger := 1;
            FieldByName('status').AsString := 'CLOSE';
            FieldByName('tanggal_selesai').AsDateTime := aplikasi.TanggalServer;
            FieldByName('user_app3').AsString := aplikasi.NamaUser;
          end;
        end;

        FieldByName('tujuan_ke').AsString := '';
        FieldByName('tujuan_dept').AsString := cxtDept.Text;
        FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
        FieldByName('status').AsString := cxtStatus.Text;
        FieldByName('user').AsString := Aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('satuan').AsString := cxtSatuan.Text;
        FieldByName('qty').AsFloat := cxsQty.Value;
        FieldByName('no_retur').AsString := cxtNoRetur.Text;        

        if mJenisLKM = 'lkm-baru' then begin
          FieldByName('jenis_input').AsString := 'NON-POE';

          FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          FieldByName('dept_terkait').AsString := cxlTujuanDept.Text;
          FieldByName('manager_dept').AsString := cxtnamamanager.Text;
          FieldByName('manager_email').AsString := cxtemail.Text;
          FieldByName('kategori_barang').AsString := Trim(cxtkategoribrg.Text);
        end
        else if Jenis = 'lkm-edit' then begin
          FieldByName('jenis_input').AsString := 'POE';
          
          FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          FieldByName('dept_terkait').AsString := cxlTujuanDept.Text;
          FieldByName('manager_dept').AsString := cxtnamamanager.Text;
          FieldByName('manager_email').AsString := cxtemail.Text;
        end;
        Post;
      end;

      // simpan image jika ada
      if lstImage.Count > 0 then begin

        img := TImage.Create(Self);
        tbl_img := OpenTbl('tbl_img_lkm');

        for i := 0 to lstImage.Count - 1 do begin
          tbl_img.Insert;
          tbl_img.FieldByName('no_lkm').AsString := cxtNoLKM.Text;
          TBlobField(tbl_img.FieldByName('img')).LoadFromFile(lstImage.Strings[i]);
          tbl_img.Post;
        end;

        tbl_img.Close;
      end;

      // simpan file excel jika ada
      if cxtNamaFile.Text <> '' then begin
        try
          tbl_file := OpenTbl('tbl_xls_lkm');
          tbl_file.Insert;
          tbl_file.FieldByName('no_lkm').AsString := cxtNoLKM.Text;
          TBlobField(tbl_file.FieldByName('file')).LoadFromFile(cxtNamaFile.Text);
          tbl_file.Post;
          tbl_file.Close;
          cxtNamaFile.Text := '';
        except
        end;
      end;
      
  end
  else begin

      with tbl_l do begin
        if mJenisLKM = 'lkm-baru' then
          Insert
        else if Jenis = 'lkm-edit' then begin
          if Locate('no_bukti', cxtNoLKM.Text,[]) then
            Edit;
        end;

        FieldByName('no_bukti').AsString := sNoTrans;

        if cxChkSupp.Checked then
          FieldByName('kode_supp').AsString := zqrSupp.FieldByName('kode').AsString;
        if cxChkCust.Checked then
          FieldByName('kode_cust').AsString := zqrCust.FieldByName('kode').AsString;

        FieldByName('no_spk').AsString := Trim(cxtNoSPK.Text);
        FieldByName('no_so').AsString := Trim(cxtNoSO.Text);
        FieldByName('shift').AsString := Trim(cxtShift.Text);
        FieldByName('no_mesin').AsString := Trim(cxtNoMesin.Text);
        FieldByName('kode_produksi').AsString := Trim(cxtKodeProduksi.Text);
        FieldByName('no_tag_produksi').AsString := Trim(cxtTagProduksi.Text);
        FieldByName('alokasi_barang').AsString := Trim(cxtAlokasiBarang.Text);
        FieldByName('jenis_ks').AsString := cxCmbJenis.Text;
        FieldByName('deskripsi_ks').AsString := Trim(cxmDeskKS.Text);
        FieldByName('deskripsi_tp').AsString := Trim(cxtJenisLainnya.Text);

        if aplikasi.NamaUser = 'FERRY' then begin
        FieldByName('akar_masalah').AsString := Trim(cxmAkarMasalah.Text);
        end;

        if cxChkAppLKM.Checked then begin
          if mApproval = 'app1' then begin
            FieldByName('app1').AsInteger := 1;
            FieldByName('user_app1').AsString := Aplikasi.NamaUser;
          end
          else if mApproval = 'app2' then begin
            FieldByName('app2').AsInteger := 1;
            FieldByName('user_app2').AsString := aplikasi.NamaUser;
          end
          else if mApproval = 'app3' then begin
            FieldByName('app3').AsInteger := 1;
            FieldByName('status').AsString := 'CLOSE';
            FieldByName('tanggal_selesai').AsDateTime := aplikasi.TanggalServer;
            FieldByName('user_app3').AsString := aplikasi.NamaUser;
          end;
        end;

        FieldByName('tujuan_ke').AsString := '';
        FieldByName('tujuan_dept').AsString := cxtDept.Text;
        FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
        FieldByName('status').AsString := cxtStatus.Text;
        FieldByName('user').AsString := Aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('satuan').AsString := cxtSatuan.Text;
        FieldByName('qty').AsFloat := cxsQty.Value;
        FieldByName('no_retur').AsString := cxtNoRetur.Text;

        if mJenisLKM = 'lkm-baru' then begin
        FieldByName('jenis_input').AsString := 'NON-POE';

        FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
        FieldByName('dept_terkait').AsString := cxlTujuanDept.Text;
        FieldByName('manager_dept').AsString := cxtnamamanager.Text;
        FieldByName('manager_email').AsString := cxtemail.Text;
        FieldByName('kategori_barang').AsString := Trim(cxtkategoribrg.Text);
        end
        else if Jenis = 'lkm-edit' then begin
        FieldByName('jenis_input').AsString := 'POE';

        FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
        FieldByName('dept_terkait').AsString := cxlTujuanDept.Text;
        FieldByName('manager_dept').AsString := cxtnamamanager.Text;
        FieldByName('manager_email').AsString := cxtemail.Text;

        end;
        Post;
      end;

      // simpan image jika ada
      if lstImage.Count > 0 then begin

        img := TImage.Create(Self);
        tbl_img := OpenTbl('tbl_img_lkm');

        for i := 0 to lstImage.Count - 1 do begin
          tbl_img.Insert;
          tbl_img.FieldByName('no_lkm').AsString := cxtNoLKM.Text;
          TBlobField(tbl_img.FieldByName('img')).LoadFromFile(lstImage.Strings[i]);
          tbl_img.Post;
        end;

        tbl_img.Close;
      end;

      // simpan file excel jika ada
      if cxtNamaFile.Text <> '' then begin
        try
          tbl_file := OpenTbl('tbl_xls_lkm');
          tbl_file.Insert;
          tbl_file.FieldByName('no_lkm').AsString := cxtNoLKM.Text;
          TBlobField(tbl_file.FieldByName('file')).LoadFromFile(cxtNamaFile.Text);
          tbl_file.Post;
          tbl_file.Close;
          cxtNamaFile.Text := '';
        except
        end;
      end;

      if cxtNoSPK.Text = '' then begin
        if mJenisLKM = 'lkm-baru' then begin
          sNoMutasi := GetLastFak('mutasi');
          UpdateFaktur(Copy(sNoMutasi,1,7));

          // insert tabel history IN
          //tbl_h := OpenTbl('tbl_history');
          tbl_h := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoMutasi]);
          tbl_h.Insert;
          tbl_h.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_h.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_h.FieldByName('jam').AsString := aplikasi.JamString;
          tbl_h.FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          tbl_h.FieldByName('tipe').AsString := 'OUT_';
          tbl_h.FieldByName('qty').AsFloat := cxsQty.Value;
          tbl_h.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_h.FieldByName('gudang').AsString := 'G01';
          tbl_h.FieldByName('keterangan').AsString := sNoTrans;
          tbl_h.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_h.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_h.FieldByName('no_lkm').AsString := sNoTrans;
          tbl_h.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_h.Post;
          tbl_h.Close;

          // insert tabel history OUT
          //tbl_h1 := OpenTbl('tbl_history');
          tbl_h1 := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoMutasi]);
          tbl_h1.Insert;
          tbl_h1.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_h1.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_h1.FieldByName('jam').AsString := aplikasi.JamString;
          tbl_h1.FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          tbl_h1.FieldByName('tipe').AsString := 'IN_';
          tbl_h1.FieldByName('qty').AsFloat := cxsQty.Value;
          tbl_h1.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_h1.FieldByName('gudang').AsString := 'G03';
          tbl_h1.FieldByName('keterangan').AsString := sNoTrans;
          tbl_h1.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_h1.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_h1.FieldByName('no_lkm').AsString := sNoTrans;
          tbl_h1.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_h1.Post;
          tbl_h1.Close;

          //insert tabel mutasi head
          tbl_mhead := OpenTbl('tbl_trsmutasi_head');
          tbl_mhead.Insert;
          tbl_mhead.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_mhead.FieldByName('jam').AsDateTime := aplikasi.TanggalServer;
          tbl_mhead.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_mhead.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_mhead.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_mhead.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_mhead.FieldByName('f_batal').AsInteger  := 0;
          tbl_mhead.FieldByName('f_app').AsInteger := 1;
          tbl_mhead.FieldByName('user_app').AsString := 'MDA';
          tbl_mhead.FieldByName('tgl_app').AsDateTime := Aplikasi.NowServer;
          tbl_mhead.Post;
          tbl_mhead.Close;

          //insert tabel mutasi det
          tbl_mdet := OpenTbl('tbl_trsmutasi_det');
          tbl_mdet.Insert;
          tbl_mdet.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_mdet.FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          tbl_mdet.FieldByName('qty').AsFloat := cxsQty.Value;
          tbl_mdet.FieldByName('gudang_asal').AsString := 'G01';
          tbl_mdet.FieldByName('gudang_tujuan').AsString := 'G03';
          tbl_mdet.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_mdet.FieldByName('keterangan').AsString := sNoTrans;
          tbl_mdet.Post;
          tbl_mdet.Close;

          tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
            'AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, 'G01']);

          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat - cxsQty.Value;
          tbl_brg.Post;
          tbl_brg.Close;

          tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
            'AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, 'G03']);
          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat + cxsQty.Value;
          tbl_brg.Post;
          tbl_brg.Close;
        end;
      end
      else begin

        if cxsJmlKar1.Value > 0 then begin
          tbl_prd := OpenTbl('tbl_hsl_prd');
          tbl_prd.Insert;
          tbl_prd.FieldByName('no_spk').AsString := cxtNoSPK.Text;

          sNoTrans1 := GetLastFak('hasil_produksi');
          UpdateFaktur(Copy(sNoTrans1,1,8));

          tbl_prd.FieldByName('no_bukti').AsString := sNoTrans1;
          tbl_prd.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          //tbl_prd.FieldByName('qty_prod').AsString := '-' + cxsQty.Text;
          tbl_prd.FieldByName('qty_prod').AsString := 0 - cxsJmlKar1.Value;
          tbl_prd.FieldByName('qty_reject').AsInteger := 0;
          tbl_prd.FieldByName('qty_baik').AsInteger := 0;
          tbl_prd.FieldByName('qty_afkir').AsInteger := 0;
          tbl_prd.FieldByName('qty_retur').AsInteger := 0;
          tbl_prd.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_prd.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_prd.FieldByName('hostname').AsString := aplikasi.HostName;
          tbl_prd.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_prd.FieldByName('kg_sak').AsFloat := 25;
          tbl_prd.Post;
          tbl_prd.Close;


          sNoIn := GetLastFak('brg_in');
          UpdateFaktur(Copy(sNoIn,1,7));
          tbl_inhead := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''', [sNoIn]);
          tbl_indet := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''', [sNoIn]);

          tbl_inhead.Insert;
          tbl_inhead.FieldByName('no_bukti').AsString := sNoIn;
          tbl_inhead.FieldByName('tanggal').AsDateTime := aplikasi.NowServer;
          tbl_inhead.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_inhead.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_inhead.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          tbl_inhead.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          tbl_inhead.Post;
          tbl_inhead.Close;

          // simpan in_det
          tbl_indet.Insert;
          tbl_indet.FieldByName('no_bukti').AsString := sNoIn;
          tbl_indet.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
          tbl_indet.FieldByName('qty').AsFloat := cxsJmlKar1.Value;
          tbl_indet.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_indet.FieldByName('referensi').AsString := '';
          tbl_indet.FieldByName('keterangan').AsString := sNoTrans;
          tbl_indet.FieldByName('kode_gdg').AsString := 'G03';
          tbl_indet.FieldByName('no_so').AsString := cxtNoSO.Text;
          tbl_indet.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          tbl_indet.Post;
          tbl_indet.Close;

          // insert tabel history IN
          tbl_h := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoIn]);
          tbl_h.Insert;
          tbl_h.FieldByName('no_bukti').AsString := sNoIn;
          tbl_h.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_h.FieldByName('jam').AsString := aplikasi.JamString;
          tbl_h.FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          tbl_h.FieldByName('tipe').AsString := 'IN_';
          tbl_h.FieldByName('qty').AsFloat := cxsJmlKar1.Value;
          tbl_h.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_h.FieldByName('gudang').AsString := 'G03';
          tbl_h.FieldByName('keterangan').AsString :=sNoTrans;
          tbl_h.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_h.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_h.FieldByName('no_lkm').AsString := sNoTrans;
          tbl_h.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_h.FieldByName('no_so').AsString := cxtNoSO.Text;
          tbl_h.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          tbl_h.Post;
          tbl_h.Close;

          tbl_brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
            [cxtKodeBrg.Text]);
          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat + cxsJmlKar1.Value;
          tbl_brg.Post;
          tbl_brg.Close;

          tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
           'AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, 'G03']);
          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat + cxsJmlKar1.Value;
          tbl_brg.Post;
          tbl_brg.Close;

        end;
        if cxsJmlKar2.Value > 0 then begin
          sPrefixSO := Copy(cxtNoSO.Text, 1, 2);

          sNoMutasi := GetLastFak('mutasi');
          UpdateFaktur(Copy(sNoMutasi,1,7));

          // insert tabel history OUT
          //tbl_h := OpenTbl('tbl_history');
          tbl_h := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoMutasi]);
          tbl_h.Insert;
          tbl_h.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_h.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_h.FieldByName('jam').AsString := aplikasi.JamString;
          tbl_h.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
          tbl_h.FieldByName('tipe').AsString := 'OUT_';
          tbl_h.FieldByName('qty').AsFloat := cxsJmlKar2.Value;
          tbl_h.FieldByName('satuan').AsString := cxtSatuan.Text;
          if sPrefixSO = 'MT' then
            tbl_h.FieldByName('gudang').AsString := 'G01'
          else
            tbl_h.FieldByName('gudang').AsString := 'G02';
          tbl_h.FieldByName('keterangan').AsString :=sNoTrans;
          tbl_h.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_h.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_h.FieldByName('no_lkm').AsString := sNoTrans;
          tbl_h.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_h.FieldByName('no_so').AsString := cxtNoSO.Text;
          tbl_h.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          tbl_h.Post;

          // insert tabel history IN
          tbl_h.Insert;
          tbl_h.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_h.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_h.FieldByName('jam').AsString := aplikasi.JamString;
          tbl_h.FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          tbl_h.FieldByName('tipe').AsString := 'IN_';
          tbl_h.FieldByName('qty').AsFloat := cxsJmlKar2.Value;
          tbl_h.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_h.FieldByName('gudang').AsString := 'G03';
          tbl_h.FieldByName('keterangan').AsString :=sNoTrans;
          tbl_h.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_h.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_h.FieldByName('no_lkm').AsString := sNoTrans;
          tbl_h.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_h.FieldByName('no_so').AsString := cxtNoSO.Text;
          tbl_h.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          tbl_h.Post;
          tbl_h.Close;

          //insert tabel mutasi head
          tbl_mhead := OpenTbl('tbl_trsmutasi_head');
          tbl_mhead.Insert;
          tbl_mhead.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_mhead.FieldByName('jam').AsDateTime := aplikasi.TanggalServer;
          tbl_mhead.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          tbl_mhead.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl_mhead.FieldByName('user_dept').AsString := aplikasi.UserDept;
          tbl_mhead.FieldByName('tgl_input').AsString := DateTimeToStr(Now);
          tbl_mhead.FieldByName('f_batal').AsInteger  := 0;
          tbl_mhead.Post;
          tbl_mhead.Close;

          //insert tabel mutasi det
          tbl_mdet := OpenTbl('tbl_trsmutasi_det');
          tbl_mdet.Insert;
          tbl_mdet.FieldByName('no_bukti').AsString := sNoMutasi;
          tbl_mdet.FieldByName('kode_brg').AsInteger := StrToInt(cxtKodeBrg.Text);
          tbl_mdet.FieldByName('qty').AsFloat := cxsQty.Value;
          if sPrefixSO = 'MT' then
            tbl_mdet.FieldByName('gudang_asal').AsString := 'G01'
          else
            tbl_mdet.FieldByName('gudang_asal').AsString := 'G02';
          tbl_mdet.FieldByName('gudang_tujuan').AsString := 'G03';
          tbl_mdet.FieldByName('satuan').AsString := cxtSatuan.Text;
          tbl_mdet.FieldByName('keterangan').AsString := sNoTrans;
          tbl_mdet.Post;
          tbl_mdet.Close;

          if sPrefixSO = 'MT' then
            sGdg := 'G01'
          else
            sGdg := 'G02';

          tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
            'AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, sGdg]);

          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat - cxsJmlKar2.Value;
          tbl_brg.Post;
          tbl_brg.Close;

          tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
           'AND kode_gdg = ''%s''',
            [cxtKodeBrg.Text, 'G03']);
          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat + cxsJmlKar2.Value;
          tbl_brg.Post;
          tbl_brg.Close;
        end;

      end;
  end;

      dm.zConn.Commit;

      tbl_l.Close;

      MsgBox('LKM sudah disimpan dengan nomor : ' + sNoTrans);
      //SendEmail;
      Close;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

end;

procedure TfrmProsesLKM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Release;
end;

procedure TfrmProsesLKM.btnKeluarLKMClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmProsesLKM.edit_lkm;
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
    [mNoLKM]);
  if not q.IsEmpty then begin
    cxtNoLKM.Text := mNoLKM;
    cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;
    cxmDeskKS.Text := q.FieldByName('keterangan').AsString;
    cxtStatus.Text := q.FieldByName('status').AsString;
    cxtNoSPK.Text := q.FieldByName('no_spk').AsString;
    cxtNoSO.Text := q.FieldByName('no_so').AsString;
    cxtDibuatOleh.Text := q.FieldByName('user').AsString;

    cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    //cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    cxsQty.Value := q.FieldByName('qty').AsFloat;
    cxtSatuan.Text := q.FieldByName('satuan').AsString;

    btnCariNoSPK_Retur.Visible := False;

  end;
  q.Close;
end;

procedure TfrmProsesLKM.ValidasiLKMEdit;
var
  tbl_l, tbl_k: TZTable;
  sNoTrans: string;
begin
  if (not cxChkSupp.Checked) and (not cxChkCust.Checked) then begin
    MsgBox('Pilih salah satu, supplier atau customer.');
    cxChkSupp.SetFocus;
  end
  else if cxCmbJenis.Text = '' then begin
    MsgBox('Pilih jenis ketidaksesuaian.');
    cxCmbJenis.SetFocus;
  end
  else if Trim(cxtTujuan.Text) = '' then begin
    MsgBox('PIC LKM harus diisi.');
    cxtTujuan.SetFocus;
  end
  else if Trim(cxlTujuanDept.Text) = '' then begin
    MsgBox('Departemen harus diisi.');
    cxlTujuanDept.SetFocus;
  end
  else if Trim(cxmDeskKS.Text) = '' then begin
    MsgBox('Deskripsi ketidaksesuaian dan Tindak Lanjut ketidaksesuaian harus diisi.');
    cxmDeskKS.SetFocus;
  end
  else begin

    // cek kode supplier
    if cxChkSupp.Checked then begin
      if Trim(cxlSupp.Text) = '' then begin
        MsgBox('Supplier harus diisi.');
        Abort;
      end;
    end;

    // cek kode customer
    if cxChkCust.Checked then begin
      if Trim(cxlCust.Text) = '' then begin
        MsgBox('Customer harus diisi.');
        Abort;
      end;
    end;

    tbl_l := OpenTbl('tbl_lkm');

    try
      sNoTrans := GetLastFak('lkm');
      UpdateFaktur(Copy(sNoTrans,1,8));

      dm.zConn.StartTransaction;

      with tbl_l do begin
        Insert;

        FieldByName('no_bukti').AsString := sNoTrans;

        if cxChkSupp.Checked then
          FieldByName('kode_supp').AsString := zqrSupp.FieldByName('kode').AsString;
        if cxChkCust.Checked then
          FieldByName('kode_cust').AsString := zqrCust.FieldByName('kode').AsString;

        FieldByName('shift').AsString := Trim(cxtShift.Text);
        FieldByName('no_mesin').AsString := Trim(cxtNoMesin.Text);
        FieldByName('kode_produksi').AsString := Trim(cxtKodeProduksi.Text);
        FieldByName('no_tag_produksi').AsString := Trim(cxtTagProduksi.Text);
        FieldByName('alokasi_barang').AsString := Trim(cxtAlokasiBarang.Text);
        FieldByName('jenis_ks').AsString := cxCmbJenis.Text;
        FieldByName('deskripsi_ks').AsString := Trim(cxmDeskKS.Text);

        FieldByName('app1').AsInteger := 1;
        FieldByName('tujuan_ke').AsString := Trim(cxtTujuan.Text);
        FieldByName('tujuan_dept').AsString := cxlTujuanDept.Text;
        FieldByName('tanggal').AsDateTime := APlikasi.TanggalServer;
        FieldByName('status').AsString := cxtStatus.Text;
        FieldByName('user').AsString := Aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        Post;
      end;

      dm.zConn.Commit;

      tbl_l.Close;
      tbl_k.Close;

      MsgBox('LKM sudah disimpan dengan nomor : ' + sNoTrans);
      Close;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

end;

procedure TfrmProsesLKM.btnCariKodeBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode, fDesk: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    fDesk := s.Objects[1] as TField;

    cxtKodeBrg.Text := fKode.AsString;
    cxtDeskripsi.Text := fDesk.AsString;

    q := OpenRS('SELECT satuan, kategori, sf_getstok_per_gdg(kode, ''G01'') stok2 FROM tbl_barang WHERE kode = ' + cxtKodeBrg.Text);
    if q.FieldByName('stok2').AsFloat <= 0 then begin
      MsgBox('Stok barang ini kosong / 0.');
      cxtKodeBrg.Text := '';
      cxtDeskripsi.Text := '';
    end
    else begin
      cxsQty.Value := q.fieldbyname('stok2').AsFloat;
      cxtSatuan.Text := q.FieldByName('satuan').AsString;
      cxtkategoribrg.Text := q.FieldByName('kategori').AsString;
    end;
    q.Close;
    cxtNoSO.Text := '';
    cxsQty.Properties.ReadOnly := False;
  end;

end;

procedure TFrmProsesLKM.SendEmailPPIC;
var
  email : TIdMessage;
  lst, lstBody: TStringList;
  bdy: TIdText;
  i: Integer;
  q, qbrg: TZQuery;
  KonversiBrg: Double;
  tmp: real;
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
    else begin
      if mJenisLKM = 'tindak-lanjut' then begin
           q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
                [mNoLKM]);

           if aplikasi.UserDept = 'DIR' then begin
              email.Recipients.EMailAddresses := 'fredi@sdp.mail,' +
                'wulan@sdp.mail,karina@sdp.mail,faiz@sdp.mail,isjayatno@sdp.mail,alex@sdp.mail';
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

    if mJenisLKM = 'tindak-lanjut' then begin
        email.Subject := 'KEPUTUSAN HASIL REJECT/GILING dengan NO LKM#: ' + NoLKM;
    end
    else begin

    end;

    if mJenisLKM = 'tindak-lanjut' then begin
           q := OpenRS('SELECT * FROM tbl_lkm WHERE no_bukti = ''%s''',
                [mNoLKM]);
           if aplikasi.UserDept = 'DIR' then begin
              lstBody := TStringList.Create;
              lstBody.Add('<html>');
              lstBody.Add('<head>');
              lstBody.Add('</head>');
              lstBody.Add('<body>');
              lstBody.Add('<h3>Ada hasil reject/giling dari lkm yang harus dibuatkan SO (MTS) :</h3></br></br>');
              lstBody.Add('<pre>');
              lstBody.Add('Nomer LKM       : ' + mNoLKM);
              lstBody.Add('Qty Giling LKM  : ' + cxsQtyGiling.Text);
              {
              qbrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[cxlBarang.EditValue]);
              tmp := qbrg.fieldByName('berat_per_unit_b').AsFloat * cxsBrgHasil.Value;
              lstBody.Add('Nama Barang      : ' + qbrg.fieldByName('deskripsi').AsString);
              lstBody.Add('Qty Hsl Input    : ' + FormatFloat('#,#0.00',cxsBrgHasil.Value));
              lstBody.Add('Qty Hsl Konversi : ' + FormatFloat('#,#0.00', tmp));
              }
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

end;

procedure TFrmProsesLKM.SendEmail;
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
    email.From.Name := aplikasi.NamaUser;
    //MsgBox(zqrBagian.FieldByName('email').AsString);

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else begin
      if (mJenisLKM = 'lkm-baru') or (Jenis = 'lkm-edit') then begin
        email.Recipients.EMailAddresses :=
          cxtemail.Text + ',boby@sdp.mail,vivi@sdp.mail,ferry@sdp.mail,eva@sdp.mail,rio@sdp.mail,amin@sdp.mail,elia@sdp.mail,eko@sdp.mail'
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
              cxtemail.Text + ',boby@sdp.mail,vivi@sdp.mail,ferry@sdp.mail,sunanto@sdp.mail,marion@sdp.mail,yosef.servianto@sdp.mail,dwiharjo@sdp.mail,' +
                'rio@sdp.mail,eko@sdp.mail,tiwi@sdp.mail';
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
        email.Subject := 'LKM Baru NO#: ' + cxtNoLKM.Text;
    end
    else if mJenisLKM = 'tindak-lanjut' then begin
        email.Subject := 'Tindak lanjut LKM NO#: ' + cxtNoLKM.Text;
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
        lstBody.Add('Nomer LKM    : ' + cxtNoLKM.Text);
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
              lstBody.Add('Nomer LKM    : ' + cxtNoLKM.Text);
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
              lstBody.Add('Nomer LKM    : ' + cxtNoLKM.Text);
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
        {
        lstBody.Add('');
        lstBody.Add('<b>DATA CUSTOMER</b>');
        lstBody.Add('No. SO     : ' + cxeNoSO.Text);
        lstBody.Add('Kode Cust. : ' + cxtKodeCust.Text);
        lstBody.Add('Nama Cust. : ' + cxeNamaPerusahaan.Text);
        lstBody.Add('Lok. Pasang: ' + cxeLokasiPasang.Text);
        lstBody.Add('Tgl.SO     : ' + cxdTglPembelian.Text);
        lstBody.Add('Tgl. Kirim : ' + cxdTglPengiriman.Text);
        lstBody.Add('');
        lstBody.Add('<b>DATA BARANG</b>');
        lstBody.Add('Kode Brg.  : ' + cxtKodeBrg.Text);
        lstBody.Add('Nama Brg.  : ' + cxeNamaBrg.Text);
        lstBody.Add('Warna      : ' + cxtWarna.Text);
        lstBody.Add('Jml. Order : ' + cxsJmlOrder.Text);
        lstBody.Add('');
        lstBody.Add('<b>DESKRIPSI KOMPLAIN</b>');
        lstBody.Add(cxmDeskKomplain.Text);
        }

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

procedure TfrmProsesLKM.lkm_edit;
var
  q: TZQuery;
  i: Integer;
begin
  q := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',
    [mNoLKM]);
  if not q.IsEmpty then begin
    cxtNoLKM.Text := mNoLKM;

    cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;

    if not q.FieldByName('kode_supp').IsNull then begin
      cxChkSupp.Checked := True;
      cxlSupp.EditValue := q.FieldByName('kode_supp').AsString;
    end;

    if not q.FieldByName('kode_cust').IsNull then begin
      cxChkCust.Checked := True;
      cxlCust.EditValue := q.FieldByName('kode_cust').AsString;
    end;

    cxtShift.Text := q.FieldByName('shift').AsString;
    cxtNoMesin.Text := q.FieldByName('no_mesin').AsString;
    cxtKodeProduksi.Text := q.FieldByName('kode_produksi').AsString;
    cxtTagProduksi.Text := q.FieldByName('no_tag_produksi').AsString;
    cxtAlokasiBarang.Text := q.FieldByName('alokasi_barang').AsString;
    cxCmbJenis.Text := q.FieldByName('jenis_ks').AsString;
    cxlUser.Text := q.FieldByName('user_terkait').AsString;
    cxtDept.Text := q.FieldByName('user_dept').AsString;
    cxmDeskKS.Text := q.FieldByName('deskripsi_ks').AsString;
    cxmAkarMasalah.Text := q.FieldByName('akar_masalah').AsString;
    cxCmbKetTambahan.Text := q.FieldByName('jenis_ket').AsString;
    cxmKetTambahan.Text := q.FieldByName('ket_tambahan').AsString;

    cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;
    cxtStatus.Text := q.FieldByName('status').AsString;
    cxtNoSPK.Text := q.FieldByName('no_spk').AsString;
    cxtNoSo.Text := q.FieldByName('no_so').AsString;
    cxtDibuatOleh.Text := q.FieldByName('user').AsString;

    cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    cxsQty.Value := q.FieldByName('qty').AsFloat;
    cxtSatuan.Text := q.FieldByName('satuan').AsString;

    btnCariNoSPK_Retur.Enabled := False;
    btnCariKodeBrg.Enabled := False;


    cxtNoLKM.Properties.ReadOnly := True;
    cxdTglLKM.Properties.ReadOnly := True;
    cxtNoSPK.Properties.ReadOnly := True;
    cxtNoSO.Properties.ReadOnly := True;
    cxtKodeBrg.Properties.ReadOnly := True;
    cxtDeskripsi.Properties.ReadOnly := True;
    cxsQty.Properties.ReadOnly := True;
    cxtSatuan.Properties.ReadOnly := True;
    cxChkSupp.Properties.ReadOnly := True;
    cxChkCust.Properties.ReadOnly := True;
    cxlSupp.Properties.ReadOnly := True;
    cxlCust.Properties.ReadOnly := True;
    cxtShift.Properties.ReadOnly := True;
    cxtNoMesin.Properties.ReadOnly := True;
    cxtKodeProduksi.Properties.ReadOnly := True;
    cxtTagProduksi.Properties.ReadOnly := True;
    cxtAlokasiBarang.Properties.ReadOnly := True;
    cxCmbJenis.Properties.ReadOnly := True;
    cxlUser.Properties.ReadOnly := True;
    cxtDept.Properties.ReadOnly := True;
    cxmDeskKS.Properties.ReadOnly := True;
    cxCmbKetTambahan.Properties.ReadOnly := True;
    cxmKetTambahan.Properties.ReadOnly := True;
    cxtStatus.Properties.ReadOnly := True;
    cxtDibuatOleh.Properties.ReadOnly := True;
    cxtTglInput.Properties.ReadOnly := True;
    cxtJamInput.Properties.ReadOnly := True;
    cxtUserInput.Properties.ReadOnly := True;

    cxtNoLKM.Style.Color := clMoneyGreen;
    cxdTglLKM.Style.Color := clMoneyGreen;
    cxtNoSPK.Style.Color := clMoneyGreen;
    cxtNoSO.Style.Color := clMoneyGreen;
    cxtKodeBrg.Style.Color := clMoneyGreen;
    cxtDeskripsi.Style.Color := clMoneyGreen;
    cxsQty.Style.Color := clMoneyGreen;
    cxtSatuan.Style.Color := clMoneyGreen;
    cxChkSupp.Style.Color := clMoneyGreen;
    cxChkCust.Style.Color := clMoneyGreen;
    cxlSupp.Style.Color := clMoneyGreen;
    cxlCust.Style.Color := clMoneyGreen;
    cxtShift.Style.Color := clMoneyGreen;
    cxtNoMesin.Style.Color := clMoneyGreen;
    cxtKodeProduksi.Style.Color := clMoneyGreen;
    cxtTagProduksi.Style.Color := clMoneyGreen;
    cxtAlokasiBarang.Style.Color := clMoneyGreen;
    cxCmbJenis.Style.Color := clMoneyGreen;
    cxlUser.Style.Color := clMoneyGreen;
    cxtDept.Style.Color := clMoneyGreen;
    cxmDeskKS.Style.Color := clMoneyGreen;
    cxCmbKetTambahan.Style.Color := clMoneyGreen;
    cxmKetTambahan.Style.Color := clMoneyGreen;
    cxtStatus.Style.Color := clMoneyGreen;
    cxtDibuatOleh.Style.Color := clMoneyGreen;
    cxtTglInput.Style.Color := clMoneyGreen;
    cxtJamInput.Style.Color := clMoneyGreen;
    cxtUserInput.Style.Color := clMoneyGreen;

    if aplikasi.UserDept = 'DIR' then begin
      cxmAkarMasalah.Properties.ReadOnly := True;
      cxmAkarMasalah.Style.Color := clMoneyGreen;
      cxCmbKetTambahan.Properties.ReadOnly := False;
      cxCmbKetTambahan.Style.Color := clWindow;
      cxmKetTambahan.Properties.ReadOnly := False;
      cxmKetTambahan.Style.Color := clWindow;
    end
    else begin
      cxmAkarMasalah.Properties.ReadOnly := False;
      cxmAkarMasalah.Style.Color := clWindow;
      cxCmbKetTambahan.Properties.ReadOnly := True;
      cxCmbKetTambahan.Style.Color := clMoneyGreen;
      cxmKetTambahan.Properties.ReadOnly := True;
      cxmKetTambahan.Style.Color := clMoneyGreen;
    end;

  end;
  q.Close;
end;

procedure TfrmProsesLKM.cxlUserPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if cxlUser.Text <> '' then begin
    cxtDept.Text := zqrUser.FieldByName('user_dept').AsString;
  end;

end;

procedure TfrmProsesLKM.tindak_lanjut;
var
  q: TZQuery;
  i: Integer;
begin
  q := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',
    [mNoLKM]);
  if not q.IsEmpty then begin
    cxtNoLKM.Text := mNoLKM;

    cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;

    if not q.FieldByName('kode_supp').IsNull then begin
      cxChkSupp.Checked := True;
      cxlSupp.EditValue := q.FieldByName('kode_supp').AsString;
    end;

    if not q.FieldByName('kode_cust').IsNull then begin
      cxChkCust.Checked := True;
      cxlCust.EditValue := q.FieldByName('kode_cust').AsString;
    end;

    cxtShift.Text := q.FieldByName('shift').AsString;
    cxtNoMesin.Text := q.FieldByName('no_mesin').AsString;
    cxtKodeProduksi.Text := q.FieldByName('kode_produksi').AsString;
    cxtTagProduksi.Text := q.FieldByName('no_tag_produksi').AsString;
    cxtAlokasiBarang.Text := q.FieldByName('alokasi_barang').AsString;
    cxCmbJenis.Text := q.FieldByName('jenis_ks').AsString;
    //cxlUser.Text := q.FieldByName('user_dept_terkait').AsString;
    cxtDept.Text := q.FieldByName('user_dept').AsString;
    cxmDeskKS.Text := q.FieldByName('deskripsi_ks').AsString;
    cxmAkarMasalah.Text := q.FieldByName('akar_masalah').AsString;
    cxCmbKetTambahan.Text := q.FieldByName('jenis_ket').AsString;
    cxmKetTambahan.Text := q.FieldByName('ket_tambahan').AsString;

    cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;
    cxtStatus.Text := q.FieldByName('status').AsString;
    cxtNoSPK.Text := q.FieldByName('no_spk').AsString;
    cxtNoSo.Text := q.FieldByName('no_so').AsString;
    cxtDibuatOleh.Text := q.FieldByName('user').AsString;
    cxtUserInput.Text := q.FieldByName('user').AsString;
    cxtTglInput.Text := q.FieldByName('tanggal').AsString;
    
    cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    cxsQty.Value := q.FieldByName('qty').AsFloat;
    cxtSatuan.Text := q.FieldByName('satuan').AsString;
    cxlTujuanDept.Text := q.FieldByName('dept_terkait').AsString;



    btnCariNoSPK_Retur.Enabled := False;
    btnCariKodeBrg.Enabled := False;

    cxtNoLKM.Properties.ReadOnly := True;
    cxdTglLKM.Properties.ReadOnly := True;
    cxtNoSPK.Properties.ReadOnly := True;
    cxtNoSO.Properties.ReadOnly := True;
    cxtKodeBrg.Properties.ReadOnly := True;
    cxtDeskripsi.Properties.ReadOnly := True;
    cxsQty.Properties.ReadOnly := True;
    cxtSatuan.Properties.ReadOnly := True;
    cxChkSupp.Properties.ReadOnly := True;
    cxChkCust.Properties.ReadOnly := True;
    cxlSupp.Properties.ReadOnly := True;
    cxlCust.Properties.ReadOnly := True;
    cxtShift.Properties.ReadOnly := True;
    cxtNoMesin.Properties.ReadOnly := True;
    cxtKodeProduksi.Properties.ReadOnly := True;
    cxtTagProduksi.Properties.ReadOnly := True;
    cxtAlokasiBarang.Properties.ReadOnly := True;
    cxCmbJenis.Properties.ReadOnly := True;
    cxlUser.Properties.ReadOnly := True;
    cxtDept.Properties.ReadOnly := True;
    cxmDeskKS.Properties.ReadOnly := True;
    cxCmbKetTambahan.Properties.ReadOnly := True;
    cxmKetTambahan.Properties.ReadOnly := True;
    cxtStatus.Properties.ReadOnly := True;
    cxtDibuatOleh.Properties.ReadOnly := True;
    cxtTglInput.Properties.ReadOnly := True;
    cxtJamInput.Properties.ReadOnly := True;
    cxtUserInput.Properties.ReadOnly := True;

    cxtNoLKM.Style.Color := clMoneyGreen;
    cxdTglLKM.Style.Color := clMoneyGreen;
    cxtNoSPK.Style.Color := clMoneyGreen;
    cxtNoSO.Style.Color := clMoneyGreen;
    cxtKodeBrg.Style.Color := clMoneyGreen;
    cxtDeskripsi.Style.Color := clMoneyGreen;
    cxsQty.Style.Color := clMoneyGreen;
    cxtSatuan.Style.Color := clMoneyGreen;
    cxChkSupp.Style.Color := clMoneyGreen;
    cxChkCust.Style.Color := clMoneyGreen;
    cxlSupp.Style.Color := clMoneyGreen;
    cxlCust.Style.Color := clMoneyGreen;
    cxtShift.Style.Color := clMoneyGreen;
    cxtNoMesin.Style.Color := clMoneyGreen;
    cxtKodeProduksi.Style.Color := clMoneyGreen;
    cxtTagProduksi.Style.Color := clMoneyGreen;
    cxtAlokasiBarang.Style.Color := clMoneyGreen;
    cxCmbJenis.Style.Color := clMoneyGreen;
    cxlUser.Style.Color := clMoneyGreen;
    cxtDept.Style.Color := clMoneyGreen;
    cxmDeskKS.Style.Color := clMoneyGreen;
    cxCmbKetTambahan.Style.Color := clMoneyGreen;
    cxmKetTambahan.Style.Color := clMoneyGreen;
    cxtStatus.Style.Color := clMoneyGreen;
    cxtDibuatOleh.Style.Color := clMoneyGreen;
    cxtTglInput.Style.Color := clMoneyGreen;
    cxtJamInput.Style.Color := clMoneyGreen;
    cxtUserInput.Style.Color := clMoneyGreen;


    cxlTujuanDept.Properties.ReadOnly := True;
    cxlTujuanDept.Style.Color := clMoneyGreen;


    if aplikasi.UserDept = 'DIR' then begin
      cxmAkarMasalah.Properties.ReadOnly := True;
      cxmAkarMasalah.Style.Color := clMoneyGreen;
      cxCmbKetTambahan.Properties.ReadOnly := False;
      cxCmbKetTambahan.Style.Color := clWindow;
      cxmKetTambahan.Properties.ReadOnly := False;
      cxmKetTambahan.Style.Color := clWindow;
    end
    else begin
      cxmAkarMasalah.Properties.ReadOnly := False;
      cxmAkarMasalah.Style.Color := clWindow;
      cxCmbKetTambahan.Properties.ReadOnly := True;
      cxCmbKetTambahan.Style.Color := clMoneyGreen;
      cxmKetTambahan.Properties.ReadOnly := True;
      cxmKetTambahan.Style.Color := clMoneyGreen;
    end;

  end;
  q.Close;
end;

procedure TfrmProsesLKM.btnCariNoSPK_ReturClick(Sender: TObject);
var
  f: TfrmCari;
  lst: TStringList;
  fld: TField;
  q, q2, q3, qhp, qmo: TZQuery;
  gdg: String;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'spk';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    lst := f.Result;
    fld := lst.Objects[0] as TField;

    Screen.Cursor := crSQLWait;
    q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',
      [fld.AsString]);

    cxtNoSPK.Text := fld.AsString;

    if q.FieldByName('f_completed').AsInteger = 1 then begin
      MsgBox('');
    end
    else begin

      // ambil jumlah serah terima
      if Copy(q.FieldByName('no_so').AsString,1,2) = 'SO' then
        gdg := 'G02'
      else if Copy(q.FieldByName('no_so').AsString,1,3) = 'MTS' then
        gdg := 'G01';

      qmo := OpenRS('SELECT qty_so FROM tbl_mo WHERE no_so = ''%s'' ' +
        'and kode_brg = %s',
        [q.FieldByName('no_so').AsString, q.FieldByName('kode_brg').AsString]);
      q3 := OpenRS('SELECT SUM(qty) jml FROM tbl_history WHERE no_so = ''%s'' AND gudang = ''%s'' ' +
        'AND tipe = ''IN_'' AND LEFT(no_bukti,2) = ''IN'' AND no_spk = ''%s''',
        [q.FieldByName('no_so').AsString, gdg, cxtNoSPK.Text]);
      qhp := OpenRS('SELECT SUM(qty_prod) jml FROM tbl_hsl_prd WHERE no_spk = ''%s''',
        [cxtNoSPK.Text]);

      cxsSerTem.Value := 0;
      cxsJmlKar2.Value := 0;
      pnlDetailSPK.Visible := True;

      cxsSerTem.Value := q3.FieldByName('jml').AsFloat;
      cxsHslProd.Value := qhp.FieldByName('jml').AsFloat - q3.FieldByName('jml').AsFloat;
      cxsJmlKar1.Properties.MaxValue := cxsHslProd.Value;
      cxsJmlKar2.Properties.MaxValue := cxsSerTem.Value;
      cxsQty.Properties.ReadOnly := True;

      q3.Close;
      qhp.Close;

      cxtNoSO.Text := q.FieldByName('no_so').AsString;
      cxsQty.Value := q.FieldByName('qty').AsFloat;
      cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
      cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
      cxtSatuan.Text := q.FieldByName('satuan').AsString;
      cxtkategoribrg.Text := q.FieldByName('kategori').AsString;
      btnCariKodeBrg.Enabled := False;

      q2 := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',
        [cxtNoSO.text]);
      if not q2.IsEmpty then begin
        cxChkSupp.Enabled := False;
        cxlSupp.Enabled := False;
        cxChkCust.Checked := True;
        cxlCust.EditValue := q2.FieldByName('kode_customer').AsString;
      end;
      q2.Close;

      Screen.Cursor := crDefault;
      cxtNoRetur.Text := '';
      cxtNoSPK.Properties.ReadOnly := True;
      cxsQty.Properties.ReadOnly :=True;
    end;
    q.Close;
  end;

end;

procedure TfrmProsesLKM.btnCloseDetSPKClick(Sender: TObject);
begin
  inherited;
  btnBatalDetClick(nil);
end;

procedure TfrmProsesLKM.btnSimpanDetClick(Sender: TObject);
begin
  inherited;
  cxsQty.Value := cxsJmlKar1.Value + cxsJmlKar2.Value;
  pnlDetailSPK.Visible := False;
  cxLabel29.Caption := 'Jml. Serah Terima';
end;

procedure TfrmProsesLKM.btnTmbhImageClick(Sender: TObject);
var
  f: TfrmUploadImageRK;
  fv: TfrmImageViewerRK;
begin
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
    fv.NoLKM := cxtNoLKM.Text;
    fv.ShowModal;
  end;

end;

procedure TfrmProsesLKM.cxlTujuanPropertiesEditValueChanged(Sender: TObject);
var
  q : TZQuery;
  i : Integer;
begin
  //inherited;
      q := OpenRS('SELECT user_dept as bagian, nama as manager, email FROM tbl_user where jabatan=''MANAGER'' and user_dept= ''%s'' order by nama desc',
      [cxlTujuanDept.Text]);
      cxtnamamanager.Text := UpperCase(q.FieldByName('manager').AsString);
      cxtemail.Text := UpperCase(q.FieldByName('email').AsString);
      q.Close;
end;

procedure TfrmProsesLKM.pnlDetailSPKExit(Sender: TObject);
begin
  inherited;
  pnlDetailSPK.Visible := False;
end;

procedure TfrmProsesLKM.btnCariNoReturClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode, fDesk, fRet, fQty, fSO: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'retur';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    fDesk := s.Objects[1] as TField;
    fRet := s.Objects[2] as TField;
    fSO := s.Objects[3] as TField;
    fQty := s.Objects[4] as TField;

    cxtKodeBrg.Text := fKode.AsString;
    cxtDeskripsi.Text := fDesk.AsString;
    cxtNoRetur.Text := fRet.AsString;
    cxtNoSO.Text := fSO.AsString;
    cxsQty.Text := fQty.AsString;

    cxtNoSPK.Text :='';
    btnCariKodeBrg.Enabled := False;
    cxsQty.Properties.ReadOnly := True;

    q := OpenRS('SELECT satuan, kategori, sf_getstok_per_gdg(kode, ''G01'') stok2 FROM tbl_barang WHERE kode = ' + cxtKodeBrg.Text);
 //   if q.FieldByName('stok2').AsFloat <= 0 then begin
 //     MsgBox('Stok barang ini kosong / 0.');
 //     cxtKodeBrg.Text := '';
 //     cxtDeskripsi.Text := '';
 //   end
 //   else begin
      cxtSatuan.Text := q.FieldByName('satuan').AsString;
      cxtkategoribrg.Text := q.FieldByName('kategori').AsString;
 //   end;
    q.Close;
  end;

end;

procedure TfrmProsesLKM.btnCariSOClick(Sender: TObject);
var
  f: TfrmCari;
  lst: TStringList;
  fldSPK, fldSO, fldkode, fldgcust: TField;
  q, q2, q3, qhis, qbrg: TZQuery;
  gdg: String;
  qtyH, qtybrg, qty: Integer;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'so';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    Screen.Cursor := crSQLWait;
    lst := f.Result;
    fldSPK := lst.Objects[0] as TField;
    fldSO := lst.Objects[1] as TField;
    fldkode := lst.Objects[2] as TField;
    fldgcust := lst.Objects[6] as TField;

    cxtNoSO.Text := fldSO.AsString;
    qty := fldgcust.AsInteger;

    q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',
      [fldSPK.AsString]);

     q3 := OpenRS('SELECT * FROM tbl_sj_det WHERE no_so = ''%s'' and kode_brg=''%s''',
        [cxtNoSO.text,fldkode.AsString]);
      if not q3.IsEmpty then begin
        Screen.Cursor := crDefault;
        MsgBox('No. SO ini sudah dibuat Surat Jalan.');
        cxtNoSO.Text := '';
        cxtNoSPK.Text := '';
        cxsQty.Value := 0;
        cxtKodeBrg.Text := '';
        cxtDeskripsi.Text := '';
        cxtSatuan.Text := '';
        cxtkategoribrg.Text := '';
        Abort;
        q3.Close;
      end
      else begin
        if qty > 0 then begin
        
            cxsQty.Properties.ReadOnly := True;
            cxtNoSPK.Text := fldSPK.AsString;
            cxtNoSO.Text := q.FieldByName('no_so').AsString;
            cxsQty.Value := 0;
            cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
            cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
            cxtSatuan.Text := q.FieldByName('satuan').AsString;
            cxtkategoribrg.Text := q.FieldByName('kategori').AsString;
            btnCariKodeBrg.Enabled := False;

            pnlDetailSPK.Visible := True;
            cxLabel29.Caption := 'Jml. Stok G-Cust';
            cxsSerTem.Value := 0;
            cxsJmlKar2.Value := 0;
            cxsSerTem.Value := fldgcust.AsFloat;
            cxsJmlKar2.Value := fldgcust.AsFloat;
            cxsJmlKar1.Properties.MaxValue := cxsHslProd.Value;            
            cxsJmlKar2.Properties.MaxValue := cxsSerTem.Value;
            cxsQty.Properties.ReadOnly := True;
            
            q2 := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',
              [cxtNoSO.text]);
            if not q2.IsEmpty then begin
              cxChkSupp.Enabled := False;
              cxlSupp.Enabled := False;
              cxChkCust.Checked := True;
              cxlCust.EditValue := q2.FieldByName('kode_customer').AsString;
            end;
            q2.Close;

            Screen.Cursor := crDefault;
            cxtNoRetur.Text := '';
            cxtNoSPK.Properties.ReadOnly := True;
            cxsQty.Properties.ReadOnly :=True;
        end
        else begin
            Screen.Cursor := crDefault;
            MsgBox('Stok gudang customer (G-CUST) tidak mencukupi untuk melakukan LKM.');
            cxtNoSO.Text := '';
        end;
      end;
      Screen.Cursor := crDefault;
      q.Close;
  end

end;

procedure TfrmProsesLKM.btnTambahFileClick(Sender: TObject);
begin
  OpenDlg.Filter := 'Excel (*.xls)|*.XLS';
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 400000 then
        MsgBox('Ukuran file tidak boleh lebih dari 400KB.')
      else begin
        cxtNamaFile.Text := OpenDlg.FileName;
      end;
    end;
  finally
    Abort;
  end;
end;

procedure TfrmProsesLKM.btnLihatFileClick(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_xls_lkm WHERE no_lkm = ''%s''',
    [cxtNoLKM.Text]);
  if q.FieldByName('file').IsNull then begin
    q.Close;
    Abort;
  end
  else begin
    TBlobField(q.FieldByName('file')).SaveToFile(aplikasi.AppPath + 'tmp.xls');
  end;
  q.Close;

  try
  ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp.xls'), nil, nil, SW_SHOWNORMAL);
  except
  end;
end;

procedure TfrmProsesLKM.cxCmbKetTambahanClick(Sender: TObject);
begin
  inherited;

  if aplikasi.UserDept = 'DIR' then begin
    if cxCmbKetTambahan.Text = 'REJECT / GILING' then begin
      //cxlBarang.Enabled := True;
      cxsQtyGiling.Enabled := True;
    end else begin
      //cxlBarang.Enabled := False;
      //cxlBarang.EditValue := 0;
      cxsQtyGiling.Enabled := False;
    end;
  end else begin
    //cxlBarang.Enabled := False;
    //cxlBarang.EditValue := 0;
  end;

end;

end.
