unit unFrmTrsPenawaran2;

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
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckBox, cxRadioGroup,
  cxGroupBox, ComCtrls;

type
  TfrmTrsPenawaran2 = class(TfrmTplTrans)
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxCmbDept: TcxComboBox;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    cxLabel4: TcxLabel;
    cxtDiajukanOleh: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxdTglDiperlukan: TcxDateEdit;
    cxRadioGroup1: TcxRadioGroup;
    cxRbtPenting: TcxRadioButton;
    cxRbtMendesak: TcxRadioButton;
    cxLabel7: TcxLabel;
    cxlNoFOBJ: TcxLookupComboBox;
    zqrFOBJ: TZReadOnlyQuery;
    dsFOBJ: TDataSource;
    zqrSupplier: TZReadOnlyQuery;
    dsSupplier: TDataSource;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    NxEdit1: TNxEdit;
    cxsTotalQty: TcxSpinEdit;
    NxEdit2: TNxEdit;
    NxButtonEdit1: TNxButtonEdit;
    nxBeNoSO: TNxButtonEdit;
    nxBtnEditSO: TNxButtonEdit;
    cxLabel10: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    Label1: TLabel;
    cxLabel8: TcxLabel;
    cxlSupplier2: TcxLookupComboBox;
    nxGrd2: TNextGrid;
    NxImageColumn2: TNxImageColumn;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn4: TNxTextColumn;
    NxEdit3: TNxEdit;
    cxSpinEdit1: TcxSpinEdit;
    NxEdit4: TNxEdit;
    NxButtonEdit2: TNxButtonEdit;
    NxButtonEdit3: TNxButtonEdit;
    NxButtonEdit4: TNxButtonEdit;
    cxLabel11: TcxLabel;
    cxtNoTrans2: TcxTextEdit;
    Label2: TLabel;
    cxLabel9: TcxLabel;
    cxlSupplier3: TcxLookupComboBox;
    nxGrd3: TNextGrid;
    NxImageColumn3: TNxImageColumn;
    NxIncrementColumn2: TNxIncrementColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn8: TNxTextColumn;
    NxEdit5: TNxEdit;
    cxSpinEdit2: TcxSpinEdit;
    NxEdit6: TNxEdit;
    NxButtonEdit5: TNxButtonEdit;
    NxButtonEdit6: TNxButtonEdit;
    NxButtonEdit7: TNxButtonEdit;
    cxLabel12: TcxLabel;
    cxtNoTrans3: TcxTextEdit;
    nxColMataUang2: TNxComboBoxColumn;
    nxColMataUang3: TNxComboBoxColumn;
    cxChkPil1: TcxCheckBox;
    cxChkPil2: TcxCheckBox;
    cxChkPil3: TcxCheckBox;
    cxLabel3: TcxLabel;
    cxlSupplier: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxlBrg: TcxLookupComboBox;
    nxGrd: TNextGrid;
    nxColHapus: TNxImageColumn;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColSatuan: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    nxColMataUang: TNxComboBoxColumn;
    nxColHarga: TNxNumberColumn;
    nxColKet: TNxTextColumn;
    nxColKodeSupp: TNxTextColumn;
    nxColNamaSupp: TNxTextColumn;
    cxLabel13: TcxLabel;
    cxsQtyFOBJ: TcxSpinEdit;
    cxLabel14: TcxLabel;
    cxsHarga: TcxSpinEdit;
    Button1: TButton;
    cxLabel15: TcxLabel;
    cxCmbMataUang: TcxComboBox;
    zqrBrgFOBJ: TZReadOnlyQuery;
    dsBrgFOBJ: TDataSource;
    nxColFOBJ: TNxTextColumn;
    cxLabel16: TcxLabel;
    cxtSatuan: TcxTextEdit;
    btnSimpan2: TButton;
    nxColNoPen: TNxTextColumn;
    cxLabel17: TcxLabel;
    cxdTglPenawaran: TcxDateEdit;
    nxColTglPen: TNxDateColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure nxBeNoSOButtonClick(Sender: TObject);
    procedure nxBtnEditSOButtonClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxlNoFOBJPropertiesEditValueChanged(Sender: TObject);
    procedure cxChkPil1Click(Sender: TObject);
    procedure cxlBrgPropertiesEditValueChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
  private
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
  end;

