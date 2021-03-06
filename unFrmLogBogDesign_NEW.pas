unit unFrmLogBogDesign_NEW;

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
  IdText, kbmMemTable, kbmMemSQL, Grids, DBGrids;

type
  TfrmLogBookDesign_NEW = class(TfrmTplTrans)
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
    cxLabel11: TcxLabel;
    btnSimpanKP: TButton;
    btnEdit2: TButton;
    cxlMesin: TcxLookupComboBox;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    ImageList1: TImageList;
    zqrKodeHead: TZQuery;
    dsKodeHead: TDataSource;
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
    cxLabel10: TcxLabel;
    cxLabel15: TcxLabel;
    cxtWaktu: TcxTextEdit;
    pgTrial: TPageControl;
    TabSheet6: TTabSheet;
    tabTepung: TTabSheet;
    tabCompound: TTabSheet;
    cxLabel20: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxsQtyTrial2: TcxSpinEdit;
    cxtSatuan: TcxTextEdit;
    GroupBox2: TGroupBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxCmbSatuan: TcxComboBox;
    cxsQtyBom: TcxSpinEdit;
    btnTambahBom: TButton;
    cxlDeskripsi: TcxLookupComboBox;
    btnCariBrg: TButton;
    nxGrd1: TNextGrid;
    nxColHapus: TNxImageColumn;
    nxColNo1: TNxIncrementColumn;
    nxColKode1: TNxTextColumn;
    nxColDesk1: TNxTextColumn;
    nxColQty1: TNxNumberColumn;
    nxColSat1: TNxTextColumn;
    Button8: TButton;
    Button9: TButton;
    cxChkCompound: TcxCheckBox;
    cxChkTepung: TcxCheckBox;
    memTbljenis: TStringField;
    memTbl2: TkbmMemTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    memTbl3: TkbmMemTable;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    cxmDeskTrial: TcxMemo;
    cxLabel12: TcxLabel;
    cxLabel30: TcxLabel;
    cxtKodeSample: TcxTextEdit;
    cxtDeskSample: TcxTextEdit;
    cxLabel42: TcxLabel;
    btnBatal2: TButton;
    nxColJenis: TNxTextColumn;
    ScrollBox1: TScrollBox;
    cxLabel36: TcxLabel;
    cxlKodeBrgC: TcxLookupComboBox;
    cxLabel37: TcxLabel;
    cxsQtyC: TcxSpinEdit;
    cxtSatuanCompound: TcxTextEdit;
    GroupBox3: TGroupBox;
    cxLabel40: TcxLabel;
    cxLabel41: TcxLabel;
    cxCmbSatuanC: TcxComboBox;
    cxsQtyBomC: TcxSpinEdit;
    btnTambahBomC: TButton;
    cxlDeskripsiC: TcxLookupComboBox;
    Button7: TButton;
    nxGrd2: TNextGrid;
    NxImageColumn2: TNxImageColumn;
    NxIncrementColumn3: TNxIncrementColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn6: TNxTextColumn;
    nxGrdCompound: TNextGrid;
    btnTambahC: TButton;
    nxColNoC: TNxIncrementColumn;
    nxColKodeBrgC: TNxTextColumn;
    nxColQtyC: TNxNumberColumn;
    nxColHapusC: TNxImageColumn;
    nxColDeskC: TNxTextColumn;
    memTblC: TkbmMemTable;
    StringField8: TStringField;
    memTbl2kode_induk: TStringField;
    nxColKodeIndukC: TNxTextColumn;
    memTbl2deskripsi: TStringField;
    memTbl2qty: TFloatField;
    memTbl2satuan: TStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ScrollBox2: TScrollBox;
    cxLabel16: TcxLabel;
    cxlKodeBrgT: TcxLookupComboBox;
    cxLabel31: TcxLabel;
    cxsQtyT: TcxSpinEdit;
    cxtSatuanTepung: TcxTextEdit;
    GroupBox1: TGroupBox;
    cxLabel34: TcxLabel;
    cxLabel35: TcxLabel;
    cxsQtyBomT: TcxSpinEdit;
    btnTambahBomT: TButton;
    cxlDeskripsiT: TcxLookupComboBox;
    Button5: TButton;
    nxGrd3: TNextGrid;
    NxImageColumn1: TNxImageColumn;
    NxIncrementColumn2: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    cxtSatuanT: TcxTextEdit;
    btnTambahT: TButton;
    nxGrdTepung: TNextGrid;
    NxImageColumn3: TNxImageColumn;
    NxIncrementColumn4: TNxIncrementColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    memTbl3kode_induk: TStringField;
    memTbl3deskripsi: TStringField;
    memTbl3qty: TFloatField;
    memTbl3satuan: TStringField;
    memTblT: TkbmMemTable;
    StringField7: TStringField;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    Button4: TButton;
    nxColChkBomC: TNxCheckBoxColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    cxLabel32: TcxLabel;
    cxsJmlSamples: TcxSpinEdit;
    cxtSatuanSamples: TcxTextEdit;
    btnRefreshTrial: TButton;
    nxColSat: TNxTextColumn;
    cxtSatuanBOM1: TcxTextEdit;
    cxtSatuanBOM2: TcxTextEdit;
    cxtSatuanBOM3: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBaru2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSimpanKPClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxlDeskripsiPropertiesChange(Sender: TObject);
    procedure btnTambahBomClick(Sender: TObject);
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
    procedure cxChkCompoundClick(Sender: TObject);
    procedure cxChkTepungClick(Sender: TObject);
    procedure btnBatal2Click(Sender: TObject);
    procedure btnTambahCClick(Sender: TObject);
    procedure nxGrdCompoundCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrdCompoundCellDblClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure btnTambahTClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure nxGrdTepungCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure cxlSamplePropertiesChange(Sender: TObject);
    procedure btnRefreshTrialClick(Sender: TObject);
    procedure cxlKodeBrgTPropertiesChange(Sender: TObject);
    procedure cxlKodeBrgCPropertiesChange(Sender: TObject);
  private
    mJenis2, sNoTrial: string;
    lstBomH: TStringList;
    f_edit: Boolean;

    qtmp_trial, qtmp_bom: TZQuery;

    procedure ClearAll;
    procedure ClearAll2;
    procedure SendEmail(sNoTrial: string; lstNoMo: TStringList);
    procedure SendEmailApp;
    procedure SendEmailAwal;
    procedure KosongiTempTable;
  public
    { Public declarations }
  end;

var
  frmLogBookDesign_NEW: TfrmLogBookDesign_NEW;

implementation

uses unAplikasi, unDm, unTools, unFrmCari, unFrmTindakLanjutTrial,
  unFrmLapTrial, unFrmCariPO;

{$R *.dfm}

procedure TfrmLogBookDesign_NEW.FormCreate(Sender: TObject);
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

  cxlCust.Top := cxlDept.Top;
  cxlCust.Left := cxlDept.Left;
  cxlCust.Visible := False;

  cxCmbJenisTrial.Properties.Items.Add('TEPUNG');
  cxCmbJenisTrial.Properties.Items.Add('COMPOUND');
  cxCmbJenisTrial.ItemIndex := 0;

  memTbl.Open;
  memTbl2.Open;
  memTbl3.Open;
  memTblC.Open;

  cxCmbBahanDari.Properties.Items.Add('-');
  cxCmbBahanDari.Properties.Items.Add('SUPPLIER');
  cxCmbBahanDari.Properties.Items.Add('LAIN-LAIN');
  cxCmbBahanDari.ItemIndex := 0;

  zqrBrgSample.Open;
  f_edit := false;

  dm.zConn.ExecuteDirect('DROP TABLE IF EXISTS 0tmp_trial');
  dm.zConn.ExecuteDirect('DROP TABLE IF EXISTS 0tmp_bom');

  dm.zConn.ExecuteDirect('CREATE TEMPORARY TABLE 0tmp_trial(' +
    ' kode INTEGER(11), ' +
    ' deskripsi VARCHAR(200), ' +
    ' qty FLOAT(11,2), ' +
    ' jenis VARCHAR(20), ' +
    ' satuan VARCHAR(20) ' + 
    ')'
  );

  dm.zConn.ExecuteDirect('CREATE TEMPORARY TABLE 0tmp_bom (' +
    '  kode INTEGER(11), ' +
    '  kode_induk INTEGER(11), ' +
    '  jenis VARCHAR(20), ' +
    '  deskripsi VARCHAR(200), ' +
    '  qty FLOAT(11,2), ' +
    '  satuan VARCHAR(20) ' +
    ')'
  );

  qtmp_trial := OpenRS('SELECT * FROM 0tmp_trial');
  qtmp_bom := OpenRS('SELECT * FROM 0tmp_bom');
