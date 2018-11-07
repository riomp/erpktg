unit unFrmCariPO;

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
  NxCustomGrid, NxGrid, unFrmSPBB;

type
  TfrmCariPO = class(TForm)
    zqrSOhead: TZReadOnlyQuery;
    dsSOHead: TDataSource;
    zqrSODet: TZReadOnlyQuery;
    dsSODet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1f_complete: TcxGridDBColumn;
    cxGridDBTableView1notes: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1payment: TcxGridDBColumn;
    cxGrid1DBTableView1f_complete: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGrid1DBTableView1user_dept: TcxGridDBColumn;
    cxGrid1DBTableView1f_email: TcxGridDBColumn;
    cxGrid1DBTableView1notes: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Button1: TButton;
    btnBatal: TButton;
    nxGrdSODet: TNextGrid;
    nxColKdBrg: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    nxColDipesan: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    nxColStokG01: TNxNumberColumn;
    nxColTerkirim: TNxNumberColumn;
    nxColSPBB: TNxNumberColumn;
    nxColSisa: TNxNumberColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure zqrSOheadAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure nxGrdSODetAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    mNoPO: string;
    mKodeSupp: string;
    mKodeBrg: string;
    mfSPBB: TFrmSPBB;
  public
    property NoPO: string read mNoPO;
    property KodeSupp: string write mKodeSupp;
    property KodeBrg: string read mKodeBrg;
    property fSPBB: TfrmSPBB write mfSPBB;
  end;

var
  frmCariPO: TfrmCariPO;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TFrmCariPO.btnProsesClick(Sender: TObject);
begin
  if Assigned(mfSPBB) then begin
    with zqrSOhead do begin
      Close;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      ParamByName('kode_supplier').AsString := mKodeSupp;
      Open;
    end;
  end;
end;

procedure TFrmCariPO.zqrSOheadAfterScroll(DataSet: TDataSet);
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

procedure TFrmCariPO.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := EncodeDate(2013,1,1);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TFrmCariPO.Button1Click(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  for i := 0 to nxGrdSODet.RowCount - 1 do begin
    if nxGrdSODet.Cell[0,i].AsBoolean then begin

      {if nxGrdSODet.Cell[nxColSPMB.Index,i].AsFloat > 0 then begin
        q := OpenRS('SELECT no_bukti FROM tbl_spmb_det ' +
          'WHERE no_so = ''%s'' AND kode_brg = %s',
          [zqrSOhead.FieldByName('no_bukti').AsString,
           nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString]
        );

        MsgBox('Kode barang : ' + nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString + #10#13 +
          'Sudah dibuatkan SPMB dengan nomor : ' + q.FieldByName('no_bukti').AsString);
        q.Close; q := nil;

        Abort;
      end;}

      if Assigned(mfSPBB) then begin
        mfSPBB.AddRow(
          zqrSOhead.FieldByName('no_bukti').AsString,
          nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString,
          nxGrdSoDet.Cell[nxColTerkirim.Index,i].AsFloat,
          nxGrdSoDet.Cell[nxColStokG01.Index,i].AsFloat
        );
      end;
    end;
  end;

  {
  try
    mNoSO := zqrSOhead.FieldByName('no_bukti').AsString;
    mKodeBrg := zqrSODet.FieldByName('kode_brg').AsString;
    ModalResult := mrOk;
  except
  end;
  }
end;

procedure TFrmCariPO.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCariPO.cxGridDBTableView1DblClick(Sender: TObject);
begin
  btnProsesClick(nil);
end;

procedure TFrmCariPO.FormShow(Sender: TObject);
begin
  btnProsesClick(nil);
end;

procedure TFrmCariPO.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  no_bukti: string;
  i: Integer;
  q, q2, qSPMB, qPM: TZQuery;
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
        Cell[nxColDipesan.Index,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
        Cell[nxColSatuan.Index,i].AsString := zqrSODet.FieldByName('satuan').AsString;

        // qty gudang G01
        q2 := OpenRS('SELECT * FROM v_stok_so WHERE no_bukti = ''%s'' ' +
          'AND kode_brg = %s',
          [no_bukti, Cell[1,i].AsString]);
        Cell[nxColStokG01.Index,i].AsFloat := q2.FieldByName('qty_g02').AsFloat;
        if Cell[nxColStokG01.Index,i].AsFloat > Cell[nxColDipesan.Index,i].AsFloat then
          Cell[nxColStokG01.Index,i].Color := clRed;
        if Cell[nxColStokG01.Index,i].AsFloat = 0 then
          Cell[nxColStokG01.Index,i].Color := clRed;
        q2.Close;

        // qty yang sudah terkirim
        //q2 := OpenRS('SELECT * FROM v_so_vs_sj WHERE no_so = ''%s'' ' +
        //  'AND kode_brg = %s',
        //  [no_bukti, Cell[1,i].AsString]);

        q2 := OpenRS('SELECT SUM(qty) qty_kirim FROM tbl_sj_det WHERE no_so = ''%s'' ' +
          'AND kode_brg = %s',
          [no_bukti, Cell[1,i].AsString]);
        Cell[nxColTerkirim.Index,i].AsFloat := q2.FieldByName('qty_kirim').AsFloat;
        q2.Close;

        // transaksi keluar
        q2 := OpenRS('SELECT IFNULL(SUM(qty),0) qty_kirim FROM tbl_trskeluar_det WHERE no_so = ''%s'' ' +
          'AND kode_brg = %s AND kode_gdg = ''G02''',
          [no_bukti, Cell[1,i].AsString]);
        if q2.FieldByName('qty_kirim').AsFloat > 0 then begin
          Cell[nxColTerkirim.Index,i].AsFloat :=
            Cell[nxColTerkirim.Index,i].AsFloat + q2.FieldByName('qty_kirim').AsFloat;
        end;
        q2.Close;

        // qty SPMB
        qSPMB := OpenRS('SELECT SUM(qty) AS qty FROM tbl_spmb_det WHERE no_so = ''%s'' ' +
          ' AND kode_brg = %s',
          [no_bukti, Cell[1,i].AsString]);
        Cell[nxColSPBB.Index,i].AsFloat := qSPMB.FieldByName('qty').AsFloat;
        Cell[nxColSPBB.Index,i].Color := clAqua;
        qSPMB.Close;

        Cell[nxColSisa.Index,i].AsFloat :=
          Cell[nxColDipesan.Index,i].AsFloat - Cell[nxColTerkirim.Index,i].AsFloat;

        zqrSODet.Next;
      end;
    end;

  except
  end;
  }
end;

procedure TFrmCariPO.nxGrdSODetAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if Assigned(mfSPBB) then begin
    if ACol = 0 then begin
      if nxGrdSODet.Cell[5,ARow].AsFloat = 0 then
        nxGrdSODet.Cell[0,ARow].AsBoolean := False;
    end;
  end;
end;

end.
