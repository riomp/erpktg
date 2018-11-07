unit unFrmLaporanAcc;

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
  cxDBLookupComboBox, cxCheckBox, ComCtrls, frxExportImage, frxExportHTML,
  frxExportCSV;

type
  TfrmLaporanAcc = class(TForm)
    btnCetak: TButton;
    btnClose: TButton;
    GroupBox1: TGroupBox;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    lstBox: TListBox;
    lstBox2: TListBox;
    cxLabel18: TcxLabel;
    cxlNoTrans: TcxLookupComboBox;
    frxHTMLExport1: TfrxHTMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    TabSheet3: TTabSheet;
    lstBox3: TListBox;
    GroupBox0: TGroupBox;
    cxdTgl0_1: TcxDateEdit;
    cxLabel37: TcxLabel;
    cxdTgl0_2: TcxDateEdit;
    frxCSVExport1: TfrxCSVExport;
    PageControl1: TPageControl;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox13: TGroupBox;
    cxlCustomers: TcxLookupComboBox;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxlNmBrgHarga: TcxLookupComboBox;
    btnNmBrgHarga: TButton;
    TabSheet11: TTabSheet;
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
    cxLabel56: TcxLabel;
    cxCmbApproval38: TcxComboBox;
    TabSheet24: TTabSheet;
    GroupBox17: TGroupBox;
    cxd111_1: TcxDateEdit;
    cxLabel59: TcxLabel;
    cxd111_2: TcxDateEdit;
    cxl111_cust: TcxLookupComboBox;
    cxLabel60: TcxLabel;
    gb12: TGroupBox;
    cxd12_1: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxd12_2: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxCmbJenisJurnal: TcxComboBox;
    cxCmbKodeJenisJurnal: TcxComboBox;
    cxLabel17: TcxLabel;
    cxlAkun12: TcxLookupComboBox;
    gb13: TGroupBox;
    cxd13_1: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxd13_2: TcxDateEdit;
    cxLabel5: TcxLabel;
    zqrBB: TZReadOnlyQuery;
    dsBB: TDataSource;
    fdbBB: TfrxDBDataset;
    rptBB: TfrxReport;
    TabSheet4: TTabSheet;
    GroupBox3: TGroupBox;
    cxlCustomer1: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    zqrCustomer: TZReadOnlyQuery;
    dsCustomer: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    zqrBPP: TZReadOnlyQuery;
    dsBPP: TDataSource;
    fdbBPP: TfrxDBDataset;
    rptBPP: TfrxReport;
    GroupBox6: TGroupBox;
    cxlSupp: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    Label3: TLabel;
    zqrBPH: TZReadOnlyQuery;
    dsBPH: TDataSource;
    fdbBPH: TfrxDBDataset;
    rptBPH: TfrxReport;
    zqrSupplier: TZReadOnlyQuery;
    dsSupplier: TDataSource;
    zqrSA: TZReadOnlyQuery;
    dsSA: TDataSource;
    fdbSA: TfrxDBDataset;
    TabSheet5: TTabSheet;
    GroupBox18: TGroupBox;
    cxTgl1_gp18: TcxDateEdit;
    cxLabel61: TcxLabel;
    cxTgl2_gp18: TcxDateEdit;
    cxlAkun18: TcxLookupComboBox;
    cxChkAkun18: TcxCheckBox;
    zqrAkun: TZReadOnlyQuery;
    dsAkun: TDataSource;
    cxchklistAkun: TCheckListBox;
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
    procedure cxChkAkun18PropertiesChange(Sender: TObject);
  private
    procedure HideAllGroupBox;
    procedure GenerateTableKartuStok;
    procedure ChangeParentGB;
    procedure CetakLap38;
    procedure CetakLap11;
    procedure CetakLap12;
    procedure CetakLap13;
    procedure CetakLap14;
    procedure CetakLap15;
    procedure CetakLap16;
    procedure CetakLap17;
    procedure CetakLap18;
    procedure TampilListAkun;
  public
    { Public declarations }
  end;

