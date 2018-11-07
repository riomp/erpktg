unit unFrmMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxTextEdit, cxContainer,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, ZAbstractRODataset, ZDataset, StdCtrls, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, cxNavigator,
  scExcelExport,cxGridExportLink, ShellAPI, cxMemo, cxGroupBox, cxSpinEdit;

type
  TfrmMO = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrMO: TZReadOnlyQuery;
    dsMO: TDataSource;
    cxColNoSO: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1tgl_required: TcxGridDBColumn;
    cxGridDBTableView1notes: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxgColQtyMO: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1notes_detail: TcxGridDBColumn;
    cxGridDBTableView1ket_harga: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1kontak: TcxGridDBColumn;
    cxGridDBTableView1alamat: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1kategori: TcxGridDBColumn;
    cxGridDBTableView1subkategori: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel2: TPanel;
    btnCetak: TButton;
    btnBatal: TButton;
    Button1: TButton;
    zqrSJDet: TZReadOnlyQuery;
    dsSJDet: TDataSource;
    Panel4: TPanel;
    nxGrd: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NextGrid1: TNextGrid;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxgColQtyG02: TcxGridDBColumn;
    cxgColQtySJ: TcxGridDBColumn;
    nxGrdDetSPK: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColNoSPK: TNxTextColumn;
    nxColTgl: TNxDateColumn;
    cxLabel3: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    nxColMesin: TNxTextColumn;
    cxgColFSPK: TcxGridDBColumn;
    cxStyle3: TcxStyle;
    cxSKuning: TcxStyle;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    Shape2: TShape;
    cxSHijau: TcxStyle;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxgColQtySO: TcxGridDBColumn;
    cxSOlive: TcxStyle;
    Shape4: TShape;
    cxLabel7: TcxLabel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxNavigator1: TcxNavigator;
    cxColNoSPK: TcxGridDBColumn;
    Panel3: TPanel;
    btnMasterSchedule: TButton;
    btnSPKPotong: TButton;
    btnSPKAssembly: TButton;
    btnMutasiStok: TButton;
    btnRefresh: TButton;
    ColG01: TcxGridDBColumn;
    cxMemo1: TcxMemo;
    cxLabel6: TcxLabel;
    Shape3: TShape;
    cxLabel8: TcxLabel;
    Shape5: TShape;
    cxStyle4: TcxStyle;
    cxgColQtyProd: TcxGridDBColumn;
    cxgColQtyMutasi: TcxGridDBColumn;
    cxgColMesin: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxMemo2: TcxMemo;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    Panel5: TPanel;
    cxdTglKonfirmasi: TcxDateEdit;
    cxLabel9: TcxLabel;
    btnSimpanTgl: TButton;
    btnClosePanel: TButton;
    cxLabel10: TcxLabel;
    btnApproval: TButton;
    btnrefresh1: TButton;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    cxGridDBTableView1Column15: TcxGridDBColumn;
    btnKalender: TButton;
    btnSPKGiling: TButton;
    Shape6: TShape;
    cxLabel11: TcxLabel;
    cxColTutupManual: TcxGridDBColumn;
    cxsMerahMuda: TcxStyle;
    cxMemo2_backup: TcxMemo;
    btnSPKRouter: TButton;
    pnlSPKRouter: TPanel;
    btnTambahDet: TButton;
    btnClosePnl6: TButton;
    nxGrdSpkRouter: TNextGrid;
    NxIncrementColumn2: TNxIncrementColumn;
    nxColCheck: TNxCheckBoxColumn;
    nxColKetSO: TNxTextColumn;
    nxColNoSPK_R: TNxTextColumn;
    btnCetakSPKSR: TButton;
    btnTutupPnlSR: TButton;
    cxLabel12: TcxLabel;
    cxtNoSO_R: TcxTextEdit;
    cxtDesk_R: TcxTextEdit;
    cxLabel13: TcxLabel;
    nxColTglSPK: TNxDateColumn;
    btnSPKTrial: TButton;
    cxColSelisih: TcxGridDBColumn;
    cxStyle5: TcxStyle;
    cxColFlagSPK: TcxGridDBColumn;
    cxLabel14: TcxLabel;
    Shape7: TShape;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxColNoTrial: TcxGridDBColumn;
    btnHPP: TButton;
    cxColQtyKG: TcxGridDBColumn;
    cxColOuts: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCetakClick(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnMutasiStokClick(Sender: TObject);
    procedure btnMasterScheduleClick(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure Button2Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSPKPotongClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSPKAssemblyClick(Sender: TObject);
    procedure btnKalenderClick(Sender: TObject);
    procedure btnSimpanTglClick(Sender: TObject);
    procedure Panel5Exit(Sender: TObject);
    procedure btnClosePanelClick(Sender: TObject);
    procedure btnrefresh1Click(Sender: TObject);
    procedure btnApprovalClick(Sender: TObject);
    procedure btnSPKRouterClick(Sender: TObject);
    procedure btnClosePnl6Click(Sender: TObject);
    procedure btnTutupPnlSRClick(Sender: TObject);
    procedure pnlSPKRouterExit(Sender: TObject);
    procedure btnCetakSPKSRClick(Sender: TObject);
    procedure btnSPKTrialClick(Sender: TObject);
    procedure btnHPPClick(Sender: TObject);
  private
    mJenis: string;
  public
    property Jenis: string read mJenis write mJenis;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmSOTerbuka: TFrmMO;

implementation

uses unTools, unFrmLapUmum, unFrmTransGdg, unAplikasi, unDm, unFrmProsesMS,
  unFrmTrsSPKPotong, unFrmTrsSPKAssembly, unFrmTrsSPKAssembly_NEW,
  unFrmLapSPK, unFrmTrsSPK_Trial, unFrmBuatSPK, unFrmBuatSPK2,
  unFrmHPPReport, unFrmTmpBuatSPK;

{$R *.dfm}

procedure TFrmMO.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmMO.btnProsesClick(Sender: TObject);
begin
  with zqrMO do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    dm.zConn.ExecuteDirect('CALL sp_tmp_mo');
    SQL.Text := cxMemo2.Lines.Text;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmMO.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  Panel5.Visible := False;
  //btnSPKGiling.Visible := True;

  pnlSPKRouter.Visible := False;
end;

procedure TFrmMO.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TFrmMO.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TFrmMO.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  i: Integer;
  q: TZQuery;
begin
  {
  with zqrSJDet do begin
    Close;
    ParamByName('no_so').AsString := zqrMO.FieldByName('no_so').AsString;
    Open;

    nxGrd.ClearRows();
    if not IsEmpty then begin
      while not Eof do begin
        i := nxGrd.AddRow();
        nxGrd.Cell[0,i].AsString := FieldByName('no_bukti').AsString;
        nxGrd.Cell[1,i].AsString := FieldByName('kode_brg').AsString;
        nxGrd.Cell[2,i].AsString := FieldByName('deskripsi').AsString;
        nxGrd.Cell[3,i].AsString := FieldByName('satuan').AsString;
        nxGrd.Cell[4,i].AsFloat := FieldByName('qty').AsFloat;
        Next;
      end;
    end;

  end;

  q := OpenRS('SELECT * FROM v_spk WHERE no_mo = ''%s''',
    [zqrMO.FieldByName('no_mo').AsString]);
  with nxGrdDetSPK do begin
    ClearRows;
    while not q.Eof do begin
      AddRow();
      Cell[nxColNoSPK.Index, LastAddedRow].AsString := q.FieldByName('no_spk').AsString;
      Cell[nxColTgl.Index, LastAddedRow].AsDateTime := q.FieldByName('tanggal').AsDateTime;
      Cell[nxColMesin.Index, LastAddedRow].AsString := q.FieldByName('nama_mesin').AsString;
      q.Next;
    end;
  end;
  q.Close;
  }
end;

procedure TfrmMO.btnMutasiStokClick(Sender: TObject);
var
  f: TfrmTransGdg;
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM v_mo WHERE no_mo = ''%s''',
    [zqrMO.FieldByName('no_mo').AsString]);

  if q.FieldByName('qty_so').AsFloat = q.FieldByName('qty_sj').AsFloat then begin
    MsgBox('Qty. Sales Order = Qty. Surat Jalan.' + #10#13 +
      'Mutasi stok tidak dapat dilakukan.');
  end
  else if q.FieldByName('f_completed').AsInteger = 1 then begin
    MsgBox('SO dengan nomor : ' + q.FieldByName('no_so').AsString + ' sudah komplit.');
  end
  //else if q.FieldByName('qty_so').AsFloat = q.FieldByName('qty_g02').AsFloat then begin
  //  MsgBox('QTy. Sales Order = Qty. Gudang G02.' + #10#13 +
  //    'Mutasi stok tidak perlu dilakukan.');
  //end
  else begin
    try
      f := TfrmTransGdg.Create(Self);
      f.UserDept := 'PPIC';
      f.NoSO := zqrMO.FieldByName('no_so').AsString;
      f.Show;
    except
    end;
  end;
  if q.Active then q.Close;
  
end;

procedure TfrmMO.btnMasterScheduleClick(Sender: TObject);
var
  f: TfrmProsesMS;
  q: TZQuery;
  btn: TButton;
  f2: TFrmBuatSPK;
  f3: TfrmBuatSPK2;
begin

  dm.zConn.ExecuteDirect('CALL sp_mo(''' + zqrMO.FieldByName('no_mo').AsString + ''')');
  q := OpenRS('SELECT * FROM _mo');

  //if q.FieldByName('jenis').AsString <> 'BJ' then begin
  //  MsgBox('Pembuatan SPK hanya bisa dilakukan untuk Jenis Barang Jadi.');
  //  Abort;
  //end;

  f3 := TfrmBuatSPK2.Create(Self);
  f3.NoSO := zqrMO.FieldByName('no_so').AsString;
  f3.NoMO := zqrMO.FieldByName('no_mo').AsString;
  f3.KodeBrg := zqrMO.FieldByName('kode_brg').AsString;

  
  {
  if (not q.FieldByName('no_spk').IsNull) or (q.FieldByName('no_spk').AsString <> '') then begin
    f3.jenisEdit := 'edit'
  end
  else }
    f3.JenisEdit := 'add';

  f3.ShowModal;
  
  Abort;

  {
  Screen.Cursor := crSQLWait;

  btn := (Sender as TButton);
  
  //q := OpenRS('SELECT * FROM v_mo WHERE no_mo = ''%s''',
  //  [zqrMO.FieldByName('no_mo').AsString]);

  dm.zConn.ExecuteDirect('CALL sp_mo(''' + zqrMO.FieldByName('no_mo').AsString + ''')');
  q := OpenRS('SELECT * FROM _mo');

  //q := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',
  //  [zqrMO.FieldByName('no_mo').AsString]);

  // cek apakah mo ini sudah ada SPK
  if (not q.FieldByName('no_spk').IsNull) or (q.FieldByName('no_spk').AsString <> '') then begin
    Screen.Cursor := crDefault;
    MsgBox('MO ini sudah dibuatkan SPK.');
    q.Close;
    Abort;
  end;

  // cek apakah mo ini sudah dibuatkan mutasi
  if not q.FieldByName('no_mutasi').IsNull then begin
    Screen.Cursor := crDefault;
    MsgBox('MO ini sudah dimutasikan.');
    q.Close;
    Abort;
  end;

  //q.Close;
  //q := OpenRS('select b.kode_brg, b.qty qty_so, ifnull(qty_sj,0) as qty_sj from tbl_so_det b LEFT JOIN v_sostok_sj a on b.no_bukti = a.no_bukti and b.kode_brg = a.kode_brg ' +
  //  'where b.no_bukti = ''%s'' AND b.kode_brg = %s',
  //  [zqrMO.FieldByName('no_so').AsString, zqrMO.FieldByName('kode_brg').AsString]);

  if q.FieldByName('qty_so').AsFloat = q.FieldByName('qty_sj').AsFloat then begin
    Screen.Cursor := crDefault;
    MsgBox('Qty. Sales Order = Qty. Surat Jalan.' + #10#13 +
      'Proses Master Schedule tidak dapat dilakukan.');
  end
  else if q.FieldByName('qty_so').AsFloat = q.FieldByName('qty_g02').AsFloat then begin
    Screen.Cursor := crDefault;
    MsgBox('Qty. Sales Order = Qty. Gudang G02.' + #10#13 +
      'Proses Master Schedule tidak perlu dilakukan.');
  end
  else if q.FieldByName('qty_mo').AsFloat = 0 then begin
    Screen.Cursor := crDefault;
    MsgBox('Qty. MO = 0' + #10#13 +
      'Proses Master Schedule tidak perlu dilakukan.');
  end
  else begin

    // cek apakah barang sudah dikirim semua
    q := OpenRS('SELECT a.qty qty_so, IFNULL(SUM(b.qty),0) qty_kirim FROM ' +
      'tbl_so_det a LEFT JOIN tbl_sj_det b ON a.no_bukti = b.no_so ' +
      'WHERE a.no_bukti = ''%s'' AND a.kode_brg = ''%s'' AND a.kode_brg = b.kode_brg ' +
      'GROUP BY a.qty',
      [zqrMO.FieldByName('no_so').AsString,
       zqrMO.FieldByName('kode_brg').AsString]
    );

    if (not q.IsEmpty) and
      (q.FieldByName('qty_so').AsFloat = q.FieldByName('qty_kirim').AsFloat) then begin
      MsgBox('Master Order ini sudah komplit / selesai.');
    end
    else begin
      Screen.Cursor := crDefault;

      f := TfrmProsesMS.Create(Self);
      f.NoMO := zqrMO.FieldByName('no_mo').AsString;
      if btn.Name = 'btnSPKGiling' then begin
        f.JenisSPK := 'SPK GILING';
      end;
      f.ShowModal;
      f.Release;

      Screen.Cursor := crSQLWait;
      // 31-03-2016
      //btnRefreshClick(nil);
      Screen.Cursor := crDefault;
    end;
    q.Close;
  end;

  if q.Active then q.Close;
  Screen.Cursor := crDefault;
  }
  
end;

procedure TfrmMO.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  //if zqrMO.Active = False then Abort;
  try

  //if ((ARecord.Values[7] > 0) and ((ARecord.Values[9] = 0)) or (VarIsNull(ARecord.Values[8]))) then begin
  //  AStyle := cxSKuning;
  //end

  // cek selisih
  if (ARecord.Values[cxColSelisih.Index] >= 3) and
    (Copy(ARecord.Values[cxColNoSO.Index],1,3) = 'SPL') and
    (ARecord.Values[cxColFlagSPK.Index] = 0) then begin
    AStyle := cxStyle5;
  end;

  // sudah mutasi
  if (ARecord.Values[cxgColQtyMutasi.Index] > 0) then begin
    AStyle := cxSKuning;
  end;
  // sudah buat spk, belum ada hasil produksi
  if (ARecord.Values[cxgColFSPK.Index] = 1) and (ARecord.Values[cxgColQtyProd.Index] = 0) then begin
    AStyle := cxStyle3;
  end;
  // sudah ada hasil produksi
  if (ARecord.Values[cxgColQtyProd.Index] > 0) then begin
    AStyle := cxStyle4;
  end;
  // sudah selesai SO = SJ
  if (ARecord.Values[cxgColQtySO.Index] = ARecord.Values[cxgColQtySJ.Index])
    and (ARecord.Values[cxgColQtySO.Index] > 0) then begin
    AStyle := cxsHijau;
  end;

  // jika ditutup atau dibatalkan secara paksa
  if (ARecord.Values[cxColTutupManual.Index] = 1) then begin
    AStyle := cxsMerahMuda;
  end;
  
  except
  end;

end;

procedure TfrmMO.Button2Click(Sender: TObject);
begin
  MsgBox(zqrMO.FieldByName('f_spk').AsString);
end;

procedure TfrmMO.btnRefreshClick(Sender: TObject);
var
  b: Variant;
begin
  {
  try
    //b := zqrMO.Bookmark;
    btnRefreshClick(nil);
    //zqrMO.Bookmark := b;
  except
  end;
  }
  try
  b := zqrMO.Bookmark;
  with zqrMO do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    dm.zConn.ExecuteDirect('CALL sp_tmp_mo');
    //SQL.Text := cxMemo1.Lines.Text;
    SQL.Text := cxMemo2.Lines.Text;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zqrMO.Bookmark := b; 
  except
  end;
end;

procedure TfrmMO.btnSPKPotongClick(Sender: TObject);
var
  f: TFrmTrsSPKPotong;
begin
  if zqrMO.IsEmpty then Abort;
  f := TFrmTrsSPKPotong.Create(Self);
  f.KodeBrg := zqrMO.FieldByName('kode_brg').AsString;
  f.NoMO := zqrMO.FieldByName('no_mo').AsString;
  f.NoSO := zqrMO.FieldByName('no_so').AsString;
  f.ShowModal;
end;

procedure TfrmMO.FormShow(Sender: TObject);
var
  q: TZQuery;
  aCol: TcxGridDBColumn;
  i : integer;
begin
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' ' +
    'AND nm_comp = ''buatSPK''',[aplikasi.NamaUser]);

  if (not q.IsEmpty) and (q.FieldByName('wwn').AsString = '1') then
    Panel3.Visible := True
  else
    Panel3.Visible := False;

  q.Close;

  if (Jenis = 'CFT') and (aplikasi.UserDept = 'CFT') then begin
    //MsgBox('user cft');
    Panel3.Visible := False;
    btnKalender.Visible := False;
    btnApproval.Left := 270;
    btnApproval.top := 6;
    btnrefresh1.Left := 365;
    btnrefresh1.Top := 6;
       aCol := cxGridDBTableView1.CreateColumn;
      with aCol do begin
        Name := 'colUnbound';
        Caption := 'Check';
      end;
      aCol.DataBinding.ValueTypeClass := TcxStringValueType;
      aCol.PropertiesClass := TcxCheckBoxProperties;
      with aCol.Properties as TcxCheckBoxProperties do begin
        AllowGrayed := false;
        ValueChecked := 'T';
        ValueUnchecked := 'F';
        NullStyle := nssUnchecked;
        ImmediatePost := True;
      end;
      aCol.Index := 0;
      
  end
  else begin
    //MsgBox('bukan cft');
    btnrefresh1.Visible := False;
    btnApproval.Visible := False;
  end;

end;

procedure TfrmMO.btnSPKAssemblyClick(Sender: TObject);
{$DEFINE NEWASS}
{$IFDEF NOTNEWASS}
var
  f: TFrmTrsSPKAssembly;
begin
  if zqrMO.IsEmpty then Abort;
  f := TFrmTrsSPKAssembly.Create(Self);
  f.KodeBrg := zqrMO.FieldByName('kode_brg').AsString;
  f.NoMO := zqrMO.FieldByName('no_mo').AsString;
  f.NoSO := zqrMO.FieldByName('no_so').AsString;
  f.ShowModal;
end;
{$ELSE}
var
  f: TFrmTrsSPKAssembly_NEW;
  q: TZQuery;
  sJenis: string;
begin
  if zqrMO.IsEmpty then Abort;

  // 01-09-2016
  // cek mo sudah dibuatkan SPK
  q := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[zqrMO.FieldByName('no_mo').AsString]);
  if not q.FieldByName('no_spk').IsNull then begin
    MsgBox('Nomor MO ini sudah dibuatkan SPK.');
    q.Close;
    Abort;
  end;
  q.Close;

  if (not zqrMO.FieldByName('no_spk').IsNull) then begin
    if Aplikasi.NamaUser = 'FREDI' then begin
      sJenis := 'edit'
    end
    else begin
      q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_spk = ''%s''',
        [zqrMO.FieldByName('no_spk').AsString]);
      if not q.IsEmpty then begin
        MsgBox('No. MO ini sudah ada hasil produksi.');
        q.Close;
        Abort;
      end
      else begin
        sJenis := 'edit';
      end;
      q.Close;
    end;
  end
  else begin
    sJenis := 'tambah';
  end;

  f := TFrmTrsSPKAssembly_NEW.Create(Self);
  f.KodeBrg := zqrMO.FieldByName('kode_brg').AsString;
  f.NoMO := zqrMO.FieldByName('no_mo').AsString;
  f.NoSO := zqrMO.FieldByName('no_so').AsString;
  f.Jenis := sJenis;
  if sJenis = 'edit' then
    f.NoSPK := zqrMO.FieldByName('no_spk').AsString;
  f.ShowModal;
  
end;
{$ENDIF}

procedure TfrmMO.btnKalenderClick(Sender: TObject);
begin
  Panel5.Visible := not (Panel5.Visible);
end;

procedure TfrmMO.btnSimpanTglClick(Sender: TObject);
var
  qmo, qcek: TZQuery;

begin

  // cek tanggal konfirmasi VS tgl SO 
  qcek := OpenRS('SELECT tanggal FROM tbl_so_head WHERE no_bukti = ''%s''', [zqrMO.FieldByName('no_so').AsString]);
  if cxdTglKonfirmasi.Date < qcek.FieldByName('tanggal').AsDateTime then begin
    MsgBox('Tanggal konfirmasi harus lebih besar dari tanggal SO.');
    qCek.Close;
    Abort;
  end;
  qcek.Close;
  
  Panel5.Visible := False;
  
  try
    qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''', [zqrMO.FieldByName('no_mo').AsString]);
    qmo.Edit;
    qmo.FieldByName('tgl_konfirmasi').AsDateTime := cxdTglKonfirmasi.Date;
    qmo.FieldByName('user_konfirmasi').AsString := Aplikasi.NamaUser;
    qmo.Post;
    qmo.Close;
    qmo.Free;
    //btnRefreshClick(nil);
  except
  end;
end;

procedure TfrmMO.Panel5Exit(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TfrmMO.btnClosePanelClick(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TfrmMO.btnrefresh1Click(Sender: TObject);
var
  b: Variant;
begin
  {
  try
    //b := zqrMO.Bookmark;
    btnRefreshClick(nil);
    //zqrMO.Bookmark := b;
  except
  end;
  }
  try
  b := zqrMO.Bookmark;
  with zqrMO do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    dm.zConn.ExecuteDirect('CALL sp_tmp_mo');
    //SQL.Text := cxMemo1.Lines.Text;
    SQL.Text := cxMemo2.Lines.Text;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zqrMO.Bookmark := b; 
  except
  end;
end;

procedure TfrmMO.btnApprovalClick(Sender: TObject);
var
  i: Integer;
  lstSJ: TStringList;
  chk: string;
begin
  lstSJ := TStringList.Create;
  for i := 0 to cxGridDBTableView1.DataController.RecordCount - 1 do begin

    if VarIsNull(cxGridDBTableView1.DataController.Values[i,0]) then
      chk := 'F'
    else
      chk := cxGridDBTableView1.DataController.Values[i,0];
    if chk = 'T' then begin
      lstSJ.Add(cxGridDBTableView1.DataController.Values[i,3]);
      //MsgBox(cxGridDBTableView1.DataController.Values[i,2]);
    end;
  end;

   if lstSJ.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to lstSJ.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_mo SET app_cft = 1 WHERE no_mo = ''' +
          lstSJ.Strings[i] + '''');
      end;
      
      dm.zConn.Commit;
      MsgBox('Sudah Berhasil di Approval.');
      btnRefreshClick(self);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;
end;

procedure TfrmMO.btnSPKRouterClick(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  try
    if not zqrMO.Active then Abort;

    cxtNoSO_R.Text := '';
    cxtDesk_R.Text := '';

    q := OpenRS('SELECT a.*, b.tanggal FROM tbl_so_subdet a ' +
      'LEFT JOIN tbl_spkr b ON a.no_spk = b.no_spk ' +
      'WHERE no_bukti = ''%s''',
      [zqrMO.FieldByName('no_so').AsString]);
    nxGrdSpkRouter.ClearRows;
    while not q.Eof do begin
      i := nxGrdSpkRouter.AddRow();
      nxGrdSpkRouter.Cell[nxColKetSO.Index,i].AsString := q.FieldByName('keterangan').AsString;
      if q.FieldByName('f_cetakspk').AsInteger = 1 then
        nxGrdSpkRouter.Cell[nxColCheck.Index, i].AsBoolean := True;
      nxGrdSpkRouter.Cell[nxColNoSPK_R.Index, i].AsString :=
        q.FieldByName('no_spk').AsString;
      nxGrdSpkRouter.Cell[nxColTglSPK.Index, i].AsDateTime :=
        q.FieldByName('tanggal').AsDateTime;  
      q.Next;
    end;
    q.Close;

    cxtNoSO_R.Text := zqrMO.FieldByName('no_so').AsString;
    cxtDesk_R.Text := zqrMO.FieldByName('deskripsi').AsString;

    pnlSPKRouter.Visible := True;
  except
  end;
