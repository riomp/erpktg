unit unFrmBtlTrans;

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
  dxSkinXmas2008Blue, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel, StdCtrls, DB,
  ZAbstractRODataset, ZDataset;

type
  TfrmBtlTrans = class(TForm)
    cxLabel1: TcxLabel;
    cxcJenisTrans: TcxComboBox;
    cxlNoBukti: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxLabel3: TcxLabel;
    cxlUser: TcxLookupComboBox;
    btnBatal: TButton;
    zqrTrsMasuk: TZReadOnlyQuery;
    dsTrsMasuk: TDataSource;
    zqrTrsKeluar: TZReadOnlyQuery;
    dsTrsKeluar: TDataSource;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    dsTrsMutasi: TDataSource;
    zqrUser: TZReadOnlyQuery;
    dsUser: TDataSource;
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxcJenisTransPropertiesChange(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBtlTrans: TfrmBtlTrans;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmBtlTrans.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmBtlTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmBtlTrans.FormCreate(Sender: TObject);
begin
  cxcJenisTrans.Properties.Items.Add('TRANSAKSI MASUK');
  cxcJenisTrans.Properties.Items.Add('TRANSAKSI KELUAR');
  cxcJenisTrans.Properties.Items.Add('TRANSAKSI MUTASI');
  cxcJenisTrans.ItemIndex := 0;
end;

procedure TfrmBtlTrans.cxcJenisTransPropertiesChange(Sender: TObject);
begin
  if cxcJenisTrans.Text = 'TRANSAKSI MASUK' then begin
    cxlNoBukti.Properties.ListSource := dsTrsMasuk;
  end
  else if cxcJenisTrans.Text = 'TRANSAKSI KELUAR' then begin
    cxlNoBukti.Properties.ListSource := dsTrsKeluar;
  end
  else if cxcJenisTrans.Text = 'TRANSAKSI MUTASI' then begin
    cxlNoBukti.Properties.ListSource := dsTrsMutasi;
  end;
  cxlNoBukti.Text := '';
end;

procedure TfrmBtlTrans.btnProsesClick(Sender: TObject);
var
  q, q2: TZQuery;
  tbl: TZTable;
  s1, s2, sql: string;
begin
  if cxlUser.Text = '' then begin
    cxlUser.SetFocus;
    Abort;
  end;

  try
    dm.zConn.StartTransaction;

    if cxcJenisTrans.Text = 'TRANSAKSI MASUK' then begin
      s1 := 'tbl_trsmasuk_head';
      s2 := 'tbl_trsmasuk_det';
    end
    else if cxcJenisTrans.Text = 'TRANSAKSI KELUAR' then begin
      s1 := 'tbl_trskeluar_head';
      s2 := 'tbl_trskeluar_det';
    end
    else if cxcJenisTrans.Text = 'TRANSAKSI MUTASI' then begin
      s1 := 'tbl_trsmutasi_head';
      s2 := 'tbl_trsmutasi_det';
    end;

    q := OpenRS('SELECT * FROM %s WHERE no_bukti = ''%s''',
      [s1, cxlNoBukti.Text]);
    q2 := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',
      [cxlNoBukti.Text]);

    tbl := OpenTbl('tbl_batal_trans');
    tbl.Insert;
    tbl.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
    tbl.FieldByName('tanggal').AsDateTime := q.FieldByName('tanggal').AsDateTime;
    tbl.FieldByName('tanggal_batal').AsDateTime := Aplikasi.TanggalServer;
    tbl.FieldByName('user_batal').AsString := cxlUser.Text;
    tbl.FieldByName('user_trans').AsString := q.FieldByName('user').AsString;
    tbl.FieldByName('dept_trans').AsString := q.FieldByName('user_dept').AsString;
    tbl.Post;
    tbl.Close;
    q.Close;

    tbl := OpenTbl('tbl_batal_trans_det');
    while not q2.Eof do begin
      tbl.Insert;
      tbl.FieldByName('no_bukti').AsString := q2.FieldByName('no_bukti').AsString;
      tbl.FieldByName('tanggal').AsDateTime := q2.FieldByName('tanggal').AsDateTime;
      tbl.FieldByName('kode_brg').AsInteger := q2.FieldByName('kode_brg').AsInteger;
      tbl.FieldByName('tipe').AsString := q2.FieldByName('tipe').AsString;
      tbl.FieldByName('qty').AsFloat := q2.FieldByName('qty').AsFloat;
      tbl.FieldByName('gudang').AsString := q2.FieldByName('qty').AsString;
      tbl.FieldByName('referensi').AsString := '';
      tbl.FieldByName('keterangan').AsString := q2.FieldByName('keterangan').AsString;
      tbl.FieldByName('user').AsString := q2.FieldByName('user').AsString;
      tbl.FieldByName('user_dept').AsString := q2.FieldByName('user_dept').AsString;
      tbl.FieldByName('no_so').AsString := q2.FieldByName('no_so').AsString;
      tbl.FieldByName('no_spk').AsString := q2.FieldByName('no_spk').AsString;
      tbl.FieldByName('no_spmb').AsString := q2.FieldByName('no_spmb').AsString;
      tbl.FieldByName('no_ccr').AsString := q2.FieldByName('no_ccr').AsString;
      tbl.Post;
      q2.Next;
    end;
    tbl.Close;
    q2.Close;

    dm.zConn.ExecuteDirect('DELETE FROM ' + s1 + ' WHERE no_bukti = ''' + cxlNoBukti.Text + '''');
    dm.zConn.ExecuteDirect('DELETE FROM ' + s2 + ' WHERE no_bukti = ''' + cxlNoBukti.Text + '''');
    dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxlNoBukti.Text + '''');

    dm.zConn.Commit;
    MsgBox('Pembatalan transaksi berhasil.');
    Close;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;

end;

end.
