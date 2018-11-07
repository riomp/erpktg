unit unFrmTrsSJU;

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
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText, cxMemo,
  cxCheckBox;

type
  TfrmTrsSJU = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariPO: TButton;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColNamaBrg: TNxTextColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKet: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxtPengirim: TcxTextEdit;
    cxtKepada: TcxTextEdit;
    cxlNoBukti: TcxLookupComboBox;
    btnEdit2: TButton;
    zqrNoBukti: TZReadOnlyQuery;
    dsNoBukti: TDataSource;
    idSMTP: TIdSMTP;
    cxmAlamat: TcxMemo;
    cxLabel7: TcxLabel;
    cxtKota: TcxTextEdit;
    cxtSopir: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxmCatatan: TcxMemo;
    btnCetak: TButton;
    nxColSat: TNxComboBoxColumn;
    nxColJml: TNxNumberColumn;
    nxColHapus: TNxImageColumn;
    chkApproval: TcxCheckBox;
    cxCmbJenis: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnCariPOClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure nxBeNoSOButtonClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
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
  end;

var
  frmPO: TfrmTrsSJU;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmLapUmum;

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

procedure TfrmTrsSJU.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxtNOTrans.Text := GetLastFak('sju');
  cxtPengirim.Text := APlikasi.NamaUser;

  q := OpenRS('SELECT satuan FROM tbl_satuan ORDER BY satuan');
  while not q.Eof do begin
    nxColSat.Items.Add(q.FieldByName('satuan').AsString);
    q.Next;
  end;
  q.Close;

  cxCmbJenis.Properties.Items.Add('Box/Line');
  cxCmbJenis.Properties.Items.Add('Truk Engkel');
  cxCmbJenis.Properties.Items.Add('Trailer');
  cxCmbJenis.Properties.Items.Add('Container');
  cxCmbJenis.Properties.Items.Add('Gandengan');
  cxCmbJenis.Properties.Items.Add('Lain-Lain');

  zqrNoBukti.Open;
end;

function TfrmTrsSJU.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TfrmTrsSJU.NxEdit1DblClick(Sender: TObject);
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
      //if not CekKodeBrg(fKode.AsString, ARow) then
      //  MsgBox('Kode Barang sudah ada.')
      //else begin
        //if GetStokGudang(fKode.AsString, cxCmbGdg.Text) = 0 then begin
        //  MsgBox('Stok barang tidak mencukupi.' + Chr(10) + Chr(13) +
        //    'Gudang : ' + cxCmbGdg.Text + Chr(10) + Chr(13) +
        //    'Stok : 0');
        //end
        //else begin
          q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
            [fKode.AsString]);
          nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
          nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('deskripsi').AsString;
          nxGrd.SelectCell(CQTY,ARow);
        //end;
      //end;
    end;
  end;
end;

procedure TfrmTrsSJU.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
  stok_gudang: real;
begin
  
  if Acol = nxColNamaBrg.Index then begin
    if nxGrd.Cell[nxColJml.Index,ARow].AsFloat > 0 then begin
      i := nxGrd.AddRow();
      nxGrd.SelectCell(nxColJml.Index, i);
    end
    else
      nxGrd.SelectCell(nxColJml.Index, ARow);
  end
  else if ACol = nxColJml.Index then begin
    HitungTotal;
  end;

end;

procedure TfrmTrsSJU.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColJml.Index,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
  
end;

procedure TfrmTrsSJU.ClearAll;
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
  btnCariPO.Visible := False;
  cxtNoTrans.Text := GetLastFak('sju');
  cxlNoBukti.Text := '';
end;

procedure TfrmTrsSJU.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TfrmTrsSJU.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;
                        
