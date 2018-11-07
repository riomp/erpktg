unit unFrmTrsSPKAssemblyMsk;

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
  cxDBLookupComboBox, ZAbstractRODataset, Math;

type
  TFrmTrsSPKAssemblyMsk = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    NxTextColumn4: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbGdg: TcxComboBox;
    cxtNamaGdg: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    NxEdit2: TNxEdit;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    NxTextColumn7: TNxTextColumn;
    nxGrd2: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn8: TNxTextColumn;
    NxTextColumn9: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn12: TNxTextColumn;
    NxImageColumn2: TNxImageColumn;
    NxEdit3: TNxEdit;
    NxEdit4: TNxEdit;
    nxCmbGdg: TNxComboBoxColumn;
    NxTextColumn3: TNxTextColumn;
    Label1: TLabel;
    cxsTotalQty2: TcxSpinEdit;
    NxTextColumn6: TNxTextColumn;
    zqrNoSPK: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    cxLabel8: TcxLabel;
    cxlNoSPK: TcxLookupComboBox;
    NxTextColumn10: TNxTextColumn;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    cxdTrgSelesai: TcxDateEdit;
    nxColMasuk: TNxNumberColumn;
    nxColFlag: TNxTextColumn;
    procedure FormCreate(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);
    procedure cxCmbGdgEnter(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure nxGrd2CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrd2AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure cxlNoSOPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    function GetRow(grd: TNextGrid): Integer;
  public
    property UserDept: string read mUserDept write mUserDept;
  end;

var
  frmTrsSPKAssembly: TFrmTrsSPKAssemblyMsk;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama;

const
  CNO : integer = 0;
  CHAPUS: integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CSAT : Integer = 4;
  CQTY : integer = 5;
  CQTYMASUK : Integer = 6;
  CNO_SO : integer = 7;
  CKET : Integer = 8;

  CNO2 : integer = 0;
  CHAPUS2: integer = 1;
  CKD_BRG2 : integer = 2;
  CNM_BRG2 : integer = 3;
  CSAT2 : Integer = 4;
  CQTY2 : integer = 5;
  CGDG : Integer = 6;
  CNM_GDG : Integer = 7;
  CNO_SO2 : Integer = 8;
  CKET2 : Integer = 9;

{$R *.dfm}

procedure TFrmTrsSPKAssemblyMsk.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  // collect gudang
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.fieldByName('kode').AsString);
    nxCmbGdg.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  cxtNoTrans.Text := GetLastFak('brg_in');
end;

function TFrmTrsSPKAssemblyMsk.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsSPKAssemblyMsk.NxEdit1DblClick(Sender: TObject);
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

procedure TFrmTrsSPKAssemblyMsk.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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

      // cek apakah qty yang dimasukkan melebihi
      q := OpenRS('SELECT qty FROM tbl_trsspkassembly_det ' +
        'WHERE no_bukti = ''%s'' AND kode_brg = %s',
        [cxlNoSPK.Text, nxGrd.Cell[CKD_BRG, ARow].AsString]);
      if not q.IsEmpty then begin
        if (q.FieldByName('qty').AsFloat - nxGrd.Cell[nxColMasuk.Index,ARow].AsFloat) <
          nxGrd.Cell[CQTY,ARow].AsFloat then begin
          MsgBox('Qty. Penerimaan melebihi qty yang di transaksikan.');
          nxGrd.Cell[CQTY,ARow].AsFloat :=
            q.FieldByName('qty').AsFloat - nxGrd.Cell[nxColMasuk.Index,ARow].AsFloat;
          q.Close;
          Abort;
        end;
      end;
      q.Close;

      HitungTotal;
    end;

  end;
end;

procedure TFrmTrsSPKAssemblyMsk.HitungTotal;
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

  tmpQty := 0;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd2.Cell[CQTY2,i].AsFloat;
  end;
  cxsTotalQty2.Value := tmpQty;
  
end;

procedure TFrmTrsSPKAssemblyMsk.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  cxdTglTrs.Date := aplikasi.TanggalServer;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  nxGrd2.ClearRows;
  nxGrd2.AddRow;
  cxsTotalQty.Value := 0;
  cxsTotalQty2.Value := 0;
  cxtNoTrans.Text := GetLastFak('brg_in');
  
  if aplikasi.UserDept = 'WHL' then begin
    cxCmbGdg.Text := 'G02';
    cxtNamaGdg.Text := GetNamaGudang('G02');
  end
  else begin
    cxCmbGdg.Text := 'G01';
    cxtNamaGdg.Text := GetNamaGudang('G01');
  end;

  zqrNoSPK.Close;
  zqrNoSPK.Open;
end;

