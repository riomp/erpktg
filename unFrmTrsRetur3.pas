unit unFrmTrsRetur3;

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
  cxDBLookupComboBox, ZAbstractRODataset, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText;

type
  TfrmTrsRetur3 = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    nxColHapus: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKet: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxtNamaCust: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    nxColNoSO: TNxTextColumn;
    NxEdit2: TNxEdit;
    zqrNoBukti: TZReadOnlyQuery;
    dsNoBukti: TDataSource;
    nxColSatuan: TNxTextColumn;
    NxEdit3: TNxEdit;
    nxBeNoSO: TNxButtonEdit;
    zqrNoSJ: TZReadOnlyQuery;
    dsSJ: TDataSource;
    cxlNoSJ: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxtNoSPBB: TcxTextEdit;
    cxlCCR: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    zqrCCR: TZReadOnlyQuery;
    dsCCR: TDataSource;
    nxColQtyRetur: TNxNumberColumn;
    nxColChkPilih: TNxCheckBoxColumn;
    nxColNoSJ: TNxTextColumn;
    nxColNoSPMB: TNxTextColumn;
    nxColKey: TNxTextColumn;
    nxColCustomer: TNxTextColumn;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxCmbJenisRetur: TcxComboBox;
    cxLabel9: TcxLabel;
    btnSimpan2: TButton;
    idSMTP: TIdSMTP;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnCariPOClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure nxBeNoSOButtonClick(Sender: TObject);
    procedure cxlNoSJPropertiesEditValueChanged(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure idSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure btnSimpan2Click(Sender: TObject);
  private
    mJenis: string;
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure SendEmail;
  public
    public property Jenis: string read mJenis write mJenis;
    public property UserDept: string read mUserDept write mUserDept;
    procedure AddRow(sNoSJ, sKodeBrg, sNoSO: string); 
  end;

var
  frmTrsRetur3: TFrmTrsRetur3;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSJ;

const
  CNO : integer = 0;
  CKD_BRG : integer = 1;
  CNM_BRG : integer = 2;
  CSAT : integer = 3;
  CQTY : integer = 4;
  CNOSO : Integer = 5;
  CNOSPK : Integer = 6;
  CREF : Integer = 7;
  CKET : Integer = 8;
  CHAPUS: integer = 9;

{$R *.dfm}

procedure TFrmTrsRetur3.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin

  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxtNOTrans.Text := GetLastFak('retur-penj');
  cxtNoSPBB.Text := GetLastFak('spbb');

  //cxCmbJenisRetur.Properties.Items.Add('RETUR PENJUALAN BARANG CACAT (BARANG RUSAK,CACAT,DLL) - GUDANG TUJUAN G-KARANTINA');
  //cxCmbJenisRetur.Properties.Items.Add('RETUR PENJUALAN ADMINISTRASI (EKSPEDISI TUTUP,TIDAK MUAT,DLL) - GUDANG TUJUAN G-CUST');
  //cxCmbJenisRetur.ItemIndex := 0;

  cxCmbJenisRetur.Properties.Items.Add('RETUR ADMIN SO TERBUKA (Container Tidak Cukup, Ekspedisi Tutup, Dll.)');
  cxCmbJenisRetur.Properties.Items.Add('RETUR ADMIN SO TERTUTUP (Tukar barang di hari yang sama)');
  cxCmbJenisRetur.ItemIndex := 0;

end;

procedure TFrmTrsRetur3.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_out');
  Self.Jenis := 'tambah';
end;

function TFrmTrsRetur3.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd.Cell[1,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TFrmTrsRetur3.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin
  Abort;
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = 1) then begin
    f := TFrmCari.Create(self);
    f.jenis := 'barang';
    f.ShowModal;
    if f.ModalResult = idOk then begin
      s := f.Result;
      fKode := s.Objects[0] as TField;
    end;
  end;
end;

procedure TFrmTrsRetur3.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
  stok_gudang: real;
begin
  if ACol = nxColQtyRetur.Index then begin
    with nxGrd do begin
      if Cell[nxColQtyRetur.Index,ARow].AsFloat > Cell[nxColQty.Index,ARow].AsFloat then begin
        Cell[nxColQtyRetur.Index,ARow].AsFloat := Cell[nxColQty.Index,ARow].AsFloat;
      end;
      HitungTotal;
    end;
  end
  else if ACol = nxColChkPilih.Index then begin
    if nxGrd.Cell[nxColChkPilih.Index,ARow].AsBoolean then
      HitungTotal;
  end;
end;

procedure TFrmTrsRetur3.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;
  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
end;

procedure TFrmTrsRetur3.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  cxlNoSJ.EditValue := '';
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  cxtNoTrans.Text := GetLastFak('retur-penj');
  cxtNoSPBB.Text := GetLastFak('spbb');
end;

procedure TFrmTrsRetur3.btnBatalClick(Sender: TObject);
begin
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmTrsRetur3.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if Trim(cxtNoSPBB.Text) = '' then begin
    MsgBox('No. SPBB masih kosong.');
    cxtNoSPBB.SetFocus;
  end
  else if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else begin

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    // cek apakah ada check box yang dicentang
    {
    b := True;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColChkPilih.Index,i].AsBoolean then begin
        b := False;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Pilih item barang yang akan di retur.');
      Abort;
    end;
    }

    // cek apakah ada yang dicentang tapi masih 0
    b := True;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColNoSO.Index,i].AsString <> '') and
        (nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat = 0) then begin
        b := False;
        Break;
      end;
    end;
    if not b then begin
      MsgBox('Ada Qty. Retur yang masih 0.');
      nxGrd.SetFocus;
      nxGrd.SelectCell(nxColQtyRetur.Index, i);
      Abort;
    end;

    // cek apakah ada yang dicentang tapi keterangan masih kosong
    b := True;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColNoSO.Index,i].AsString <> '') and
        (Trim(nxGrd.Cell[nxColKet.Index,i].AsString) = '') then begin
        b := False;
        Break;
      end;
    end;
    if not b then begin
      MsgBox('Ada Keterangan Retur yang masih kosong.');
      nxGrd.SetFocus;
      nxGrd.SelectCell(nxColKet.Index, i);
      Abort;
    end;

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else
        sNoTrs := GetLastFak('retur-penj');

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        {
        barang := OpenTbl('tbl_barang');
        barang_det := OpenTbl('tbl_barang_det');
        q := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        while not q.Eof do begin
          if barang.Locate('kode', q.FieldByname('kode_brg').AsInteger,[]) then begin
            barang.Edit;
            barang.FieldByName('stok').AsFloat :=
              barang.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
            barang.Post;
          end;
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([
              q.FieldByName('kode_brg').AsInteger,
              q.FieldByName('kode_gdg').AsString
            ]),[]) then begin
            barang_det.Edit;
            barang_det.FieldByName('stok').AsFloat :=
              barang_det.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
            barang_det.Post;
          end;
          q.Next;
        end;
        q.Close;
        barang.Close;
        barang_det.Close;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_trskeluar_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trskeluar_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        }
      end;

      in_head := OpenTbl('tbl_trsreturpenj_head');
      in_det := OpenTbl('tbl_trsreturpenj_det');
      barang := OpenTbl('tbl_barang');
      barang_det := OpenTbl('tbl_barang_det');
      hist := OpenTbl('tbl_history');

      with in_head do begin
        Insert;
        FieldByName('no_bukti').AsString := sNoTrs;
        FieldByName('no_spbb').AsString := cxtNoSPBB.Text;
        FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        Post;
      end;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin

        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        if nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat = 0 then
          Continue;

        //if nxGrd.Cell[nxColChkPilih.Index,i].AsBoolean = False then
        //  Continue;

        with in_det do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoTrs;
          FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat;
          FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
          FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[nxColKet.Index,i].AsString);
          FieldByName('kode_gdg').AsString := 'G03';
          FieldByName('no_so').AsString := Trim(nxGrd.Cell[nxColNoSO.Index,i].AsString);
          FieldByName('no_sj').AsString := nxGrd.Cell[nxColNoSJ.Index,i].AsString;
          FieldByName('no_spmb').AsString := nxGrd.Cell[nxColNoSPMB.Index,i].AsString;
          Post;
        end;

        // update stok
        if barang.Locate('kode', nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger,[]) then begin
          barang.Edit;
          barang.FieldByName('stok').AsFloat :=
            barang.FieldByName('stok').AsFloat + nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat;
          barang.Post;
        end;

        // update detail barang
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger, 'G03']),[]) then
          barang_det.Edit
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          barang_det.FieldByName('kode_gdg').AsString := 'G03';
        end;

        barang_det.FieldByName('stok').AsFloat :=
          barang_det.FieldByName('stok').AsFloat -
            nxGrd.Cell[nxColKodeBrg.Index,i].AsFloat;
        barang_det.Post;

        hist.Insert;
        hist.FieldByName('no_bukti').AsString := sNoTrs;
        hist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        hist.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        hist.FieldByName('tipe').AsString := 'IN_';
        hist.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat;
        hist.FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
        hist.FieldByName('gudang').AsString := 'G03';
        hist.FieldByName('no_so').AsString := nxGrd.Cell[nxColNoSO.Index,i].AsString;
        hist.FieldByName('no_spmb').AsString := nxGrd.Cell[nxColNoSPMB.Index,i].AsString;
        hist.FieldByName('no_spk').AsString := '';
        hist.FieldByName('no_sj').AsString := cxlNoSJ.Text;
        hist.FieldByName('referensi').AsString := '';
        hist.FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[nxColKet.Index,i].AsString);
        hist.FieldByName('user').AsString := Aplikasi.NamaUser;
        hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        hist.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        hist.Post;
      end;

      in_head.Close;
      in_det.Close;
      barang.Close;
      barang_det.Close;
      hist.Close;

      if Self.Jenis <> 'edit' then
        UpdateFaktur(Copy(sNoTrs,1,7));

      dm.zConn.Commit;

      MsgBox('Transaksi Retur Penjualan sudah disimpan dengan nomer: ' + sNoTrs);
      Self.Jenis := '';
      btnBatalClick(nil);

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;