end;

procedure TfrmLogBookDesign_NEW.btnBaru2Click(Sender: TObject);
begin
  inherited;
  cxtNoTrial.Text := GetLastFak('trial');
  mJenis2 := 'baru';
  f_edit := false;
end;

procedure TfrmLogBookDesign_NEW.Button1Click(Sender: TObject);
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
      q.FieldByName('jenis').AsString := 'BARANG JADI';
      q.FieldByName('jml_samples').AsFloat := cxsJmlSamples.Value;
      q.FieldByName('satuan_samples').AsString := cxtSatuanSamples.Text;
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

procedure TfrmLogBookDesign_NEW.ClearAll;
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
  cxsJmlSamples.Value := 0;
  cxtSatuanSamples.Text := '';
end;

procedure TfrmLogBookDesign_NEW.btnEdit2Click(Sender: TObject);
begin
  inherited;
  MJenis2 := 'edit';
  cxtNoTrial.Text := zqrLog.FieldByname('no_trial').AsString;
  cxdTgl.Date := zqrLog.FieldByName('tanggal').AsDateTime;
  cxtPemohon.Text := zqrLog.FieldByName('pemohon').AsString;
  pg.ActivePageIndex := 0;
end;

procedure TfrmLogBookDesign_NEW.Button2Click(Sender: TObject);
var
  q, q2, qcomp, qtep, qd: TZQuery;
  lst: TStringList;
  i: integer;
  grd: TNextGrid;
begin
  inherited;

  pgTrial.ActivePageIndex := 0;

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
    'WHERE no_trial = ''%s'' and a.jenis = ''BARANG JADI''',
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

    qtmp_trial.Insert;
    qtmp_trial.FieldByName('kode').AsString := q.FieldByName('kode_brg').AsString;
    qtmp_trial.FieldByName('deskripsi').AsString := q.FieldByName('deskripsi').AsString;
    qtmp_trial.FieldByName('jenis').AsString := 'BARANG JADI';
    qtmp_trial.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
    qtmp_trial.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
    qtmp_trial.Post;

    // detail bom barang jadi
    qd := OpenRS('SELECT a.kode_brg, a.kode_brg_induk, a.qty, b.deskripsi, b.satuan ' +
      'FROM tbl_trial_bom a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_trial = ''%s'' AND a.jenis = ''BARANG JADI''',
      [cxtNoTrial2.Text]);

    memTbl.EmptyTable;
    nxGrd1.ClearRows;

    while not qd.Eof do begin

      memTbl.Insert;
      memTbl.FieldByName('kode').AsString := qd.FieldByName('kode_brg').AsString;
      memTbl.Post;
      
      i := nxGrd1.AddRow();
      nxGrd1.Cell[nxColKode1.Index, i].AsString := qd.FieldByName('kode_brg').AsString;
      nxGrd1.Cell[nxColDesk1.Index, i].AsString := qd.FieldByname('deskripsi').AsString;
      nxGrd1.Cell[nxColQty1.Index, i].AsFloat := qd.FieldByName('qty').AsFloat;
      nxGrd1.Cell[nxColSat1.Index, i].AsString := qd.FieldByName('satuan').AsString;
      qd.Next;

      with qtmp_bom do begin
        Insert;
        FieldByName('kode').AsString := qd.FieldByName('kode_brg').AsString;
        FieldByName('kode_induk').AsString := qd.FieldByName('kode_brg_induk').AsString;
        FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
        FieldByName('jenis').AsString := 'BARANG JADI';
        FieldByName('satuan').AsString := qd.FieldByName('satuan').AsString;
        FieldByName('deskripsi').AsString := qd.FieldByName('deskripsi').AsString;
        Post;
      end;

    end;
    qd.Close;

    if q.FieldByName('f_compound').AsInteger = 1 then begin
      cxChkCompound.Checked := True;

      qcomp := OpenRS('SELECT a.*, b.deskripsi, b.satuan satuan2, c.deskripsi desk_sample ' + 
        'FROM tbl_logbook_design a ' +
        'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
        'LEFT JOIN tbl_barang c ON a.kode_brg_sample = c.kode ' +
        'WHERE no_trial = ''%s'' and a.jenis = ''COMPOUND''',
        [cxtNoTrial2.Text]);

      if not qcomp.IsEmpty then begin

        memTblC.EmptyTable;
        nxGrdCompound.ClearRows;
        while not qcomp.Eof do begin

          memTblC.Insert;
          memTblC.FieldByName('kode').AsString := qcomp.FieldByName('kode_brg').AsString;
          memTblC.Post;

          qtmp_trial.Insert;
          qtmp_trial.FieldByName('kode').AsString := qcomp.FieldByName('kode_brg').AsString;
          qtmp_trial.FieldByName('deskripsi').AsString := qcomp.FieldByName('deskripsi').AsString;
          qtmp_trial.FieldByName('jenis').AsString := 'COMPOUND';
          qtmp_trial.FieldByName('qty').AsFloat := qcomp.FieldByName('qty').AsFloat;
          qtmp_trial.FieldByName('satuan').AsString := qcomp.FieldByName('satuan').AsString;
          qtmp_trial.Post;

          i := nxGrdCompound.AddRow();
          with nxGrdCompound do begin
            Cell[nxColKodeBrgC.Index, i].AsString := qcomp.FieldByName('kode_brg').AsString;
            Cell[nxColDeskC.Index, i].AsString := qcomp.FieldByname('deskripsi').AsString;
            Cell[nxColQtyC.Index, i].AsFloat := qcomp.FieldByName('qty').AsFloat;
          end;
          qcomp.Next;

        end;

        //cxlKodeBrgC.EditValue := qcomp.FieldByName('kode_brg').AsInteger;
        //cxsQtyC.Value := qcomp.FieldByName('qty').AsFloat;

        qd := OpenRS('SELECT a.kode_brg, a.kode_brg_induk, a.qty, b.deskripsi, b.satuan ' +
          'FROM tbl_trial_bom a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
          'WHERE a.no_trial = ''%s'' AND a.jenis = ''COMPOUND''',[cxtNoTrial2.Text]);

        memTbl2.EmptyTable;
        nxGrd2.ClearRows;

        while not qd.Eof do begin
          memTbl2.Insert;
          memTbl2.FieldByName('kode').AsString := qd.FieldByName('kode_brg').AsString;
          memTbl2.Post;

          //i := nxGrd2.AddRow();
          //nxGrd2.Cell[nxColKode1.Index, i].AsString := qd.FieldByName('kode_brg').AsString;
          //nxGrd2.Cell[nxColDesk1.Index, i].AsString := qd.FieldByname('deskripsi').AsString;
          //nxGrd2.Cell[nxColQty1.Index, i].AsFloat := qd.FieldByName('qty').AsFloat;
          //nxGrd2.Cell[nxColSat1.Index, i].AsString := qd.FieldByName('satuan').AsString;

          with qtmp_bom do begin
            Insert;
            FieldByName('kode').AsString := qd.FieldByName('kode_brg').AsString;
            FieldByName('kode_induk').AsString := qd.FieldByName('kode_brg_induk').AsString;
            FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
            FieldByName('jenis').AsString := 'COMPOUND';
            FieldByName('satuan').AsString := qd.FieldByName('satuan').AsString;
            FieldByName('deskripsi').AsString := qd.FieldByName('deskripsi').AsString;
            Post;
          end;

          qd.Next;
        end;
        qd.Close;

      end;
      qcomp.Close;

    end
    else begin
      cxChkCompound.Checked := False;
      tabCompound.Enabled := False;
    end;

    if q.FieldByName('f_tepung').AsInteger = 1 then begin
      cxChkTepung.Checked := True;

      qtep := OpenRS('SELECT a.*, b.deskripsi, b.satuan satuan2, c.deskripsi desk_sample ' +
        'FROM tbl_logbook_design a ' +
        'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
        'LEFT JOIN tbl_barang c ON a.kode_brg_sample = c.kode ' +
        'WHERE no_trial = ''%s'' and a.jenis = ''TEPUNG''',
        [cxtNoTrial2.Text]);

      if not qtep.IsEmpty then begin

        memTblT.EmptyTable;
        nxGrdTepung.ClearRows;
        while not qtep.Eof do begin

          memTblC.Insert;
          memTblC.FieldByName('kode').AsString := qtep.FieldByName('kode_brg').AsString;
          memTblC.Post;

          qtmp_trial.Insert;
          qtmp_trial.FieldByName('kode').AsString := qtep.FieldByName('kode_brg').AsString;
          qtmp_trial.FieldByName('deskripsi').AsString := qtep.FieldByName('deskripsi').AsString;
          qtmp_trial.FieldByName('jenis').AsString := 'TEPUNG';
          qtmp_trial.FieldByName('qty').AsFloat := qtep.FieldByName('qty').AsFloat;
          qtmp_trial.FieldByName('satuan').AsString := qtep.FieldByName('satuan').AsString;
          qtmp_trial.Post;

          i := nxGrdTepung.AddRow();
          with nxGrdTepung do begin
            Cell[nxColKodeBrgC.Index, i].AsString := qtep.FieldByName('kode_brg').AsString;
            Cell[nxColDeskC.Index, i].AsString := qtep.FieldByname('deskripsi').AsString;
            Cell[nxColQtyC.Index, i].AsFloat := qtep.FieldByName('qty').AsFloat;
          end;
          qtep.Next;

        end;

        //cxlKodeBrgT.EditValue := qtep.FieldByName('kode_brg').AsInteger;
        //cxsQtyT.Value := qtep.FieldByName('qty').AsFloat;

        qd := OpenRS('SELECT a.kode_brg, a.kode_brg_induk, a.qty, b.deskripsi, b.satuan ' +
          'FROM tbl_trial_bom a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
          'WHERE a.no_trial = ''%s'' AND a.jenis = ''TEPUNG''',[cxtNoTrial2.Text]);

        memTbl3.EmptyTable;
        nxGrd3.ClearRows;

        while not qd.Eof do begin
          memTbl3.Insert;
          memTbl3.FieldByName('kode').AsString := qd.FieldByName('kode_brg').AsString;
          memTbl3.Post;

          //i := nxGrd3.AddRow();
          //nxGrd3.Cell[nxColKode1.Index, i].AsString := qd.FieldByName('kode_brg').AsString;
          //nxGrd3.Cell[nxColDesk1.Index, i].AsString := qd.FieldByname('deskripsi').AsString;
          //nxGrd3.Cell[nxColQty1.Index, i].AsFloat := qd.FieldByName('qty').AsFloat;
          //nxGrd3.Cell[nxColSat1.Index, i].AsString := qd.FieldByName('satuan').AsString;

          with qtmp_bom do begin
            Insert;
            FieldByName('kode').AsString := qd.FieldByName('kode_brg').AsString;
            FieldByName('kode_induk').AsString := qd.FieldByName('kode_brg_induk').AsString;
            FieldByName('qty').AsFloat := qd.FieldByName('qty').AsFloat;
            FieldByName('jenis').AsString := 'TEPUNG';
            FieldByName('satuan').AsString := qd.FieldByName('satuan').AsString;
            FieldByName('deskripsi').AsString := qd.FieldByName('deskripsi').AsString;
            Post;
          end;

          qd.Next;
        end;
        qd.Close;

      end;
      qtep.Close;

    end
    else begin
      cxChkTepung.Checked := False;
      tabTepung.Enabled := False;
    end;

    if q.FieldByName('f_posted').AsInteger = 1 then begin
      cxChkPosting.Checked := True;
      cxChkPosting.Properties.ReadOnly := True;
    end;
    
  end;
  q.Close;
  pg.ActivePageIndex := 2;

