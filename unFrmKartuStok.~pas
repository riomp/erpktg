unit unFrmKartuStok;

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
  dxSkinXmas2008Blue, StdCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  cxDropDownEdit, cxCalendar, cxMaskEdit, cxSpinEdit, cxTextEdit, cxLabel, ZDataset,
  DB, ZAbstractRODataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  frxClass, Grids, DBGrids;

type
  TfrmKartuStok = class(TForm)
    cxLabel1: TcxLabel;
    cxtNamaBrg: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxLabel2: TcxLabel;
    cxtKategori: TcxTextEdit;
    cxLabel5: TcxLabel;
    Button1: TButton;
    cxLabel6: TcxLabel;
    zqrKartuStok: TZReadOnlyQuery;
    tblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsKS: TDataSource;
    tblViewno_bukti: TcxGridDBColumn;
    tblViewtanggal: TcxGridDBColumn;
    tblViewjenis: TcxGridDBColumn;
    tblViewjml_masuk: TcxGridDBColumn;
    tblViewjml_keluar: TcxGridDBColumn;
    tblViewstok_akhir: TcxGridDBColumn;
    tblViewqty: TcxGridDBColumn;
    tblViewgudang: TcxGridDBColumn;
    tblViewno_so: TcxGridDBColumn;
    tblViewno_spk: TcxGridDBColumn;
    tblViewno_spmb: TcxGridDBColumn;
    tblViewreferensi: TcxGridDBColumn;
    tblViewketerangan: TcxGridDBColumn;
    tblViewuser: TcxGridDBColumn;
    tblViewuser_dept: TcxGridDBColumn;
    tblViewdeskripsi: TcxGridDBColumn;
    tblViewtipe: TcxGridDBColumn;
    tblViewkategori: TcxGridDBColumn;
    tblViewsubkategori: TcxGridDBColumn;
    tblViewdivisi: TcxGridDBColumn;
    tblViewsatuan: TcxGridDBColumn;
    tblViewnama: TcxGridDBColumn;
    tblViewalamat: TcxGridDBColumn;
    cxlGudang: TcxLookupComboBox;
    zqrGdg: TZReadOnlyQuery;
    dsGdg: TDataSource;
    frxReport1: TfrxReport;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button2: TButton;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdCellColoring(Sender: TObject; ACol, ARow: Integer;
      var CellColor, GridColor: TColor; CellState: TCellState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    mKodeBrg: string;
  public
    property KodeBrg: string write mKodeBrg;
  end;

var
  frmKartuStok: TfrmKartuStok;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum;

{$R *.dfm}

procedure TfrmKartuStok.btnProsesClick(Sender: TObject);
var
  q, q1: TZQuery;
  g1, g2: real;
  i,j: integer;
  f: TFrmLapUmum;
  Memo: TfrxMemoView;
begin
  if cxlGudang.Text = '' then begin
    MsgBox('Pilih kode gudang.');
    cxlGudang.SetFocus;
  end
  else begin

    dm.zConn.ExecuteDirect('DELETE FROM tbl_tmp_ks WHERE `user2` = ''' + Aplikasi.NamaUser +
        ''' AND `host` = ''' + GetHostName2 + '''');

    dm.zConn.ExecuteDirect(
      Format('CALL sp_ks(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',
      [cxtKodeBrg.Text,
       DateToMySqlDate(cxdTgl1.Date),
       DateToMySqlDate(cxdTgl2.Date),
       Aplikasi.NamaUser,
       GetHostName2,
       cxlGudang.Text
      ])
    );

    f := TfrmLapUmum.Create(Self);
    with f.zqrKartuStok do begin
      if Active then Close;
      SQL.Text := 'SELECT * FROM _tmp_ks';
      Open;
    end;
    Memo := f.rptKartuStok.FindObject('Memo10') as TfrxMemoView;
    Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;

    q1 := OpenRS('SELECT * FROM _tmp_ks');
    DataSource1.DataSet := q1;

    q := OpenRS('SELECT sf_getstokawal2(''%s'',''%s'',''%s'') stkawal',
      [cxtKodeBrg.Text,
       cxlGudang.Text,
       FormatDateMySQL(cxdTgl1.Date-1)
      ]);

    Memo := f.rptKartuStok.FindObject('Init') as TfrxMemoView;
    Memo.Text := q.FieldByName('stkawal').AsString;
    Memo := f.rptKartuStok.FindObject('mmStokAwal') as TfrxMemoView;
    Memo.Text := q.FieldByName('stkawal').AsString;
    Memo := f.rptKartuStok.FindObject('Memo14') as TfrxMemoView;
    Memo.Text := 'Stok Awal ' + FormatDateTime('dd-MM-yyyy', cxdTgl1.Date);
    Memo := f.rptKartuStok.FindObject('mmGudang') as TfrxMemoView;
    Memo.Text := cxlGudang.Text + ' (' + GetNamaGudang(cxlGudang.Text) + ')';
    q.Close;

    f.rptKartuStok.ShowReport(True);
    f.Release;
  end;
end;

procedure TfrmKartuStok.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(aplikasi.TanggalServer);
  cxdTgl2.Date := LDOM(Aplikasi.TanggalServer);

  {
  zqrKartuStok.SQL.Text := 'SELECT * FROM v_ks ' +
    'WHERE kode_brg = :kode_brg AND gudang = :gudang ' +
    'AND tanggal BETWEEN :tgl1 AND :tgl2 ' +
    'ORDER BY kode_brg, tanggal';
  }

  //zqrKartuStok.SQL.Text := 'SELECT * FROM _tmp_ks ' +
  //  'WHERE kode_brg = :kode_brg AND gudang = :gudang ' +
  //  'AND tanggal BETWEEN :tgl1 AND :tgl2 ' +
  //  'ORDER BY kode_brg, tanggal';

  zqrKartuStok.SQL.Text := 'SELECT * FROM _tmp_ks ORDER BY kode_brg, tanggal';

  zqrKartuStok.ParamCheck;
  zqrGdg.Open;

end;

procedure TfrmKartuStok.nxGrdCellColoring(Sender: TObject; ACol,
  ARow: Integer; var CellColor, GridColor: TColor; CellState: TCellState);
begin
  if not(csSelected in CellState) then
  begin
    //if ARow mod 2 = 0 then CellColor := clSkyBlue;
  end;
end;

procedure TfrmKartuStok.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmKartuStok.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmKartuStok.FormShow(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
    [mKodeBrg]);
  cxtNamaBrg.Text := q.FieldByName('deskripsi').AsString;
  cxtKategori.Text := q.FieldByName('kategori').AsString;
  cxtKodeBrg.Text := mKodeBrg;
  q.Close;
  //btnProsesClick(nil);
end;

procedure TfrmKartuStok.Button2Click(Sender: TObject);
var
  q, q1: TZQuery;
  g1, g2: real;
  i,j: integer;
  f: TFrmLapUmum;
  Memo: TfrxMemoView;
begin
  dm.zConn.ExecuteDirect(
      Format('CALL sp_ks(%s,''%s'',''%s'',''%s'',''%s'',''%s'')',
      [cxtKodeBrg.Text,
       DateToMySqlDate(cxdTgl1.Date),
       DateToMySqlDate(cxdTgl2.Date),
       Aplikasi.NamaUser,
       GetHostName2,
       cxlGudang.Text
      ])
    );

  f := TfrmLapUmum.Create(Self);
    with f.zqrKartuStok do begin
      SQL.Text := 'SELECT * FROM _tmp_ks';
      if Active then Close;
      //ParamByName('gudang').AsString := cxlGudang.Text;
      //ParamByName('kode_brg').AsString := cxtKodeBrg.Text;
      //ParamByName('tgl1').AsDate := cxdTgl1.Date;
      //ParamByName('tgl2').AsDate := cxdTgl2.Date;
      Open;
    end;
    Memo := f.rptKartuStok.FindObject('Memo10') as TfrxMemoView;
    Memo.Text := cxdTgl1.Text + ' S/D ' + cxdTgl2.Text;

    q1 := OpenRS('SELECT * FROM _tmp_ks');
    DataSource1.DataSet := q1;

    q := OpenRS('SELECT sf_getstokawal2(%s,''%s'',''%s'') stkawal',
      [cxtKodeBrg.Text,
       cxlGudang.Text,
       FormatDateMySQL(cxdTgl1.Date-1)
      ]);

    Memo := f.rptKartuStok.FindObject('Init') as TfrxMemoView;
    Memo.Text := q.FieldByName('stkawal').AsString;
    Memo := f.rptKartuStok.FindObject('mmStokAwal') as TfrxMemoView;
    Memo.Text := q.FieldByName('stkawal').AsString;
    Memo := f.rptKartuStok.FindObject('Memo14') as TfrxMemoView;
    Memo.Text := 'Stok Awal ' + FormatDateTime('dd-MM-yyyy', cxdTgl1.Date);
    Memo := f.rptKartuStok.FindObject('mmGudang') as TfrxMemoView;
    Memo.Text := cxlGudang.Text + ' (' + GetNamaGudang(cxlGudang.Text) + ')';
    q.Close;

    f.rptKartuStok.ShowReport(True);
    f.Release;

end;

end.
