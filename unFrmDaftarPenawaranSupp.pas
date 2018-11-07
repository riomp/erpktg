unit unFrmDaftarPenawaranSupp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ExtCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ZAbstractRODataset, ZDataset, cxCheckBox;

type
  TfrmDaftarPenawarranSupp = class(TfrmTplTrans)
    ScrollBox1: TScrollBox;
    cxGrid1: TcxGrid;
    cxTblFobj: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxTblPenawaranSuppH: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid3: TcxGrid;
    cxTblPenawaranSuppD: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxLabel3: TcxLabel;
    zqrFOBJ: TZReadOnlyQuery;
    dsFOBJ: TDataSource;
    cxLabel4: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxTblFobjno_bukti: TcxGridDBColumn;
    cxTblFobjtanggal: TcxGridDBColumn;
    cxTblFobjtgl_diperlukan: TcxGridDBColumn;
    cxTblFobjjam: TcxGridDBColumn;
    cxTblFobjdiajukan_oleh: TcxGridDBColumn;
    cxTblFobjdiajukan_dept: TcxGridDBColumn;
    cxTblFobjlevel_kebutuhan: TcxGridDBColumn;
    cxTblFobjuser: TcxGridDBColumn;
    cxTblFobjuser_dept: TcxGridDBColumn;
    cxTblFobjtgl_input: TcxGridDBColumn;
    btnProses: TButton;
    zqrPenawaranSuppH: TZReadOnlyQuery;
    dsPenawaranSuppH: TDataSource;
    cxTblPenawaranSuppHnama: TcxGridDBColumn;
    cxTblPenawaranSuppHno_fobj: TcxGridDBColumn;
    cxTblPenawaranSuppHno_bukti: TcxGridDBColumn;
    cxTblPenawaranSuppHkode_supp: TcxGridDBColumn;
    cxTblPenawaranSuppHtanggal: TcxGridDBColumn;
    cxTblPenawaranSuppHuser: TcxGridDBColumn;
    cxTblPenawaranSuppHuser_dept: TcxGridDBColumn;
    cxTblPenawaranSuppHf_pilih: TcxGridDBColumn;
    zqrPenawaranSuppD: TZReadOnlyQuery;
    dsPenawaranSuppD: TDataSource;
    cxTblPenawaranSuppDkode_brg: TcxGridDBColumn;
    cxTblPenawaranSuppDdeskripsi: TcxGridDBColumn;
    cxTblPenawaranSuppDqty: TcxGridDBColumn;
    cxTblPenawaranSuppDharga: TcxGridDBColumn;
    btnPilihSupp: TButton;
    cxTblPenawaranSuppDColumn1: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    zqrPen: TZReadOnlyQuery;
    dsPen: TDataSource;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1harga: TcxGridDBColumn;
    cxGridDBTableView1mata_uang: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure cxTblFobjFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTblPenawaranSuppHFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnPilihSuppClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarPenawarranSupp: TfrmDaftarPenawarranSupp;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmDaftarPenawarranSupp.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarPenawarranSupp.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrFOBJ do begin
    if Active then Close;
    ParamByName('tgl1').AsDate := cxdTgl1.Date;
    ParamByName('tgl2').AsDate := cxdTgl2.Date;
    Open;
  end;
end;

procedure TfrmDaftarPenawarranSupp.cxTblFobjFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  with zqrPen do begin
    if Active then Close;
    ParamByName('no_fobj').AsString := zqrFOBJ.FieldByName('no_bukti').AsString;
    Open;
  end;
  {
  with zqrPenawaranSuppH do begin
    if Active then Close;
    ParamByName('no_fobj').AsString := zqrFOBJ.FieldByName('no_bukti').AsString;
    Open;
  end;
  }
end;

procedure TfrmDaftarPenawarranSupp.cxTblPenawaranSuppHFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  with zqrPenawaranSuppD do begin
    if Active then Close;
    ParamByName('no_bukti').AsString := zqrPenawaranSuppH.FieldByName('no_bukti').AsString;
    Open;
  end;
end;

procedure TfrmDaftarPenawarranSupp.btnPilihSuppClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;

  // cek apakah sudah ada supplier yang dipilih dari nomer FOBJ ini
  q := OpenRS('SELECT * FROM tbl_penawaran_det WHERE no_fobj = ''%s'' AND f_pilih = 1 AND kode_brg = %s',
    [zqrFOBJ.FieldByName('no_bukti').AsString, zqrPen.FieldByName('kode_brg').AsString]);
  if not q.IsEmpty then begin
    MsgBox('FOBJ ini dan item ini sudah ada penawaran supplier yang dipilih.');
    q.Close;
    Abort;
  end;
  q.Close;

  try
    dm.zConn.StartTransaction;

    dm.zConn.ExecuteDirect('UPDATE tbl_penawaran_det SET f_pilih = 1 ' +
      'WHERE no_bukti = ''' +
      zqrPen.FieldByName('no_bukti').AsString + ''' AND '  +
      'kode_brg = ' + zqrPen.FieldByName('kode_brg').AsString);

    dm.zConn.Commit;

    MsgBox('Supplier : ' + zqrPenawaranSuppH.FieldByName('nama').AsString +
      ' dipilih untuk FOBJ : ' + zqrFOBJ.FieldByName('no_bukti').AsString);

    zqrPen.Close;
    zqrPen.Open;

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;

  {
  // cek apakah sudah ada supplier yang dipilih dari nomer FOBJ ini
  q := OpenRS('SELECT * FROM tbl_penawaran_head WHERE no_fobj = ''%s'' AND f_pilih = 1',
    [zqrFOBJ.FieldByName('no_bukti').AsString]);
  if not q.IsEmpty then begin
    MsgBox('FOBJ ini sudah ada penawaran supplier yang dipilih.');
    q.Close;
    Abort;
  end;
  q.Close;

  try
    dm.zConn.StartTransaction;

    dm.zConn.ExecuteDirect('UPDATE tbl_penawaran_head SET f_pilih = 1 ' +
      'WHERE no_bukti = ''' +
      zqrPenawaranSuppH.FieldByName('no_bukti').AsString + '''');

    dm.zConn.Commit;

    MsgBox('Supplier : ' + zqrPenawaranSuppH.FieldByName('nama').AsString +
      ' dipilih untuk FOBJ : ' + zqrFOBJ.FieldByName('no_bukti').AsString);

    zqrPenawaranSuppH.Close;
    zqrPenawaranSuppH.Open;

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
  }
end;

end.