end;

procedure TfrmLogBookDesign_NEW.btnSimpanKPClick(Sender: TObject);
var
  q, qso_h, qso_d, qmo, qjml_bom, qb, qc, qcd: TZQuery;
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

    if Trim(cxmDeskTrial.Lines.Text) = '' then begin
      MsgBox('Deskripsi Trial harus diisi.');
      cxmDeskTrial.SetFocus;
    end
    else begin

      // jika posting cek apakah semua trial sudah punya bom ?
      qc := OpenRS('SELECT * FROM 0tmp_trial');
      if qc.IsEmpty then begin
        MsgBox('Barang trial masih kosong');
        qc.Close;
        Abort;
      end
      else begin
        while not qc.Eof do begin
          qcd := OpenRS('SELECT * FROM 0tmp_bom WHERE kode_induk = ''%s''',[qc.FieldByName('kode').AsString]);
          if qcd.IsEmpty then begin
            MsgBox('Bom untuk kode barang : ' + qc.FieldByName('kode').AsString + Chr(10) + Chr(13) +
              'Deskripsi : ' + qc.FieldByName('deskripsi').AsString + Chr(10) + Chr(13) + 
              'masih kosong.');
            qcd.Close;  
            qc.Close;
            Abort;
          end;
          qc.Next;
        end;
      end;
      qc.Close;

      try
        dm.zConn.StartTransaction;

        // hapus trial compound dan tepung
        dm.zConn.ExecuteDirect(
          format('delete from tbl_logbook_design where no_trial = ''%s'' ' +
          'and jenis IN (''COMPOUND'',''TEPUNG'')',
          [cxtNoTrial2.Text])
        );

        q.Edit;
        q.FieldByName('deskripsi_trial').AsString := cxmDeskTrial.Lines.Text;
        q.FieldByName('waktu').AsString := cxtWaktu.Text;
        if cxChkCompound.Checked then begin
          //q.FieldByName('kode_brg_compound').AsInteger := cxlKodeBrgC.EditValue;
          q.FieldByName('f_compound').AsInteger := 1;
        end
        else begin
          q.FieldByName('f_compound').AsInteger := 0;
        end;
        if cxChkTepung.Checked then begin
          //q.FieldByName('kode_brg_tepung').AsInteger := cxlKodeBrgT.EditValue;
          q.FieldByName('f_tepung').AsInteger := 1;
        end
        else begin
          q.FieldByName('f_tepung').AsInteger := 0;
        end;

        q.Post;
        q.Close;

        dm.zConn.ExecuteDirect(
          Format('DELETE FROM tbl_trial_bom WHERE no_trial = ''%s''',
            [cxtNoTrial2.Text])
        );

        q := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s''',
          [cxtNoTrial2.Text]);
        
        {
        grd := nxGrd1;
        if grd.RowCount > 0 then begin
          for i := 0 to grd.RowCount - 1 do begin
            q.Insert;
            q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
            q.FieldByName('jenis').AsString := 'BARANG JADI';
            q.FieldByName('deskripsi').AsString := grd.Cell[nxColDesk1.Index, i].AsString;
            q.FieldByName('kode_brg').AsString := grd.Cell[nxColKode1.Index, i].AsString;
            q.FieldByName('satuan').AsString := grd.Cell[nxColSat1.Index, i].AsString;
            q.FieldByName('qty').AsFloat := grd.Cell[nxColQty1.Index, i].AsFloat;
            q.Post;
          end;
        end;
        grd := nil;
        }

        qtmp_bom.First;
        while not qtmp_bom.Eof do begin
          if qtmp_bom.FieldByName('jenis').AsString = 'BARANG JADI' then begin
            q.Insert;
            q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
            q.FieldByName('jenis').AsString := 'BARANG JADI';
            q.FieldByName('deskripsi').AsString := qtmp_bom.FieldByName('deskripsi').AsString;
            q.FieldByName('kode_brg').AsString := qtmp_bom.FieldByName('kode').AsString;
            q.FieldByName('kode_brg_induk').AsString := qtmp_bom.FieldByName('kode_induk').AsString;
            q.FieldByName('satuan').AsString := qtmp_bom.FieldByName('satuan').AsString;
            q.FieldByName('qty').AsFloat := qtmp_bom.FieldByName('qty').AsFloat;
            q.Post;
          end;
          qtmp_bom.Next;
        end;

        q.Close;

        // jika compound di centang
        if cxChkCompound.Checked then begin

          {
          q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);
          q.Insert;
          q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
          q.FieldByName('kode_brg').AsInteger := cxlKodeBrgC.EditValue;
          q.FieldByName('jenis').AsString := 'COMPOUND';
          q.FieldByName('qty').AsFloat := cxsQtyC.Value;
          q.Post;
          }

          q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);
          qtmp_trial.First;
          while not qtmp_trial.Eof do begin
            if qtmp_trial.FieldByName('jenis').AsString = 'COMPOUND' then begin
              q.Insert;
              q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
              q.FieldByName('kode_brg').AsString := qtmp_trial.FieldByName('kode').AsString;
              q.FieldByName('jenis').AsString := 'COMPOUND';
              q.FieldByName('qty').AsFloat := qtmp_trial.FieldByName('qty').AsFloat;
              q.FieldByName('f_app_awal').AsInteger := 1;
              q.Post;
            end;
            qtmp_trial.Next;
          end;

          {
          qb := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s'' AND jenis = ''COMPOUND''',
            [cxtNoTrial2.Text]);
          grd := nxGrd2;
          if grd.RowCount > 0 then begin
            for i := 0 to grd.RowCount - 1 do begin
              qb.Insert;
              qb.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
              qb.FieldByName('jenis').AsString := 'COMPOUND';
              qb.FieldByName('deskripsi').AsString := grd.Cell[nxColDesk1.Index, i].AsString;
              qb.FieldByName('kode_brg').AsString := grd.Cell[nxColKode1.Index, i].AsString;
              qb.FieldByName('satuan').AsString := grd.Cell[nxColSat1.Index, i].AsString;
              qb.FieldByName('qty').AsFloat := grd.Cell[nxColQty1.Index, i].AsFloat;
              qb.Post;
            end;
          end;
          qb.Close;
          }

          {
          memTbl2.First;
          qb := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s'' AND jenis = ''COMPOUND''',
            [cxtNoTrial2.Text]);
          while not memTbl2.Eof do begin
            qb.Insert;
            qb.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
            qb.FieldByName('jenis').AsString := 'COMPOUND';
            qb.FieldByName('deskripsi').AsString := memTbl2.FieldByName('deskripsi').AsString;
            qb.FieldByName('kode_brg').AsString := memTbl2.FieldByName('kode').AsString;
            qb.FieldByName('kode_brg_induk').AsString := memTbl2.FieldByName('kode_induk').AsString;
            qb.FieldByName('satuan').AsString := memTbl2.FieldByName('satuan').AsString;
            qb.FieldByName('qty').AsFloat := memTbl2.FieldByName('qty').AsFloat;
            qb.Post;
            memTbl2.Next;
          end;
          qb.Close;
          }

          memTbl2.First;
          qb := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s'' AND jenis = ''COMPOUND''',
            [cxtNoTrial2.Text]);
          qtmp_bom.First;
          while not qtmp_bom.Eof do begin
            if qtmp_bom.FieldByName('jenis').AsString = 'COMPOUND' then begin
              qb.Insert;
              qb.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
              qb.FieldByName('jenis').AsString := 'COMPOUND';
              qb.FieldByName('deskripsi').AsString := qtmp_bom.FieldByName('deskripsi').AsString;
              qb.FieldByName('kode_brg').AsString := qtmp_bom.FieldByName('kode').AsString;
              qb.FieldByName('kode_brg_induk').AsString := qtmp_bom.FieldByName('kode_induk').AsString;
              qb.FieldByName('satuan').AsString := qtmp_bom.FieldByName('satuan').AsString;
              qb.FieldByName('qty').AsFloat := qtmp_bom.FieldByName('qty').AsFloat;
              qb.Post;
            end;
            qtmp_bom.Next;
          end;
          qb.Close;

        end;

        // jika tepung di centang
        if cxChkTepung.Checked then begin
          {
          q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);
          q.Insert;
          q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
          q.FieldByName('kode_brg').AsInteger := cxlKodeBrgT.EditValue;
          q.FieldByName('jenis').AsString := 'TEPUNG';
          q.FieldByName('qty').AsFloat := cxsQtyT.Value;
          q.Post;
          }

          q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);
          qtmp_trial.First;
          while not qtmp_trial.Eof do begin
            if qtmp_trial.FieldByName('jenis').AsString = 'TEPUNG' then begin
              q.Insert;
              q.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
              q.FieldByName('kode_brg').AsString := qtmp_trial.FieldByName('kode').AsString;
              q.FieldByName('jenis').AsString := 'TEPUNG';
              q.FieldByName('qty').AsFloat := qtmp_trial.FieldByName('qty').AsFloat;
              q.FieldByName('f_app_awal').AsInteger := 1;
              q.Post;
            end;
            qtmp_trial.Next;
          end;

          qb := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s'' AND jenis = ''TEPUNG''',
            [cxtNoTrial2.Text]);

          qtmp_bom.First;
          while not qtmp_bom.Eof do begin
            if qtmp_bom.FieldByName('jenis').AsString = 'TEPUNG' then begin
              qb.Insert;
              qb.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
              qb.FieldByName('jenis').AsString := 'TEPUNG';
              qb.FieldByName('deskripsi').AsString := qtmp_bom.FieldByName('deskripsi').AsString;
              qb.FieldByName('kode_brg').AsString := qtmp_bom.FieldByName('kode').AsString;
              qb.FieldByName('kode_brg_induk').AsString := qtmp_bom.FieldByName('kode_induk').AsString;
              qb.FieldByName('satuan').AsString := qtmp_bom.FieldByName('satuan').AsString;
              qb.FieldByName('qty').AsFloat := qtmp_bom.FieldByName('qty').AsFloat;
              qb.Post;
            end;
            qtmp_bom.Next;
          end;

          {
          if Assigned(grd) then grd := nil;
          grd := nxGrd3;
          if grd.RowCount > 0 then begin
            for i := 0 to grd.RowCount - 1 do begin
              qb.Insert;
              qb.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
              qb.FieldByName('jenis').AsString := 'TEPUNG';
              qb.FieldByName('deskripsi').AsString := grd.Cell[nxColDesk1.Index, i].AsString;
              qb.FieldByName('kode_brg').AsString := grd.Cell[nxColKode1.Index, i].AsString;
              qb.FieldByName('satuan').AsString := grd.Cell[nxColSat1.Index, i].AsString;
              qb.FieldByName('qty').AsFloat := grd.Cell[nxColQty1.Index, i].AsFloat;
              qb.Post;
            end;
          end;
          }

          qb.Close;

        end;

        // jika diposting maka masukkan ke table so dan mo
        if cxChkPosting.Checked then begin
          q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);

          qjml_bom := OpenRS('SELECT no_trial, jenis, count(no_trial) from tbl_trial_bom ' +
            'where no_trial = ''%s'' and jenis = ''BARANG JADI'' group by no_trial, jenis',
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
              qmo.FieldByName('bom_trial').AsString := 'BARANG JADI';
              qmo.Post;
              qmo.Close;

              qjml_bom.Next;
            end;

            if cxChkCompound.Checked then begin
              q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);

              //qjml_bom := OpenRS('SELECT no_trial, jenis, count(no_trial) from tbl_trial_bom ' +
              //  'where no_trial = ''%s'' AND jenis = ''COMPOUND'' group by no_trial, jenis',
              //  [cxtNoTrial2.Text]);

              qjml_bom := OpenRS('SELECT * FROM 0tmp_trial WHERE jenis = ''COMPOUND''');

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
                  qso_d.FieldByName('kode_brg').AsString := qjml_bom.FieldByName('kode').AsString;
                  qso_d.FieldByName('qty').AsFloat := qjml_bom.FieldByName('qty').AsFloat;
                  qso_d.FieldByName('notes').AsString := '';
                  qso_d.Post;
                  qso_d.Close;

                  qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
                  qmo.Insert;
                  qmo.FieldByName('no_mo').AsString := sNoMO;
                  qmo.FieldByName('no_so').AsString := sNoSO;
                  qmo.FieldByName('kode_brg').AsString := qjml_bom.FieldByName('kode').AsString;
                  qmo.FieldByName('qty_mo').AsFloat := qjml_bom.FieldByName('qty').AsFloat;
                  qmo.FieldByName('qty_so').AsFloat := qjml_bom.FieldByName('qty').AsFloat;
                  qmo.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
                  qmo.FieldByName('bom_trial').AsString := 'COMPOUND';
                  qmo.Post;
                  qmo.Close;

                  qjml_bom.Next;
                end;
              end;
            end;

            // jika tepung di centang
            if cxChkTepung.Checked then begin
              q := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[cxtNoTrial2.Text]);

              //qjml_bom := OpenRS('SELECT no_trial, jenis, count(no_trial) from tbl_trial_bom ' +
              //  'where no_trial = ''%s'' AND jenis = ''TEPUNG'' group by no_trial, jenis',
              //  [cxtNoTrial2.Text]);

              qjml_bom := OpenRS('SELECT * FROM 0tmp_trial WHERE jenis = ''TEPUNG''');

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
                  qso_d.FieldByName('kode_brg').AsString := qjml_bom.FieldByName('kode').AsString;
                  qso_d.FieldByName('qty').AsFloat := qjml_bom.FieldByName('qty').AsFloat;
                  qso_d.FieldByName('notes').AsString := '';
                  qso_d.Post;
                  qso_d.Close;

                  qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
                  qmo.Insert;
                  qmo.FieldByName('no_mo').AsString := sNoMO;
                  qmo.FieldByName('no_so').AsString := sNoSO;
                  qmo.FieldByName('kode_brg').AsString := qjml_bom.FieldByName('kode').AsString;
                  qmo.FieldByName('qty_mo').AsFloat := qjml_bom.FieldByName('qty').AsFloat;
                  qmo.FieldByName('qty_so').AsFloat := qjml_bom.FieldByName('qty').AsFloat;
                  qmo.FieldByName('no_trial').AsString := cxtNoTrial2.Text;
                  qmo.FieldByName('bom_trial').AsString := 'TEPUNG';
                  qmo.Post;
                  qmo.Close;

                  qjml_bom.Next;
                end;
              end;
            end;
          end;

          qjml_bom.Close;

          dm.zConn.ExecuteDirect('UPDATE tbl_logbook_design SET f_posted = 1 ' +
            'WHERE no_trial = ''' + cxtNoTrial2.Text + '''');
        end;

        if cxChkPosting.Checked then begin
          MsgBox('Komunikasi Percobaan sudah disimpan.' + Chr(10) + Chr(13) +
            'No. SO : ' + sNoSO);
          memTbl.EmptyTable;
          memTbl2.EmptyTable;
          memTbl3.EmptyTable;
          KosongiTempTable; 
        end
        else begin
          MsgBox('Komunikasi Percobaan sudah disimpan.');
          memTbl.EmptyTable;
          memTbl2.EmptyTable;
          memTbl3.EmptyTable;
          KosongiTempTable;
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

procedure TfrmLogBookDesign_NEW.ClearAll2;
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

procedure TfrmLogBookDesign_NEW.btnCariBrgClick(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.cxlDeskripsiPropertiesChange(Sender: TObject);
var
  q: TZQuery;
  cxl: TcxLookupComboBox;
begin
  inherited;

  cxl := (Sender as TcxLookupComboBox);

  try
    if cxl.Name = 'cxlDeskripsi' then begin
      if Trim(cxlDeskripsi.Text) = '' then Abort;

      if not VarIsClear(cxlDeskripsi.EditValue) then begin
        q := OpenRS('SELECT satuan FROM tbl_barang WHERE kode = ''%s''',
          [cxlDeskripsi.EditValue]);
        cxCmbSatuan.Text := q.FieldByName('satuan').AsString;
        cxtSatuanBOM1.Text := q.FieldByName('satuan').AsString;
        q.Close;
      end;
    end
    else if cxl.Name = 'cxlDekripsiC' then begin
      if Trim(cxlDeskripsiC.Text) = '' then Abort;

      if not VarIsClear(cxlDeskripsiC.EditValue) then begin
        q := OpenRS('SELECT satuan FROM tbl_barang WHERE kode = ''%s''',
          [cxlDeskripsiC.EditValue]);
        cxtSatuanBOM2.Text := q.FieldByName('satuan').AsString;
        q.Close;
      end;
    end
    else if cxl.Name = 'cxlDeskripsiT' then begin
      if Trim(cxlDeskripsiT.Text) = '' then Abort;

      if not VarIsClear(cxlDeskripsiT.EditValue) then begin
        q := OpenRS('SELECT satuan FROM tbl_barang WHERE kode = ''%s''',
          [cxlDeskripsiT.EditValue]);
        cxtSatuanBOM3.Text := q.FieldByName('satuan').AsString;
        q.Close;
      end;
    end;
  except
  end;
