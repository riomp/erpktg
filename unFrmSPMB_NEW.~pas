unit unFrmSPMB_NEW;

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
  dxSkinValentine, dxSkinXmas2008Blue, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit,
  cxLabel, ZDataset, DB, NxEdit, PBNumEdit, cxMaskEdit, cxSpinEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckBox, cxMemo, Math,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText;

type
  TfrmSPMB_NEW = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariPO: TButton;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    nxColQTy: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKet: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbGdg: TcxComboBox;
    cxtNamaGdg: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    btnTambah: TButton;
    NxEdit2: TNxEdit;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    NxTextColumn7: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    cxLabel4: TcxLabel;
    cxtNoDok: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtDriver: TcxTextEdit;
    NxNumberColumn3: TNxNumberColumn;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxLUCust: TcxLookupComboBox;
    cxLabel9: TcxLabel;
    cxlNoSO: TcxLookupComboBox;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    btnCetakSJ: TButton;
    cxChkSudahSJ: TcxCheckBox;
    cxtNoSJ: TcxTextEdit;
    cxLabel10: TcxLabel;
    btnCetakSPMB: TButton;
    nxColNoSO: TNxTextColumn;
    cxLabel7: TcxLabel;
    NxNumberColumn4: TNxNumberColumn;
    NxEdit3: TNxEdit;
    btnCariCust: TButton;
    btnHapusSPMB: TButton;
    cxLabel11: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    NxTextColumn5: TNxTextColumn;
    btnAmbilKet: TButton;
    cxChkTampilSPMBAll: TcxCheckBox;
    pnlMemo: TPanel;
    btnSimpanKet: TButton;
    btnBatalMemo: TButton;
    cxMemo: TcxMemo;
    btnShowMemo: TButton;
    cxMemo2: TcxMemo;
    nxColBeratTot: TNxNumberColumn;
    nxColBaik: TNxNumberColumn;
    nxColAfkir: TNxNumberColumn;
    nxColRetur: TNxNumberColumn;
    nxBtnEdit: TNxButtonEdit;
    cxLabel12: TcxLabel;
    cxdTglRencKirim: TcxDateEdit;
    ListBox1: TListBox;
    Button1: TButton;
    cxlArmada: TcxLookupComboBox;
    cxlDriver: TcxLookupComboBox;
    zqrArmada: TZReadOnlyQuery;
    dsArmada: TDataSource;
    cxChkSopirLuar: TcxCheckBox;
    zqrSopir: TZReadOnlyQuery;
    dsSopir: TDataSource;
    cxLabel13: TcxLabel;
    cxsOngkir: TcxSpinEdit;
    nxColNoPO: TNxTextColumn;
    zqrCekSOPlt: TZReadOnlyQuery;
    idSMTP: TIdSMTP;
    cxChkPPN: TcxCheckBox;
    cxsPPN: TcxSpinEdit;
    Label3: TLabel;
    cxLabel14: TcxLabel;
    cxChkWhlMuat: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxlNoSOPropertiesEditValueChanged(Sender: TObject);
    procedure btnCetakSJClick(Sender: TObject);
    procedure btnCetakSPMBClick(Sender: TObject);
    procedure btnCariCustClick(Sender: TObject);
    procedure btnHapusSPMBClick(Sender: TObject);
    procedure btnAmbilKetClick(Sender: TObject);
    procedure cxChkTampilSPMBAllClick(Sender: TObject);
    procedure btnSimpanKetClick(Sender: TObject);
    procedure btnBatalMemoClick(Sender: TObject);
    procedure cxMemoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxMemo2Exit(Sender: TObject);
    procedure btnShowMemoClick(Sender: TObject);
    procedure nxBtnEditButtonClick(Sender: TObject);
    procedure cxdTglRencKirimPropertiesEditValueChanged(Sender: TObject);
    procedure cxChkSopirLuarClick(Sender: TObject);
    procedure cxChkPPNClick(Sender: TObject);
  private
    mTblTmp: TZTable;
    mUserDept: string;
    bWewenangGantiTanggal: boolean;
    mJnsSPMB: string;
    mLstAfkir, mLstRetur: TStringList;
    procedure CetakSuratJalan;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure UpdateSOTerbuka(sNoSPMB: string);
    procedure UpdateSOTerbukaPlt(sNoSPMB: string);
    procedure HitungBeratTotal;
    procedure CollectList(lst: TStringList; jenis: string);
    procedure UpdateDetPel;
    procedure UpdateTotQtyPel;
  public
    property UserDept: string read mUserDept write mUserDept;
    property JenisSPMB: string write mJnsSPMB;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real); overload;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02, qb, qa, qr: real); overload;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: Real; sJenis: string); overload;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SendEmailSOCompleted(sNoSO: string);
  end;

var
  frmSPMB_NEW: TFrmSPMB_NEW;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSO, unFrmSJ,
  unFrmLapUmum, unFrmEditQtySO, unAplikasi, unFrmDetHslPel;

const
  CHAPUS : integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNO_SO : Integer = 3;
  CNM_BRG : integer = 4;
  CQTY : integer = 5;

  CBAIK : Integer = 6;
  CAFKIR : Integer = 7;
  CRETUR : Integer = 8;

  CSAT : Integer = 9;
  CQTY_SO : Integer = 10;
  CQTY_KIRIM : Integer = 11;
  CQTY_G02 : Integer = 12;
  CKET : Integer = 14;
  CKET_HRG : Integer = 15;

{$R *.dfm}

procedure TFrmSPMB_NEW.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmSPMB_NEW.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  aplikasi.log_('SPMB');
  
  btnCariPO.Visible := False;
  cxdTglTrs.EditValue := Aplikasi.TanggalServer;

  // collect gudang          
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.fieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  // lookup items nopol
  //q := OpenRS('SELECT * FROM tbl_nopol ORDER BY nopol');
  q := OpenRS('SELECT DISTINCT nopol FROM tbl_spmb_head ORDER BY nopol');
  while not q.Eof do begin
    cxtNopol.Properties.LookupItems.Add(q.FieldByName('nopol').AsString);
    q.Next;
  end;
  q.Close;

  // lookup items driver
  //q := OpenRS('SELECT * FROM tbl_sopir ORDER BY nama');
  q := OpenRS('SELECT DISTINCT driver FROM tbl_spmb_head ORDER BY driver');
  while not q.Eof do begin
    //cxtDriver.Properties.LookupItems.Add(q.FieldByName('nama').AsString);
    cxtDriver.Properties.LookupItems.Add(q.FieldByName('driver').AsString);
    q.Next;
  end;
  q.Close;

  // setting wewenang edit tanggal SPMB
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' ' +
    'AND nm_comp = ''EditTglSPMB''',
    [Aplikasi.NamaUser]);
  if q.IsEmpty then
    cxdTglTrs.Properties.ReadOnly := True
  else
    if q.FieldByName('wwn').AsString = '0' then
      cxdTglTrs.Properties.ReadOnly := True
    else
      cxdTglTrs.Properties.ReadOnly := False;
  q.Close;
  bWewenangGantiTanggal := cxdTglTrs.Properties.ReadOnly;

  if aplikasi.GetWewenang('EditSPMB') = '1' then begin
    cxLabel7.Visible := True;
    cxlNoBukti.Visible := True;
    btnEdit2.Visible := True;
  end
  else begin
    cxLabel7.Visible := False;
    cxlNoBukti.Visible := False;
    btnEdit2.Visible := False;
  end;
  cxLabel7.Visible := True;
  cxlNoBukti.Visible := True;
  btnEdit2.Visible := True;

  cxtNoTrans.Text := GetLastFak('spmb');

  // create temporary table
  try
    dm.zConn.ExecuteDirect('DELETE FROM tmp_spmb');
  finally
    mTblTmp := OpenTbl('tmp_spmb');
  end;

  cxCmbGdg.Text := 'G02';
  cxtNamaGdg.Text := GetNamaGudang('G02');

  pnlMemo.Visible := false;
  pnlMemo.Top := 137;
  pnlMemo.Left := 541;

  cxMemo2.Visible := False;
  cxMemo2.Top := 157;

  mLstAfkir := TStringList.Create;
  mLstRetur := TStringList.Create;

  cxlArmada.Left := cxtNopol.Left;
  cxlDriver.Left := cxtDriver.Left;
  cxtNopol.Visible := False;
  cxtDriver.Visible := False;

  zqrArmada.Open;
  zqrSopir.Open;

end;

function TFrmSPMB_NEW.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmSPMB_NEW.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qb: TZQuery;
begin

  if cxLUCust.Text = '' then begin
    MsgBox('Pilih nama customer.');
    Abort;
  end;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = CKD_BRG) then begin
    fs := TFrmCariSO.Create(self);
    if mJnsSPMB = 'peletan' then fs.Jenis := 'peletan';
    fs.fSPMB_NEW := Self;
    fs.KodeCust := cxLUCust.EditValue;
    fs.ShowModal;
    if fs.ModalResult = idOk then begin

      q := OpenRS('SELECT * FROM tmp_spmb WHERE no_bukti = ''%s'' ' +
        'AND kode_brg = %s',
        [fs.NoSO, fs.KodeBrg]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang dengan nomer SO tersebut sudah ada.');
        q.Close;
        Abort;
      end;      
      q.Close;

      q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
        ' AND kode_brg = ''%s''',
        [fs.NoSO, fs.KodeBrg]);
      if not q.IsEmpty then begin

        qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
          [q.FIeldByName('kode_brg').AsString]);
        nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
        nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
        qb.Close;
        nxGrd.Cell[CQTY_SO,ARow].AsString := q.FieldByName('qty').AsString;

        q.Next;
      end;
      fs.Release;
    end;
  end;
end;

