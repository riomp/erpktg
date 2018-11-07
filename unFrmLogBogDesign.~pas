unit unFrmLogBogDesign;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxLabel, ComCtrls, StdCtrls, ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, cxSpinEdit,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ImgList, ZAbstractDataset, cxCheckBox, cxRadioGroup,
  cxGroupBox, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage,
  IdText, kbmMemTable;

type
  TfrmLogBookDesign = class(TfrmTplTrans)
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxLabel1: TcxLabel;
    cxtNoTrial: TcxTextEdit;
    cxtPemohon: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxdTgl: TcxDateEdit;
    btnBaru2: TButton;
    Button1: TButton;
    btnKeluar2: TButton;
    tblView: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqrLog: TZReadOnlyQuery;
    dsLog: TDataSource;
    tblViewno_trial: TcxGridDBColumn;
    tblViewtanggal: TcxGridDBColumn;
    tblViewpemohon: TcxGridDBColumn;
    tblViewno_ppp: TcxGridDBColumn;
    tblViewno_pppb: TcxGridDBColumn;
    tblViewno_app: TcxGridDBColumn;
    tblViewtgl_selesai: TcxGridDBColumn;
    tblViewuser: TcxGridDBColumn;
    tblViewuser_dept: TcxGridDBColumn;
    tblViewtgl_input: TcxGridDBColumn;
    cxLabel7: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    TabSheet3: TTabSheet;
    cxLabel8: TcxLabel;
    cxtNoTrial2: TcxTextEdit;
    Button2: TButton;
    Button3: TButton;
    cxLabel9: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel10: TcxLabel;
    cxtWaktu: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxmDeskTrial: TcxMemo;
    GroupBox2: TGroupBox;
    cxLabel13: TcxLabel;
    pgBom: TPageControl;
    tbA: TTabSheet;
    nxGrd1: TNextGrid;
    NxGraphicColumn1: TNxImageColumn;
    nxColNo1: TNxIncrementColumn;
    nxColDesk1: TNxTextColumn;
    nxColQty1: TNxNumberColumn;
    nxColSat1: TNxTextColumn;
    tbB: TTabSheet;
    nxGrd2: TNextGrid;
    NxImageColumn1: TNxImageColumn;
    NxIncrementColumn2: TNxIncrementColumn;
    nxColDesk2: TNxTextColumn;
    nxColQty2: TNxNumberColumn;
    nxColSat2: TNxTextColumn;
    tbC: TTabSheet;
    nxGrd3: TNextGrid;
    NxImageColumn2: TNxImageColumn;
    NxIncrementColumn3: TNxIncrementColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn6: TNxTextColumn;
    cxLabel14: TcxLabel;
    cxCmbSatuan: TcxComboBox;
    cxsQtyBom: TcxSpinEdit;
    btnTambahBom: TButton;
    btnSimpanKP: TButton;
    btnEdit2: TButton;
    cxlMesin: TcxLookupComboBox;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    cxLabel15: TcxLabel;
    ImageList1: TImageList;
    cxlDeskripsi: TcxLookupComboBox;
    btnCariBrg: TButton;
    zqrKodeHead: TZQuery;
    dsKodeHead: TDataSource;
    nxColKode1: TNxTextColumn;
    nxColKode2: TNxTextColumn;
    nxColKode3: TNxTextColumn;
    cxChkPosting: TcxCheckBox;
    cxRadioGroup1: TcxRadioGroup;
    cxrDept: TcxRadioButton;
    cxrCust: TcxRadioButton;
    cxlDept: TcxLookupComboBox;
    zqrDept: TZReadOnlyQuery;
    dsDept: TDataSource;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxlCust: TcxLookupComboBox;
    tblViewf_posted: TcxGridDBColumn;
    tblViewdept: TcxGridDBColumn;
    tblViewnama_customer: TcxGridDBColumn;
    tblViewid: TcxGridDBColumn;
    tblViewmesin: TcxGridDBColumn;
    tblViewdeskripsi_trial: TcxGridDBColumn;
    tblViewwaktu: TcxGridDBColumn;
    tblViewf_status: TcxGridDBColumn;
    cxLabel16: TcxLabel;
    cxtDesk2: TcxTextEdit;
    cxLabel17: TcxLabel;
    btnTindakLanjutTrial: TButton;
    idSMTP: TIdSMTP;
    TabSheet4: TTabSheet;
    nxGrdDet: TNextGrid;
    nxColNoUrut: TNxIncrementColumn;
    nxColNoSPK: TNxTextColumn;
    cxLabel18: TcxLabel;
    nxColTanggal: TNxDateColumn;
    nxColHasil: TNxNumberColumn;
    btnAppManagement: TButton;
    cxLabel19: TcxLabel;
    cxlBrg: TcxLookupComboBox;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    tblViewColumn1: TcxGridDBColumn;
    tblViewColumn2: TcxGridDBColumn;
    cxLabel20: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxtSatuan: TcxTextEdit;
    btnCariBrg0: TButton;
    TabSheet5: TTabSheet;
    cxLabel21: TcxLabel;
    cxtNoTrial3: TcxTextEdit;
    cxTblChild: TcxGridDBTableView;
    cxGrdChildLevel1: TcxGridLevel;
    cxGrdChild: TcxGrid;
    cxLabel23: TcxLabel;
    cxlNoTrial: TcxLookupComboBox;
    btnTambahNoTrialAnak: TButton;
    cxLabel24: TcxLabel;
    cxtKodeBrg2: TcxTextEdit;
    cxtDeskripsi2: TcxTextEdit;
    zqrNoTrialChild: TZReadOnlyQuery;
    dsNoTrialChild: TDataSource;
    cxTblChildno_trial_child: TcxGridDBColumn;
    cxLabel22: TcxLabel;
    cxsQtyTrial: TcxSpinEdit;
    cxtSatuan2: TcxTextEdit;
    cxsQtyTrial2: TcxSpinEdit;
    memTbl: TkbmMemTable;
    memTblbom: TStringField;
    memTblkode: TStringField;
    btnGroupTrial: TButton;
    cxLabel25: TcxLabel;
    cxCmbJenisTrial: TcxComboBox;
    zqrNoTrial: TZReadOnlyQuery;
    dsNoTrial: TDataSource;
    cxTblChildColumn1: TcxGridDBColumn;
    btnHapusChild: TButton;
    cxLabel26: TcxLabel;
    nxGrdChild: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColNoTrial: TNxTextColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColDeskripsi: TNxTextColumn;
    nxColQtyTrial: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxCmbBahanDari: TcxComboBox;
    cxLabel29: TcxLabel;
    cxlSample: TcxLookupComboBox;
    IdSMTP2: TIdSMTP;
    zqrBrgSample: TZReadOnlyQuery;
    dsBrgSample: TDataSource;
    tblViewColumn3: TcxGridDBColumn;
    btnCariTrial: TButton;
    cxmDeskAwal: TcxMemo;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    nxGrd4: TNextGrid;
    NxImageColumn3: TNxImageColumn;
    NxIncrementColumn4: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    nxGrd5: TNextGrid;
    NxImageColumn4: TNxImageColumn;
    NxIncrementColumn5: TNxIncrementColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn8: TNxTextColumn;
    nxGrd6: TNextGrid;
    NxImageColumn5: TNxImageColumn;
    NxIncrementColumn6: TNxIncrementColumn;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn11: TNxTextColumn;
    nxGrd7: TNextGrid;
    NxImageColumn6: TNxImageColumn;
    NxIncrementColumn7: TNxIncrementColumn;
    NxTextColumn12: TNxTextColumn;
    NxTextColumn13: TNxTextColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxTextColumn14: TNxTextColumn;
    nxGrd8: TNextGrid;
    NxImageColumn7: TNxImageColumn;
    NxIncrementColumn8: TNxIncrementColumn;
    NxTextColumn15: TNxTextColumn;
    NxTextColumn16: TNxTextColumn;
    NxNumberColumn6: TNxNumberColumn;
    NxTextColumn17: TNxTextColumn;
    nxGrd9: TNextGrid;
    NxImageColumn8: TNxImageColumn;
    NxIncrementColumn9: TNxIncrementColumn;
    NxTextColumn18: TNxTextColumn;
    NxTextColumn19: TNxTextColumn;
    NxNumberColumn7: TNxNumberColumn;
    NxTextColumn20: TNxTextColumn;
    nxGrd10: TNextGrid;
    NxImageColumn9: TNxImageColumn;
    NxIncrementColumn10: TNxIncrementColumn;
    NxTextColumn21: TNxTextColumn;
    NxTextColumn22: TNxTextColumn;
    NxNumberColumn8: TNxNumberColumn;
    NxTextColumn23: TNxTextColumn;
    cxLabel30: TcxLabel;
    cxtKodeSample: TcxTextEdit;
    cxtDeskSample: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBaru2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSimpanKPClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxlDeskripsiPropertiesChange(Sender: TObject);
    procedure btnTambahBomClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure cxrDeptClick(Sender: TObject);
    procedure cxrCustClick(Sender: TObject);
    procedure btnTindakLanjutTrialClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure nxGrd1CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure tblViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnAppManagementClick(Sender: TObject);
    procedure btnCariBrg0Click(Sender: TObject);
    procedure cxlBrgPropertiesChange(Sender: TObject);
    procedure btnGroupTrialClick(Sender: TObject);
    procedure btnTambahNoTrialAnakClick(Sender: TObject);
    procedure pgChanging(Sender: TObject; var AllowChange: Boolean);
    procedure btnHapusChildClick(Sender: TObject);
    procedure btnCariTrialClick(Sender: TObject);
  private
    mJenis2, sNoTrial: string;
    lstBomH: TStringList;
    f_edit: Boolean;

    procedure ClearAll;
    procedure ClearAll2;
    procedure SendEmail(sNoTrial: string; lstNoMo: TStringList);
    procedure SendEmailApp;
    procedure SendEmailAwal;
  public
    { Public declarations }
  end;