end;

procedure TfrmLogBookDesign_NEW.btnTambahBomClick(Sender: TObject);
var
  grd: TNextGrid;
  i: integer;
  sJenisBom: string;
  btn: TButton;
  sKodeBrgInduk: string;
begin
  inherited;

  btn := (Sender as TButton);

  if btn.Name = 'btnTambahBom' then begin

    grd := nxGrd1;

    if Trim(cxlDeskripsi.Text) = '' then begin
      MsgBox('Deskripsi Bom harus diisi.');
      cxlDeskripsi.SetFocus;
      Abort;
    end
    else if cxsQtyBom.Value = 0 then begin
      MsgBox('Qty. BOM harus di isi.');
      cxsQtyBom.SetFocus;
      Abort;
    end;

    //if memTbl.Locate('kode', VarArrayOf([cxlDeskripsi.EditValue]), []) then begin
    //  MsgBox('Kode barang ini sudah ada.');
    //  Abort;
    //end;

    sKodeBrgInduk := cxtKodeBrg.Text;
    if qtmp_bom.Locate('kode;kode_induk',VarArrayOf([cxlDeskripsi.EditValue, sKodeBrgInduk]),[]) then begin
      MsgBox('Kode barang ini sudah ada.');
      Abort;
    end;

  end
  else if btn.Name = 'btnTambahBomC' then begin

    grd := nxGrd2;

    if Trim(cxlDeskripsiC.Text) = '' then begin
      MsgBox('Deskripsi Bom harus diisi.');
      cxlKodeBrgC.SetFocus;
      Abort;
    end
    else if cxsQtyBomC.Value = 0 then begin
      MsgBox('Qty. BOM harus di isi.');
      cxsQtyBomC.SetFocus;
      Abort;
    end;

    if nxGrdCompound.SelectedRow = -1 then begin
      MsgBox('Pilih / klik pada kode Compound terlebih dahulu.');
      Abort;
    end;

    sKodeBrgInduk := nxGrdCompound.Cell[nxColKodeBrgC.Index, nxGrdCompound.SelectedRow].AsString;
    //if memTbl2.Locate('kode;kode_induk', VarArrayOf([cxlDeskripsiC.EditValue, sKodeBrgInduk]), []) then begin
    //  MsgBox('Kode barang ini sudah ada.');
    //  Abort;
    //end;

    if qtmp_bom.Locate('kode;kode_induk',VarArrayOf([cxlDeskripsiC.EditValue, sKodeBrgInduk]),[]) then begin
      MsgBox('Kode barang ini sudah ada.');
      Abort;
    end;

  end
  else if btn.Name = 'btnTambahBomT' then begin

    grd := nxGrd3;

    if Trim(cxlDeskripsiT.Text) = '' then begin
      MsgBox('Deskripsi Bom harus diisi.');
      cxlKodeBrgT.SetFocus;
      Abort;
    end
    else if cxsQtyBomT.Value = 0 then begin
      MsgBox('Qty. BOM harus di isi.');
      cxsQtyBomT.SetFocus;
      Abort;
    end;

    if nxGrdTepung.SelectedRow = -1 then begin
      MsgBox('Pilih / klik pada kode Tepung terlebih dahulu.');
      Abort;
    end;

    //if memTbl3.Locate('kode', VarArrayOf([cxlDeskripsiT.EditValue]), []) then begin
    //  MsgBox('Kode barang ini sudah ada.');
    //  Abort;
    //end;
    sKodeBrgInduk := nxGrdTepung.Cell[nxColKodeBrgC.Index, nxGrdTepung.SelectedRow].AsString;
    if qtmp_bom.Locate('kode;kode_induk',VarArrayOf([cxlDeskripsiT.EditValue, sKodeBrgInduk]),[]) then begin
      MsgBox('Kode barang ini sudah ada.');
      Abort;
    end;

  end;

  i := grd.AddRow();

  if grd.Name = 'nxGrd1' then begin
    grd.Cell[nxColKode1.Index, i].AsString := cxlDeskripsi.EditValue;

    if Trim(cxlDeskripsi.Text) <> '' then
      grd.Cell[nxColDesk1.Index, i].AsString := cxlDeskripsi.Text;

    grd.Cell[nxColQty1.Index, i].AsFloat := cxsQtyBom.Value;
    grd.Cell[nxColSat1.Index, i].AsString := cxCmbSatuan.Text;
  end
  else if grd.Name = 'nxGrd2' then begin
    grd.Cell[nxColKode1.Index, i].AsString := cxlDeskripsiC.EditValue;

    if Trim(cxlDeskripsiC.Text) <> '' then
      grd.Cell[nxColDesk1.Index, i].AsString := cxlDeskripsiC.Text;

    grd.Cell[nxColQty1.Index, i].AsFloat := cxsQtyBomC.Value;
    grd.Cell[nxColSat1.Index, i].AsString := 'KG';
    grd.Cell[nxColKodeIndukC.Index, i].AsString := sKodeBrgInduk;
  end
  else if grd.Name = 'nxGrd3' then begin
    grd.Cell[nxColKode1.Index, i].AsString := cxlDeskripsiT.EditValue;

    if Trim(cxlDeskripsiT.Text) <> '' then
      grd.Cell[nxColDesk1.Index, i].AsString := cxlDeskripsiT.Text;

    grd.Cell[nxColQty1.Index, i].AsFloat := cxsQtyBomT.Value;
    grd.Cell[nxColSat1.Index, i].AsString := cxtSatuanT.Text;
  end;

  if grd.Name = 'nxGrd1' then begin
    memTbl.Insert;
    memTbl.FieldByName('kode').AsString := cxlDeskripsi.EditValue;
    memTbl.FieldByName('jenis').AsString := 'BARANG JADI';
    memTbl.Post;

    with qtmp_bom do begin
      Insert;
      FieldByName('kode').AsString := cxlDeskripsi.EditValue;
      FieldByName('kode_induk').AsString := sKodeBrgInduk;
      FieldByName('deskripsi').AsString := cxlDeskripsi.Text;
      FieldByName('satuan').AsString := 'KG';
      FieldByName('jenis').AsString := 'BARANG JADI';
      FieldByName('qty').AsFloat := cxsQtyBom.Value;
      Post;
    end;

  end
  else if grd.Name = 'nxGrd2' then begin
    memTbl2.Insert;
    memTbl2.FieldByName('kode').AsString := cxlDeskripsiC.EditValue;
    memTbl2.FieldByName('kode_induk').AsString := sKodeBrgInduk;
    memTbl2.FieldByName('deskripsi').AsString := cxlDeskripsiC.Text;
    memTbl2.FieldByName('satuan').AsString := 'KG';
    memTbl2.FieldByName('jenis').AsString := 'COMPOUND';
    memTbl2.FieldByName('qty').AsFloat := cxsQtyBomC.Value;
    memTbl2.Post;

    with qtmp_bom do begin
      Insert;
      FieldByName('kode').AsString := cxlDeskripsiC.EditValue;
      FieldByName('kode_induk').AsString := sKodeBrgInduk;
      FieldByName('deskripsi').AsString := cxlDeskripsiC.Text;
      FieldByName('satuan').AsString := 'KG';
      FieldByName('jenis').AsString := 'COMPOUND';
      FieldByName('qty').AsFloat := cxsQtyBomC.Value;
      Post;
    end;

  end
  else if grd.Name = 'nxGrd3' then begin
    memTbl.Insert;
    memTbl.FieldByName('kode').AsString := cxlDeskripsiT.EditValue;
    memTbl.FieldByName('jenis').AsString := 'TEPUNG';
    memTbl.Post;

    with qtmp_bom do begin
      Insert;
      FieldByName('kode').AsString := cxlDeskripsiT.EditValue;
      FieldByName('kode_induk').AsString := sKodeBrgInduk;
      FieldByName('deskripsi').AsString := cxlDeskripsiT.Text;
      FieldByName('satuan').AsString := cxtSatuanT.Text;
      FieldByName('jenis').AsString := 'TEPUNG';
      FieldByName('qty').AsFloat := cxsQtyBomT.Value;
      Post;
    end;
  end;
