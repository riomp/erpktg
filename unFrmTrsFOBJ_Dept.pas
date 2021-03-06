unit unFrmTrsFOBJ_Dept;

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
  cxGroupBox, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText;

type
  TfrmTrsFOBJ_Dept = class(TfrmTplTrans)
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
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKet: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbDept: TcxComboBox;
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
    nxColSatuan: TNxTextColumn;
    NxButtonEdit1: TNxButtonEdit;
    nxBeNoSO: TNxButtonEdit;
    nxBtnEditSO: TNxButtonEdit;
    cxLabel4: TcxLabel;
    cxtDiajukanOleh: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxdTglDiperlukan: TcxDateEdit;
    cxRadioGroup1: TcxRadioGroup;
    cxRbtPenting: TcxRadioButton;
    cxRbtMendesak: TcxRadioButton;
    btnCariBrg: TButton;
    idSMTP: TIdSMTP;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure nxBeNoSOButtonClick(Sender: TObject);
    procedure nxBtnEditSOButtonClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnEdit3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
    procedure SendEmail;
  end;

var
  frmTrsFOBJ_Dept: TFrmTrsFOBJ_Dept;

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

procedure TFrmTrsFOBJ_Dept.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TList;
begin
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  // collect departemen
  q := OpenRS('SELECT * FROM tbl_bagian ORDER BY bagian');
  while not q.Eof do begin
    cxCmbDept.Properties.Items.Add(q.fieldByName('bagian').AsString);
    q.Next;
  end;
  q.Close;

  lst := TList.Create();
  lst.Add(zqrNoBukti);
  lst.Add(zqrBrg);
  OpenSQL(lst);

  cxdTglDiperlukan.Date := Aplikasi.Tanggal;

  cxtNoTrans.Text := unTools.GetLastFakFOBJ(aplikasi.UserDept);

  //zqrBrg.Close;
  //if aplikasi.UserDept = 'PPIC' then begin
  //  zqrBrg.SQL.Strings[1] := 'WHERE tipe not like  ''BB%''';
  //end;
  //zqrBrg.Open;

  cxtDiajukanOleh.Text := aplikasi.NamaUser;
  cxCmbDept.Text := aplikasi.UserDept;
  cxtDiajukanOleh.Properties.ReadOnly := True;
  cxCmbDept.Properties.ReadOnly := True;

  btnEdit2.Visible := False;
  cxlNoBukti.Visible := False;
end;

procedure TFrmTrsFOBJ_Dept.btnBaruClick(Sender: TObject);
begin
  inherited;
  Self.Jenis := 'tambah';
end;

function TFrmTrsFOBJ_Dept.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsFOBJ_Dept.NxEdit1DblClick(Sender: TObject);
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

procedure TFrmTrsFOBJ_Dept.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = nxColKodeBrg.Index then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = nxColQty.Index then begin

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString) = '' then begin
      nxGrd.Cell[nxColQty.Index,ARow].AsInteger := 0;
      nxGrd.SelectCell(nxColKodeBrg.Index,ARow);
    end
    else begin
      HitungTotal;

      {
      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(CQTY+1,ARow)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(CKD_BRG,i);
        nxGrd.ScrollToRow(i);
      end;
      }
      
    end;

  end;
end;

procedure TFrmTrsFOBJ_Dept.HitungTotal;
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

procedure TFrmTrsFOBJ_Dept.ClearAll;
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
  cxtNoTrans.Text := '';
  cxtDiajukanOleh.Text := '';
  cxCmbDept.Text := '';
  cxdTglDiperlukan.Date := Aplikasi.Tanggal;
  cxRbtPenting.Checked := True;

  zqrNoBukti.Close;
  zqrNoBukti.Open;

  self.Jenis := '';
  cxtNoTrans.Properties.ReadOnly := False;
  
end;

procedure TFrmTrsFOBJ_Dept.btnBatalClick(Sender: TObject);
begin
  //inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.SetFocus;
  cxtNoTrans.Text := GetLastFakFOBJ(Aplikasi.UserDept);
  cxLUBrg.SetFocus;
  //cxlNoBukti.Text := '';
  cxtDiajukanOleh.Text := aplikasi.NamaUser;
  cxCmbDept.Text := aplikasi.UserDept;
end;

procedure TFrmTrsFOBJ_Dept.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs, s: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if Trim(cxtNoTrans.Text) = '' then begin
    MsgBox('No. FOBJ harus diisi.');
    cxtNoTrans.SetFocus;
  end
  else if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi FOBJ masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if Trim(cxtDiajukanOleh.Text) = '' then begin
    MsgBox('Personal yang mengajukan FOBJ harus diisi.');
    cxtDiajukanOleh.SetFocus;
  end
  else if cxCmbDept.Text = '' then begin
    MsgBox('Departemen harus diisi.');
    cxCmbDept.SetFocus;
  end
  else if cxdTglDiperlukan.Text = '' then begin
    MsgBox('Tanggal diperlukan harus diisi.');
    cxdTglDiperlukan.SetFocus;
  end
  else begin

    // cek apakah ada spasi di nomer FOBJ
    if Pos(' ', Trim(cxtNoTrans.Text)) > 0 then begin
      MsgBox('Nomer FOBJ tidak boleh ada spasi.');
      cxtNoTrans.SetFocus;
      Abort;
    end;

    // cek apakah nomer FOBJ sudah digunakan
    if self.Jenis <> 'edit' then begin
      q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
        [cxtNoTrans.Text]);
      if not q.IsEmpty then begin
        MsgBox('No. FOBJ : ' + cxtNoTrans.Text + ' sudah digunakan.');
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

    try

      sNoTrs := cxtNoTrans.Text;
      {
      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else begin

        s := cxCmbDept.Text;
        if Length(s) = 4 then
          s := Copy(s,1,3);

      end;
      }

      sNoTrs := GetLastFakFOBJ(aplikasi.UserDept);
      if Length(Aplikasi.UserDept) = 4 then
        UpdateFaktur(Copy(sNoTrs,1,14))
      else if Length(aplikasi.UserDept) = 3 then
        UpdateFaktur(Copy(sNoTrs,1,13));

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_fobj_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_fobj_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_fobj_head');
      in_det := OpenTbl('tbl_fobj_det');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('diajukan_oleh').AsString := cxtDiajukanOleh.Text;
      in_head.FieldByName('diajukan_dept').AsString := cxCmbDept.Text;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('tgl_diperlukan').AsDateTime := cxdTglDiperlukan.Date;
      
      if cxRbtPenting.Checked then
        in_head.FieldByName('level_kebutuhan').AsString := 'PENTING'
      else if cxRbtMendesak.Checked then
        in_head.FieldByName('level_kebutuhan').AsString := 'MENDESAK';

      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
        //in_det.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index,i].AsString;
        in_det.Post;

      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi FOBJ sudah disimpan dengan nomer: ' + sNoTrs);
      Self.SendEmail;
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

