unit unMonPeletan;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCalendar, cxContainer,
  ZAbstractRODataset, ZDataset, cxMemo, cxNavigator, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  ExtCtrls, StdCtrls, cxMaskEdit, cxDropDownEdit, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, scExcelExport,cxGridExportLink, ShellAPI,
  cxCheckBox, ComCtrls;

type
  TfrmMonPeletan = class(TForm)
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
    Panel4: TPanel;
    GroupBox1: TGroupBox;
    Shape2: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape5: TShape;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxNavigator1: TcxNavigator;
    Panel3: TPanel;
    btnRefresh: TButton;
    cxMemo2: TcxMemo;
    zqrMO: TZReadOnlyQuery;
    dsMO: TDataSource;
    zqrSJDet: TZReadOnlyQuery;
    dsSJDet: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxSKuning: TcxStyle;
    cxSHijau: TcxStyle;
    cxSOlive: TcxStyle;
    cxStyle4: TcxStyle;
    GroupBox2: TGroupBox;
    nxGrd: TNextGrid;
    nxColSJ: TNxTextColumn;
    nxColSPMB: TNxTextColumn;
    nxColTanggal: TNxDateColumn;
    btnDetailSJ: TButton;
    btnCetakPerincian: TButton;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1tgl_required: TcxGridDBColumn;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1Column15: TcxGridDBColumn;
    cxgColQtyMO: TcxGridDBColumn;
    cxgColQtyG02: TcxGridDBColumn;
    cxColHslProd: TcxGridDBColumn;
    cxColHslBaik: TcxGridDBColumn;
    cxColHslAfkir: TcxGridDBColumn;
    cxColHslRetur: TcxGridDBColumn;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxgColQtySJ: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxgColQtySO: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    ColG01: TcxGridDBColumn;
    cxgColQtyMutasi: TcxGridDBColumn;
    cxgColQtyProd: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxgColFSPK: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxgColMesin: TcxGridDBColumn;
    cxGridDBTableView1notes: TcxGridDBColumn;
    cxGridDBTableView1kategori: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1notes_detail: TcxGridDBColumn;
    cxGridDBTableView1ket_harga: TcxGridDBColumn;
    cxGridDBTableView1kontak: TcxGridDBColumn;
    cxGridDBTableView1alamat: TcxGridDBColumn;
    cxGridDBTableView1subkategori: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1: TcxGrid;
    tvGrdHslPrd: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    zqrHslProd: TZReadOnlyQuery;
    dsHslProd: TDataSource;
    tvGrdHslPrdno_bukti: TcxGridDBColumn;
    tvGrdHslPrdnama: TcxGridDBColumn;
    tvGrdHslPrdkode_brg: TcxGridDBColumn;
    tvGrdHslPrddeskripsi: TcxGridDBColumn;
    tvGrdHslPrdqty: TcxGridDBColumn;
    tvGrdHslPrdqty_prod: TcxGridDBColumn;
    tvGrdHslPrdqty_baik: TcxGridDBColumn;
    tvGrdHslPrdqty_afkir: TcxGridDBColumn;
    tvGrdHslPrdqty_retur: TcxGridDBColumn;
    tvGrdHslPrdplusminus: TcxGridDBColumn;
    tvGrdHslPrdqty_net: TcxGridDBColumn;
    cxColSelisih: TcxGridDBColumn;
    tvGrdHslPrdstatus: TcxGridDBColumn;
    Panel5: TPanel;
    cxChkParam1: TcxCheckBox;
    cxStyle5: TcxStyle;
    pnlDetailHistPel: TPanel;
    Button2: TButton;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure cxGridDBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure btnBatalClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDetailSJClick(Sender: TObject);
    procedure btnCetakPerincianClick(Sender: TObject);
    procedure cxChkParam1Click(Sender: TObject);
    procedure tvGrdHslPrdStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmMonPeletan: TfrmMonPeletan;

implementation

uses unDm, unAplikasi, unTools, unFrmLapUmum;

{$R *.dfm}