var
  frmTrsPenawaran2: TFrmTrsPenawaran2;

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

procedure TFrmTrsPenawaran2.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TList;
begin
  cxtNoTrans.Text := GetLastFak('penawaran');
  pg.ActivePageIndex := 0;

  zqrNoBukti.Open;
  zqrFOBJ.Open;

  q := OpenRS('SELECT * FROM tbl_mata_uang ORDER BY mata_uang');
  while not q.Eof do begin
    nxColMataUang.Items.Add(q.FieldByName('mata_uang').AsString);
    nxColMataUang2.Items.Add(q.FieldByName('mata_uang').AsString);
    nxColMataUang3.Items.Add(q.FieldByName('mata_uang').AsString);
    cxCmbMataUang.Properties.Items.Add(q.FieldByName('mata_uang').AsString);
    q.Next;
  end;
  q.Close;

  btnEdit2.Visible := False;
  cxlNoBukti.Visible := False;

  lst := TList.Create;
  lst.Add(zqrFOBJ);
  lst.Add(zqrSupplier);
  OpenSQL(lst);

  nxGrd.ClearRows;
end;

procedure TFrmTrsPenawaran2.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_in');
  Self.Jenis := 'tambah';
end;

function TFrmTrsPenawaran2.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsPenawaran2.NxEdit1DblClick(Sender: TObject);
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

procedure TFrmTrsPenawaran2.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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

procedure TFrmTrsPenawaran2.HitungTotal;
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

procedure TFrmTrsPenawaran2.ClearAll;
var
  i: Integer;
begin

  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;

  nxGrd.ClearRows;
  nxGrd2.ClearRows;
  nxGrd3.ClearRows;

  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  cxtNoTrans.Text := '';
  cxtDiajukanOleh.Text := '';
  cxCmbDept.Text := '';
  cxdTglDiperlukan.Date := Aplikasi.Tanggal;
  cxRbtPenting.Checked := True;
end;

procedure TFrmTrsPenawaran2.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('brg_in');
  cxlNoBukti.Text := '';
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  zqrFOBJ.Close;
  zqrFOBJ.SQL.Strings[1] := 'WHERE f_penawaran = 0';
  zqrFOBJ.Open;
end;

