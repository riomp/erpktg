unit unFrmTrsPembatalanMut;

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
  cxDBLookupComboBox, ZAbstractRODataset;

type
  TfrmTrsPembatalanMut = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoMutasi: TcxTextEdit;
    btnCariPO: TButton;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    cxLabel2: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtKet: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    NxTextColumn9: TNxTextColumn;
    NxTextColumn10: TNxTextColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnCariPOClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmPembatalanMut: TFrmTrsPembatalanMut;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama;

const
  CNO : integer = 0;
  CKD_BRG : integer = 1;
  CNM_BRG : integer = 2;
  CSAT : Integer = 3;
  CGDG : integer = 4;
  CNOSO : Integer = 5;
  CNM_GDG : integer = 6;
  CGDG2 : integer = 7;
  CNM_GDG2 : integer = 8;
  CQTY : integer = 9;
  CREF : Integer = 10;
  CKET : Integer = 11;

{$R *.dfm}

procedure TFrmTrsPembatalanMut.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxtNoTrans.Text := GetLastFak('pembatalan_mutasi');
end;

procedure TFrmTrsPembatalanMut.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('pembatalan_mutasi');
  Self.Jenis := 'tambah';
end;

function TFrmTrsPembatalanMut.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsPembatalanMut.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = 1) then begin
    f := TFrmCari.Create(self);
    f.jenis := 'barang';
    f.ShowModal;
    if f.ModalResult = idOk then begin
      s := f.Result;
      fKode := s.Objects[0] as TField;
      if not CekKodeBrg(fKode.AsString, ARow) then
        MsgBox('Kode Barang sudah ada.')
      else begin
        q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
          [fKode.AsString]);
        nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd.SelectCell(CQTY,ARow);
      end;
    end;
  end;
end;

procedure TFrmTrsPembatalanMut.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = CKD_BRG then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = CQTY then begin
    if nxGrd.Cell[CQTY,ARow].AsInteger < 1 then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 1;
    end;
    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(1,nxGrd.RowCount-1)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = CREF then
    nxGrd.SelectCell(CKET, ARow);
end;

procedure TFrmTrsPembatalanMut.HitungTotal;
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

procedure TFrmTrsPembatalanMut.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  cxtNoTrans.Text := GetLastFak('pembatalan_mutasi');
  Self.Jenis := 'tambah';
end;

procedure TFrmTrsPembatalanMut.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TFrmTrsPembatalanMut.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;

procedure TFrmTrsPembatalanMut.btnSimpanClick(Sender: TObject);
var
  trs_head, trs_det, barang, barang_det, thist: TZTable;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q, q2: TZQuery;
