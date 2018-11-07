unit unFrmMstBrg;

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
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ShellAPI;

const
  CM_APPLYFILTER = WM_USER + 1;

type
  TfrmMstBrg = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    cxTblViewsatuan: TcxGridDBColumn;
    chkAktif: TcxCheckBox;
    image: TImage;
    btnBrowse: TButton;
    Shape1: TShape;
    OpenDlg: TOpenDialog;
    cxtNamaFile: TcxTextEdit;
    TabSheet3: TTabSheet;
    cxLabel13: TcxLabel;
    cxdTglStkAwal: TcxDateEdit;
    cxTblMutStok: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqMutStok: TZQuery;
    dsMutStok: TDataSource;
    cxTblMutStoktanggal: TcxGridDBColumn;
    cxTblMutStoksawal: TcxGridDBColumn;
    cxTblMutStoksakhir: TcxGridDBColumn;
    cxLabel14: TcxLabel;
    cxCmbGdg: TcxComboBox;
    btnProses: TButton;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel6: TcxLabel;
    cxTblMutStokColumn1: TcxGridDBColumn;
    cxTblMutStokColumn2: TcxGridDBColumn;
    cxlTipe: TcxLookupComboBox;
    cxlKategori: TcxLookupComboBox;
    cxlSubKategori: TcxLookupComboBox;
    zqTipe: TZQuery;
    dsTipe: TDataSource;
    zqKategori: TZQuery;
    dsKategori: TDataSource;
    zqskategori: TZQuery;
    dsSKategori: TDataSource;
    cxsKode: TcxSpinEdit;
    cxLabel7: TcxLabel;
    cxsStok: TcxSpinEdit;
    cxlSatuan: TcxLookupComboBox;
    zqSatuan: TZQuery;
    dsSatuan: TDataSource;
    cxLabel8: TcxLabel;
    cxtPacking: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxsBPUnit: TcxSpinEdit;
    cxtKodeZahir: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxsIsiPerPak: TcxSpinEdit;
    cxsStokPak: TcxSpinEdit;
    cxLabel12: TcxLabel;
    cxsBufferStok: TcxSpinEdit;
    cxLabel15: TcxLabel;
    cxtWarna: TcxTextEdit;
    cxTblViewColumn1: TcxGridDBColumn;
    cxTblViewColumn2: TcxGridDBColumn;
    cxTblViewColumn3: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    cxLabel16: TcxLabel;
    cxtPanjang: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxtLebar: TcxTextEdit;
    cxLabel18: TcxLabel;
    cxtTebal: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxtDiameter: TcxTextEdit;
    cxTblViewColumn4: TcxGridDBColumn;
    cxLabel20: TcxLabel;
    cxsBPUnitBom: TcxSpinEdit;
    chkDijual: TcxCheckBox;
    chkDibeli: TcxCheckBox;
    chkJobOrder: TcxCheckBox;
    TabSheet4: TTabSheet;
    cxLabel21: TcxLabel;
    cxsKode2: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxtDeskripsi2: TcxTextEdit;
    cxLabel27: TcxLabel;
    cxsBeratPerUnit: TcxSpinEdit;
    cxLabel28: TcxLabel;
    cxsBeratPerUnitB: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxtWarna2: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxtPanjang2: TcxTextEdit;
    cxlSatPanjang: TcxLookupComboBox;
    cxLabel25: TcxLabel;
    cxtLebar2: TcxTextEdit;
    cxlSatLebar: TcxLookupComboBox;
    cxLabel26: TcxLabel;
    cxtTebal2: TcxTextEdit;
    cxlSatTebal: TcxLookupComboBox;
    cxLabel29: TcxLabel;
    cxtFlowProcess: TcxTextEdit;
    cxLabel30: TcxLabel;
    cxtDiaDalam: TcxTextEdit;
    cxLabel31: TcxLabel;
    cxtDiaLuar: TcxTextEdit;
    cxtSatBeratPerUnit: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel32: TcxLabel;
    cxtPacking2: TcxTextEdit;
    cxLabel33: TcxLabel;
    cxtPnjLrs: TcxTextEdit;
    cxlSatDD: TcxLookupComboBox;
    cxlSatDL: TcxLookupComboBox;
    cxTextEdit2: TcxTextEdit;
    cxtBeratPerUnit: TcxTextEdit;
    cxtBPPerUnit: TcxTextEdit;
    chkPerluED: TcxCheckBox;
    btnUploadED: TButton;
    btnLihatED: TButton;
    ed: TEdit;
    OpenDlg2: TOpenDialog;
    cxTblViewColumn5: TcxGridDBColumn;
    chkGmbrED: TcxCheckBox;
    cxTblViewColumn6: TcxGridDBColumn;
    cxTblViewColumn7: TcxGridDBColumn;
    cxTblViewColumn8: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    cxLabel36: TcxLabel;
    cxLabel37: TcxLabel;
    cxsHrgKel1: TcxSpinEdit;
    cxsHrgKel2: TcxSpinEdit;
    btnWebcam: TButton;
    cxLabel34: TcxLabel;
    cxsBufferStok2: TcxSpinEdit;
    cxLabel35: TcxLabel;
    cxtLokasi: TcxTextEdit;
    cxtLokGrid: TcxTextEdit;
    TabSheet5: TTabSheet;
    cxLabel38: TcxLabel;
    cxtKode3: TcxSpinEdit;
    cxLabel39: TcxLabel;
    cxtDeskripsi3: TcxTextEdit;
    cxLabel40: TcxLabel;
    cxtBeratPerUnit2: TcxTextEdit;
    cxtSatBeratPerUnit2: TcxTextEdit;
    cxLabel41: TcxLabel;
    cxtSat_DiaRope: TcxTextEdit;
    cxLabel42: TcxLabel;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxLabel47: TcxLabel;
    cxLabel48: TcxLabel;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxtSat_PanjangRope: TcxTextEdit;
    cxtSat_GPM_PF: TcxTextEdit;
    cxtSat_GPM_PB: TcxTextEdit;
    cxtWarnaRope: TcxTextEdit;
    cxtSat_BPS: TcxTextEdit;
    cxLabel43: TcxLabel;
    cxsDiaRope: TcxTextEdit;
    cxsStrand: TcxTextEdit;
    cxsTPM: TcxTextEdit;
    cxsBPS: TcxTextEdit;
    cxsDPS: TcxTextEdit;
    cxsDPB: TcxTextEdit;
    cxsFPB: TcxTextEdit;
    cxsDPF: TcxTextEdit;
    cxsGPM_PF: TcxTextEdit;
    cxsGPM_PB: TcxTextEdit;
    cxsTwist: TcxTextEdit;
    cxsLay: TcxTextEdit;
    cxsPanjangRope: TcxTextEdit;
    cxChkCons: TcxCheckBox;
    TabSheet6: TTabSheet;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxtKode4: TcxSpinEdit;
    cxtDeskripsi4: TcxTextEdit;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cxCmbDept: TcxComboBox;
    cxCmbDivisi: TcxComboBox;
    cxTblCons: TcxGridDBTableView;
    cxGrdConsLevel1: TcxGridLevel;
    cxGrdCons: TcxGrid;
    btnTambahCons: TButton;
    zqrCons: TZQuery;
    dsCons: TDataSource;
    cxTblConsid: TcxGridDBColumn;
    cxTblConskode_brg: TcxGridDBColumn;
    cxTblConsdept: TcxGridDBColumn;
    cxTblConsdivisi: TcxGridDBColumn;
    btnHapusCons: TButton;
    cxLabel59: TcxLabel;
    cxLabel60: TcxLabel;
    cxsBeratPackPerUnit: TcxSpinEdit;
    cxLabel61: TcxLabel;
    cxChkLotNumber: TcxCheckBox;
    TabSheet7: TTabSheet;
    cxLabel62: TcxLabel;
    cxCmbJenisProses: TcxComboBox;
    btnTambahJnsProses: TButton;
    cxLabel63: TcxLabel;
    cxtKode5: TcxSpinEdit;
    cxLabel64: TcxLabel;
    cxtDeskripsi5: TcxTextEdit;
    cxlLabel63: TcxLabel;
    cxlBrg: TcxLookupComboBox;
    zqrBrg: TZQuery;
    dsBrg: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrPT: TZQuery;
    dsPT: TDataSource;
    cxGridDBTableView1kode_brg_proses: TcxGridDBColumn;
    cxGridDBTableView1proses: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    btnHapusProses: TButton;
    cxChkFAI: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBrowseClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure cxTblViewInitEditValue(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
      var AValue: Variant);
    procedure cxTblViewEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxlSatuanPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnUploadEDClick(Sender: TObject);
    procedure btnLihatEDClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnWebcamClick(Sender: TObject);
    procedure cxsBufferStok2PropertiesChange(Sender: TObject);
    procedure cxsBPUnitBomPropertiesChange(Sender: TObject);
    procedure cxsBeratPerUnitBPropertiesChange(Sender: TObject);
    procedure cxCmbDeptPropertiesCloseUp(Sender: TObject);
    procedure btnTambahConsClick(Sender: TObject);
    procedure btnHapusConsClick(Sender: TObject);
    procedure cxsBPUnitBomExit(Sender: TObject);
    procedure btnTambahJnsProsesClick(Sender: TObject);
    procedure btnHapusProsesClick(Sender: TObject);
  private
    //tbl: TZTable;
    FilterString: string;
    bEditBrgPPIC: Boolean;
    mJenisEdit: string;
    mKodeEdit: string;
    procedure CMApplyFilter(var Msg: TMessage); message CM_APPLYFILTER;
    procedure ClearAll;
    procedure ShowMutasiStok;
  public
    property JenisEdit: string read mJenisEdit write mJenisEdit;
    property KodeEdit: string read mKodeEdit write mKodeEdit;
  end;

