unit unFrmStokMstBrg;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, frxClass,
  frxDBSet, frxExportXLS, frxExportPDF, scExcelExport, cxGridExportLink,
  ShellAPI, cxContainer, cxCheckBox, ComCtrls, cxSpinEdit, cxTextEdit,
  cxLabel, ExtCtrls, Jpeg;

const
  CM_APPLYFILTER = WM_USER + 1;

type
  TfrmStokMstBrg = class(TForm)
    cxTblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewdeskripsi: TcxGridDBColumn;
    cxTblViewG01: TcxGridDBColumn;
    cxTblViewG02: TcxGridDBColumn;
    cxTblViewtotal_stok: TcxGridDBColumn;
    btnKeluar: TButton;
    cxTblViewColumn1: TcxGridDBColumn;
    cxTblViewColumn2: TcxGridDBColumn;
    cxTblViewColumn3: TcxGridDBColumn;
    btnCetak: TButton;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    cxTblViewColumn4: TcxGridDBColumn;
    cxChkBrgNonAktif: TcxCheckBox;
    zqrBrg2: TZReadOnlyQuery;
    dsBrg2: TDataSource;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    zqrDetG02: TZReadOnlyQuery;
    dsDetG02: TDataSource;
    cxGrid2DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid2DBTableView1tanggal: TcxGridDBColumn;
    cxGrid2DBTableView1jenis: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1gudang: TcxGridDBColumn;
    cxGrid2DBTableView1no_so: TcxGridDBColumn;
    cxGrid2DBTableView1no_spk: TcxGridDBColumn;
    cxGrid2DBTableView1no_spmb: TcxGridDBColumn;
    cxGrid2DBTableView1referensi: TcxGridDBColumn;
    cxGrid2DBTableView1keterangan: TcxGridDBColumn;
    cxGrid2DBTableView1user: TcxGridDBColumn;
    cxGrid2DBTableView1user_dept: TcxGridDBColumn;
    TabSheet2: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnKartuStok: TButton;
    TabSheet3: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    zqrDetG03: TZReadOnlyQuery;
    dsDetG03: TDataSource;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxTblViewColumn5: TcxGridDBColumn;
    btnRefresh: TButton;
    zqrG01: TZReadOnlyQuery;
    dsG01: TDataSource;
    zqrG02: TZReadOnlyQuery;
    dsG02: TDataSource;
    zqrG03: TZReadOnlyQuery;
    dsG03: TDataSource;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxTblViewColumn6: TcxGridDBColumn;
    Memo1: TMemo;
    Memo2: TMemo;
    cxTblViewColumn7: TcxGridDBColumn;
    TabSheet4: TTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxTblViewColumn8: TcxGridDBColumn;
    zqrG_ASIS: TZReadOnlyQuery;
    ds_ASIS: TDataSource;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    btnLihatED: TButton;
    cxTblViewColumn9: TcxGridDBColumn;
    cxTblViewColumn10: TcxGridDBColumn;
    btnEditBrg: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxLabel2: TcxLabel;
    cxStyle2: TcxStyle;
    btnGambar: TButton;
    pnlFoto: TPanel;
    image: TImage;
    btnCloseFoto: TButton;
    cxTblColFImage: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxTblViewColumn12: TcxGridDBColumn;
    cxTblViewColumn11: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView2Column4: TcxGridDBColumn;
    TabSheet5: TTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    zqrG_CONS: TZReadOnlyQuery;
    dsG_CONS: TDataSource;
    cxTblViewColumn13: TcxGridDBColumn;
    TabSheet6: TTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn56: TcxGridDBColumn;
    cxGridDBColumn57: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn59: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridDBColumn65: TcxGridDBColumn;
    cxGridDBColumn66: TcxGridDBColumn;
    cxGridDBColumn67: TcxGridDBColumn;
    cxGridDBColumn68: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    zqrG_WIP: TZReadOnlyQuery;
    dsG_WIP: TDataSource;
    cxTblViewColumn14: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure cxChkBrgNonAktifClick(Sender: TObject);
    procedure zqrBrgAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure pgChange(Sender: TObject);
    procedure btnKartuStokClick(Sender: TObject);
    procedure cxTblViewEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure cxTblViewInitEditValue(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit;
      var AValue: Variant);
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure cxTblViewDataControllerFilterChanged(Sender: TObject);
    procedure cxTblViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure ChkOClick(Sender: TObject);
    procedure btnLihatEDClick(Sender: TObject);
    procedure btnEditBrgClick(Sender: TObject);
    procedure cxTblViewG01StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxTblViewColumn10StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnGambarClick(Sender: TObject);
    procedure btnCloseFotoClick(Sender: TObject);
  private
    { Private declarations }
    FilterString: string;
    procedure CMApplyFilter(var Msg: TMessage); message CM_APPLYFILTER;
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmStokMstBrg: TfrmStokMstBrg;

implementation

uses unDm, unAplikasi, unTools, unFrmKartuStok, unFrmMstBrg;

{$R *.dfm}