end;

procedure TfrmMO.btnClosePnl6Click(Sender: TObject);
begin
  pnlSPKRouter.Visible := False;
end;

procedure TfrmMO.btnTutupPnlSRClick(Sender: TObject);
begin
  pnlSPKRouter.Visible := False;
end;

procedure TfrmMO.pnlSPKRouterExit(Sender: TObject);
begin
  pnlSPKRouter.Visible := false;
end;

procedure TfrmMO.btnCetakSPKSRClick(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
  sNoSPK: string;
  lstNoSpk: TStringList;
  f: TfrmLapSPK;
begin
  if nxGrdSpkRouter.RowCount = 0 then Abort;

  Screen.Cursor := crSQLWait;

  lstNoSpk := TStringList.Create;

  try

    dm.zConn.StartTransaction;

    for i := 0 to nxGrdSpkRouter.RowCount - 1 do begin
      if nxGrdSpkRouter.Cell[nxColCheck.Index, i].AsBoolean then begin

        if nxGrdSpkRouter.Cell[nxColNoSPK_R.Index, i].AsString <> '' then
          sNoSPK := nxGrdSpkRouter.Cell[nxColNoSPK_R.Index, i].AsString
        else begin
          sNoSPK := GetLastFak('spk-router');
          UpdateFaktur(Copy(sNoSPK,1,8));
        end;

        lstNoSpk.Add(QuotedStr(sNoSPK));

        q := OpenRS('SELECT * FROM tbl_spkr WHERE no_spk = ''%s'' AND no_so = ''%s''',
          [sNoSPK, zqrMO.FieldByName('no_so').AsString]);

        if not q.IsEmpty then begin
          q.Edit;
        end
        else begin
          q.Insert;
        end;

        q.FieldByName('no_so').AsString := zqrMO.FieldByName('no_so').AsString;
        q.FieldByName('no_spk').AsString := sNoSPK;
        q.FieldByName('keterangan').AsString :=
          nxGrdSpkRouter.Cell[nxColKetSO.Index, i].AsString;
        q.FieldByName('user').AsString := aplikasi.NamaUser;
        q.FieldByName('user_dept').AsString := aplikasi.UserDept;
        q.FieldByName('tanggal').AsDateTime :=
          nxGrdSpkRouter.Cell[nxColTglSPK.Index, i].AsDateTime;
        q.Post;
        q.Close;

        dm.zConn.ExecuteDirect(Format('UPDATE tbl_so_subdet SET f_cetakspk = 1, ' +
          'no_SPK = ''%s'' ' + 
          'WHERE no_bukti = ''%s'' AND ' +
          'kode_brg = %s AND ' +
          'keterangan = ''%s''',
          [
            sNoSPK,
            zqrMO.FieldByName('no_so').AsString,
            zqrMO.FieldByName('kode_brg').AsString,
            nxGrdSpkRouter.Cell[nxColKetSO.Index, i].AsString
          ]
        ));
      end;
    end;

    dm.zConn.Commit;

    if lstNoSpk.Count > 0 then begin
      sNoSPK := lstNoSpk.CommaText;

      q := OpenRS('SELECT * FROM tbl_spkr WHERE no_so = ''%s'' AND no_spk IN (%s)',
        [zqrMO.FieldByName('no_so').AsString, sNoSPk]);
      if not q.IsEmpty then begin
        f := TfrmLapSPK.Create(Self);
        f.zqrSPKR.SQL.Strings[3] := 'WHERE a.no_so = ' +
          QuotedStr(zqrMO.FieldByName('no_so').AsString);
        Screen.Cursor := crDefault;
        f.rptSPKRouter.ShowReport(True);
        f.Release;
      end;
      q.Close;
    end;

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TfrmMO.btnSPKTrialClick(Sender: TObject);
var
  f: TFrmTrsSPK_Trial;
  q: TZQuery;
  sJenis: string;
begin
  if zqrMO.IsEmpty then Abort;

  if (not zqrMO.FieldByName('no_spk').IsNull) then begin
    sJenis := 'edit';
  end
  else begin
    sJenis := 'tambah';
  end;

  // ambil nomor trial
  q := OpenRS('SELECT no_trial, bom_trial FROM tbl_mo WHERE no_mo = ''%s''',
    [zqrMO.FieldByName('no_mo').AsString]);

  Screen.Cursor := crSQLWait;

  f := TFrmTrsSPK_Trial.Create(Self);
  f.KodeBrg := zqrMO.FieldByName('kode_brg').AsString;
  f.NoMO := zqrMO.FieldByName('no_mo').AsString;
  f.NoSO := zqrMO.FieldByName('no_so').AsString;
  f.NoTrial := q.FieldByName('no_trial').AsString;
  f.JenisBom := q.FieldByName('bom_trial').AsString;
  q.Close;

  f.Jenis := sJenis;
  if sJenis = 'edit' then
    f.NoSPK := zqrMO.FieldByName('no_spk').AsString;
    
  Screen.Cursor := crDefault;
  f.ShowModal;
end;

procedure TfrmMO.btnHPPClick(Sender: TObject);
var
  f: TfrmHPPReport;
  sKodeBrg: string;
  q: TZQuery;
begin
  sKodeBrg := zqrMO.FieldByName('kode_brg').AsString;

  q := OpenRS('SELECT no_is FROM tbl_barang WHERE kode = ''%s''',[sKodeBrg]);
  if not q.IsEmpty then begin
    f := TfrmHPPReport.Create(Self);
    f.NoIS := q.FieldByName('no_is').AsString;
    f.Show;
  end;
  q.Close;

end;





end.