procedure TFrmTrsPenawaran2.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs, sNoTrs1, sNoTrs2, sNoTrs3, s : string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if cxlSupplier.Text = '' then begin
    MsgBox('Supplier harus diisi.');
    pg.ActivePageIndex := 0;
    cxlSupplier.SetFocus;
  end
  {
  else if cxlSupplier2.Text = '' then begin
    MsgBox('Supplier harus diisi.');
    pg.ActivePageIndex := 1;
    cxlSupplier2.SetFocus;
  end
  else if cxlSupplier3.Text = '' then begin
    MsgBox('Supplier harus diisi.');
    pg.ActivePageIndex := 2;
    cxlSupplier3.SetFocus;
  end
  }
  else if cxlNoFOBJ.Text = '' then begin
    MsgBox('Pilin No. FOBJ.');
    cxlNoFOBJ.SetFocus;
  end
  else begin

    // cek harga di grid, apakah masih ada yang kosong
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColHarga.Index,i].AsFloat = 0 then begin
        MsgBox('Harga masih ada yang 0.');
        Abort;
      end;
    end;
    for i := 0 to nxGrd2.RowCount - 1 do begin
      if nxGrd2.Cell[nxColHarga.Index,i].AsFloat = 0 then begin
        MsgBox('Harga masih ada yang 0.');
        Abort;
      end;
    end;
    for i := 0 to nxGrd3.RowCount - 1 do begin
      if nxGrd3.Cell[nxColHarga.Index,i].AsFloat = 0 then begin
        MsgBox('Harga masih ada yang 0.');
        Abort;
      end;
    end;

    // cek mata uang di grid, apakah masih ada yang kosong
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColMataUang.Index,i].AsString = '' then begin
        MsgBox('Pilih mata uang yang digunakan.');
        pg.ActivePageIndex := 0;
        Abort;
      end;
    end;
    for i := 0 to nxGrd2.RowCount - 1 do begin
      if nxGrd2.Cell[nxColMataUang2.Index,i].AsString = '' then begin
        MsgBox('Pilih mata uang yang digunakan.');
        pg.ActivePageIndex := 1;
        Abort;
      end;
    end;
    for i := 0 to nxGrd3.RowCount - 1 do begin
      if nxGrd3.Cell[nxColHarga.Index,i].AsString = '' then begin
        MsgBox('Pilih mata uang yang digunakan.');
        pg.ActivePageIndex := 2;
        Abort;
      end;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    if (cxlSupplier.Text = cxlSupplier2.Text) or
      (cxlSupplier.Text = cxlSupplier3.Text) or
      (cxlSupplier2.Text = cxlSupplier3.Text) then begin
      MsgBox('Supplier harus berbeda di tiap penawaran.');
      Abort;
    end;

    try

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        {
        barang := OpenTbl('tbl_barang');
        barang_det := OpenTbl('tbl_barang_det');
        q := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        while not q.Eof do begin
          if barang.Locate('kode', q.FieldByname('kode_brg').AsInteger,[]) then begin
            barang.Edit;
            barang.FieldByName('stok').AsFloat :=
              barang.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
            barang.Post;
          end;
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([
              q.FieldByName('kode_brg').AsInteger,
              q.FieldByName('kode_gdg').AsString
            ]),[]) then begin
            barang_det.Edit;
            barang_det.FieldByName('stok').AsFloat :=
              barang_det.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
            barang_det.Post;
          end;
          q.Next;
        end;
        q.Close;
        barang.Close;
        barang_det.Close;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsmasuk_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsmasuk_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        }
      end;

      in_head := OpenTbl('tbl_penawaran_head');
      in_det := OpenTbl('tbl_penawaran_det');

      // grid 1
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans.Text;
      end
      else begin
        s := cxCmbDept.Text;
        if Length(s) = 4 then
          s := Copy(s,1,3);
        sNoTrs := GetLastFak('penawaran');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end;
      sNoTrs1 := sNoTrs;

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('no_fobj').AsString := cxlNoFOBJ.Text;
      in_head.FieldByName('kode_supp').AsString := cxlSupplier.EditValue;
      in_head.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      if cxChkPil1.Checked then
        in_head.FieldByName('f_pilih').AsInteger := 1;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index,i].AsFloat;
        in_det.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
        in_det.FieldByName('mata_uang').AsString := nxGrd.Cell[nxColMataUang.Index,i].AsString;
        in_det.Post;
      end;

      // grid 2
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans2.Text;
      end
      else begin
        s := cxCmbDept.Text;
        if Length(s) = 4 then
          s := Copy(s,1,3);
        sNoTrs := GetLastFak('penawaran');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end;
      sNoTrs2 := sNoTrs;

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('no_fobj').AsString := cxlNoFOBJ.Text;
      in_head.FieldByName('kode_supp').AsString := cxlSupplier2.EditValue;
      in_head.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      if cxChkPil2.Checked then
        in_head.FieldByName('f_pilih').AsInteger := 1;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd2.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd2.Cell[nxColQty.Index,i].AsFloat;
        in_det.FieldByName('harga').AsFloat := nxGrd2.Cell[nxColHarga.Index,i].AsFloat;
        in_det.FieldByName('mata_uang').AsString := nxGrd2.Cell[nxColMataUang.Index,i].AsString;
        in_det.Post;
      end;

      // grid 3
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans3.Text;
        sNoTrs := cxtNoTrans3.Text;
      end
      else begin
        s := cxCmbDept.Text;
        if Length(s) = 4 then
          s := Copy(s,1,3);
        sNoTrs := GetLastFak('penawaran');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end;
      sNoTrs3 := sNoTrs;

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('no_fobj').AsString := cxlNoFOBJ.Text;
      in_head.FieldByName('kode_supp').AsString := cxlSupplier3.EditValue;
      in_head.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      if cxChkPil3.Checked then
        in_head.FieldByName('f_pilih').AsInteger := 1;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd3.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd3.Cell[nxColQty.Index,i].AsFloat;
        in_det.FieldByName('harga').AsFloat := nxGrd3.Cell[nxColHarga.Index,i].AsFloat;
        in_det.FieldByName('mata_uang').AsString := nxGrd3.Cell[nxColMataUang.Index,i].AsString;
        in_det.Post;
      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.ExecuteDirect(
        Format('UPDATE tbl_fobj_head SET f_penawaran = 1 ' +
        'WHERE no_bukti = ''%s''',
        [cxlNoFOBJ.Text])
      );

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi Penawaran sudah disimpan dengan nomer : ' + #10#13 +
        sNoTrs1 + #10#13 +
        sNoTrs2 + #10#13 +
        sNoTrs3);
        
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