procedure TFrmStokMstBrg.CMApplyFilter(var Msg: TMessage);
begin
  if TObject(Msg.WParam) is TcxDBDataFilterCriteria then
    with TObject(Msg.WParam) as TcxDBDataFilterCriteria do
    begin
      Clear;
      //FilterString := '%' + FilterString + '%';
      FilterString := FilterString + '%';
      Root.AddItem(TObject(Msg.LParam), foLike, FilterString, FilterString);
    end;
end;

procedure TFrmStokMstBrg.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmStokMstBrg.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmStokMstBrg.btnCetakClick(Sender: TObject);
begin
  try
  //frxReport1.ShowReport(True);
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmStokMstBrg.cxChkBrgNonAktifClick(Sender: TObject);
begin
  if cxChkBrgNonAktif.Checked then begin
    Screen.Cursor := crSQLWait;
    dm.zConn.ExecuteDirect('call sp_brg_per_gdg_na');
    dm.zConn.ExecuteDirect('call sp_outstanding_po');
    zqrBrg.SQL.Text := 'SELECT a.*, b.outstanding_po outstanding_po2 FROM _tmp_brg_per_gdg a ' +
      'left join _tmp_outstanding_po b on a.kode = b.kode_brg';
    zqrBrg.Open;
    Screen.Cursor := crDefault;
    cxTblView.DataController.DataSource := dsBrg;
  end
  else begin
    Screen.Cursor := crSQLWait;
    dm.zConn.ExecuteDirect('call sp_brg_per_gdg');
    dm.zConn.ExecuteDirect('call sp_outstanding_po');
    zqrBrg.SQL.Text := 'SELECT a.*, b.outstanding_po outstanding_po2 FROM _tmp_brg_per_gdg a ' +
      'left join _tmp_outstanding_po b on a.kode = b.kode_brg';
    zqrBrg.Open;
    Screen.Cursor := crDefault;
    cxTblView.DataController.DataSource := dsBrg;
  end;
end;

procedure TfrmStokMstBrg.zqrBrgAfterScroll(DataSet: TDataSet);
begin
  {
  try
    with zqrDetG02 do begin
      Close;
      ParamByName('kode_brg').AsInteger := zqrBrg.FieldByName('kode').AsInteger;
      Open;
    end;
  except
  end;
  }
end;

procedure TfrmStokMstBrg.FormShow(Sender: TObject);
begin
  //OpenAllQ(Self);
  Self.WindowState := wsMaximized;
end;

procedure TfrmStokMstBrg.pgChange(Sender: TObject);
var
  sql: string;
begin
  {
  sql := 'SELECT * FROM v_lap_history_all WHERE gudang = ''%s''';

  //if cxTblView.DataController.FilteredRecordCount = 0 then begin
    //zqrDetG02.Close;
    //Abort;
  //end;

  if pg.ActivePageIndex = 0 then begin
    zqrDetG02.Close;
    zqrDetG02.SQL.Text := Format(sql, ['G01']);
    zqrDetG02.Open;
  end
  else if pg.ActivePageIndex = 1 then begin
    zqrDetG02.Close;
    zqrDetG02.SQL.Text := Format(sql, ['G02']);
    zqrDetG02.Open;
  end
  else if pg.ActivePageIndex = 2 then begin
    zqrDetG02.Close;
    zqrDetG02.SQL.Text := Format(sql, ['G03']);
    zqrDetG02.Open;
  end;
  }
end;

procedure TfrmStokMstBrg.btnKartuStokClick(Sender: TObject);
var
  f: TfrmKartuStok;
begin
  f := TfrmKartuStok.Create(Self);
  f.KodeBrg := zqrBrg.FieldByName('kode').AsString;
  f.ShowModal;
end;