var
  frmLogBookDesign: TfrmLogBookDesign;

implementation

uses unAplikasi, unDm, unTools, unFrmCari, unFrmTindakLanjutTrial,
  unFrmLapTrial, unFrmCariPO;

{$R *.dfm}

procedure TfrmLogBookDesign.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  pnlTengah.Enabled := True;
  lstBomH := TStringList.Create;

  zqrLog.Open;
  zqrMesin.Open;
  zqrKodeHead.Open;
  zqrCust.Open;
  zqrDept.Open;
  zqrBrg.Open;

  q := OpenRS('SELECT satuan FROM tbl_satuan ORDER BY satuan');
  while not q.Eof do begin
    cxCmbSatuan.Properties.Items.Add(q.FieldByName('satuan').AsString);
    q.Next;
  end;
  cxCmbSatuan.ItemIndex := 0;
  cxCmbSatuan.ItemIndex := 0;
  q.Close;

  pg.ActivePageIndex := 0;
  pgBom.ActivePageIndex := 0;

  cxlCust.Top := cxlDept.Top;
  cxlCust.Left := cxlDept.Left;
  cxlCust.Visible := False;

  cxCmbJenisTrial.Properties.Items.Add('TEPUNG');
  cxCmbJenisTrial.Properties.Items.Add('COMPOUND');
  cxCmbJenisTrial.ItemIndex := 0;

  memTbl.Open;

  cxCmbBahanDari.Properties.Items.Add('-');
  cxCmbBahanDari.Properties.Items.Add('SUPPLIER');
  cxCmbBahanDari.Properties.Items.Add('LAIN-LAIN');
  cxCmbBahanDari.ItemIndex := 0;

  zqrBrgSample.Open;
  f_edit := false;
end;

procedure TfrmLogBookDesign.btnBaru2Click(Sender: TObject);
begin
  inherited;
  cxtNoTrial.Text := GetLastFak('trial');
  mJenis2 := 'baru';
  f_edit := false;
end;

procedure TfrmLogBookDesign.Button1Click(Sender: TObject);
var
  q: TZQuery;
  sNoTrial: string;