procedure TFrmTrsPenawaran2.btnHapusClick(Sender: TObject);
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

procedure TFrmTrsPenawaran2.cxCmbGdgPropertiesChange(Sender: TObject);
var
  s: string;
begin
  s := cxCmbDept.Text;
  if Length(s) = 4 then
    s := Copy(s,1,3);
  cxtNoTrans.Text := GetLastFakFOBJ(s); 
end;

procedure TFrmTrsPenawaran2.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  {
  if cxCmbDept.Text = '' then begin
    MsgBox('Pilih departemen.');
    cxCmbDept.SetFocus;
    Abort;
  end;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode Barang sudah ada.');
    cxLUBrg.Text := '';
  end
  else begin
    cxLUBrg.Text := '';
    nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' + sKodeBrg + '''');

    nxGrd.Cell[nxColNamaBrg.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQty.Index,ARow].AsFloat := 1;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  end;
  }
end;

procedure TFrmTrsPenawaran2.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmTrsPenawaran2.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  sNoFOBJ, sSQL: string;
  i: Integer;
begin
  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  sNoFOBJ := zqrNoBukti.FieldByName('no_bukti').AsString;

  zqrFOBJ.Close;
  zqrFOBJ.SQL.Strings[1] := 'WHERE f_penawaran = 1';
  zqrFOBJ.Open;

  cxlNoFOBJ.Text := sNoFOBJ;
  cxlNoFOBJ.Properties.ReadOnly := True;
  
  q := OpenRS('SELECT * FROM tbl_penawaran_head WHERE no_fobj = ''%s''',
    [sNoFOBJ]);
  cxtNoTrans.Text := q.FieldByName('no_bukti').AsString;
  q.Next;
  cxtNoTrans2.Text := q.FieldByName('no_bukti').AsString;
  q.Next;
  cxtNoTrans3.Text := q.FieldByName('no_bukti').AsString;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
    [sNoFOBJ]);
  cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
  cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
  cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
  cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;
  q.Close;

  nxGrd.ClearRows;
  nxGrd2.ClearRows;
  nxGrd3.ClearRows;

  q := OpenRS('SELECT * FROM tbl_penawaran_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
      [q.FieldByName('kode_brg').AsString]);
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := qBrg.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := qBrg.FieldByName('satuan').AsString;
    qBrg.Close;
    
    nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;

    Inc(i);
    q.Next;
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_penawaran_det WHERE no_bukti = ''%s''',
    [cxtNoTrans2.Text]);

  i := 0;
  while not q.Eof do begin
    with nxGrd2 do begin
      AddRow();
      qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      Cell[nxColNamaBrg.Index,i].AsString := qBrg.fieldByName('deskripsi').AsString;
      Cell[nxColSatuan.Index,i].AsString := qBrg.FieldByName('satuan').AsString;
      qBrg.Close;

      Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
    end;
    
    Inc(i);
    q.Next;
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_penawaran_det WHERE no_bukti = ''%s''',
    [cxtNoTrans2.Text]);

  i := 0;
  while not q.Eof do begin
    with nxGrd3 do begin
      AddRow();
      qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q.FieldByName('kode_brg').AsString]);
      Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      Cell[nxColNamaBrg.Index,i].AsString := qBrg.fieldByName('deskripsi').AsString;
      Cell[nxColSatuan.Index,i].AsString := qBrg.FieldByName('satuan').AsString;
      qBrg.Close;

      Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
    end;

    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
end;

procedure TFrmTrsPenawaran2.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
var
  f: TFrmCari;
  fs: TfrmCariSO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb: TZQuery;