end;

procedure TfrmLogBookDesign_NEW.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmLogBookDesign_NEW.cxrDeptClick(Sender: TObject);
var
  chk: TcxRadioButton;
begin
  inherited;
  cxlDept.Visible := cxrDept.Checked;
  cxlCust.Visible := not cxrDept.Checked;
  cxlDept.BringToFront;
end;

procedure TfrmLogBookDesign_NEW.cxrCustClick(Sender: TObject);
begin
  inherited;
  cxlCust.Visible := cxrCust.Checked;
  cxlCust.BringToFront;
  cxlDept.Visible := not cxrCust.Checked;
end;

procedure TfrmLogBookDesign_NEW.btnTindakLanjutTrialClick(Sender: TObject);
var
  f: TfrmTindakLanjutTrial;
  q: TZQuery;
  i: Integer;
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

  // cek apakah hasil trial barang jadi sudah ada hasil
  for i := 0 to nxGrdDet.RowCount - 1 do begin
    if nxGrdDet.Cell[nxColJenis.Index, i].AsString = 'BARANG JADI' then begin
      if nxGrdDet.Cell[nxColHasil.Index, i].AsFloat = 0 then begin
        MsgBox('Trial barang jadi belum ada hasil. Tindak lanjut tidak bisa dilakukan.');
        Abort;
      end;
    end;
  end;

  f := TfrmTindakLanjutTrial.Create(Self);
  f.NoTrial := zqrLog.FieldByName('no_trial').AsString;
  f.ShowModal;
  f.Release;
