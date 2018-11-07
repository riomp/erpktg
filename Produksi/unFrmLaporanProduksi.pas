unit unFrmLaporanProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxSpinEdit,
  cxCheckBox, cxDropDownEdit, frxExportCSV, frxExportImage, frxExportHTML,
  frxExportXLS, frxClass, frxExportPDF, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, StdCtrls, cxLabel, cxTextEdit, cxMaskEdit, frxDBSet, DB, ZAbstractRODataset, ZDataset,DateUtils,
  cxCalendar, ComCtrls, frxChart;

type
  TfrmLaporanProduksi = class(TForm)
    pg: TPageControl;
    TabSheet1: TTabSheet;
    lstBox: TListBox;
    TabSheet2: TTabSheet;
    lstBox2: TListBox;
    TabSheet3: TTabSheet;
    lstBox3: TListBox;
    GroupBox0: TGroupBox;
    cxdTgl0_1: TcxDateEdit;
    cxLabel37: TcxLabel;
    cxdTgl0_2: TcxDateEdit;
    btnCetak: TButton;
    btnClose: TButton;
    GroupBox1: TGroupBox;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel18: TcxLabel;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxCSVExport1: TfrxCSVExport;
    PageControl1: TPageControl;
    TabSheet9: TTabSheet;
    GroupBox13: TGroupBox;
    cxlCustomers: TcxLookupComboBox;
    cxLabel44: TcxLabel;
    cxLabel45: TcxLabel;
    cxlNmBrgHarga: TcxLookupComboBox;
    btnNmBrgHarga: TButton;
    TabSheet10: TTabSheet;
    gb12: TGroupBox;
    cxd12_1: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxd12_2: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxCmbJenisJurnal: TcxComboBox;
    cxCmbKodeJenisJurnal: TcxComboBox;
    cxLabel17: TcxLabel;
    cxlAkun12: TcxLookupComboBox;
    TabSheet11: TTabSheet;
    gb13: TGroupBox;
    cxd13_1: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxd13_2: TcxDateEdit;
    cxLabel5: TcxLabel;
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
    rptRekapLHP: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    dsRekapLHP: TDataSource;
    zqrRekapLHP: TZReadOnlyQuery;
    dsSumMesin: TDataSource;
    zqrSumMesin: TZReadOnlyQuery;
    fdbSumMesin: TfrxDBDataset;
    rptSumMesin: TfrxReport;
    fdbSumDT: TfrxDBDataset;
    zqrSumDT: TZReadOnlyQuery;
    dsSumDT: TDataSource;
    fdbSumAfval: TfrxDBDataset;
    zqrSumAfval: TZReadOnlyQuery;
    dsSumAfval: TDataSource;
    rptSumMesin1: TfrxReport;
    dsDetailMesin: TDataSource;
    zqrDetailMesin: TZReadOnlyQuery;
    fdbDetailMesin: TfrxDBDataset;
    Label1: TLabel;
    Label2: TLabel;
    TabSheet4: TTabSheet;
    cxcProses: TcxComboBox;
    zqrLHP: TZReadOnlyQuery;
    dsLHP: TDataSource;
    fdbLHP: TfrxDBDataset;
    rptLHP: TfrxReport;
    Label3: TLabel;
    dsDetAfval: TDataSource;
    zqrDetAfval: TZReadOnlyQuery;
    fdBDetAfval: TfrxDBDataset;
    rptDetAfval: TfrxReport;
    dsDetDT: TDataSource;
    zqrDetDT: TZReadOnlyQuery;
    fdbDetDT: TfrxDBDataset;
    Label4: TLabel;
    dsRealSPK: TDataSource;
    zqrRealSPK: TZReadOnlyQuery;
    fdbRealSPK: TfrxDBDataset;
    rptRealSPK: TfrxReport;
    Label5: TLabel;
    dsSPKBahan: TDataSource;
    zqrSPKBahan: TZReadOnlyQuery;
    fdbSPKBahan: TfrxDBDataset;
    rptSPKBahan: TfrxReport;
    Label6: TLabel;
    dsLokasiProduksi: TDataSource;
    zqrLokasiProduksi: TZReadOnlyQuery;
    fdbLokasiPRoduksi: TfrxDBDataset;
    rptLokasiProduksi: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCloseClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure lstBoxClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideAllGroupBox;
    procedure ChangeParentGB;
    procedure CetakLap11;
    procedure CetakLap12;
    procedure CetakLap13;
    procedure CetakLap14;
    procedure CetakLap15;
    procedure CetakLap16;
    procedure CetakLap17;
  public
    { Public declarations }
  end;

var
  frmLaporanProduksi: TfrmLaporanProduksi;

implementation

uses
  unDm, unTools, unAplikasi, unFrmLapUmum, unFrmLapCCR;

{$R *.dfm}

procedure TfrmLaporanProduksi.ChangeParentGB;
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

procedure TfrmLaporanProduksi.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
    pg.ActivePageIndex := 0;
   ChangeParentGB;

  lstBox.Items.CommaText :=
    '"1.1   Rekap Hasil Produksi",' +    // 0
    '"1.2   Sumary Hasil Produksi Per Mesin & Proses", ' +
    '"1.3   Sumary Afval & Downtime Per Proses", ' +
    '"1.4   Detail Afval & Downtime", ' +
    '"1.5   Realisasi SPK", ' +
    '"1.6   KG SPK VS Bahan Terpakai", ' +
    '"1.7   Laporan Produksi Per Lokasi"';
    //'"1.3   Neraca"';

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

end;

procedure TfrmLaporanProduksi.HideAllGroupBox;
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

procedure TfrmLaporanProduksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Release;
end;

