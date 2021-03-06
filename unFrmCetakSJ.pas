unit unFrmCetakSJ;

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
  dxSkinXmas2008Blue, NxDBColumns, NxDBGrid, DB, ZAbstractRODataset,
  ZDataset, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, NxCellSource, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCheckComboBox,
  cxCheckBox;

type
  TfrmCetakSJ = class(TForm)
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    btnBatal: TButton;
    zqrSJHead: TZReadOnlyQuery;
    dsSJHead: TDataSource;
    zqrSJDet: TZReadOnlyQuery;
    dsSJDet: TDataSource;
    GridView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    GridView1no_bukti: TcxGridDBColumn;
    GridView1tanggal: TcxGridDBColumn;
    GridView1kode_customer: TcxGridDBColumn;
    GridView1no_spmb: TcxGridDBColumn;
    GridView1user: TcxGridDBColumn;
    GridView1user_dept: TcxGridDBColumn;
    GridView1f_cetak: TcxGridDBColumn;
    GridView1nopol: TcxGridDBColumn;
    GridView1driver: TcxGridDBColumn;
    GridView1tanggal_spmb: TcxGridDBColumn;
    GridView1nama: TcxGridDBColumn;
    GridView1alamat: TcxGridDBColumn;
    GridView1kontak: TcxGridDBColumn;
    GridView1kota: TcxGridDBColumn;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1qty_so: TcxGridDBColumn;
    cxGridDBTableView1no_so: TcxGridDBColumn;
    cxGridDBTableView1kode_gdg: TcxGridDBColumn;
    cxGridDBTableView1keterangan: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    btnCetak: TButton;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxChkSJPel: TcxCheckBox;
    cxChkPerincian: TcxCheckBox;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridView1FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnCetakClick(Sender: TObject);
    procedure GridView1FocusedItemChanged(Sender: TcxCustomGridTableView;
      APrevFocusedItem, AFocusedItem: TcxCustomGridTableItem);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmCetakSJ: TfrmCetakSJ;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum;

{$R *.dfm}

procedure TFrmCetakSJ.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmCetakSJ.btnProsesClick(Sender: TObject);
begin
  with zqrSJhead do begin
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
  end;
end;

procedure TfrmCetakSJ.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  btnProsesClick(nil);
end;

procedure TfrmCetakSJ.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := GridView1.CreateColumn;
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
  aCol.Index := 0;
end;

procedure TfrmCetakSJ.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCetakSJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmCetakSJ.GridView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin

  try
    with zqrSJDet do begin
      Close;
      ParamByName('no_bukti').AsString := zqrSJHead.FieldByName('no_bukti').AsString;
      Open;
    end;
  except
  end;


end;

procedure TfrmCetakSJ.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
  i: Integer;
  lstSJ, lstNoSO, lstKodeBrg: TStringList;
  chk, sNoSO: string;
  qCek, qCekPel: TZQuery;
begin
  lstSJ := TStringList.Create;
  for i := 0 to GridView1.DataController.RecordCount - 1 do begin

    if VarIsNull(GridView1.DataController.Values[i,0]) then
      chk := ''
    else
      chk := GridView1.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSJ.Add('''' + GridView1.DataController.Values[i,1] + '''');
    end;
  end;

  //if lstSJ.Count > 1 then begin
  //  MsgBox('Cetak ulang Surat Jalan hanya bisa dilakukan 1 saja.');
  //  Abort;
  //end;

  if lstSJ.Count > 0 then begin
    f := TfrmLapUmum.Create(Self);

    qCek := OpenRS('SELECT * FROM v_lap_sj WHERE no_bukti IN (' +
        lstSJ.CommaText + ')');

    if Copy(qCek.FieldByName('no_so').AsString,1,3) = 'SPL' then
      cxChkSJPel.Checked := True
    else
      cxChkSJPel.Checked := False;
    sNoSO := qCek.FieldByName('no_so').AsString;

    qCek.Close;

    if cxChkSJPel.Checked then begin
      if f.zqrSJPel.Active then f.zqrSJPel.Close;
      //f.zqrSJPel.SQL.Text := 'SELECT * FROM v_lap_sj WHERE no_bukti IN (' +
      //  lstSJ.CommaText + ')';
      f.zqrSJPel.SQL.Add('WHERE no_bukti = ' + lstSJ.CommaText);
      f.zqrSJPel.Open;
      f.rptSJPel.ShowReport(True);
      if cxChkPerincian.Checked then begin
        //qCekPel := OpenRS('SELECT DISTINCT a.no_so FROM tbl_sj_det a LEFT JOIN tbl_so_head b ' +
        //  'ON a.no_so = b.no_bukti WHERE IFNULL(b.f_completed,0) = 1 AND a.no_bukti = ''%s''',
        //  [zqrSJHead.FieldByName('no_bukti').AsString]);
        qCekPel := OpenRS('SELECT DISTINCT a.no_so FROM tbl_sj_det a LEFT JOIN tbl_so_head b ' +
          'ON a.no_so = b.no_bukti WHERE a.no_bukti = ''%s''',
          [zqrSJHead.FieldByName('no_bukti').AsString]);
        if not qCekPel.IsEmpty then begin
          lstNoSO := TStringList.Create;
          while not qCekPel.Eof do begin
            lstNoSO.Add('''' + qCekPel.FieldByName('no_so').AsString + '''');
            qCekPel.Next;
          end;
          qCekPel.Close;

          lstKodeBrg := TStringList.Create;
          qCekPel := OpenRS('SELECT kode_brg FROM tbl_sj_det WHERE no_bukti = ''%s''',[zqrSJHead.FieldByName('no_bukti').AsString]);
          while not qCekPel.Eof do begin
            lstKodeBrg.Add(qCekPel.FieldByName('kode_brg').AsString);
            qCekPel.Next;
          end;
          qCekPel.Close;

          f.zqrPerincianPlt.Close;
          //f.zqrPerincianPlt.SQL.Strings[14] := 'AND c.no_bukti = ''' +
          //  zqrSJHead.FieldByName('no_bukti').AsString + ''' AND a.f_completed = 1 ';
          //f.zqrPerincianPlt.SQL.Strings[14] := 'AND d.no_bukti = ''' +
          //  zqrSJHead.FieldByName('no_bukti').AsString + ''' AND a.f_completed = 1 ';
          //f.zqrPerincianPlt.SQL.Strings[14] := 'AND a.no_bukti IN (' + lstNoSO.CommaText + ') AND a.f_completed = 1 ';
          f.zqrPerincianPlt.SQL.Strings[14] := 'AND a.no_bukti IN (' + lstNoSO.CommaText + ') AND b.plt_completed = 1 AND b.kode_brg IN (' + lstKodeBrg.CommaText + ') ';
          f.zqrPerincianPlt.Open;
          f.rptPerincianPlt.ShowReport(True);
        end;
      end;
      f.Release;
    end
    else begin
      if f.zqrSJ.Active then f.zqrSJ.Close;
      f.zqrSJ.SQL.Text := 'SELECT * FROM v_lap_sj WHERE no_bukti IN (' +
        lstSJ.CommaText + ')';
      f.zqrSJ.Open;
      f.rptSJ.ShowReport(True);
      f.Release;
    end;
  end;
end;

procedure TfrmCetakSJ.GridView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
  {
  try
    with zqrSJDet do begin
      Close;
      ParamByName('no_bukti').AsString := zqrSJHead.FieldByName('no_bukti').AsString;
      Open;
    end;
  except
  end;
  }
end;

end.