procedure TfrmTrsSJU.btnSimpanClick(Sender: TObject);
var
  in_head, in_det: TZTable;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin

  if Trim(cxtKepada.Text) = '' then begin
    MsgBox('Penerima surat jalan harus diisi.');
    cxtKepada.SetFocus;
  end
  else if Trim(cxmAlamat.Text) = '' then begin
    MsgBox('Alamat kirim harus diisi.');
    cxmAlamat.SetFocus;
  end
  else if Trim(cxCmbJenis.Text) = '' then begin
    MsgBox('Pilih jenis kendaraan.');
    cxCmbJenis.SetFocus;
  end
  else if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else begin

    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColJml.Index, i].AsFloat > 0) and
      (Trim(nxGrd.Cell[nxColNamaBrg.Index,i].AsString) = '') then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada nama barang yang kosong.');
      Abort;
    end;

    // cek apakah surat jalan umum sudah di approval 
    if Self.Jenis = 'edit' then begin
      // jika sju sudah di approval maka tidak bisa di edit
      q := OpenRS('SELECT * FROM tbl_trssju_head WHERE no_bukti = ''%s'' ' +
        'AND f_app = 1', [cxtNoTrans.Text]);
      if not q.IsEmpty then begin
        MsgBox('Surat jalan umum tidak bisa di edit karena sudah di Approval.');
        q.Close;
        Abort;
      end;  
      q.Close;
    end;

    if Self.Jenis = 'edit' then
      sNoTrs := cxtNoTrans.Text
    else begin
      sNoTrs := GetLastFak('sju');
      UpdateFaktur(Copy(sNoTrs,1,8));
    end;

    try
      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trssju_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trssju_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_trssju_head');
      in_det := OpenTbl('tbl_trssju_det');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
      in_head.FieldByName('kepada').AsString := Trim(cxtKepada.Text);
      in_head.FieldByName('alamat').AsString := Trim(cxmAlamat.Text);
      in_head.FieldByName('kota').AsString := Trim(cxtKota.Text);
      in_head.FieldByName('pengirim').AsString := Trim(cxtPengirim.Text);
      in_head.FieldByName('sopir').AsString := Trim(cxtSopir.Text);
      in_head.FieldByName('jenis_kendaraan').AsString := cxCmbJenis.Text;
      in_head.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
      in_head.FieldByName('catatan').AsString := cxmCatatan.Text;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColJml.Index,i].AsFloat = 0 then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('jml').AsFloat := nxGrd.Cell[nxColJml.Index,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSat.Index,i].AsString;
        in_det.FieldByName('nama_barang').AsString := nxGrd.Cell[nxColNamaBrg.Index,i].AsString;
        in_det.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index, i].AsString;
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;

      if aplikasi.Cabang = 'SBY' then begin
        SendEmail;
      end;

      MsgBox('Transaksi Surat Jalan Umum sudah disimpan dengan nomer: ' + sNoTrs);
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

procedure TfrmTrsSJU.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
begin
  if ACol = nxColHapus.Index then begin
    if nxGrd.Cell[nxColJml.Index, ARow].AsFloat > 0 then begin
      nxGrd.DeleteRow(nxGrd.SelectedRow);
      nxNoUrut.Refresh();
      HitungTotal;
      if nxGrd.RowCount = 0 then nxGrd.AddRow();
    end;
  end
end;

procedure TfrmTrsSJU.btnCariPOClick(Sender: TObject);
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

procedure TfrmTrsSJU.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  {
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
  }
end;

procedure TfrmTrsSJU.FormShow(Sender: TObject);
begin
  {
  inherited;
  if jenis = 'kirim-barang' then begin
    Caption := Caption + ' - Pengiriman Barang';
    lblJudul.Caption := lblJudul.Caption + ' - Pengiriman Barang';
  end;

  if mUserDept = 'PPIC' then begin
    cxtNoSpmb.Enabled := False;
  end;
  if mUserDept = 'WHL' then begin
    nxtNoSPK.Visible := False;
  end;
  }
end;

procedure TfrmTrsSJU.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  {
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
  }
end;

procedure TfrmTrsSJU.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  {
  if cxLUBrg.Text = '' then Abort;
  if cxCmbGdg.Text = '' then begin
    MsgBox('Pilih kode gudang.');
    cxCmbGdg.SetFocus;
    Abort;
  end;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  //if not CekKodeBrg(sKodeBrg, ARow) then begin
  //  MsgBox('Kode Barang sudah ada.');
  //  cxLUBrg.Text := '';
  //end
  //else begin
    // cek stok per gudang
    q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
      'AND kode_gdg = ''%s''',
      [sKodeBrg, cxCmbGdg.Text]);
    if q.FieldByName('stok').AsFloat = 0 then begin
      { 22-07-2014
      MsgBox('Stok barang tidak mencukupi.' + Chr(10) + Chr(13) +
        'Gudang : ' + cxCmbGdg.Text + Chr(10) + Chr(13) +
        'Stok : 0');
      cxLUBrg.Text := '';
      q.Close;
      Abort;

    end;
    q.Close;
    // eof cek stok per gudang

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
  }
