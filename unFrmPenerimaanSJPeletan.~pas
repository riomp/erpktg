unit unFrmPenerimaanSJPeletan;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox, cxContainer,
  ZAbstractRODataset, ZDataset, cxMemo, cxNavigator, StdCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, NxEdit, scExcelExport,
  cxGridExportLink, ShellAPI;

type
  TfrmPenerimaanSJPeletan = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
    cxNavigator1: TcxNavigator;
    Panel3: TPanel;
    btnRefresh: TButton;
    zqrPel: TZReadOnlyQuery;
    dsPel: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxSKuning: TcxStyle;
    cxSHijau: TcxStyle;
    cxSOlive: TcxStyle;
    cxStyle4: TcxStyle;
    cxGridDBTableView1no_po: TcxGridDBColumn;
    cxGridDBTableView1tgl_po: TcxGridDBColumn;
    cxGridDBTableView1ex_customer: TcxGridDBColumn;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1qty_po: TcxGridDBColumn;
    cxGridDBTableView1no_so: TcxGridDBColumn;
    cxGridDBTableView1no_sj: TcxGridDBColumn;
    cxGridDBTableView1tgl_sj: TcxGridDBColumn;
    cxGridDBTableView1qty_sj: TcxGridDBColumn;
    cxGridDBTableView1qty_baik: TcxGridDBColumn;
    cxGridDBTableView1qty_afkir: TcxGridDBColumn;
    cxGridDBTableView1qty_retur: TcxGridDBColumn;
    Button2: TButton;
    pnlPO_SPBB: TPanel;
    btnSimpan: TButton;
    btnBatal2: TButton;
    cxLabel3: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxlDeskripsi: TcxLookupComboBox;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLabel5: TcxLabel;
    cxsQty: TcxSpinEdit;
    cxlblafkir: TcxLabel;
    cxsAfkir: TcxSpinEdit;
    cxlblketerangan: TcxLabel;
    cxtketerangan: TcxTextEdit;
    cxlblDeskripsi2: TcxLabel;
    cxldeskripsi2: TcxLookupComboBox;
    cxlblqty2: TcxLabel;
    cxsQty2: TcxSpinEdit;
    cxlblretur: TcxLabel;
    cxsRetur: TcxSpinEdit;
    cxLabel6: TcxLabel;
    cxLUBrg: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxsQtyBaik: TcxSpinEdit;
    btnTambah: TButton;
    NxEdit1: TNxEdit;
    NxEdit2: TNxEdit;
    NxButtonEdit1: TNxButtonEdit;
    nxGrd: TNextGrid;
    NxImageColumn1: TNxImageColumn;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNmBrg: TNxTextColumn;
    nxColQtyBaik: TNxNumberColumn;
    nxColHarga: TNxNumberColumn;
    nxColSat: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    nxColKet: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    nxColLokasi: TNxTextColumn;
    nxColKondisi: TNxTextColumn;
    cxsTotalQty: TcxSpinEdit;
    Label5: TLabel;
    procedure btnProsesClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure btnBatal2Click(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cell(Sender: TObject; ACol, ARow: Integer);
    procedure btnCetakClick(Sender: TObject);
  private
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPenerimaanSJPeletan: TfrmPenerimaanSJPeletan;

implementation

uses unDm, unAplikasi, unTools, unFrmLapUmum;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CQTY : integer = 4;
  CSAT : Integer = 5;
  CSTOK_G02 : Integer = 6;
  CKET : Integer = 7;
  CKET2 : Integer = 8;

{$R *.dfm}

procedure TFrmPenerimaanSJPeletan.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmPenerimaanSJPeletan.btnProsesClick(Sender: TObject);
begin
  zqrPel.Close;
  zqrPel.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrPel.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrPel.Open;
end;

procedure TfrmPenerimaanSJPeletan.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPenerimaanSJPeletan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmPenerimaanSJPeletan.Button2Click(Sender: TObject);
begin
  zqrPel.Open;
  if  zqrPel.FieldByName('deskripsi').AsString = '' then begin
      Abort;
      zqrPel.Close;
  end;

  pnlPO_SPBB.Visible := True;
  cxtDeskripsi.Text := zqrPel.FieldByName('deskripsi').AsString;
  cxtketerangan.Text := zqrPel.FieldByName('ket').AsString;
  cxsQty.Value := zqrPel.FieldByName('qty_baik').AsFloat;
  cxsAfkir.Value := zqrPel.FieldByName('qty_afkir').AsFloat;
  cxsRetur.Value := zqrPel.FieldByName('qty_retur').AsFloat;
end;

procedure TfrmPenerimaanSJPeletan.btnBatal2Click(Sender: TObject);
begin
  pnlPO_SPBB.Visible := False;
  cxtDeskripsi.Text :='';
  cxlDeskripsi.text := '';
  cxldeskripsi2.Text :='';
  cxsQty.Text :='';
  cxsQty2.Value := 0;
  cxsAfkir.Text := '0';
  cxsRetur.Text := '0';
  nxGrd.ClearRows;
  cxsQtyBaik.Text :='0';
  nxGrd.AddRow();
  cxsTotalQty.Text := '0';
end;

procedure TfrmPenerimaanSJPeletan.btnSimpanClick(Sender: TObject);
var
    spbbhead, spbbdet, history, tbl_brg, brg : TZQuery;
    sNoTrans : string;
    sNoPB : string;
    jml : string;
    i : Integer;
begin

if cxsQty.EditValue <> cxsTotalQty.Value  then begin
   MsgBox('Total Qty yang diinput tidak sama dengan QTY SJ.');
   Abort;
end;

try

  sNoTrans := GetLastFak('spbb');
  UpdateFaktur(Copy(sNoTrans,1,9));

  sNoPB := GetLastFak('penerimaan');
  UpdateFaktur(Copy(sNoPB,1,7));

  dm.zConn.StartTransaction;

  spbbhead := OpenRS('select * from tbl_spbb_head WHERE no_bukti = ''%s''',[sNoTrans]);

  spbbhead.Insert;
  spbbhead.FieldByName('no_bukti').AsString := sNoTrans;
  spbbhead.FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
  spbbhead.FieldByName('no_penerimaan').AsString := sNoPB;
  spbbhead.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
  spbbhead.FieldByName('jam').AsString := aplikasi.JamString;
  spbbhead.FieldByName('keterangan').AsString := zqrPel.FieldByName('ket').AsString;
  spbbhead.FieldByName('user').AsString := aplikasi.NamaUser;
  spbbhead.FieldByName('user_dept').AsString := aplikasi.UserDept;
  spbbhead.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
  spbbhead.FieldByName('f_completed').AsInteger := 0;
  spbbhead.FieldByName('host').AsString := aplikasi.HostName;
  spbbhead.FieldByName('nopol').AsString := zqrPel.FieldByName('nopol').AsString;
  spbbhead.FieldByName('driver').AsString := zqrPel.FieldByName('driver').AsString;
  spbbhead.FieldByName('no_sj').AsString := zqrPel.FieldByName('no_sj').AsString;
  spbbhead.Post;
  spbbhead.Close;

    spbbdet := OpenRS('select * from tbl_spbb_det where no_bukti = ''%s''',[sNoTrans]);
    for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;

          spbbdet.Insert;
          spbbdet.FieldByName('no_bukti').AsString := sNoTrans;
          spbbdet.FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
          spbbdet.FieldByName('no_penerimaan').AsString := sNoPB;
          spbbdet.FieldByName('kode_brg').AsString:= nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          spbbdet.FieldByName('qty').AsString := nxGrd.Cell[nxColQtyBaik.Index,i].AsString;
          spbbdet.FieldByName('satuan').AsString := zqrPel.FieldByName('satuan').AsString;
          spbbdet.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
          spbbdet.FieldByName('keterangan').AsString := zqrPel.FieldByName('ket').AsString;
          spbbdet.FieldByName('f_posted').AsInteger := 1;
          spbbdet.FieldByName('mata_uang').AsString := zqrPel.FieldByName('mata_uang').AsString;
          spbbdet.FieldByName('lokasi').AsString := zqrPel.FieldByName('lokasi').AsString;
          spbbdet.FieldByName('no_so').AsString := zqrPel.FieldByName('no_so').AsString;
          spbbdet.Post;
    end;
    spbbdet.Close;

    //sNoPB := GetLastFak('penerimaan');
    //UpdateFaktur(Copy(sNoPB,1,7));

    history := OpenRS('select * from tbl_history WHERE no_bukti = ''%s''', [sNoPB]);
    with history do begin
      for i := 0 to nxGrd.RowCount - 1 do begin
          if nxGrd.Cell[CKD_BRG,i].AsString = '' then
            Continue;

            Insert;
            FieldByName('no_bukti').AsString := sNoPB;
            FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            FieldByName('kode_brg').AsString :=  nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
            FieldByName('tipe').AsString := 'IN_';
            FieldByName('qty').AsString := nxGrd.Cell[nxColQtyBaik.Index,i].AsString;
            FieldByName('satuan').AsString := zqrPel.FieldByName('satuan').AsString;
            FieldByName('gudang').AsString := 'G01';
            FieldByName('keterangan').AsString := zqrPel.FieldByName('keterangan').AsString;
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            FieldByName('no_sj').AsString := zqrPel.FieldByName('no_sj').AsString;
            FieldByName('no_so').AsString := zqrPel.FieldByName('no_so').AsString;
            Post;
      end;
      Close;
    end;

    for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
          brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
                 [nxGrd.Cell[nxColKodeBrg.Index,i].AsString]);
          brg.Edit;
          brg.FieldByName('stok').AsFloat := brg.FieldByName('stok').AsFloat + nxGrd.Cell[nxColQtyBaik.Index,i].AsFloat;
          brg.Post;
          brg.Close;
    end;

    for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
          tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
                 [nxGrd.Cell[nxColKodeBrg.Index,i].AsString , 'G01']);
          tbl_brg.Edit;
          tbl_brg.FieldByName('stok').AsFloat :=
            tbl_brg.FieldByName('stok').AsFloat + nxGrd.Cell[nxColQtyBaik.Index,i].AsFloat;
          tbl_brg.Post;
          tbl_brg.Close;
    end;

    // update f_terima_sj di tbl_po_head
    dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_terima_sj = 1 WHERE no_bukti = ''' +
      zqrPel.FieldByName('no_po').AsString + '''');

    dm.zConn.Commit;

    MsgBox('Data sudah disimpan dengan No. PB : ' + sNoPB);
    pnlPO_SPBB.Visible := False;
    cxtDeskripsi.Text :='';
    cxlDeskripsi.text := '';
    cxldeskripsi2.Text :='';
    cxsQty.Text :='';
    cxsQty2.Value := 0;
    cxsAfkir.Text := '0';
    cxsRetur.Text := '0';
    nxGrd.ClearRows;
    cxsQtyBaik.Text :='0';
    nxGrd.AddRow();
    cxsTotalQty.Text := '0';
    //btnProsesClick(Self);
    zqrPel.Close;
    zqrPel.ParamByName('tgl1').AsDate := cxdTgl1.Date - 365;
    zqrPel.ParamByName('tgl2').AsDate := cxdTgl2.Date;
    zqrPel.Open;
