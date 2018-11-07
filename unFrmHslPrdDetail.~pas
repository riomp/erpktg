unit unFrmHslPrdDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckComboBox,cxCheckBox,
  ExtCtrls, cxRadioGroup, cxGridBandedTableView, cxGridDBBandedTableView,
  NxColumns, NxColumnClasses, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxSpinEdit, scExcelExport, cxGridExportLink, ShellAPI;

type
  TfrmHslPrdDetail = class(TForm)
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel2: TPanel;
    btnKeluar: TButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2no_mo: TcxGridDBColumn;
    cxGridDBTableView2no_spk: TcxGridDBColumn;
    cxGridDBTableView2qty_spk: TcxGridDBColumn;
    cxGridDBTableView2qty_prod: TcxGridDBColumn;
    cxGridDBTableView2qty_kirim: TcxGridDBColumn;
    cxGridDBTableView2qty_terima: TcxGridDBColumn;
    btnCetakExcel: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxsSpkSelesai: TcxStyle;
    tblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tblViewno_spk: TcxGridDBColumn;
    tblViewno_bukti: TcxGridDBColumn;
    tblViewqty_prod: TcxGridDBColumn;
    tblViewuser: TcxGridDBColumn;
    tblViewuser_dept: TcxGridDBColumn;
    tblViewtgl_input: TcxGridDBColumn;
    tblViewtanggal_spk: TcxGridDBColumn;
    tblViewkode_brg: TcxGridDBColumn;
    tblViewqty: TcxGridDBColumn;
    tblViewkode_mesin: TcxGridDBColumn;
    tblViewf_completed: TcxGridDBColumn;
    tblViewtgl_p_mulai: TcxGridDBColumn;
    tblViewtgl_p_selesai: TcxGridDBColumn;
    tblViewno_so: TcxGridDBColumn;
    tblViewnama: TcxGridDBColumn;
    tblViewnama_mesin: TcxGridDBColumn;
    tblViewdeskripsi: TcxGridDBColumn;
    tblViewsatuan: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    zqrHslPrd: TZReadOnlyQuery;
    dsHslPrd: TDataSource;
    cxGrid1DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView1shift: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1jam: TcxGridDBColumn;
    cxGrid1DBTableView1qty_prod: TcxGridDBColumn;
    cxGrid1DBTableView1qty_prod_kg: TcxGridDBColumn;
    cxGrid1DBTableView1qty_reject: TcxGridDBColumn;
    cxGrid1DBTableView1qty_baik: TcxGridDBColumn;
    cxGrid1DBTableView1qty_afkir: TcxGridDBColumn;
    cxGrid1DBTableView1qty_retur: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_prod_selesai: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGrid1DBTableView1user_dept: TcxGridDBColumn;
    cxGrid1DBTableView1ip_address: TcxGridDBColumn;
    cxGrid1DBTableView1hostname: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_input: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    DataSource1: TDataSource;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    DataSource2: TDataSource;
    ZReadOnlyQuery2: TZReadOnlyQuery;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2id: TcxGridDBColumn;
    cxGrid1DBTableView2no_spk: TcxGridDBColumn;
    cxGrid1DBTableView2no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView2shift: TcxGridDBColumn;
    cxGrid1DBTableView2tanggal: TcxGridDBColumn;
    cxGrid1DBTableView2jam: TcxGridDBColumn;
    cxGrid1DBTableView2qty_prod: TcxGridDBColumn;
    cxGrid1DBTableView2qty_prod_kg: TcxGridDBColumn;
    cxGrid1DBTableView2qty_reject: TcxGridDBColumn;
    cxGrid1DBTableView2qty_baik: TcxGridDBColumn;
    cxGrid1DBTableView2qty_afkir: TcxGridDBColumn;
    cxGrid1DBTableView2qty_retur: TcxGridDBColumn;
    cxGrid1DBTableView2tgl_prod_selesai: TcxGridDBColumn;
    cxGrid1DBTableView2user: TcxGridDBColumn;
    cxGrid1DBTableView2user_dept: TcxGridDBColumn;
    cxGrid1DBTableView2ip_address: TcxGridDBColumn;
    cxGrid1DBTableView2hostname: TcxGridDBColumn;
    cxGrid1DBTableView2tgl_input: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHapusSPKClick(Sender: TObject);
    procedure tblViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure tblView2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnSPKSelesaiClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnEditSPKClick(Sender: TObject);
    procedure btnCetakExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams);
  end;

