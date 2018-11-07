unit unFrmMO2;

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
  scExcelExport,cxGridExportLink, ShellAPI, cxMemo;

type
  TfrmMO2 = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrMO: TZReadOnlyQuery;
    dsMO: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
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
    cxGridDBTableView1Column8: TcxGridDBColumn;
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
    cxGrdDetDBTableView1: TcxGridDBTableView;
    cxGrdDetLevel1: TcxGridLevel;
    cxGrdDet: TcxGrid;
    btnLihatDetail: TButton;
    zqrMO2: TZReadOnlyQuery;
    dsMO2: TDataSource;
    cxGrdDetDBTableView1no_spk: TcxGridDBColumn;
    cxGrdDetDBTableView1tgl_spk: TcxGridDBColumn;
    cxGrdDetDBTableView1tgl_required: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_g02: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_sj: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_sj_baik: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_sj_afkir: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_sj_retur: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_sisa: TcxGridDBColumn;
    cxGrdDetDBTableView1jml_revisi: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_lama: TcxGridDBColumn;
    cxGrdDetDBTableView1status_so: TcxGridDBColumn;
    cxGrdDetDBTableView1f_completed: TcxGridDBColumn;
    cxGrdDetDBTableView1no_mutasi: TcxGridDBColumn;
    cxGrdDetDBTableView1G01: TcxGridDBColumn;
    cxGrdDetDBTableView1hsl_prod: TcxGridDBColumn;
    cxGrdDetDBTableView1qty_mutasi: TcxGridDBColumn;
    cxGrdDetDBTableView1mesin: TcxGridDBColumn;
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
    procedure btnLihatDetailClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmSOTerbuka: TFrmMO2;

implementation

uses unTools, unFrmLapUmum, unFrmTransGdg, unAplikasi, unDm, unFrmProsesMS,
  unFrmTrsSPKPotong, unFrmTrsSPKAssembly;

{$R *.dfm}

procedure TFrmMO2.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmMO2.btnProsesClick(Sender: TObject);
begin
  with zqrMO do begin
    Screen.Cursor := crSQLWait;
    Close;
    SQL.Text := cxMemo1.Lines.Text;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmMO2.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  //btnProsesClick(nil);
end;

procedure TFrmMO2.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMO2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TFrmMO2.btnCetakClick(Sender: TObject);
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

procedure TFrmMO2.cxGridDBTableView1FocusedRecordChanged(
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

procedure TFrmMO2.btnMutasiStokClick(Sender: TObject);
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

procedure TFrmMO2.btnMasterScheduleClick(Sender: TObject);
var
  f: TfrmProsesMS;
  q: TZQuery;
begin
  Screen.Cursor := crSQLWait;
  
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
      'WHERE a.no_bukti = ''%s'' AND a.kode_brg = %s AND a.kode_brg = b.kode_brg ' +
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
      f.ShowModal;
      f.Release;

      Screen.Cursor := crSQLWait;
      btnRefreshClick(nil);
      Screen.Cursor := crDefault;
    end;
    q.Close;
  end;

  if q.Active then q.Close;
  Screen.Cursor := crDefault;

end;

procedure TFrmMO2.cxGridDBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  //if zqrMO.Active = False then Abort;
  try

  //if ((ARecord.Values[7] > 0) and ((ARecord.Values[9] = 0)) or (VarIsNull(ARecord.Values[8]))) then begin
  //  AStyle := cxSKuning;
  //end
  
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
  
  except
  end;

end;

procedure TFrmMO2.Button2Click(Sender: TObject);
begin
  MsgBox(zqrMO.FieldByName('f_spk').AsString);
end;

procedure TFrmMO2.btnRefreshClick(Sender: TObject);
var
  b: Variant;
begin
  try
    b := zqrMO.Bookmark;
    zqrMO.Close;
    zqrMO.Open;
    zqrMO.Bookmark := b;
  except
  end;
end;

procedure TFrmMO2.btnSPKPotongClick(Sender: TObject);
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

procedure TFrmMO2.FormShow(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' ' +
    'AND nm_comp = ''buatSPK''',[aplikasi.NamaUser]);

  if (not q.IsEmpty) and (q.FieldByName('wwn').AsString = '1') then
    Panel3.Visible := True
  else
    Panel3.Visible := False;
    
  q.Close;

end;

procedure TFrmMO2.btnSPKAssemblyClick(Sender: TObject);
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

procedure TfrmMO2.btnLihatDetailClick(Sender: TObject);
begin
  zqrMO2.Close;
  zqrMO2.ParamByName('no_so').AsString := zqrMO.FieldByName('no_so').AsString;
  zqrMO2.Open; 
end;

end.