var
  frmLaporanAcc: TfrmLaporanAcc;

implementation

uses unDm, unTools, unFrmLapUmum, unFrmCari, unFrmLapCCR, unAplikasi,
  unFrmLapAcc;

{$R *.dfm}

procedure TfrmLaporanAcc.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  pg.ActivePageIndex := 0;

  ChangeParentGB;

  lstBox.Items.CommaText :=
    '"1.1   Daftar Akun",' +     // 0
    '"1.2   Jurnal - Semua Transaksi",' +
    '"1.3   Neraca",' +
    '"1.4   Neraca Saldo",' +
    '"1.5   Buku Besar",' +
    '"1.6   Buku Pembantu Piutang",' +
    '"1.7   Buku Pembantu Hutang",' +
    '"1.8   Daftar Vendor Aging (Account Payable)"';

   lstBox2.Items.CommaText :=
    '"2.1   Sales Order Terbuka",' +
    // '"2.2   Rekapitulasi Nomer Surat Jalan Per SO",' +
    '"2.3   Quantity Pengiriman per SO - DETAIL",' + //'"2.3   Rekapitulasi Qty. Sales Order",' +
    // '"2.4   Rekapitulasi Surat Jalan Per Tanggal",' +
    '"2.5   Rekap SJ - DETAIL",' + //'"2.5   Rekapitulasi Surat Jalan Per Tanggal - DETAIL",' +
    '"2.6   Rekap Barang Terjual",' + //'"2.6   Rekapitulasi Barang Keluar Per Tanggal",' +
    '"2.7   Rekap SJ Umum ",' + // '"2.7   Rekapitulasi Surat Jalan Umum",' +
    '"2.8   Rekap SO - Detail",' +
    '"2.9   No. Urut Surat Jalan"';

    //'"2.2  History SO (VS Surat Jalan)"';  // 9

    lstBox3.Items.CommaText :=
      '"3.1   Rekap PO Per Supplier",' +
      '"3.2   Rekap PO Per Barang",' +
      '"3.3   History PO Per Barang",' +
      '"3.4   History Approval PO",' +
      '"3.5   Pengiriman Barang Per PO",' +
      '"3.6   Rekap PO Jasa Per Supplier",' +
      '"3.7   Rekap PO Per Jasa",' +
      '"3.8   History Approval FOBJ"';


  cxd12_1.Date := FDOM(Date);
  cxd12_2.Date := LDOM(Date);

  cxCmbOperator.Properties.Items.Add('=');
  cxCmbOperator.Properties.Items.Add('>');
  cxCmbOperator.Properties.Items.Add('<');
  cxCmbOperator.Properties.Items.Add('<=');
  cxCmbOperator.Properties.Items.Add('>=');
  cxCmbOperator.ItemIndex := 0;

  HideAllGroupBox;

  gb12.Top := GroupBox1.Top;
  gb12.Left := GroupBox1.Left;
  gb13.Top := GroupBox1.Top;
  gb13.Left := GroupBox1.Left;

  GroupBox0.Top := GroupBox1.Top;
  GroupBox0.Left := GroupBox1.Left;
  GroupBox2.Top := GroupBox1.Top;
  GroupBox2.Left := GroupBox1.Left;

  GroupBox4.Top := GroupBox1.Top;
  GroupBox4.Left := GroupBox1.Left;
  GroupBox5.Top := GroupBox1.Top;
  GroupBox5.Left := GroupBox1.Left;

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

  q := OpenRS('SELECT * FROM tbl_subkategori_brg ORDER BY subkategori');
  cxCmbSubKtgr.Properties.Items.Add('SEMUA');
  while not q.Eof do begin
    cxCmbSubKtgr.Properties.Items.Add(q.FieldByName('subkategori').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbSubKtgr.ItemIndex := 0;

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

  zqrCustomer.Open ;
  zqrSupplier.Open;
  zqrAkun.Open;

end;

procedure TfrmLaporanAcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmLaporanAcc.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLaporanAcc.btnCetakClick(Sender: TObject);
var
  Memo: TfrxMemoView;
  tbl: TZTable;
  f: TfrmLapUmum;
  fCCR: TFrmLapCCR;
  sKode, sTmp, skat, sKtgr: string;
  lBox: TListBox;
  q: TZQuery;
begin
  if pg.ActivePageIndex = 0 then
    lBox := lstBox
  else if pg.ActivePageIndex = 1 then
    lBox := lstBox2
  else if pg.ActivePageIndex = 2 then
    lBox := lstBox3
  else if pg.ActivePageIndex = 3 then

  else if pg.ActivePageIndex = 4 then

  else if pg.ActivePageIndex = 5 then

  else if pg.ActivePageIndex = 6 then

  else if pg.ActivePageIndex = 7 then
    ;

  if lBox.ItemIndex = -1 then Abort;
  sKode := lBox.Items.Strings[lBox.ItemIndex];
  sKode := Trim(Copy(sKode,1,6));

  if sKode = '1.1' then begin
    CetakLap11;
  end
  else if sKode = '1.2' then begin
    CetakLap12;
  end
  else if sKode = '1.3' then begin
    CetakLap13;
  end
  else if sKode = '1.4' then begin
    CetakLap17;
  end
  else if sKode = '1.5' then begin
     CetakLap14;
  end
  else if sKode = '1.6' then begin
    CetakLap15;
  end
  else if sKode = '1.7' then begin
    CetakLap16;
  end
  else if sKode = '1.8' then begin
     CetakLap18;
  end
  else if sKode = '1.9' then begin


  end
  else if sKode = '1.10' then begin

  end
  else if sKode = '1.11' then begin

  end
  else if sKode = '2.1' then begin

  end
  else if sKode = '2.2' then begin

  end
  else if sKode = '2.3' then begin

  end
  else if sKode = '2.4' then begin

  end
  else if sKode = '2.5' then begin

  end
  else if sKode = '2.6' then begin

  end
  else if sKode = '2.7' then begin
    
  end
  else if sKode = '2.8' then begin
    
  end
  else if sKode = '2.9' then begin
    
  end
  else if sKode = 'xx' then begin
    
  end
  else if sKode = '3.1' then begin
    
  end
  else if sKode = '3.2' then begin

  end
  else if sKode = '3.3' then begin
    
  end
  else if sKode = '3.4' then begin


  end
  else if sKode = '3.5' then begin
    
  end
  else if sKode = '3.6' then begin
    
  end
  else if sKode = '3.8' then begin
    
  end
  else if sKode = '4.1' then begin
    
  end
  else if sKode = '4.2' then begin
    
  end
  else if sKode = '4.3' then begin

   
  end
  else if sKode = '4.4' then begin

    
  end
  else if sKode = '5.1' then begin
    
  end
  else if sKode = '5.2' then begin

  end
  else if sKode = '6.1' then begin
    
  end
  else if sKode = '6.2' then begin
    
  end
  else if sKode = '6.3' then begin
    
  end
  else if sKode = '6.4' then begin
    
  end
  else if sKode = '6.5' then begin
    
  end
  else if sKode = '6.6' then begin
    
  end
  else if sKode = '8.1' then begin
    
  end
  else if sKode = '8.2' then begin
    
  end
  else if sKode = '7.1' then begin
    
  end;
end;

procedure TfrmLaporanAcc.HideAllGroupBox;
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

procedure TfrmLaporanAcc.lstBoxClick(Sender: TObject);
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

  if Pos(nomer, '1.1') > 0 then begin
    
  end
  else if Pos(nomer,'1.2') > 0 then begin
    gb12.Visible := True
  end
  else if Pos(nomer, '1.3') > 0 then begin
    gb13.Visible := True
  end
   else if Pos(nomer, '1.4') > 0 then begin
    GroupBox0.Visible := True;
  end
     else if Pos(nomer, '1.5') > 0 then begin
    GroupBox18.Visible := True ;
    TampilListAkun ;
  end
     else if Pos(nomer, '1.6') > 0 then begin
    GroupBox3.Visible := True
  end
  else if Pos(nomer, '1.7') > 0 then begin
    GroupBox6.Visible := True
  end
   else if Pos(nomer, '1.8') > 0 then begin
    gb13.Visible := True
  end
  else if Pos(nomer,'2.5') > 0 then
    GroupBox8.Visible := True
  else if Pos(nomer,'1.7') > 0 then
    GroupBox2.Visible := True
  else if Pos(nomer,'1.8') > 0 then
    
  else if Pos(nomer,'1.9') > 0 then
    GroupBox4.Visible := True
  else if Pos(nomer,'2.1;') > 0 then
    GroupBox5.Visible := True
  else if Pos(nomer,'2.2;2.3') > 0 then
    
  else if Pos(nomer, '3.1;3.2;3.3;') > 0 then
    GroupBox7.Visible := True
  else if Pos(nomer, '3.6') > 0 then
    GroupBox15.Visible := True
  else if Pos(nomer, '3.8') > 0 then
    GroupBox16.Visible := True
  else if Pos(nomer, '4.1;4.2;4.3;4.4;3.5') > 0 then begin
    GroupBox1.Visible := True;
    cxLabel18.Visible := False;
    cxlNoTrans.Visible := False;
  end
  else if Pos(nomer,'5.1') > 0 then begin
    GroupBox9.Visible := True;
  end
  else if Pos(nomer,'5.2') > 0 then begin
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

procedure TfrmLaporanAcc.GenerateTableKartuStok;
begin

end;

procedure TfrmLaporanAcc.btnCariClick(Sender: TObject);
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

procedure TfrmLaporanAcc.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  Screen.Cursor := crDefault;
end;

procedure TfrmLaporanAcc.btnCariBrgClick(Sender: TObject);
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
    q.Close;
  end;

end;

procedure TfrmLaporanAcc.btnCariBrg2Click(Sender: TObject);
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

procedure TfrmLaporanAcc.btnNmBrgHargaClick(Sender: TObject);
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

procedure TfrmLaporanAcc.btnCari18Click(Sender: TObject);
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
    
    q.Close;
  end;

end;

procedure TfrmLaporanAcc.ChangeParentGB;
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

procedure TfrmLaporanAcc.CetakLap38;
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

procedure TfrmLaporanAcc.CetakLap11;
var
  f: TfrmLapAcc;
begin
  f := TfrmLapAcc.Create(Self);
  with f do begin
    zqrCoaH.Open;
    rptCoa.ShowReport(True);
    f.Release;
  end;

end;

procedure TfrmLaporanAcc.CetakLap12;
var
  f: TfrmLapAcc;
  sTgl1, sTgl2: string;
  mm: TfrxMemoView;
begin
  Screen.Cursor := crSQLWait;
  
  f := TfrmLapAcc.Create(Self);
  sTgl1 := FormatDateMySQL(cxd12_1.Date);
  sTgl2 := FormatDateMySQL(cxd12_2.Date);

  f.zqrJurnal.SQL.Strings[3] := 'WHERE a.tanggal BETWEEN ''' + sTgl1 + ''' AND ''' +
    sTgl2 + ''' ';

  if cxlAkun12.Text <> '' then begin
    f.zqrJurnal.SQL.Text := 'SELECT * FROM v_lap_jurnal WHERE akun = ''' + cxlAkun12.Text + ''' ' +
      'AND tanggal BETWEEN ''' + sTgl1 + ''' AND ''' + sTgl2 + '''';
  end;

  f.zqrJurnal.Open;
  mm := f.rptJurnal.FindObject('mmPeriode') as TfrxMemoView;
  mm.Text := 'Periode : ' + cxd12_1.Text + ' S/D ' + cxd12_2.Text;
  Screen.Cursor := crDefault;
  f.rptJurnal.ShowReport(True);
  f.Release;
end;

procedure TfrmLaporanAcc.CetakLap13;
var
  f: TFrmLapAcc;
  sTgl1, sTgl2: string;
  mm: TfrxMemoView;
begin
  Screen.Cursor := crSQLWait;
  f := TfrmLapAcc.Create(Self);

  sTgl1 := FormatDateTime('yyyy-mm-dd', cxd13_1.Date);
  sTgl2 := FormatDateTime('yyyy-mm-dd', cxd13_2.Date);

  dm.zConn.ExecuteDirect(
    Format('CALL sp_neraca_2(''1970-01-01'',''%s'')',
      [sTgl1, sTgl2])
  );

  f.zqrNeraca.SQL.Text := 'SELECT * FROM _tmp_neraca WHERE noakun <> ''--''';
  f.zqrNeraca.Open;
  mm := f.rptNeraca.findObject('Memo3') as TfrxMemoView;
  mm.Text := FormatDateTime('MMMM yyyy', cxd13_1.Date);
  Screen.Cursor := crDefault;
  f.rptNeraca.ShowReport(True);
  f.Release;
end;

procedure TfrmLaporanAcc.CetakLap14;
var
  mm: TfrxMemoView;
  i : Integer ;
  lst: TStringList;
  s: string;
begin
  {zqrBB.Close;
  zqrSA.Close;
  zqrBB.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrBB.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
  zqrSA.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrBB.Open;
  zqrSA.Open;
  mm := rptBB.findObject('Memo15') as TfrxMemoView;
  mm.Text :=  FormatDateTime('dd MMMM yyyy', cxdTgl0_1.Date ) + ' S/D ' + FormatDateTime('dd MMMM yyyy', cxdTgl0_2.Date );
  rptBB.ShowReport(True); }
  if cxChkAkun18.Checked then begin
      with zqrBB do begin
          Close ;
          SQL.Text := 'select a.akun,b.nama,c.tanggal,a.no_jurnal,a.keterangan,a.debet,a.kredit ' +
                      'from tbl_jurnal_det a join (SELECT noakun, nama, (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak ' +
                      'FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0) b on a.akun=b.noakun ' +
                      'left join tbl_jurnal c on a.no_jurnal=c.no_jurnal WHERE (c.tanggal  between :tgl1 and :tgl2) ' +
                      'order by a.tanggal,a.akun' ;
           ParamByName('tgl1').AsDate := cxTgl1_gp18.Date;
           ParamByName('tgl2').AsDate := cxTgl2_gp18.Date;
          Open;
        end;

        zqrSA.Close;
        zqrSA.ParamByName('tgl1').AsDate :=  cxTgl1_gp18.Date;
        zqrSA.Open;
        mm := rptBB.findObject('Memo15') as TfrxMemoView;
        mm.Text :=  FormatDateTime('dd MMMM yyyy',cxTgl1_gp18.Date ) + ' S/D ' + FormatDateTime('dd MMMM yyyy', cxTgl2_gp18.Date );
        rptBB.ShowReport(True);
  end
  else begin
        lst := TStringList.Create;
           for i := 0 to cxchklistAkun.Items.Count -1 do
           begin
             if cxchklistakun.checked[i] then
                lst.Add('''' + cxChkListAkun.Items.Strings[i] + '''');
             end;
             s := lst.CommaText;
             s := StringReplace(s, '"','',[rfReplaceAll]);
             //MsgBox(s);
       with zqrBB do begin
          Close ;
          SQL.Text := 'select a.akun,b.nama,c.tanggal,a.no_jurnal,a.keterangan,a.debet,a.kredit ' +
                      'from tbl_jurnal_det a join (SELECT noakun, nama, (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak ' +
                      'FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0) b on a.akun=b.noakun ' +
                      'left join tbl_jurnal c on a.no_jurnal=c.no_jurnal WHERE (c.tanggal  between :tgl1 and :tgl2) and b.nama in  ( ' +
                      s + ') ' + 
                      'order by a.tanggal,a.akun' ;
           ParamByName('tgl1').AsDate := cxTgl1_gp18.Date;
           ParamByName('tgl2').AsDate := cxTgl2_gp18.Date;
             //ParamByName('namaakun').AsString := lst.CommaText;
             Open;
             //MsgBox(SQL.Text);
             //Memo1.Text := SQL.Text;
           end;
           zqrSA.Close;
        zqrSA.ParamByName('tgl1').AsDate :=  cxTgl1_gp18.Date;
        zqrSA.Open;
        mm := rptBB.findObject('Memo15') as TfrxMemoView;
        mm.Text :=  FormatDateTime('dd MMMM yyyy',cxTgl1_gp18.Date ) + ' S/D ' + FormatDateTime('dd MMMM yyyy', cxTgl2_gp18.Date );
       rptBB.ShowReport(True);

        end;

  end;


procedure TfrmLaporanAcc.CetakLap15;
begin
  zqrBPP.Close;
  zqrBPP.ParamByName('kode_cust').AsString := cxlCustomer1.EditValue;
  zqrBPP.Open;

  rptBPP.ShowReport(True);
end;

procedure TfrmLaporanAcc.CetakLap16;
begin
  zqrBPH.Close;
  zqrBPH.ParamByName('kode_cust').AsString := cxlSupp.EditValue;
  zqrBPH.Open;

  rptBPH.ShowReport(True);
end;

procedure TfrmLaporanAcc.cxChkAkun18PropertiesChange(Sender: TObject);
begin
  if cxChkAkun18.Checked then
    cxchklistAkun.Enabled := False
    else  cxchklistAkun.Enabled := True ;
end;

procedure TfrmLaporanAcc.TampilListAkun;
var
  i : Integer ;
begin
  try
    for i := 0 to zqrAkun.RecordCount do begin
       cxchklistAkun.Items.Add(zqrAkun.FieldByName('nama').Asstring);
       zqrAkun.Next;
    end;
    except
  end;
end;

procedure TfrmLaporanAcc.CetakLap17;
var
  f: TFrmLapAcc;
  mm: TfrxMemoView;
begin
  f := TfrmLapAcc.Create(Self);

  with f do begin
     with zqrNeracaSaldo do begin
      if Active then Close;
      Screen.Cursor := crSQLWait;
      ParamByName('tgl1').AsDateTime := cxdTgl0_1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl0_2.Date;
      Open;
      Screen.Cursor := crDefault;
    end;

    mm := rptNeracaSaldo.findObject('Memo7') as TfrxMemoView;
    mm.Text :=  FormatDateTime('dd MMMM yyyy',cxdTgl0_1.Date ) + ' S/D ' + FormatDateTime('dd MMMM yyyy', cxdTgl0_2.Date );

    rptNeracaSaldo.ShowReport(True);
    Release;
  end;
end;

procedure TfrmLaporanAcc.CetakLap18;
var
  f: TFrmLapAcc;
   mm: TfrxMemoView;
begin
  f := TfrmLapAcc.Create(Self);
  with f do begin
     with zqrAP do begin
      if Active then Close;
      Screen.Cursor := crSQLWait;
      ParamByName('tgl1').AsDateTime := cxd13_1.Date;
      Open;
      Screen.Cursor := crDefault;
    end;
    mm := rptAP.FindObject('Memo12') as TfrxMemoView;
    mm.Text := 'Cutt Of Date : ' + FormatDateTime('dd MMMM yyyy',cxd13_1.Date );
    rptAP.ShowReport(True);
    Release;
  end;
end;

end.