begin
  if cxlBrg.Text = '' then begin
    MsgBox('Pilih nama barang trial.');
    cxlBrg.SetFocus;
  end
  else if cxsQtyTrial.Value <= 0 then begin
    MsgBox('Qty. Trial harus diisi.');
    cxsQtyTrial.SetFocus;
  end
  else if cxdTgl.Text = '' then begin
    MsgBox('Tanggal masuk harus diisi.');
    cxdTgl.SetFocus;
  end
  else begin
    if cxrCust.Checked then begin
      if cxlCust.Text = '' then begin
        MsgBox('Customer harus diisi.');
        cxlCust.SetFocus;
        Abort;
      end;
    end;

    if cxrDept.Checked then begin
      if cxlDept.Text = '' then begin
        MsgBox('Departemen harus diisi.');
        cxlDept.SetFocus;
        Abort;
      end;
    end;

    try
      if not f_edit then begin
        sNoTrial := GetLastFak('trial');
        UpdateFaktur(Copy(sNoTrial,1,8));
      end
      else begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_logbook_design WHERE no_trial = ''' + cxtNoTrial.Text + '''');
        sNoTrial := cxtNoTrial.Text;
      end;

      dm.zConn.StartTransaction;

      q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',
        [sNoTrial]);

      if not f_edit then
        q.Insert
      else
        q.Edit;

      q.FieldByName('no_trial').AsString := sNoTrial;
      q.FieldByName('kode_brg').AsInteger := cxlBrg.EditValue;
      q.FieldByName('tanggal').AsDateTime := cxdTgl.Date;
      
      if cxrCust.Checked then
        q.FieldByName('kode_customer').Value := cxlCust.EditValue;
      if cxrDept.Checked then
        q.FieldByname('dept').Value := cxlDept.EditValue;

      q.FieldByName('pemohon').AsString := Trim(cxtPemohon.Text);
      q.FieldByName('no_ppp').AsString := sNoTrial;
      q.FieldByName('no_pppb').AsString := sNoTrial;
      q.FieldByName('no_app').AsString := sNoTrial;
      q.FieldByName('user').AsString := Aplikasi.NamaUser;
      q.FieldByName('user_dept').AsString := aplikasi.UserDept;
      if mJenis2 = 'baru' then
        q.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
      q.FieldByName('qty').AsFloat := cxsQtyTrial.Value;
      q.FieldByName('deskripsi_awal').AsString := cxmDeskAwal.Text;
      q.FieldByName('bahan_dari').AsString := cxCmbBahanDari.Text;
      if cxlSample.Text <> '' then
        q.FieldByName('kode_brg_sample').AsInteger := cxlSample.EditValue;
      q.Post;

      q.Close;

      dm.zConn.Commit;

      MsgBox('Log book daftar order design sudah disimpan dengan No. : ' +
        sNoTrial);

      SendEmailAwal;

      zqrLog.Close;
      zqrLog.Open;
      ClearAll;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmLogBookDesign.ClearAll;
begin
  cxtNoTrial.Text := '';
  cxdTgl.Text := '';
  cxtPemohon.Text := '';
  cxsQtyTrial.Value := 0;
  cxlBrg.Text := '';
  cxtSatuan2.Text := '';
  f_edit := false;
  cxlBrg.Properties.ReadOnly := False;
  btnCariBrg0.Enabled := True;
end;

procedure TfrmLogBookDesign.btnEdit2Click(Sender: TObject);
begin
  inherited;
  MJenis2 := 'edit';
  cxtNoTrial.Text := zqrLog.FieldByname('no_trial').AsString;
  cxdTgl.Date := zqrLog.FieldByName('tanggal').AsDateTime;
  cxtPemohon.Text := zqrLog.FieldByName('pemohon').AsString;
  pg.ActivePageIndex := 0;
end;

procedure TfrmLogBookDesign.Button2Click(Sender: TObject);
var
  q, q2: TZQuery;
  lst: TStringList;
  i: integer;
  grd: TNextGrid;