begin
  {
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and
    (ACol = CKD_BRG) then begin

    q := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      ' AND kode_brg = ''%s''',
      [sNoSO, cxtNoTrans]);

    if not q.IsEmpty then begin

      qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
        [q.FIeldByName('kode_brg').AsString]);
      nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColNamaBrg.Index,ARow].AsString := qb.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColSatuan.Index,ARow].AsString := qb.FieldByName('satuan').AsString;
      qb.Close;
      nxGrd.Cell[nxColQty.Index,ARow].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColHarga.Index,ARow].AsFloat := q.FieldByName('harga').AsFloat;

      nxGrd.AddRow();
    end;
    q.Close;

    //HitungTotal;
  end;
  }
end;

procedure TFrmTrsPenawaran2.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TFrmTrsPenawaran2.nxBeNoSOButtonClick(Sender: TObject);
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

procedure TFrmTrsPenawaran2.nxBtnEditSOButtonClick(Sender: TObject);
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

procedure TFrmTrsPenawaran2.btnCariBrgClick(Sender: TObject);
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

procedure TFrmTrsPenawaran2.cxlNoFOBJPropertiesEditValueChanged(
  Sender: TObject);
var
  q, qpen, qh: TZQuery;
  i: Integer;
begin

  nxGrd.ClearRows;
  
  q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
    [zqrFOBJ.FieldByName('no_bukti').AsString]);
  if not q.IsEmpty then begin
    cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
    cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
    cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
    cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;
  end;
  q.Close;

  zqrBrgFOBJ.Close;
  zqrBrgFOBJ.ParamByName('no_bukti').AsString :=
    zqrFOBJ.FieldByName('no_bukti').AsString;
  zqrBrgFOBJ.Open;

  qpen := OpenRS('SELECT * FROM v_penawaran_supp_det WHERE no_fobj = ''%s''',
    [zqrFOBJ.FieldByName('no_bukti').AsString]);
  if not qpen.IsEmpty then begin
    Self.Jenis := 'edit';
    nxGrd.ClearRows;
    while not qpen.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColTglPen.Index,i].AsDateTime := qpen.FieldByName('tgl_penawaran').AsDateTime;
      nxGrd.Cell[nxColKodeSupp.Index,i].AsString := qpen.FieldByName('kode_supp').AsString;
      nxGrd.Cell[nxColNamaSupp.Index,i].AsString := qpen.FieldByName('nama').AsString;
      nxGrd.Cell[nxColKodeBrg.Index,i].AsString := qpen.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColNamaBrg.Index,i].AsString := qpen.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColSatuan.Index,i].AsString := qpen.FieldByName('satuan').AsString;
      nxGrd.Cell[nxColQty.Index,i].AsFloat := qpen.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColMataUang.Index,i].AsString := qpen.FieldByName('mata_uang').AsString;
      nxGrd.Cell[nxColHarga.Index,i].AsFloat := qpen.FieldByName('harga').AsFloat;
      nxGrd.Cell[nxColFOBJ.Index,i].AsString := qpen.FieldByName('no_fobj').AsString;
      nxGrd.Cell[nxColNoPen.Index,i].AsString := qpen.FieldByName('no_bukti').AsString;
      qpen.Next;
    end;
  end;
  qpen.Close;
  
  {
  //if cxlSupplier.Text = '' then begin
  //  MsgBox('Supplier harus diisi.');
  //  cxlSupplier.SetFocus;
  //end
  //else begin

    try
      q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
        [zqrFOBJ.FieldByName('no_bukti').AsString]);
      if not q.IsEmpty then begin
        cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
        cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
        cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
        cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;

        qd := OpenRS('SELECT * FROM v_fobj_det WHERE no_bukti = ''%s''',
          [zqrFOBJ.FieldByName('no_bukti').AsString]);

        nxGrd.ClearRows;
        nxGrd2.ClearRows;
        nxGrd3.ClearRows;

        while not qd.Eof do begin
          i := nxGrd.AddRow();
          nxGrd2.AddRow();
          nxGrd3.AddRow();

          nxGrd.Cell[nxColKodeBrg.Index,i].AsString := qd.FieldByName('kode_brg').AsString;
          nxGrd.Cell[nxColNamaBrg.Index,i].AsString := qd.FieldByName('deskripsi').AsString;
          nxGrd.Cell[nxColSatuan.Index,i].AsString := qd.FieldByName('satuan').AsString;
          nxGrd.Cell[nxColQty.Index,i].AsFloat := qd.FieldByName('qty').AsFloat;
          nxGrd.Cell[nxColKet.Index,i].AsString := qd.FieldByName('keterangan').AsString;
          nxGrd.Cell[nxColMataUang.Index,i].AsString := 'IDR';

          nxGrd2.Cell[nxColKodeBrg.Index,i].AsString := qd.FieldByName('kode_brg').AsString;
          nxGrd2.Cell[nxColNamaBrg.Index,i].AsString := qd.FieldByName('deskripsi').AsString;
          nxGrd2.Cell[nxColSatuan.Index,i].AsString := qd.FieldByName('satuan').AsString;
          nxGrd2.Cell[nxColQty.Index,i].AsFloat := qd.FieldByName('qty').AsFloat;
          nxGrd2.Cell[nxColKet.Index,i].AsString := qd.FieldByName('keterangan').AsString;
          nxGrd2.Cell[nxColMataUang.Index,i].AsString := 'IDR';

          nxGrd3.Cell[nxColKodeBrg.Index,i].AsString := qd.FieldByName('kode_brg').AsString;
          nxGrd3.Cell[nxColNamaBrg.Index,i].AsString := qd.FieldByName('deskripsi').AsString;
          nxGrd3.Cell[nxColSatuan.Index,i].AsString := qd.FieldByName('satuan').AsString;
          nxGrd3.Cell[nxColQty.Index,i].AsFloat := qd.FieldByName('qty').AsFloat;
          nxGrd3.Cell[nxColKet.Index,i].AsString := qd.FieldByName('keterangan').AsString;
          nxGrd3.Cell[nxColMataUang3.Index,i].AsString := 'IDR';

          qh := OpenRS('SELECT * FROM tbl_barang_supp WHERE kode_brg = %s AND ' +
            'kode_supp = ''%s''',
            [qd.FieldByName('kode_brg').AsString, cxlSupplier.Text]);
          if not qh.IsEmpty then
            nxGrd.Cell[nxColHarga.Index,i].AsFloat := qh.FieldByName('harga').AsFloat;
          qh.Close;

          qd.Next;
        end;
        qd.Close;

      end;
      q.Close;
    except
    end;
  //end;
  }