procedure TFrmTrsFOBJ_Dept.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
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
    {
    else if ACol = CKD_BRG then begin
      //self.NxEdit1DblClick(nil);
      fs := TFrmCariSO.Create(self);
      //fs.fTrsMasuk := Self;
      fs.KodeCust := '';
      fs.ShowModal;
    end
    else if ACol = CNOSO then begin

    end;
    }
  end;
end;

procedure TFrmTrsFOBJ_Dept.btnHapusClick(Sender: TObject);
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

procedure TFrmTrsFOBJ_Dept.cxCmbGdgPropertiesChange(Sender: TObject);
var
  s: string;
begin
  { 27/06/2014 -> no fobj diinput manual
  s := cxCmbDept.Text;
  if Length(s) = 4 then
    s := Copy(s,1,3);
  cxtNoTrans.Text := GetLastFakFOBJ(s);
  } 
end;

procedure TFrmTrsFOBJ_Dept.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg.Text = '' then Abort;

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
    if Self.Jenis = 'edit' then 
      ARow := nxGrd.AddRow();
      
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
end;

procedure TFrmTrsFOBJ_Dept.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmTrsFOBJ_Dept.btnEdit2Click(Sender: TObject);
var
  q, qBrg, q2: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxtNoTrans.Properties.ReadOnly := True;
  
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
  cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
  cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;

  if q.FieldByName('level_kebutuhan').AsString = 'PENTING' then
    cxRbtPenting.Checked := True
  else
    cxRbtMendesak.Checked := True;

  q.Close;

  q2 := OpenRS('SELECT * FROM v_fobj_det WHERE no_bukti = ''%s''',
    [zqrNoBukti.FieldByName('no_bukti').AsString]);

  nxGrd.ClearRows;

  while not q2.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q2.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q2.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := q2.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQty.Index,i].AsFloat := q2.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColKet.Index,i].AsString := q2.FieldByName('keterangan').AsString;
    q2.Next;
  end;
  q2.Close;

  HitungTotal;

end;

procedure TFrmTrsFOBJ_Dept.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
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

procedure TFrmTrsFOBJ_Dept.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TFrmTrsFOBJ_Dept.nxBeNoSOButtonClick(Sender: TObject);
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

procedure TFrmTrsFOBJ_Dept.nxBtnEditSOButtonClick(Sender: TObject);
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

procedure TFrmTrsFOBJ_Dept.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  //f.jenis := 'barang-bahan-baku';
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUBrg.EditValue := fKode.AsInteger;
  end;

end;

procedure TFrmTrsFOBJ_Dept.btnEdit3Click(Sender: TObject);
var
  q, qBrg, q2: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
  cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
  cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;

  if q.FieldByName('level_kebutuhan').AsString = 'PENTING' then
    cxRbtPenting.Checked := True
  else
    cxRbtMendesak.Checked := True;

  q.Close;

  q2 := OpenRS('SELECT * FROM v_fobj_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  nxGrd.ClearRows;

  while not q2.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q2.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q2.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := q2.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColQty.Index,i].AsFloat := q2.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColKet.Index,i].AsString := q2.FieldByName('keterangan').AsString;
    q2.Next;
  end;
  q2.Close;

  HitungTotal;

end;

procedure TFrmTrsFOBJ_Dept.FormShow(Sender: TObject);
begin
  inherited;
  cxtNoTrans.SetFocus;
end;

procedure TfrmTrsFOBJ_Dept.SendEmail;
var
  email : TIdMessage;
  lst, lstEmail: TStringList;
  bdy: TIdText;
  q: TZQuery;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host := aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  lstEmail := TStringList.Create;
  q := OpenRS('SELECT b.email FROM tbl_email_mda a ' +
    'LEFT JOIN tbl_user b ON a.nama_user = b.nama ' +
    'WHERE a.jenis = ''FOBJ-DEPT''');
  while not q.Eof do begin
    lstEmail.Add(q.FieldByName('email').AsString);
    q.Next;
  end;
  q.Close;

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := aplikasi.EmailUser;
    email.From.Name := aplikasi.NamaUser;

    if aplikasi.debug then
      email.Recipients.EMailAddresses := 'yosef@sdp.mail'
    else
      email.Recipients.EMailAddresses := lstEmail.CommaText;

    email.Subject := 'FOBJ DEPARTEMEN : ' + aplikasi.UserDept;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada FOBJ yang perlu di Approval, silahkan cek aplikasi MDA');
    lst.Add('</br>');
    lst.Add('Nomor FOBJ : ' + cxtNoTrans.Text);
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
