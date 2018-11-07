unit unFrmTrsBPPB_PRD;

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
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckBox;

type
  TfrmTrsBPPB_PRD = class(TfrmTplTrans)
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
    nxColRef: TNxTextColumn;
    nxColKet: TNxTextColumn;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    btnTambah: TButton;
    nxColNoSO: TNxTextColumn;
    nxColNoSPK: TNxTextColumn;
    NxEdit2: TNxEdit;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    nxColSatuan: TNxTextColumn;
    NxButtonEdit1: TNxButtonEdit;
    nxBeNoSO: TNxButtonEdit;
    nxBtnEditSO: TNxButtonEdit;
    btnCariBrg: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnTambahClick(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure NxButtonEdit1ButtonClick(Sender: TObject);
    procedure nxBeNoSOButtonClick(Sender: TObject);
    procedure nxBtnEditSOButtonClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
  private
    mUserDept: string;
    mJenisTrans: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    property JenisTrans: string write mJenisTrans;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
  end;

var
  frmPO: TFrmTrsBPPB_PRD;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSO, unFrmCariSPK;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CSAT : Integer = 4;
  CQTY : integer = 5;
  CNOSO : Integer = 6;
  CNOSPK : Integer = 7;
  CREF : Integer = 8;
  CKET : Integer = 9;

{$R *.dfm}

procedure TFrmTrsBPPB_PRD.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  cxdTglTrs.Date := Aplikasi.TanggalServer;


  cxlNoBukti.Visible := Aplikasi.EditTrans;
  btnEdit2.Visible := aplikasi.EditTrans;

  cxtNoTrans.Text := GetLastFak('bppb');

  zqrBrg.Open;
  zqrNoBukti.Open;
  
end;

procedure TFrmTrsBPPB_PRD.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmTrsBPPB_PRD.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsBPPB_PRD.NxEdit1DblClick(Sender: TObject);
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

procedure TFrmTrsBPPB_PRD.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(CQTY+1,ARow)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(CKD_BRG,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = CNOSO then begin
    try
      nxGrd.SelectCell(CNOSO,ARow+1);
    except
    end;
  end
  else if ACol = CREF then
    nxGrd.SelectCell(CKET, ARow);
end;

procedure TFrmTrsBPPB_PRD.HitungTotal;
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

procedure TFrmTrsBPPB_PRD.ClearAll;
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

  cxtNoTrans.Text := GetLastFak('brg_in');

end;

procedure TFrmTrsBPPB_PRD.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('brg_in');
  cxlNoBukti.Text := '';
end;

procedure TFrmTrsBPPB_PRD.btnSimpanClick(Sender: TObject);
var
  in_head, in_det: TZQuery;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
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

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else begin
        sNoTrs := GetLastFak('bppb');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trbppb_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsbppb_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenRS('SELECT * FROM tbl_trsbppb_head WHERE no_bukti = ''%s''', [sNoTrs]);
      in_det := OpenRS('SELECT * FROM tbl_trsbppb_det WHERE no_bukti = ''%s''', [sNoTrs]);

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('f_approval').AsInteger := 0;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[nxColKet.Index,i].AsString);
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi BPPB sudah disimpan dengan nomer: ' + sNoTrs);
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

procedure TFrmTrsBPPB_PRD.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
var
  fs: TFrmCariSo;
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
    else if ACol = CKD_BRG then begin
      //self.NxEdit1DblClick(nil);
      fs := TFrmCariSO.Create(self);
      //fs.fTrsMasuk := Self;
      fs.KodeCust := '';
      fs.ShowModal;
    end
    else if ACol = CNOSO then begin
    
    end;
  end;
end;

procedure TFrmTrsBPPB_PRD.btnTambahClick(Sender: TObject);
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

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode Barang sudah ada.');
    cxLUBrg.Text := '';
  end
  else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := 0;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  end;
end;

procedure TFrmTrsBPPB_PRD.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmTrsBPPB_PRD.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin
  if Trim(cxlNoBukti.Text) = '' then Abort;
  
  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNM_BRG,i].AsString := qBrg.fieldByName('deskripsi').AsString;
    qBrg.Close;
    nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[CNOSO,i].AsString := q.FieldByName('no_so').AsString;
    nxGrd.Cell[CNOSPK,i].AsString := q.FieldByName('no_spk').AsString;
    nxGrd.Cell[CKET,i].AsString := q.FieldByName('keterangan').AsString;

    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
end;

procedure TFrmTrsBPPB_PRD.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and
    (ACol = CKD_BRG) then begin

    q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      ' AND kode_brg = ''%s''',
      [sNoSO, sKodeBrg]);

    if not q.IsEmpty then begin

      qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
        [q.FIeldByName('kode_brg').AsString]);
      nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[CNOSO,ARow].AsString := sNoSO;
      nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
      nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
      qb.Close;

      nxGrd.AddRow();
    end;

    HitungTotal;
  end;
end;

procedure TFrmTrsBPPB_PRD.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TFrmTrsBPPB_PRD.NxButtonEdit1ButtonClick(Sender: TObject);
var
  f: TfrmCariSPK;
  lst: TStringList;
  ARow, ACol: Integer;
begin
  ARow := nxGrd.SelectedRow;
  ACol := nxGrd.SelectedColumn;

  f := TfrmCariSPK.Create(Self);
  f.ShowModal;
  if f.ModalResult = idOk then begin
    lst := f.NoSPK;
    nxGrd.Cell[nxColNoSPK.Index,ARow].AsString := lst.Strings[0];
    nxGrd.SelectCell(nxColNoSPK.Index+1,ARow);
  end;
  f.Release;

end;

procedure TFrmTrsBPPB_PRD.nxBeNoSOButtonClick(Sender: TObject);
var
  f: TfrmCari;
  ARow, ACol: Integer;
  s: TStringList;
  fNoSO: TField;
begin
  ARow := nxGrd.SelectedRow;
  ACol := nxGrd.SelectedColumn;

  f := TfrmCari.Create(Self);
  f.Jenis := 'sales-order-mdb';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fNoSO := s.Objects[0] as TField;
    nxGrd.Cell[CNOSO,ARow].AsString := fNoSO.AsString;
    nxGrd.SelectCell(CNOSO+1,ARow);
  end;
  f.Release;
end;

procedure TFrmTrsBPPB_PRD.nxBtnEditSOButtonClick(Sender: TObject);
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
  f.Jenis := 'sales-order';
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

procedure TFrmTrsBPPB_PRD.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUBrg.EditValue := fKode.AsInteger;
  end;

end;

end.