end;

procedure TFrmTrsPenawaran2.cxChkPil1Click(Sender: TObject);
var
  chk: TcxCheckBox;
begin
  chk := (Sender as TcxCheckBox);

  if chk.Checked then begin
    if chk.Name = 'cxChkPil1' then begin
      cxChkPil2.Checked := False;
      cxChkPil3.Checked := False;
    end
    else if chk.Name = 'cxChkPil2' then begin
      cxChkPil1.Checked := False;
      cxChkPil3.Checked := False;
    end
    else if chk.Name = 'cxChkPil3' then begin
      cxChkPil1.Checked := False;
      cxChkPil2.Checked := False;
    end;
  end;

end;

procedure TfrmTrsPenawaran2.cxlBrgPropertiesEditValueChanged(
  Sender: TObject);
begin
  cxsQtyFOBJ.Value := zqrBrgFOBJ.FieldByName('qty').AsFloat;
  cxtSatuan.Text := zqrBrgFOBJ.FieldByName('satuan').AsString;
  cxsHarga.SetFocus;
end;

procedure TfrmTrsPenawaran2.Button1Click(Sender: TObject);
var
  i, j: Integer;
begin
  if cxlNoFOBJ.Text = '' then begin
    MsgBox('Pilih No. FOBJ.');
    cxlNoFOBJ.SetFocus;
  end
  else if cxdTglPenawaran.Text = '' then begin
    MsgBox('Tanggal penawaran harus diisi.');
    cxdTglPenawaran.SetFocus;
  end
  else if cxlSupplier.Text = '' then begin
    MsgBox('Pilih Supplier.');
    cxlSupplier.SetFocus;
  end
  else if cxlBrg.Text = '' then begin
    MsgBox('Pilih Barang.');
    cxlBrg.SetFocus;
  end
  else if cxsHarga.Value = 0 then begin
    MsgBox('Masukkan harga barang.');
    cxsHarga.SetFocus;
  end
  else if cxCmbMataUang.Text = '' then begin
    MsgBox('Pilih mata uang yang akan digunakan.');
    cxCmbMataUang.SetFocus;
  end
  else begin

    if nxGrd.RowCount > 0 then begin
      for j := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeSupp.Index,j].AsString = zqrSupplier.FieldByName('kode').AsString then begin
          if nxGrd.Cell[nxColKodeBrg.Index,j].AsString = zqrBrgFOBJ.FieldByName('kode_brg').AsString then begin
            MsgBox('Supplier dan barang sudah ada dalam penarawan.');
            Abort;
          end;
        end;
      end;
    end;
    
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColTglPen.Index,i].AsDateTime := cxdTglPenawaran.Date;
    nxGrd.Cell[nxColKodeSupp.Index,i].AsString := zqrSupplier.FieldByName('kode').AsString;
    nxGrd.Cell[nxColNamaSupp.Index,i].AsString := cxlSupplier.Text;
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := zqrBrgFOBJ.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := zqrBrgFOBJ.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := cxtSatuan.Text;
    nxGrd.Cell[nxColQty.Index,i].AsFloat := cxsQtyFOBJ.Value;
    nxGrd.Cell[nxColMataUang.Index,i].AsString := cxCmbMataUang.Text;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := cxsHarga.Value;
    nxGrd.Cell[nxColFOBJ.Index,i].AsString := cxlNoFOBJ.Text;
    
  end;

