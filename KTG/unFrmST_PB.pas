unit unFrmST_PB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, scExcelExport,cxGridExportLink, ShellAPI, cxCheckBox, cxPC,
  cxDBLookupComboBox, cxSpinEdit, ZAbstractDataset;

type
  TfrmST_PB = class(TfrmTplTrans)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxTbl: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTblno_spk: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTblqty_prod: TcxGridDBColumn;
    cxTblqty_reject: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTbluser_dept: TcxGridDBColumn;
    cxTbltgl_input: TcxGridDBColumn;
    cxTblshift2: TcxGridDBColumn;
    cxTbljam1: TcxGridDBColumn;
    cxTbljam2: TcxGridDBColumn;
    cxTblmesin: TcxGridDBColumn;
    cxTblket_reject: TcxGridDBColumn;
    cxTblket_mesin: TcxGridDBColumn;
    btnKeluar2: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    btnExcel: TButton;
    cxTblColumn1: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxTblOpr: TcxGridDBTableView;
    cxTblOprnik: TcxGridDBColumn;
    cxTblOprnama: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    cxTblColumn4: TcxGridDBColumn;
    cxTblColumn5: TcxGridDBColumn;
    cxTblColumn6: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTblST: TcxGridDBTableView;
    cxGrdSPKLevel1: TcxGridLevel;
    cxGrdSPK: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    btnSimpanPB: TButton;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    zqrKetMesin: TZReadOnlyQuery;
    dsKetMesin: TDataSource;
    btnSimpanST: TButton;
    zqrST: TZReadOnlyQuery;
    dsST: TDataSource;
    cxColNoSPKST: TcxGridDBColumn;
    cxColNoHP: TcxGridDBColumn;
    cxTblSTshift: TcxGridDBColumn;
    cxTblSTtanggal: TcxGridDBColumn;
    cxTblSTjam: TcxGridDBColumn;
    cxColQtyProdST: TcxGridDBColumn;
    cxTblSTqty_prod_kg: TcxGridDBColumn;
    cxTblSTqty_reject: TcxGridDBColumn;
    cxTblSTqty_baik: TcxGridDBColumn;
    cxTblSTqty_afkir: TcxGridDBColumn;
    cxTblSTqty_retur: TcxGridDBColumn;
    cxTblSTtgl_prod_selesai: TcxGridDBColumn;
    cxTblSTuser: TcxGridDBColumn;
    cxTblSTuser_dept: TcxGridDBColumn;
    cxTblSTip_address: TcxGridDBColumn;
    cxTblSThostname: TcxGridDBColumn;
    cxTblSTtgl_input: TcxGridDBColumn;
    cxTblSTkg_sak: TcxGridDBColumn;
    cxTblSTshift2: TcxGridDBColumn;
    cxTblSTjam1: TcxGridDBColumn;
    cxTblSTjam2: TcxGridDBColumn;
    cxTblSTmesin: TcxGridDBColumn;
    cxTblSTket_reject: TcxGridDBColumn;
    cxTblSTket_mesin: TcxGridDBColumn;
    cxTblSTbpu: TcxGridDBColumn;
    cxTblSTnik: TcxGridDBColumn;
    cxTblSToperator: TcxGridDBColumn;
    cxTblSTjam1_: TcxGridDBColumn;
    cxTblSTjam2_: TcxGridDBColumn;
    cxTblSTtarget: TcxGridDBColumn;
    cxTblSTtarget_kg: TcxGridDBColumn;
    cxColKodeBrgST: TcxGridDBColumn;
    cxTblSTdeskripsi: TcxGridDBColumn;
    cxTblSTid: TcxGridDBColumn;
    cxColSatST: TcxGridDBColumn;
    cxColNoSOST: TcxGridDBColumn;
    zqrPB: TZReadOnlyQuery;
    dsPB: TDataSource;
    cxTblPB: TcxGridDBTableView;
    cxColNoTrans: TcxGridDBColumn;
    cxTblPBkode_brg: TcxGridDBColumn;
    cxTblPBqty: TcxGridDBColumn;
    cxTblPBsatuan: TcxGridDBColumn;
    cxTblPBkode_gdg: TcxGridDBColumn;
    cxTblPBno_spk: TcxGridDBColumn;
    cxTblPBno_so: TcxGridDBColumn;
    cxTblPBfterima: TcxGridDBColumn;
    cxTblPBfcons: TcxGridDBColumn;
    cxTblPBid: TcxGridDBColumn;
    cxTblPBtanggal: TcxGridDBColumn;
    cxTblPBdeskripsi: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxTblPenerimaanRetur: TcxGridDBTableView;
    cxGridDBColumn7: TcxGridDBColumn;
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
    btnSimpanReturBOM: TButton;
    cxTblSTColumn1: TcxGridDBColumn;
    zqrReturBOM: TZReadOnlyQuery;
    dsReturBOM: TDataSource;
    GroupBox1: TGroupBox;
    cxtNoBukti: TcxTextEdit;
    cxtKode: TcxTextEdit;
    cxGrid9: TcxGrid;
    cxTblLot: TcxGridTableView;
    cxCollot: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxGridLevel7: TcxGridLevel;
    dsLot: TDataSource;
    zqrLot: TZQuery;
    cxColStock: TcxGridColumn;
    btn1: TButton;
    cxsqty: TcxSpinEdit;
    cxColGudang: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSimpanLOT1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanPBClick(Sender: TObject);
    procedure btnSimpanSTClick(Sender: TObject);
    procedure btnSimpanReturBOMClick(Sender: TObject);
    procedure cxTblPBFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTblLotDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmST_PB: TfrmST_PB;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmST_PB.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := unTools.FDOM(Aplikasi.TanggalServer);
  cxdTgl2.Date := unTools.LDOM(APlikasi.TanggalServer);
  pg.ActivePageIndex := 0;