var
  frmMstBrg: TfrmMstBrg;

implementation

uses unDm, unAplikasi, unTools, unFrmWebcam;

{$R *.dfm}

procedure TfrmMstBrg.CMApplyFilter(var Msg: TMessage);
begin
  if TObject(Msg.WParam) is TcxDBDataFilterCriteria then
    with TObject(Msg.WParam) as TcxDBDataFilterCriteria do
    begin
      Clear;
      FilterString := '%' + FilterString + '%';
      Root.AddItem(TObject(Msg.LParam), foLike, FilterString, FilterString);
    end;
end;

procedure TfrmMstBrg.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  aplikasi.log_('EDIT-TAMBAH BARANG');
  
  pg.ActivePageIndex := 0;

  {
  q := OpenRS('SELECT * FROM tbl_satuan ORDER BY satuan');
  while not q.Eof do begin
    cxcSat.Properties.Items.Add(q.FieldByName('satuan').AsString);
    q.Next;
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_kategori ORDER BY kategori');
  while not q.Eof do begin
    cxcKat.Properties.Items.Add(q.FieldByName('kategori').AsString);
    cxcKatKode.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_kategori_menu ORDER BY kategori');
  while not q.Eof do begin
    cxcKatMenu.Properties.Items.Add(q.FieldByName('kategori').AsString);
    cxcKatMenuKode.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;
  }

  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode AND f_aktif = 1');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  cxCmbGdg.ItemIndex := 0;
  q.Close;

  bEditBrgPPIC := False;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''EditBrgPPIC_QAC'' ' +
    'AND nama = ''%s'' AND wwn = ''1''',
    [Aplikasi.NamaUser]);
  if not q.IsEmpty then begin
    bEditBrgPPIC := True;
    btnTambah.Visible := False;
    btnHapus.Visible := False;
  end;
  q.Close;

  cxCmbDept.Properties.Items.Add('');
  q := OpenRS('SELECT DISTINCT dept FROM tbl_divisi ORDER BY dept');
  while not q.Eof do begin
    cxCmbDept.Properties.Items.Add(q.FieldByName('dept').AsString);
    q.Next;
  end;
  cxCmbDept.ItemIndex := 0;
  q.Close;

  zQry.Open;
  zqTipe.Open;
  zqsKategori.Open;
  zqSatuan.Open;
  zqKategori.Open;

  with cxCmbJenisProses do begin
    Properties.Items.Add('EKSTRUSI');
    Properties.Items.Add('GULUNG');
    Properties.Items.Add('TEKUK');
    Properties.Items.Add('BUNGKUS KERTAS');
    Properties.Items.Add('BUNGKUS PLASTIK');
    ItemIndex := 0;
  end;
  
