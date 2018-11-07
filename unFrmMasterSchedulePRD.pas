unit unFrmMasterSchedulePRD;

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
  TfrmMasterSchedulePRD = class(TForm)
    cxGrid1: TcxGrid;
    tblView: TcxGridDBTableView;
    tblViewno_spk: TcxGridDBColumn;
    tblViewno_mo: TcxGridDBColumn;
    tblViewno_so: TcxGridDBColumn;
    tblViewjenis_spk: TcxGridDBColumn;
    tblViewColumn1: TcxGridDBColumn;
    tblViewtanggal: TcxGridDBColumn;
    tblViewjam: TcxGridDBColumn;
    tblViewqty: TcxGridDBColumn;
    tblViewkode_mesin: TcxGridDBColumn;
    tblViewnama: TcxGridDBColumn;
    tblViewtanggal_so: TcxGridDBColumn;
    tblViewketerangan: TcxGridDBColumn;
    tblViewf_app_prd: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    pnlPilCetSPK: TPanel;
    btnCetakSPK: TButton;
    btnBatal: TButton;
    GroupBox1: TGroupBox;
    cxrBrgJadi: TcxRadioButton;
    cxrTmbh: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    tblViewColumn2: TcxGridDBColumn;
    tblViewColumn3: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    tblView2: TcxGridDBBandedTableView;
    tblView2no_mo: TcxGridDBBandedColumn;
    tblView2no_spk: TcxGridDBBandedColumn;
    tblView2kode_brg: TcxGridDBBandedColumn;
    tblView2deskripsi: TcxGridDBBandedColumn;
    tblView2jenis_spk: TcxGridDBBandedColumn;
    tblView2tanggal: TcxGridDBBandedColumn;
    tblView2jam: TcxGridDBBandedColumn;
    tblView2qty: TcxGridDBBandedColumn;
    tblView2kode_mesin: TcxGridDBBandedColumn;
    tblView2nama: TcxGridDBBandedColumn;
    tblView2no_so: TcxGridDBBandedColumn;
    tblView2tanggal_so: TcxGridDBBandedColumn;
    tblView2keterangan: TcxGridDBBandedColumn;
    tblView2f_app_prd: TcxGridDBBandedColumn;
    tblView2nama_mesin: TcxGridDBBandedColumn;
    tblView2satuan: TcxGridDBBandedColumn;
    tblView2kategori: TcxGridDBBandedColumn;
    tblView2subkategori: TcxGridDBBandedColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel2: TPanel;
    btnCetakSPK2: TButton;
    btnKeluar: TButton;
    btnHapusSPK: TButton;
    tblView2Column2: TcxGridDBBandedColumn;
    zqrHslPrd: TZReadOnlyQuery;
    dsHslPrd: TDataSource;
    btnSPKSelesai: TButton;
    cxColComplete: TcxGridDBBandedColumn;
    dsDetailKirim: TDataSource;
    zqrDetailKirim: TZReadOnlyQuery;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsHP_Kirim: TDataSource;
    zqrHP_Kirim: TZReadOnlyQuery;
    cxGridDBTableView2no_mo: TcxGridDBColumn;
    cxGridDBTableView2no_spk: TcxGridDBColumn;
    cxGridDBTableView2qty_spk: TcxGridDBColumn;
    cxGridDBTableView2qty_prod: TcxGridDBColumn;
    cxGridDBTableView2qty_kirim: TcxGridDBColumn;
    cxGridDBTableView2qty_terima: TcxGridDBColumn;
    ScrollBox1: TScrollBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1no_hsl_prod: TcxGridDBColumn;
    cxGrid2DBTableView1tanggal: TcxGridDBColumn;
    cxGrid2DBTableView1qty_prod: TcxGridDBColumn;
    cxGrid2DBTableView1user: TcxGridDBColumn;
    cxGrid2DBTableView1user_dept: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel6: TcxLabel;
    zqrDetailTerima: TZReadOnlyQuery;
    dsDetailTerima: TDataSource;
    btnRefresh: TButton;
    btnEditSPK: TButton;
    tblView2qty_produksi: TcxGridDBBandedColumn;
    tblView2qty_kirim: TcxGridDBBandedColumn;
    tblView2qty_terima: TcxGridDBBandedColumn;
    btnCetakExcel: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxsSpkSelesai: TcxStyle;
    tblView2Column1: TcxGridDBBandedColumn;
    tblView2Column3: TcxGridDBBandedColumn;
    tblView2Column4: TcxGridDBBandedColumn;
    tblView2Column5: TcxGridDBBandedColumn;
    tblView2Column6: TcxGridDBBandedColumn;
    tblView2Column7: TcxGridDBBandedColumn;
    cxLabel3: TcxLabel;
    nxGrd: TNextGrid;
    nxColQtySPK: TNxNumberColumn;
    nxColQtyProd: TNxNumberColumn;
    nxColQtyKirim: TNxNumberColumn;
    nxColQtyTerima: TNxNumberColumn;
    btnLihat: TButton;
    tblView2Column8: TcxGridDBBandedColumn;
    tblView2Column9: TcxGridDBBandedColumn;
    tblView2Column10: TcxGridDBBandedColumn;
    tblView2Column11: TcxGridDBBandedColumn;
    tblView2Column12: TcxGridDBBandedColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlPilCetSPKExit(Sender: TObject);
    procedure btnCetakSPK2Click(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnCetakSPKClick(Sender: TObject);
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
    procedure tblView2StylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btnLihatClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams);
  end;

