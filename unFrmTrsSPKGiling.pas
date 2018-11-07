unit unFrmTrsSPKGiling;

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
  TFrmTrsSPKGiling = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNama: TNxTextColumn;
    nxColQty: TNxNumberColumn;
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
    nxColSat: TNxTextColumn;
    cxLabel4: TcxLabel;
    cxCmbGdg2: TcxComboBox;
    cxtNamaGdg2: TcxTextEdit;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    cxLabel8: TcxLabel;
    cxlNoSO: TcxLookupComboBox;
    idSMTP: TIdSMTP;
    procedure FormCreate(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxCmbGdg2PropertiesChange(Sender: TObject);
    procedure btnTambah2Click(Sender: TObject);
    procedure nxGrd2CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrd2AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxLUBrg2KeyPress(Sender: TObject; var Key: Char);
    procedure idSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
  private
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    function GetRow(grd: TNextGrid): Integer;
    procedure SendEmail;
  public
    property UserDept: string read mUserDept write mUserDept;
  end;

var
  frmTrsSPKGiling: TFrmTrsSPKGiling;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama;

const
  CNO : integer = 0;
  CHAPUS : Integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CSAT : Integer = 4;
  CQTY : integer = 5;
  CKET : Integer = 6;

  CNO2 : integer = 0;
  CHAPUS2 : Integer = 1;
  CKD_BRG2 : integer = 2;
  CNM_BRG2 : integer = 3;
  CSAT2 : Integer = 4;
  CQTY2 : integer = 5;
  CGDG : Integer = 6;
  CNM_GDG : Integer = 7;
  CNO_SO : Integer = 8;
  CKET2 : Integer = 9;

{$R *.dfm}

procedure TFrmTrsSPKGiling.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  // collect gudang
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.fieldByName('kode').AsString);
    cxCmbGdg2.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbGdg.Text := 'G03';
  cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);

  cxtNoTrans.Text := GetLastFak('spk_giling');

  //cxLabel7.Visible := Aplikasi.EditTrans;
  cxlNoBukti.Visible := Aplikasi.EditTrans;
  btnEdit2.Visible := aplikasi.EditTrans;

end;

function TFrmTrsSPKGiling.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsSPKGiling.NxEdit1DblClick(Sender: TObject);
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

procedure TFrmTrsSPKGiling.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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

    //if nxGrd.Cell[CQTY,ARow].AsInteger < 1 then begin
    //  nxGrd.Cell[CQTY,ARow].AsInteger := 1;
    //end;
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

  end;
end;

procedure TFrmTrsSPKGiling.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColQty.Index,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
end;

procedure TFrmTrsSPKGiling.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  cxdTglTrs.Date := aplikasi.TanggalServer;
  cxlNoBukti.Text := '';
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  cxtNoTrans.Text := GetLastFak('spk_giling');
  zqrNoBukti.Close;
  zqrNoBukti.Open;
end;

procedure TFrmTrsSPKGiling.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmTrsSPKGiling.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(nxColKodeBrg.Index,0);
    nxGrd.SetFocus;
  end
  else begin

    //cek apakah ada qty yang kosong
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '') and
        (nxGrd.Cell[nxColQty.Index,i].AsFloat = 0) then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom Qty. yang kosong.');
      Abort;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else
        sNoTrs := GetLastFak('spk_giling');

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        barang := OpenTbl('tbl_barang');
        barang_det := OpenTbl('tbl_barang_det');
        q := OpenRS('SELECT * FROM tbl_trsspkassembly_det WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        while not q.Eof do begin
          if q.FieldByName('jenis').AsString = 'OUT' then begin
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
          end
          else begin
            // do nothing
          end;
          q.Next;
        end;
        q.Close;
        barang.Close;
        barang_det.Close;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsspkassembly_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsspkassembly_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_trsspkgiling_head');
      in_det := OpenTbl('tbl_trsspkgiling_det');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[1,i].AsString = '' then
          Continue;

        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSat.Index,i].AsString;
        in_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        in_det.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index,i].AsString;
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      if Self.Jenis <> 'edit' then
        UpdateFaktur(Copy(sNoTrs,1,8));

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi SPK Giling sudah disimpan dengan nomer: ' + sNoTrs);
      btnBatalClick(nil);
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

