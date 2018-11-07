unit unFrmMstBarang;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, DB, ZAbstractRODataset,
  ZDataset, cxSpinEdit, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ComCtrls, StdCtrls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxCalendar, cxCheckBox;

type
  TfrmMstBarang = class(TForm)
    cxLabel1: TcxLabel;
    cxLUNamaBrg: TcxLookupComboBox;
    zqNamaBrg: TZReadOnlyQuery;
    ds: TDataSource;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    nxGrdStokGdg: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxIncrementColumn1: TNxIncrementColumn;
    cxLabel2: TcxLabel;
    NxTextColumn2: TNxNumberColumn;
    cxsStokTot: TcxSpinEdit;
    btnKeluar: TButton;
    btnProses: TButton;
    zqrG01: TZReadOnlyQuery;
    dsG01: TDataSource;
    zqrG02: TZReadOnlyQuery;
    dsG02: TDataSource;
    cxLabel5: TcxLabel;
    cxsStokAwal: TcxSpinEdit;
    btnClear: TButton;
    cxLabel6: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProsesMut: TButton;
    TabSheet3: TTabSheet;
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
    cxGridLevel2: TcxGridLevel;
    TabSheet4: TTabSheet;
    cxGrid4: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
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
    cxGridLevel3: TcxGridLevel;
    cxLabel8: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxdTglLastTrs: TcxDateEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxtSatuan: TcxTextEdit;
    TabSheet5: TTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridDBColumn29: TcxGridDBColumn;
    cxGridDBColumn30: TcxGridDBColumn;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    zqrG03: TZReadOnlyQuery;
    dsG03: TDataSource;
    ScrollBox1: TScrollBox;
    cxLabel3: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrdG01: TcxGridDBTableView;
    cxGrdG01tanggal: TcxGridDBColumn;
    cxGrdG01no_bukti: TcxGridDBColumn;
    cxGrdG01qty: TcxGridDBColumn;
    cxGrdG01tipe: TcxGridDBColumn;
    cxGrdG01no_so: TcxGridDBColumn;
    cxGrdG01no_spk: TcxGridDBColumn;
    cxGrdG01no_spmb: TcxGridDBColumn;
    cxGrdG01referensi: TcxGridDBColumn;
    cxGrdG01keterangan: TcxGridDBColumn;
    cxGrdG01user: TcxGridDBColumn;
    cxGrdG01user_dept: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel4: TcxLabel;
    cxGrid2: TcxGrid;
    cxGrdG02: TcxGridDBTableView;
    cxGrdG02tanggal: TcxGridDBColumn;
    cxGrdG02no_bukti: TcxGridDBColumn;
    cxGrdG02qty: TcxGridDBColumn;
    cxGrdG02tipe: TcxGridDBColumn;
    cxGrdG02no_so: TcxGridDBColumn;
    cxGrdG02no_spk: TcxGridDBColumn;
    cxGrdG02no_spmb: TcxGridDBColumn;
    cxGrdG02referensi: TcxGridDBColumn;
    cxGrdG02keterangan: TcxGridDBColumn;
    cxGrdG02user: TcxGridDBColumn;
    cxGrdG02user_dept: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel12: TcxLabel;
    cxGrid6: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxChkCariKode: TcxCheckBox;
    cxLabel13: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    TabSheet6: TTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridDBColumn50: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxLabel14: TcxLabel;
    cxGrid8: TcxGrid;
    cxGridDBTableView6: TcxGridDBTableView;
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
    cxGridLevel7: TcxGridLevel;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    DataSource1: TDataSource;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnProsesMutClick(Sender: TObject);
    procedure btnEditBrgClick(Sender: TObject);
    procedure cxChkCariKodeClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmMstBarang: TfrmMstBarang;

implementation

uses unDm, unAplikasi, unTools, unFrmMstBrg;

{$R *.dfm}