begin
  if Trim(cxtNoMutasi.Text) = '' then begin
    MsgBox('Pilih nomer mutasi yang akan dibatalkan.');
    cxtNoMutasi.SetFocus;
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

    try
      sNoTrs := GetLastFak('pembatalan_mutasi');
      dm.zConn.StartTransaction;

      trs_head := OpenTbl('tbl_trspemb_mutasi_head');
      trs_det := OpenTbl('tbl_trspemb_mutasi_det');
      barang := OpenTbl('tbl_barang');
      barang_det := OpenTbl('tbl_barang_det');
      thist := OpenTbl('tbl_history');

      trs_head.Insert;
      trs_head.FieldByName('no_bukti').AsString := sNoTrs;
      trs_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      trs_head.FieldByName('user').AsString := aplikasi.NamaUser;
      trs_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      trs_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      trs_head.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
      trs_head.Post;

      // update flag batal di head mutasi
      dm.zConn.ExecuteDirect('UPDATE tbl_trsmutasi_head SET f_batal = 1 ' +
        'WHERE no_bukti = ''' + cxtNoMutasi.Text + '''');
      // eof update flag

      // simpan trs_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[1,i].AsString = '' then
          Continue;
        trs_det.Insert;
        trs_det.FieldByName('no_bukti').AsString := sNoTrs;
        trs_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        trs_det.FieldByName('gudang_asal').AsString := nxGrd.Cell[CGDG,i].AsString;
        trs_det.FieldByName('gudang_tujuan').AsString := nxGrd.Cell[CGDG2,i].AsString;
        trs_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        trs_det.FieldByName('referensi').AsString := '';
        trs_det.FieldByName('no_so').AsString := '';
        trs_det.FieldByName('keterangan').AsString := 'DIBATALKAN';
        trs_det.Post;

        // update barang
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsString,nxGrd.Cell[CGDG,i].AsString]),[]) then begin
          barang_det.Edit;
          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat + nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
        end;

        // update barang
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsString,nxGrd.Cell[CGDG2,i].AsString]),[]) then begin
          barang_det.Edit;
          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
        end
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
          barang_det.FieldByName('kode_gdg').AsString := nxGrd.Cell[CGDG2,i].AsString;
          barang_det.FieldByName('stok').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
        end;

        // masukkan history
        thist.Insert;
        thist.FieldByName('no_bukti').AsString := sNoTrs;
        thist.FieldByName('tipe').AsString := 'IN_';
        thist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        thist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        thist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        thist.FieldByName('gudang').AsString := nxGrd.Cell[CGDG,i].AsString;
        thist.FieldByName('user').AsString := Aplikasi.NamaUser;
        thist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        thist.FieldByName('referensi').AsString := cxtNoMutasi.Text;
        thist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        thist.FieldByName('keterangan').AsString := 'DIBATALKAN';
        thist.FieldByName('no_so').AsString := nxGrd.Cell[CNOSO,i].AsString;
        thist.Post;

        // masukkan history
        thist.Insert;
        thist.FieldByName('no_bukti').AsString := sNoTrs;
        thist.FieldByName('tipe').AsString := 'OUT_';
        thist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        thist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        thist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        thist.FieldByName('gudang').AsString := nxGrd.Cell[CGDG2,i].AsString;
        thist.FieldByName('user').AsString := Aplikasi.NamaUser;
        thist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        thist.FieldByName('referensi').AsString := cxtNoMutasi.Text;
        thist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        thist.FieldByName('keterangan').AsString := 'DIBATALKAN';
        thist.FieldByName('no_so').AsString := nxGrd.Cell[CNOSO,i].AsString;
        thist.Post;

        // cek apakah ada mo dengan nomer mutasi yang dibatalkan
        q := OpenRS('SELECT * FROM tbl_mo WHERE no_mutasi = ''%s'' AND kode_brg = %s ' +
          'AND no_so = ''%s''',
          [cxtNoMutasi.Text,
           nxGrd.Cell[CKD_BRG,i].AsString,
           nxGrd.Cell[CNOSO,i].AsString
          ]
        );
        
        if not q.IsEmpty then begin

          q2 := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' ' +
            'AND kode_brg = %s ' +
            'AND no_mutasi IS NULL',
            [
              nxGrd.Cell[CNOSO,i].AsString,
              nxGrd.Cell[CKD_BRG,i].AsString
            ]
          );
          
          if not q2.IsEmpty then begin
            q2.Edit;
            q2.FieldByName('qty_mo').AsFloat :=
              q2.FieldByName('qty_mo').AsFloat + q.FieldByName('qty_mo').AsFloat;
            q2.Post;
            q.Delete;
          end
          else begin
            q.Edit;
            //q.FieldByName('qty_so').AsFloat := 0;
            q.FieldByName('no_mutasi').Clear;
            q.Post;
          end;
          q2.Close;
        end;

        q.Close;
      end;

      trs_head.Close;
      trs_det.Close;
      barang.Close;
      barang_det.Close;
      thist.Close;

      UpdateFaktur(Copy(sNoTrs,1,7));
      dm.zConn.Commit;

      MsgBox('Transaksi pembatalan mutasi sudah disimpan dengan nomer: ' + sNoTrs);
      btnBatalClick(nil);
      inherited;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;
end;

procedure TFrmTrsPembatalanMut.btnCariPOClick(Sender: TObject);
var
  f: TfrmCari;
  fld: TField;
  sList: TStringList;
  q, q2: TZQuery;
  i: Integer;
  sNoSO: string;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'mutasi';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    sList := f.Result;
    fld := TField(sList.Objects[0]);

    // pengecekan apakah nomer mutasi sudah di kirim SJ
    // jika sudah dikirimkan SJ maka mutasi tidak dapat dibatalkan
    q := OpenRS('SELECT * FROM tbl_trsmutasi_det WHERE no_bukti = ''%s''');
    sNoSO := q.FieldByName('no_so').AsString;
    q.Close;
    q := OpenRS('SELECT * FROM tbl_history WHERE no_so = ''%s'' AND LEFT(no_bukti,2) = ''SJ''',
      [sNoSO]);
    if not q.IsEmpty then begin
      MsgBox('Transaksi mutasi untuk barang ini sudah dibuatkan Surat Jalan.');
      q.Close;
      Abort;
    end;  
    q.Close;

    cxtNOMutasi.Text := fld.AsString;

    // head
    q := OpenRS('SELECT * FROM tbl_trsmutasi_head WHERE no_bukti = ''%s''',
      [cxtNOMutasi.Text]);
    cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
    q.Close;

    // detail
    q := OpenRS('SELECT * FROM tbl_trsmutasi_det WHERE no_bukti = ''%s''',
      [cxtNOMutasi.Text]);
    i := 0;
    while not q.Eof do begin
      nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[CGDG,i].AsString := q.FieldByName('gudang_asal').AsString;
      nxGrd.Cell[CNM_GDG,i].AsString := GetNamaGudang(q.FieldByName('gudang_asal').AsString);
      nxGrd.Cell[CGDG2,i].AsString := q.FieldByName('gudang_tujuan').AsString;
      nxGrd.Cell[CNM_GDG2,i].AsString := GetNamaGudang(q.FieldByName('gudang_tujuan').AsString);
      nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CREF,i].AsString := q.FieldByName('referensi').AsString;
      nxGrd.Cell[CKET,i].AsString := q.FieldByName('keterangan').AsString;
      nxGrd.Cell[CNOSO,i].AsString := q.FieldByName('no_so').AsString;

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
end;

procedure TFrmTrsPembatalanMut.btnHapusClick(Sender: TObject);
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

end.