procedure TFrmTrsSPKGiling.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[1, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
    else if ACol = CKD_BRG then begin
      self.NxEdit1DblClick(nil);
    end;
  end;
end;

procedure TFrmTrsSPKGiling.btnHapusClick(Sender: TObject);
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

procedure TFrmTrsSPKGiling.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TFrmTrsSPKGiling.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg.Text = '' then Abort;
  if cxCmbGdg.Text = '' then begin
    MsgBox('Pilih kode gudang.');
    cxCmbGdg.SetFocus;
    Abort;
  end;

  if (nxGrd.RowCount > 0) and (nxGrd.Cell[CKD_BRG,0].AsString <> '') then
    Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode Barang sudah ada.');
    cxLUBrg.Text := '';
  end
  else begin

    // cek stok G03
    if GetStokGudang(sKodeBrg, cxCmbGdg.Text) < 1 then begin
      MsgBox('Stok gudang tidak mencukupi.');
      cxLUBrg.Text := '';
      cxLUBrg.SetFocus;
      Abort;
    end;

    cxLUBrg.Text := '';
    nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[nxColNama.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSat.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQty.Index,ARow].AsFloat := 1;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(nxColKodeBrg.Index, nxGrd.LastAddedRow);
    cxLUBrg.SetFocus;
  end;
end;

procedure TFrmTrsSPKGiling.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TFrmTrsSPKGiling.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmTrsSPKGiling.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i,j,k: Integer;
begin
  {
  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_trsspkassembly_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  cxCmbGdg.Text := q.FieldByName('kode_gdg').AsString;
  cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);

  if q.RecordCount > 1 then begin
    nxGrd.ClearRows;
    nxGrd2.ClearRows;
  end;

  i := 0;
  while not q.Eof do begin
    if q.FieldByName('jenis').AsString = 'OUT' then begin
      k := nxGrd.AddRow();
      qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CKD_BRG,k].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNM_BRG,k].AsString := qBrg.fieldByName('deskripsi').AsString;
      qBrg.Close;
      nxGrd.Cell[CSAT,k].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[CQTY,k].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CKET,k].AsString := q.FieldByName('keterangan').AsString;
    end
    else begin
      j := nxGrd2.AddRow();
      qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      nxGrd2.Cell[CKD_BRG2,j].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd2.Cell[CNM_BRG2,j].AsString := qBrg.fieldByName('deskripsi').AsString;
      qBrg.Close;
      nxGrd2.Cell[CSAT2,j].AsString := q.FieldByName('satuan').AsString;
      nxGrd2.Cell[CQTY2,j].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd2.Cell[CGDG,j].AsString := q.FieldByName('kode_gdg').AsString;
      nxGrd2.Cell[CNM_GDG,j].AsString := GetNamaGudang(q.FieldByName('kode_gdg').AsString);
      nxGrd2.Cell[CNO_SO,j].AsString := q.FieldByName('no_so').AsString;
      nxGrd2.Cell[CKET2,j].AsString := q.FieldByName('keterangan').AsString;
    end;

    Inc(i);
    q.Next;
  end;
  q.Close;

  nxGrd.AddRow();
  nxGrd2.AddRow();

  HitungTotal;
  }
end;

procedure TFrmTrsSPKGiling.cxCmbGdg2PropertiesChange(Sender: TObject);
begin
  try
    cxtNamaGdg2.Text := GetNamaGudang(cxCmbGdg2.Text);
    if cxCmbGdg.Text = cxCmbGdg2.Text then begin
      MsgBox('Gudang asal dan tujuan harus berbeda.');
      cxCmbGdg2.Text := '';
      cxCmbGdg2.SetFocus;
    end;
  except
  end;
end;