procedure TfrmLaporanProduksi.btnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TfrmLaporanProduksi.btnCetakClick(Sender: TObject);
var
  Memo: TfrxMemoView;
  tbl: TZTable;
  f: TfrmLapUmum;
  fCCR: TFrmLapCCR;
  sKode, sTmp, skat, sKtgr: string;
  lBox: TListBox;
  q: TZQuery;
  i,j : Integer;
begin
  if pg.ActivePageIndex = 0 then
    lBox := lstBox
  else if pg.ActivePageIndex = 1 then

  else if pg.ActivePageIndex = 2 then

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
     CetakLap14;
  end
  else if sKode = '1.5' then begin
     CetakLap15;
  end
  else if sKode = '1.6' then begin
    CetakLap16;
  end
  else if sKode = '1.7' then begin
    CetakLap17;
  end
  else if sKode = '1.8' then begin

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

procedure TfrmLaporanProduksi.CetakLap11;
var
  i,j : Integer ;
  q : TZQuery ;
  mm: TfrxMemoView;
begin
 {j := DaysBetween(cxdTgl0_1.date,cxdTgl0_2.date);
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
    zqrRekapLHP.Open;
    rptRekapLHP.ShowReport(True);   }
    zqrLHP.Close;
    zqrLHP.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
    zqrLHP.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
    zqrLHP.Open;

    mm := rptLHP.findObject('Memo18') as TfrxMemoView;
    mm.Text := 'Periode : ' + FormatDateTime('dd MMMM yyyy',cxdTgl0_1.Date ) + ' S/D ' + FormatDateTime('dd MMMM yyyy', cxdTgl0_2.Date );
    rptLHP.ShowReport(true);
end;

procedure TfrmLaporanProduksi.lstBoxClick(Sender: TObject);
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
  cxcProses.Visible := True;

  HideAllGroupBox;

  if Pos(nomer, '1.1;1.2;1.4;1.5;1.6;1.7') > 0 then begin
    GroupBox0.Visible := True;
  end
  else if Pos(nomer,'1.3') > 0 then begin
    GroupBox1.Visible := True;
  end
  else if Pos(nomer, '2.3') > 0 then begin
    gb13.Visible := True
  end
  else if Pos(nomer, '1.11') > 0 then begin
    GroupBox17.Visible := True
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
    //cxlNoTrans.Visible := False;
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
   //cxlNoTrans.Visible := False;
  end
  else begin
    cxLabel18.Visible := True;
    //cxlNoTrans.Visible := True;
  end;

  if nomer = '3.5' then begin
    cxLabel18.Visible := False;
    //cxlNoTrans.Visible := False;
    GroupBox7.Visible := True;
    GroupBox7.Top := GroupBox1.Top + GroupBox1.Height;
  end;

  if nomer = '8.1' then begin
    GroupBox14.Visible := True;
  end;

  if Pos(nomer,'8.2') > 0 then begin
    GroupBox1.Visible := True;
    cxLabel18.Visible := False;
   // cxlNoTrans.Visible := False;
  end;
end;

procedure TfrmLaporanProduksi.CetakLap12;
begin
   zqrSumMesin.Close;
   zqrDetailMesin.Close ;

    zqrSumMesin.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
    zqrSumMesin.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
    zqrDetailMesin.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
    zqrDetailMesin.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;

    zqrSumMesin.Open;
    zqrDetailMesin.Open;

    rptSumMesin1.ShowReport(True);
end;

procedure TfrmLaporanProduksi.CetakLap13;
begin
    zqrSumAfval.Close;
    zqrSumDT.Close;

    zqrSumAfval.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrSumAfval.ParamByName('tgl2').AsDate := cxdTgl2.Date;
    zqrSumAfval.ParamByName('routing').AsString := cxcProses.Text;
    zqrSumDT.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrSumDT.ParamByName('tgl2').AsDate := cxdTgl1.Date;
    zqrSumDT.ParamByName('routing').AsString := cxcProses.Text;

    
    zqrSumAfval.Open;
    zqrSumDT.Open;
    rptSumMesin.ShowReport(True);

end;

procedure TfrmLaporanProduksi.CetakLap14;
begin
  zqrDetAfval.Close ;
  zqrDetDT.Close;

  zqrDetAfval.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrDetAfval.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;
  zqrDetDT.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrDetDT.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;

  zqrDetAfval.Open;
  zqrDetDT.Open;
  rptDetAfval.ShowReport(True);
end;

procedure TfrmLaporanProduksi.CetakLap15;
begin
  zqrRealSPK.Close ;

  zqrRealSPK.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrRealSPK.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;

  zqrRealSPK.Open ;
  rptRealSPK.ShowReport(True);
end;

procedure TfrmLaporanProduksi.CetakLap16;
begin
  zqrSPKBahan.Close ;

  zqrSPKBahan.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrSPKBahan.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;

  zqrSPKBahan.Open ;
  rptSPKBahan.ShowReport(True);
end;

procedure TfrmLaporanProduksi.CetakLap17;
var
  mm: TfrxMemoView;
begin
  zqrLokasiProduksi.Close;

  zqrLokasiProduksi.ParamByName('tgl1').AsDate := cxdTgl0_1.Date;
  zqrLokasiProduksi.ParamByName('tgl2').AsDate := cxdTgl0_2.Date;

  zqrLokasiProduksi.Open ;

   mm := rptLokasiProduksi.findObject('Memo28') as TfrxMemoView;
   mm.Text :=  FormatDateTime('dd MMMM yyyy',cxdTgl0_1.Date ) + ' S/D ' + FormatDateTime('dd MMMM yyyy', cxdTgl0_2.Date );
  rptLokasiProduksi.ShowReport(True);

end;

end.