procedure TfrmStokMstBrg.cxTblViewEditValueChanged(
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

procedure TfrmStokMstBrg.cxTblViewInitEditValue(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var AValue: Variant);
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

procedure TfrmStokMstBrg.FormCreate(Sender: TObject);
begin

  pnlFoto.Left := cxGrid1.Left;
  pnlFoto.Top := cxGrid1.Top;
  pnlFoto.Visible := False;

  pg.ActivePageIndex := 0;
  {
  dm.zConn.ExecuteDirect('DELETE FROM tmp_so_det');
  dm.zConn.ExecuteDirect('DELETE FROM tmp_sj_det');
  dm.zConn.ExecuteDirect('insert into tmp_so_det select kode_brg, sum(qty) as qty  from tbl_so_det group by kode_brg');
  dm.zConn.ExecuteDirect('insert into tmp_sj_det select kode_brg, sum(qty) as qty from tbl_sj_det group by kode_brg');
  zqrBrg.Close;
  zqrBrg.SQL.Text := Memo2.Lines.Text;
  zqrBrg.Open;
  }
  Screen.Cursor := crSQLWait;
  dm.zConn.ExecuteDirect('call sp_brg_per_gdg');
  dm.zConn.ExecuteDirect('call sp_outstanding_po');
  zqrBrg.SQL.Text := 'SELECT a.*, b.outstanding_po outstanding_po2 FROM _tmp_brg_per_gdg a ' +
    'left join _tmp_outstanding_po b on a.kode = b.kode_brg';
  zqrBrg.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmStokMstBrg.btnRefreshClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  zqrBrg.Close;
  dm.zConn.ExecuteDirect('call sp_brg_per_gdg');
  zqrBrg.Open;
  Screen.Cursor := crDefault;
end;

procedure TfrmStokMstBrg.cxTblViewDataControllerFilterChanged(
  Sender: TObject);
begin
  {
  if cxTblView.DataController.FilteredRecordCount = 0 then begin
    zqrDetG02.Close;
  end
  else begin
    zqrDetG02.Open;
  end;
  }
end;

procedure TfrmStokMstBrg.cxTblViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

  {
  if cxChkBrgNonAktif.Checked then begin
    zqrG01.Close;
    zqrG01.ParamByName('kode_brg').AsInteger := zqrBrg2.FieldByName('kode').AsInteger;
    zqrG01.Open;

    zqrG02.Close;
    zqrG02.ParamByName('kode_brg').AsInteger := zqrBrg2.FieldByName('kode').AsInteger;
    zqrG02.Open;

    zqrG03.Close;
    zqrG03.ParamByName('kode_brg').AsInteger := zqrBrg2.FieldByName('kode').AsInteger;
    zqrG03.Open;

    zqrG_ASIS.Close;
    zqrG_ASIS.ParamByName('kode_brg').AsInteger := zqrBrg2.FieldByName('kode').AsInteger;
    zqrG_ASIS.Open;

  end
  else begin }
    zqrG01.Close;
    zqrG01.ParamByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
    zqrG01.Open;

    zqrG02.Close;
    zqrG02.ParamByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
    zqrG02.Open;

    zqrG03.Close;
    zqrG03.ParamByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
    zqrG03.Open;

    zqrG_ASIS.Close;
    zqrG_ASIS.ParamByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
    zqrG_ASIS.Open;

    zqrG_CONS.Close;
    zqrG_CONS.ParamByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
    zqrG_CONS.Open;

    zqrG_WIP.Close;
    zqrG_WIP.ParamByName('kode_brg').AsString := zqrBrg.FieldByName('kode').AsString;
    zqrG_WIP.Open;
  { end; }

end;

procedure TfrmStokMstBrg.Button1Click(Sender: TObject);
begin
  zqrG01.Close;
  zqrG01.ParamByName('kode_brg').AsInteger := 4014;
  zqrG01.Open;
end;

procedure TfrmStokMstBrg.ChkOClick(Sender: TObject);
begin
  {
  if cxChkOutstandingSO.Checked then begin
    zqrBrg.Close;
    zqrBrg.SQL.Text := Memo2.Lines.Text;
    zqrBrg.Open;
  end
  else begin
    zqrBrg.Close;
    zqrBrg.SQL.Text := Memo1.Lines.Text;
    zqrBrg.Open;
  end;
  }
end;

procedure TfrmStokMstBrg.btnLihatEDClick(Sender: TObject);
var
  q: TZQuery;
begin
  if zqrBrg.FieldByName('f_ed').AsInteger = 1 then begin
    q := OpenRS('SELECT f_ed, ed FROM tbl_barang WHERE kode = %s',
      [zqrBrg.FieldByName('kode').AsString]);

    if not q.FieldByName('ed').IsNull then begin
      TBlobField(q.FieldByName('ed')).SaveToFile(aplikasi.AppPath + 'tmp.pdf');
      try
        ShellExecute(Self.Handle, nil, PChar(Aplikasi.AppPath + 'tmp.pdf'), nil, nil, SW_SHOWNORMAL);
      except
      end;
    end;
    q.Close;
  end;

end;

procedure TfrmStokMstBrg.btnEditBrgClick(Sender: TObject);
var
  f: TfrmMstBrg;
begin
  f := TfrmMstBrg.Create(Self);
  f.JenisEdit := 'edit-barang';
  f.KodeEdit := zqrBrg.FieldByName('kode').AsString;
  if f.ShowModal = mrOk then begin
    f.Release;
  end;
end;

procedure TfrmStokMstBrg.cxTblViewG01StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[AItem.Index] < ARecord.Values[cxTblViewColumn10.Index] then
    AStyle := cxStyle1;
end;

procedure TfrmStokMstBrg.cxTblViewColumn10StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[AItem.Index] > 0 then
    AStyle := cxStyle2;
end;

procedure TfrmStokMstBrg.btnGambarClick(Sender: TObject);
var
  q: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  q := OpenRS('SELECT kode, image FROM tbl_barang WHERE kode = %s',
    [zqrBrg.FieldByName('kode').AsString]);

  if not q.FieldByName('image').IsNull then begin
    Stream := TMemoryStream.Create;
    TBlobField(q.FieldByName('image')).SaveToStream(Stream);
    Stream.Position := 0;

    jpg := TJPEGImage.Create;
    jpg.LoadFromStream(Stream);

    image.Picture.Assign(jpg);

    Stream.Free;
    jpg.Free;
    pnlFoto.Visible := True;
  end;

  q.Close;
end;

procedure TfrmStokMstBrg.btnCloseFotoClick(Sender: TObject);
begin
  pnlFoto.Visible := False;
  image.Picture := nil;
end;

end.