procedure TFrmTrsSPKGiling.btnTambah2Click(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  {
  if cxLUBrg2.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd2.SelectedColumn;
  ARow := nxGrd2.RowCount - 1;

  // cek stok barang di gudang G01
  if CekStok(sKodeBrg, 'G01') = 0 then begin
    MsgBox('Stok barang ini tidak mencukupi.');
    Abort;
  end;

  //if not CekKodeBrg(sKodeBrg, ARow) then begin
  //  MsgBox('Kode Barang sudah ada.');
  //  cxLUBrg.Text := '';
  //end
  //else begin
    cxLUBrg2.Text := '';
    nxGrd2.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    
    {
    if nxGrd.Cell[CKD_BRG,ARow].AsString =
      nxGrd2.Cell[CKD_BRG,ARow].AsString then begin
      MsgBox('Barang asal dan tujuan harus berbeda.');
      nxGrd2.DeleteRow(ARow);
      nxGrd2.AddRow();
      Abort;
    end;
    }{

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[sKodeBrg]);

    nxGrd2.Cell[CNM_BRG2,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd2.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd2.Cell[CQTY,ARow].AsFloat := 1;
    nxGrd2.Cell[CGDG,ARow].AsString := 'G01';
    nxGrd2.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G01');

    q.Close;
    nxGrd2.AddRow();
    nxGrd2.SelectCell(0, nxGrd2.LastAddedRow);
  //end;
  HitungTotal;  }
end;

function TFrmTrsSPKGiling.GetRow(grd: TNextGrid): Integer;
var
  i,j: Integer;
begin
  j := 0;
  for i := 0 to grd.RowCount - 1 do
    if grd.Cell[CKD_BRG,i].AsString <> '' then Inc(j);
  Result := j;
end;

procedure TFrmTrsSPKGiling.nxGrd2CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  {
  if nxGrd2.SelectedRow > -1 then begin
    if ACol = CHAPUS2 then begin
      if Trim(nxGrd2.Cell[1, ARow].AsString) <> '' then begin
        if nxGrd2.SelectedRow = nxGrd2.RowCount - 1 then
          nxGrd2.AddRow();
        nxGrd2.DeleteRow(nxGrd2.SelectedRow);
        NxIncrementColumn1.Refresh();
        if nxGrd2.RowCount = 0 then nxGrd2.AddRow();
      end;
    end
  end;
  }
end;

procedure TFrmTrsSPKGiling.nxGrd2AfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  i: Integer;
begin
  {
  if ACol = CGDG then begin
    if nxGrd2.Cell[CGDG,ARow].AsString <> '' then begin
      nxGrd2.Cell[CNM_GDG,ARow].AsString := GetNamaGudang(nxGrd2.Cell[CGDG,ARow].AsString);
      nxGrd2.SelectCell(CKET,ARow);
    end;
  end
  else if ACol = CQTY2 then begin
    if nxGrd2.Cell[CQTY2,ARow].AsFloat <= 0 then begin
      nxGrd2.Cell[CQTY2,ARow].AsFloat := 1;
    end;
    if Trim(nxGrd2.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd2.Cell[CQTY2,ARow].AsInteger := 0;
      nxGrd2.SelectCell(CKD_BRG2,ARow);
    end
    else begin
      HitungTotal;

      if ARow < nxGrd2.RowCount - 1 then
        nxGrd2.SelectCell(1,nxGrd2.RowCount-1)
      else begin
        i := nxGrd2.AddRow();
        nxGrd2.SelectCell(1,i);
        nxGrd2.ScrollToRow(i);
      end;
    end;

  end;
  }
end;

procedure TFrmTrsSPKGiling.cxLUBrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TFrmTrsSPKGiling.cxLUBrg2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnTambah2Click(nil);
end;

procedure TFrmTrsSPKGiling.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  Self.Enabled := False;
end;

procedure TFrmTrsSPKGiling.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  inherited;
  Self.Enabled := True;
  MsgBox('Email Permintaan Approval SPK Giling sudah dikirim.');
end;

procedure TFrmTrsSPKGiling.SendEmail;
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
      email.Recipients.EMailAddresses := 'ferry@sdp.mail';

    email.Subject := 'Approval SPK Giling Nomor : ' + cxtNoTrans.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada transaksi SPK Giling yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('Nomor SPK : ' + cxtNoTrans.Text);
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

end.