except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
end;

{
   // simpan PO - SPBB - Posting
  jml := cxsQty.Value + cxsQty2.Value;
  if (jml > zqrPel.FieldByName('qty_baik').AsString) then begin
    MsgBox('Total melebihi qty hasil baik.');
    Abort;
  end
  else if (jml < zqrPel.FieldByName('qty_baik').AsString) then begin
    MsgBox('Total tidak boleh kurang dari qty hasil baik.');
    Abort;
  end;

  if cxlDeskripsi.Text = '' then begin
    MsgBox('Deskripsi barang harus diisi.');
    Abort;
  end
  else if cxsQty.Value = 0 then begin
    MsgBox('Qty harus diisi.');
    Abort;
  end;

try

  sNoTrans := GetLastFak('spbb');
  UpdateFaktur(Copy(sNoTrans,1,9));

  dm.zConn.StartTransaction;
  spbbhead := OpenRS('select * from tbl_spbb_head WHERE no_bukti = ''%s''',[sNoTrans]);
  spbbhead.Insert;
  spbbhead.FieldByName('no_bukti').AsString := sNoTrans;
  spbbhead.FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
  spbbhead.FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
  spbbhead.FieldByName('jam').AsString := aplikasi.JamString;
  spbbhead.FieldByName('keterangan').AsString := zqrPel.FieldByName('ket').AsString;
  spbbhead.FieldByName('user').AsString := aplikasi.NamaUser;
  spbbhead.FieldByName('user_dept').AsString := aplikasi.UserDept;
  spbbhead.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
  spbbhead.FieldByName('f_completed').AsInteger := 0;
  spbbhead.FieldByName('host').AsString := aplikasi.HostName;
  spbbhead.FieldByName('nopol').AsString := zqrPel.FieldByName('nopol').AsString;
  spbbhead.FieldByName('driver').AsString := zqrPel.FieldByName('driver').AsString;
  spbbhead.FieldByName('no_sj').AsString := zqrPel.FieldByName('no_sj').AsString;
  spbbhead.Post;
  spbbhead.Close;

  spbbdet := OpenRS('select * from tbl_spbb_det where no_bukti = ''%s''',[sNoTrans]);
  spbbdet.Insert;
  spbbdet.FieldByName('no_bukti').AsString := sNoTrans;
  spbbdet.FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
  spbbdet.FieldByName('kode_brg').AsString:= cxlDeskripsi.EditValue;
  spbbdet.FieldByName('qty').AsString := cxsQty.Text;
  spbbdet.FieldByName('satuan').AsString := zqrPel.FieldByName('satuan').AsString;
  spbbdet.FieldByName('harga').AsFloat := zqrPel.FieldByName('harga').AsFloat;
  spbbdet.FieldByName('keterangan').AsString := zqrPel.FieldByName('ket').AsString;
  spbbdet.FieldByName('f_posted').AsInteger := 1;
  spbbdet.FieldByName('mata_uang').AsString := zqrPel.FieldByName('mata_uang').AsString;
  spbbdet.FieldByName('lokasi').AsString := zqrPel.FieldByName('lokasi').AsString;
  spbbdet.Post;
  spbbdet.Close;

    if (cxsQty.Value > 0) and (cxldeskripsi2.Text <> '') then begin
        spbbdet := OpenRS('select * from tbl_spbb_det where no_bukti = ''%s''',[sNoTrans]);
        spbbdet.Insert;
        spbbdet.FieldByName('no_bukti').AsString := sNoTrans;
        spbbdet.FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
        spbbdet.FieldByName('kode_brg').AsString:= cxlDeskripsi2.EditValue;
        spbbdet.FieldByName('qty').AsString := cxsQty2.Text;
        spbbdet.FieldByName('satuan').AsString := zqrPel.FieldByName('satuan').AsString;
        spbbdet.FieldByName('harga').AsFloat := zqrPel.FieldByName('harga').AsFloat;
        spbbdet.FieldByName('keterangan').AsString := zqrPel.FieldByName('ket').AsString;
        spbbdet.FieldByName('f_posted').AsInteger := 1;
        spbbdet.FieldByName('mata_uang').AsString := zqrPel.FieldByName('mata_uang').AsString;
        spbbdet.FieldByName('lokasi').AsString := zqrPel.FieldByName('lokasi').AsString;
        spbbdet.Post;
        spbbdet.Close;
    end;

  sNoPB := GetLastFak('penerimaan');
  UpdateFaktur(Copy(sNoPB,1,7));

  history := OpenRS('select * from tbl_history WHERE no_bukti = ''%s''', [sNoPB]);
  with history do begin
  Insert;
  FieldByName('no_bukti').AsString := sNoPB;
  FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
  FieldByName('jam').AsDateTime := aplikasi.ServerTime;
  FieldByName('kode_brg').AsString :=  cxlDeskripsi.EditValue;
  FieldByName('tipe').AsString := 'IN_';
  FieldByName('qty').AsString := cxsQty.Text;
  FieldByName('satuan').AsString := zqrPel.FieldByName('satuan').AsString;
  FieldByName('gudang').AsString := 'G01';
  FieldByName('keterangan').AsString := zqrPel.FieldByName('keterangan').AsString;
  FieldByName('user').AsString := Aplikasi.NamaUser;
  FieldByName('user_dept').AsString := Aplikasi.UserDept;
  FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
  FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
  FieldByName('no_sj').AsString := zqrPel.FieldByName('no_sj').AsString;
  Post;
  Close;
  end;


    if (cxsQty.Value > 0) and (cxldeskripsi2.Text <> '') then begin
        history := OpenRS('select * from tbl_history WHERE no_bukti = ''%s''', [sNoPB]);
        with history do begin
        Insert;
        FieldByName('no_bukti').AsString := sNoPB;
        FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        FieldByName('jam').AsDateTime := aplikasi.ServerTime;
        FieldByName('kode_brg').AsString :=  cxlDeskripsi2.EditValue;
        FieldByName('tipe').AsString := 'IN_';
        FieldByName('qty').AsString := cxsQty2.Text;
        FieldByName('satuan').AsString := zqrPel.FieldByName('satuan').AsString;
        FieldByName('gudang').AsString := 'G01';
        FieldByName('keterangan').AsString := zqrPel.FieldByName('keterangan').AsString;
        FieldByName('user').AsString := Aplikasi.NamaUser;
        FieldByName('user_dept').AsString := Aplikasi.UserDept;
        FieldByName('no_po').AsString := zqrPel.FieldByName('no_po').AsString;
        FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        FieldByName('no_sj').AsString := zqrPel.FieldByName('no_sj').AsString;
        Post;
        Close;
        end;
    end;

  brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
         [cxlDeskripsi.EditValue]);
  brg.Edit;
  brg.FieldByName('stok').AsFloat := brg.FieldByName('stok').AsFloat + cxsQty.Value;
  brg.Post;
  brg.Close;

  tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
         [cxlDeskripsi.EditValue , 'G01']);
  tbl_brg.Edit;
  tbl_brg.FieldByName('stok').AsFloat :=
    tbl_brg.FieldByName('stok').AsFloat + cxsQty.Value;
  tbl_brg.Post;
  tbl_brg.Close;

    if (cxsQty.Value > 0) and (cxldeskripsi2.Text <> '') then begin
        brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
             [cxlDeskripsi2.EditValue]);
        brg.Edit;
        brg.FieldByName('stok').AsFloat := brg.FieldByName('stok').AsFloat + cxsQty2.Value;
        brg.Post;
        brg.Close;

        tbl_brg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
               [cxldeskripsi2.EditValue , 'G01']);
        tbl_brg.Edit;
        tbl_brg.FieldByName('stok').AsFloat :=
          tbl_brg.FieldByName('stok').AsFloat + cxsQty2.Value;
        tbl_brg.Post;
        tbl_brg.Close;
    end;

  // update f_terima_sj di tbl_po_head
  dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_terima_sj = 1 WHERE no_bukti = ''' +
    zqrPel.FieldByName('no_po').AsString + '''');

  dm.zConn.Commit;
  MsgBox('Data sudah disimpan');
  pnlPO_SPBB.Visible :=False;
  cxtDeskripsi.Text :='';
  cxlDeskripsi.text := '';
  cxldeskripsi2.Text :='';
  cxsQty.Text :='';
  cxsQty2.Text :='0';
  cxsAfkir.Text := '0';
  cxsRetur.Text := '0';
  btnProsesClick(Self);