end;

procedure TfrmMstBrg.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  tbl_sa, tbl_brg_det: TZTable;
  tbl, q, qSA: TZQuery;
  lst: TStringList;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  //if (Trim(cxsKode.Text) = '') or (cxsKode.Value = 0) then begin
  //  MsgBox('Kode Barang harus diisi.');
  //  cxsKode.SetFocus;
  //end

  if Trim(cxtDeskripsi.Text) = '' then begin
    MsgBox('Deskripsi Barang harus diisi.');
    cxtDeskripsi.SetFocus;
  end
  else begin

    if Trim(cxlSatuan.Text) = 'KG' then begin
      if cxsBPUnitBom.Value > 1 then begin

      end;
    end;

    if Trim(cxsKode.Text) = '' then cxsKode.Value := 0;
    tbl := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
      [cxsKode.Text]);

    f := True;
    if self.Jenis = 'tambah' then begin

      q := OpenRS('SELECT MAX(kode) as kode FROM tbl_barang');
      cxsKode.Value := q.FieldByName('kode').AsInteger + 1;
      q.Close;

      if CheckKey('tbl_barang','kode', QuotedStr(Trim(cxsKode.Text))) then begin
        MsgBox('Kode Barang sudah ada.');
        cxsKode.SelectAll;
        cxsKode.SetFocus;
        f := False;
      end
      else if CheckKey('tbl_barang', 'deskripsi', QuotedStr(UpperCase(cxtDeskripsi.Text))) then begin
        MsgBox('Deskripsi Barang sudah digunakan.');
        cxtDeskripsi.SelectAll;
        cxtDeskripsi.SetFocus;
        f := False;
      end
      else
        tbl.Insert;
    end
    else begin
      if not CheckKey('tbl_barang','kode',QuotedStr(Trim(cxsKode.Text))) then begin
        MsgBox('Kode Barang belum ada.');
        cxsKode.SelectAll;
        cxsKode.SetFocus;
        f := False;
      end
      else begin
        tbl.Locate('kode',cxsKode.Value,[loCaseInsensitive]);
        tbl.Edit;
      end;
    end;

    if f then begin
      tbl.FieldByName('kode').AsInteger := cxsKode.Value;
      tbl.FieldByName('deskripsi').AsString := Trim(cxtDeskripsi.Text);
      tbl.FieldByName('satuan').AsString := cxlSatuan.Text;
      tbl.FieldByName('kategori').AsString := cxlKategori.Text;
      tbl.FieldByName('subkategori').AsString := cxlSubKategori.Text;
      tbl.FieldByName('tipe').AsString := cxlTipe.Text;
      if self.Jenis = 'tambah' then begin
        tbl.FieldByName('user_input').AsString := aplikasi.NamaUser;
        tbl.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
      end;
      if Self.Jenis = 'edit' then begin
        tbl.FieldByName('user_edit').AsString := aplikasi.NamaUser;
        tbl.FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
      end;

      if chkAktif.Checked then
        i := 1
      else
        i := 0;
      tbl.FieldByName('f_aktif').AsInteger := i;
      tbl.FieldByName('packing').AsString := Trim(cxtPacking.Text);
      tbl.FieldByName('berat_per_unit').AsString := cxtBeratPerUnit.Text;
      //tbl.FieldByName('berat_per_unit').AsFloat := cxsBPUnit.Value;
      //tbl.FieldByName('berat_per_unit_b').AsFloat := cxsBPUnitBom.Value;
      tbl.FieldByName('berat_per_unit_b').AsFloat := cxsBeratPerUnitB.Value;
      tbl.FieldByName('isi_pak').AsFloat := cxsIsiPerPak.Value;
      tbl.FieldByName('b_stok').AsFloat := cxsBufferStok.Value;

      //tbl.FieldByName('berat_per_unit').AsFloat := cxsBeratPerUnit.Value;
      tbl.FieldByName('s_berat').AsString := cxtSatBeratPerUnit.Text;
      tbl.FieldByName('berat_per_unit_b').AsFloat := cxsBeratPerUnitB.Value;
      // 10-02-2016
      tbl.FieldByName('berat_per_unit_pack').AsFloat := cxsBeratPackPerUnit.Value;
      tbl.FieldByName('warna').AsString := cxtWarna2.Text;
      tbl.FieldByName('panjang').AsString := cxtPanjang2.Text;
      tbl.FieldByName('s_panjang').AsString := cxlSatPanjang.Text;
      tbl.FieldByName('lebar').AsString := cxtLebar2.Text;
      tbl.FieldByName('s_lebar').AsString := cxlSatLebar.Text;
      tbl.FieldByName('tebal').AsString := cxtTebal2.Text;
      tbl.FieldByName('s_tebal').AsString := cxlSatTebal.Text;
      tbl.FieldByName('flow_process').AsString := cxtFlowProcess.Text;
      tbl.FieldByName('diameter_dalam').AsString := cxtDiaDalam.Text;
      tbl.FieldByName('diameter_luar').AsString := cxtDiaLuar.Text;
      tbl.FieldByName('packing').AsString := cxtPacking2.Text;
      tbl.FieldByName('panjang_lurus').AsString := Trim(cxtPnjLrs.Text);
      tbl.FieldByName('s_diameter_dalam').AsString := cxlSatDD.Text;
      tbl.FieldByName('s_diameter_luar').AsString := cxlSatDL.Text;

      //tbl.FieldByName('warna').AsString := Trim(cxtWarna.Text);
      //tbl.FieldByName('panjang').AsString := Trim(cxtPanjang.Text);
      //tbl.FieldByName('lebar').AsString := Trim(cxtLebar.Text);
      //tbl.FieldByName('tebal').AsString := Trim(cxtTebal.Text);
      //tbl.FieldByName('diameter').AsString := Trim(cxtDiameter.Text);

      i := 0;
      if chkDijual.Checked then i := 1;
      tbl.FieldByName('f_dijual').AsInteger := i;
      i := 0;
      if chkDibeli.Checked then i := 1;
      tbl.FieldByName('f_dibeli').AsInteger := i;
      i := 0;
      if chkJobOrder.Checked then i := 1;
      tbl.FieldByName('f_joborder').AsInteger := i;

      if Trim(cxtNamaFile.Text) <> '' then
        TBlobField(tbl.FieldByName('image')).LoadFromFile(cxtNamaFile.Text);
      if Trim(ed.Text) <> '' then
        TBlobField(tbl.FieldByName('ed')).LoadFromFile(ed.Text);

      if chkPerluED.Checked then
        tbl.FieldByName('f_ed').AsInteger := 1
      else
        tbl.FieldByName('f_ed').AsInteger := 0;

      // harga kelompok
      tbl.FieldByName('hrg_kel1').AsFloat := cxsHrgKel1.Value;
      tbl.FieldByName('hrg_kel2').AsFloat := cxsHrgKel2.Value;

      tbl.FieldByName('lokasi').AsString := cxtLokasi.Text;
      tbl.FieldByName('lokasi_grid').AsString := cxtLokGrid.Text;

      // spesifikasi rope
      tbl.FieldByName('dia_rope').AsString := cxsDiaRope.Text;
      tbl.FieldByName('s_dia_rope').AsString := cxtSat_DiaRope.Text;
      tbl.FieldByName('strand').AsString := cxsStrand.Text;
      tbl.FieldByName('tpm').AsString := cxsTPM.Text;
      tbl.FieldByName('bps').AsString := cxsBPS.Text;
      tbl.FieldByName('s_bps').AsString := cxtSat_BPS.Text;
      tbl.FieldByName('dps').AsString := cxsDPS.Text;
      tbl.FieldByName('dpb').AsString := cxsDPB.Text;
      tbl.FieldByName('warna_rope').AsString := cxtWarnaRope.Text;
      tbl.FieldByName('fpb').AsString := cxsFPB.Text;
      tbl.FieldByName('dpf').AsString := cxsDPF.Text;
      tbl.FieldByName('gpm_pf').AsString := cxsGPM_PF.Text;
      tbl.FieldByName('s_gpm_pf').AsString := cxtSat_GPM_PF.Text;
      tbl.FieldByName('gpm_pb').AsString := cxsGPM_PB.Text;
      tbl.FieldByName('s_gpm_pb').AsString := cxtSat_GPM_PB.Text;
      tbl.FieldByName('twist').AsString := cxsTwist.Text;
      tbl.FieldByName('lay').AsSTring := cxsLay.Text;
      tbl.FieldByName('panjang_rope').AsString := cxsPanjangRope.Text;
      tbl.FieldByName('s_panjang_rope').AsString := cxtSat_PanjangRope.Text;

      if cxChkCons.Checked then
        tbl.FieldByName('f_consumable').AsInteger := 1
      else
        tbl.FieldByName('f_consumable').AsInteger := 0;

      if cxChkLotNumber.Checked then
        tbl.FieldByName('f_lotnumber').AsInteger := 1
      else
        tbl.FieldByName('f_lotnumber').AsInteger := 0;

      if cxChkFAI.Checked then
        tbl.FieldByName('f_fai').AsInteger := 1
      else
        tbl.FieldByName('f_fai').AsInteger := 0;

      tbl.Post;
      tbl.Close;

      // jika baru masukkan juga ke table stok awal
      if Self.Jenis = 'tambah' then begin
        if Aplikasi.TglStkAwal <> EncodeDate(1970,1,1) then begin
          tbl_sa := OpenTbl('tbl_stkawal');
          tbl_sa.Insert;
          tbl_sa.FieldByName('tanggal').AsDateTime := aplikasi.TglStkAwal;
          tbl_sa.FieldByName('kode').AsInteger := cxsKode.Value;
          tbl_sa.FieldByName('stokawal').AsFloat := 0;
          tbl_sa.FieldByName('kode_gdg').AsString := 'G01';
          tbl_sa.Post;
          tbl_sa.Close;
        end;
      end;

      lst := TStringList.Create;
      lst.CommaText := 'G01,G02,G03,G-ASIS';
      tbl_brg_det := OpenTbl('tbl_barang_det');
      for i := 0 to lst.Count - 1 do begin
        if not tbl_brg_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([cxsKode.Value, lst.Strings[i]]),[]) then begin
          tbl_brg_det.Insert;
          tbl_brg_det.FieldByName('kode_brg').AsInteger := cxsKode.Value;
          tbl_brg_det.FieldByName('kode_gdg').AsString := lst.Strings[i];
          tbl_brg_det.FieldByName('stok').AsFloat := 0;
          tbl_brg_det.Post;   
        end;
      end;
      tbl_brg_det.Close;

      {
      dm.zConn.ExecuteDirect(
        Format(
          'INSERT INTO tbl_barang_det ' +
          'VALUES(%s,''%s'',0),(%s,''%s'',0),(%s,''%s'',0)',
          [cxsKode.Text,'G01',cxsKode.Text,'G02',cxsKode.Text,'G03'])
      );
      }

      MsgBox('Data Master Barang sudah disimpan.');
      ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);
      if mJenisEdit = 'edit-barang' then
        ModalResult := mrOk;
    end;

  end;