procedure TFrmMonPeletan.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmMonPeletan.btnProsesClick(Sender: TObject);
begin
  if pg.ActivePageIndex = 0 then begin
    with zqrHslProd do begin
      if Active then Close;
      Screen.Cursor := crSQLWait;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
      Screen.Cursor := crDefault;
    end;
  end
  else begin
    with zqrMO do begin
      if Active then Close;
      Screen.Cursor := crSQLWait;
      dm.zConn.ExecuteDirect('CALL sp_tmp_mo_plt');
      //SQL.Text := cxMemo1.Lines.Text;
      SQL.Text := cxMemo2.Lines.Text;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
      Screen.Cursor := crDefault;
    end;
  end;
end;

procedure TfrmMonPeletan.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmMonPeletan.btnCetakClick(Sender: TObject);
begin
  if pg.ActivePageIndex = 0 then begin
    try
    ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid1);
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
      ,nil,SW_SHOWNORMAL);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end
  else begin
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
end;

procedure TfrmMonPeletan.cxGridDBTableView1StylesGetContentStyle(
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

procedure TfrmMonPeletan.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMonPeletan.btnRefreshClick(Sender: TObject);
var
  b: Variant;
begin
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

procedure TfrmMonPeletan.btnDetailSJClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  try
    q := OpenRS('SELECT a.no_bukti, a.no_spmb, a.tanggal FROM tbl_sj_head a WHERE a.no_bukti IN ' +
      '(SELECT no_bukti FROM tbl_sj_det WHERE no_so = ''%s'')',
      [zqrMO.FieldByName('no_so').AsString]);
    nxGrd.ClearRows;
    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColSJ.Index, i].AsString := q.FieldByName('no_bukti').AsString;
      nxGrd.Cell[nxColSPMB.Index, i].AsString := q.FieldByName('no_spmb').AsString;
      nxGrd.Cell[nxColTanggal.Index, i].AsDateTime := q.FieldByName('tanggal').AsDateTime;
      q.Next;
    end;
    q.Close;
    q.Free;
  except
  end;
end;

procedure TfrmMonPeletan.btnCetakPerincianClick(Sender: TObject);
var
  sNoSO, sNoSJ: string;
  f: TfrmLapUmum;
  qSJ: TZQuery;
begin
  try
    if not zqrMO.Active then Abort;
    sNoSO := zqrMO.FieldByName('no_so').AsString;
    qSJ := OpenRS('SELECT * FROM tbl_sj_det WHERE no_so = ''%s''', [sNoSO]);
    sNoSJ := qSJ.FieldByName('no_bukti').AsString;
    qSJ.Close;
    f := TfrmLapUmum.Create(Self);
    with f.zqrPerincianPlt do begin
      Close;
      SQL.Strings[14] := 'AND c.no_bukti = ''' + sNoSJ + '''';
      Open;
    end;
    f.rptPerincianPlt.ShowReport(True);
    f.Release;
  except
  end;
end;

procedure TfrmMonPeletan.cxChkParam1Click(Sender: TObject);
var
  AItemList: TcxFilterCriteriaItemList;
begin
  if cxChkParam1.Checked then begin
    with tvGrdHslPrd do begin
      DataController.Filter.BeginUpdate;
      try
        DataController.Filter.Root.Clear;
        AItemList := DataController.Filter.Root.AddItemList(fboOr);
        AItemList.AddItem(cxColSelisih,foGreater,'0.1','0.1');
      finally
        DataController.Filter.EndUpdate;
        DataController.Filter.Active := True;
      end;
    end;
  end
  else begin
    with tvGrdHslPrd do begin
      DataController.Filter.BeginUpdate;
      try
        DataController.Filter.Root.Clear;
      finally
        DataController.Filter.EndUpdate;
        DataController.Filter.Active := True;
      end;
    end;
  end;
end;

procedure TfrmMonPeletan.tvGrdHslPrdStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  //if not zqrHslProd.Active then Abort;
  try

    if (ARecord.Values[cxColSelisih.Index] > 0.1) then begin
      AStyle := cxStyle5;
    end;
  except
  end;
end;

end.