procedure TFrmSPMB_NEW.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q, qb, qc: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = CKD_BRG then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = CQTY then begin

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin


      //qc := OpenRS('SELECT SUM(IF(tipe=''IN_'',qty,0)) - SUM(IF(tipe=''OUT_'',qty,0)) sisa ' +
      //  'FROM tbl_history WHERE no_so = ''%s'' AND gudang = ''G02'' AND kode_brg = %s',
      //  [nxGrd.Cell[nxColNoSO.Index, ARow].AsString, nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
      //if nxGrd.Cell[nxColQTy.Index,ARow].AsFloat > qc.FieldByName('sisa').AsFloat then
      //  nxGrd.Cell[nxColQTy.Index, ARow].AsFloat := qc.FieldByName('sisa').AsFloat;
      //qc.Close;

      HitungTotal;

      // ambil berat per unit
      q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
        
      if not q.FieldByName('berat_per_unit_b').IsNull then
        nxGrd.Cell[nxColBeratTot.Index, ARow].AsFloat :=
          q.FieldByName('berat_per_unit_b').AsFloat * nxGrd.Cell[CQTY,ARow].AsFloat
      else
        nxGrd.Cell[nxColBeratTot.Index, ARow].AsFloat := 0;
        
      q.Close;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(CQTY,ARow)
      else begin
        //i := nxGrd.AddRow();
        //nxGrd.SelectCell(1,i);
        //nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = nxColBaik.Index then begin
    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
      qb := OpenRS('SELECT SUM(IF(tipe=''IN_'',qty_baik,0)) - SUM(IF(tipe=''OUT_'',qty_baik,0)) qty_baik FROM tbl_history ' +
        'WHERE no_so = ''%s'' AND kode_brg = %s AND (LEFT(no_bukti,2) = ''IN'' OR LEFT(no_bukti,2) = ''SJ'') ',
        [nxGrd.Cell[nxColNoSO.Index, AROw].AsString, nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);

      if nxGrd.Cell[ACol,ARow].AsFloat > qb.FieldByName('qty_baik').AsFloat then begin
        nxGrd.Cell[nxColBaik.Index,ARow].AsFloat := qb.FieldByName('qty_baik').AsFloat;
        nxGrd.SelectCell(nxColQty.Index, ARow);
        nxGrd.SelectCell(nxColBaik.Index, ARow);
      end;
      qb.Close;
      UpdateTotQtyPel;
    end;
  end;
end;

procedure TFrmSPMB_NEW.HitungTotal;
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
  if cxsTotalQty.Value = 0 then
    cxCmbGdg.Properties.ReadOnly := False;
end;

procedure TFrmSPMB_NEW.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  cxsTotalQty.Value := 0;
  btnCariPO.Visible := False;
  cxtNoTrans.Text := GetLastFak('spmb');
  cxCmbGdg.Text := 'G02';
  cxtNamaGdg.Text := GetNamaGudang('G02');
  cxCmbGdg.Properties.ReadOnly := False;
  cxLUCust.EditValue := '';
  cxlNoSO.EditValue := '';
  cxChkSudahSJ.Checked := False;
  zqrNoSO.Close;
  zqrNoSO.ParamByName('kode_customer').AsString := '';
  zqrNoSO.Open;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxLUCust.Properties.ReadOnly := False;
  cxlNoSO.Properties.ReadOnly := False;
  nxColQTy.Max := 0;
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  cxlArmada.Text := '';
  cxlDriver.Text := '';
  cxChkSopirLuar.Checked := False;
  cxChkWhlMuat.Checked := False;
end;

procedure TFrmSPMB_NEW.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('spmb');
  cxlNoBukti.Text := '';
  dm.zConn.ExecuteDirect('DELETE FROM tmp_spmb');
  cxChkPPN.Enabled := True;
  cxChkPPN.Checked := False;
  cxsPPN.Value := 10;
  cxsPPN.Enabled := False;

end;

procedure TFrmSPMB_NEW.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;

procedure TFrmSPMB_NEW.btnSimpanClick(Sender: TObject);
var
  //in_head, in_det, barang, barang_det, hist,
  //sj_head, sj_det: TZTable;
  in_head, in_det, barang, barang_det, hist,
  sj_head, sj_det, qc: TZQuery;
  sNoTrs, sNoTrsSJ: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if Trim(cxdTglRencKirim.Text) = '' then begin
    MsgBox('Tanggal Rencana Pengiriman harus diisi.');
    cxdTglRencKirim.SetFocus;
  end
  else begin

    if cxChkSopirLuar.Checked then begin
      if Trim(cxtNopol.Text) = '' then begin
        MsgBox('No. Polisi harus diisi.');
        cxtNopol.SetFocus;
        Abort;
      end
      else if Trim(cxtDriver.Text) = '' then begin
        MsgBox('Driver harus diisi.');
        cxtDriver.SetFocus;
        Abort;
      end;
    end
    else begin
      if Trim(cxlArmada.Text) = '' then begin
        MsgBox('No. Polisi harus diisi.');
        cxlArmada.SetFocus;
        Abort;
      end
      else if Trim(cxlDriver.Text) = '' then begin
        MsgBox('Driver harus diisi.');
        cxlDriver.SetFocus;
        Abort;
      end;
    end;

    // pastikan nomer adalah edit atau tidak 
    //q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
    //  [cxtNoTrans.Text]);
    //if not q.IsEmpty then
    //  Self.Jenis := 'edit'
    //else
    //  Self.Jenis := '';
    //q.Close;

    // cek apakah SPMB sudah dibuatkan surat jalan
    if self.Jenis = 'edit' then begin
      q := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
        [cxtNoTrans.Text]);
      if not q.IsEmpty then begin
        MsgBox('SPMB ini sudah dibuatkan surat jalan.');
        q.Close;
        Abort;
      end;
      q.Close;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    // cek apakah ada qty SPMB yang kosong
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[CKD_BRG,i].AsString <> '' then begin
        if nxGrd.Cell[CQTY,i].AsFloat = 0 then begin
          MsgBox('Masih ada Qty SPMB yang kosong.');
          Abort;
        end;
      end;
    end;

    // cek qty spmb vs qty so
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[CKD_BRG,i].AsString <> '' then begin
        if nxGrd.Cell[CQTY_SO,i].AsFloat < nxGrd.Cell[CQTY,i].AsFloat then begin
          MsgBox('Ada jumlah pesanan lebih kecil dari Jumlah pengiriman.');
          Abort;
        end;
      end;
    end;

    // cek qty spmb vs qty_g02
    { 28-10-2016
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[CKD_BRG,i].AsString <> '' then begin

        qc := OpenRS('SELECT SUM(IF(tipe=''IN_'',qty,0)) - SUM(IF(tipe=''OUT_'',qty,0)) sisa ' +
          'FROM tbl_history WHERE no_so = ''%s'' AND gudang = ''G02'' AND kode_brg = %s',
          [nxGrd.Cell[nxColNoSO.Index, i].AsString, nxGrd.Cell[nxColKodeBrg.Index, i].AsString]);

        if nxGrd.Cell[nxColQTy.Index,i].AsFloat > qc.FieldByName('sisa').AsFloat then begin
          MsgBox('Ada jumlah pesanan lebih besar dari stok G-CUST.' + Chr(10) + Chr(13) +
            'Kode: ' + nxGrd.Cell[nxColKodeBrg.Index, i].AsString + ', Qty. SPMB: ' +
            nxGrd.Cell[nxColQty.Index, i].AsString + ', Stok G-CUST: ' +
            qc.FieldByName('sisa').AsString);
          nxGrd.Cell[nxColQTy.Index,i].AsFloat := qc.FieldByName('sisa').AsFloat;
          qc.Close;
          Abort;
        end;

        qc.Close;

      end;
    end;
    }

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else begin
        sNoTrs := GetLastFak('spmb');
        UpdateFaktur(Copy(sNoTrs,1,9));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spmb_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spmb_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      //in_head := OpenTbl('tbl_spmb_head');
      in_head := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''', [sNoTrs]);

      //in_det := OpenTbl('tbl_spmb_det');
      in_det := OpenRS('SELECT * FROM tbl_spmb_det WHERE no_bukti = ''%s''', [sNoTrs]);

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('kode_customer').AsString := cxLUCust.EditValue;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('no_dokumen').AsString := Trim(cxtNoDok.Text);


      if cxChkSopirLuar.Checked then begin
        in_head.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
        in_head.FieldByName('driver').AsString := Trim(cxtDriver.Text);
        in_head.FieldByName('f_sopirluar').AsInteger := 1;
      end
      else begin
        in_head.FieldByName('nopol').AsString := cxlArmada.Text;
        in_head.FieldByName('driver').AsString := cxlDriver.Text;
        in_head.FieldByName('f_sopirluar').AsInteger := 0;
      end;

      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('keterangan').AsString := Trim(cxtKeterangan.Text);
      in_head.FieldByName('tgl_renc_krm').AsDateTime := cxdTglRencKirim.Date;
      if mJnsSPMB = 'peletan' then
        in_head.FieldByName('ongkos_kirim').AsFloat := cxsOngkir.Value;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        in_det.FieldByName('no_so').AsString := nxGrd.Cell[CNO_SO,i].AsString;
        in_det.FieldByName('qty_so').AsFloat := nxGrd.Cell[CQTY_SO,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;

        if mJnsSPMB = 'peletan' then begin
          in_det.FieldByName('qty_baik').AsFloat := nxGrd.Cell[nxColBaik.Index, i].AsFloat;
          in_det.FieldByName('qty_afkir').AsFloat := nxGrd.Cell[nxColAfkir.Index, i].AsFloat;
          in_det.FieldByName('qty_retur').AsFloat := nxGrd.Cell[nxColRetur.Index, i].AsFloat;
        end;

        in_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        in_det.FieldByName('keterangan').AsString := nxGrd.Cell[CKET,i].AsString;
        in_det.FieldByName('ket_harga').AsString := nxGrd.Cell[CKET_HRG,i].AsString;
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      //if Self.Jenis <> 'edit' then
      //  UpdateFaktur(Copy(sNoTrs,1,9));

      dm.zConn.ExecuteDirect('DELETE FROM tmp_spmb');  

      dm.zConn.Commit;
      Self.Jenis := '';

      if (Sender as TButton).Name <> 'btnCetakSJ' then begin
        MsgBox('Transaksi SPMB masuk sudah disimpan dengan nomer: ' + sNoTrs);
        cxtNoTrans.Text := sNoTrs;
      end;

      zqrNoBukti.Close;
      zqrNoBukti.Open;

      if (Sender as TButton).Name <> 'btnCetakSJ' then begin
        btnBatalClick(nil);
      end;
      
      inherited;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;

end;

procedure TFrmSPMB_NEW.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
var
  f: TFrmEditQtySO;
  q: TZQuery;
  i: integer;
begin
  //if nxGrd.RowCount = 1 then Abort;
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin
        try
          dm.zConn.ExecuteDirect('DELETE FROM tmp_spmb WHERE kode_brg = ' +
            nxGrd.Cell[CKD_BRG,ARow].AsString + ' AND no_bukti = ''' +
            nxGrd.Cell[CNO_SO,ARow].AsString + '''');            
        except
        end;
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
    else if ACol = CKD_BRG then begin
      self.NxEdit1DblClick(nil);
    end
    else if ACol = CQTY_SO then begin
      if nxGrd.Cell[CQTY_SO,ARow].AsFloat < nxGrd.Cell[CQTY,ARow].AsFloat then begin
        f := TfrmEditQtySO.Create(Self);
        f.NoSO := nxGrd.Cell[CNO_SO,ARow].AsString;
        f.KodeBrg := nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString;
        f.ShowModal;

        try
          for i := 0 to nxGrd.RowCount - 1 do begin
            q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = %s',
              [nxGrd.Cell[CNO_SO,i].AsString, nxGrd.Cell[CKD_BRG,i].AsString]);
            if not q.IsEmpty then begin
              nxGrd.Cell[CQTY_SO,i].AsFloat := q.FieldByName('qty').AsFloat;
              if nxGrd.Cell[CQTY_SO,i].AsFloat < nxGrd.Cell[CQTY_KIRIM,i].AsFloat then
                nxGrd.Cell[CQTY_SO,i].Color := clRed
              else
                nxGrd.Cell[CQTY_SO,i].Color := clMoneyGreen;
            end;
            q.Close;
          end;
        except
        end;

      end;
    end
    else if ACol = nxColKet.Index then begin
      pnlMemo.Visible := True;
      cxMemo.Lines.Text := nxGrd.Cell[nxColKet.Index,nxGrd.SelectedRow].AsString;
      cxMemo.SetFocus;
    end;
  end;
end;

procedure TFrmSPMB_NEW.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  if cxtNOTrans.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    if not q.IsEmpty then begin
      if q.FieldByName('no_pb').IsNull then begin
        i := QBox(Self, 'Hapus PO Nomer: ' + cxtNOTrans.Text,'Hapus PO');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_po_head WHERE no_bukti = ''' + cxtNOTrans.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det WHERE no_bukti = ''' + cxtNOTrans.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan PO berhasil.');
            btnBatalClick(nil);
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
      end
      else begin
        MsgBox('PO ini sudah diterima, tidak bisa dihapus.');
      end;
    end;
  end;
end;

procedure TFrmSPMB_NEW.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TFrmSPMB_NEW.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  //if not CekKodeBrg(sKodeBrg, ARow) then begin
  //  MsgBox('Kode Barang sudah ada.');
  //  cxLUBrg.Text := '';
  //end
  //else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := 1;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  //end;
end;

procedure TFrmSPMB_NEW.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TFrmSPMB_NEW.btnEdit2Click(Sender: TObject);
var
  q, qBrg, qsj, qb, qso_det, qc, qppn: TZQuery;
  i: Integer;
begin
  if Trim(cxlNoBukti.Text) = '' then Abort;

  Screen.Cursor := crSQLWait;

  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Properties.ReadOnly := False;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;
  cxdTglTrs.PostEditValue;
  cxdTglTrs.Properties.ReadOnly := bWewenangGantiTanggal;

  q := OpenRS('SELECT * FROM v_spmb_head WHERE no_bukti = ''%s''',
    [cxlNoBukti.EditValue]);

  cxChkPPN.Checked := False;

  if q.FieldByName('f_whl_muat').AsInteger = 1 then
    cxChkWhlMuat.Checked := True
  else
    cxChkWhlMuat.Checked := False;

  if q.FieldByName('f_completed').AsInteger = 1 then begin
    cxChkSudahSJ.Checked := True;
    cxLUCust.Properties.ReadOnly := True;
    cxlNoSO.Properties.ReadOnly := True;
  end;

  if q.FieldByName('f_sopirluar').AsInteger = 1 then begin
    cxChkSopirLuar.Checked := True;
    cxlArmada.Visible := False;
    cxlDriver.Visible := False;
    cxtNopol.Visible  := True;
    cxtDriver.VIsible := True;
    cxtNopol.Text := q.FieldByName('nopol').AsString;
    cxtDriver.Text := q.FieldByName('driver').AsString;
  end
  else begin
    cxChkSopirLuar.Checked := False;
    cxlArmada.Visible := True;
    cxlDriver.Visible := True;
    cxtNopol.Visible  := False;
    cxtDriver.VIsible := False;
    cxlArmada.Text := q.FieldByName('nopol').AsString;
    cxlDriver.Text := q.FieldByName('driver').AsString;
  end;

  // ambil tanggal rencana kirim
  if not q.FieldByName('tgl_renc_krm').IsNull then begin
    cxdTglRencKirim.Date := q.FieldByName('tgl_renc_krm').AsDateTime;
  end;

  // ambil nomer surat jalan
  qsj := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
    [cxtNoTrans.Text]);
  if not qsj.IsEmpty then begin
    cxtNoSJ.Text := qsj.FieldByName('no_bukti').AsString;
  end
  else begin
    cxtNoSJ.Text := '';
  end;
  qsj.Close;


  qppn := OpenRS('SELECT * FROM tbl_sj_head where no_bukti = ''%s''',
    [cxlNoBukti.EditValue]);

  if mJnsSPMB = 'peletan' then begin
    if cxtNoSJ.Text = '' then begin
      cxChkPPN.Enabled := true;
      if not qppn.FieldByName('ppn').IsNull then begin
        cxsPPN.Value := qppn.FieldByName('ppn').AsInteger;
        cxChkPPN.Checked := True;
        cxsPPN.Enabled := True;
      end
      else begin
        cxsPPN.Value := 10;
        cxChkPPN.Checked := False;
      end;
    end else begin
      cxsPPN.Enabled := False;
      cxChkPPN.Enabled := False;
    end;
  end else begin
    cxChkPPN.Enabled := False;
    cxsPPN.Value := 10;
  end;

  qppn.Close;

  cxCmbGdg.Text := 'G02';
  cxtNamaGdg.Text := GetNamaGudang('G02');
  cxLUCust.EditValue := q.FieldByName('kode_customer').AsString;

  cxtKeterangan.Text := q.FieldByName('keterangan').AsString;
  cxMemo2.Lines.Text := q.FieldByName('keterangan').AsString;
  cxsOngkir.Value := q.FieldByName('ongkos_kirim').AsFloat;
  q.Close;

  q := OpenRS('SELECT * FROM v_spmb_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  if q.RecordCount > 0 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNO_SO,i].AsString := q.FieldByName('no_so').AsString;
    nxGrd.Cell[CNM_BRG,i].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;

    // cek stok di gudang G02
    qc := OpenRS('SELECT SUM(IF(tipe=''IN_'',qty,0)) - SUM(IF(tipe=''OUT_'',qty,0)) sisa ' +
      'FROM tbl_history WHERE no_so = ''%s'' AND gudang = ''G02'' AND kode_brg = ''%s''',
      [q.FieldByName('no_so').AsString, q.FieldByName('kode_brg').AsString]);

    // revisi 10-11-2014 11:07
    //nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;

    { 03-11-2016
    if qc.FieldByName('sisa').AsFloat < q.FieldByName('qty').AsFloat then
      nxGrd.Cell[CQTY,i].AsFloat := qc.FieldByName('sisa').AsFloat
    else
      nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
    }

    nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;

    qc.Close;

    nxGrd.Cell[nxColBeratTot.Index,i].AsFloat := q.FieldByName('berat_total').AsFloat;
    nxGrd.Cell[CQTY,i].Color := clSkyBlue;

    // ambil qty dari SO
    qso_det := OpenRS('SELECT a.qty, b.`po#` as no_po FROM tbl_so_det a INNER JOIN tbl_so_head b ON a.no_bukti = b.no_bukti WHERE a.no_bukti = ''%s'' ' +
      'AND a.kode_brg = ''%s''',
      [q.FieldByName('no_so').AsString,
       q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[CQTY_SO,i].AsFloat := qso_det.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColNoPO.Index, i].AsString := qso_det.FieldByName('no_po').AsString;
    qso_det.Close; qso_det := nil;

    nxGrd.Cell[CQTY_SO,i].Color := clMoneyGreen;
    //nxGrd.Cell[CKET,i].AsString := q.FieldByName('notes').AsString;

    // ambil qty yang sudah dikirim
    qb := OpenRS('SELECT SUM(qty) AS qty_kirim FROM tbl_sj_det ' +
      'WHERE no_so = ''%s'' AND kode_brg = ''%s''',
      [q.FieldByName('no_so').AsString,
       q.FieldByName('kode_brg').AsString]);

    nxGrd.Cell[CQTY_KIRIM,i].AsFloat := qb.FieldByName('qty_kirim').AsFloat;

    nxGrd.Cell[CQTY_KIRIM,i].Color := clYellow;
    qb.Close;

    // ambil stok gudang G02
    // 27-01-2016 -> pake stored procedure
    dm.zConn.ExecuteDirect('call sp_stok_so(''' + q.FieldByName('no_so').AsString + ''')');
    //qb := OpenRS('SELECT * FROM v_stok_so WHERE no_bukti = ''%s'' ' +
    qb := OpenRS('SELECT * FROM _tmp_stok_so WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = ''%s''',
      [q.FieldByName('no_so').AsString,
       q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[CQTY_G02,i].AsFloat := qb.FieldByName('qty_g02').AsFloat;
    nxGrd.Cell[CQTY_G02,i].Color := clAqua;

    // komplain etik ditutup saja
    //nxGrd.Cell[CQTY,i].AsFloat := qb.FieldByName('qty_g02').AsFloat;

    qb.Close;

    if nxGrd.Cell[CQTY_SO,i].AsFloat < nxGrd.Cell[CQTY,i].AsFloat then
      nxGrd.Cell[CQTY_SO,i].Color := clRed;

    nxGrd.Cell[CKET,i].AsString := q.FieldByName('keterangan').AsString;
    nxGrd.Cell[CKET_HRG,i].AsString := q.FieldByName('ket_harga').AsString;

    mTblTmp.Insert;
    mTblTmp.FieldByName('no_bukti').AsString := nxGrd.Cell[CNO_SO,i].AsString;
    mTblTmp.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
    mTblTmp.Post;

    if mJnsSPMB = 'peletan' then begin
      nxGrd.Cell[nxColBaik.Index, i].AsFloat := q.FieldByName('qty_baik').AsFloat;
      nxGrd.Cell[nxColAfkir.Index, i].AsFloat := q.FieldByName('qty_afkir').AsFloat;
      nxGrd.Cell[nxColRetur.Index, i].AsFloat := q.FieldByName('qty_retur').AsFloat;
    end;

    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
  self.Jenis := 'edit';
  nxGrd.AddRow();

  Screen.Cursor := crDefault;
end;

procedure TFrmSPMB_NEW.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb ,qc, qsoh, qret: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = CKD_BRG) then begin

    q := OpenRS('SELECT * FROM tmp_spmb WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = %s',
      [sNoSO, sKodeBrg]);

    if not q.IsEmpty then begin
      MsgBox('Kode barang dengan nomer SO tersebut sudah ada.');
      q.Close;
      Abort;
    end;
    q.Close;

    // 12-07-2014
    // permintaan khusus natalia
    if aplikasi.NamaUser <> 'NATALIA' then begin
      // cek apakah barang sudah ada di SPMB lain
      q := OpenRS('SELECT a.no_bukti, a.qty, b.qty qty_so FROM ' +
        'tbl_spmb_det a, tbl_so_det b, tbl_spmb_head c WHERE ' +
        'a.no_so = b.no_bukti AND a.no_so = ''%s'' ' +
        'AND a.kode_brg = %s AND a.qty = b.qty ' +
        'AND a.no_bukti = c.no_bukti AND c.f_completed = 0',
        [sNoSO, sKodeBrg]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang : ' + sKodeBrg + #10#13 +
          'Sudah dibuatkan SPMB dengan QTY : ' + q.FieldByName('qty').AsString + #10#13 +
          'No. SPMB : ' + q.FieldByName('no_bukti').AsString);
        Abort;
      end;
      q.Close;
    end;

    q := OpenRS('SELECT no_bukti, kode_brg, sum(qty) as qty ' +
      'FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      ' AND kode_brg = ''%s'' GROUP BY no_bukti, kode_brg',
      [sNoSO, sKodeBrg]);
    if not q.IsEmpty then begin

      qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
        [q.FIeldByName('kode_brg').AsString]);
      nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNO_SO,ARow].AsString := sNoSO;
      nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
      qb.Close;

      qb := OpenRS('SELECT SUM(qty) AS qty_kirim FROM tbl_sj_det ' +
        'WHERE no_so = ''%s'' AND kode_brg = %s',
        [sNoSO, q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CQTY_KIRIM,ARow].AsFloat := qb.FieldByName('qty_kirim').AsFloat;
      nxGrd.Cell[CQTY_KIRIM,ARow].Color := clYellow;
      qb.Close;

      qret := OpenRS('SELECT SUM(qty) qty_retur FROM tbl_trsreturpenj_det ' +
        'WHERE no_so = ''%s'' AND kode_brg = %s',
        [sNoSO, q.FieldByName('kode_brg').AsString]);
      if qret.FieldByName('qty_retur').AsFloat > 0 then begin
        nxGrd.Cell[CQTY_KIRIM, ARow].AsFloat := nxGrd.Cell[CQTY_KIRIM,Arow].AsFloat -
          qret.FieldByName('qty_retur').AsFloat;
        nxGrd.Cell[CQTY_KIRIM,ARow].Color := clYellow;  
      end;  
      qret.Close;

      qc := OpenRS('SELECT SUM(IF(tipe=''IN_'',qty,0)) - SUM(IF(tipe=''OUT_'',qty,0)) sisa ' +
        'FROM tbl_history WHERE no_so = ''%s'' AND gudang = ''G02'' AND kode_brg = %s',
        [nxGrd.Cell[nxColNoSO.Index, ARow].AsString, nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
      // REVISI : 11-11-2014 11:05
      //nxGrd.Cell[CQTY,ARow].AsFloat := qty_g02;
      if qc.FieldByName('sisa').AsFloat <= q.FieldByName('qty').AsFloat then
        nxGrd.Cell[CQTY, ARow].AsFloat := qc.FieldByName('sisa').AsFloat
      else
        nxGrd.Cell[CQTY, ARow].AsFloat := q.FieldByName('qty').AsFloat;
      qc.Close;

      nxGrd.Cell[CQTY,ARow].Color := clSkyBlue;
      nxGrd.Cell[CQTY_SO,ARow].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CQTY_SO,ARow].Color := clMoneyGreen;
      nxGrd.Cell[CQTY_G02,ARow].AsFloat := qty_g02;
      nxGrd.Cell[CQTY_G02,ARow].Color := clAqua;

      if nxGrd.Cell[CQTY_SO,ARow].AsFloat < nxGrd.Cell[CQTY,ARow].AsFloat then
        nxGrd.Cell[CQTY_SO,ARow].Color := clRed;

      qsoh := OpenRS('SELECT `po#` as no_po FROM tbl_so_head WHERE no_bukti = ''%s''',[sNoSO]);
      nxGrd.Cell[nxColNoPO.Index, ARow].AsString := qsoh.FieldByName('no_po').AsString;
      qsoh.Close;

      nxGrd.AddRow();

      mTblTmp.Insert;
      mTblTmp.FieldByName('no_bukti').AsString := nxGrd.Cell[CNO_SO,ARow].AsString;
      mTblTmp.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ARow].AsString;
      mTblTmp.Post;

      q.Next;
    end;

    HitungTotal;
  end;
end;

procedure TFrmSPMB_NEW.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real; sJenis: string);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb ,qc, qsoh, qret: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = CKD_BRG) then begin

    q := OpenRS('SELECT * FROM tmp_spmb WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = ''%s''',
      [sNoSO, sKodeBrg]);

    if not q.IsEmpty then begin
      MsgBox('Kode barang dengan nomer SO tersebut sudah ada.');
      q.Close;
      Abort;
    end;
    q.Close;

    // 12-07-2014
    // permintaan khusus natalia
    if aplikasi.NamaUser <> 'NATALIA' then begin
      // cek apakah barang sudah ada di SPMB lain
      q := OpenRS('SELECT a.no_bukti, a.qty, b.qty qty_so FROM ' +
        'tbl_spmb_det a, tbl_so_det b, tbl_spmb_head c WHERE ' +
        'a.no_so = b.no_bukti AND a.no_so = ''%s'' ' +
        'AND a.kode_brg = ''%s'' AND a.qty = b.qty ' +
        'AND a.no_bukti = c.no_bukti AND c.f_completed = 0',
        [sNoSO, sKodeBrg]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang : ' + sKodeBrg + #10#13 +
          'Sudah dibuatkan SPMB dengan QTY : ' + q.FieldByName('qty').AsString + #10#13 +
          'No. SPMB : ' + q.FieldByName('no_bukti').AsString);
        Abort;
      end;
      q.Close;
    end;

    q := OpenRS('SELECT no_bukti, kode_brg, sum(qty) as qty ' +
      'FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      ' AND kode_brg = ''%s'' GROUP BY no_bukti, kode_brg',
      [sNoSO, sKodeBrg]);
    if not q.IsEmpty then begin

      qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FIeldByName('kode_brg').AsString]);
      nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNO_SO,ARow].AsString := sNoSO;
      nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
      qb.Close;

      qb := OpenRS('SELECT SUM(qty) AS qty_kirim FROM tbl_sj_det ' +
        'WHERE no_so = ''%s'' AND kode_brg = ''%s''',
        [sNoSO, q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CQTY_KIRIM,ARow].AsFloat := qb.FieldByName('qty_kirim').AsFloat;
      nxGrd.Cell[CQTY_KIRIM,ARow].Color := clYellow;
      qb.Close;

      qret := OpenRS('SELECT SUM(qty) qty_retur FROM tbl_trsreturpenj_det ' +
        'WHERE no_so = ''%s'' AND kode_brg = ''%s''',
        [sNoSO, q.FieldByName('kode_brg').AsString]);
      if qret.FieldByName('qty_retur').AsFloat > 0 then begin
        nxGrd.Cell[CQTY_KIRIM, ARow].AsFloat := nxGrd.Cell[CQTY_KIRIM,Arow].AsFloat -
          qret.FieldByName('qty_retur').AsFloat;
        nxGrd.Cell[CQTY_KIRIM,ARow].Color := clYellow;
      end;
      qret.Close;

      qc := OpenRS('SELECT SUM(IF(tipe=''IN_'',qty,0)) - SUM(IF(tipe=''OUT_'',qty,0)) sisa ' +
        'FROM tbl_history WHERE no_so = ''%s'' AND gudang = ''G02'' AND kode_brg = ''%s''',
        [nxGrd.Cell[nxColNoSO.Index, ARow].AsString, nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
      // REVISI : 11-11-2014 11:05
      //nxGrd.Cell[CQTY,ARow].AsFloat := qty_g02;
      if qc.FieldByName('sisa').AsFloat <= q.FieldByName('qty').AsFloat then
        nxGrd.Cell[CQTY, ARow].AsFloat := qc.FieldByName('sisa').AsFloat
      else
        nxGrd.Cell[CQTY, ARow].AsFloat := q.FieldByName('qty').AsFloat;
      qc.Close;

      nxGrd.Cell[CQTY,ARow].Color := clSkyBlue;
      nxGrd.Cell[CQTY_SO,ARow].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CQTY_SO,ARow].Color := clMoneyGreen;
      nxGrd.Cell[CQTY_G02,ARow].AsFloat := qty_g02;
      nxGrd.Cell[CQTY_G02,ARow].Color := clAqua;

      if nxGrd.Cell[CQTY_SO,ARow].AsFloat < nxGrd.Cell[CQTY,ARow].AsFloat then
        nxGrd.Cell[CQTY_SO,ARow].Color := clRed;

      qsoh := OpenRS('SELECT `po#` as no_po FROM tbl_so_head WHERE no_bukti = ''%s''',[sNoSO]);
      nxGrd.Cell[nxColNoPO.Index, ARow].AsString := qsoh.FieldByName('no_po').AsString;
      qsoh.Close;

      nxGrd.AddRow();

      mTblTmp.Insert;
      mTblTmp.FieldByName('no_bukti').AsString := nxGrd.Cell[CNO_SO,ARow].AsString;
      mTblTmp.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ARow].AsString;
      mTblTmp.Post;

      q.Next;
    end;

    HitungTotal;
  end;
end;

procedure TFrmSPMB_NEW.FormShow(Sender: TObject);
var
  lst: TList;
begin
  Screen.Cursor := crSQLWait;
  
  lst := TList.Create;
  lst.Add(zqrBrg);
  lst.Add(zqrCust);
  lst.Add(zqrNoBukti);
  lst.Add(zqrNoSO);
  OpenSQL(lst);
  Screen.Cursor := crDefault;

  if mUserDept = 'WHL' then begin
    cxCmbGdg.Text := 'G02';
    cxCmbGdg.Properties.ReadOnly := True;
    cxtNamaGdg.Text := GetNamaGudang('G02');
  end;
  if mJnsSPMB <> 'peletan' then begin
    nxColBaik.Visible := False;
    nxColAfkir.Visible := False;
    nxColRetur.Visible := False;
  end
  else if mJnsSPMB = 'peletan' then begin
    nxColQTy.Options := nxColQTy.Options - [coEditing];
  end;
end;

procedure TFrmSPMB_NEW.cxlNoSOPropertiesEditValueChanged(Sender: TObject);
var
  q, qsj: TZQuery;
  i: integer;
begin
  try
    q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s''',
      [cxlNoSO.EditValue]);
    nxGrd.ClearRows;
    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNM_BRG,i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[CQTY,i].AsFloat := 0;
      nxGrd.Cell[CQTY_SO,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CKET,i].AsString := q.FieldByName('notes').AsString;

      qsj := OpenRS('SELECT * FROM v_so_vs_sj WHERE no_so = ''%s'' ' +
        'AND kode_brg = %s',
        [cxlNoSO.EditValue, q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CQTY_KIRIM,i].AsFloat := qsj.FieldByName('qty_kirim').AsFloat;
      qsj.Close;

      q.Next;
    end;
    q.Close;
    HitungTotal;
  except
  end;
end;

procedure TFrmSPMB_NEW.btnCetakSJClick(Sender: TObject);
var
  sj_det, sj_head, brg, brg_det,
  hist, q, qso, qcek, qSO_V_SJ, qp, qc_dis, qjd: TZQuery;
  sNoSJ, sAkunBrg, sAkun, sNoJ: string;
  qty_susut, tot: Real;
  f: TFrmSJ;
  fLap : TFrmLapUmum;
  ii: Integer;
begin
  {CetakSuratJalan;}

  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if Trim(cxdTglRencKirim.Text) = '' then begin
    MsgBox('Tanggal Rencana Pengiriman harus diisi.');
    cxdTglRencKirim.SetFocus;
  end
  else begin

    // cek apakah proses muat sudah dilakukan WHL
    {
    q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',[cxtNoTrans.Text]);
    if q.FieldByName('f_whl_muat').AsInteger = 0 then begin
      MsgBox('Pemuatan belum dilakukan oleh pihak WHL.');
      q.Close;
      Abort;
    end;
    q.Close;
    }

    if cxChkSopirLuar.Checked then begin
      if Trim(cxtNopol.Text) = '' then begin
        MsgBox('No. Polisi harus diisi.');
        cxtNopol.SetFocus;
        Abort;
      end
      else if Trim(cxtDriver.Text) = '' then begin
        MsgBox('Driver harus diisi.');
        cxtDriver.SetFocus;
        Abort;
      end;
    end
    else begin
      if Trim(cxlArmada.Text) = '' then begin
        MsgBox('No. Polisi harus diisi.');
        cxlArmada.SetFocus;
        Abort;
      end
      else if Trim(cxlDriver.Text) = '' then begin
        MsgBox('Driver harus diisi.');
        cxlDriver.SetFocus;
        Abort;
      end;
    end;

    // cek apakah spmb sudah disimpan
    q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);
    if q.IsEmpty then begin
      MsgBox('SPMB ini belum disimpan.');
      q.Close;
      Abort;
    end;
    q.Close;

    // konfirmasi cetak surat jalan
    ii := QBox(Self,'Cetak Surat Jalan ?' + Chr(10) + Chr(13) +
      'Pastikan SPMB sudah diserahkan ke WHL.','Cetak SJ');
    if ii = IDNO then begin
      Abort;
    end;

    // 23-08-2016
    // cek apakah SPMB ada di dalam daftar disposisi > 5% dan belum
    // disetujui oleh manajemen
    qc_dis := OpenRS('SELECT * FROM tbl_disposisi_head a ' +
      'INNER JOIN tbl_disposisi_det b ON a.no_bukti = b.no_bukti ' +
      'WHERE no_spmb = ''%s'' AND abs(a.persentase) > 5 AND app_mgmt = 0',
      [cxtNoTrans.Text]);
    if not qc_dis.IsEmpty then begin
      MsgBOx('SPMB ini belum bisa di cetak surat jalan karena ada disposisi > 5% ' + Chr(10) + Chr(13) +
        'dan belum di Approval management.');
      qc_dis.Close;
      Abort;
    end;
    qc_dis.Close;

    Screen.Cursor := crSQLWait;

    self.Jenis := 'edit';
    btnSimpanClick(btnCetakSJ);

    // cek apakah spmb sudah di sjkan
    q := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
      [cxtNoTrans.Text]);

    if q.IsEmpty then begin

      sNoSJ := GetLastFak('sj');
      UpdateFaktur(Copy(sNoSJ,1,7));

      try
        dm.zConn.StartTransaction;

        //sj_head := OpenTbl('tbl_sj_head');
        sj_head := OpenRS('SELECT * FROM tbl_sj_head WHERE no_bukti = ''%s''', [sNoSJ]);

        //sj_det := OpenTbl('tbl_sj_det');
        sj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s''', [sNoSJ]);

        //brg := OpenTbl('tbl_barang');
        //brg_det := OpenTbl('tbl_barang_det');

        //hist := OpenTbl('tbl_history');
        hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoSJ]);

        with sj_head do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoSJ;
          FieldByName('kode_customer').AsString := cxLUCust.EditValue;
          FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('no_spmb').AsString := cxtNoTrans.Text;
          FieldByName('user').AsString := Aplikasi.NamaUser;
          FieldByName('user_dept').AsString := aplikasi.UserDept;
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          FieldByName('f_cetak').AsInteger := 1;

          if mJnsSPMB = 'peletan' then begin
            FieldByName('ongkos_kirim').AsFloat := cxsOngkir.Value;
            if cxChkPPN.Checked then begin
              FieldByName('ppn').AsInteger := cxsPPN.Value;
            end else begin
              FieldByName('ppn').AsInteger := 0;
            end;
          end else begin
            FieldByName('ppn').AsInteger := 0;
          end;
          Post;
        end;

        sNoJ := GetLastFak('jurnal');
        UpdateFaktur(Copy(sNoJ,1,6));
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);

        for ii := 0 to nxGrd.RowCount - 1 do begin
          if nxGrd.Cell[CKD_BRG,ii].AsString = '' then Continue;
          with sj_det do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoSJ;
            FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ii].AsString;
            FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,ii].AsFloat;
            FieldByName('satuan').AsString := nxGrd.Cell[CSAT,ii].AsString;
            FieldByName('qty_so').AsFloat := nxGrd.Cell[CQTY_SO,ii].AsFloat;
            FieldByName('no_so').AsString := nxGrd.Cell[CNO_SO,ii].AsString;
            FieldByName('kode_gdg').AsString := 'G02';

            if mJnsSPMB = 'peletan' then begin
              FieldByName('qty_baik').AsFloat := nxGrd.Cell[nxColBaik.Index,ii].AsFloat;
              FieldByName('qty_afkir').AsFloat := nxGrd.Cell[nxColAfkir.Index,ii].AsFloat;
              FieldByName('qty_retur').AsFloat := nxGrd.Cell[nxColRetur.Index,ii].AsFloat;
            end;

            qso := OpenRS('SELECT `po#`, `sc#` FROM tbl_so_head WHERE ' +
              'no_bukti = ''%s''',
              [nxGrd.Cell[CNO_SO,ii].AsString]);
            FieldByName('po#').AsString := qso.FieldByName('po#').AsString;
            FieldByName('sc#').AsString := qso.FieldByName('sc#').AsString;
            qso.Close;

            FieldByName('keterangan').AsString := nxGrd.Cell[CKET,ii].AsString;
            FieldByName('ket_harga').AsString := nxGrd.Cell[CKET_HRG,ii].AsString;

            Post;
          end;

          brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
            [nxGrd.Cell[CKD_BRG,ii].AsString]);
          with brg do begin
            if Locate('kode', nxGrd.Cell[CKD_BRG,ii].AsString,[]) then begin
              Edit;
              FieldByName('stok').AsFloat :=
                FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,ii].AsFloat;
              Post;
            end;
          end;
          brg.Close;

          brg_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' ' +
            'AND kode_gdg = ''%s''',
            [nxGrd.Cell[CKD_BRG,ii].AsString,'G02']);
          with brg_det do begin
            if Locate('kode_brg;kode_gdg',
              VarArrayOf([nxGrd.Cell[CKD_BRG,ii].AsString,'G02']),[]) then begin
              Edit;
              FieldByName('stok').AsFloat :=
                FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,ii].AsFloat;
              Post;
            end;
          end;
          brg_det.Close;

          with hist do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoSJ;
            FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ii].AsString;
            FieldByName('tipe').AsString := 'OUT_';
            FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,ii].AsFloat;

            if mJnsSPMB = 'peletan' then begin
              FieldByName('qty_baik').AsFloat := nxGrd.Cell[nxColBaik.Index,ii].AsFloat;
              FieldByName('qty_afkir').AsFloat := nxGrd.Cell[nxColAfkir.Index,ii].AsFloat;
              FieldByName('qty_retur').AsFloat := nxGrd.Cell[nxColRetur.Index,ii].AsFloat;
            end;

            FieldByName('satuan').AsString := nxGrd.Cell[CSAT,ii].AsString;
            FieldByName('gudang').AsString := 'G02';
            FieldByName('referensi').AsString := '';
            FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[CKET,ii].AsString);
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := aplikasi.UserDept;
            FieldByName('no_so').AsString := nxGrd.Cell[CNO_SO,ii].AsString;
            FieldByName('no_spk').AsString := '';
            FieldByName('no_spmb').AsString := cxtNoTrans.Text;
            FieldByName('no_ccr').AsString := '';
            FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
            FieldByName('hpp').AsFloat := GetHPP(nxGrd.Cell[CKD_BRG,ii].AsString);
            FieldByName('unit_ktg').AsString := GetUnitKTG(nxGrd.Cell[CKD_BRG,ii].AsString);
            Post;
          end;

          sAkunBrg := GetDefaultAkunBrg(nxGrd.Cell[CKD_BRG,ii].AsString,'hpp');
          qjd.Insert;
          qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoSJ;
          qjd.FieldByName('akun').AsString := sAkunBrg;
          qjd.FieldByName('debet').AsFloat := GetHPP(nxGrd.Cell[CKD_BRG,ii].AsString) * nxGrd.Cell[CQTY,ii].AsFloat;
          qjd.FieldByName('keterangan').AsString := 'SURAT JALAN';
          qjd.FieldByName('dc').AsString := 'D';
          qjd.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ii].AsString;
          qjd.FieldByName('unit').AsString := GetUnitKTG(nxGrd.Cell[CKD_BRG,ii].AsString);
          qjd.Post;

          sAkunBrg := GetDefaultAkunBrg(nxGrd.Cell[CKD_BRG,ii].AsString,'persediaan');
          qjd.Insert;
          qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoSJ;
          qjd.FieldByName('akun').AsString := sAkunBrg;
          qjd.FieldByName('kredit').AsFloat := GetHPP(nxGrd.Cell[CKD_BRG,ii].AsString) * nxGrd.Cell[CQTY,ii].AsFloat;
          qjd.FieldByName('keterangan').AsString := 'SURAT JALAN';
          qjd.FieldByName('dc').AsString := 'K';
          qjd.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ii].AsString;
          qjd.FieldByName('unit').AsString := GetUnitKTG(nxGrd.Cell[CKD_BRG,ii].AsString);
          qjd.Post;

          if mJnsSPMB = 'peletan' then begin

          end;
        end;
        // update status SPMB
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
          'SET f_completed = 1 WHERE no_bukti = ''' + cxtNoTrans.Text + '''');

        sj_head.Close;
        sj_det.Close;
        hist.Close;

        dm.zConn.Commit;

        Screen.Cursor := crDefault;

        if mJnsSPMB = 'peletan' then UpdateDetPel;
        if mJnsSPMB = 'peletan' then
          UpdateSOTerbukaPlt(cxtNoTrans.Text)
        else
          UpdateSOTerbuka(cxtNoTrans.Text);

        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          if mJnsSPMB = 'peletan' then begin
            zqrSJPel.Close;
            zqrSJPel.SQL.Add('WHERE no_bukti = ''' + sNoSJ + ''' ORDER BY no_so, kode_brg');
            zqrSJPel.Open;
            rptSJPel.ShowReport(True);

            zqrPerincianPlt.Close;
            zqrPerincianPlt.SQL.Strings[14] := 'AND a.no_bukti IN ' +
              '(SELECT no_so FROM tbl_sj_det WHERE no_bukti = ''' + sNoSJ + ''') '; 
            zqrPerincianPlt.Open;
            rptPerincianPlt.ShowReport(True);

            Release;
          end
          else begin
            zqrSJ.Close;
            zqrSJ.SQL.Add('WHERE no_bukti = ''' + sNoSJ + ''' ORDER BY no_so, kode_brg');
            zqrSJ.Open;
            rptSJ.ShowReport(True);
            Release;
          end;
          btnBatalClick(nil);
        end;

        //f := TFrmSJ.Create(Self);
        //f.NoSJ := sNoSJ;
        //f.ShowModal;

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end
    else begin
      if aplikasi.GetWewenang('CetalUlangSJ') = '1' then begin
        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          zqrSJ.Close;
          zqrSJ.SQL.Add('WHERE no_bukti = ''' + cxtNoSJ.Text + '''');
          zqrSJ.Open;
          rptSJ.ShowReport(True);
          Release;
        end;
      end;
    end;
    q.Close;
  end;
end;

procedure TFrmSPMB_NEW.btnCetakSPMBClick(Sender: TObject);
var
  q: TZQuery;
  f: TfrmLapUmum;
begin

  q := OpenRS('SELECT * FROM v_spmb_head ' +
    'WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if not q.IsEmpty then begin
    f := TfrmLapUmum.Create(Self);
    if mJnsSPMB = 'peletan' then begin
      with f do begin
        zqrSPMBPel.Close;
        zqrSPMBPel.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
        zqrSPMBPel.Open;
        rptSPMBPel.ShowReport(True);
        Release;
      end;
    end
    else begin
      with f do begin
        zqrSPMB.Close;
        zqrSPMB.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
        zqrSPMB.Open;
        rptSPMB.ShowReport(True);
        Release;
      end;
    end;
  end
  else begin
    MsgBox('SPMB ini belum disimpan.');
  end;
  q.Close;

end;

procedure TFrmSPMB_NEW.UpdateSOTerbuka(sNoSPMB: string);
var
  q, qSO_V_SJ: TZQuery;
  qso, qsj: TZQuery;
  sNoSO: string;
  qty_so, qty_sj: Extended;
begin

  q := OpenRS('SELECT * FROM tbl_spmb_det WHERE no_bukti = ''%s''', [sNoSPMB]);

  try
    dm.zConn.StartTransaction;

    while not q.Eof do begin
      sNoSO := q.FieldByName('no_so').AsString;
      qso := OpenRS('SELECT IFNULL(SUM(qty),0) AS qty_so FROM tbl_so_det WHERE no_bukti = ''%s''',[sNoSO]);
      qsj := OpenRS('SELECT IFNULL(SUM(qty),0) AS qty_sj FROM tbl_sj_det WHERE no_so = ''%s''',[sNoSO]);

      if qso.FieldByName('qty_so').AsFloat > 0 then begin
        qty_so := qso.FieldByName('qty_so').AsFloat;
        qty_sj := qsj.FieldByName('qty_sj').AsFloat;

        //if qso.FieldByName('qty_so').AsFloat = qsj.FieldByName('qty_sj').AsFloat then begin
        // jika so sama dengan sj
        if CompareValue(qty_so, qty_sj) = 0 then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 ' +
              'WHERE no_bukti = ''' + sNoSO + '''');
        end;
        // jika sj > so
        if CompareValue(qty_so, qty_sj) = -1 then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 ' +
              'WHERE no_bukti = ''' + sNoSO + '''');
        end;
      end;
      qso.Close;
      qsj.Close;

      {
      // cek apakah SO sudah selesai
      qSO_V_SJ := OpenRS('SELECT no_so, SUM(qty_so) qty_so, SUM(qty_kirim) qty_kirim ' +
        'FROM v_so_vs_sj WHERE no_so = ''%s'' ' +
        'GROUP BY no_so',
        [q.FieldByName('no_so').AsString]);

      if not qSO_V_SJ.IsEmpty then begin
        if qSO_V_SJ.FieldByName('qty_so').AsFloat = qSO_V_SJ.FieldByName('qty_kirim').AsFloat then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 ' +
            'WHERE no_bukti = ''' + qSO_V_SJ.FieldByName('no_so').AsString + '''');
        end;
      end;

      qSO_V_SJ.Close;
      qSO_V_SJ := nil;
      }

      // untuk benar-benar memastikan SO ditutup
      dm.zConn.ExecuteDirect(
        Format('CALL sp_cek_so_complete(''%s'')',[sNoSO])
      );

      q.Next;
    end;



    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TFrmSPMB_NEW.btnCariCustClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'customer';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUCust.EditValue := fKode.AsString;
  end;
  f.Release;
  cxLUCust.SetFocus;
end;

procedure TFrmSPMB_NEW.btnHapusSPMBClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
  lst, lst2, lstBody: TStringList;
  bdy: TIdText;
  email: TIdMessage;  
begin
  // cek apakah SPMB sudah ada
  q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('SPMB ini belum disimpan.');

  end
  else begin
    q.Close;

    // konfirmasi hapus SPMB
    i := QBox(Self,'Apakah Anda yakin menghapus SPMB ini ?', 'Hapus SPMB');
    if i = IDNO then begin
      Abort;
    end;

    // cek apakah SPMB sudah dibuatkan surat jalan
    q := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
      [cxtNoTrans.Text]);
    if not q.IsEmpty then begin
      MsgBox('SPMB ini tidak dapat dihapus karena sudah dibuatkan Surat Jalan.');
    end
    else begin


      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head set f_hapus=1,f_user_hapus=''' + aplikasi.NamaUser + ''' WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.Commit;
        MsgBox('SPMB akan dihapus setelah mendapat approval dari atasan.');

        cxlNoBukti.EditValue := '';
        zqrNoBukti.Close;
        zqrNoBukti.Open;

        //kirim email ke Cik enny
        idSMTP.AuthType := satNone;
        idSMTP.Host := aplikasi.ServerSMTP;
        idSMTP.Port     := 25;
        idSMTP.UserName := aplikasi.EmailUser;
        idSMTP.Password := '';

        email := TIdMessage.Create(nil);
        try
          email.ContentType := 'multipart/mixed';
          email.From.Address := aplikasi.EmailUser;
          email.From.Name := aplikasi.NamaUser;

          email.Recipients.EMailAddresses := 'enny@sdp.mail';

          email.Subject := 'Permintaan Hapus No SPMB: ' + cxtNoTrans.Text;

          lstBody := TStringList.Create;
          lstBody.Add('<html>');
          lstBody.Add('<head>');
          lstBody.Add('</head>');
          lstBody.Add('<body>');
          lstBody.Add('<h3>Permintaan hapus SPMB</h3></br></br>');
          lstBody.Add('<pre>');
          lstBody.Add('Ada permintaan hapus transaksi spmb yang perlu di Approval, silahkan cek aplikasi MDA User Request : ' + aplikasi.NamaUser);
          lstBody.Add('</pre>');

          lstBody.Add('</br>');
          lstBody.Add('</body>');
          lstBody.Add('</html>');

          bdy := TIdText.Create(email.MessageParts, lstBody);
          bdy.ContentType := 'text/html';

          idSMTP.Connect;
          try
            idSMTP.Send(email);
          finally
            idSMTP.Disconnect;
          end;
        finally
          //email.Free;
          bdy.Free;
          lstBody.Free;
        end;

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;

      ClearAll;
      btnBatalClick(nil);
    end;
    q.Close;
  end;

end;

procedure TFrmSPMB_NEW.btnAmbilKetClick(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then Continue;
    q := OpenRS('SELECT notes FROM tbl_so_det ' +
      'WHERE no_bukti = ''%s'' AND kode_brg = %s',
      [
        nxGrd.Cell[nxColNoSO.Index,i].AsString,
        nxGrd.Cell[nxColKodeBrg.Index,i].AsString
      ]);
    if not q.IsEmpty then
      nxGrd.Cell[nxColKet.Index,i].AsString := q.FieldByName('notes').AsString;
    q.Close;
    q := nil;  
  end;
end;

procedure TFrmSPMB_NEW.cxChkTampilSPMBAllClick(Sender: TObject);
begin
  zqrNoBukti.Close;
  if cxChkTampilSPMBAll.Checked then
    zqrNoBukti.SQL.Text := 'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM tbl_spmb_head a ' +
      'LEFT JOIN tbl_customer b ON a.kode_customer = b.kode ' +
      'Where f_hapus=0 ORDER BY tanggal DESC'
  else
    zqrNoBukti.SQL.Text := 'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM tbl_spmb_head a ' +
      'LEFT JOIN tbl_customer b ON a.kode_customer = b.kode ' +
      'WHERE no_bukti NOT IN (SELECT no_spmb FROM tbl_sj_head) and f_hapus=0 ' +
      'ORDER BY tanggal DESC';
  zqrNoBukti.Open;
end;

procedure TFrmSPMB_NEW.btnSimpanKetClick(Sender: TObject);
begin
  if nxGrd.Cell[CKD_BRG,nxGrd.SelectedRow].AsString <> '' then
    nxGrd.Cell[nxColKet.Index,nxGrd.SelectedRow].AsString :=
      cxMemo.Lines.Text;
  cxMemo.Lines.Text := '';
  pnlMemo.Visible := False;
end;

procedure TFrmSPMB_NEW.btnBatalMemoClick(Sender: TObject);
begin
  pnlMemo.Visible := False;
end;

procedure TFrmSPMB_NEW.cxMemoExit(Sender: TObject);
begin
  inherited;
  btnSimpanKetClick(nil);
end;

procedure TFrmSPMB_NEW.Button1Click(Sender: TObject);
var
  i: integer;
begin
  ListBox1.Clear;
  for i := 0 to mLstRetur.Count - 1 do begin
    ListBox1.AddItem(mLstRetur.Strings[i], nil);
  end;

end;

procedure TFrmSPMB_NEW.cxMemo2Exit(Sender: TObject);
begin
  cxtKeterangan.Text := cxMemo2.Lines.Text;
  cxMemo2.Visible := False;

end;

procedure TFrmSPMB_NEW.btnShowMemoClick(Sender: TObject);
begin
  if cxMemo2.Visible = False then begin
    cxMemo2.Lines.Text := cxtKeterangan.Text;
    cxMemo2.Visible := True;
  end
  else begin
    cxtKeterangan.Text := cxMemo2.Lines.Text;
    cxMemo2.Visible := False;
  end;
end;

procedure TFrmSPMB_NEW.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02, qb, qa, qr: real);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qbr: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = CKD_BRG) then begin

    q := OpenRS('SELECT * FROM tmp_spmb WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = %s',
      [sNoSO, sKodeBrg]);

    if not q.IsEmpty then begin
      MsgBox('Kode barang dengan nomer SO tersebut sudah ada.');
      q.Close;
      Abort;
    end;
    q.Close;

    // 12-07-2014
    // permintaan khusus natalia
    if aplikasi.NamaUser <> 'NATALIA' then begin
      // cek apakah barang sudah ada di SPMB lain
      q := OpenRS('SELECT a.no_bukti, a.qty, b.qty qty_so FROM ' +
        'tbl_spmb_det a, tbl_so_det b, tbl_spmb_head c WHERE ' +
        'a.no_so = b.no_bukti AND a.no_so = ''%s'' ' +
        'AND a.kode_brg = %s AND a.qty = b.qty ' +
        'AND a.no_bukti = c.no_bukti AND c.f_completed = 0',
        [sNoSO, sKodeBrg]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang : ' + sKodeBrg + #10#13 +
          'Sudah dibuatkan SPMB dengan QTY : ' + q.FieldByName('qty').AsString + #10#13 +
          'No. SPMB : ' + q.FieldByName('no_bukti').AsString);
        Abort;
      end;
      q.Close;
    end;

    q := OpenRS('SELECT no_bukti, kode_brg, sum(qty) as qty ' +
      'FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      ' AND kode_brg = ''%s'' GROUP BY no_bukti, kode_brg',
      [sNoSO, sKodeBrg]);
    if not q.IsEmpty then begin

      qbr := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
        [q.FIeldByName('kode_brg').AsString]);
      nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNO_SO,ARow].AsString := sNoSO;
      nxGrd.Cell[CNM_BRG,ARow].AsString := qbr.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,ARow].AsString := qbr.FieldByName('satuan').AsString;
      qbr.Close;

      qbr := OpenRS('SELECT SUM(qty) AS qty_kirim FROM tbl_sj_det ' +
        'WHERE no_so = ''%s'' AND kode_brg = %s',
        [sNoSO, q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CQTY_KIRIM,ARow].AsFloat := qbr.FieldByName('qty_kirim').AsFloat;
      nxGrd.Cell[CQTY_KIRIM,ARow].Color := clYellow;
      qbr.Close;

      nxGrd.Cell[CQTY,ARow].AsFloat := qty_g02;
      nxGrd.Cell[CQTY,ARow].Color := clSkyBlue;
      nxGrd.Cell[CQTY_SO,ARow].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CQTY_SO,ARow].Color := clMoneyGreen;
      nxGrd.Cell[CQTY_G02,ARow].AsFloat := qty_g02;
      nxGrd.Cell[CQTY_G02,ARow].Color := clAqua;

      nxGrd.Cell[CBAIK,ARow].AsFloat := qb;
      nxGrd.Cell[CAFKIR,ARow].AsFloat := qa;
      nxGrd.Cell[CRETUR,ARow].AsFloat := qr;

      //nxGrd.Cell[CQTY,ARow].AsFloat :=
      //  nxGrd.Cell[CQTY_SO,ARow].AsFloat -
      //  nxGrd.Cell[CQTY_G02,ARow].AsFloat -
      //  nxGrd.Cell[CQTY_KIRIM,ARow].AsFloat;

      //nxColQTy.Max := nxGrd.Cell[CQTY,ARow].AsFloat;

      if nxGrd.Cell[CQTY_SO,ARow].AsFloat < nxGrd.Cell[CQTY,ARow].AsFloat then
        nxGrd.Cell[CQTY_SO,ARow].Color := clRed; 

      nxGrd.AddRow();

      mTblTmp.Insert;
      mTblTmp.FieldByName('no_bukti').AsString := nxGrd.Cell[CNO_SO,ARow].AsString;
      mTblTmp.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ARow].AsString;
      mTblTmp.Post;

      q.Next;
    end;

    HitungTotal;
  end;
end;

procedure TFrmSPMB_NEW.HitungBeratTotal;
begin
  //
end;

procedure TFrmSPMB_NEW.nxBtnEditButtonClick(Sender: TObject);
var
  ACol,ARow: integer;
  fd: TFrmDetHslPel;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;

  if ACol = nxColRetur.Index then begin
    fd := TfrmDetHslPel.Create(Self);
    fd.Jenis := 'retur';
    fd.NoSO := nxGrd.Cell[nxColNoSO.Index, ARow].AsString;
    fd.KodeBrg := nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString;
    fd.ShowModal;
    if fd.cxsTot.Value = 0 then begin
      nxGrd.Cell[nxColRetur.Index,ARow].AsFloat := 0;
      nxGrd.SelectCell(nxColAfkir.Index, ARow);
      nxGrd.SelectCell(nxColRetur.Index, ARow);
      UpdateTotQtyPel;
    end
    else begin
      if fd.Total > 0 then begin
        nxGrd.Cell[nxColRetur.Index,ARow].AsFloat := fd.Total;
        nxGrd.SelectCell(nxColQTy.Index, ARow);
        CollectList(fd.ListOfR,'retur');
        UpdateTotQtyPel;
      end;
    end;
    fd.Free;
  end
  else begin
    fd := TfrmDetHslPel.Create(Self);
    fd.Jenis := 'afkir';
    fd.NoSO := nxGrd.Cell[nxColNoSO.Index, ARow].AsString;
    fd.KodeBrg := nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString;
    fd.ShowModal;
    if fd.cxsTot.Value = 0 then begin
      nxGrd.Cell[nxColAfkir.Index,ARow].AsFloat := 0;
      nxGrd.SelectCell(nxColRetur.Index, ARow);
      nxGrd.SelectCell(nxColAfkir.Index, ARow);
      UpdateTotQtyPel;
    end
    else begin
      if fd.Total > 0 then begin
        nxGrd.Cell[nxColAfkir.Index,ARow].AsFloat := fd.Total;
        nxGrd.SelectCell(nxColQTy.Index, ARow);
        CollectList(fd.ListOfR,'afkir');
        UpdateTotQtyPel;
      end;
    end;
    fd.Free;
  end;

end;

procedure TFrmSPMB_NEW.CollectList(lst: TStringList; jenis: string);
var
  i,j: Integer;
begin
  if jenis = 'retur' then begin
    for i := 0 to lst.Count - 1 do begin
      if lst.ValueFromIndex[i] = 'o' then
        if mLstRetur.IndexOf(lst.Names[i]) = -1 then
          mLstRetur.Add(lst.Names[i])
      else
        mLstRetur.Delete(mLstRetur.IndexOf(lst.Names[i]));
    end;
  end
  else if jenis = 'afkir' then begin
    for i := 0 to lst.Count - 1 do begin
      if lst.ValueFromIndex[i] = 'o' then
        if mLstAfkir.IndexOf(lst.Names[i]) = -1 then
          mLstAfkir.Add(lst.Names[i])
      else
        mLstAfkir.Delete(mLstAfkir.IndexOf(lst.Names[i]));
    end;
  end;
end;

procedure TFrmSPMB_NEW.UpdateDetPel;
var
  i: Integer;
begin
  if mLstRetur.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to mLstRetur.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_hsl_prd_det SET f_kirim = 1 ' +
          'WHERE id = ' + mLstRetur.Strings[i]);
      end;
      
      dm.zConn.Commit;
    except
    end;
  end;
  
  if mLstAfkir.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to mLstAfkir.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_hsl_prd_det SET f_kirim = 1 ' +
          'WHERE id = ' + mLstAfkir.Strings[i]);
      end;

      dm.zConn.Commit;
    except
    end;
  end;

  mLstRetur.Clear;
  mLstAfkir.Clear;

end;

procedure TFrmSPMB_NEW.UpdateTotQtyPel;
var
  ARow: integer;
begin
  ARow := nxGrd.SelectedRow;
  nxGrd.Cell[nxColQTy.Index, ARow].AsFloat :=
    nxGrd.Cell[nxColBaik.Index, ARow].AsFloat +
    nxGrd.Cell[nxColAfkir.Index, ARow].AsFloat +
    nxGrd.Cell[nxColRetur.Index, ARow].AsFloat;

end;

procedure TFrmSPMB_NEW.cxdTglRencKirimPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cxdTglRencKirim.Date < aplikasi.TanggalServer then
    cxdTglRencKirim.Date := aplikasi.TanggalServer; 

end;

procedure TFrmSPMB_NEW.cxChkSopirLuarClick(Sender: TObject);
begin
  if cxChkSopirLuar.Checked then begin
    cxlArmada.Visible := False;
    cxlDriver.Visible := False;
    cxtNopol.Visible := True;
    cxtDriver.Visible := True;
  end
  else begin
    cxlArmada.Visible := True;
    cxlDriver.Visible := True;
    cxtNopol.Visible := False;
    cxtDriver.Visible := False;
  end;
end;

procedure TFrmSPMB_NEW.CetakSuratJalan;
var
  sj_head, sj_det, qcek,
  hist, qso, qbrg: TZQuery;
  ii: Integer;
  sNoSJ: string;
begin
  {
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if Trim(cxdTglRencKirim.Text) = '' then begin
    MsgBox('Tanggal Rencana Pengiriman harus diisi.');
    cxdTglRencKirim.SetFocus;
  end
  else begin

    if cxChkSopirLuar.Checked then begin
      if Trim(cxtNopol.Text) = '' then begin
        MsgBox('No. Polisi harus diisi.');
        cxtNopol.SetFocus;
        Abort;
      end
      else if Trim(cxtDriver.Text) = '' then begin
        MsgBox('Driver harus diisi.');
        cxtDriver.SetFocus;
        Abort;
      end;
    end
    else begin
      if Trim(cxlArmada.Text) = '' then begin
        MsgBox('No. Polisi harus diisi.');
        cxlArmada.SetFocus;
        Abort;
      end
      else if Trim(cxlDriver.Text) = '' then begin
        MsgBox('Driver harus diisi.');
        cxlDriver.SetFocus;
        Abort;
      end;
    end;

    // cek apakah spmb sudah disimpan
    qcek := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);
    if qcek.IsEmpty then begin
      MsgBox('SPMB ini belum disimpan.');
      qcek.Close;
      Abort;
    end;
    qcek.Close;

    // konfirmasi cetak surat jalan
    ii := QBox(Self,'Cetak Surat Jalan ?' + Chr(10) + Chr(13) +
      'Pastikan SPMB sudah diserahkan ke WHL.','Cetak SJ');
    if ii = IDNO then begin
      Abort;
    end;

    Screen.Cursor := crSQLWait;

    self.Jenis := 'edit';
    btnSimpanClick(btnCetakSJ);

    // cek apakah spmb sudah di sjkan
    qcek := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',[cxtNoTrans.Text]);

    if qcek.IsEmpty then begin

      sNoSJ := GetLastFak('sj');
      UpdateFaktur(Copy(sNoSJ,1,7));

      try
        dm.zConn.StartTransaction;

        //sj_head := OpenTbl('tbl_sj_head');
        sj_head := OpenRS('SELECT * FROM tbl_sj_head WHERE no_bukti = ''%s''', [sNoSJ]);

        //sj_det := OpenTbl('tbl_sj_det');
        sj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s''', [sNoSJ]);

        //hist := OpenTbl('tbl_history');
        hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoSJ]);

        with sj_head do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoSJ;
          FieldByName('kode_customer').AsString := cxLUCust.EditValue;
          FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('no_spmb').AsString := cxtNoTrans.Text;
          FieldByName('user').AsString := Aplikasi.NamaUser;
          FieldByName('user_dept').AsString := aplikasi.UserDept;
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          FieldByName('f_cetak').AsInteger := 1;
          if mJnsSPMB = 'peletan' then
            FieldByName('ongkos_kirim').AsFloat := cxsOngkir.Value;
          Post;
        end;

        // update status SPMB
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
          'SET f_completed = 1 WHERE no_bukti = ''' + cxtNoTrans.Text + '''');

        sj_head.Close;
        sj_det.Close;
        hist.Close;

        dm.zConn.Commit;

        Screen.Cursor := crDefault;

        if mJnsSPMB = 'peletan' then UpdateDetPel;
        UpdateSOTerbuka(cxtNoTrans.Text);

        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          if mJnsSPMB = 'peletan' then begin
            zqrSJPel.Close;
            zqrSJPel.SQL.Add('WHERE no_bukti = ''' + sNoSJ + ''' ORDER BY no_so, kode_brg');
            zqrSJPel.Open;
            rptSJPel.ShowReport(True);
            Release;
          end
          else begin
            zqrSJ.Close;
            zqrSJ.SQL.Add('WHERE no_bukti = ''' + sNoSJ + ''' ORDER BY no_so, kode_brg');
            zqrSJ.Open;
            rptSJ.ShowReport(True);
            Release;
          end;
          btnBatalClick(nil);
        end;

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end
    else begin
      if aplikasi.GetWewenang('CetalUlangSJ') = '1' then begin
        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          zqrSJ.Close;
          zqrSJ.SQL.Add('WHERE no_bukti = ''' + cxtNoSJ.Text + '''');
          zqrSJ.Open;
          rptSJ.ShowReport(True);
          Release;
        end;
      end;
    end;
    q.Close;

  end;
  }
end;

procedure TFrmSPMB_NEW.UpdateSOTerbukaPlt(sNoSPMB: string);
var
  q, q2, qSO_V_SJ, qhist, qhp, qhist2, qb, qbd, q_complete: TZQuery;
  qso, qsj, qqty_so: TZQuery;
  sNoSO, sKodeBrg, sTmp: string;
  qty_so, qty_sj, qty_baik,
  qty_retur, qty_afkir: Extended;
  iJmlNotComplete: Integer;
  st: real;
begin

  try

    q := OpenRS('SELECT DISTINCT no_so FROM tbl_spmb_det WHERE no_bukti = ''%s''', [sNoSPMB]);
    q2 := OpenRS('SELECT kode_brg, no_so FROM tbl_spmb_det WHERE no_bukti = ''%s''', [sNoSPMB]);
    dm.zConn.StartTransaction;

    while not q.Eof do begin
      sNoSO := q.FieldByName('no_so').AsString;
      qqty_so := OpenRS('SELECT SUM(qty) qty FROM tbl_so_det where no_bukti = ''%s''', [sNoSO]);

      qso := OpenRS('SELECT sf_soplt_completed(''%s'', %s)',
        [sNoSO,
         StringReplace(qqty_so.FieldByName('qty').AsString, ',', '.', [rfReplaceAll])
        ]);

      qqty_so.Close;
      qqty_so.Free;

      qso := OpenRS('SELECT * FROM _tmp_soplt_completed');

      if qso.FieldByName('status').AsString = 'C' then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 ' +
          'WHERE no_bukti = ''' + sNoSO + '''');
        SendEmailSOCompleted(sNoSO);
      end;
      qso.Close;

      q.Next;
    end;

    while not q2.Eof do begin
      sNoSO := q2.FieldByName('no_so').AsString;
      sKodeBrg := q2.FieldByName('kode_brg').AsString;

      qso := OpenRS('SELECT sf_plt_completed(''%s'', %s)',[sNoSO, sKodeBrg]);
      qso := OpenRS('SELECT * FROM _tmp_plt_completed');

      if qso.FieldByName('status').AsString = 'C' then begin

        dm.zConn.ExecuteDirect(Format('UPDATE tbl_so_det SET plt_completed = 1 ' +
          'WHERE no_bukti = ''%s'' AND kode_brg = %s', [sNoSO, sKodeBrg]));

        // lakukan perhitungan sisa untuk menutup barang peletan customer di G01
        qhist := OpenRS('SELECT qty FROM tbl_history WHERE no_bukti = ''%s'' and gudang = ''G01'' and tipe = ''IN_'' AND kode_brg = %s',
          [sNoSO, sKodeBrg]);
        qhp := OpenRS('SELECT SUM(qty) AS hsl_prd FROM tbl_history WHERE kode_brg = %s AND no_so = ''%s'' AND tipe = ''OUT_'' AND left(no_bukti,3) = ''HPR''',
          [sKodeBrg, sNoSO]);
        qhist2 := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoSO]);
        qhist2.Insert;
        qhist2.FieldByName('no_bukti').AsString := sNoSO;
        qhist2.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qhist2.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        qhist2.FieldByName('kode_brg').AsString := sKodeBrg;
        qhist2.FieldByName('tipe').AsString := 'OUT_';

        qhist2.FieldByName('qty').AsFloat :=
          qhist.FieldByName('qty').AsFloat - qhp.FieldByName('hsl_prd').AsFloat;
        st := qhist2.FieldByName('qty').AsFloat - qhp.FieldByName('hsl_prd').AsFloat;

        qhist2.FieldByName('no_so').AsString := sNoSO;
        qhist2.FieldByName('satuan').AsString := 'KG';
        qhist2.FieldByName('gudang').AsString := 'G01';
        qhist2.FieldByName('user').AsString := Aplikasi.NamaUser;
        qhist2.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        qhist2.FieldByName('tgl_input').AsFloat := aplikasi.NowServer;
        qhist2.FieldByName('keterangan').AsString := 'PENUTUPAN SO OTOMATIS';
        qhist2.Post;

        qhist2.Close;
        qhist.Close;
        qhp.Close;
        qhist2.Free;
        qhist.Free;
        qhp.Free;

        qb := OpenRS('SELECT stok FROM tbl_barang WHERE kode = %s', [sKodeBrg]);
        qb.Edit;
        qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat - st;
        qb.Post;
        qb.Close;
        qb.Free;

        qbd := OpenRS('SELECT stok FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
          [sKodeBrg, 'G01']);
        qbd.Edit;
        qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat - st;
        qbd.Post;
        qbd.Close;
        qbd.Free;
        //

        q_complete := OpenRS('SELECT plt_completed FROM tbl_so_det WHERE no_bukti = ''%s'' AND plt_completed = 0',[sNoSO]);
        if q_complete.IsEmpty then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 WHERE no_bukti = ''' + sNoSO + '''');
          SendEmailSOCompleted(sNoSO);
        end;
        q_complete.Close;
        q_complete.Free;

      end;
      qso.Close;
      q2.Next;
    end;

    {
    if zqrCekSOPlt.Active then zqrCekSOPlt.Close;
    zqrCekSOPlt.ParamByName('no_bukti').AsString := sNoSO;
    iJmlNotComplete := 0;
    while not zqrCekSOPlt.Eof do begin
      if zqrCekSOPlt.FieldByName('status').AsString = 'U' then
        iJmlNotComplete := 1;
    end;
    zqrCekSOPlt.Close;
    if iJmlNotComplete = 0 then begin
      dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1 WHERE no_bukti = ''' + sNoSO + '''');
    end;
    }

    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TFrmSPMB_NEW.SendEmailSOCompleted(sNoSO: string);