var
  frmMasterSchedulePRD: TfrmMasterSchedulePRD;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum, unFrmLapSPK, unFrmProsesMS;

{$R *.dfm}

procedure TfrmMasterSchedulePRD.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmMasterSchedulePRD.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmMasterSchedulePRD.btnProsesClick(Sender: TObject);
begin
  with zqrSPK do begin
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
  end;
end;

procedure TfrmMasterSchedulePRD.FormShow(Sender: TObject);
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
  if aplikasi.UserDept <> 'PPIC' then begin
    btnSPKSelesai.Visible := False;
    btnHapusSPK.Visible := False;
    btnKeluar.Left := btnCetakSPK2.Left;
    btnCetakSPK2.Visible := False;
    btnEditSPK.Visible := False;
  end;
end;

procedure TfrmMasterSchedulePRD.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMasterSchedulePRD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmMasterSchedulePRD.pnlPilCetSPKExit(Sender: TObject);
begin
  pnlPilCetSPK.Visible := False;
end;

procedure TfrmMasterSchedulePRD.btnCetakSPK2Click(Sender: TObject);
begin
  pnlPilCetSPK.Visible := True;
end;

procedure TfrmMasterSchedulePRD.btnBatalClick(Sender: TObject);
begin
  pnlPilCetSPK.Visible := False;
end;

procedure TfrmMasterSchedulePRD.btnCetakSPKClick(Sender: TObject);
var
  // 07-05-2014
  //f: TfrmLapUmum;
  f: TFrmLapSPK;
  sNoSPK: string;
begin

  // 07-05-2014
  //f := TfrmLapUmum.Create(Self);
  f := TfrmLapSPK.Create(Self);

  sNoSPK := zqrSPK.FieldByName('no_spk').AsString;

  if cxrBrgJadi.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = 1 ' +
        'WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + '''');
        Open;
        f.rptSPK_NEW.ShowReport(True);
        f.rptSPK2.ShowReport(True);
        f.Release;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end
  else if cxrTmbh.Checked then begin

    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_cetak = 1 ' +
        'WHERE no_spk = ''' + sNoSPK + '''');
      dm.zConn.Commit;
      with f.zqrSPK do begin
        if Active then Close;
        SQL.Add('WHERE no_spk = ''' + sNoSPK + '''');
        Open;
        f.rptSPKTmbh.ShowReport(True);
        f.Release;
      end;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;
  btnBatalClick(nil);

end;

procedure TfrmMasterSchedulePRD.btnHapusSPKClick(Sender: TObject);
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

procedure TfrmMasterSchedulePRD.tblViewFocusedRecordChanged(
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

procedure TfrmMasterSchedulePRD.tblView2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  q: TZQuery;
begin

  if zqrHP_Kirim.Active then zqrHP_Kirim.Close;
  if zqrHslPrd.Active then zqrHslPrd.Close;
  if zqrDetailKirim.Active then zqrDetailKirim.Close;

  nxGrd.Cell[nxColQtySPK.Index,0].AsFloat := 0;
  nxGrd.Cell[nxColQtyProd.Index,0].AsFloat := 0;
  nxGrd.Cell[nxColQtyKirim.Index,0].AsFloat := 0;
  nxGrd.Cell[nxColQtyTerima.Index,0].AsFloat := 0;
  
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

procedure TfrmMasterSchedulePRD.btnSPKSelesaiClick(Sender: TObject);
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

procedure TfrmMasterSchedulePRD.btnRefreshClick(Sender: TObject);
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

procedure TfrmMasterSchedulePRD.btnEditSPKClick(Sender: TObject);
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

procedure TfrmMasterSchedulePRD.btnCetakExcelClick(Sender: TObject);
begin
  try
  //frxReport1.ShowReport(True);
  ExportGridToExcel(aplikasi.AppPath + '\tmp_ms.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_ms.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmMasterSchedulePRD.tblView2StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[cxColComplete.Index] = 1 then begin
    AStyle := cxsSpkSelesai;
  end;
end;

procedure TfrmMasterSchedulePRD.btnLihatClick(Sender: TObject);
var
  q: TZQuery;
begin
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
end;

end.
