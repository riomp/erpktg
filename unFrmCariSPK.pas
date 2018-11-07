unit unFrmCariSPK;

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
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, StdCtrls,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, unFrmSPMB, unFrmTrsMasuk;

type
  TfrmCariSPK = class(TForm)
    zqrSOhead: TZReadOnlyQuery;
    dsSOHead: TDataSource;
    zqrSODet: TZReadOnlyQuery;
    dsSODet: TDataSource;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    tblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnPilih: TButton;
    btnBatal: TButton;
    nxGrdSODet: TNextGrid;
    nxColKdBrg: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    nxColSPMB: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    tblViewno_mo: TcxGridDBColumn;
    tblViewno_spk: TcxGridDBColumn;
    tblViewjenis_spk: TcxGridDBColumn;
    tblViewtanggal: TcxGridDBColumn;
    tblViewjam: TcxGridDBColumn;
    tblViewqty: TcxGridDBColumn;
    tblViewkode_mesin: TcxGridDBColumn;
    tblViewnama: TcxGridDBColumn;
    tblViewno_so: TcxGridDBColumn;
    tblViewtanggal_so: TcxGridDBColumn;
    tblViewketerangan: TcxGridDBColumn;
    tblViewf_app_prd: TcxGridDBColumn;
    tblViewnama_mesin: TcxGridDBColumn;
    tblViewkode_brg: TcxGridDBColumn;
    tblViewdeskripsi: TcxGridDBColumn;
    tblViewsatuan: TcxGridDBColumn;
    tblViewkategori: TcxGridDBColumn;
    tblViewsubkategori: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure zqrSOheadAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnPilihClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tblViewFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure nxGrdSODetAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure tblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    mNoSO: string;
    mKodeCust: string;
    mKodeBrg: string;
    mfSPMB: TFrmSPMB;
    mfTrsMasuk: TFrmTrsMasuk;
    mLstNoSPK: TStringList;
  public
    property NoSO: string read mNoSO;
    property KodeCust: string write mKodeCust;
    property KodeBrg: string read mKodeBrg;
    property fSPMB: TfrmSPMB write mfSPMB;
    property fTrsMasuk: TfrmTrsMasuk write mfTrsMasuk;
    property NoSPK: TStringList read mLstNoSPK;
  end;

var
  frmCariSO: TfrmCariSPK;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmCariSPK.btnProsesClick(Sender: TObject);
begin
  //if Assigned(mfSPMB) then begin
    with zqrSOhead do begin
      Close;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    end;
  //end
  {
  else if Assigned(mfTrsMasuk) then begin
    with zqrSOhead do begin
      Close;
      SQL.Text := 'SELECT * FROM v_so_head ' +
        'WHERE tanggal BETWEEN :tgl1 AND :tgl2 AND f_completed = 0';
      ParamCheck;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    end;
  end;
  }
end;

procedure TfrmCariSPK.zqrSOheadAfterScroll(DataSet: TDataSet);
var
  no_bukti: string;
  i: Integer;
begin
  {
  try
    no_bukti := zqrSOhead.FieldByName('no_bukti').AsString;
    if zqrSODet.Active then zqrSODet.Close;
    zqrSODet.ParamByName('no_bukti').AsString := no_bukti;
    zqrSODet.Open;

    with nxGrdSODet do begin
      ClearRows;
      while not zqrSODet.Eof do begin
        i := AddRow();
        Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
        Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
        Cell[3,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
        Cell[4,i].AsString := zqrSODet.FieldByName('satuan').AsString;
        zqrSODet.Next;
      end;
    end;

  except
  end;
  }
end;

procedure TfrmCariSPK.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := EncodeDate(2013,1,1);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmCariSPK.btnPilihClick(Sender: TObject);
var
  i: Integer;
  lstSJ: TStringList;
  chk: string;
begin

  if not Assigned(mLstNoSPK) then
    mLstNoSPK := TStringList.Create;

  {
  for i := 0 to tblView.DataController.RecordCount - 1 do begin

    if VarIsNull(tblView.DataController.Values[i,0]) then
      chk := ''
    else
      chk := tblView.DataController.Values[i,0];

    if chk = 'T' then begin
      mLstNoSPK.Add(tblView.DataController.Values[i,1]);
    end;
  end;
  }
  mLstNoSPK.Add(zqrSOhead.FieldByName('no_spk').AsString);

  if mLstNoSPK.Count > 0 then begin
    ModalResult := mrOk;
  end;
end;

procedure TfrmCariSPK.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariSPK.cxGridDBTableView1DblClick(Sender: TObject);
begin
  btnProsesClick(nil);
end;

procedure TfrmCariSPK.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  {
  btnProsesClick(nil);
  aCol := tblView.CreateColumn;
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
  }
end;

procedure TfrmCariSPK.tblViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
{
var
  no_bukti: string;
  i: Integer;
  q, q2, qSPMB, qPM: TZQuery;
  }
begin
  {
  try
    no_bukti := zqrSOhead.FieldByName('no_bukti').AsString;
    if zqrSODet.Active then zqrSODet.Close;
    zqrSODet.ParamByName('no_bukti').AsString := no_bukti;
    zqrSODet.Open;

    with nxGrdSODet do begin
      ClearRows;
      while not zqrSODet.Eof do begin
        i := AddRow();
        Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
        Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
        Cell[3,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
        Cell[7,i].AsString := zqrSODet.FieldByName('satuan').AsString;

        // qty gudang G02
        q2 := OpenRS('SELECT * FROM v_stok_so WHERE no_bukti = ''%s'' ' +
          'AND kode_brg = %s',
          [no_bukti, Cell[1,i].AsString]);
        Cell[5,i].AsFloat := q2.FieldByName('qty_g02').AsFloat;
        if Cell[5,i].AsFloat > Cell[3,i].AsFloat then
          Cell[5,i].Color := clRed;
        if Cell[5,i].AsFloat = 0 then
          Cell[5,i].Color := clRed;
        q2.Close;

        // qty yang sudah terkirim
        q2 := OpenRS('SELECT * FROM v_so_vs_sj WHERE no_so = ''%s'' ' +
          'AND kode_brg = %s',
          [no_bukti, Cell[1,i].AsString]);
        Cell[4,i].AsFloat := q2.FieldByName('qty_kirim').AsFloat;
        q2.Close;

        // qty SPMB
        qSPMB := OpenRS('SELECT SUM(qty) AS qty FROM tbl_spmb_det WHERE no_so = ''%s'' ' +
          ' AND kode_brg = %s',
          [no_bukti, Cell[1,i].AsString]);
        Cell[6,i].AsFloat := qSPMB.FieldByName('qty').AsFloat;
        Cell[6,i].Color := clAqua;
        qSPMB.Close;

        zqrSODet.Next;
      end;
    end;

  except
  end;
  }
end;


procedure TfrmCariSPK.nxGrdSODetAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if Assigned(mfSPMB) then begin
    if ACol = 0 then begin
      if nxGrdSODet.Cell[5,ARow].AsFloat = 0 then
        nxGrdSODet.Cell[0,ARow].AsBoolean := False;
    end;
  end;
end;

procedure TfrmCariSPK.tblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  btnPilihClick(nil);
end;

end.