end;

procedure TfrmLogBookDesign_NEW.Button3Click(Sender: TObject);
var
  f: TFrmLapTrial;
begin
  f := TfrmLapTrial.Create(Self);
  f.rptAPP.ShowReport(True);
end;

procedure TfrmLogBookDesign_NEW.nxGrd1CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  grd: TNextGrid;
  kode, sKodeInduk: string;
begin
  if ACol = nxColHapus.Index then begin
    grd := (Sender as TNextGrid);
    kode := grd.Cell[nxColKode1.Index, ARow].AsString;
    grd.DeleteRow(ARow);
    if grd.Name = 'nxGrd1' then begin
      //if memTbl.Locate('kode', VarArrayOf([kode]),[]) then
      //  memTbl.Delete;
      sKodeInduk := cxtKodeBrg.Text;
      //if memTbl.Locate('kode;kode_induk', VarArrayOf([kode, sKodeInduk]),[]) then
      //  memTbl.Delete;
      if qtmp_bom.Locate('kode;kode_induk', VarArrayOf([kode, sKodeInduk]),[]) then
        qtmp_bom.Delete;
    end
    else if grd.Name = 'nxGrd2' then begin
      sKodeInduk := nxGrdCompound.Cell[nxColKodeBrgC.Index, nxGrdCompound.SelectedRow].AsString;
      //if memTbl.Locate('kode;kode_induk', VarArrayOf([kode, sKodeInduk]),[]) then
      //  memTbl.Delete;
      if qtmp_bom.Locate('kode;kode_induk', VarArrayOf([kode, sKodeInduk]),[]) then
        qtmp_bom.Delete;
    end
    else if grd.Name = 'nxGrd3' then begin
      sKodeInduk := nxGrdTepung.Cell[nxColKodeBrgC.Index, nxGrdTepung.SelectedRow].AsString;
      //if memTbl.Locate('kode', VarArrayOf([kode]),[]) then
      //  memTbl.Delete;
      if qtmp_bom.Locate('kode;kode_induk', VarArrayOf([kode, sKodeInduk]),[]) then
        qtmp_bom.Delete;
    end;
  end;