var
  frmHslPrdDetail: TfrmHslPrdDetail;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum, unFrmLapSPK, unFrmProsesMS;

{$R *.dfm}

procedure TfrmHslPrdDetail.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmHslPrdDetail.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmHslPrdDetail.btnProsesClick(Sender: TObject);
begin
  with zqrSPK do begin
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
  end;
end;

procedure TfrmHslPrdDetail.FormShow(Sender: TObject);
var
  //aCol: TcxGridDBColumn;
  aCol: TcxGridDBBandedColumn;
  i : integer;
begin
  {
  //aCol := tblView.CreateColumn;
  aCol := tblView2.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; //TcxBooleanValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  //aCol.ColIndex := 0;
  aCol.Position.ColIndex := 0;
  }
  
end;

procedure TfrmHslPrdDetail.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmHslPrdDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmHslPrdDetail.btnHapusSPKClick(Sender: TObject);
var
  i: integer;
  sNoSPK, sNoSO, sKodeBrg, sNoMO: string;
  q, qhp, qmo: TZQuery;
  qty_spk: real;
begin

  sNoSPK := zqrSPK.FieldByName('no_spk').AsString;
  q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''', [sNoSPK]);
  if q.FieldByName('f_completed').AsInteger = 1 then begin
    MsgBox('SPK ini tidak bisa dibatalkan karena sudah selesai.');
  end
  else begin
    qhp := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_spk = ''%s''', [sNoSPK]);
    if not qhp.IsEmpty then begin
      MsgBox('SPK ini tidak dapat dibatalkan karena sudah ada hasil produksi.');
    end
    else begin
      sNoSO := zqrSPK.FieldByName('no_so').AsString;
      sKodeBrg := zqrSPK.FieldByName('kode_brg').AsString;
      sNoMO := zqrSPK.FieldByName('no_mo').AsString;

      qty_spk := zqrSPK.FieldByName('qty').AsFloat;

      try
        dm.zConn.StartTransaction;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_spk WHERE no_spk = ''' +
          sNoSPK + '''');

        qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' AND kode_brg = ''%s'' AND ' +
          '(no_mutasi IS NULL) and (no_spk IS NULL)',
          [sNoSO, sKodeBrg]);

        if not qmo.IsEmpty then begin
          qmo.Edit;
          qmo.FieldByName('qty_mo').AsFloat :=
            qmo.FieldByName('qty_mo').AsFloat + qty_spk;
          qmo.Post;

          dm.zConn.ExecuteDirect(
            Format('DELETE FROM tbl_mo WHERE no_spk = ''%s'' AND ' +
              'kode_brg = %s AND no_mo = ''%s''',
              [sNoSPK, sKodeBrg, sNoMO])
          );

        end
        else begin
          qmo.Close;
          qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' AND no_spk = ''%s''', [sNoSO, sNoSPK]);
          if not qmo.IsEmpty then begin
            qmo.Edit;
            qmo.FieldByName('no_spk').Clear;
            qmo.FieldByName('f_spk').AsInteger := 0;
            qmo.Post;
          end;
        end;

        qmo.Close;
        
        dm.zConn.Commit;

        MsgBox('SPK dengan No. : ' + sNoSPK + ' berhasil dihapus.');

        btnRefreshClick(nil);
        btnRefreshClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    qhp.Close;
  end;
  
end;