end;

procedure TfrmMstBrg.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then begin
      if Components[i].ClassName = 'TcxTextEdit' then
        (Components[i] as TcxTextEdit).Text := '';
      if Components[i].ClassName = 'TcxSpinEdit' then
        (Components[i] as TcxSpinEdit).Value := 0;
    end;
  end;
  cxsKode.Text := '';
  cxlKategori.Text := '';
  cxlSatuan.Text := '';
  cxlSubkategori.Text := '';
  cxlTipe.Text := '';
  chkAktif.Checked := False;
  cxtPacking.Text := '';
  cxsBPUnit.Value := 0;
  cxsBPUnitBom.Value := 0;
  cxsStok.Value := 0;
  cxsStok.Value := 0;
  cxsBufferStok.Value := 0;
  zqMutStok.Close;
  image.Picture := nil;

  chkDijual.Checked := False;
  chkDibeli.Checked := False;
  chkJobOrder.Checked := False;

  cxlSatPanjang.Text := '';
  cxlSatLebar.Text := '';
  cxlSatTebal.Text := '';
  cxlSatDD.Text := '';
  cxlSatDL.Text := '';

  cxtBPPerUnit.Text := '';
  cxtBeratPerUnit.Text := '';
  ed.Text := '';
  chkPerluED.Checked := False;
  chkGmbrED.Checked := False;
  cxsBufferStok2.Value := 0;
  zqrCons.Close;
  cxsBeratPackPerUnit.Value := 0;
  cxChkLotNumber.Checked := False;
  zqrPT.Close;
  cxlBrg.Text := '';
  cxCmbJenisProses.ItemIndex := 0;