begin
  inherited;
  cxtNoTrial2.Text := zqrLog.FieldByName('no_trial').AsString;
  cxdTgl2.Date := zqrLog.FieldByName('tanggal').AsDateTime;

  if zqrLog.FieldByName('f_app_awal').AsInteger = 0 then begin
    MsgBox('No. Trial ini belum mendapatkan Approval.');
    Abort;
  end;

  q := OpenRS('SELECT a.*, b.deskripsi, b.satuan satuan2, c.deskripsi desk_sample ' +
    'FROM tbl_logbook_design a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'LEFT JOIN tbl_barang c ON a.kode_brg_sample = c.kode ' +
    'WHERE no_trial = ''%s''',
    [cxtNoTrial2.Text]);

  if not q.IsEmpty then begin
    cxmDeskTrial.Lines.Text := q.FieldByName('deskripsi_trial').AsString;
    cxtWaktu.Text := q.FieldByName('waktu').AsString;
    cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;

    cxtKodeBrg2.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi2.Text := q.FieldByName('deskripsi').AsString;

    cxtSatuan.Text := q.FieldByName('satuan2').AsString;
    cxsQtyTrial2.Value := q.FieldByName('qty').Value;

    cxtKodeSample.Text := q.FieldByName('kode_brg_sample').AsString;
    cxtDeskSample.Text := q.FieldByName('desk_sample').AsString;
    
    if q.FieldByName('f_posted').AsInteger = 1 then begin
      cxChkPosting.Checked := True;
      cxChkPosting.Properties.ReadOnly := True;
    end;
    
  end;
  q.Close;

  nxGrd1.ClearRows; nxGrd2.ClearRows; nxGrd3.ClearRows;
  q := OpenRS('SELECT jenis, IFNULL(COUNT(jenis),0) jml ' +
    'FROM tbl_trial_bom WHERE no_trial = ''%s'' ' +
    'GROUP BY jenis',
    [cxtNoTrial2.Text]);

  lst := TStringList.Create;
  while not q.Eof do begin
    q2 := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s'' AND jenis = ''%s''',
      [cxtNoTrial2.Text, q.FieldByName('jenis').AsString]);
    if q.FieldByName('jenis').AsString = 'A' then
      grd := nxGrd1
    else if q.FieldByName('jenis').AsString = 'B' then
      grd := nxGrd2
    else
      grd := nxGrd3;

    while not q2.Eof do begin
      i := grd.AddRow();
      grd.Cell[nxColKode1.Index, i].AsString := q2.FieldByName('kode_brg').AsString;
      grd.Cell[nxColDesk1.Index, i].AsString := q2.FieldByName('deskripsi').AsString;
      grd.Cell[nxColQty1.Index, i].AsFloat := q2.FieldByName('qty').AsFloat;
      grd.Cell[nxColSat1.Index, i].AsString := q2.FieldByName('satuan').AsString;
      q2.Next;
    end;
    q2.Close;

    q.Next;
  end;
  pg.ActivePageIndex := 2;
  memTbl.EmptyTable;
  
end;

procedure TfrmLogBookDesign.btnSimpanKPClick(Sender: TObject);
var
  q, qso_h, qso_d, qmo, qjml_bom: TZQuery;
  i,j: integer;
  grd: TNextGrid;
  lstGrd: TStringList;
  snama, sNoMO, sNoSO: string;
  lstNoMO: TStringList;
begin
  inherited;
  if cxtNoTrial2.Text = '' then Abort;

  q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',
    [cxtNoTrial2.Text]);
  if q.IsEmpty then begin
    MsgBOx('No. Trial ini belum ada.');
    q.Close;
  end
  else begin

    lstNoMO := TStringList.Create;

    // cek apakah trial sudah di posting ke PPIC
    if q.FieldByName('f_posted').AsInteger = 1 then begin
      MsgBox('No. Trial ini sudah di posting PPIC. Tidak bisa di edit.');
      q.Close;
      Abort;
    end;

    if nxGrd1.RowCount > 0 then
      lstBomH.Add('A');
    if nxGrd2.RowCount > 0 then
      lstBomH.Add('B');
    if nxGrd3.RowCount > 0 then
      lstBomH.Add('C');
    if nxGrd4.RowCount > 0 then
      lstBomH.Add('D');
    if nxGrd5.RowCount > 0 then
      lstBomH.Add('E');
    if nxGrd6.RowCount > 0 then
      lstBomH.Add('F');
    if nxGrd7.RowCount > 0 then
      lstBomH.Add('G');
    if nxGrd8.RowCount > 0 then
      lstBomH.Add('H');
    if nxGrd9.RowCount > 0 then
      lstBomH.Add('I');
    if nxGrd10.RowCount > 0 then
      lstBomH.Add('J');

    if Trim(cxmDeskTrial.Lines.Text) = '' then begin
      MsgBox('Deskripsi Trial harus diisi.');
      cxmDeskTrial.SetFocus;
    end
    else if lstBomH.Count = 0 then begin
      MsgBox('Detail Bom harus diisi.');
    end
    else begin
      try
        dm.zConn.StartTransaction;

        q.Edit;
        q.FieldByName('deskripsi_trial').AsString := cxmDeskTrial.Lines.Text;
        //q.FieldByName('satuan').AsString := cxCmbSatuan2.Text;
        q.FieldByName('waktu').AsString := cxtWaktu.Text;
        q.Post;
        q.Close;

        dm.zConn.ExecuteDirect(
          Format('DELETE FROM tbl_trial_bom WHERE no_trial = ''%s''',
            [cxtNoTrial2.Text])
        );

        lstGrd := TStringList.Create;
        lstGrd.Add('nxGrd1');
        lstGrd.Add('nxGrd2');
        lstGrd.Add('nxGrd3');
        lstGrd.Add('nxGrd4');
        lstGrd.Add('nxGrd5');
        lstGrd.Add('nxGrd6');
        lstGrd.Add('nxGrd7');
        lstGrd.Add('nxGrd8');
        lstGrd.Add('nxGrd9');
        lstGrd.Add('nxGrd10');

        q := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s''',
          [cxtNoTrial2.Text]);

        for j := 0 to lstGrd.Count - 1 do begin
          snama := lstGrd.Strings[j];
          grd := Self.FindComponent(snama) as TNextGrid;
          if grd.RowCount > 0 then begin
            for i := 0 to grd.RowCount - 1 do begin
              q.Insert;
              q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;

              if grd.Name = 'nxGrd1' then
                q.FieldByName('jenis').AsString := 'A'
              else if grd.Name = 'nxGrd2' then
                q.FieldByName('jenis').AsString := 'B'
              else if grd.Name = 'nxGrd3' then
                q.FieldByName('jenis').AsString := 'C'
              else if grd.Name = 'nxGrd4' then
                q.FieldByName('jenis').AsString := 'D'
              else if grd.Name = 'nxGrd5' then
                q.FieldByName('jenis').AsString := 'E'
              else if grd.Name = 'nxGrd6' then
                q.FieldByName('jenis').AsString := 'F'
              else if grd.Name = 'nxGrd7' then
                q.FieldByName('jenis').AsString := 'G'
              else if grd.Name = 'nxGrd8' then
                q.FieldByName('jenis').AsString := 'H'
              else if grd.Name = 'nxGrd9' then
                q.FieldByName('jenis').AsString := 'I'
              else if grd.Name = 'nxGrd10' then
                q.FieldByName('jenis').AsString := 'J';

              q.FieldByName('deskripsi').AsString := grd.Cell[nxColDesk1.Index, i].AsString;
              q.FieldByName('kode_brg').AsString := grd.Cell[nxColKode1.Index, i].AsString;
              q.FieldByName('satuan').AsString := grd.Cell[nxColSat1.Index, i].AsString;
              q.FieldByName('qty').AsFloat := grd.Cell[nxColQty1.Index, i].AsFloat;
              q.Post;
            end;
          end;
        end;
        q.Close;

        // jika diposting maka masukkan ke table so dan mo
        if cxChkPosting.Checked then begin
          q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);

          qjml_bom := OpenRS('SELECT no_trial, jenis, count(no_trial) from tbl_trial_bom ' +
            'where no_trial = ''%s'' group by no_trial, jenis',
            [cxtNoTrial2.Text]);

          if not q.IsEmpty then begin
            while not qjml_bom.eof do begin
              sNoMO := GetLastFak('master_order');
              UpdateFaktur(Copy(sNoMO,1,7));
              sNoSO := GetLastFak('mts');
              UpdateFaktur(Copy(sNoSO,1,8));

              lstNoMO.Add(sNoSO);

              qso_h := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
                [sNoSO]);
              qso_h.Insert;
              qso_h.FieldByName('no_bukti').AsString := sNoSO;
              qso_h.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
              qso_h.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
              qso_h.FieldByName('kode_customer').AsString := 'SDP';
              qso_h.FieldByName('kategori_so').AsString := 'TRIAL';
              qso_h.Post;
              qso_h.Close;

              qso_d := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''',
                [sNoSO]);
              qso_d.Insert;
              qso_d.FieldByName('no_bukti').AsString := sNoSO;
              qso_d.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
              qso_d.FieldByName('qty').AsInteger := cxsQtyTrial2.Value;
              qso_d.FieldByName('notes').AsString := cxmDeskTrial.Text;
              qso_d.Post;
              qso_d.Close;

              qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
              qmo.Insert;
              qmo.FieldByName('no_mo').AsString := sNoMO;
              qmo.FieldByName('no_so').AsString := sNoSO;
              qmo.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
              qmo.FieldByName('qty_mo').AsInteger := cxsQtyTrial2.Value;
              qmo.FieldByName('qty_so').AsInteger := cxsQtyTrial2.Value;
              qmo.FieldByName('no_trial').AsString := q.FieldByName('no_trial').AsString;
              qmo.FieldByName('bom_trial').AsString := qjml_bom.FieldByName('jenis').AsString;
              qmo.Post;
              qmo.Close;

              qjml_bom.Next;
            end;
          end;

          qjml_bom.Close;

          {
          q := OpenRS('SELECT no_trial, jenis FROM tbl_trial_bom WHERE ' +
            'no_trial = ''%s'' GROUP BY no_trial, jenis',[cxtNoTrial2.Text]);
          while not q.Eof do begin
            sNoMO := GetLastFak('master_order');
            UpdateFaktur(Copy(sNoMO,1,7));
            sNoSO := GetLastFak('mts');
            UpdateFaktur(Copy(sNoSO,1,8));

            lstNoMO.Add(sNoSO);

            qso_h := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
              [sNoSO]);
            qso_h.Insert;
            qso_h.FieldByName('no_bukti').AsString := sNoSO;
            qso_h.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
            qso_h.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            qso_h.FieldByName('kode_customer').AsString := 'SDP';
            qso_h.FieldByName('kategori_so').AsString := 'TRIAL';
            qso_h.Post;
            qso_h.Close;

            qso_d := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''',
              [sNoSO]);
            qso_d.Insert;
            qso_d.FieldByName('no_bukti').AsString := sNoSO;
            qso_d.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
            qso_d.FieldByName('qty').AsInteger := 1;
            qso_d.FieldByName('notes').AsString := cxmDeskTrial.Text;
            qso_d.Post;
            qso_d.Close;

            qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
            qmo.Insert;
            qmo.FieldByName('no_mo').AsString := sNoMO;
            qmo.FieldByName('no_so').AsString := sNoSO;
            qmo.FieldByName('kode_brg').AsInteger := aplikasi.KodeBrgTrial;
            qmo.FieldByName('qty_mo').AsInteger := 1;
            qmo.FieldByName('qty_so').AsInteger := 1;
            qmo.FieldByName('no_trial').AsString := q.FieldByName('no_trial').AsString;
            qmo.FieldByName('bom_trial').AsString := q.FieldByName('jenis').AsString;
            qmo.Post;
            qmo.Close;
            q.Next;
          end;
          q.Close;
          }
          
          dm.zConn.ExecuteDirect('UPDATE tbl_logbook_design SET f_posted = 1 ' +
            'WHERE no_trial = ''' + cxtNoTrial2.Text + '''');
        end;

        if cxChkPosting.Checked then begin
          MsgBox('Komunikasi Percobaan sudah disimpan.' + Chr(10) + Chr(13) +
            'No. SO : ' + sNoSO);
          memTbl.EmptyTable;  
        end
        else begin
          MsgBox('Komunikasi Percobaan sudah disimpan.');
          memTbl.EmptyTable;
        end;

        if cxChkPosting.Checked then begin
          SendEmail(cxtNoTrial2.Text, lstNoMO);
        end;

        pg.ActivePageIndex := 1;
        ClearAll2;

        dm.zConn.Commit;
      except
        on E: Exception do begin
          dm.zConn.Rollback;
          MsgBox('Error: ' + E.Message);
        end;
      end;
    end;
  end;
end;

procedure TfrmLogBookDesign.ClearAll2;
begin
  cxtNoTrial2.Text := '';
  cxdTgl2.Text := '';
  cxtWaktu.Text := '';
  cxlMesin.Text := '';
  cxmDeskTrial.Lines.Text := '';
  nxGrd1.ClearRows;
  nxGrd2.ClearRows;
  nxGrd3.ClearRows;
  cxsQtyBom.Text := '';
  cxCmbSatuan.Text := '';
  lstBomH.Clear;
end;

procedure TfrmLogBookDesign.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q, qc: TZQuery;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    cxlDeskripsi.EditValue := fKode.AsInteger;

    q := OpenRS('SELECT deskripsi, satuan FROM tbl_barang WHERE kode = %s',
      [fKode.AsString]);
    cxsQTyBOm.Value := q.FieldBYName('kode').AsInteger;
    cxCmbSatuan.text := q.FieldByName('satuan').AsString;
    q.Close;
  end;

end;

procedure TfrmLogBookDesign.cxlDeskripsiPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  try
    if Trim(cxlDeskripsi.Text) = '' then Abort;
    
    if not VarIsClear(cxlDeskripsi.EditValue) then begin
      q := OpenRS('SELECT satuan FROM tbl_barang WHERE kode = ''%s''',
        [cxlDeskripsi.EditValue]);
      cxCmbSatuan.Text := q.FieldByName('satuan').AsString;  
      q.Close;
    end;
  except
  end;