end;

procedure TfrmTrsPenawaran2.btnSimpan2Click(Sender: TObject);
var
  t_det: TZTable;
  i: integer;
  sNoTrans: string;
begin

  if nxGrd.RowCount = 0 then begin
    MsgBox('Detail penawaran masih kosong.');
  end
  else begin
    try
      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_penawaran_det WHERE no_fobj = ''' +
          cxlNoFOBJ.Text + '''');
      end;

      t_det := OpenTbl('tbl_penawaran_det');

      for i := 0 to nxGrd.RowCount - 1 do begin

        sNoTrans := GetLastFak('penawaran');
        UpdateFaktur(Copy(sNoTrans,1,8));
        t_det.Insert;

        {
        if nxGrd.Cell[nxColNoPen.Index,i].AsString = '' then begin
          sNoTrans := GetLastFak('penawaran');
          UpdateFaktur(Copy(sNoTrans,1,8));
          t_det.Insert;
        end
        else begin
          sNoTrans := nxGrd.Cell[nxColNoPen.Index,i].AsString;
          t_det.Locate('no_fobj;kode_brg',
            VarArrayOf([nxGrd.Cell[nxColFOBJ.Index,i].AsString, nxGrd.Cell[nxColKodeBrg.Index,i].AsInteger]),[]);
          t_det.Edit;
        end;
        }
        
        with t_det do begin
          FieldByName('no_bukti').AsString := sNoTrans;
          FieldByName('tgl_penawaran').AsDateTime := nxGrd.Cell[nxColTglPen.Index,i].AsDateTime;
          FieldByName('no_fobj').AsString := nxGrd.Cell[nxColFOBJ.Index,i].AsString;
          FieldByName('kode_supp').AsString := nxGrd.Cell[nxColKodeSupp.Index,i].AsString;
          FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index,i].AsFloat;
          FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
          FieldByName('mata_uang').AsString := nxGrd.Cell[nxColMataUang.Index,i].AsString;
          Post;
        end;
      end;

      dm.zConn.ExecuteDirect(
        Format('UPDATE tbl_fobj_head SET f_penawaran = 1 ' +
        'WHERE no_bukti = ''%s''',
        [cxlNoFOBJ.Text])
      );

      dm.zConn.Commit;

      MsgBox('Transaksi penawaran sudah disimpan.');
      Self.Jenis := '';
      
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
    
  end;

end;

procedure TfrmTrsPenawaran2.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if nxGrd.SelectedRow > -1 then begin
    if ACol = nxColHapus.Index then begin
      if Trim(nxGrd.Cell[1, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end
  end;
end;

end.