end;

procedure TFrmTrsRetur3.btnCariPOClick(Sender: TObject);
var
  f: TfrmCari;
  fld: TField;
  sList: TStringList;
  q, q2: TZQuery;
  i: Integer;
begin
  {
  f := TfrmCari.Create(Self);
  f.Jenis := 'po';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    sList := f.Result;
    fld := TField(sList.Objects[0]);
    cxtNOTrans.Text := fld.AsString;

    // head
    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
    q.Close;

    // detail
    q := OpenRS('SELECT * FROM tbl_po_det WHERE no_bukti = ''%s''',
      [cxtNOTrans.Text]);
    i := 0;
    while not q.Eof do begin
      nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;

      q2 := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CNM_BRG,i].AsString := q2.FieldByName('deskripsi').AsString;
      q2.Close;

      Inc(i);
      nxGrd.AddRow();
      q.Next;
    end;
    HitungTotal;
    q.Close;
  end;
  }
end;

procedure TFrmTrsRetur3.btnHapusClick(Sender: TObject);
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

procedure TFrmTrsRetur3.FormShow(Sender: TObject);
begin
  inherited;
  if jenis = 'kirim-barang' then begin
    Caption := Caption + ' - Pengiriman Barang';
    lblJudul.Caption := lblJudul.Caption + ' - Pengiriman Barang';
  end;