end;

procedure TfrmLogBookDesign.btnTambahBomClick(Sender: TObject);
var
  grd: TNextGrid;
  i: integer;
  sJenisBom: string;
begin
  inherited;

  if cxsQtyBom.Value = 0 then begin
    MsgBox('Qty. BOM harus di isi.');
    cxsQtyBom.SetFocus;
    Abort;
  end;

  if pgBom.ActivePageIndex = 0 then begin
    grd := nxGrd1;
    sJenisBom := 'A';
  end
  else if pgBom.ActivePageIndex = 1 then begin
    grd := nxGrd2;
    sJenisBom := 'B';
  end
  else if pgBom.ActivePageIndex = 2 then begin
    grd := nxGrd3;
    sJenisBom := 'C';
  end
  else if pgBom.ActivePageIndex = 3 then begin
    grd := nxGrd4;
    sJenisBom := 'D';
  end
  else if pgBom.ActivePageIndex = 4 then begin
    grd := nxGrd5;
    sJenisBom := 'E';
  end
  else if pgBom.ActivePageIndex = 5 then begin
    grd := nxGrd6;
    sJenisBom := 'F';
  end
  else if pgBom.ActivePageIndex = 6 then begin
    grd := nxGrd7;
    sJenisBom := 'G';
  end
  else if pgBom.ActivePageIndex = 7 then begin
    grd := nxGrd8;
    sJenisBom := 'H';
  end
  else if pgBom.ActivePageIndex = 8 then begin
    grd := nxGrd9;
    sJenisBom := 'I';
  end
  else if pgBom.ActivePageIndex = 9 then begin
    grd := nxGrd10;
    sJenisBom := 'J';
  end;

  if memTbl.Locate('bom;kode', VarArrayOf([sJenisBom, cxlDeskripsi.EditValue]), []) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end;

  i := grd.AddRow();

  grd.Cell[nxColKode1.Index, i].AsString := cxlDeskripsi.EditValue;

  if Trim(cxlDeskripsi.Text) <> '' then
    grd.Cell[nxColDesk1.Index, i].AsString := cxlDeskripsi.Text;
  if Trim(cxtDesk2.Text) <> '' then
    grd.Cell[nxColDesk1.Index, i].AsString := Trim(cxtDesk2.Text);

  grd.Cell[nxColQty1.Index, i].AsFloat := cxsQtyBom.Value;
  grd.Cell[nxColSat1.Index, i].AsString := cxCmbSatuan.Text;

  if grd.Name = 'nxGrd1' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'A';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd2' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'B';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd3' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'C';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd4' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'D';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd5' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'E';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd6' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'F';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd7' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'G';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd8' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'H';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd9' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'I';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end
  else if grd.Name = 'nxGrd10' then begin
    memTbl.Insert;
    memTbl.FieldByName('bom').AsString := 'J';
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.Post;
  end;