end;

procedure TfrmMstBrg.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q, qstok: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
  i: Integer;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
    Screen.Cursor := crSQLWait;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
      [zQry.FieldByName('kode').AsString]);
    cxsKode.Value := q.FieldByName('kode').AsInteger;
    cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    cxlKategori.Text := q.FieldByName('kategori').AsString;
    cxlSatuan.Text := q.FieldByName('satuan').AsString;
    cxlSubKategori.Text := q.FieldByName('subkategori').AsString;
    cxlTipe.Text := q.FieldByName('tipe').AsString;
    cxsIsiPerPak.Value := q.FieldByName('isi_pak').AsFloat;
    //cxsBPUnit.Value := q.FieldByName('berat_per_unit').AsFloat;
    cxtBPPerUnit.Text := q.FieldByName('berat_per_unit').AsString;
    cxsBPUnitBom.Value := q.FieldByName('berat_per_unit_b').AsFloat;
    // 10-02-2016
    cxsBeratPackPerUnit.Value := q.FieldByName('berat_per_unit_pack').AsFloat;
    cxsBufferStok.Value := q.FieldByName('b_stok').AsFloat;
    cxsBufferStok2.Value := q.FieldByName('b_stok').AsFloat;
    cxtWarna.Text := q.FieldByName('warna').AsString;
    cxtPanjang.Text := q.FieldByName('panjang').AsString;
    cxlSatPanjang.Text := q.FieldByName('s_panjang').AsString;
    cxtLebar.Text := q.FieldByName('lebar').AsString;
    cxlSatLebar.Text := q.FieldByName('s_lebar').AsString;
    cxtTebal.Text := q.FieldByName('tebal').AsString;
    cxlSatLebar.Text := q.FieldByName('s_lebar').AsString;
    cxtDiameter.Text := q.FieldByName('diameter').AsString;

    chkDibeli.Checked := not (q.FieldByName('f_dibeli').AsInteger = 0);
    chkDijual.Checked := not (q.FieldByName('f_dijual').AsInteger = 0);
    chkJobOrder.Checked := not (q.FieldByName('f_joborder').AsInteger = 0);

    cxsKode2.Text := q.FieldByName('kode').AsString;
    cxtDeskripsi2.Text := q.FieldByName('deskripsi').AsString;
    //cxsBeratPerUnit.Value := q.FieldByName('berat_per_unit').AsFloat;
    cxtBeratPerUnit.Text := q.FieldByName('berat_per_unit').AsString;
    cxtSatBeratPerUnit.Text := q.FieldByName('s_berat').AsString;
    cxsBeratPerUnitB.Value := q.FieldByName('berat_per_unit_b').AsFloat;
    cxtWarna2.Text := q.FieldByName('warna').AsString;
    cxtPanjang2.Text := q.FieldByName('panjang').AsString;
    cxlSatPanjang.Text := q.FieldByName('s_panjang').AsString;
    cxtLebar2.Text := q.FieldByname('lebar').AsString;
    cxlSatLebar.Text := q.FieldByName('s_lebar').AsString;
    cxtTebal2.Text := q.FieldByName('tebal').AsString;
    cxlSatTebal.Text := q.FieldByName('s_tebal').AsString;
    cxtFlowProcess.Text := q.FieldByName('flow_process').AsString;
    cxtDiaDalam.Text := q.FieldByName('diameter_dalam').AsString;
    cxlSatDD.Text := q.FieldByName('s_diameter_dalam').AsString;
    cxtDiaLuar.Text := q.FieldByName('diameter_luar').AsString;
    cxlSatDL.Text := q.FieldByName('s_diameter_luar').AsString;
    cxtPacking2.Text := q.FieldByName('packing').AsString;
    cxtPnjLrs.Text := q.FieldByName('panjang_lurus').AsString;

    cxsHrgKel1.Value := q.FieldByName('hrg_kel1').AsFloat;
    cxsHrgKel2.Value := q.FieldByName('hrg_kel2').AsFloat;


    if q.FieldByName('f_aktif').AsInteger = 1 then
      chkAktif.Checked := True
    else
      chkAktif.Checked := False;

    if q.FieldByName('f_ed').AsInteger = 1 then
      chkPerluED.Checked := True
    else
      chkPerluED.Checked := False;

    if q.FieldByName('f_lotnumber').AsInteger = 1 then
      cxChkLotNumber.Checked := True
    else
      cxChkLotNumber.Checked := False;

    if q.FieldByName('f_fai').AsInteger = 1 then
      cxChkFAI.Checked := True
    else
      cxChkFAI.Checked := False;

    // ambil gambar
    if not q.FieldByName('image').IsNull then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('image')).SaveToStream(Stream);
      Stream.Position := 0;

      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      image.Picture.Assign(jpg);

      Stream.Free;
      jpg.Free;
    end;

    if not q.FieldByName('ed').IsNull then begin
      TBlobField(q.FieldByName('ed')).SaveToFile(Aplikasi.AppPath + 'tmp.pdf');
      chkGmbrED.Checked := True;
    end
    else
      chkGmbrED.Checked := False;

    qstok := OpenRS('SELECT sf_get_stok(%s) AS stok',
      [cxsKode.Text]);
    cxsStok.Value := qstok.FieldByName('stok').AsFloat;
    qstok.Close;

    cxtLokasi.Text := q.FieldByName('lokasi').AsString;
    cxtLokGrid.Text := q.FieldByName('lokasi_grid').AsString;

    cxtKode3.Text := q.FieldByName('kode').AsString;
    cxtDeskripsi3.Text := q.FieldByName('deskripsi').AsString;

    cxtKode4.Text := q.FieldByName('kode').AsString;
    cxtDeskripsi4.Text := q.FieldByName('deskripsi').AsString;

    cxtKode5.Text := q.FieldByName('kode').AsString;
    cxtDeskripsi5.Text := q.FieldByName('deskripsi').AsString;

    cxtBeratPerUnit2.Text := q.FieldByName('berat_per_unit').AsString;
    cxtSatBeratPerUnit2.Text := q.FieldByName('s_berat').AsString;
    cxsDiaRope.Text := q.FieldByName('dia_rope').AsString;
    cxtSat_DiaRope.Text := q.FieldByName('s_dia_rope').AsString;
    cxsStrand.Text := q.FieldByName('strand').AsString;
    cxsTPM.Text := q.FieldByName('tpm').AsString;
    cxsBPS.Text := q.FieldByName('bps').AsString;
    cxtSat_BPS.Text := q.FieldByName('s_bps').AsString;
    cxsDPS.Text := q.FieldByName('dps').AsString;
    cxsDPB.Text := q.FieldByName('dpb').AsString;
    cxtWarnaRope.Text := q.FieldByName('warna_rope').AsString;
    cxsFPB.Text := q.FieldByName('fpb').AsString;
    cxsDPF.Text := q.FieldByName('dpf').AsString;
    cxsGPM_PF.Text := q.FieldByName('gpm_pf').AsString;
    cxtSat_GPM_PF.Text := q.FieldByName('s_gpm_pf').AsString;
    cxsGPM_PB.Text := q.FieldByName('gpm_pb').AsString;
    cxtSat_GPM_PB.Text := q.FieldByName('s_gpm_pb').AsString;
    cxsTwist.Text := q.FieldByName('twist').AsString;
    cxsLay.Text := q.FieldByName('lay').AsString;
    cxsPanjangRope.Text := q.FieldByName('panjang_rope').AsString;
    cxtSat_PanjangRope.Text := q.FieldByName('s_panjang_rope').AsString;

    if q.FieldByName('f_consumable').AsInteger = 1 then
      cxChkCons.Checked := True
    else
      cxChkCons.Checked := False;

    zqrCons.Close;
    zqrCons.ParamByName('kode_brg').AsInteger := q.FieldByName('kode').AsInteger;
    zqrCons.Open;

    zqrPT.Close;
    zqrPT.ParamByName('kode_brg').AsInteger := q.FieldByName('kode').AsInteger;
    zqrPT.Open;

    pg.ActivePageIndex := 0;
    q.Close;

    if bEditBrgPPIC then begin
      pg.Pages[0].Enabled := False;
      pg.Pages[1].Enabled := True;
    end
    else begin
      cxsKode.SetFocus;
    end;

    ShowMutasiStok;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmMstBrg.btnBrowseClick(Sender: TObject);