end;

procedure TfrmLogBookDesign_NEW.SendEmail(sNoTrial: string; lstNoMO: TStringList);
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

procedure TfrmLogBookDesign_NEW.tblViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
  i: Integer;
  s: string;
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
    }

    q := OpenRS('SELECT a.no_spk, a.bom_trial, b.tanggal, ' +
      'ifnull((select sum(qty) from tbl_hsl_prd where no_spk = a.no_spk),0) hsl_prd, ' +
      'c.satuan ' +
      'from tbl_mo a ' +
      'left join tbl_spk b on a.no_spk = b.no_spk ' +
      'left join tbl_barang c on c.kode = a.kode_brg ' +
      'where a.no_trial = ''%s'' and a.no_spk is not null ' +
      'group by a.no_spk, a.bom_trial, b.tanggal',
      [zqrLog.FieldByName('no_trial').AsString]
    );
    nxGrdDet.ClearRows;
    while not q.Eof do begin
      i := nxGrdDet.AddRow();
      nxGrdDet.Cell[nxColNoSPK.Index, i].AsString := q.FieldByName('no_spk').AsString;
      nxGrdDet.Cell[nxColTanggal.Index, i].AsDateTime := q.FieldByName('tanggal').AsDateTime;
      if q.FieldByName('bom_trial').AsString = 'B' then
        s := 'BARANG JADI'
      else if q.FieldByName('bom_trial').AsString = 'C' then
        s := 'COMPOUND'
      else
        s := 'TEPUNG';
      nxGrdDet.Cell[nxColJenis.Index, i].AsString := s;
      nxGrdDet.Cell[nxColHasil.Index, i].AsFloat := q.FieldByName('hsl_prd').AsFloat;
      nxGrdDet.Cell[nxColSat.Index, i].AsString := q.FieldByName('satuan').AsString;
      q.Next;
    end;
    q.Close;

    q := OpenRS('SELECT a.no_trial, a.kode_brg, b.deskripsi, a.qty, b.satuan ' +
      'FROM tbl_logbook_design a ' +
      'LEFT JOIN tbl_barang b ON b.kode = a.kode_brg ' +
      'WHERE a.no_trial = ''%s'' AND jenis IN (''COMPOUND'', ''TEPUNG'')',[zqrLog.FieldByName('no_trial').AsString]);
    nxGrdChild.ClearRows;
    while not q.Eof do begin
      i := nxGrdChild.AddRow();
      nxGrdChild.Cell[nxColNoTrial.Index, i].AsString := q.FieldByName('no_trial').AsString;
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