end;

procedure TfrmLogBookDesign.Button4Click(Sender: TObject);
var
  grd: TNextGrid;
begin
  inherited;
  grd := Self.FindComponent('nxGrd1') as TNextGrid;
  ShowMessage(grd.Name);
end;

procedure TfrmLogBookDesign.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;  
end;

procedure TfrmLogBookDesign.cxrDeptClick(Sender: TObject);
var
  chk: TcxRadioButton;
begin
  inherited;
  cxlDept.Visible := cxrDept.Checked;
  cxlCust.Visible := not cxrDept.Checked;
  cxlDept.BringToFront;
end;

procedure TfrmLogBookDesign.cxrCustClick(Sender: TObject);
begin
  inherited;
  cxlCust.Visible := cxrCust.Checked;
  cxlCust.BringToFront;
  cxlDept.Visible := not cxrCust.Checked;
end;

procedure TfrmLogBookDesign.btnTindakLanjutTrialClick(Sender: TObject);
var
  f: TfrmTindakLanjutTrial;
  q: TZQuery;
begin
  inherited;

  // cek apakah trial sudah dibuatkan SPK
  q := OpenRS('SELECT * FROM tbl_spk WHERE no_trial = ''%s''',[zqrLog.FieldByName('no_trial').AsString]);
  if q.IsEmpty then begin
    MsgBox('Trial ini belum dibuatkan SPK.');
    q.Close;
    Abort;
  end;
  q.Close;
  //if nxGrdDet.SelectedRow = -1 then Abort;  

  f := TfrmTindakLanjutTrial.Create(Self);
  //f.NoSPK := nxGrdDet.Cell[nxColNoSPK.Index, nxGrdDet.SelectedRow].AsString;
  f.NoTrial := zqrLog.FieldByName('no_trial').AsString;
  f.ShowModal;
  f.Release;
end;

procedure TfrmLogBookDesign.Button3Click(Sender: TObject);
var
  f: TFrmLapTrial;
begin
  f := TfrmLapTrial.Create(Self);
  f.rptAPP.ShowReport(True);
end;

procedure TfrmLogBookDesign.nxGrd1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  grd: TNextGrid;
  kode: string;
begin
  if ACol = nxColKode1.Index then begin
    grd := (Sender as TNextGrid);
    kode := grd.Cell[nxColKode1.Index, ARow].AsString;
    grd.DeleteRow(ACol);
    if grd.Name = 'nxGrd1' then begin
      if memTbl.Locate('bom;kode', VarArrayOf(['A',kode]),[]) then
        memTbl.Delete;
    end
    else if grd.Name = 'nxGrd2' then begin
      if memTbl.Locate('bom;kode', VarArrayOf(['B',kode]),[]) then
        memTbl.Delete;
    end
    else if grd.Name = 'nxGrd3' then begin
      if memTbl.Locate('bom;kode', VarArrayOf(['C',kode]),[]) then
        memTbl.Delete;
    end;
  end;
end;

procedure TfrmLogBookDesign.SendEmail(sNoTrial: string; lstNoMO: TStringList);
var
  lst0, lstFile, lst, lstE: TStringList;
  i : Integer;
  sTmp: string;
  sNamaFile : string;
  email : TIdMessage;
  bdy: TIdText;
  q, qe: TZQuery;
begin
  try

  idSMTP.AuthType := satNone;
  idSMTP.Host := Aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    // ambil daftar email
    lstE := TStringList.Create;
    qe := OpenRS('SELECT b.email FROM tbl_email_mda a ' +
      'LEFT JOIN tbl_user b ON a.nama_user = b.nama ' +
      'WHERE a.jenis = ''TRIAL-POSTING''');
    while not qe.Eof do begin
      lstE.Add(qe.FieldByName('email').AsString);
      qe.Next;
    end;
    qe.Close;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := lstE.CommaText;

    email.Subject := 'Trial QAC No: ' + sNoTrial;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada Trial QAC dengan nomor : ' + sNoTrial);
    lst.Add('</br>');
    lst.Add('Yang perlu ditindaklanjuti.');
    lst.Add('</br>');
    lst.Add('Deskripsi Trial : ');
    lst.Add('</br>');
    lst.Add(cxmDeskTrial.Lines.Text);
    lst.Add('</br>');
    lst.Add('No. SO : ');
    lst.Add('</br>');
    for i := 0 to lstNoMo.Count - 1 do begin
      lst.Add('- ' + lstNoMo.Strings[i]);
      lst.Add('</br>');
    end;
    //lst.Add('<font color="#FF0000" size="15">' + 'OKE' + '</font>');
    //lst.Add('</br>');
    //lst.Add('<font color="#666666"><b><i>Ada SO baru (1 (SDP 1)) ditambahkan dalam database. Mohon agar di cek dan ditindaklanjuti. Terima kasih.</br>');
    //lst.Add('"SAVE PAPER - THINK BEFORE YOU PRINT!"</i></b></font>');

    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');

    bdy := TIdText.Create(email.MessageParts, lst);
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

  except
    on E: Exception do begin
      ShowMessage('Error: ' + E.Message);
    end;
  end;