end;

procedure TfrmTrsSJU.cxCmbGdgEnter(Sender: TObject);
begin
  {
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
  }
end;

procedure TfrmTrsSJU.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  {
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
  }
end;

procedure TfrmTrsSJU.Button1Click(Sender: TObject);
var
  q: TZQuery;
begin
  {
  q := OpenRS('SELECT * FROM v_lap_history_all WHERE left(no_bukti,2) = ''OT''');
  while not q.Eof do begin
    dm.zConn.ExecuteDirect('UPDATE tbl_trskeluar_det SET kode_gdg = ''' +
      q.FieldByName('gudang').AsString + ''' ' +
      'WHERE no_bukti = ''' + q.FieldByName('no_bukti').AsString + '''');
    q.Next;
  end;
  q.Close;
  }
end;

procedure TfrmTrsSJU.btnEdit2Click(Sender: TObject);
var
  q, qd: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_trssju_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  if q.FieldByName('f_app').AsInteger = 1 then
    chkApproval.Checked := True;

  cxtKepada.Text := q.FieldByName('kepada').AsString;
  cxmAlamat.Text := q.FieldByName('alamat').AsString;
  cxtKota.Text := q.FieldByName('kota').AsString;
  cxmCatatan.Text := q.FieldByName('catatan').AsString;
  cxtPengirim.Text := q.FieldByName('pengirim').AsString;
  cxtSopir.Text := q.FieldByName('sopir').AsString;
  cxtNopol.Text := q.FieldByName('nopol').AsString;

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  qd := OpenRS('SELECT * FROM tbl_trssju_det WHERE no_bukti = ''%s''',
    [zqrNoBukti.FieldByName('no_bukti').AsString]);

  i := 0;
  while not qd.Eof do begin
    nxGrd.AddRow();
    nxGrd.Cell[nxColJml.Index, i].AsFloat := qd.FieldByName('jml').AsFloat;
    nxGrd.Cell[nxColSat.Index, i].AsString := qd.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColNamaBrg.Index, i].AsString := qd.FieldByName('nama_barang').AsString;
    nxGrd.Cell[nxColKet.Index, i].AsString := qd.FieldByName('keterangan').AsString;
    Inc(i);
    qd.Next;
  end;
  qd.Close;

  HitungTotal;
end;

procedure TfrmTrsSJU.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TfrmTrsSJU.nxBeNoSOButtonClick(Sender: TObject);
var
  f: TfrmCari;
  ARow, ACol: Integer;
  s: TStringList;
  fNoSO: TField;
begin
  {
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
  }
end;

procedure TfrmTrsSJU.SendEmail;
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
    email.From.Name := aplikasi.NamaUser;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := 'boby@sdp.mail,vivi@sdp.mail,enny@sdp.mail,joyce@sdp.mail';

    email.Subject := 'Approval Transaksi Surat Jalan Umum No. : ' + cxtNoTrans.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada transaksi Surat Jalan Umum yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('Nomor Transaksi : ' + cxtNoTrans.Text);
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

procedure TfrmTrsSJU.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin
  {
  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUBrg.EditValue := fKode.AsInteger;
  end;
  }
end;

procedure TfrmTrsSJU.btnCetakClick(Sender: TObject);
var
  q: TZQuery;
  f: TfrmLapUmum;
begin
  // cek apakah sudah disimpan
  // cek apakah sudah di approval
  q := OpenRS('SELECT * FROM tbl_trssju_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('Surat jalan ini belum disimpan.');
  end
  else begin
    if q.FieldByName('f_app').AsInteger <> 1 then begin
      MsgBox('Surat jalan ini belum / tidak di Approval');
    end
    else begin
      f := TfrmLapUmum.Create(Self);
      f.zqrSJU.Close;
      f.zqrSJU.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
      f.zqrSJU.Open;
      f.rptSJU.ShowReport(True);
      f.Release;
    end;
  end;
  q.Close;

end;

end.