procedure TFrmTrsSPKAssemblyMsk.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmTrsSPKAssemblyMsk.btnSimpanClick(Sender: TObject);
var
  //in_head, in_det, barang, barang_det, hist: TZTable;
  in_head, in_det, barang, barang_det, hist: TZQuery;
  sNoTrs: string;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  if cxlNoSPK.Text = '' then begin
    MsgBox('Pilih No. SPK terlebih dahulu.');
    cxlNoSPK.SetFocus;
  end
  //else if cxsTotalQty.Value = 0 then begin
  //  MsgBox('Detail Transaksi masih kosong.');
  //  nxGrd.SelectCell(0,0);
  //  nxGrd.SetFocus;
  //end
  else begin

    // cek apakah qty yang dimasukkan melebihi qty transaksi
    {
    q := OpenRS('SELECT qty FROM tbl_trsspkassembly_det WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = %s',
      [cxlNoSPK.Text, nxGrd.Cell[CKD_BRG,0].AsString]);
    if CompareValue(nxGrd.Cell[CQTY,0].AsFloat, q.FieldByName('qty').AsFloat) = 1 then begin
      MsgBox('Qty penerimaan SPK melebihi Qty yang di transaksikan.');

      Abort;
    end;
    q.Close;
    }

    try

      sNoTrs := GetLastFak('brg_in');

      dm.zConn.StartTransaction;

      //in_head := OpenTbl('tbl_trsmasuk_head');
      in_head := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoTrs]);
      //in_det := OpenTbl('tbl_trsmasuk_det');
      in_det := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoTrs]);
      //barang := OpenTbl('tbl_barang');
      //barang := OpenRS('SELECT ')
      //barang_det := OpenTbl('tbl_barang_det');
      //hist := OpenTbl('tbl_history');
      hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[1,i].AsString = '' then
          Continue;

        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        in_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        in_det.FieldByName('no_so').AsString := nxGrd.Cell[CNO_SO,i].AsString;
        in_det.FieldByName('no_spk').AsString := cxlNoSPK.Text;
        in_det.FieldByName('keterangan').AsString := nxGrd.Cell[CKET,i].AsString;
        in_det.Post;

        // update stok
        barang := OpenRS('SELECT kode, stok FROM tbl_barang WHERE kode = %s',
          [nxGrd.Cell[CKD_BRG,i].AsString]);
        if barang.Locate('kode', nxGrd.Cell[CKD_BRG,i].AsInteger,[]) then begin
          barang.Edit;
          barang.FieldByName('stok').AsFloat :=
            barang.FieldByName('stok').AsFloat + nxGrd.Cell[CQTY,i].AsFloat;
          barang.Post;
        end;
        barang.Close;

        // update detail barang
        barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s',
          [nxGrd.Cell[CKD_BRG,i].AsString]);
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsInteger, cxCmbGdg.Text]),[]) then
          barang_det.Edit
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := nxGrd2.Cell[CKD_BRG,i].AsString;
          barang_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
        end;

        barang_det.FieldByName('stok').AsFloat :=
          barang_det.FieldByName('stok').AsFloat + nxGrd.Cell[CQTY,i].AsFloat;
        barang_det.Post;
        barang_det.Close;

        hist.Insert;
        hist.FieldByName('no_bukti').AsString := sNoTrs;
        hist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        hist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        hist.FieldByName('tipe').AsString := 'IN_';
        hist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        hist.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        hist.FieldByName('gudang').AsString := cxCmbGdg.Text;
        hist.FieldByName('referensi').AsString := '';
        hist.FieldByName('keterangan').AsString := nxGrd.Cell[CKET,i].AsString;
        hist.FieldByName('user').AsString := Aplikasi.NamaUser;
        hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        hist.FieldByName('no_so').AsString := nxGrd.Cell[CNO_SO,i].AsString;
        hist.FieldByName('no_spk').AsString := cxlNoSPK.Text;
        hist.FieldByName('no_spmb').AsString := '';
        hist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        hist.Post;
      end;

      // update flag f_receipt di table trsspkassembly_head

      //dm.zConn.ExecuteDirect('UPDATE tbl_trsspkassembly_head ' +
      //  'SET f_receipt = 1 WHERE no_bukti = ''' + cxlNoSPK.Text + '''');

      q := OpenRS('SELECT b.no_bukti, b.kode_brg, b.qty, SUM(a.qty) qty_masuk ' +
        'FROM tbl_trsmasuk_det a, tbl_trsspkassembly_det b ' +
        'WHERE a.no_spk = ''%s'' ' +
        'AND a.kode_brg = %s ' +
        'AND a.no_spk = b.no_bukti ' +
        'AND a.kode_brg = b.kode_brg ' +
        'AND b.jenis = ''IN'' ' +
        'GROUP BY b.no_bukti, b.kode_brg, b.qty ',
        [
          cxlNoSPK.Text,
          nxGrd.Cell[CKD_BRG,0].AsString
        ]);
      if CompareValue(q.FieldByName('qty').AsFloat, q.FieldByName('qty_masuk').AsFloat) = 0 then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_trsspkassembly_head ' +
          'SET f_receipt = 1 WHERE no_bukti = ''' + cxlNoSPK.Text + '''');
      end;
      q.Close;

      in_head.Close;
      in_det.Close;
      hist.Close;

      if Self.Jenis <> 'edit' then
        UpdateFaktur(Copy(sNoTrs,1,7));

      dm.zConn.Commit;
      Self.Jenis := '';

      MsgBox('Transaksi Penerimaan SPK Assembly sudah disimpan dengan nomer: ' + sNoTrs);
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

procedure TFrmTrsSPKAssemblyMsk.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
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

procedure TFrmTrsSPKAssemblyMsk.btnHapusClick(Sender: TObject);
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

procedure TFrmTrsSPKAssemblyMsk.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TFrmTrsSPKAssemblyMsk.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  //if cxsTotalQty.Value > 0 then
  //  cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TFrmTrsSPKAssemblyMsk.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

function TFrmTrsSPKAssemblyMsk.GetRow(grd: TNextGrid): Integer;
var
  i,j: Integer;
begin
  j := 0;
  for i := 0 to grd.RowCount - 1 do
    if grd.Cell[CKD_BRG,i].AsString <> '' then Inc(j);
  Result := j;
end;

procedure TFrmTrsSPKAssemblyMsk.nxGrd2CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
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
end;

procedure TFrmTrsSPKAssemblyMsk.nxGrd2AfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  i: Integer;
begin
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
end;

procedure TFrmTrsSPKAssemblyMsk.cxlNoSOPropertiesChange(Sender: TObject);
var
  q, qb, qin: TZQuery;
  i, j: integer;
begin
  try

    q := OpenRS('SELECT * FROM tbl_trsspkassembly_head ' +
      'WHERE no_bukti = ''%s''',
      [zqrNoSPK.FieldByName('no_bukti').AsString]);
    cxdTrgSelesai.Date := q.FieldByName('target_selesai').AsDateTime;
    q.Close;

    q := OpenRS('SELECT * FROM tbl_trsspkassembly_det ' +
      'WHERE no_bukti = ''%s''',
      [zqrNoSPK.FieldByName('no_bukti').AsString]);

    if not q.IsEmpty then begin
      i := 0; j := 0;

      nxGrd.ClearRows;
      nxGrd2.ClearRows;

      while not q.Eof do begin

        qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
          [q.FieldByName('kode_brg').AsString]);

        if q.FieldByName('jenis').AsString = 'IN' then begin

          i := nxGrd.AddRow();
          nxGrd.Cell[CKD_BRG,i].AsString := q.FieldByName('kode_brg').AsString;
          nxGrd.Cell[CNM_BRG,i].AsString := qb.FieldByName('deskripsi').AsString;
          nxGrd.Cell[CSAT,i].AsString := q.FieldByName('satuan').AsString;

          qin := OpenRS('SELECT SUM(qty) AS qty FROM tbl_trsmasuk_det WHERE no_spk = ''%s'' ' +
            'AND kode_brg = %s',
            [
              zqrNoSPK.FieldByName('no_bukti').AsString,
              q.FieldByName('kode_brg').AsString
            ]);

          nxGrd.Cell[CQTY,i].AsFloat :=
            q.FieldByName('qty').AsFloat - qin.FieldByName('qty').AsFloat;
          nxGrd.Cell[nxColMasuk.Index,i].AsFloat := qin.FieldByName('qty').AsFloat;
          qin.Close;
          qin := nil;

          nxGrd.Cell[CNO_SO,i].AsString := q.FieldByName('no_so').AsString;
        end
        else if q.FieldByName('jenis').AsString = 'OUT' then begin
          j := nxGrd2.AddRow();
          nxGrd2.Cell[CKD_BRG2,j].AsString := q.FieldByName('kode_brg').AsString;
          nxGrd2.Cell[CNM_BRG2,j].AsString := qb.FieldByName('deskripsi').AsString;
          nxGrd2.Cell[CSAT2,j].AsString := q.FieldByName('satuan').AsString;
          nxGrd2.Cell[CQTY2,j].AsFloat := q.FieldByName('qty').AsFloat;
        end;

        qb.Close;

        q.Next;
      end;

      HitungTotal;
      
    end;
  except
  end;

end;

procedure TFrmTrsSPKAssemblyMsk.FormShow(Sender: TObject);
begin
  inherited;
  if Aplikasi.UserDept = 'WHL' then begin
    cxCmbGdg.Text := 'G02';
    cxtNamaGdg.Text := GetNamaGudang('G02');
  end;
end;

end.