begin
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 550000 then
        MsgBox('Ukuran file tidak boleh lebih dari 500 Kb.')
      else begin
        image.Picture.LoadFromFile(OpenDlg.FileName);
        cxtNamaFile.Text := OpenDlg.FileName;
      end;
    end;
  finally
    Abort;
  end;

end;

procedure TfrmMstBrg.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  cxsKode.Properties.ReadOnly := False;
end;

procedure TfrmMstBrg.ShowMutasiStok;
var
  sTglStkAwal: string;
  q: TZQuery;
begin
  cxdTglStkAwal.Date := aplikasi.TglStkAwal;
  sTglStkAwal := DateToMySqlDate(Aplikasi.TglStkAwal);
  try
    dm.zConn.ExecuteDirect(
      Format('CALL sp_kartu_stok_brg(''%s'',''%s'',%s,''%s'',''%s'')',
        [
          sTglStkAwal,
          DateToMySqlDate(Aplikasi.TanggalServer),
          cxsKode.Text,
          unTools.GetHostName2,
          cxCmbGdg.Text
        ]
      )
    );
    with zqMutStok do begin
      Close;
      ParamByName('host').AsString := GetHostName2;
      ParamByName('gudang').AsString := cxCmbGdg.Text;
      Open;
    end;
  except
  end;