procedure TFrmMstBarang.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmMstBarang.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMstBarang.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  if cxLUNamaBrg.Text <> '' then begin
    cxtKodeBrg.Text := zqNamaBrg.FieldByName('kode').AsString;
    cxsStokTot.Value := zqNamaBrg.FieldByName('stok').AsFloat;
    cxtSatuan.Text := zqNamaBrg.FieldByName('satuan').AsString;
    cxtDeskripsi.Text := zqNamaBrg.FieldByName('deskripsi').AsString;

    q := OpenRS('SELECT a.*, b.nama as nama_gudang, b.kode FROM tbl_barang_det a, tbl_gudang b WHERE ' +
      'a.kode_gdg = b.kode AND ' +
      'a.kode_brg = %s ' +
      'ORDER BY b.kode',
      [zqNamaBrg.FieldByName('kode').AsString]);
      
    nxGrdStokGdg.ClearRows;
    while not q.Eof do begin
      i := nxGrdStokGdg.AddRow();
      nxGrdStokGdg.Cell[1,i].AsString := q.FieldByName('nama_gudang').AsString;
      nxGrdStokGdg.Cell[2,i].AsFloat := q.FieldByName('stok').AsFloat;
      q.Next;
    end;
    q.Close;

    // get stok awal
    q := OpenRS('SELECT * FROM tbl_stkawal WHERE kode = %s ',
      [zqNamaBrg.FieldByName('kode').AsString]);
    cxsStokAwal.Value := q.FieldByName('stokawal').AsFloat;
    q.Close;

    // get tanggal terbesar
    q := OpenRS('SELECT MAX(tanggal) AS tanggal FROM tbl_history ' +
      'WHERE kode_brg = ''%s''',
      [cxtKodeBrg.Text]);
    if not q.FieldByName('tanggal').IsNull then
      cxdTglLastTrs.Date := q.FieldByName('tanggal').AsDateTime;
    q.Close;

  end;
end;

procedure TfrmMstBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmMstBarang.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  pg.ActivePageIndex := 0;
  cxdTgl1.Date := unTools.FDOM(Aplikasi.TanggalServer);
  cxdTgl2.Date := unTools.LDOM(Aplikasi.TanggalServer);
end;

procedure TfrmMstBarang.btnClearClick(Sender: TObject);
begin
  cxLUNamaBrg.Text := '';
  cxtDeskripsi.Text := '';
  cxsStokTot.Text := '';
  cxsStokAwal.Text := '';
  nxGrdStokGdg.ClearRows;
  cxtKodeBrg.Text := '';
  cxdTglLastTrs.Text := '';
  cxtSatuan.Text := '';
  zqrG01.Close;
  zqrG02.Close;
end;

procedure TfrmMstBarang.btnProsesMutClick(Sender: TObject);
begin

  if Trim(cxLUNamaBrg.Text) = '' then Abort; 

  if zqrG01.Active then zqrG01.Close;
  zqrG01.ParamByName('kode_brg').AsString := zqNamaBrg.FieldByName('kode').AsString;
  zqrG01.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrG01.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrG01.Open;

  if zqrG02.Active then zqrG02.Close;
  zqrG02.ParamByName('kode_brg').AsString := zqNamaBrg.FieldByName('kode').AsString;
  zqrG02.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrG02.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrG02.Open;

  if zqrG03.Active then zqrG03.Close;
  zqrG03.ParamByName('kode_brg').AsString := zqNamaBrg.FieldByName('kode').AsString;
  zqrG03.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrG03.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrG03.Open;

end;

procedure TfrmMstBarang.btnEditBrgClick(Sender: TObject);
var
  f: TfrmMstBrg;
begin
  f := TfrmMstBrg.Create(Self);
  f.ShowModal;
end;

procedure TfrmMstBarang.cxChkCariKodeClick(Sender: TObject);
begin
  if cxChkCariKode.Checked then begin
    with cxLUNamaBrg do begin
      Properties.ListColumns.Clear;
      Properties.ListColumns.Add;
      Properties.ListColumns.Add;
      Properties.ListColumns.Add;
      Properties.ListColumns.Items[0].FieldName := 'kode';
      Properties.ListColumns.Items[0].Caption := 'Kode';
      Properties.ListColumns.Items[1].FieldName := 'deskripsi';
      Properties.ListColumns.Items[1].Caption := 'Deskripsi';
      Properties.ListColumns.Items[2].FieldName := 'stok';
      Properties.ListColumns.Items[2].Caption := 'Stok';
    end;
  end
  else begin
    with cxLUNamaBrg do begin
      Properties.ListColumns.Clear;
      Properties.ListColumns.Add;
      Properties.ListColumns.Add;
      Properties.ListColumns.Add;
      Properties.ListColumns.Items[0].FieldName := 'deskripsi';
      Properties.ListColumns.Items[0].Caption := 'Deskripsi';
      Properties.ListColumns.Items[1].FieldName := 'kode';
      Properties.ListColumns.Items[1].Caption := 'Kode';
      Properties.ListColumns.Items[2].FieldName := 'stok';
      Properties.ListColumns.Items[2].Caption := 'Stok';
    end;
  end;
end;

end.