end;

procedure TFrmTrsRetur3.Button1Click(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM v_lap_history_all WHERE left(no_bukti,2) = ''OT''');
  while not q.Eof do begin
    dm.zConn.ExecuteDirect('UPDATE tbl_trskeluar_det SET kode_gdg = ''' +
      q.FieldByName('gudang').AsString + ''' ' +
      'WHERE no_bukti = ''' + q.FieldByName('no_bukti').AsString + '''');
    q.Next;
  end;
  q.Close;

end;

procedure TFrmTrsRetur3.nxBeNoSOButtonClick(Sender: TObject);
var
  f: TfrmCari;
  ARow, ACol: Integer;
  s: TStringList;
  fNoSO: TField;
begin
  ARow := nxGrd.SelectedRow;
  ACol := nxGrd.SelectedColumn;

  if nxGrd.Cell[CKD_BRG,ARow].AsString = '' then begin
    MsgBox('Mohon isi kode barang.');
    Abort;
  end;

  f := TfrmCari.Create(Self);
  f.Jenis := 'sales-order-mdb';
  f.KodeBrg := nxGrd.Cell[CKD_BRG,ARow].AsString;
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fNoSO := s.Objects[0] as TField;
    nxGrd.Cell[CNOSO,ARow].AsString := fNoSO.AsString;
    nxGrd.SelectCell(CNOSO+1,ARow);
  end;
  f.Release;
end;

procedure TFrmTrsRetur3.cxlNoSJPropertiesEditValueChanged(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  //cxtNamaCust.Text := zqrNoSJ.FieldByName('nama').AsString;
  //cxtNoSPMB.Text := zqrNoSJ.FieldByName('no_spmb').AsString;

  // get detail SJ
  {
  q := OpenRS('SELECT * FROM v_sj_det WHERE no_bukti = ''%s''', [zqrNoSJ.FieldByName('no_bukti').AsString]);
  nxGrd.ClearRows;
  while not q.Eof do begin
    with nxGrd do begin
      i := AddRow();
      Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      Cell[nxColNamaBrg.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
      Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      Cell[nxColNoSO.Index,i].AsString := q.FieldByName('no_so').AsString;
    end;
    q.Next;
  end;
  q.Close;
  }