end;

procedure TfrmMstBrg.btnProsesClick(Sender: TObject);
begin
  inherited;
  ShowMutasiStok;
end;

procedure TfrmMstBrg.btnEditClick(Sender: TObject);
begin
  inherited;
  pg.ActivePageIndex := 3;
  cxsKode.Properties.ReadOnly := True;
end;

procedure TfrmMstBrg.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
begin
  if Trim(cxsKode.Text) <> '' then begin
    q := OpenRS('SELECT * FROM tbl_history WHERE kode_brg = %s',
      [cxsKode.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode ini masih memiliki transaksi.');

    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_barang WHERE kode = ' +
          cxsKode.Text);
        dm.zConn.Commit;
        MsgBox('Kode barang: ' + cxsKode.Text + ' sudah berhasil dihapus.');
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

procedure TfrmMstBrg.cxTblViewInitEditValue(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
  var AValue: Variant);
var
  EditingText: string;
begin
  {
  if Sender.Controller.FocusedRecord is TcxGridFilterRow then  // Filter row is focused
  begin
    EditingText := TcxTextEdit(AEdit).EditingText;
    StringReplace(EditingText, '%', '', [rfReplaceAll, rfIgnoreCase]);
    TcxTextEdit(AEdit).EditingText := EditingText;
  end;
  }
end;

procedure TfrmMstBrg.cxTblViewEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  {
  if Sender.Controller.FocusedRecord is TcxGridFilterRow then  // Filter row is focused
  begin
    FilterString := TcxTextEdit(Sender.Controller.EditingController.Edit).EditValue;
    PostMessage(Handle, CM_APPLYFILTER, Integer(Sender.DataController.Filter), Integer(AItem));
  end;
  }
end;

procedure TfrmMstBrg.cxlSatuanPropertiesChange(Sender: TObject);
begin
  inherited;
  if Trim(cxlSatuan.Text) = 'KG' then
    cxsBPUnitBom.Value := 1;
end;

procedure TfrmMstBrg.FormShow(Sender: TObject);
var
  q: TZQuery;
  shift: TShiftState;
  b: boolean;
begin
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''%s'' AND nama = ''%s''',
    ['LihatMasterBrg', aplikasi.NamaUser ]);
  if q.FieldByName('wwn').AsString = '1' then begin
    btnSimpan.Visible := False;
    btnTambah.Visible := False;
    btnHapus.Visible := False;
    btnEdit.Left := btnTambah.Left;
  end;
  q.Close;

  if mJenisEdit = 'edit-barang' then begin
    
    Self.btnEditClick(nil);
    zQry.Filter := 'kode = ' + mKodeEdit;
    zQry.Filtered := True;

    Self.Jenis := 'edit';
    shift := [ssLeft];
    b := true;

    Self.cxTblViewCellDblClick(nil, nil, mbLeft, shift, b);
    btnTambah.Visible := False;
    btnHapus.Visible := False;
    btnEdit.Left := btnTambah.Left;
    
  end;
end;

procedure TfrmMstBrg.btnUploadEDClick(Sender: TObject);
begin
  if not chkPerluED.Checked then Abort;
  try
    if OpenDlg2.Execute then begin
      if ObtainFileSize(OpenDlg2.FileName) > 1000000 then
        MsgBox('Ukuran file tidak boleh lebih dari 1 MB.')
      else begin
        ed.Text := OpenDlg2.FileName;
      end;
    end;
  finally
    Abort;
  end;
end;

procedure TfrmMstBrg.btnLihatEDClick(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
    [cxsKode.Text]);
  if q.FieldByName('ed').IsNull then begin
    q.Close;
    Abort;
  end
  else begin
    TBlobField(q.FieldByName('ed')).SaveToFile(aplikasi.AppPath + 'tmp.pdf');
  end;
  q.Close;
  
  try
  ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp.pdf'), nil, nil, SW_SHOWNORMAL);
  except
  end;
end;

procedure TfrmMstBrg.btnTambahClick(Sender: TObject);
begin
  inherited;
  chkAktif.Checked := True;
  cxtDeskripsi.SetFocus;
end;

procedure TfrmMstBrg.btnWebcamClick(Sender: TObject);
var
  fc: TfrmWebcam;
begin
  inherited;
  fc := TfrmWebcam.Create(Self);
  if fc.ShowModal = mrOk then begin
    try
    image.Picture.LoadFromFile(aplikasi.AppPath + '\~t.jpg');
    cxtNamaFile.Text := aplikasi.AppPath + '\~t.jpg';
    except
    end;
  end;
  fc.Release;
end;

procedure TfrmMstBrg.cxsBufferStok2PropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxsBufferStok.Value := cxsBufferStok2.Value;
  except
  end;
end;

procedure TfrmMstBrg.cxsBPUnitBomPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    
  except
  end;
end;

procedure TfrmMstBrg.cxsBeratPerUnitBPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxsBPUnitBom.Value := cxsBeratPerUnitB.Value;
  except
  end;
end;

procedure TfrmMstBrg.cxCmbDeptPropertiesCloseUp(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_divisi WHERE dept = ''%s'' ORDER BY divisi',
    [cxCmbDept.Text]);
  cxCmbDivisi.Clear;
  while not q.Eof do begin
    cxCmbDivisi.Properties.Items.Add(q.FieldByName('divisi').AsString);
    q.Next;
  end;
  q.Close;
end;

procedure TfrmMstBrg.btnTambahConsClick(Sender: TObject);
var
  q, q2: TZQuery;
begin
  if Trim(cxCmbDept.Text) = '' then begin
    MsgBox('Dept. harus diisi.');
    cxCmbDept.SetFocus;
  end
  else if Trim(cxCmbDivisi.Text) = '' then begin
    MsgBox('Divisi harus diisi.');
    cxCmbDivisi.SetFocus;
  end
  else begin
    q := OpenRS('SELECT * FROM tbl_barang_det_cons WHERE kode_brg = %s AND dept = ''%s'' AND divisi = ''%s''',
      [cxtKode4.Text, cxCmbDept.Text, cxCmbDivisi.Text]);
    if not q.IsEmpty then begin
      MsgBox('Dept dan divisi untuk barang ini sudah ada.');
      q.Close;
    end
    else begin
      q2 := OpenRS('SELECT * FROM tbl_barang_det_cons WHERE kode_brg = %s AND dept = ''%s'' AND divisi = ''%s''',
        [cxtKode4.Text, cxCmbDept.Text, cxCmbDivisi.Text]);
      q2.Insert;
      q2.FieldByName('kode_brg').AsString := cxtKode4.Text;
      q2.FieldByName('dept').AsString := cxCmbDept.Text;
      q2.FieldByName('divisi').AsString := cxCmbDivisi.Text;
      q2.Post;
      q2.Close;

      zqrCons.Close;
      zqrCons.Open;
    end;
    q.Close;
  end;