var
  i : Integer;
  sTmp: string;
  lst: TStringList;
  email : TIdMessage;
  bdy: TIdText;
  q: TZQuery;
begin
  try
    idSMTP.AuthType := satNone;
    idSMTP.Host := Aplikasi.ServerSMTP;
    idSMTP.Port     := 25;
    idSMTP.UserName := aplikasi.EmailUser;
    idSMTP.Password := '';

    email := TIdMessage.Create(nil);
    try
      email.ContentType := 'multipart/mixed';
      email.From.Address := aplikasi.EmailUser;
      email.From.Name := aplikasi.NamaUser;

      if aplikasi.debug then
        email.Recipients.EMailAddresses := 'yosef@sdp.mail'
      else
        email.Recipients.EMailAddresses := 'ery@sdp.mail,yosef@sdp.mail';

      email.Subject := 'SO Peletan #' + sNoSO + ' : KOMPLIT';

      lst := TStringList.Create;
      lst.Add('<html>');
      lst.Add('<head>');
      lst.Add('</head>');
      lst.Add('<body>');
      lst.Add('</br>');
      lst.Add('SO Peletan: #' + sNoSO + ' : KOMPLIT');
      lst.Add('</br>');
      lst.Add('</body>');
      lst.Add('</html>');

      bdy := TIdText.Create(email.MessageParts, lst);
      bdy.ContentType := 'text/html';

      idSMTP.Connect;
      try
        idSMTP.Send(email);
      finally
        idSMTP.Disconnect;
      end;
    finally
      email.Free;
    end;
  except
    on E: Exception do begin
      ShowMessage('Error: ' + E.Message);
    end;
  end;
end;

procedure TFrmSPMB_NEW.cxChkPPNClick(Sender: TObject);
begin
 if cxChkPPN.Checked then
    cxsPPN.Enabled := True
 else
    cxsPPN.Enabled := False;
end;

end.
