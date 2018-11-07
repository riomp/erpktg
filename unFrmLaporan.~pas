unit unFrmLaporan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, frxClass, frxDBSet, DB, ZAbstractRODataset, ZDataset,
  frxExportXLS, frxExportPDF, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, ComCtrls, frxExportImage, frxExportHTML,DateUtils,
  frxExportCSV, frxChart;

type
  TfrmLaporan = class(TForm)
    btnCetak: TButton;
    btnClose: TButton;
    GroupBox1: TGroupBox;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    rptBrgMasuk: TfrxReport;
    zqrBrgMasuk: TZReadOnlyQuery;
    dsBrgMasuk: TDataSource;
    fdbBrgMasuk: TfrxDBDataset;
    rptStokBrg: TfrxReport;
    zqrStokBrg: TZReadOnlyQuery;
    dsStokBrg: TDataSource;
    fdbStokBrg: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    rptTrsBrgMasuk: TfrxReport;
    zqrTrsBrgMasuk: TZReadOnlyQuery;
    dsTrsBrgMasuk: TDataSource;
    fdbTrsBrgMasuk: TfrxDBDataset;
    rptTrsBrgKeluar: TfrxReport;
    zqrTrsBrgKeluar: TZReadOnlyQuery;
    dsTrsBrgKeluar: TDataSource;
    fdbTrsBrgKeluar: TfrxDBDataset;
    rptTrsMutasi: TfrxReport;
    zqrTrsMutasi: TZReadOnlyQuery;
    dsTrsMutasi: TDataSource;
    fdbTrsMutasi: TfrxDBDataset;
    rptHist: TfrxReport;
    zqrHist: TZReadOnlyQuery;
    dsHist: TDataSource;
    fdbHist: TfrxDBDataset;
    zqrNamaBrg: TZReadOnlyQuery;
    dsNamaBrg: TDataSource;
    rptTrsSpkPotong: TfrxReport;
    zqrTrsSpkPotong: TZReadOnlyQuery;
    dsTrsSpkPotong: TDataSource;
    fdbTrsSpkPotong: TfrxDBDataset;
    rptKartuStok: TfrxReport;
    zqrKartuStok: TZReadOnlyQuery;
    dsKartuStok: TDataSource;
    fdbKartuStok: TfrxDBDataset;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lstBox: TListBox;
    lstBox2: TListBox;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    zqrKategori: TZReadOnlyQuery;
    dsKategori: TDataSource;
    rptTrsKoreksi: TfrxReport;
    zqrTrsKoreksi: TZReadOnlyQuery;
    dsTrsKoreksi: TDataSource;
    fdbTrsKoreksi: TfrxDBDataset;
    rptTrsReturPenj: TfrxReport;
    zqrTrsReturPenj: TZReadOnlyQuery;
    dsReturPenj: TDataSource;
    fdbReturPenj: TfrxDBDataset;
    cxLabel18: TcxLabel;
    cxlNoTrans: TcxLookupComboBox;
    zqrNoTrans: TZReadOnlyQuery;
    dsNoTrans: TDataSource;
    frxHTMLExport1: TfrxHTMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    lstBox3: TListBox;
    lstBox4: TListBox;
    zqrSupp01: TZReadOnlyQuery;
    dsSupp01: TDataSource;
    rptRekapPOPerSupp: TfrxReport;
    zqrRekapPOPerSupp: TZReadOnlyQuery;
    dsRekapPOPerSupp: TDataSource;
    fdbRekapPOPerSupp: TfrxDBDataset;
    rptRekapPOPerBrg: TfrxReport;
    zqrRekapPOPerBrg: TZReadOnlyQuery;
    dsRekapPOPerBrg: TDataSource;
    fdbRekapPOPerBrg: TfrxDBDataset;
    TabSheet5: TTabSheet;
    lstBox5: TListBox;
    TabSheet6: TTabSheet;
    lstBox6: TListBox;
    rptBrgPerPO: TfrxReport;
    zqrBrgPerPO: TZReadOnlyQuery;
    dsBrgPerPO: TDataSource;
    frxBrgPerPO: TfrxDBDataset;
    GroupBox0: TGroupBox;
    cxdTgl0_1: TcxDateEdit;
    cxLabel37: TcxLabel;
    cxdTgl0_2: TcxDateEdit;
    rptPB_VS_HP: TfrxReport;
    zqrPB_VS_HP: TZReadOnlyQuery;
    dsPB_VS_HP: TDataSource;
    fdbPB_VS_HP: TfrxDBDataset;
    TabSheet7: TTabSheet;
    lstBox7: TListBox;
    rptLapPemakaianCons: TfrxReport;
    zqrLapPemakaianCons: TZReadOnlyQuery;
    dsLapPemakaianCons: TDataSource;
    fdbLapPemakaianCons: TfrxDBDataset;
    Label1: TLabel;
    zqrSubKategori: TZReadOnlyQuery;
    dsSubKategori: TDataSource;
    rptRekapPOJasaPerSupp: TfrxReport;
    zqrRekapPOJasaPerSupp: TZReadOnlyQuery;
    dsRekapPOJasaPerSupp: TDataSource;
    fdbRekapPOJasaPerSupp: TfrxDBDataset;
    TabSheet8: TTabSheet;
    lstBox8: TListBox;
    zqrDepartemen: TZReadOnlyQuery;
    dsDepartemen: TDataSource;
    rptLapSetFoto: TfrxReport;
    zqrLapSetFoto: TZReadOnlyQuery;
    dsLapSetFoto: TDataSource;
    fdbLapSetFoto: TfrxDBDataset;
    Label2: TLabel;
    zqrBrgJasa: TZReadOnlyQuery;
    dsBrgJasa: TDataSource;
    frxCSVExport1: TfrxCSVExport;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    PageControl1: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox13: TGroupBox;
    cxlCustomers: TcxLookupComboBox;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxlNmBrgHarga: TcxLookupComboBox;
    btnNmBrgHarga: TButton;
    GroupBox6: TGroupBox;
    cxd211_1: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxd211_2: TcxDateEdit;
    cxlCustomer211: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    TabSheet11: TTabSheet;
    GroupBox3: TGroupBox;
    cxdTgl1_5: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxdTgl2_5: TcxDateEdit;
    cxCmbJenisTrans: TcxComboBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxlNamaBrg: TcxLookupComboBox;
    chkNamaBrg: TcxCheckBox;
    cxCmbKategori2: TcxComboBox;
    cxLabel8: TcxLabel;
    btnCari18: TButton;
    TabSheet12: TTabSheet;
    GroupBox8: TGroupBox;
    cxdTgl25_1: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxdTgl25_2: TcxDateEdit;
    cxLabel23: TcxLabel;
    cxlNoTrans25: TcxLookupComboBox;
    cxLabel24: TcxLabel;
    cxlCustomer25: TcxLookupComboBox;
    cxLabel39: TcxLabel;
    cxlNmBrg: TcxLookupComboBox;
    btnCariBrg: TButton;
    cxLabel41: TcxLabel;
    cxlSubKategori: TcxLookupComboBox;
    cxLabel50: TcxLabel;
    cxlKategori25: TcxLookupComboBox;
    TabSheet13: TTabSheet;
    GroupBox11: TGroupBox;
    cxDateEdit3: TcxDateEdit;
    cxLabel30: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxlCust28: TcxLookupComboBox;
    cxlKategori28: TcxLookupComboBox;
    cxLabel33: TcxLabel;
    cxCmbStsSO: TcxComboBox;
    cxLabel34: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel35: TcxLabel;
    cxdTgl28_1: TcxDateEdit;
    cxLabel36: TcxLabel;
    cxdTgl28_2: TcxDateEdit;
    cxLabel42: TcxLabel;
    cxlNmBrg2: TcxLookupComboBox;
    btnCariBrg2: TButton;
    cxLabel43: TcxLabel;
    cxlSubkategori2: TcxLookupComboBox;
    cxChk26_GroupPerTgl: TcxCheckBox;
    cxLabel54: TcxLabel;
    cxlNoSO_28: TcxLookupComboBox;
    TabSheet14: TTabSheet;
    GroupBox5: TGroupBox;
    cxDateEdit1: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel15: TcxLabel;
    cxChkCustomer: TcxCheckBox;
    cxlCustomer: TcxLookupComboBox;
    cxChkKategori: TcxCheckBox;
    cxlKategori: TcxLookupComboBox;
    cxLabel19: TcxLabel;
    cxCmbUrut: TcxComboBox;
    cxLabel46: TcxLabel;
    cxCmbUserCFT: TcxComboBox;
    TabSheet15: TTabSheet;
    GroupBox4: TGroupBox;
    cxl_ksNmBrg: TcxLookupComboBox;
    cxLabel9: TcxLabel;
    cxd_ksTgl1: TcxDateEdit;
    cxLabel10: TcxLabel;
    cxd_ksTgl2: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxCmbGdgKS: TcxComboBox;
    cxLabel12: TcxLabel;
    btnCari: TButton;
    TabSheet16: TTabSheet;
    GroupBox12: TGroupBox;
    cxLabel40: TcxLabel;
    cxCmbDept1: TcxComboBox;
    cxLabel38: TcxLabel;
    cxCmbDivisi1: TcxComboBox;
    TabSheet17: TTabSheet;
    GroupBox9: TGroupBox;
    cxd51_1: TcxDateEdit;
    cxLabel25: TcxLabel;
    cxd51_2: TcxDateEdit;
    cxLabel26: TcxLabel;
    cxCmbStatus: TcxComboBox;
    cxLabel27: TcxLabel;
    cxCmbMesin: TcxComboBox;
    cxl51: TcxLookupComboBox;
    cxLabel28: TcxLabel;
    TabSheet18: TTabSheet;
    GroupBox7: TGroupBox;
    cxlSupp01: TcxLookupComboBox;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxlBrg01: TcxLookupComboBox;
    TabSheet19: TTabSheet;
    GroupBox15: TGroupBox;
    cxlSupp36: TcxLookupComboBox;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxlBrg36: TcxLookupComboBox;
    TabSheet20: TTabSheet;
    GroupBox14: TGroupBox;
    cxLabel48: TcxLabel;
    cxlDepartemen: TcxLookupComboBox;
    cxLabel47: TcxLabel;
    cxdTgl100: TcxDateEdit;
    cxLabel49: TcxLabel;
    cxdTgl101: TcxDateEdit;
    cxLabel53: TcxLabel;
    cxCmb81_Jenis: TcxComboBox;
    TabSheet21: TTabSheet;
    GroupBox10: TGroupBox;
    cxlCustPel: TcxLookupComboBox;
    cxLabel31: TcxLabel;
    cxCmbStatusPel: TcxComboBox;
    cxLabel29: TcxLabel;
    TabSheet22: TTabSheet;
    GroupBox2: TGroupBox;
    cxLabel2: TcxLabel;
    cxCmbOperator: TcxComboBox;
    cxsJmlStok: TcxSpinEdit;
    cxLabel3: TcxLabel;
    cxCmbKategori: TcxComboBox;
    cxLabel7: TcxLabel;
    cxCmbSubKtgr: TcxComboBox;
    TabSheet23: TTabSheet;
    GroupBox16: TGroupBox;
    cxlDept38: TcxLookupComboBox;
    cxLabel55: TcxLabel;
    cxLabel57: TcxLabel;
    cxdTgl38_1: TcxDateEdit;
    cxLabel58: TcxLabel;
    cxdTgl38_2: TcxDateEdit;
    zqrBagian: TZReadOnlyQuery;
    dsBagian: TDataSource;
    cxLabel56: TcxLabel;
    cxCmbApproval38: TcxComboBox;
    TabSheet24: TTabSheet;
    GroupBox17: TGroupBox;
    cxd111_1: TcxDateEdit;
    cxLabel59: TcxLabel;
    cxd111_2: TcxDateEdit;
    cxl111_cust: TcxLookupComboBox;
    cxLabel60: TcxLabel;
    zqrRekapLHP: TZReadOnlyQuery;
    dsRekapLHP: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    rptRekapLHP: TfrxReport;
    dsSumMesin: TDataSource;
    zqrSumMesin: TZReadOnlyQuery;
    fdbSumMesin: TfrxDBDataset;
    rptSumMesin: TfrxReport;
    dsSumAfval: TDataSource;
    zqrSumAfval: TZReadOnlyQuery;
    fdbSumAfval: TfrxDBDataset;
    dsSumDT: TDataSource;
    zqrSumDT: TZReadOnlyQuery;
    fdbSumDT: TfrxDBDataset;
    frxChartObject1: TfrxChartObject;
    ts1: TTabSheet;
    GroupBox18: TGroupBox;
    cxd1: TcxDateEdit;
    cxlbl1: TcxLabel;
    cxd2: TcxDateEdit;
    rptPoLPB: TfrxReport;
    zqrPoLPB: TZReadOnlyQuery;
    dsPoLPB: TDataSource;
    fdbPoLPB: TfrxDBDataset;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure lstBoxClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnCariBrg2Click(Sender: TObject);
    procedure btnNmBrgHargaClick(Sender: TObject);
    procedure btnCari18Click(Sender: TObject);
  private
    procedure HideAllGroupBox;
    procedure GenerateTableKartuStok;
    procedure ChangeParentGB;
    procedure CetakLap38;
  public
    { Public declarations }
  end;