end;

procedure TfrmMstBrg.btnHapusConsClick(Sender: TObject);
begin
  try
  dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_barang_det_cons WHERE kode_brg = %s AND ' +
      'dept = ''%s'' AND divisi = ''%s''',
      [cxtKode4.Text, zqrCons.FieldByName('dept').AsString,
       zqrCons.FieldByName('divisi').AsString])
  );
  zqrCons.Close;
  zqrCons.Open;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmMstBrg.cxsBPUnitBomExit(Sender: TObject);
begin
  inherited;
  try
    cxsBeratPerUnitB.Value := cxsBPUnitBom.Value;
  except
  end;
end;

procedure TfrmMstBrg.btnTambahJnsProsesClick(Sender: TObject);
var
  q, q2: TZQuery;
begin
  if Trim(cxCmbJenisProses.Text) = '' then begin
    MsgBox('Jenis Proses diisi.');
    cxCmbJenisProses.SetFocus;
  end
  else if Trim(cxlBrg.Text) = '' then begin
    MsgBox('Kode barang proses harus diisi.');
    cxlBrg.SetFocus;
  end
  else begin
    q := OpenRS('SELECT * FROM tbl_barang_proses WHERE kode_brg = %s AND proses = ''%s''',
      [cxtKode4.Text, cxCmbJenisProses.Text]);
    if not q.IsEmpty then begin
      MsgBox('Jenis proses tambahan sudah ada.');
      q.Close;
    end
    else begin
      q2 := OpenRS('SELECT * FROM tbl_barang_proses WHERE kode_brg = %s AND proses = ''%s''',
        [cxtKode4.Text, cxCmbJenisProses.text]);
      q2.Insert;
      q2.FieldByName('kode_brg').AsString := cxtKode4.Text;
      q2.FieldByName('kode_brg_proses').Value := cxlBrg.EditValue;
      q2.FieldByName('proses').AsString := cxCmbJenisProses.Text;
      q2.Post;
      q2.Close;

      zqrPT.Close;
      zqrPT.Open;
    end;
    q.Close;
  end;
end;

procedure TfrmMstBrg.btnHapusProsesClick(Sender: TObject);
begin
  try
  dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_barang_proses WHERE kode_brg = %s AND ' +
      'proses = ''%s''',
      [cxtKode4.Text, zqrPT.FieldByName('proses').AsString])
  );
  zqrPT.Close;
  zqrPT.Open;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;



end.