except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
end;
}
end;

procedure TfrmPenerimaanSJPeletan.FormCreate(Sender: TObject);
begin
  
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  zqrPel.Close;
  zqrPel.ParamByName('tgl1').AsDate := cxdTgl1.Date - 365;
  zqrPel.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrPel.Open;

  zqrBrg.Open;

end;

function TFrmPenerimaanSJPeletan.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd.Cell[CKD_BRG,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TfrmPenerimaanSJPeletan.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin

  if cxLUBrg.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end
  else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' + sKodeBrg + '''');

    nxGrd.Cell[nxColNmBrg.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQtyBaik.Index,ARow].AsFloat := cxsQtyBaik.Value;
    nxGrd.Cell[nxColHarga.Index,ARow].AsFloat := 0;
    nxGrd.Cell[nxColQtyBaik.Index,ARow].Color := clSkyBlue;
    nxGrd.Cell[nxColHarga.Index,ARow].Color := clSkyBlue;
    
    HitungTotal;
    nxGrd.SelectCell(nxColKodeBrg.Index, nxGrd.LastAddedRow);
    nxGrd.SelectLastRow();

    q.Close;
    nxGrd.AddRow();
  end;

end;

procedure TFrmPenerimaanSJPeletan.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[CQTY,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
end;

procedure TFrmPenerimaanSJPeletan.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  nxGrd.ClearRows;
  nxGrd.AddRow;
end;


procedure TfrmPenerimaanSJPeletan.cell(Sender: TObject; ACol,
  ARow: Integer);
begin
   if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin

          nxGrd.DeleteRow(nxGrd.SelectedRow);
          nxNoUrut.Refresh();
          HitungTotal;
          if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end;

  end;
end;

procedure TfrmPenerimaanSJPeletan.btnCetakClick(Sender: TObject);
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

end.