var
  frmLaporan: TfrmLaporan;

implementation

uses unDm, unTools, unFrmLapUmum, unFrmCari, unFrmLapCCR, unAplikasi;

{$R *.dfm}

procedure TfrmLaporan.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  pg.ActivePageIndex := 0;

  ChangeParentGB;

  lstBox.Items.CommaText :=
    '"1.1   Transaksi Barang Masuk",' +     // 0
    '"1.2   Transaksi Baransg Keluar",' +    // 1
    '"1.3   Transaksi Mutasi Barang",' +    // 2
    '"1.4   Transaksi Koreksi",' +          // 3
    '"1.5   Transaksi SPK Potong",' +       // 4
    '"1.6   Transaksi Retur Penjualan",' +  // 6
    '"1.7   Stok Barang",' +                // 7
    '"1.8   History Transaksi",' +          // 8
    '"1.9   Kartu Stok",' +                  // 9
    '"1.10  Stok Barang Karantina",' +      // 10
    '"1.11  Laporan Disposisi"';            // 11

   lstBox2.Items.CommaText :=
    '"2.1   Sales Order Terbuka",' +
    // '"2.2   Rekapitulasi Nomer Surat Jalan Per SO",' +
    '"2.3   Quantity Pengiriman per SO - DETAIL",' + //'"2.3   Rekapitulasi Qty. Sales Order",' +
    // '"2.4   Rekapitulasi Surat Jalan Per Tanggal",' +
    '"2.5   Rekap SJ - DETAIL",' + //'"2.5   Rekapitulasi Surat Jalan Per Tanggal - DETAIL",' +
    '"2.6   Rekap Barang Terjual",' + //'"2.6   Rekapitulasi Barang Keluar Per Tanggal",' +
    '"2.7   Rekap SJ Umum ",' + // '"2.7   Rekapitulasi Surat Jalan Umum",' +
    '"2.8   Rekap SO - Detail",' +
    '"2.9   No. Urut Surat Jalan",' +
    '"2.10  Jadwal Pengiriman"';

    //'"2.2  History SO (VS Surat Jalan)"';  // 9

    lstBox3.Items.CommaText :=
      '"3.1   Rekap PO Per Supplier",' +
      '"3.2   Rekap PO Per Barang",' +
      '"3.3   History PO Per Barang",' +
      '"3.4   History Approval PO",' +
      '"3.5   Pengiriman Barang Per PO",' +
      '"3.6   Rekap PO Jasa Per Supplier",' +
      '"3.7   Rekap PO Per Jasa",' +
      '"3.8   History Approval FOBJ",' +
      '"3.9   Jadwal Kedatangan Pembelian",' +
      '"3.10  Laporan Rekap Pembelian"';
       
    lstBox4.Items.CommaText :=
      '"4.1   Daftar Resolusi Komplain",' +
      '"4.2   Rekap Resolusi Komplain",' +
      '"4.3   Daftar LKM",' +
      '"4.4   Rekap LKM"';

    lstBox5.Items.CommaText :=
      //'"5.1   Laporan SPK Per Mesin"';
      '"5.1   Laporan Serah Terima Per Mesin",' +
      '"5.2   Laporan Pengambilan Bahan VS Hasil Produksi VS Serah Terima"';

    lstBox6.Items.CommaText :=
      '"6.1   Laporan Jurnal Pengiriman",' +
      '"6.2   Pengiriman Peletan",' +
      '"6.3   Pembelian Afalan Per Bulan",' +
      '"6.4   Laporan Barang Yang Belum Terkirim",' +
      '"6.5   History Harga Peletan",' +
      '"6.6   Laporan Mingguan Peletan"';

    lstBox7.Items.CommaText :=
      '"7.1   Laporan Pemakaian Barang Consumable", ' +
      '"7.2   Rekap Hasil Produksi",  ' +
      '"7.3   Sumary Per Mesin"';

    if (Aplikasi.NamaUser = 'BOBY') or (aplikasi.NamaUser = 'ADMIN') then begin
      lstBox8.Items.CommaText :=
        '"8.1   Laporan Permintaan Revisi",' +
        '"8.2   Setting Foto WHL"';
    end
    else begin
      lstBox8.Items.CommaText :=
        '"8.1   Laporan Permintaan Revisi"';
    end;

  cxdTgl1.Date := Date;
  cxdTgl2.Date := Date;
  cxdTgl1_5.Date := Date;
  cxdTgl2_5.Date := Date;
  cxd_ksTgl1.Date := Date;
  cxd_ksTgl2.Date := Date;
  cxd211_1.Date := FDOM(Date);
  cxd211_2.Date := LDOM(Date);
  cxdTgl28_1.Date := FDOM(Date);
  cxdTgl28_2.Date := LDOM(Date);

  cxCmbOperator.Properties.Items.Add('=');
  cxCmbOperator.Properties.Items.Add('>');
  cxCmbOperator.Properties.Items.Add('<');
  cxCmbOperator.Properties.Items.Add('<=');
  cxCmbOperator.Properties.Items.Add('>=');
  cxCmbOperator.ItemIndex := 0;

  HideAllGroupBox;

  GroupBox0.Top := GroupBox1.Top;
  GroupBox0.Left := GroupBox1.Left;
  GroupBox2.Top := GroupBox1.Top;
  GroupBox2.Left := GroupBox1.Left;
  GroupBox3.Top := GroupBox1.Top;
  GroupBox3.Left := GroupBox1.Left;
  GroupBox4.Top := GroupBox1.Top;
  GroupBox4.Left := GroupBox1.Left;
  GroupBox5.Top := GroupBox1.Top;
  GroupBox5.Left := GroupBox1.Left;
  GroupBox6.Top := GroupBox1.Top;
  GroupBox6.Left := GroupBox1.Left;
  GroupBox7.Top := GroupBox1.Top;
  GroupBox7.Left := GroupBox1.Left;
  GroupBox8.Top := GroupBox1.Top;
  GroupBox8.Left := GroupBox1.Left;
  GroupBox9.Top := GroupBox1.Top;
  GroupBox9.Left := GroupBox1.Left;
  GroupBox10.Top := GroupBox1.Top;
  GroupBox10.Left := GroupBox1.Left;
  GroupBox11.Top := GroupBox1.Top;
  GroupBox11.Left := GroupBox1.Left;
  GroupBox12.Top := GroupBox1.Top;
  GroupBox12.Left := GroupBox1.Left;
  GroupBox13.Top := GroupBox1.Top;
  GroupBox13.Left := GroupBox1.Left;
  GroupBox14.Top := GroupBox1.Top;
  GroupBox14.Left := GroupBox1.Left;
  GroupBox15.Top := GroupBox1.Top;
  GroupBox15.Left := GroupBox1.Left;
  GroupBox16.Top := GroupBox1.Top;
  GroupBox16.Left := GroupBox1.Left;
  GroupBox17.Top := GroupBox1.Top;
  GroupBox17.Left := GroupBox1.Left;

  q := OpenRS('SELECT * FROM tbl_kategori_brg ORDER BY kategori');
  cxCmbKategori.Properties.Items.Add('SEMUA');
  cxCmbKategori2.Properties.Items.Add('SEMUA');
  while not q.Eof do begin
    if Trim(q.FieldByName('kategori').AsString) <> '' then begin
      cxCmbKategori.Properties.Items.Add(q.FieldByName('kategori').AsString);
      cxCmbKategori2.Properties.Items.Add(q.FieldByName('kategori').AsString);
    end;
    q.Next;
  end;
  q.Close;
  cxCmbKategori.ItemIndex := 0;
  cxCmbKategori2.ItemIndex := 0;

  q := OpenRS('SELECT * FROM tbl_subkategori_brg ORDER BY subkategori');
  cxCmbSubKtgr.Properties.Items.Add('SEMUA');
  while not q.Eof do begin
    cxCmbSubKtgr.Properties.Items.Add(q.FieldByName('subkategori').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbSubKtgr.ItemIndex := 0;

  cxCmbJenisTrans.Properties.Items.Add('SEMUA');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI BARANG MASUK (IN/)');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI BARANG KELUAR (OT/)');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI SURAT JALAN (SJ/)');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI MUTASI (MG/)');
  cxCmbJenisTrans.Properties.Items.Add('PEMBATALAN MUTASI (PM/)');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI SPK POTONG (SP/)');
  // cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI SPK ASSEMBLY ');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI RETUR PENJUALAN (RP/)');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI PENERIMAAN PO (PB/)');
  cxCmbJenisTrans.Properties.Items.Add('TRANSAKSI MUTASI CONSUMABLE (MGC/)');
  cxCmbJenisTrans.ItemIndex := 0;

  dm.zConn.ExecuteDirect('DELETE FROM tbl_tmp_rpt_kartu_stok ' +
    'WHERE `host` = ''' + GetHostName2 + '''');

  q := OpenRS('SELECT * FROM tbl_gudang WHERE f_aktif = 1 ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdgKS.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  cxCmbGdgKS.ItemIndex := 0;

  //Width := 929;
  Width := 1101;
  Height := 406;

  cxCmbUrut.Properties.Items.Add('UMUR SO');
  cxCmbUrut.Properties.Items.Add('UMUR SO - DIKELOMPOKKAN PER CUSTOMER');
  cxCmbUrut.Properties.Items.Add('UMUR SO - DIKELOMPOKKAN PER KATEGORI');
  cxCmbUrut.ItemIndex := 0;

  {
  zqrNamaBrg.Open;
  zqrSupp01.Open;
  zqrCust.Open;
  zqrKategori.Open;
  zqrNoTrans.Open;
  }

  cxCmbStatus.Properties.Items.Add('SEMUA');
  cxCmbStatus.Properties.Items.Add('KOMPLIT');
  cxCmbStatus.Properties.Items.Add('OPEN');
  cxCmbStatus.ItemIndex := 0;

  q := OpenRS('SELECT kode FROM tbl_mesin ORDER BY kode');
  cxCmbMesin.Properties.Items.Add('SEMUA');
  while not q.Eof do begin
    cxCmbMesin.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbMesin.ItemIndex := 0;

  cxCmbStatusPel.Properties.Items.CommaText := 'SEMUA,OPEN,KOMPLIT';
  cxCmbStatusPel.ItemIndex := 0;

  cxCmbStsSO.Properties.Items.CommaText := 'SEMUA,SELESAI,"BLM. SELESAI"';
  cxCmbStsSO.ItemIndex := 0;

  cxCmbDept1.Properties.Items.Add('');
  q := OpenRS('SELECT DISTINCT dept FROM tbl_divisi ORDER BY dept');
  while not q.Eof do begin
    cxCmbDept1.Properties.Items.Add(q.FieldByName('dept').AsString);
    q.Next;
  end;
  cxCmbDept1.ItemIndex := 0;
  q.Close;

  cxCmbDivisi1.Properties.Items.Add('');
  q := OpenRS('SELECT divisi FROM tbl_divisi ORDER BY divisi');
  while not q.Eof do begin
    cxCmbDivisi1.Properties.Items.Add(q.FieldByName('divisi').AsString);
    q.Next;
  end;
  cxCmbDivisi1.ItemIndex := 0;
  q.Close;

  q := OpenRS('SELECT DISTINCT user, user_dept FROM tbl_so_head ' +
    'WHERE user_dept = ''CFT'' ORDER BY user');
  cxCmbUserCFT.Properties.Items.Add('');  
  while not q.Eof do begin
    cxCmbUserCFT.Properties.Items.Add(q.FieldByName('user').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbUserCFT.ItemIndex := 0;

  zqrDepartemen.Open;
  cxCmb81_Jenis.Properties.Items.Add('');
  cxCmb81_Jenis.Properties.Items.Add('MDA');
  cxCmb81_Jenis.Properties.Items.Add('HRIS');
  cxCmb81_Jenis.ItemIndex := 0;

  cxCmbApproval38.Properties.Items.Add('SEMUA');
  cxCmbApproval38.Properties.Items.Add('SUDAH APPROVAL');
  cxCmbApproval38.Properties.Items.Add('BLM. APPROVAL');

end;

procedure TfrmLaporan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmLaporan.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLaporan.btnCetakClick(Sender: TObject);
var
  Memo: TfrxMemoView;
  tbl: TZTable;
  f: TfrmLapUmum;
  fCCR: TFrmLapCCR;
  sKode, sTmp, skat, sKtgr: string;
  lBox: TListBox;
  q: TZQuery;
  i,j : integer;
begin
  if pg.ActivePageIndex = 0 then
    lBox := lstBox
  else if pg.ActivePageIndex = 1 then
    lBox := lstBox2
  else if pg.ActivePageIndex = 2 then
    lBox := lstBox3
  else if pg.ActivePageIndex = 3 then
    lBox := lstBox4
  else if pg.ActivePageIndex = 4 then
    lBox := lstBox5
  else if pg.ActivePageIndex = 5 then
    lBox := lstBox6
  else if pg.ActivePageIndex = 6 then
    lBox := lstBox7
  else if pg.ActivePageIndex = 7 then
    lBox := lstBox8;

  if lBox.ItemIndex = -1 then Abort;
  sKode := lBox.Items.Strings[lBox.ItemIndex];
  sKode := Trim(Copy(sKode,1,6));

  if sKode = '1.1' then begin
    zqrTrsBrgMasuk.Close;
    zqrTrsBrgMasuk.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrTrsBrgMasuk.ParamByName('tgl2').AsDate := cxdTgl2.Date;

    if zqrTrsBrgMasuk.SQL.Count > 1 then zqrTrsBrgMasuk.SQL.Delete(1);
    if cxlNoTrans.Text <> '' then begin
      zqrTrsBrgMasuk.ParamByName('tgl1').AsDate := EncodeDate(2012,1,1);
      zqrTrsBrgMasuk.ParamByName('tgl2').AsDate := EncodeDate(2100,1,1);
      zqrTrsBrgMasuk.SQL.Add('AND no_bukti = ''' + cxlNoTrans.Text + '''');
    end;

    zqrTrsBrgMasuk.Open;

    Memo := rptTrsBrgMasuk.FindObject('Memo20') as TfrxMemoView;
    Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
    rptTrsBrgMasuk.ShowReport(True);
  end
  else if sKode = '1.2' then begin
    zqrTrsBrgKeluar.Close;
    zqrTrsBrgKeluar.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrTrsBrgKeluar.ParamByName('tgl2').AsDate := cxdTgl2.Date;

    if zqrTrsBrgKeluar.SQL.Count > 1 then zqrTrsBrgKeluar.SQL.Delete(1);
    if cxlNoTrans.Text <> '' then begin
      zqrTrsBrgKeluar.ParamByName('tgl1').AsDate := EncodeDate(2012,1,1);
      zqrTrsBrgKeluar.ParamByName('tgl2').AsDate := EncodeDate(2100,1,1);
      zqrTrsBrgKeluar.SQL.Add('AND no_bukti = ''' + cxlNoTrans.Text + '''');
    end;

    zqrTrsBrgKeluar.Open;
    Memo := rptTrsBrgKeluar.FindObject('Memo20') as TfrxMemoView;
    Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
    rptTrsBrgKeluar.ShowReport(True);
  end
  else if sKode = '1.3' then begin
    zqrTrsMutasi.Close;
    zqrTrsMutasi.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrTrsMutasi.ParamByName('tgl2').AsDate := cxdTgl2.Date;

    if zqrTrsMutasi.SQL.Count > 1 then zqrTrsMutasi.SQL.Delete(1);
    if cxlNoTrans.Text <> '' then begin
      zqrTrsMutasi.ParamByName('tgl1').AsDate := EncodeDate(2012,1,1);
      zqrTrsMutasi.ParamByName('tgl2').AsDate := EncodeDate(2100,1,1);
      zqrTrsMutasi.SQL.Add('AND no_bukti = ''' + cxlNoTrans.Text + '''');
    end;

    zqrTrsMutasi.Open;
    Memo := rptTrsMutasi.FindObject('Memo20') as TfrxMemoView;
    Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
    rptTrsMutasi.ShowReport(True);
  end
  else if sKode = '1.4' then begin
    with zqrTrsKoreksi do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;

      if SQL.Count > 1 then SQL.Delete(1);
      if cxlNoTrans.Text <> '' then begin
        ParamByName('tgl1').AsDate := EncodeDate(2012,1,1);
        ParamByName('tgl2').AsDate := EncodeDate(2100,1,1);
        SQL.Add('AND no_bukti = ''' + cxlNoTrans.Text + '''');
      end;

      Open;
      Memo := rptTrsKoreksi.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      rptTrsKoreksi.ShowReport(True);
    end;
  end
  else if sKode = '1.5' then begin
    with zqrTrsSpkPotong do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;

      if SQL.Count > 1 then SQL.Delete(1);
      if cxlNoTrans.Text <> '' then begin
        ParamByName('tgl1').AsDate := EncodeDate(2012,1,1);
        ParamByName('tgl2').AsDate := EncodeDate(2100,1,1);
        SQL.Add('AND no_bukti = ''' + cxlNoTrans.Text + '''');
      end;

      Open;
      Memo := rptTrsSpkPotong.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      rptTrsSpkPotong.ShowReport(True);
    end;
  end
  else if sKode = '1.6' then begin
    with zqrTrsReturPenj do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;

      if SQL.Count > 1 then SQL.Delete(1);
      if cxlNoTrans.Text <> '' then begin
        ParamByName('tgl1').AsDate := EncodeDate(2012,1,1);
        ParamByName('tgl2').AsDate := EncodeDate(2100,1,1);
        SQL.Add('AND no_bukti = ''' + cxlNoTrans.Text + '''');
      end;

      Open;
      Memo := rptTrsReturPenj.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      rptTrsReturPenj.ShowReport(True);
    end;
  end
  else if sKode = '1.7' then begin
    zqrStokBrg.Close;
    zqrStokBrg.SQL.Strings[1] := 'WHERE (G01+G02+G03) ' +
      cxCmbOperator.Text + ' ' + cxsJmlStok.Text;

    if cxCmbKategori.ItemIndex > 0 then begin
      zqrStokBrg.SQL.Strings[2] := ' AND kategori = ''' +
        cxCmbKategori.Text + ''' ';
      if cxCmbSubKtgr.ItemIndex > 0 then begin
        zqrStokBrg.SQL.Strings[2] := zqrStokBrg.SQL.Strings[2] +
        ' AND subkategori = ''' + cxCmbSubKtgr.Text + '''';
      end;
    end;

    zqrStokBrg.Open;
    rptStokBrg.ShowReport(True);
  end
  else if sKode = '1.8' then begin
    zqrHist.Close;

    zqrHist.SQL.Text := 'SELECT * FROM v_lap_history_all WHERE tanggal BETWEEN :tgl1 AND :tgl2';

    if cxCmbJenisTrans.ItemIndex > 0 then
      zqrHist.SQL.Add(' AND LEFT(no_bukti,3) = :param');
    if chkNamaBrg.Checked then
      zqrHist.SQL.Add(' AND kode_brg = :param2');

    if cxCmbKategori2.Text <> 'SEMUA' then begin
      if Pos('AND', zqrHist.SQL.Text) > 0 then
        zqrHist.SQL.Add(' AND ');
      zqrHist.SQL.Add(' kategori = ''' + cxCmbKategori2.Text + '''');
    end;

    if cxCmbJenisTrans.ItemIndex = 1 then
      zqrHist.ParamByName('param').AsString := 'IN/'
    else if cxCmbJenisTrans.ItemIndex = 2 then
      zqrHist.ParamByName('param').AsString := 'OT/'
    else if cxCmbJenisTrans.ItemIndex = 3 then
      zqrHist.ParamByName('param').AsString := 'SJ/'
    else if cxCmbJenisTrans.ItemIndex = 4 then
      zqrHist.ParamByName('param').AsString := 'MG/'
    else if cxCmbJenisTrans.ItemIndex = 5 then
      zqrHist.ParamByName('param').AsString := 'PM/'
    else if cxCmbJenisTrans.ItemIndex = 6 then
      zqrHist.ParamByName('param').AsString := 'SP/'
    else if cxCmbJenisTrans.ItemIndex = 7 then
      zqrHist.ParamByName('param').AsString := 'RP/'
    else if cxCmbJenisTrans.ItemIndex = 8 then
      zqrHist.ParamByName('param').AsString := 'PB/'
    else if cxCmbJenisTrans.ItemIndex = 9 then
      zqrHist.ParamByName('param').AsString := 'MGC';

    if chkNamaBrg.Checked then
      zqrHist.ParamByName('param2').AsInteger :=
        zqrNamaBrg.FieldByName('kode').AsInteger;

    zqrHist.ParamByName('tgl1').AsDate := cxdTgl1_5.Date;
    zqrHist.ParamByName('tgl2').AsDate := cxdTgl2_5.Date;

    zqrHist.Open;
    Memo := rptHist.FindObject('Memo20') as TfrxMemoView;
    Memo.Text := cxdTgl1_5.Text + ' S/D ' + cxdTgl2_5.Text;
    rptHist.ShowReport(True);
  end
  // Kartu Stok
  else if sKode = '1.9' then begin

    if cxl_ksNmBrg.Text = '' then begin
      MsgBox('Pilih nama barang.');
      cxl_ksNmBrg.SetFocus;
      Abort;
    end;

    f := TfrmLapUmum.Create(Self);
    with f.zqrKartuStok do begin

      dm.zConn.ExecuteDirect('DELETE FROM tbl_tmp_ks WHERE `user2` = ''' + Aplikasi.NamaUser +
        ''' AND `host` = ''' + GetHostName2 + '''');

      dm.zConn.ExecuteDirect(
        Format('CALL sp_ks(%s,''%s'',''%s'',''%s'',''%s'',''%s'')',
        [cxl_ksNmBrg.EditValue,
         DateToMySqlDate(cxd_ksTgl1.Date),
         DateToMySqlDate(cxd_ksTgl2.Date),
         Aplikasi.NamaUser,
         GetHostName2,
         cxCmbGdgKS.Text
        ])
      );

      if Active then Close;
      SQL.Text := 'SELECT * FROM _tmp_ks';
      Open;
      //ParamByName('gudang').AsString := cxCmbGdgKS.Text;
      //ParamByName('kode_brg').AsString := cxl_ksNmBrg.EditValue;
      //ParamByName('tgl1').AsDate := cxd_ksTgl1.EditValue;
      //ParamByName('tgl2').AsDate := cxd_ksTgl2.EditValue;
      Open;
    end;
    Memo := f.rptKartuStok.FindObject('Memo10') as TfrxMemoView;
    Memo.Text := cxd_ksTgl1.Text + ' S/D ' + cxd_ksTgl2.Text;

    q := OpenRS('SELECT sf_getstokawal2(%s,''%s'',''%s'') stkawal',
      [cxl_ksNmBrg.EditValue,
       cxCmbGdgKS.Text,
       FormatDateMySQL(cxd_ksTgl1.Date-1)
      ]);

    Memo := f.rptKartuStok.FindObject('Init') as TfrxMemoView;
    Memo.Text := q.FieldByName('stkawal').AsString;
    Memo := f.rptKartuStok.FindObject('mmStokAwal') as TfrxMemoView;
    Memo.Text := q.FieldByName('stkawal').AsString;
    Memo := f.rptKartuStok.FindObject('Memo14') as TfrxMemoView;
    Memo.Text := 'Stok Awal ' + FormatDateTime('dd-MM-yyyy', cxd_ksTgl1.Date);
    Memo := f.rptKartuStok.FindObject('mmGudang') as TfrxMemoView;
    Memo.Text := cxCmbGdgKS.Text + ' (' + GetNamaGudang(cxCmbGdgKS.Text) + ')';
    q.Close;

    f.rptKartuStok.ShowReport(True);
    f.Release;

    {
    GenerateTableKartuStok;
    zqrKartuStok.Close;
    zqrKartuStok.SQL.Text := '';
    zqrKartuStok.SQL.Add('SELECT * FROM tbl_tmp_rpt_kartu_stok');

    //if cxCmbGdgKS.Text <> 'SEMUA' then
    //  zqrKartuStok.SQL.Add('WHERE gudang = ' + QuotedStr(cxCmbGdgKS.Text) + ' AND ')
    //else
    //  zqrKartuStok.SQL.Add('WHERE ');

    zqrKartuStok.SQL.Add(' WHERE host = ''' + GetHostName2 + ''' ORDER BY tanggal, jenis');
    zqrKartuStok.Open;
    Memo := rptKartuStok.FindObject('Memo20') as TfrxMemoView;
    Memo.Text := cxd_ksTgl1.Text + ' S/D ' + cxd_ksTgl2.Text;
    Memo := rptKartuStok.FindObject('Memo2') as TfrxMemoView;
    Memo.Text := cxl_ksNmBrg.EditValue;
    Memo := rptKartuStok.FindObject('Memo6') as TfrxMemoView;
    Memo.Text := cxl_ksNmBrg.Text;
    rptKartuStok.ShowReport(True);
    }

  end
  else if sKode = '1.10' then begin
    Screen.Cursor := crSQLWait;
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrBrgKarantina.Open;
      rptStokBrgKarantina.ShowReport(True);
      Release;
    end;
    Screen.Cursor := crDefault;
  end
  else if sKode = '1.11' then begin
    Screen.Cursor := crSQLWait;
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrLapDisposisi.ParamByName('tgl1').AsDate := cxd111_1.Date;
      zqrLapDisposisi.ParamByName('tgl2').AsDate := cxd111_2.Date;
      if cxl111_cust.Text <> '' then begin
        zqrLapDisposisi.SQL.Strings[7] := 'AND d.kode_customer = ''' + cxl111_cust.EditValue + ''' ';
      end
      else
        zqrLapDisposisi.SQL.Strings[7] := '';

      //msgbox(zqrLapDisposisi.SQL.Text);

      zqrLapDisposisi.Open;
      Memo := f.rptLapDisposisi.FindObject('mmPeriode') as TfrxMemoView;
      Memo.Text := 'Periode : ' + cxd111_1.Text + ' S/D ' + cxd111_2.Text; 
      rptLapDisposisi.ShowReport(True);
      Release;
    end;
    Screen.Cursor := crDefault;
  end
  else if sKode = '2.1' then begin
    Screen.Cursor := crSQLWait;
    f := TfrmLapUmum.Create(Self);

    dm.zConn.ExecuteDirect('CALL sp_so_terbuka');

    if cxChkCustomer.Checked then begin
      if cxlCustomer.Text = '' then begin
        cxlCustomer.SetFocus;
        Abort;
      end
      else begin
        f.zqrSOTerbuka.SQL.Strings[1] :=
          'WHERE kode_customer = ''' + zqrCust.FieldByName('kode').AsString + '''';
      end;
    end;

    if cxCmbUserCFT.Text <> '' then begin
      if Pos('WHERE',f.zqrSOTerbuka.SQL.Text) > 0 then
        f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] + ' AND '
      else
        f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] + ' WHERE ';
      f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] +
        ' user = ''' + cxCmbUserCFT.Text + ''' ';
    end;

    if cxChkKategori.Checked then begin
      if cxlKategori.Text = '' then begin
        cxlKategori.SetFocus;
        Abort;
      end
      else begin
        sTmp := '';

        if Pos('WHERE', f.zqrSOTerbuka.SQL.Text) > 0 then
          sTmp := 'AND '
        else
          sTmp := 'WHERE ';

        f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] +
          sTmp + ' kategori = ''' + cxlKategori.Text + '''';

      end;
    end;

    if Pos('WHERE', f.zqrSOTerbuka.SQL.CommaText) > 0 then
      sTmp := ' AND f_completed = 0'
    else
      sTmp := ' WHERE f_completed = 0';

    if cxCmbUrut.SelectedItem = 0 then
      f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY selisih_hari DESC'
    else if cxCmbUrut.SelectedItem = 1 then
      f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY kode_customer, selisih_hari DESC'
    else if cxCmbUrut.SelectedItem = 2 then
      f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY kategori, selisih_hari DESC';

    f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] + sTmp;

    //MsgBox(f.zqrSOTerbuka.SQL.Text);

    f.zqrSOTerbuka.Open;
    Screen.Cursor := crDefault;
    f.rptSOTerbuka.ShowReport(True);
    f.Release;
  end
  else if sKode = '2.2' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrSOAll do begin
      if Active then Close;
      ParamByName('tgl1').AsDateTime := cxd211_1.Date;
      ParamByName('tgl2').AsDateTime := cxd211_2.Date;
      if cxlCustomer211.Text <> '' then begin
        SQL.Strings[2] := 'AND kode_customer = ''' +
          cxlCustomer211.EditValue + '''';
      end;
      Open;
    end;
    Memo := f.rptSOAll.FindObject('Memo11') as TfrxMemoView;
    Memo.Text := 'Periode : ' + cxd211_1.Text + ' S/D ' + cxd211_2.Text;
    f.rptSOAll.ShowReport(True);
    f.Release;
  end
  else if sKode = '2.3' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrRekapQtySO do begin
      if Active then Close;
      ParamByName('tgl1').AsDateTime := cxd211_1.Date;
      ParamByName('tgl2').AsDateTime := cxd211_2.Date;
      if cxlCustomer211.Text <> '' then begin
        SQL.Strings[2] := 'AND kode_customer = ''' +
          cxlCustomer211.EditValue + '''';
      end;
      Open;
    end;
    Memo := f.rptRekapQtySO.FindObject('Memo35') as TfrxMemoView;
    Memo.Text := 'Periode : ' + cxd211_1.Text + ' S/D ' + cxd211_2.Text;
    f.rptRekapQtySO.ShowReport(True);
    f.Release;
  end
  else if sKode = '2.4' then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrRekapSJ.Close;
      zqrRekapSJ.ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      zqrRekapSJ.ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      zqrRekapSJ.Open;
      Memo := rptRekapSJ.FindObject('Memo10') as TfrxMemoView;
      Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      rptRekapSJ.ShowReport(True);
      Release;
    end;
  end
  else if sKode = '2.5' then begin
    f := TfrmLapUmum.Create(Self);

    if cxlNmBrg.Text <> '' then
      sKode := cxlNmBrg.EditValue
    else
      sKode := '';

    if cxlSubKategori.Text <> '' then
      skat := cxlSubKategori.EditValue
    else
      skat := '';

    if cxlKategori25.Text <> '' then
      sKtgr := cxlKategori25.EditValue
    else
      sKtgr := '';

    with f do begin
      if cxlCustomer25.Text = '' then begin
        zqrRekapSJDet.Close;
        zqrRekapSJDet.SQL.Text := 'SELECT * FROM v_lap_sj WHERE tanggal BETWEEN :tgl1 AND :tgl2';

        if sKode <> '' then
          zqrRekapSJDet.SQL.Text := zqrRekapSJDet.SQL.Text + ' AND kode_brg = ' + sKode;

        if skat <> '' then
          zqrRekapSJDet.SQL.Text := zqrRekapSJDet.SQL.Text + ' AND subkategori = ' + QuotedStr(skat);

        if sKtgr <> '' then
          zqrRekapSJDet.SQL.Text := zqrRekapSJDet.SQL.Text + ' AND kategori = ' + QuotedStr(sKtgr);

        zqrRekapSJDet.ParamByName('tgl1').AsDateTime := cxdTgl25_1.Date;
        zqrRekapSJDet.ParamByName('tgl2').AsDateTime := cxdTgl25_2.Date;
        zqrRekapSJDet.Open;
      end
      else begin
        zqrRekapSJDet.Close;
        zqrRekapSJDet.SQL.Text := 'SELECT * FROM v_lap_sj ' +
          'WHERE tanggal BETWEEN :tgl1 AND :tgl2 AND kode_customer = :kode_customer';

        if sKode <> '' then
          zqrRekapSJDet.SQL.Text := zqrRekapSJDet.SQL.Text + ' AND kode_brg = ' + sKode;

        if skat <> '' then
          zqrRekapSJDet.SQL.Text := zqrRekapSJDet.SQL.Text + ' AND subkategori = ' + QuotedStr(skat);

        if sKtgr <> '' then
          zqrRekapSJDet.SQL.Text := zqrRekapSJDet.SQL.Text + ' AND kategori = ' + QuotedStr(sKtgr);

        zqrRekapSJDet.ParamByName('tgl1').AsDateTime := cxdTgl25_1.Date;
        zqrRekapSJDet.ParamByName('tgl2').AsDateTime := cxdTgl25_2.Date;
        zqrRekapSJDet.ParamByName('kode_customer').AsString := cxlCustomer25.EditValue;

        zqrRekapSJDet.Open;
      end;

      Memo := rptRekapSJDet.FindObject('Memo10') as TfrxMemoView;
      Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      rptRekapSJDet.ShowReport(True);
      Release;
    end;
  end
  else if sKode = '2.6' then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      if cxlNmBrg2.Text <> '' then
        sKode := cxlNmBrg2.EditValue
      else
        sKode := '';

      if cxlSubKategori2.Text <> '' then
        skat := cxlSubkategori2.EditValue
      else
        skat := '';

      if cxlCust28.Text = '' then begin
        Screen.Cursor := crSQLWait;
        zqrBrgKeluarPerTgl2.Close;
        zqrBrgKeluarPerTgl2.ParamByName('tgl1').AsDateTime := cxdTgl28_1.Date;
        zqrBrgKeluarPerTgl2.ParamByName('tgl2').AsDateTime := cxdTgl28_2.Date;

        zqrBrgKeluarPerTgl2.SQL.Strings[2] := '';

        if sKode <> '' then
            zqrBrgKeluarPerTgl2.SQL.Strings[2] :=
              zqrBrgKeluarPerTgl2.SQL.Strings[2] + ' AND kode_brg = ' + sKode;

        if skat <> '' then
          zqrBrgKeluarPerTgl2.SQL.Strings[2] :=
            zqrBrgKeluarPerTgl2.SQL.Strings[2] + ' AND subkategori = ' + QuotedStr(skat);

        zqrBrgKeluarPerTgl2.Open;
        Memo := rptBrgKeluarPerTgl2.FindObject('Memo10') as TfrxMemoView;
        Memo.Text := 'Periode: ' + cxdTgl28_1.Text + ' S/D ' + cxdTgl28_2.Text;
        Screen.Cursor := crDefault;
        rptBrgKeluarPerTgl2.ShowReport(True);
        Release;
      end
      else begin
        Screen.Cursor := crSQLWait;

        if cxChk26_GroupPerTgl.Checked then begin

          zqrBrgKeluarPerTgl.Close;
          zqrBrgKeluarPerTgl.ParamByName('tgl1').AsDateTime := cxdTgl28_1.Date;
          zqrBrgKeluarPerTgl.ParamByName('tgl2').AsDateTime := cxdTgl28_2.Date;

          with f.zqrBrgKeluarPerTgl do begin
            SQL.Strings[2] := '';
            if cxlCust28.Text <> '' then begin
              SQL.Strings[2] := 'AND kode_customer = ''' + zqrCust.FieldByName('kode').AsString + ''' ';
            end;
            if cxlKategori28.Text <> '' then begin
              SQL.Strings[2] := SQL.Strings[2] + ' AND kategori = ''' + zqrKategori.FieldByName('kategori').AsString + ''' ';
            end;

          end;

          zqrBrgKeluarPerTgl.Open;
          Memo := rptBrgKeluarPerTgl.FindObject('Memo10') as TfrxMemoView;
          Memo.Text := 'Periode: ' + cxdTgl28_1.Text + ' S/D ' + cxdTgl28_2.Text;
          Screen.Cursor := crDefault;
          rptBrgKeluarPerTgl.ShowReport(True);
          Release;
        end
        else begin
          zqrBrgKeluarPerTgl3.Close;
          zqrBrgKeluarPerTgl3.ParamByName('tgl1').AsDateTime := cxdTgl28_1.Date;
          zqrBrgKeluarPerTgl3.ParamByName('tgl2').AsDateTime := cxdTgl28_2.Date;

          with f.zqrBrgKeluarPerTgl3 do begin
            SQL.Strings[2] := '';
            if cxlCust28.Text <> '' then begin
              SQL.Strings[2] := 'AND kode_customer = ''' + zqrCust.FieldByName('kode').AsString + ''' ';
            end;
            if cxlKategori28.Text <> '' then begin
              SQL.Strings[2] := SQL.Strings[2] + ' AND kategori = ''' + zqrKategori.FieldByName('kategori').AsString + ''' ';
            end;
            if skat <> '' then begin
              SQL.Strings[2] := SQL.Strings[2] + ' AND subkategori = ''' + skat + '''';
            end;

          end;

          zqrBrgKeluarPerTgl3.Open;
          Memo := rptBrgKeluarPerTgl3.FindObject('Memo10') as TfrxMemoView;
          Memo.Text := 'Periode: ' + cxdTgl28_1.Text + ' S/D ' + cxdTgl28_2.Text;
          Screen.Cursor := crDefault;
          rptBrgKeluarPerTgl3.ShowReport(True);
          Release;
        end;
      end;

    end;
  end
  else if sKode = '2.7' then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrRekapSJU.Close;
      zqrRekapSJU.ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      zqrRekapSJU.ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      zqrRekapSJU.Open;
      Memo := rptRekapSJU.FindObject('mmPeriode') as TfrxMemoView;
      Memo.Text := 'Periode: ' + cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      rptRekapSJU.ShowReport(True);
      Release;
    end;
  end
  else if sKode = '2.8' then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      if cxlNmBrg2.Text <> '' then
        sKode := cxlNmBrg2.EditValue
      else
        sKode := '';

      if cxlSubKategori2.Text <> '' then
        skat := cxlSubkategori2.EditValue
      else
        skat := '';

      with zqrRekapSODet do begin
        Close;

        sTmp := 'where (a.tanggal BETWEEN ''' + FormatDateMySQL(cxdTgl28_1.Date) + ''' AND ''' +
          FormatDateMySQL(cxdTgl28_2.Date) + ''')';

        if sKode <> '' then
          sTmp := sTmp + ' AND b.kode_brg = ' + sKode;

        if skat <> '' then
          sTmp := sTmp + ' AND d.subkategori = ' + QuotedStr(skat);
          
        if cxlCust28.Text <> '' then begin
          sTmp := sTmp + 'AND a.kode_customer = ''' + zqrCust.FieldByName('kode').AsString + ''' ';
        end;
        if cxlKategori28.Text <> '' then begin
          sTmp := sTmp + ' AND d.kategori = ''' + zqrKategori.FieldByName('kategori').AsString + ''' ';
        end;
        if cxCmbStsSO.Text <> 'SEMUA' then begin
          sTmp := sTmp + ' AND ';
          if cxCmbStsSO.Text = 'SELESAI' then
            sTmp := sTmp + 'a.f_completed = 1'
          else
            sTmp := sTmp + 'a.f_completed = 0';
        end;
        if cxlNoSO_28.Text <> '' then begin
          if Pos('where',sTmp) > 0 then
            sTmp := sTmp + ' AND a.no_bukti = ''' + cxlNoSO_28.EditValue + ''' '
          else
            sTmp := sTmp + ' WHERE a.no_bukti = ''' + cxlNoSO_28.EditValue + ''' ';
        end;

        SQL.Strings[12] := sTmp;
        Open;
        //MsgBox(SQL.Text);
        //Abort;
      end;

      Memo := rptRekapSODet.FindObject('mmPeriode') as TfrxMemoView;
      Memo.Text := 'Periode: ' + cxdTgl28_1.Text + ' S/D ' + cxdTgl28_2.Text;
      rptRekapSODet.ShowReport(True);
      Release;
    end;
  end
  else if sKode = '2.9' then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrNourutSJ.Close;
      zqrNourutSJ.ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      zqrNourutSJ.ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      zqrNourutSJ.Open;
      //Memo := rptRekapSJU.FindObject('mmPeriode') as TfrxMemoView;
      //Memo.Text := 'Periode: ' + cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      //rptRekapSJU.ShowReport(True);
      rptNoUrutSJ.ShowReport(True);
      Release;
    end;
  end
  else if sKode = '2.10' then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrJadPengiriman.Close;
      zqrJadPengiriman.ParamByName('tgl1').AsDateTime := cxd1.Date;
      zqrJadPengiriman.ParamByName('tgl2').AsDateTime := cxd2.Date;
      zqrJadPengiriman.Open;
      Memo := rptJadPengiriman.FindObject('memo4') as TfrxMemoView;
      Memo.Text := 'Periode: ' + cxd1.Text + ' S/D ' + cxd2.Text;
      rptJadPengiriman.ShowReport(True);
      Release;
    end;
  end
  else if sKode = 'xx' then begin
    f := TfrmLapUmum.Create(Self);
    f.zqrSOvsSJ.Open;
    f.rptSOvsSJ.ShowReport(True);
    f.Release;
  end
  else if sKode = '3.1' then begin
    with zqrRekapPOPerSupp do begin
      if Active then Close;
      ParamByName('kode_supp').AsString := zqrSupp01.FieldByName('kode').AsString;
      Open;
    end;
    with rptRekapPOPerSupp do begin
      ShowReport(True);
    end;
  end
  else if sKode = '3.2' then begin
    with zqrRekapPOPerBrg do begin
      if Active then Close;
      // ParamByName('kode_brg').AsString := zqrNamaBrg.FieldByName('kode').AsString;

      if Trim(cxlBrg01.Text) <> '' then begin
        SQL.Strings[1] := 'WHERE kode_brg = ' + VarToStr(cxlBrg01.EditValue) + ' ';
      end;

      if cxlSupp01.Text <> '' then begin
        if Copy(SQL.Strings[1],1,2) = '--' then
          SQL.Strings[2] := 'WHERE '
        else
          SQL.Strings[2] := 'AND ';
        SQL.Strings[2] := SQL.Strings[2] + 'kode_supp = ''' + cxlSupp01.EditValue + ''' ';
      end;

      Open;
    end;
    with rptRekapPOPerBrg do begin
      ShowReport(True);
    end;
  end
  else if sKode = '3.3' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrHistPOPerBrg do begin
      if Active then Close;
      ParamByName('kode_brg').AsString := zqrNamaBrg.FieldByName('kode').AsString;
      Open;
    end;
    f.rptHistPOPerBrg.ShowReport(True);
  end
  else if sKode = '3.4' then begin

    f := TfrmLapUmum.Create(Self);
    with f.zqrAppPO do begin
      if Active then Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    Memo := f.rptAppPO.FindObject('Memo8') as TfrxMemoView;
    Memo.Text := 'Periode : ' + cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
    f.rptAppPO.ShowReport(True);

  end
  else if sKode = '3.5' then begin
    with zqrBrgPerPO do begin
      if Active then Close;
      SQL.Strings[10] := '';
      SQL.Strings[11] := '';

      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;

      if cxlSupp01.Text <> '' then
        SQL.Strings[10] := 'AND a.kode_supp = ''' + cxlSupp01.EditValue + '''';

      if cxlBrg01.Text <> '' then
        SQL.Strings[11] := 'AND b.kode_brg = ' +
          zqrNamaBrg.FieldByName('kode').AsString;

      Memo := rptBrgPerPO.FindObject('Memo20') as TfrxMemoView;
      Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;
      Open;
    end;

    rptBrgPerPO.ShowReport(True);
  end
  else if sKode = '3.6' then begin
    zqrRekapPOJasaPerSupp.SQL.Strings[1] := '-- ';

    if cxlSupp36.Text <> '' then begin
      with zqrRekapPOJasaPerSupp do begin
        if Active then Close;
        //ParamByName('kode_supp').AsString := zqrSupp01.FieldByName('kode').AsString;
        SQL.Strings[1] := 'WHERE kode_supp = ''' + zqrSupp01.FieldByName('kode').AsString + ''' ';
        Open;
      end;
    end;

    if cxlBrg36.Text <> '' then begin
      with zqrRekapPOJasaPerSupp do begin
        if Active then Close;
        if Copy(SQL.Strings[1],1,2) = '--' then
          SQL.Strings[1] := 'WHERE '
        else
          SQL.Strings[1] := SQL.Strings[1] + ' AND ';

        SQL.Strings[1] := SQL.Strings[1] +  ' deskripsi = ''' + cxlBrg36.Text + ''' ';
        Open;
      end;
    end;

    if (cxlSupp36.Text = '') and (cxlBrg36.Text = '') then Abort;

    with rptRekapPOJasaPerSupp do begin
      ShowReport(True);
    end;
  end
  else if sKode = '3.8' then begin
    CetakLap38;
  end
  else if sKode = '3.9' then begin
    f := TfrmLapUmum.Create(self);
    with f.zqrJadDatang do begin
      Close;
      ParamByName('tgl1').AsDate := cxd1.Date;
      ParamByName('tgl2').AsDate := cxd2.Date;
      Open;
      //Memo := rptJadDatang.FindObject('memo4') as TfrxMemoView;
      //Memo.Text := cxd1.Text + ' S/D ' + cxd2.Text;

    end;
    Memo := f.rptJadDatang.findobject('memo4') as TfrxMemoView;
    Memo.Text := cxd1.Text + ' S/D ' + cxd2.Text;
    f.rptJadDatang.ShowReport(True);
    f.Release;
  end
   else if sKode = '3.10' then begin
    with zqrPoLPB do begin
      Close;
      ParamByName('tgl1').AsDate := cxd1.Date;
      ParamByName('tgl2').AsDate := cxd2.Date;
      Open;
    end;
    rptPoLPB.ShowReport(True);
  end
  else if sKode = '4.1' then begin
    fCCR := TfrmLapCCR.Create(Self);
    with fCCR.zqRekapRK do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    fCCR.rptDaftarRK.ShowReport(True);
    fCCR.Release;
  end
  else if sKode = '4.2' then begin
    fCCR := TfrmLapCCR.Create(Self);
    with fCCR.zqRekapRK do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    fCCR.rptRekapRK.ShowReport(True);
    fCCR.Release;
  end
  else if sKode = '4.3' then begin

    f := TfrmLapUmum.Create(Self);
    with f.zqLKM do begin
      if Active then Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    f.rptDaftarLKM.ShowReport(True);
    f.Release;
  end
  else if sKode = '4.4' then begin

    f := TfrmLapUmum.Create(Self);
    with f.zqRekapLKM do begin
      if Active then Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    f.rptRekapLKM.ShowReport(True);
    f.Release;
  end
  else if sKode = '5.1' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrSPKPerMesin do begin
      Close;

      SQL.Strings[2] := '';
      SQL.Strings[3] := '';
      SQL.Strings[4] := '';

      if cxCmbStatus.Text = 'KOMPLIT' then
        SQL.Strings[2] := 'AND f_completed = 1'
      else if cxCmbStatus.Text = 'BLM. KOMPLIT' then
        SQL.Strings[2] := 'AND f_completed = 0';

      if cxCmbMesin.Text <> 'SEMUA' then
        SQL.Strings[3] := 'AND kode_mesin = ''' + cxCmbMesin.Text + '''';

      if cxl51.Text <> '' then
        SQL.Strings[4] := 'AND kode_customer = ''' + cxl51.EditValue + '''';

      //MsgBox(SQL.Text);

      ParamByName('tgl1').AsDate := cxd51_1.Date;
      ParamByName('tgl2').AsDate := cxd51_2.Date;
      Open;
    end;
    Memo := f.rptSPKPerMesin.FindObject('Memo10') as TfrxMemoView;
    Memo.Text := 'Periode : ' + cxd51_1.Text + ' S/D ' + cxd51_2.Text;
    f.rptSPKPerMesin.ShowReport(True);
    f.Release;
  end
  else if sKode = '5.2' then begin
    with zqrPB_VS_HP do begin
      if Active then Close;
      ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
      ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
      Open;

      Memo := rptPB_VS_HP.FindObject('mmPeriode') as TfrxMemoView;
      Memo.Text := cxdTgl0_1.Text + ' S/D ' + cxdTgl0_2.Text;
      rptPB_VS_HP.ShowReport(True);
    end;
  end
  else if sKode = '6.1' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrJurnalPlt do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    f.rptJurnalPlt.ShowReport(True);
    f.Release;
  end
  else if sKode = '6.2' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrPengirimanPel do begin
      Close;
      SQL.Strings[11] := '';
      if Trim(cxlCustPel.Text) <> '' then begin
        SQL.Strings[11] := 'and a.kode_customer = ''' + zqrCust.FieldByName('kode').AsString + '''';
      end;
      if cxCmbStatusPel.Text = 'KOMPLIT' then
        SQL.Strings[11] := SQL.Strings[11] + ' AND a.f_completed = 1 '
      else if cxCmbStatusPel.Text = 'OPEN' then
        SQL.Strings[11] := SQL.Strings[11] + ' AND a.f_completed = 0 ';
      Open;
    end;
    f.rptPengirimanPel.ShowReport(True);
    f.Release;
  end
  else if sKode = '6.3' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrPembPelPerBln do begin
      Close;
      ParamByName('tgl1').AsDate := cxdTgl1.Date;
      ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    f.rptPembPelPerBln.ShowReport(True);
    f.Release;
  end
  else if sKode = '6.4' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrPltBlmTerkirim do begin
      Close;
      if cxlCustPel.Text <> '' then begin
        SQL.Strings[18] := 'AND a.kode_customer = ''' +
          zqrCust.FieldByName('kode').AsString + ''' ';
      end;
      Open;
    end;
    f.rptPltBlmTerkirim.ShowReport(True);
    f.Release;
  end
  else if sKode = '6.5' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrHargaPeletan do begin
      Close;
      if (cxlCustomers.Text <> '') and (cxlNmBrgHarga.Text = '') then begin
        SQL.Strings[7] := 'AND a.ex_customer = ''' +
          zqrCust.FieldByName('kode').AsString + ''' ';
      end
      else if (cxlCustomers.Text <> '') and (cxlNmBrgHarga.Text <> '')  then begin
        SQL.Strings[7] := 'AND a.ex_customer = ''' +
          zqrCust.FieldByName('kode').AsString + ''' AND b.kode_brg = ''' +
          zqrNamaBrg.FieldByName('kode').AsString + ''' ';
      end
      else if (cxlCustomers.Text = '') and (cxlNmBrgHarga.Text <> '')  then begin
        SQL.Strings[7] := 'AND b.kode_brg = ''' +
          zqrNamaBrg.FieldByName('kode').AsString + ''' ';
      end;
      Open;
    end;
    f.rptHargaPeletan.ShowReport(True);
    f.Release;
  end
  else if sKode = '6.6' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrLapMmgPel do begin
      Screen.Cursor := crSQLWait;
      Close;
      Open;
      Screen.Cursor := crDefault;
    end;
    f.rptLapMmgPel.ShowReport(True);
    f.Release;
  end
  else if sKode = '8.1' then begin
    f := TfrmLapUmum.Create(Self);
    with f.zqrRevisi do begin
      Close;
      if (cxdTgl100.Text <> '') and (cxdTgl101.Text <> '') and (cxlDepartemen.Text = '')then begin
        ParamByName('tgl1').AsDate := cxdTgl100.Date;
        ParamByName('tgl2').AsDate := cxdTgl101.Date;
      end
      else if (cxdTgl100.Text <> '') and (cxdTgl101.Text <> '') and (cxlDepartemen.Text <> '') then begin
        ParamByName('tgl1').AsDate := cxdTgl100.Date;
        ParamByName('tgl2').AsDate := cxdTgl101.Date;
        SQL.Strings[2] := 'and user_dept_req = ''' + cxlDepartemen.Text + ''' ';
      end
      else if (cxdTgl100.Text = '') and (cxdTgl101.Text = '') and (cxlDepartemen.Text <> '') then begin
        ParamByName('tgl1').AsDate := aplikasi.TanggalServer - 365;
        ParamByName('tgl2').AsDate := aplikasi.TanggalServer;
        SQL.Strings[2] := 'and user_dept_req = ''' + cxlDepartemen.Text + ''' ';
      end;
      if cxCmb81_Jenis.Text = 'MDA' then begin
        SQL.Strings[2] := SQL.Strings[2] + ' and jenis = ''MDA'' ';
      end
      else begin
        SQL.Strings[2] := SQL.Strings[2] + ' and jenis = ''HRIS'' ';
      end;

      Open;
    end;
    f.rptRekapRevisi.ShowReport(True);
    f.Release;
  end
  else if sKode = '8.2' then begin
    zqrLapSetFoto.Close;
    zqrLapSetFoto.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrLapSetFoto.ParamByName('tgl2').AsDate := cxdTgl2.Date;
    zqrLapSetFoto.Open;
    Memo := rptLapSetFoto.FindObject('mmPeriode') as TfrxMemoView;
    Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl1.Text;
    rptLapSetFoto.ShowReport(True);
  end
  else if sKode = '7.1' then begin
    zqrLapPemakaianCons.Close;
    if Trim(cxCmbDept1.Text) <> '' then
      zqrLapPemakaianCons.SQL.Strings[5] := ' AND a.dept = ''' + cxCmbDept1.Text + ''' ';
    if (Trim(cxCmbDept1.Text) <> '') and (Trim(cxCmbDivisi1.Text) <> '') then
      zqrLapPemakaianCons.SQL.Strings[5] := ' AND a.dept = ''' + cxCmbDept1.Text + ''' ' +
      'AND a.divisi = ''' + cxCmbDivisi1.Text + '''';
    if (Trim(cxCmbDept1.Text) = '') and (Trim(cxCmbDivisi1.Text) = '') then
      zqrLapPemakaianCons.SQL.Strings[5] := '-- ';
    zqrLapPemakaianCons.Open;
    rptLapPemakaianCons.ShowReport(True);
  end
  else if sKode = '7.2' then begin
     j := DaysBetween(cxdTgl0_1.date,cxdTgl0_2.date);

   try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM _tmp_tanggal');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;

    for i := 0 to j do begin
       q := OpenRS('SELECT * FROM _tmp_tanggal') ;
       q.Insert;
       q.FieldByName('tanggal').AsDateTime := cxdTgl0_1.Date + i;
       q.Post;
       q.Close;
    end;

    zqrRekapLHP.Close;
   // zqrRekapLHP.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
   // zqrRekapLHP.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
    zqrRekapLHP.Open;
    rptRekapLHP.ShowReport(True);
  end
   else if sKode = '7.3' then begin
    zqrSumMesin.Close;
    zqrSumAfval.Close;
    zqrSumDT.Close;
    zqrSumMesin.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
    zqrSumMesin.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
    zqrSumAfval.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
    zqrSumAfval.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
    zqrSumDT.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
    zqrSumDT.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
    zqrSumMesin.Open;
    zqrSumAfval.Open;
    zqrSumDT.Open;
     rptSumMesin.ShowReport(True);
   end;
end;

procedure TFrmLaporan.HideAllGroupBox;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 11 then
      if (Components[i] as TControl).Visible then
        (Components[i] as TControl).Visible := False;
  end;

  GroupBox7.Top := GroupBox1.Top;
end;

procedure TfrmLaporan.lstBoxClick(Sender: TObject);
var
  idx: Integer;
  lstB: TListBox;
  nomer, sql: string;
begin
  lstB := (Sender as TListBox);
  idx := lstB.ItemIndex;

  if idx = -1 then Abort;
  nomer := Trim(Copy(lstB.Items.Strings[idx],1,6));

  cxLabel18.Visible := True;
  cxlNoTrans.Visible := True;

  HideAllGroupBox;

  if Pos(nomer, '1.1;1.2;1.3;1.4;1.5;1.6;2.4;3.4;2.7;6.1;6.3;2.9') > 0 then begin
    GroupBox1.Visible := True;
    if Pos(nomer,'2.7;6.1;6.3;2.9;') > 0 then
      cxlNoTrans.Visible := False
    else
      cxlNoTrans.Visible := True;
  end
  else if Pos(nomer, '1.11') > 0 then begin
    GroupBox17.Visible := True
  end
  else if Pos(nomer,'2.5') > 0 then
    GroupBox8.Visible := True
  else if Pos(nomer,'1.7') > 0 then
    GroupBox2.Visible := True
  else if Pos(nomer,'1.8') > 0 then
    GroupBox3.Visible := True
  else if Pos(nomer,'1.9') > 0 then
    GroupBox4.Visible := True
  else if Pos(nomer,'2.1;') > 0 then
    GroupBox5.Visible := True
  else if Pos(nomer,'2.2;2.3') > 0 then
    GroupBox6.Visible := True
  else if Pos(nomer, '3.1;3.2;3.3;') > 0 then
    GroupBox7.Visible := True
  else if Pos(nomer, '3.6') > 0 then
    GroupBox15.Visible := True
  else if Pos(nomer, '3.8') > 0 then
    GroupBox16.Visible := True
  else if Pos(nomer, '3.9;3.10') > 0 then
    GroupBox18.Visible := True
  else if Pos(nomer, '2.10') > 0 then
    GroupBox18.Visible := True
  else if Pos(nomer, '4.1;4.2;4.3;4.4;3.5') > 0 then begin
    GroupBox1.Visible := True;
    cxLabel18.Visible := False;
    cxlNoTrans.Visible := False;
  end
  else if Pos(nomer,'5.1') > 0 then begin
    GroupBox9.Visible := True;
  end
  else if Pos(nomer,'5.2;7.2;7.3') > 0 then begin
    GroupBox0.Visible := True;
  end
  else if Pos(nomer,'6.2') > 0 then begin
    GroupBox10.Visible := True;
  end
  else if Pos(nomer,'2.8;2.6;') > 0 then begin
    GroupBox11.Visible := True;
    if nomer = '2.6' then begin
      cxLabel33.Visible := False;
      cxCmbStsSO.Visible := False;
    end
    else begin
      cxLabel33.Visible := True;
      cxCmbStsSO.Visible := True;
    end;
  end
  else if Pos(nomer,'6.4') > 0 then begin
    GroupBox10.Visible := True;
  end
  else if Pos(nomer,'6.5') > 0 then begin
    GroupBox13.Visible := True;
  end
  else if Pos(nomer,'7.1') > 0 then begin
    GroupBox12.Visible := True;
  end;

  if Pos(nomer,'1.1;1.2;1.3;1.4;1.5;1.6') > 0 then begin

    sql := 'SELECT no_bukti, tanggal FROM %s ORDER BY tanggal DESC';
    if nomer = '1.1' then
      sql := Format(sql, ['tbl_trsmasuk_head'])
    else if nomer = '1.2' then
      sql := Format(sql, ['tbl_trskeluar_head'])
    else if nomer = '1.3' then
      sql := Format(sql, ['tbl_trsmutasi_head'])
    else if nomer = '1.4' then
      sql := Format(sql, ['tbl_trskoreksi_head'])
    else if nomer = '1.5' then
      sql := Format(sql, ['tbl_trsspkpotong_head'])
    else if nomer = '1.6' then
      sql := Format(sql, ['tbl_trsreturpenj_head']);

    Screen.Cursor := crSQLWait;
    if zqrNoTrans.Active then zqrNoTrans.Close;
    zqrNoTrans.SQL.Text := sql;
    zqrNoTrans.Open;
    Screen.Cursor := crDefault;

  end;

  if Pos(nomer,'3.4;2.7') > 0 then begin
    cxLabel18.Visible := False;
    cxlNoTrans.Visible := False;
  end
  else begin
    cxLabel18.Visible := True;
    cxlNoTrans.Visible := True;
  end;

  if nomer = '3.5' then begin
    cxLabel18.Visible := False;
    cxlNoTrans.Visible := False;
    GroupBox7.Visible := True;
    GroupBox7.Top := GroupBox1.Top + GroupBox1.Height;
  end;

  if nomer = '8.1' then begin
    GroupBox14.Visible := True;
  end;

  if Pos(nomer,'8.2') > 0 then begin
    GroupBox1.Visible := True;
    cxLabel18.Visible := False;
    cxlNoTrans.Visible := False;
  end;

  {
  if idx in [0,1,2,3,4] then begin
    GroupBox1.Visible := True;
  end
  else if idx = 5 then begin
    GroupBox2.Visible := True;
  end
  else if idx = 6 then
    GroupBox3.Visible := True
  else if idx = 7 then
    GroupBox4.Visible := True;
  }  
end;

procedure TfrmLaporan.GenerateTableKartuStok;
var
  q: TZQuery;
  g1, g2: real;
  sKodeBrg: string;
  sTgl1, sTgl2, gudang: string;
  tbl: TZTable;
begin
  sTgl1 := FormatDateMySQL(cxd_ksTgl1.Date);
  sTgl2 := FormatDateMySQL(cxd_ksTgl2.Date);

  sKodeBrg := zqrNamaBrg.FieldByName('kode').AsString;

  q := OpenRS('SELECT sf_getstokawal2(%s,''%s'',''%s'') AS G01',
    [sKodeBrg, 'G01', sTgl1]);
  g1 := q.FieldByName('G01').AsFloat;
  q.Close;

  q := OpenRS('SELECT sf_getstokawal2(%s,''%s'',''%s'') AS G02',
    [sKodeBrg, 'G02', sTgl1]);
  g2 := q.FieldByName('G02').AsFloat;
  q.Close;

  dm.zConn.ExecuteDirect('DELETE FROM tbl_tmp_rpt_kartu_stok ' +
    'WHERE `host` = ''' + GetHostName2 + '''');

  tbl := OpenTbl('tbl_tmp_rpt_kartu_stok');
  
  gudang := cxCmbGdgKS.Text;
  if gudang = 'SEMUA' then
    gudang := ''
  else if gudang = 'G01' then
    gudang := 'AND gudang = ''G01'''
  else
    gudang := 'AND gudang = ''G02''';

  q := OpenRS('SELECT * FROM v_lap_history_all WHERE kode_brg = %s ' +
      'AND tanggal BETWEEN ADDDATE(''%s'',1) AND ''%s'' %s ORDER BY tanggal, jenis',
      [sKodeBrg, sTgl1, sTgl2, gudang]);

  tbl.Insert;
  tbl.FieldByName('kode_brg').AsString := sKodeBrg;
  tbl.FieldByName('tanggal').AsDateTime := cxd_ksTgl1.Date;
  tbl.FieldByName('jenis').AsString := 'STOK';
  tbl.FieldByName('stok1').AsFloat := g1;
  tbl.FieldByName('stok2').AsFloat := g2;
  tbl.FieldByName('total').AsFloat := g1 + g2;
  tbl.FieldByName('host').AsString := GetHostName2;
  tbl.Post;

  while not q.Eof do begin
    tbl.Insert;
    tbl.FieldByName('tanggal').AsDateTime := q.FieldByName('tanggal').AsDateTime;
    tbl.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
    tbl.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
    tbl.FieldByName('deskripsi').AsString := q.FieldByName('deskripsi').AsString;
    tbl.FieldByName('jenis').AsString := q.FieldByName('jenis').AsString;
    tbl.FieldByName('gudang').AsString := q.FieldByName('gudang').AsString;
    tbl.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
    tbl.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
    tbl.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
    tbl.FieldByName('no_spmb').AsString := q.FieldByName('no_spmb').AsString;
    tbl.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
    tbl.FieldByName('user').AsString := q.FieldByName('user').AsString;
    tbl.FieldByName('user_dept').AsString := q.FieldByName('user_dept').AsString;
    tbl.FieldByName('host').AsString := GetHostName2;

    if q.FieldByName('gudang').AsString = 'G01' then begin
      tbl.FieldByName('stok2').AsFloat := g2;
      if q.FieldByName('jenis').AsString = 'MASUK' then begin
        tbl.FieldByName('stok1').AsFloat := tbl.FieldByName('qty').AsFloat + g1;
        g1 := g1 + tbl.FieldByName('qty').AsFloat;
      end
      else if q.FieldByName('jenis').AsString = 'KELUAR' then begin
        tbl.FieldByName('stok1').AsFloat := g1 - q.FieldByName('qty').AsFloat;
        g1 := g1 - tbl.FieldByName('qty').AsFloat;
      end;
    end;

    if q.FieldByName('gudang').AsString = 'G02' then begin
      tbl.FieldByName('stok1').AsFloat := g1;
      if q.FieldByName('jenis').AsString = 'MASUK' then begin
        tbl.FieldByName('stok2').AsFloat := tbl.FieldByName('qty').AsFloat + g2;
        g2 := g2 + tbl.FieldByName('qty').AsFloat;
      end
      else if q.FieldByName('jenis').AsString = 'KELUAR' then begin
        tbl.FieldByName('stok2').AsFloat := g2 - q.FieldByName('qty').AsFloat;
        g2 := g2 - tbl.FieldByName('qty').AsFloat;
      end;
    end;

    tbl.FieldByName('total').AsFloat := g1 + g2;

    tbl.Post;
    q.Next;
  end;
  tbl.Close;
  q.Close;
end;

procedure TfrmLaporan.btnCariClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [fKode.AsString]);
    cxl_ksNmBrg.Text := q.FieldByName('deskripsi').AsString;
    q.Close;
  end;