procedure TfrmHslPrdDetail.tblViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  with zqrHslPrd do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;
end;

procedure TfrmHslPrdDetail.tblView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
begin

  {
  Screen.Cursor := crSQLWait;

  with zqrHP_Kirim do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrHslPrd do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrDetailKirim do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  with zqrDetailTerima do begin
    if Active then Close;
    ParamByName('no_spk').AsString := zqrSPK.FieldByName('no_spk').AsString;
    Open;
  end;

  nxGrd.Cell[nxColQtySPK.Index,0].AsFloat := zqrSPK.FieldByName('qty').AsFloat;
  q := OpenRS('SELECT SUM(IFNULL(qty_prod,0)) qty_prod FROM tbl_hsl_prd WHERE no_spk = ''%s''',
    [zqrSPK.FieldByName('no_spk').AsString]);
  nxGrd.Cell[nxColQtyProd.Index,0].AsFloat := q.FieldByName('qty_prod').AsFloat;
  q.Close;

  q := OpenRS('SELECT SUM(IFNULL(qty,0)) qty FROM tbl_trs_kirim WHERE no_spk = ''%s'' ',
    [zqrSPK.FieldByName('no_spk').AsString]);
  nxGrd.Cell[nxColQtyKirim.Index,0].AsFloat := q.FieldByName('qty').AsFloat;
  q.Close;

  q := OpenRS('SELECT SUM(IFNULL(qty,0)) qty FROM tbl_trsmasuk_det ' +
    'WHERE no_spk = ''%s'' AND kode_brg = %s',
    [zqrSPK.FieldByName('no_spk').AsString, zqrSPK.FieldByName('kode_brg').AsString]);
  nxGrd.Cell[nxColQtyTerima.Index,0].AsFloat := q.FieldByName('qty').AsFloat;
  q.Close;

  q := nil;

  Screen.Cursor := crDefault;
  }
end;

procedure TfrmHslPrdDetail.btnSPKSelesaiClick(Sender: TObject);
var
  sNoSPK: string;

  q: TZQuery;
begin
  sNoSPK := zqrSPK.FieldByName('no_spk').AsString;

  // ambil hasil produksi
  q := OpenRS('SELECT * FROM v_spk_vs_hp WHERE no_spk = ''%s''', [sNoSPK]);

  if q.FieldByName('qty_spk').AsFloat > q.FieldByName('qty_prod').AsFloat then begin
    MsgBox('Total hasil produksi belum memenuhi Qty. SPK.');
  end
  else begin
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_completed = 1 WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;

      MsgBox('SPK dengan No. : ' + sNoSPK + ' sudah berhasil ditutup (complete).');
    except
    end;
  end;
  q.Close;

end;

procedure TfrmHslPrdDetail.btnRefreshClick(Sender: TObject);
var
  sql, bm: string;

begin
  try
    Screen.Cursor := crSQLWait;
    zqrSPK.Close;
    zqrSPK.ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    zqrSPK.ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    zqrSPK.Open;
    Screen.Cursor := crDefault;
  except
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmHslPrdDetail.btnEditSPKClick(Sender: TObject);
var
  f: TfrmProsesMS;
  q: TZQuery;
begin
  try
    q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''',
      [zqrSPK.FieldByName('no_spk').AsString]);
    if q.FieldByName('f_completed').AsInteger = 1 then begin
      MsgBox('SPK ini sudah selesai (complete).');
    end
    else begin
      f := TfrmProsesMS.Create(Self);
      f.NoMO := zqrSPK.FieldByName('no_mo').AsString;
      f.Jenis := 'edit';
      f.ShowModal;
    end;
    q.Close;
  except
  end;
end;

procedure TfrmHslPrdDetail.btnCetakExcelClick(Sender: TObject);
begin
  try
  //frxReport1.ShowReport(True);
  ExportGridToExcel(aplikasi.AppPath + '\tmp_hslprd.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_hslprd.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