procedure TfrmLogBookDesign_NEW.btnAppManagementClick(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.SendEmailApp;
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

procedure TfrmLogBookDesign_NEW.btnCariBrg0Click(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.cxlBrgPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtSatuan2.Text := zqrBrg.FieldByName('satuan').AsString;
end;

procedure TfrmLogBookDesign_NEW.btnGroupTrialClick(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.btnTambahNoTrialAnakClick(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.pgChanging(Sender: TObject;
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
  end
  else if pg.ActivePageIndex = 2 then begin
  
  end;
end;

procedure TfrmLogBookDesign_NEW.btnHapusChildClick(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.SendEmailAwal;
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

procedure TfrmLogBookDesign_NEW.btnCariTrialClick(Sender: TObject);
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

procedure TfrmLogBookDesign_NEW.cxChkCompoundClick(Sender: TObject);
begin
  if cxChkCompound.Checked then
    tabCompound.Enabled := True
  else
    tabCompound.Enabled := False;

end;

procedure TfrmLogBookDesign_NEW.cxChkTepungClick(Sender: TObject);
begin
  if cxChkTepung.Checked then
    tabTepung.Enabled := True
  else
    tabTepung.Enabled := False;
end;

procedure TfrmLogBookDesign_NEW.btnBatal2Click(Sender: TObject);
begin
  inherited;
  memTbl.EmptyTable;
  memTbl2.EmptyTable;
  memTbl3.EmptyTable;
  pg.ActivePageIndex := 1;
end;

procedure TfrmLogBookDesign_NEW.btnTambahCClick(Sender: TObject);
var
  i: Integer;
begin
  if Trim(cxlKodeBrgC.Text) = '' then begin
    cxlKodeBrgC.SetFocus;
    Abort;
  end;

  if cxsQtyC.Value = 0 then begin
    cxsQtyC.SetFocus;
    Abort;
  end;

  //if memTblC.Locate('kode', cxlKodeBrgC.EditValue,[]) then begin
  //  MsgBox('Kode barang ini sudah ada.');
  //  Abort;
  //end;

  if qtmp_trial.Locate('kode;jenis', VarArrayOf([cxlKodeBrgC.EditValue, 'COMPOUND']),[]) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end;

  i := nxGrdCompound.AddRow();
  with nxGrdCompound do begin
    Cell[nxColKodeBrgC.Index, i].AsString := cxlKodeBrgC.EditValue;
    Cell[nxColDeskC.Index, i].AsString := cxlKodeBrgC.Text;
    Cell[nxColQtyC.Index, i].AsFloat := cxsQtyC.Value;

    memTblC.Insert;
    memTblC.FieldByName('kode').AsString := cxlKodeBrgC.EditValue;
    memTblC.Post;

    with qtmp_trial do begin
      Insert;
      FieldByName('kode').AsString := cxlKodeBrgC.EditValue;
      FieldByName('deskripsi').AsString := cxlKodeBrgC.Text;
      FieldByName('jenis').AsString := 'COMPOUND';
      FieldByName('qty').AsFloat := cxsQtyC.Value;
      Post;
    end;
    
  end;

end;

procedure TfrmLogBookDesign_NEW.nxGrdCompoundCellClick(Sender: TObject;
  ACol, ARow: Integer);
var
  sKodeBrgInduk: string;
  qd: TZQuery;
  i: Integer;
begin
  sKodeBrgInduk := nxGrdCompound.Cell[nxColKodeBrgC.Index, ARow].AsString;

  nxGrd2.ClearRows;

  qd := OpenRS('SELECT * FROM 0tmp_bom WHERE kode_induk = ''%s''',
    [sKodeBrgInduk]);
  while not qd.Eof do begin
    i := nxGrd2.AddRow();
    nxGrd2.Cell[nxColKode1.Index, i].AsString := qd.FieldByName('kode').AsString;
    nxGrd2.Cell[nxColDesk1.Index, i].AsString := qd.FieldByname('deskripsi').AsString;
    nxGrd2.Cell[nxColQty1.Index, i].AsFloat := qd.FieldByName('qty').AsFloat;
    nxGrd2.Cell[nxColSat1.Index, i].AsString := qd.FieldByName('satuan').AsString;
    nxGrd2.Cell[nxColKodeIndukC.Index, i].AsString := qd.FieldByName('kode_induk').AsString;
    qd.Next;
  end;
  qd.Close;
  
  {
  memTbl2.First;
  while not memTbl2.Eof do begin
    if memTbl2.FieldByName('kode_induk').AsString = sKodeBrgInduk then begin
      i := nxGrd2.AddRow();
      nxGrd2.Cell[nxColKode1.Index, i].AsString := memTbl2.FieldByName('kode').AsString;
      nxGrd2.Cell[nxColDesk1.Index, i].AsString := memTbl2.FieldByname('deskripsi').AsString;
      nxGrd2.Cell[nxColQty1.Index, i].AsFloat := memTbl2.FieldByName('qty').AsFloat;
      nxGrd2.Cell[nxColSat1.Index, i].AsString := memTbl2.FieldByName('satuan').AsString;
      nxGrd2.Cell[nxColKodeIndukC.Index, i].AsString := memTbl2.FieldByName('kode_induk').AsString;
    end;
    memTbl2.Next;
  end;
  }

  {
  qd := OpenRS('SELECT a.kode_brg, a.qty, b.deskripsi, b.satuan ' +
    'FROM tbl_trial_bom a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'WHERE a.no_trial = ''%s'' AND a.kode_brg_induk = %s AND a.jenis = ''COMPOUND''',
    [cxtNoTrial2.Text, sKodeBrgInduk]);

  nxGrd2.ClearRows;

  while not qd.Eof do begin
    i := nxGrd2.AddRow();
    nxGrd2.Cell[nxColKode1.Index, i].AsString := qd.FieldByName('kode_brg').AsString;
    nxGrd2.Cell[nxColDesk1.Index, i].AsString := qd.FieldByname('deskripsi').AsString;
    nxGrd2.Cell[nxColQty1.Index, i].AsFloat := qd.FieldByName('qty').AsFloat;
    nxGrd2.Cell[nxColSat1.Index, i].AsString := qd.FieldByName('satuan').AsString;
    qd.Next;
  end;
  qd.Close;
  }
end;

procedure TfrmLogBookDesign_NEW.nxGrdCompoundCellDblClick(Sender: TObject;
  ACol, ARow: Integer);
var
  sKodeInduk: string;
begin
  if ACol = nxColHapusC.Index then begin
    sKodeInduk := nxGrdCompound.Cell[nxColKodeBrgC.Index, ARow].AsString;

    memTbl2.First;
    while not memTbl2.Eof do begin
      if memTbl2.FieldByName('kode_induk').AsString = sKodeInduk then
        memTbl2.Delete;
      memTbl2.Next;
    end;

    memTblC.First;
    while not memTblC.Eof do begin
      if memTblC.FieldByName('kode').AsString = sKodeInduk then
        memTblC.Delete;
      memTblC.Next;
    end;

    nxGrdCompound.DeleteRow(ARow);
    if nxGrdCompound.RowCount = 0 then begin
      memTbl2.EmptyTable;
      memTblC.EmptyTable;
    end;
    nxGrd2.ClearRows;
  end;
end;

procedure TfrmLogBookDesign_NEW.btnTambahTClick(Sender: TObject);
var
  i: Integer;
begin
  if Trim(cxlKodeBrgT.Text) = '' then begin
    cxlKodeBrgT.SetFocus;
    Abort;
  end;

  if cxsQtyT.Value = 0 then begin
    cxsQtyT.SetFocus;
    Abort;
  end;

  if qtmp_trial.Locate('kode;jenis', VarArrayOf([cxlKodeBrgT.EditValue, 'TEPUNG']),[]) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end;

  i := nxGrdTepung.AddRow();
  with nxGrdTepung do begin
    Cell[nxColKodeBrgC.Index, i].AsString := cxlKodeBrgT.EditValue;
    Cell[nxColDeskC.Index, i].AsString := cxlKodeBrgT.Text;
    Cell[nxColQtyC.Index, i].AsFloat := cxsQtyT.Value;

    with qtmp_trial do begin
      Insert;
      FieldByName('kode').AsString := cxlKodeBrgT.EditValue;
      FieldByName('deskripsi').AsString := cxlKodeBrgT.Text;
      FieldByName('jenis').AsString := 'TEPUNG';
      FieldByName('qty').AsFloat := cxsQtyT.Value;
      Post;
    end;

  end;

end;

procedure TfrmLogBookDesign_NEW.Button4Click(Sender: TObject);
begin
  inherited;
  ZReadOnlyQuery1.Open;
end;

procedure TfrmLogBookDesign_NEW.KosongiTempTable;
begin
  dm.zConn.ExecuteDirect('DELETE FROM 0tmp_trial');
  dm.zConn.ExecuteDirect('DELETE FROM 0tmp_bom');
end;

procedure TfrmLogBookDesign_NEW.nxGrdTepungCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  sKodeBrgInduk: string;
  qd: TZQuery;
  i: Integer;
begin
  sKodeBrgInduk := nxGrdTepung.Cell[nxColKodeBrgC.Index, ARow].AsString;

  nxGrd3.ClearRows;

  qd := OpenRS('SELECT * FROM 0tmp_bom WHERE kode_induk = ''%s''',
    [sKodeBrgInduk]);
  while not qd.Eof do begin
    i := nxGrd3.AddRow();
    nxGrd3.Cell[nxColKode1.Index, i].AsString := qd.FieldByName('kode').AsString;
    nxGrd3.Cell[nxColDesk1.Index, i].AsString := qd.FieldByname('deskripsi').AsString;
    nxGrd3.Cell[nxColQty1.Index, i].AsFloat := qd.FieldByName('qty').AsFloat;
    nxGrd3.Cell[nxColSat1.Index, i].AsString := qd.FieldByName('satuan').AsString;
    qd.Next;
  end;
  qd.Close;

end;

procedure TfrmLogBookDesign_NEW.cxlSamplePropertiesChange(Sender: TObject);
begin
  inherited;
  cxtSatuanSamples.Text := zqrBrgSample.FieldByName('satuan').AsString;
end;

procedure TfrmLogBookDesign_NEW.btnRefreshTrialClick(Sender: TObject);
begin
  inherited;
  try
    zqrLog.Close;
    zqrLog.Open;
  except
  end;
end;

procedure TfrmLogBookDesign_NEW.cxlKodeBrgTPropertiesChange(
  Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  if cxlKodeBrgT.Text <> '' then begin
    q := OpenRS('SELECT kode, satuan FROM tbl_barang WHERE kode = ''%s''',
      [cxlKodeBrgT.EditValue]);
    cxtSatuanTepung.Text := q.FieldByName('satuan').AsString;
    q.Close;
  end;
end;

procedure TfrmLogBookDesign_NEW.cxlKodeBrgCPropertiesChange(
  Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  if cxlKodeBrgC.Text <> '' then begin
    q := OpenRS('SELECT kode, satuan FROM tbl_barang WHERE kode = ''%s''',
      [cxlKodeBrgC.EditValue]);
    cxtSatuanCompound.Text := q.FieldByName('satuan').AsString;
    q.Close;
  end;
end;

end.