end;

procedure TFrmTrsRetur3.AddRow(sNoSJ, sKodeBrg, sNoSO: string);
var
  f: TFrmCari;
  //fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb: TZQuery;
  //sNoSO: string;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  q := OpenRS('SELECT a.*, b.tanggal, b.no_spmb, b.nama FROM v_sj_det a, v_sj_head b ' +
    'WHERE a.no_bukti = b.no_bukti ' +
    'AND a.no_bukti = ''%s'' AND a.kode_brg = %s AND a.no_so = ''%s''',
    [sNoSJ, sKodeBrg, sNoSO]);
  //sNoSO := q.FieldByName('no_so').AsString;

  with nxGrd do begin
    if FindText(nxColKey.Index, (sNoSO + sKodeBrg), [soCaseInsensitive, soContinueFromTop]) then begin
      MsgBox('No. SO dan Kode barang sudah ada.');
      q.Close;
      Abort;
    end;

    // cek tanggal SJ
    // 20-08-2014
    {
    if cxCmbJenisRetur.ItemIndex = 1 then begin
      if DayOfWeek(q.FieldByName('tanggal').AsDateTime) = 7 then begin
        if Date - q.FieldByName('tanggal').AsDateTime > 2 then begin
          MsgBox('Tanggal surat jalan sudah melewati batas (H+1).');
          q.Close;
          Abort;
        end;
      end
      else begin
        if Date - q.FieldByName('tanggal').AsDateTime > 1 then begin
          MsgBox('Tanggal surat jalan sudah melewati batas (H+1).');
          q.Close;
          Abort;
        end;
      end;
    end;
    }

    Cell[nxColNoSJ.Index,ARow].AsString := sNoSJ;
    Cell[nxColNoSPMB.Index,ARow].AsString := q.FieldByName('no_spmb').AsString;
    Cell[nxColNoSO.Index,ARow].AsString := q.FieldByname('no_so').AsString;
    Cell[nxColCustomer.Index,ARow].AsString := q.FieldByName('nama').AsString;
    Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    Cell[nxColNamaBrg.Index,ARow].AsString := q.FieldByName('deskripsi').AsString;
    Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    Cell[nxColQty.Index,ARow].AsFloat := q.FieldByName('qty').AsFloat;
    Cell[nxColQtyRetur.Index,ARow].AsFloat := 0;
    Cell[nxColKey.Index,ARow].AsString := sNoSJ + sKodeBrg;

    HitungTotal;

    AddRow();
  end;
  q.Close;

end;

procedure TFrmTrsRetur3.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  f: TFrmCariSJ;
begin
  if ACol = nxColNoSJ.Index then begin
    f := TFrmCariSJ.Create(Self);
    f.frmRetur3 := Self;
    f.ShowModal;
  end
  else if ACol = nxColHapus.Index then begin
    if Trim(nxGrd.Cell[nxColNoSJ.Index, ARow].AsString) <> '' then begin
      nxGrd.DeleteRow(nxGrd.SelectedRow);
      nxNoUrut.Refresh();
      HitungTotal;
      if nxGrd.RowCount = 0 then nxGrd.AddRow();
    end;
  end;
end;

procedure TFrmTrsRetur3.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  Self.Enabled := False;
end;

procedure TFrmTrsRetur3.SendEmail;
var
  email : TIdMessage;
  lst: TStringList;
  bdy: TIdText;
begin
  
  idSMTP.AuthType := satNone;
  idSMTP.Host := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := 'boby@sdp.mail,vivi@sdp.mail';

    email.Subject := 'Approval Transaksi Retur Penjualan Nomor : ' + cxtNoTrans.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada transaksi Retur Penjualan yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('Nomor Retur : ' + cxtNoTrans.Text);
    lst.Add('</br>');
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

end;

procedure TFrmTrsRetur3.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  Self.Enabled := True;
  MsgBox('Email Permintaan Approval Retur Penjualan sudah dikirim.');
end;