end;

procedure TfrmLogBookDesign.tblViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i: Integer;
begin
  try
    {
    q := OpenRS('SELECT a.no_spk, a.tanggal, IFNULL(b.hsl_prod,0) hsl_prod ' +
      'FROM tbl_spk a LEFT JOIN tbl_logbook_spk_det b ON a.no_spk = b.no_spk ' +
      'WHERE a.no_trial = ''%s''',
      [zqrLog.FieldByName('no_trial').AsString]);
    nxGrdDet.ClearRows;
    while not q.Eof do begin
      i := nxGrdDet.AddRow();
      nxGrdDet.Cell[nxColNoSPK.Index, i].AsString := q.FieldByName('no_spk').AsString;
      nxGrdDet.Cell[nxColTanggal.Index, i].AsDateTime := q.FieldByName('tanggal').AsDateTime;
      nxGrdDet.Cell[nxColHasil.Index, i].AsFloat := q.FieldByName('hsl_prod').AsFloat;
      q.Next;
    end;
    q.Close;
    }
    q := OpenRS('SELECT a.no_spk, a.tanggal, a.qty_prod ' +
      'FROM tbl_hsl_prd a ' +
      'LEFT JOIN tbl_spk b ON a.no_spk = b.no_spk ' +
      'LEFT JOIN tbl_mo c ON c.no_spk = a.no_spk ' +
      'WHERE c.no_trial = ''%s''',
      [zqrLog.FieldByName('no_trial').AsString]);
    nxGrdDet.ClearRows;
    while not q.Eof do begin
      i := nxGrdDet.AddRow();
      nxGrdDet.Cell[nxColNoSPK.Index, i].AsString := q.FieldByName('no_spk').AsString;
      nxGrdDet.Cell[nxColTanggal.Index, i].AsDateTime := q.FieldByName('tanggal').AsDateTime;
      nxGrdDet.Cell[nxColHasil.Index, i].AsFloat := q.FieldByName('qty_prod').AsFloat;
      q.Next;
    end;
    q.Close;

    q := OpenRS('SELECT a.no_trial_child, b.kode_brg, c.deskripsi, b.qty, c.satuan ' +
      'FROM tbl_logbook_child a ' +
      'LEFT JOIN tbl_logbook_design b ON b.no_trial = a.no_trial_child ' +
      'LEFT JOIN tbl_barang c ON b.kode_brg = c.kode ' +
      'WHERE a.no_trial = ''%s''',[zqrLog.FieldByName('no_trial').AsString]);
    nxGrdChild.ClearRows;
    while not q.Eof do begin
      i := nxGrdChild.AddRow();
      nxGrdChild.Cell[nxColNoTrial.Index, i].AsString := q.FieldByName('no_trial_child').AsString;
      nxGrdChild.Cell[nxColKodeBrg.Index, i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrdChild.Cell[nxColDeskripsi.Index, i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrdChild.Cell[nxColQtyTrial.Index, i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrdChild.Cell[nxColSatuan.Index, i].AsString := q.FieldByName('satuan').AsString;
      q.Next;
    end;
    q.Close;
    
  except
  end;

end;

procedure TfrmLogBookDesign.btnAppManagementClick(Sender: TObject);
var
  q, qCekDet: TZQuery;
  i: Integer;
begin
  inherited;
  q := OpenRS('select * from tbl_logbook_design where no_trial = ''%s''',
  [zqrLog.fieldbyname('no_trial').AsString]);

  if q.FieldByName('f_app_mgmt').AsInteger = 1 then begin
    MsgBox('Trial ini sudah di Approval Management.');
    abort;
  end;

  if q.FieldByName('f_app_mgmt').AsInteger = 2 then begin
    MsgBox('Trial ini tidak di Approval Management.');
    abort;
  end;

  if q.FieldByName('f_app_mgmt').AsInteger = -1 then begin
    MsgBox('Trial ini menunggu approval dari management.');
    abort;
  end else begin
    qCekDet := OpenRS('select a.*,b.no_so from tbl_logbook_spk_det a ' +
    'left join tbl_mo b on a.no_spk = b.no_spk where a.no_trial = ''%s''',
    [zqrLog.fieldbyname('no_trial').AsString]);

    if qCekDet.IsEmpty then begin
      MsgBox('Trial ini belum dibuatkan spk.');
      abort;
    end;

    i := 0;
    if qCekDet.Locate('no_trial;hsl_prod',VarArrayOf([qCekDet.FieldByName('no_trial').AsString,
        i]),[]) then begin
        MsgBox('Ada hasil produksi yang masih kosong.');
        qCekDet.Close;
        q.Close;
        abort;
    end else begin
      MsgBox('Email terkirim. Menunggu approval dari pihak management.');
      SendEmailApp;
    end;
    qCekDet.Close;
  end;

  q.edit;
  q.FieldByName('f_app_mgmt').AsInteger := -1;
  q.Post;

  q.Close;
end;

procedure TfrmLogBookDesign.SendEmailApp;
var
  lst0, lstFile, lst: TStringList;
  i : Integer;
  sTmp: string;
  sNamaFile : string;
  email : TIdMessage;
  bdy: TIdText;
  q: TZQuery;
begin
  try

  idSMTP.AuthType := satNone;
  idSMTP.Host := Aplikasi.ServerSMTP;
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
    else
      email.Recipients.EMailAddresses := 'boby@sdp.mail,ferry@sdp.mail';

    email.Subject := 'Trial QAC No: ' + zqrLog.fieldbyname('no_trial').AsString;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada Trial QAC dengan nomor : ' + zqrLog.fieldbyname('no_trial').AsString);
    lst.Add('</br>');
    lst.Add('Yang perlu di Approval, silahkan cek aplikasi MDA.');
    lst.Add('</br>');
    lst.Add('Deskripsi Trial : ' + zqrLog.fieldbyname('deskripsi_trial').AsString);
    lst.Add('</br>');
    //lst.Add('No. SO : ');
    //lst.Add('</br>');
    //for i := 0 to lstNoMo.Count - 1 do begin
    //  lst.Add('- ' + lstNoMo.Strings[i]);
    //  lst.Add('</br>');
    //end;
    //lst.Add('<font color="#FF0000" size="15">' + 'OKE' + '</font>');
    //lst.Add('</br>');
    //lst.Add('<font color="#666666"><b><i>Ada SO baru (1 (SDP 1)) ditambahkan dalam database. Mohon agar di cek dan ditindaklanjuti. Terima kasih.</br>');
    //lst.Add('"SAVE PAPER - THINK BEFORE YOU PRINT!"</i></b></font>');

    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');

    bdy := TIdText.Create(email.MessageParts, lst);
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

  except
    on E: Exception do begin
      ShowMessage('Error: ' + E.Message);
    end;
  end;

end;

procedure TfrmLogBookDesign.btnCariBrg0Click(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q, qc: TZQuery;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang-percobaan';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    cxlBrg.EditValue := fKode.AsInteger;
    cxtSatuan2.Text := zqrBrg.FieldByName('satuan').AsString;
  end;
end;

procedure TfrmLogBookDesign.cxlBrgPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtSatuan2.Text := zqrBrg.FieldByName('satuan').AsString;
end;

procedure TfrmLogBookDesign.btnGroupTrialClick(Sender: TObject);
var
  q, q2: TZQuery;
  lst: TStringList;
  i: integer;
  grd: TNextGrid;
begin
  inherited;
  cxtNoTrial3.Text := zqrLog.FieldByName('no_trial').AsString;

  q := OpenRS('SELECT a.*, b.deskripsi, b.satuan satuan2 ' +
    'FROM tbl_logbook_design a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'WHERE no_trial = ''%s''',
    [cxtNoTrial3.Text]);

  if not q.IsEmpty then begin
    cxtKodeBrg2.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi2.Text := q.FieldByName('deskripsi').AsString;

    zqrNoTrial.Close;
    zqrNoTrial.ParamByName('no_trial').AsString := cxtNoTrial3.Text;
    zqrNoTrial.Open;

    zqrNoTrialChild.Close;
    zqrNoTrialChild.ParamByName('no_trial').AsString := cxtNoTrial3.Text;
    zqrNoTrialChild.Open;

  end;
  q.Close;

  pg.ActivePageIndex := 4;
  memTbl.EmptyTable;
end;

procedure TfrmLogBookDesign.btnTambahNoTrialAnakClick(Sender: TObject);
var
  q: TZQuery;
begin
  if cxtNoTrial3.Text = '' then begin
    MsgBox('No. Trial Induk harus diisin');
    pg.ActivePageIndex := 2;
  end
  else if cxlNoTrial.Text = '' then begin
    MsgBox('Pilih No. Trial.');
    cxlNoTrial.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;

      q := OpenRS('SELECT * FROM tbl_logbook_child WHERE no_trial = ''%s''',[cxtNoTrial3.Text]);
      q.Insert;
      q.FieldByName('no_trial').AsString := cxtNoTrial3.Text;
      q.FieldByName('no_trial_child').AsString := cxlNoTrial.Text;
      q.FieldByName('jenis').AsString := cxCmbJenisTrial.Text;
      q.Post;
      dm.zConn.Commit;

      zqrNoTrialChild.Close;
      zqrNoTrialChild.Open;
      
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmLogBookDesign.pgChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  //MsgBox(IntToStr(pg.ActivePageIndex));
  if pg.ActivePageIndex = 4 then begin
    zqrNoTrialChild.Close;
    zqrNoTrial.Close;
    cxtNoTrial3.Text := '';
    cxtKodeBrg2.Text := '';
    cxtDeskripsi2.Text := '';
  end;
end;

procedure TfrmLogBookDesign.btnHapusChildClick(Sender: TObject);
begin
  inherited;
  try
    dm.zConn.StartTransaction;

    dm.zConn.ExecuteDirect('DELETE FROM tbl_logbook_child WHERE id = ' +
      zqrNoTrialChild.FieldByName('id').AsString);

    dm.zConn.Commit;

    zqrNoTrialChild.Close;
    zqrNoTrialChild.Open;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmLogBookDesign.SendEmailAwal;
var
  email : TIdMessage;
  lst, lstEmail: TStringList;
  bdy: TIdText;
  q: TZQuery;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  lstEmail := TStringList.Create;
  q := OpenRS('SELECT b.email FROM tbl_email_mda a ' +
    'LEFT JOIN tbl_user b ON a.nama_user = b.nama ' +
    'WHERE a.jenis = ''APP-AWAL-TRIAL''');
  while not q.Eof do begin
    lstEmail.Add(q.FieldByName('email').AsString);
    q.Next;
  end;
  q.Close;

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := 'mda@sdp.mail';
    email.From.Name := 'MDA';

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    email.Subject := 'APPROVAL TRIAL QAC NO: ' + cxtNoTrial.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada TRIAL QAC yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('Nomor Trial : ' + cxtNoTrial.Text);
    lst.Add('Deskripsi Trial : ');
    lst.Add('</br>');
    lst.Add(cxmDeskAwal.Text);
    lst.Add('</br>');
    lst.Add('</br>');
    lst.Add('</body>');
    lst.Add('</html>');

    bdy := TIdText.Create(email.MessageParts, lst);
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

procedure TfrmLogBookDesign.btnCariTrialClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fNoTrial: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'trial';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fNoTrial := s.Objects[0] as TField;
    q := OpenRS('SELECT a.*, b.satuan FROM tbl_logbook_design a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE no_trial = ''%s''',[fNoTrial.AsString]);
    cxtNoTrial.Text := q.FieldByName('no_trial').AsString;
    cxlBrg.EditValue := q.FieldByName('kode_brg').AsString;
    cxsQtyTrial.Value := q.FieldByName('qty').AsFloat;
    cxtSatuan2.Text := q.FieldByName('satuan').AsString;
    cxdTgl.Date := q.FieldByName('tanggal').AsDateTime;
    cxlDept.EditValue := q.FieldByName('dept').AsString;
    cxmDeskAwal.Lines.Text := q.FieldByName('deskripsi_awal').AsString;
    cxCmbBahanDari.Text := q.FieldByName('bahan_dari').AsString;
    f_edit := true;
    cxlBrg.Properties.ReadOnly := True;
    btnCariBrg0.Enabled := False;
    q.Close;
  end;
  f.Release;

end;

end.