end;

procedure TfrmLaporan.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  zqrNamaBrg.Open;
  zqrSupp01.Open;
  zqrCust.Open;
  zqrKategori.Open;
  zqrSubKategori.Open;
  zqrBrgJasa.Open;
  zqrNoSO.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmLaporan.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [fKode.AsString]);
    cxlNamaBrg.Text := q.FieldByName('deskripsi').AsString;
    q.Close;
  end;

end;

procedure TfrmLaporan.btnCariBrg2Click(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [fKode.AsString]);
    cxlNmBrg2.Text := q.FieldByName('deskripsi').AsString;
    q.Close;
  end;

end;

procedure TfrmLaporan.btnNmBrgHargaClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;

  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [fKode.AsString]);
    cxlNmBrgHarga.Text := q.FieldByName('deskripsi').AsString;
    q.Close;
  end;

end;

procedure TfrmLaporan.btnCari18Click(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''', [fKode.AsString]);
    cxlNamaBrg.Text := q.FieldByName('deskripsi').AsString;
    q.Close;
  end;

end;

procedure TfrmLaporan.ChangeParentGB;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 11 then begin
      (Components[i] as TControl).Parent := Self; 
      if (Components[i] as TControl).Name <> 'GroupBox1' then begin
        (Components[i] as TControl).Top := GroupBox1.Top;
        (Components[i] as TControl).Left := GroupBox1.Left;
      end;
    end;
  end;
end;

procedure TfrmLaporan.CetakLap38;
var
  f: TfrmLapUmum;
begin
  f := TfrmLapUmum.Create(Self);
  with f do begin
    zqrHistAppFOBJ.ParamByName('tgl1').AsDate := cxdTgl38_1.Date;
    zqrHistAppFOBJ.ParamByName('tgl2').AsDate := cxdTgl38_2.Date;
    if cxlDept38.Text <> '' then begin
      zqrHistAppFOBJ.SQL.Strings[2] := 'AND diajukan_dept = ''' + cxlDept38.EditValue + ''' '; 
    end;
    if cxCmbApproval38.Text <> 'SEMUA' then begin
      if cxCmbApproval38.Text = 'BLM. APPROVAL' then
        zqrHistAppFOBJ.SQL.Strings[2] := zqrHistAppFOBJ.SQL.Strings[2] + ' AND f_app = 0'
      else
        zqrHistAppFOBJ.SQL.Strings[2] := zqrHistAppFOBJ.SQL.Strings[2] + ' AND f_app = 1';
    end;
    zqrHistAppFOBJ.Open;

    zqrHistAppFOBJDet.ParamByName('tgl1').AsDate := cxdTgl38_1.Date;
    zqrHistAppFOBJDet.ParamByName('tgl2').AsDate := cxdTgl38_2.Date;
    zqrHistAppFOBJDet.Open;

    rptHistAppFOBJ.ShowReport(True);
  end;
  
end;

end.