end;

procedure TfrmST_PB.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmST_PB.btnExcelClick(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmST_PB.btnProsesClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;

  zqrST.Close;
  zqrST.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrST.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrST.Open;

  zqrPB.Close;
  zqrPB.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrPB.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrPB.Open;

  zqrReturBOM.Close;
  zqrReturBOM.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrReturBOM.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrReturBOM.Open;

  Screen.Cursor := crDefault;
end;

procedure TfrmST_PB.Button1Click(Sender: TObject);
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

procedure TfrmST_PB.btnSimpanLOT1Click(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  {
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblHP.DataController.AppendRecord;
      with cxTblHP.DataController do begin
        Values[j, cxColNoSPK1.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColRouting1.Index] := q.FieldByname('routing').AsString;
        Values[j, cxColTglSPK1.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxColQtySPK1.Index] := q.FieldByname('qty').AsString;
        Values[j, cxColSatSPK1.Index] := q.FieldByname('satuan').AsString;
      end;

      q.Close;
    end;
  end;

  pg.ActivePageIndex := 1;
  }
end;

procedure TfrmST_PB.Button3Click(Sender: TObject);
var
  lst: TStringList;
  i,j: Integer;
  q: TZQuery;
  chk: string;
begin
  {
  inherited;

  lst := TStringList.Create;
  for i := 0 to cxTblSPK.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSPK.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSPK.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblSPK.DataController.Values[i,1]);
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin

      q := OpenRS('SELECT * FROM v_spk WHERE no_spk = ''%s''',[lst.Strings[i]]);

      j := cxTblDT.DataController.AppendRecord;
      with cxTblDT.DataController do begin
        Values[j, cxColNoSPK1.Index] := q.FieldByname('no_spk').AsString;
        Values[j, cxColRouting1.Index] := q.FieldByname('routing').AsString;
        Values[j, cxColTglSPK1.Index] := q.FieldByname('tanggal').AsString;
        Values[j, cxColQtySPK1.Index] := q.FieldByname('qty').AsString;
        Values[j, cxColSatSPK1.Index] := q.FieldByname('satuan').AsString;
      end;

      q.Close;
    end;
  end;

  pg.ActivePageIndex := 2;
  }
end;

procedure TfrmST_PB.FormShow(Sender: TObject);
var
  aCol, aCol2, aCol3: TcxGridColumn;
  i : integer;
begin
  aCol := cxTblST.CreateColumn;
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

  aCol2 := cxTblPB.CreateColumn;
  with aCol2 do begin
    Name := 'colUnbound2';
    Caption := 'Check';
  end;
  aCol2.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol2.PropertiesClass := TcxCheckBoxProperties;
  with aCol2.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol2.Index := 0;

  aCol3 := cxTblPenerimaanRetur.CreateColumn;
  with aCol3 do begin
    Name := 'colUnbound3';
    Caption := 'Check';
  end;
  aCol3.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol3.PropertiesClass := TcxCheckBoxProperties;
  with aCol3.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol3.Index := 0;

end;

procedure TfrmST_PB.btnSimpanPBClick(Sender: TObject);
var
  lst, lstQ, lstQ2, lstSPK, lstBrg, lstQtyProd,
  lstSat, lstSO: TStringList;
  i,j: Integer;
  q, qh, qd, qprod, h, qbh, qbd, qj, qjd, qgudang: TZQuery;
  chk, sNoTrs, sNoJ, AD, AK, KodeBrg, sAkun: string;
  qtyProd: Real;
begin
  inherited;

  lst := TStringList.Create;
  lstQ := TStringList.Create;
  lstQ2 := TStringList.Create;
  lstBrg := TStringList.Create;

  for i := 0 to cxTblPB.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblPB.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblPB.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblPB.DataController.Values[i, cxColNoTrans.Index]);
      lstBrg.Add(cxTblPB.DataController.Values[i, cxTblPBkode_brg.index]);
    end;
  end;

  if lst.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      sNoTrs := GetLastFak('brg_out');
      UpdateFaktur(Copy(sNoTrs,1,7));

      for i := 0 to lst.Count - 1 do
        lstQ.Add('''' + lst.Strings[i] + '''');

      for i := 0 to lstBrg.Count - 1 do
        lstQ2.Add('''' + lstBrg.Strings[i] + '''');
        
      q := OpenRS('SELECT * FROM tbl_trspengeluaranbb_det WHERE no_bukti IN (' + lstQ.CommaText + ') AND kode_brg IN (' + lstQ2.CommaText + ')');

      qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''',[sNoTrs]);
      qd := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',[sNoTrs]);
      h := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);

      qh.Insert;
      qh.FieldByName('no_bukti').AsString := sNoTrs;
      qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      qh.FieldByName('user').AsString := Aplikasi.NamaUser;
      qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      qh.Post;
      qh.Close;

      while not q.Eof do begin
        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoTrs;
        qd.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
        qd.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
        qd.FieldByName('kode_gdg').AsString :=  'G-PRD';
        qd.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
        qd.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
        qd.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
        qd.Post;

        qgudang := OpenRS('SELECT gudang FROM tbl_barang WHERE kode= ''%s''',[q.FieldByName('kode_brg').AsString]);
        h.Insert;
        h.FieldByName('no_bukti').AsString := sNoTrs;
        h.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        h.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        h.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
        h.FieldByName('tipe').AsString := 'IN_';
        h.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
        h.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
        h.FieldByName('gudang').AsString := 'G-PRD';
        h.FieldByName('user').AsString := Aplikasi.NamaUser;
        h.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        h.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
        h.FieldByName('no_spk').AsString := q.FieldByname('no_spk').AsString;
        h.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        h.FieldByName('harga').AsFloat := GetHPP(q.FieldByName('kode_brg').AsString);
        h.FieldByName('hpp').AsFloat := GetHPP(q.FieldByName('kode_brg').AsString);
        h.FieldByName('unit_ktg').AsString := GetUnitKTG(q.FieldByName('kode_brg').AsString);
        h.Post;

        h.Insert;
        h.FieldByName('no_bukti').AsString := sNoTrs;
        h.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        h.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        h.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
        h.FieldByName('tipe').AsString := 'OUT_';
        h.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
        h.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
        h.FieldByName('gudang').AsString := qgudang.FieldByName('gudang').AsString;
        h.FieldByName('user').AsString := Aplikasi.NamaUser;
        h.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        h.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
        h.FieldByName('no_spk').AsString := q.FieldByname('no_spk').AsString;
        h.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        h.FieldByName('hpp').AsFloat := GetHPP(q.FieldByName('kode_brg').AsString);
        h.FieldByName('unit_ktg').AsString := GetUnitKTG(q.FieldByName('kode_brg').AsString);
        h.Post;

        qgudang.Close;

       { qbh := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[q.FieldByName('kode_brg').AsString]);
        qbh.Edit;
        qbh.FieldByName('stok').AsFloat :=
          qbh.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
        qbh.FieldByName('tgl_stock').AsDateTime:=Aplikasi.NowServer;
        qbh.Post;
        qbh.Close;        }

        qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''%s''',
          [q.FieldByName('kode_brg').AsString, 'G-BB']);
        if not qbd.IsEmpty then begin
          qbd.Edit;
          qbd.FieldByName('stok').AsFloat :=
            qbd.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
          qbd.Post;
        end;
        qbd.Close;

        dm.zConn.ExecuteDirect('UPDATE tbl_trspengeluaranbb_det SET fkeluar = 1 WHERE no_bukti = ''' +
          q.FieldByName('no_bukti').AsString + ''' AND kode_brg = ''' + q.FieldByName('kode_brg').AsString + '''');

        //sNoJ := GetLastFak('jurnal');
        //UpdateFaktur(Copy(sNoJ,1,6));
        sNoJ:=q.FieldByName('no_bukti').AsString;
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        KodeBrg := q.FieldByName('kode_brg').AsString;

         qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
        qj.Insert;
        qj.FieldByName('no_jurnal').AsString := sNoJ;
        qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
        qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
        qj.FieldByName('keterangan').AsString := 'TRANFER BB KE PRODUKSI';
        qj.FieldByName('f_posted').AsString := '1';
        qj.FieldByName('user').AsString := Aplikasi.NamaUser;
        qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        qj.Post;
        qj.Close;


        sAkun := GetDefaultAkun('persediaan_dalam_proses');
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := q.FieldByName('qty').AsFloat * GetHPP(q.FieldByName('kode_brg').AsString);
        qjd.FieldByName('dc').AsString := 'D';
        //qjd.FieldByName('keterangan').AsString := 'TRANFER BB KE PRODUKSI';
        qjd.FieldByName('kode_brg').AsString := KodeBrg;
        qjd.FieldByName('unit').AsString := GetUnitKTG(q.FieldByName('kode_brg').AsString);
        qjd.Post;

        sAkun := GetDefaultAkunBrg(KodeBrg, 'persediaan');
        qjd.Insert;
        qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kredit').AsFloat := q.FieldByName('qty').AsFloat * GetHPP(q.FieldByName('kode_brg').AsString);
        qjd.FieldByName('dc').AsString := 'K';
        qjd.FieldByName('kode_brg').AsString := KodeBrg;
        qjd.FieldByName('unit').AsString := GetUnitKTG(q.FieldByName('kode_brg').AsString);
        qjd.Post;

        q.Next;
      end;

      q.Close;
      qd.Close;
      h.Close;

      dm.zConn.Commit;

      MsgBox('Pengiriman BOM sudah disimpan dengan Nomor : ' + sNoTrs);

      zqrPB.Close;
      zqrPB.Open;
      
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmST_PB.btnSimpanSTClick(Sender: TObject);
var
  lst, lstSPK, lstBrg, lstQtyProd,
  lstSat, lstSO: TStringList;
  i,j: Integer;
  q, qh, qd, qprod, h, qbh, qbd, qj, qjd: TZQuery;
  chk, sNoTrs, sNoJ, AD, AK, sAkun, KodeBrg: string;
  qtyProd: Real;
begin
  inherited;

  lst := TStringList.Create;
  lstSPK := TStringList.Create;
  lstBrg := TStringList.Create;
  lstQtyProd := TStringList.Create;
  lstSat := TStringList.Create;
  lstSO := TStringList.Create;

  for i := 0 to cxTblST.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblST.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblST.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblST.DataController.Values[i,cxColNoHP.Index]);
      lstSPK.Add(cxTblST.DataController.Values[i, cxColNoSPKST.Index]);
      lstBrg.Add(cxTblST.DataController.Values[i, cxColKodeBrgST.Index]);
      lstSat.Add(cxTblST.DataController.Values[i, cxColSatST.Index]);
      lstSO.Add(cxTblST.DataController.Values[i, cxColNoSOST.Index]);
    end;
  end;

  if lst.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      sNoTrs := GetLastFak('brg_in');
      UpdateFaktur(Copy(sNoTrs,1,7));
      
      qh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoTrs]);
      qd := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoTrs]);
      h := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);

      qh.Insert;
      qh.FieldByName('no_bukti').AsString := sNoTrs;
      qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      qh.FieldByName('user').AsString := Aplikasi.NamaUser;
      qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      qh.Post;
      qh.Close;
      
      for i := 0 to lst.Count - 1 do begin
        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoTrs;
        qd.FieldByName('kode_brg').AsString := lstBrg.Strings[i];

        qprod := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[lst.Strings[i]]);
        qtyProd := qprod.FieldByName('qty_prod').AsFloat;

        qd.FieldByName('qty').AsFloat := qtyProd;
        qd.FieldByName('satuan').AsString := lstSat.Strings[i];
        qd.FieldByName('no_so').AsString := lstSO.Strings[i];
        qd.FieldByName('no_spk').AsString := lstSPK.Strings[i];
        
        qd.Post;

        h.Insert;
        h.FieldByName('no_bukti').AsString := sNoTrs;
        h.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        h.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        h.FieldByName('kode_brg').AsString := lstBrg.Strings[i];
        h.FieldByName('tipe').AsString := 'IN_';
        h.FieldByName('qty').AsFloat := qtyProd;
        h.FieldByName('satuan').AsString := lstSat.Strings[i];
        h.FieldByName('gudang').AsString := 'G02';
        h.FieldByName('user').AsString := Aplikasi.NamaUser;
        h.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        h.FieldByName('no_so').AsString := lstSO.Strings[i];
        h.FieldByName('no_spk').AsString := lstSPK.Strings[i];
        h.FieldByName('tgl_input').AsDateTime := Aplikasi.TanggalServer;
        h.FieldByName('hpp').AsFloat := qprod.FieldByName('COGS').AsFloat;
        h.FieldByName('unit_ktg').AsString := GetUnitKTG(lstBrg.Strings[i]);
        h.Post;

        qbh := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[lstBrg.Strings[i]]);
        qbh.Edit;
        qbh.FieldByName('stok').AsFloat :=
          qbh.FieldByName('stok').AsFloat + qtyProd;
        qbh.Post;
        qbh.Close;

        qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''%s''',
          [lstBrg.Strings[i], 'G02']);
        if not qbd.IsEmpty then begin
          qbd.Edit;
          qbd.FieldByName('stok').AsFloat :=
            qbd.FieldByName('stok').AsFloat + qtyProd;
          qbd.Post;
        end;
        qbd.Close;

        //sNoJ := GetLastFak('jurnal');
        //UpdateFaktur(Copy(sNoJ,1,6));
        sNoJ := lst.Strings[i];
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        KodeBrg := lstBrg.Strings[i];


        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
        qj.Insert;
        qj.FieldByName('no_jurnal').AsString := sNoJ;
        qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
        qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
        qj.FieldByName('keterangan').AsString := 'TRANFER FG KE G.BARANG JADI';
        qj.FieldByName('f_posted').AsString := '1';
        qj.FieldByName('user').AsString := Aplikasi.NamaUser;
        qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        qj.Post;
        qj.Close;

        sAkun := GetDefaultAkunBrg(KodeBrg, 'persediaan');
        qjd.Insert;
        qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := qprod.FieldByName('COGS').AsFloat;
        qjd.FieldByName('dc').AsString := 'D';
        qjd.FieldByName('keterangan').AsString := 'PERSEDIAAN ';
        qjd.FieldByName('kode_brg').AsString := KodeBrg;
        qjd.FieldByName('unit').AsString := GetUnitKTG(lstBrg.Strings[i]);
        qjd.Post;

        sAkun := GetDefaultAkun('persediaan_dalam_proses');
        qjd.Insert;
        qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kredit').AsFloat := qprod.FieldByName('COGS').AsFloat;
        qjd.FieldByName('dc').AsString := 'K';
        qjd.FieldByName('keterangan').AsString := 'PERSEDIAAN DALAM PROSES ';
        qjd.FieldByName('kode_brg').AsString := KodeBrg;
        qjd.FieldByName('unit').AsString := GetUnitKTG(lstBrg.Strings[i]);
        qjd.Post;

        {
        // simpan jurnal otomatis
        sNoJ := GetLastFak('jurnal');
        UpdateFaktur(Copy(sNoJ,1,6));
        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
        qj.Insert;
        qj.FieldByName('no_jurnal').AsString := sNoJ;
        qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
        qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
        qj.FieldByName('keterangan').AsString := 'SERAH TERIMA HASIL PRODUKSI';
        qj.FieldByName('f_posted').AsString := '1';
        qj.FieldByName('user').AsString := Aplikasi.NamaUser;
        qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        qj.Post;
        qj.Close;

        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        AD := GetDefaultAkun('TRANSFER BARANG JADI KE GUDANG','D');
        qjd.Insert;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := AD;
        qjd.FieldByName('debet').AsFloat := qprod.FieldByName('COGS').AsFloat;
        qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG JADI KE GUDANG';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.FieldByName('kode_brg').AsString := lstBrg.Strings[i];
        qjd.FieldByName('unit').AsString := GetUnitKTG(lstBrg.Strings[i]);
        qjd.Post;
        AK := GetDefaultAkun('TRANSFER BARANG JADI KE GUDANG','K');
        qjd.Insert;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := AK;
        qjd.FieldByName('kredit').AsFloat := qprod.FieldByName('COGS').AsFloat;
        qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG JADI KE GUDANG';
        qjd.FieldByName('dc').AsString := 'C';
        qjd.FieldByName('kode_brg').AsString := lstBrg.Strings[i];
        qjd.FieldByName('unit').AsString := GetUnitKTG(lstBrg.Strings[i]);
        qjd.Post;
        }
        
        qprod.Close;

        dm.zConn.ExecuteDirect('UPDATE tbl_hsl_prd SET f_st = 1 WHERE no_bukti = ''' + lst.Strings[i] + '''');
      end;

      qd.Close;
      h.Close;

      dm.zConn.Commit;

      MsgBox('Serah terima Hasil Produksi sudah disimpan dengan Nomor : ' + sNoTrs + ' ' +
          Chr(10) + Chr(13) + 'Barang sudah masuk di Gudang.');

      zqrST.Close;
      zqrST.Open;
      
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmST_PB.btnSimpanReturBOMClick(Sender: TObject);
var
  lst, lstQ, lstSPK, lstBrg, lstQtyProd,
  lstSat, lstSO: TStringList;
  i,j: Integer;
  q, qh, qd, qprod, h, qbh, qbd: TZQuery;
  chk, sNoTrs: string;
  qtyProd: Real;
begin
  inherited;

  lst := TStringList.Create;
  lstQ := TStringList.Create;

  for i := 0 to cxTblPenerimaanRetur.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblPenerimaanRetur.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblPenerimaanRetur.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblPenerimaanRetur.DataController.Values[i, cxColNoTrans.Index]);
    end;
  end;

  if lst.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      sNoTrs := GetLastFak('brg_in');
      UpdateFaktur(Copy(sNoTrs,1,7));

      for i := 0 to lst.Count - 1 do
        lstQ.Add('''' + lst.Strings[i] + '''');

      q := OpenRS('SELECT * FROM tbl_trsreturbppb_det WHERE no_bukti IN (' + lstQ.CommaText + ')');

      qh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoTrs]);
      qd := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoTrs]);
      h := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);

      qh.Insert;
      qh.FieldByName('no_bukti').AsString := sNoTrs;
      qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      qh.FieldByName('user').AsString := Aplikasi.NamaUser;
      qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      qh.Post;
      qh.Close;

      while not q.Eof do begin
        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoTrs;
        qd.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
        qd.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
        qd.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
        qd.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
        qd.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
        qd.Post;

        h.Insert;
        h.FieldByName('no_bukti').AsString := sNoTrs;
        h.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        h.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        h.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
        h.FieldByName('tipe').AsString := 'IN_';
        h.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
        h.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;
        h.FieldByName('gudang').AsString := 'G01';
        h.FieldByName('user').AsString := Aplikasi.NamaUser;
        h.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        h.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
        h.FieldByName('no_spk').AsString := q.FieldByname('no_spk').AsString;
        h.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        h.FieldByName('hpp').AsFloat := GetHPP(q.FieldByName('kode_brg').AsString);
        h.FieldByName('unit_ktg').AsString := GetUnitKTG(q.FieldByName('kode_brg').AsString);
        h.Post;

        qbh := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[q.FieldByName('kode_brg').AsString]);
        if qbh.FieldByName('stok').AsFloat >= 0 then begin
          qbh.Edit;
          qbh.FieldByName('stok').AsFloat := qbh.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
          qbh.FieldByName('tgl_stock').AsDateTime := Aplikasi.TanggalServer;
          qbh.Post;
          qbh.Close;
        end;

        qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''%s''',
          [q.FieldByName('kode_brg').AsString, 'G01']);
        if not qbd.IsEmpty then begin
          qbd.Edit;
          qbd.FieldByName('stok').AsFloat :=
            qbd.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
          qbd.Post;
        end;
        qbd.Close;

        dm.zConn.ExecuteDirect('UPDATE tbl_trsreturbppb_det SET fterima = 1 WHERE no_bukti = ''' +
          q.FieldByName('no_bukti').AsString + '''');

        q.Next;
      end;

      q.Close;
      qd.Close;
      h.Close;

      dm.zConn.Commit;

      MsgBox('Penerimaan Retur BOM sudah disimpan dengan Nomor : ' + sNoTrs);

      zqrReturBOM.Close;
      zqrReturBOM.Open;
      
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;

end;

procedure TfrmST_PB.cxTblPBFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
  q : TZQuery ;
  i,j : Integer ;
  sSatuan : string ;
  sQty : Real ;
begin
  inherited;
    try

    i := cxTblPB.DataController.GetFocusedRecordIndex;
    cxtKode.Text := cxTblPB.DataController.Values[i, cxTblPBkode_brg.Index];
    cxtNoBukti.Text := cxTblPB.DataController.Values[i, cxColNoTrans.Index];
    sSatuan :=  cxTblPB.DataController.Values[i, cxTblPBsatuan.Index];
    sQty :=  cxTblPB.DataController.Values[i, cxTblPBqty.Index];
    cxsqty.EditValue := sQty ;

    zqrLot.Close;
    zqrLot.ParamByName('kode').AsString :=  cxtKode.Text;
    zqrLot.Open;


    cxTblLot.DataController.RecordCount := 0;
      q := OpenRS('SELECT * FROM tbl_historybb_lot where tipe=0 and no_trans =''%s'' and kode_brg=''%s'' and gudang="G-PRD"',[cxtNoBukti.Text,cxtkode.Text]) ;
    while not q.Eof do begin
      with cxTblLot.DataController do begin
       j := AppendRecord ;
       Values[j, cxCollot.Index] := q.FieldByName('lot').AsString ;
       Values[j, cxColqty.Index] := q.FieldByName('qty').Asfloat ;
      end;
      q.Next;
    end;
    q.Close;
  except
  end;
end;

procedure TfrmST_PB.cxTblLotDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  q : TZQuery ;
  i  : Integer ;
begin
  inherited;
   if AItemIndex = cxCollot.Index then begin
    try
      cxTblLot.BeginUpdate;
        q := OpenRS('SELECT a.lot,a.kode_brg,a.gudang,a.satuan,(IF(a.tipe=1,IFNULL(SUM(a.qty),0),0)-IF(a.tipe=0,IFNULL(SUM(a.qty),0),0)) qty FROM tbl_historybb_lot as a WHERE a.lot=''%s'' and a.kode_brg=''%s'' and gudang in ("G-BB","G-NPM")',
        [ADataController.Values[ARecordIndex, cxCollot.Index],cxtKode.Text]);

        ADataController.Values[ARecordIndex, cxColStock.Index] := q.FieldByName('qty').AsFloat;
        ADataController.Values[ARecordIndex, cxColGudang.Index] := q.FieldByName('gudang').AsString;
        ADataController.Values[ARecordIndex, cxColSatuan.Index] := q.FieldByName('satuan').AsString;
    finally
      cxTblLot.EndUpdate;
    end;
  end
  else if AItemIndex = cxColQty.Index then begin
      if ( ADataController.Values[ARecordIndex, cxColQty.Index] >
        (ADataController.Values[ARecordIndex, cxColStock.Index])) then begin
        MsgBox('Jumlah Barang Diterima Melebihi Stock.');
        Abort
      end;
  end;
end;

procedure TfrmST_PB.btn1Click(Sender: TObject);
var
  z : TZQuery ;
  i : Integer ;
begin
  inherited;
  if cxsqty.EditValue <> cxTblLot.DataController.Summary.FooterSummaryValues[0] then begin
    MsgBox('Qty tidak sama dengan yang diterima');
  end else begin
     dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_historybb_lot WHERE tipe=0 and no_trans = ''%s'' and kode_brg=''%s'' and gudang in ("G-BB","G-NPM")',[cxtNoBukti.text,cxtkode.Text]));
    dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_historybb_lot WHERE tipe=1 and no_trans = ''%s'' and kode_brg=''%s'' and gudang="G-PRD"',[cxtNoBukti.text,cxtkode.Text]));
   z := OpenRS('SELECT * FROM tbl_historybb_lot WHERE  tipe=1 and no_trans = ''%s'' and kode_brg=''%s'' and gudang="G-PRD"',[cxtNoBukti.text,cxtkode.Text]);
   with cxTblLot.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      z.Insert;
      z.FieldByName('no_trans').Value := cxtNoBukti.Text;
      z.FieldByName('kode_brg').Value := cxtkode.Text;
      z.FieldByName('lot').Value := Values[i, cxCollot.Index];
      z.FieldByName('qty').Value := Values[i, cxColqty.Index];
      z.FieldByName('tipe').Value := 1;
      z.FieldByName('satuan').Value := Values[i, cxColsatuan.Index];
      z.FieldByName('gudang').Value := 'G-PRD';
      z.Post;

        z.Insert;
      z.FieldByName('no_trans').Value := cxtNoBukti.Text;
      z.FieldByName('kode_brg').Value := cxtkode.Text;
      z.FieldByName('lot').Value := Values[i, cxCollot.Index];
      z.FieldByName('qty').Value := Values[i, cxColqty.Index];
      z.FieldByName('tipe').Value := 0;
      z.FieldByName('satuan').Value := Values[i, cxColsatuan.Index];
      z.FieldByName('gudang').Value := Values[i, cxColgudang.Index];
      z.Post;
    end;
  end;
    z.Close ;
  end;

end;

end.