procedure TFrmTrsRetur3.btnSimpan2Click(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs, sNoSPBB: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin

  //if Trim(cxtNoSPBB.Text) = '' then begin
  //  MsgBox('No. SPBB masih kosong.');
  //  cxtNoSPBB.SetFocus;
  //end
  //else if cxsTotalQty.Value = 0 then begin

  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else begin

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    // cek apakah ada yang dicentang tapi masih 0
    b := True;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColNoSO.Index,i].AsString <> '') and
        (nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat = 0) then begin
        b := False;
        Break;
      end;
    end;
    if not b then begin
      MsgBox('Ada Qty. Retur yang masih 0.');
      nxGrd.SetFocus;
      nxGrd.SelectCell(nxColQtyRetur.Index, i);
      Abort;
    end;

    // cek apakah ada yang dicentang tapi keterangan masih kosong
    b := True;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColNoSO.Index,i].AsString <> '') and
        (Trim(nxGrd.Cell[nxColKet.Index,i].AsString) = '') then begin
        b := False;
        Break;
      end;
    end;
    if not b then begin
      MsgBox('Ada Keterangan Retur yang masih kosong.');
      nxGrd.SetFocus;
      nxGrd.SelectCell(nxColKet.Index, i);
      Abort;
    end;

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else begin
        sNoTrs := GetLastFak('retur-penj');
        sNoSPBB := GetLastFak('spbb');
        UpdateFaktur(Copy(sNoTrs,1,7));
        UpdateFaktur(Copy(sNoSPBB,1,9));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        {
        barang := OpenTbl('tbl_barang');
        barang_det := OpenTbl('tbl_barang_det');
        q := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        while not q.Eof do begin
          if barang.Locate('kode', q.FieldByname('kode_brg').AsInteger,[]) then begin
            barang.Edit;
            barang.FieldByName('stok').AsFloat :=
              barang.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
            barang.Post;
          end;
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([
              q.FieldByName('kode_brg').AsInteger,
              q.FieldByName('kode_gdg').AsString
            ]),[]) then begin
            barang_det.Edit;
            barang_det.FieldByName('stok').AsFloat :=
              barang_det.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
            barang_det.Post;
          end;
          q.Next;
        end;
        q.Close;
        barang.Close;
        barang_det.Close;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_trskeluar_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trskeluar_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        }
      end;

      in_head := OpenTbl('tbl_trsreturpenj_head');
      in_det := OpenTbl('tbl_trsreturpenj_det');

      with in_head do begin
        Insert;
        FieldByName('no_bukti').AsString := sNoTrs;
        //FieldByName('no_spbb').AsString := cxtNoSPBB.Text;
        FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;

        //if cxCmbJenisRetur.ItemIndex = 0 then
        //  FieldByName('jenis_retur').AsString := 'RETUR BARANG CACAT'
        //else if cxCmbJenisRetur.ItemIndex = 1 then
        //  FieldByName('jenis_retur').AsString := 'RETUR ADMINISTRASI';

        if cxCmbJenisRetur.ItemIndex = 0 then
          FieldByName('jenis_retur').AsString := '0'
        else if cxCmbJenisRetur.ItemIndex = 1 then
          FieldByName('jenis_retur').AsString := '1';

        // keterangan jenis retur
        FieldByName('ket_jenis_retur').AsString := cxCmbJenisRetur.Text;

        Post;
      end;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin

        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        if nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat = 0 then
          Continue;

        //if nxGrd.Cell[nxColChkPilih.Index,i].AsBoolean = False then
        //  Continue;

        with in_det do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoTrs;
          FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat;
          FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
          FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[nxColKet.Index,i].AsString);

          if cxCmbJenisRetur.ItemIndex = 0 then
            FieldByName('kode_gdg').AsString := 'G02'
          else
            FieldByName('kode_gdg').AsString := 'G02';

          FieldByName('no_so').AsString := Trim(nxGrd.Cell[nxColNoSO.Index,i].AsString);
          FieldByName('no_sj').AsString := nxGrd.Cell[nxColNoSJ.Index,i].AsString;
          FieldByName('no_spmb').AsString := nxGrd.Cell[nxColNoSPMB.Index,i].AsString;
          Post;
        end;
      end;

      in_head.Close;
      in_det.Close;

      {
      if Self.Jenis <> 'edit' then begin
        UpdateFaktur(Copy(sNoTrs,1,7));
      end;
      }

      dm.zConn.Commit;

      MsgBox('Transaksi Retur Penjualan sudah disimpan dengan nomer: ' + sNoTrs);

      if aplikasi.Cabang = 'SBY' then
        SendEMail;
      
      Self.Jenis := '';

      btnBatalClick(nil);

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;
end;

end.
