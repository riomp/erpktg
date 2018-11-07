unit unFrmSPBB;

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
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSPBB = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColDikirim: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKet: TNxTextColumn;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    NxEdit2: TNxEdit;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    nxColSatuan: TNxTextColumn;
    nxColDipesan: TNxNumberColumn;
    cxLabel5: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtDriver: TcxTextEdit;
    zqrSupp: TZReadOnlyQuery;
    dsSupp: TDataSource;
    cxLUSupp: TcxLookupComboBox;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    btnCetakSJ: TButton;
    cxChkSudahSJ: TcxCheckBox;
    cxLabel10: TcxLabel;
    btnCetakSPMB: TButton;
    cxLabel7: TcxLabel;
    NxEdit3: TNxEdit;
    btnCariSupp: TButton;
    cxLabel11: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    btnAmbilKet: TButton;
    cxChkTampilSPMBAll: TcxCheckBox;
    pnlMemo: TPanel;
    btnSimpanKet: TButton;
    btnBatalMemo: TButton;
    cxMemo: TcxMemo;
    btnShowMemo: TButton;
    cxMemo2: TcxMemo;
    zqrNoPO: TZReadOnlyQuery;
    dsNoPO: TDataSource;
    cxlNoPO: TcxLookupComboBox;
    nxColHarga: TNxNumberColumn;
    nxColMataUang: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxlAlmKirim: TcxLookupComboBox;
    zqrAlmKirim: TZReadOnlyQuery;
    dsAlmKirim: TDataSource;
    cxLabel3: TcxLabel;
    cxtNoSJ: TcxTextEdit;
    nxColDiterima: TNxNumberColumn;
    cxLabel4: TcxLabel;
    cxtDivisi: TcxTextEdit;
    btnSPBBOpen: TButton;
    pnlOpenSPBB: TPanel;
    cxTblSPBBOpen: TcxGridDBTableView;
    cxGrdSPBBOpenLevel1: TcxGridLevel;
    cxGrdSPBBOpen: TcxGrid;
    btnClosePnl: TButton;
    zqrSPBBOpen: TZReadOnlyQuery;
    dsSPBBOpen: TDataSource;
    cxTblSPBBOpenno_bukti: TcxGridDBColumn;
    cxTblSPBBOpentanggal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxLUCustPropertiesEditValueChanged(Sender: TObject);
    procedure cxlNoSOPropertiesEditValueChanged(Sender: TObject);
    procedure btnCetakSJClick(Sender: TObject);
    procedure btnCetakSPMBClick(Sender: TObject);
    procedure btnCariSuppClick(Sender: TObject);
    procedure btnHapusSPMBClick(Sender: TObject);
    procedure btnAmbilKetClick(Sender: TObject);
    procedure cxChkTampilSPMBAllClick(Sender: TObject);
    procedure btnSimpanKetClick(Sender: TObject);
    procedure btnBatalMemoClick(Sender: TObject);
    procedure cxMemoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxMemo2Exit(Sender: TObject);
    procedure btnShowMemoClick(Sender: TObject);
    procedure cxlNoPOPropertiesEditValueChanged(Sender: TObject);
    procedure btnClosePnlClick(Sender: TObject);
    procedure btnSPBBOpenClick(Sender: TObject);
    procedure pnlOpenSPBBExit(Sender: TObject);
  private
    mTblTmp: TZTable;
    mUserDept: string;
    bWewenangGantiTanggal: boolean;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure UpdatePOTerbuka(sNoPO: string);
  public
    property UserDept: string read mUserDept write mUserDept;
    procedure AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmSPBB: TFrmSPBB;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmSJ,
  unFrmLapUmum, unFrmEditQtySO, unAplikasi, unFrmCariPO;

const
  CHAPUS : integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNO_SO : Integer = 3;
  CNM_BRG : integer = 4;
  CQTY : integer = 5;
  CSAT : Integer = 6;
  CQTY_SO : Integer = 7;
  CQTY_KIRIM : Integer = 8;
  CQTY_G02 : Integer = 9;
  CKET : Integer = 10;
  CKET_HRG : Integer = 11;

{$R *.dfm}

procedure TFrmSPBB.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmSPBB.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  aplikasi.log_('SPBB');
  
  cxdTglTrs.EditValue := Aplikasi.TanggalServer;

  // lookup items nopol
  q := OpenRS('SELECT DISTINCT nopol FROM tbl_spbb_head ORDER BY nopol');
  while not q.Eof do begin
    cxtNopol.Properties.LookupItems.Add(q.FieldByName('nopol').AsString);
    q.Next;
  end;
  q.Close;

  // lookup items driver
  q := OpenRS('SELECT DISTINCT driver FROM tbl_spbb_head ORDER BY driver');
  while not q.Eof do begin
    cxtDriver.Properties.LookupItems.Add(q.FieldByName('driver').AsString);
    q.Next;
  end;
  q.Close;

  // setting wewenang edit tanggal SPBB
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s'' ' +
    'AND nm_comp = ''EditTglSPBB''',
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

  if aplikasi.GetWewenang('EditSPBB') = '1' then begin
    cxLabel7.Visible := True;
    cxlNoBukti.Visible := True;
    btnEdit2.Visible := True;
  end
  else begin
    cxLabel7.Visible := False;
    cxlNoBukti.Visible := False;
    btnEdit2.Visible := False;
  end;

  cxtNoTrans.Text := GetLastFak('spbb');

  // create temporary table
  try
    dm.zConn.ExecuteDirect('DELETE FROM tmp_spbb');
  finally
    mTblTmp := OpenTbl('tmp_spmb');
  end;

  pnlMemo.Visible := false;
  pnlMemo.Top := 137;
  pnlMemo.Left := 541;

  cxMemo2.Visible := False;
  cxMemo2.Top := 157;

  zqrNoPO.Open;
  zqrNoBukti.Open;
  zqrAlmKirim.Open;
  zqrBrg.Open;
  zqrSupp.Open;
end;

function TFrmSPBB.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmSPBB.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  fs: TfrmCariPO;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qb: TZQuery;
begin
  if cxLUSupp.Text = '' then begin
    MsgBox('Pilih nama supplier.');
    Abort;
  end;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = CKD_BRG) then begin
    fs := TFrmCariPO.Create(self);
    fs.fSPBB := Self;
    fs.KodeSupp := cxLUSupp.EditValue;
    fs.ShowModal;
    if fs.ModalResult = idOk then begin

      q := OpenRS('SELECT * FROM tmp_spbb WHERE no_bukti = ''%s'' ' +
        'AND kode_brg = ''%s''',
        [fs.NoPO, fs.KodeBrg]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang dengan nomer PO tersebut sudah ada.');
        q.Close;
        Abort;
      end;
      q.Close;

      q := OpenRS('SELECT * FROM tbl_po_det WHERE no_bukti = ''%s'' ' +
        ' AND kode_brg = ''%s''',
        [fs.NoPO, fs.KodeBrg]);
      if not q.IsEmpty then begin

        qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
          [q.FIeldByName('kode_brg').AsString]);
        nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
        nxGrd.Cell[CNM_BRG,ARow].AsString := qb.FieldByName('deskripsi').AsString;
        nxGrd.Cell[CSAT,ARow].AsString := qb.FieldByName('satuan').AsString;
        qb.Close;
        nxGrd.Cell[CQTY_SO,ARow].AsString := q.FieldByName('qty').AsString;

        //mTblTmp.Insert;
        //mTblTmp.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,ARow].AsString;
        //mTblTmp.Post;

        q.Next;
      end;
      fs.Release;
    end;
  end;
end;

procedure TFrmSPBB.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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
  else if ACol = nxColDikirim.Index then begin

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString) = '' then begin
      nxGrd.Cell[nxColDikirim.Index,ARow].AsInteger := 0;
      nxGrd.SelectCell(nxColKodeBrg.Index,ARow);
    end
    else begin

      //bisa terima lbh dari 
      //if nxGrd.Cell[nxColDikirim.Index,ARow].AsFloat > nxGrd.Cell[nxColDipesan.Index,ARow].AsFloat then
      //  nxGrd.Cell[nxColDikirim.Index,ARow].AsFloat := nxGrd.Cell[nxColDipesan.Index,ARow].AsFloat;

      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(nxColDikirim.Index,ARow)
      else begin
        
      end;

    end;

  end;
end;

procedure TFrmSPBB.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColDikirim.Index,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;

end;

procedure TFrmSPBB.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  cxsTotalQty.Value := 0;
  cxtNoTrans.Text := GetLastFak('spbb');

  cxLUSupp.EditValue := '';
  cxChkSudahSJ.Checked := False;
  zqrNoSO.Close;
  zqrNoSO.ParamByName('kode_customer').AsString := '';
  zqrNoSO.Open;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxLUSupp.Properties.ReadOnly := False;
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmSPBB.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoTrans.Text := GetLastFak('spbb');
  cxlNoBukti.Text := '';
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  //dm.zConn.ExecuteDirect('DELETE FROM tmp_spmb');
end;

procedure TFrmSPBB.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist,
  sj_head, sj_det: TZTable;
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
  else if Trim(cxtNopol.Text) = '' then begin
    MsgBox('No. Polisi harus diisi.');
    cxtNopol.SetFocus;
  end
  else if Trim(cxtDriver.Text) = '' then begin
    MsgBox('Driver harus diisi.');
    cxtDriver.SetFocus;
  end
  else begin

    // cek apakah SPMB sudah dibuatkan surat jalan
    if self.Jenis = 'edit' then begin
      q := OpenRS('SELECT * FROM tbl_pb_head WHERE no_spbb = ''%s''',
        [cxtNoTrans.Text]);
      if not q.IsEmpty then begin
        MsgBox('SPBB ini sudah dibuatkan penerimaan barang.');
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

    // cek apakah ada qty pengiriman yang kosong 
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '' then begin
        if nxGrd.Cell[nxColDikirim.Index,i].AsFloat = 0 then begin
          MsgBox('Masih ada Qty SPBB yang kosong.');
          Abort;
        end;
      end;
    end;

    // cek qty spbb vs qty po
    {
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '' then begin
        if nxGrd.Cell[nxColDipesan.Index,i].AsFloat < nxGrd.Cell[nxColDikirim.Index,i].AsFloat then begin
          MsgBox('Ada jumlah pesanan lebih kecil dari Jumlah pengiriman.');
          Abort;
        end;
      end;
    end;
    }

    try

      if Self.Jenis = 'edit' then
        sNoTrs := cxtNoTrans.Text
      else begin
        sNoTrs := GetLastFak('spbb');
        UpdateFaktur(Copy(sNoTrs,1,9));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_spbb_head');
      in_det := OpenTbl('tbl_spbb_det');

      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('no_po').AsString := cxlNoPO.Text;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
      in_head.FieldByName('driver').AsString := Trim(cxtDriver.Text);
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('keterangan').AsString := Trim(cxtKeterangan.Text);
      in_head.FieldByName('kode_supp').AsString := Trim(cxLUSUpp.EditValue);
      in_head.FieldByName('no_sj').AsString := cxtNoSJ.Text;
      in_head.Post;

      // simpan in_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then
          Continue;
        in_det.Insert;
        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('no_po').AsString := cxlNoPO.Text;
        in_det.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
        in_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
        in_det.FieldByName('qty_po').AsFloat := nxGrd.Cell[nxColDipesan.Index,i].AsFloat;
        in_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColDikirim.Index,i].AsFloat;
        in_det.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
        in_det.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index,i].AsString;
        in_det.FieldByName('mata_uang').AsString := nxGrd.Cell[nxColMataUang.Index,i].AsString;
        in_det.Post;

        dm.zConn.ExecuteDirect('UPDATE tbl_barang SET price = ' +
          StringReplace(nxGrd.Cell[nxColHarga.Index,i].AsString,',','.',[rfReplaceAll]) +
          ',price_date='''+ FormatDateTime('yyyy-mm-dd',cxdTglTrs.Date) +''' ' +
          'WHERE kode = ''' + nxGrd.Cell[nxColKodeBrg.Index,i].AsString + '''');

      end;


      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;
      Self.Jenis := '';

      if (Sender as TButton).Name <> 'btnCetakSJ' then begin
        MsgBox('Transaksi SPBB masuk sudah disimpan dengan nomer: ' + sNoTrs);
        cxtNoTrans.Text := sNoTrs;
      end;

      zqrNoBukti.Close;
      zqrNoBukti.Open;
      btnBatalClick(nil);

      //if (Sender as TButton).Name <> 'btnCetakSJ' then begin
      //  btnBatalClick(nil);
      //end;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;
end;

procedure TFrmSPBB.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
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
          dm.zConn.ExecuteDirect('DELETE FROM tmp_spmb WHERE kode_brg = ''' +
            nxGrd.Cell[CKD_BRG,ARow].AsString + ''' AND no_bukti = ''' +
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
        f.ShowModal;

        try
          for i := 0 to nxGrd.RowCount - 1 do begin
            q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = ''%s''',
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

procedure TFrmSPBB.btnHapusClick(Sender: TObject);
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

procedure TFrmSPBB.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  {
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
  }
end;

procedure TFrmSPBB.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  //if aplikasi.UbahTglTrs = False then
  //  if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
  //    cxdTglTrs.Date := Aplikasi.TanggalServer;
  //if cxdTglTrs.Date > aplikasi.TanggalServer then
  //  cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmSPBB.btnEdit2Click(Sender: TObject);
var
  q, q_poh, qBrg, qsj, qb, qso_det: TZQuery;
  i: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Properties.ReadOnly := False;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;
  cxdTglTrs.PostEditValue;
  cxdTglTrs.Properties.ReadOnly := bWewenangGantiTanggal;

  q := OpenRS('SELECT * FROM v_spbb_head WHERE no_bukti = ''%s''',
    [cxlNoBukti.EditValue]);

  q_poh := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [q.FieldByName('no_po').AsString]);

  cxtNoTrans.Text := cxlNoBukti.Text;
  //cxlNoPO.Text := q.FieldByName('no_po').AsString;
  cxlNoPO.EditValue := q.FieldByName('no_po').AsString;

  if q.FieldByName('f_completed').AsInteger = 1 then begin
    cxChkSudahSJ.Checked := True;
    cxLUSUpp.Properties.ReadOnly := True;
    cxlNoPO.Properties.ReadOnly := True;
  end;

  // ambil nomer surat jalan
  //qsj := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
  //  [cxtNoTrans.Text]);
  //if not qsj.IsEmpty then begin
  //  cxtNoSJ.Text := qsj.FieldByName('no_bukti').AsString;
  //end;
  //qsj.Close;

  cxLUSupp.EditValue := q.FieldByName('kode_supp').AsString;
  cxlAlmKirim.EditValue := q_poh.FieldByName('kode_alamat_kirim').AsString;
  cxtNopol.Text := q.FieldByName('nopol').AsString;
  cxtDriver.Text := q.FieldByName('driver').AsString;
  cxtKeterangan.Text := q.FieldByName('keterangan').AsString;
  cxMemo2.Lines.Text := q.FieldByName('keterangan').AsString;
  cxtNoSJ.Text := q.FieldByName('no_sj').AsString;

  q_poh.Close;
  q.Close;

  q := OpenRS('SELECT * FROM v_spbb_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);

  if q.RecordCount > 0 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColDipesan.Index,i].AsFloat := q.fieldByName('qty_po').AsFloat;
    nxGrd.Cell[nxColDikirim.Index,i].AsFloat := q.fieldByName('qty').AsFloat;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.fieldByName('harga').AsFloat;
    nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;

    Inc(i);
    q.Next;
  end;
  q.Close;

  HitungTotal;
  self.Jenis := 'edit';
  nxGrd.AddRow();
  
end;

procedure TFrmSPBB.AddRow(sNoSO, sKodeBrg: string; qty_so, qty_g02: real);
var
  f: TFrmCari;
  fs: TfrmCariPO;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb: TZQuery;
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
        'WHERE no_so = ''%s'' AND kode_brg = ''%s''',
        [sNoSO, q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[CQTY_KIRIM,ARow].AsFloat := qb.FieldByName('qty_kirim').AsFloat;
      nxGrd.Cell[CQTY_KIRIM,ARow].Color := clYellow;
      qb.Close;

      nxGrd.Cell[CQTY,ARow].AsFloat := qty_g02;
      nxGrd.Cell[CQTY,ARow].Color := clSkyBlue;
      nxGrd.Cell[CQTY_SO,ARow].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[CQTY_SO,ARow].Color := clMoneyGreen;
      nxGrd.Cell[CQTY_G02,ARow].AsFloat := qty_g02;
      nxGrd.Cell[CQTY_G02,ARow].Color := clAqua;

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

procedure TFrmSPBB.cxLUCustPropertiesEditValueChanged(Sender: TObject);
begin
  {
  try
    zqrNoSO.Close;
    zqrNoSO.ParamByName('kode_customer').AsString :=
      zqrCust.FieldByName('kode').AsString;
    zqrNoSO.Open;
  except
  end;
  }
end;

procedure TFrmSPBB.cxlNoSOPropertiesEditValueChanged(Sender: TObject);
var
  q, qsj: TZQuery;
  i: integer;
begin
  {
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
  }
end;

procedure TFrmSPBB.btnCetakSJClick(Sender: TObject);
var
  sj_det, sj_head: TZTable;
  sNoPB: string;
  q, qso, qcek, qSO_V_SJ, q_sh, q_sd, q_sa: TZQuery;
  hist, brg, brg_det: TZQuery;
  f: TFrmSJ;
  fLap : TFrmLapUmum;
  i: Integer;
  sAkhir, hpp_akhir, HPP: real;
begin
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else if Trim(cxtNopol.Text) = '' then begin
    MsgBox('No. Polisi harus diisi.');
    cxtNopol.SetFocus;
  end
  else if Trim(cxtDriver.Text) = '' then begin
    MsgBox('Driver harus diisi.');
    cxtDriver.SetFocus;
  end
  else begin

    // cek apakah spbb sudah disimpan
    q := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);
    if q.IsEmpty then begin
      MsgBox('SPBB ini belum disimpan.');
      q.Close;
      Abort;
    end;
    q.Close;

    // konfirmasi cetak surat jalan
    //i := QBox(Self,'Cetak Surat Jalan ?' + Chr(10) + Chr(13) +
    //  'Pastikan SPMB sudah diserahkan ke WHL.','Cetak SJ');
    //if i = IDNO then begin
    //  Abort;
    //end;

    self.Jenis := 'edit';
    //btnSimpanClick(btnCetakSJ);

    // cek apakah spmb sudah di sjkan
    q := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);

    if q.FieldByName('no_penerimaan').IsNull then begin

      sNoPB := GetLastFak('penerimaan');
      UpdateFaktur(Copy(sNoPB,1,7));

      try
        dm.zConn.StartTransaction;

        q_sh := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''',
          [cxtNoTrans.Text]);
        if not q_sh.IsEmpty then begin
          q_sh.Edit;
          q_sh.FieldByName('no_penerimaan').AsString := sNoPB;
          q_sh.Post;

          q_sd := OpenRS('SELECT * FROM tbl_spbb_det WHERE no_bukti = ''%s''',
            [cxtNoTrans.Text]);
          if not q_sd.IsEmpty then begin

            // update qty penerimaan
            for i := 0 to nxGrd.RowCount - 1 do begin
              if nxGrd.Cell[nxColKodeBrg.Index,i].AsString = '' then Continue;
              if q_sd.Locate('kode_brg', nxGrd.Cell[nxColKodeBrg.Index,i].AsString,[]) then begin
                q_sd.Edit;
                q_sd.FieldByName('qty').AsFloat := nxGrd.Cell[nxColDikirim.Index,i].AsFloat;
                q_sd.Post;
              end;
            end;
            q_sd.Close;
            q_sd := OpenRS('SELECT * FROM tbl_spbb_det WHERE no_bukti = ''%s''',[cxtNoTrans.Text]);

            while not q_sd.Eof do begin
              q_sd.Edit;
              q_sd.FieldByName('no_penerimaan').AsString := sNoPB;
              q_sd.FieldByName('f_posted').AsInteger := 1;
              q_sd.Post;

              q_sa := OpenRS('SELECT sf_get_stokakhir(''%s'') sa',[q_sd.FieldByName('kode_brg').AsString]);
              sAkhir := q_sa.FieldByName('sa').AsFloat;
              q_sa.Close;

              q_sa := OpenRS('SELECT sf_get_hppakhir(''%s'') hpp',[q_sd.FieldByName('kode_brg').AsString]);
              hpp_akhir := q_sa.FieldByName('hpp').AsFloat;
              q_sa.Close;

              // hitung hpp
              HPP := ((hpp_akhir * sAkhir) + (q_sd.FieldByName('qty').AsFloat * q_sd.FieldByName('harga').AsFloat)) /
                (sAkhir + q_sd.FieldByName('qty').AsFloat);

              hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoPB]);
              with hist do begin
                Insert;
                FieldByName('no_bukti').AsString := sNoPB;
                FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                FieldByName('jam').AsDateTime := aplikasi.ServerTime;
                FieldByName('kode_brg').AsString := q_sd.FieldByName('kode_brg').AsString;
                FieldByName('tipe').AsString := 'IN_';
                FieldByName('qty').AsFloat := q_sd.FieldByName('qty').AsFloat;
                FieldByName('satuan').AsString := q_sd.FieldByName('satuan').AsString;
                FieldByName('gudang').AsString := 'G01';
                FieldByName('keterangan').AsString := q_sd.FieldByName('keterangan').AsString;
                FieldByName('user').AsString := Aplikasi.NamaUser;
                FieldByName('user_dept').AsString := Aplikasi.UserDept;
                FieldByName('no_po').AsString := q_sd.FieldByName('no_po').AsString;
                FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
                FieldByName('hpp').AsFloat := HPP;
                Post;
              end;
              hist.Close;

              brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
                [q_sd.FieldByName('kode_brg').AsString]);
              with brg do begin
                Edit;
                FieldByName('stok').AsFloat :=
                  FieldByName('stok').AsFloat + q_sd.FieldByName('qty').AsFloat;
                FieldByName('hpp').AsFloat := HPP;
                Post;
              end;
              brg.Close;

              brg_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G01''',
                [q_sd.FieldByName('kode_brg').AsString]);
              with brg_det do begin
                Edit;
                FieldByName('stok').AsFloat :=
                  FieldByName('stok').AsFloat + q_sd.FieldByName('qty').AsFloat;
                Post;
              end;
              brg_det.Close;

              q_sd.Next;
            end;
          end;
        end;

        q_sh.Close;
        q_sh.Close;

        dm.zConn.Commit;

        MsgBox('Penerimaan barang sudah disimpan dengan nomor: ' +
          sNoPB);

        UpdatePOTerbuka(cxlNoPO.Text);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end
    else begin
      MsgBox('SPBB dengan No. : ' + cxtNoTrans.Text + ' sudah di posting.');
    end;
    q.Close;
  end;
end;

procedure TFrmSPBB.btnCetakSPMBClick(Sender: TObject);
var
  q: TZQuery;
  f: TfrmLapUmum;
begin

  q := OpenRS('SELECT * FROM v_spbb_head ' +
    'WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if not q.IsEmpty then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrSPBB.Close;
      zqrSPBB.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
      zqrSPBB.Open;
      rptSPBB.ShowReport(True);
      Release;
    end;
  end
  else begin
    MsgBox('SPBB ini belum disimpan.');
  end;
  q.Close;

end;

procedure TFrmSPBB.UpdatePOTerbuka(sNoPO: string);
var
  q, qSO_V_SJ: TZQuery;
  qso, qsj: TZQuery;
  qty_po, qty_pb: Extended;
begin

  try
    dm.zConn.StartTransaction;
    qso := OpenRS('SELECT IFNULL(SUM(qty),0) AS qty_po FROM tbl_po_det WHERE no_bukti = ''%s''',[sNoPO]);
    qsj := OpenRS('SELECT IFNULL(SUM(qty),0) AS qty_pb FROM tbl_spbb_det ' +
      'WHERE no_po = ''%s'' AND no_penerimaan IS NOT NULL',[sNoPO]);

    if qso.FieldByName('qty_po').AsFloat > 0 then begin
      qty_po := qso.FieldByName('qty_po').AsFloat;
      qty_pb := qsj.FieldByName('qty_pb').AsFloat;

      // jika po sama dengan pb
      if CompareValue(qty_po, qty_pb) = 0 then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_completed = 1 ' +
            'WHERE no_bukti = ''' + sNoPO + '''');
      end;
      // jika sj > so
      if CompareValue(qty_po, qty_pb) = -1 then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_completed = 1 ' +
            'WHERE no_bukti = ''' + sNoPO + '''');
      end;
    end;
    qso.Close;
    qsj.Close;

    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TFrmSPBB.btnCariSuppClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'supplier';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxLUSupp.EditValue := fKode.AsString;
  end;
  f.Release;
  cxLUSupp.SetFocus;
end;

procedure TFrmSPBB.btnHapusSPMBClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
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
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.Commit;
        MsgBox('SPMB berhasil dihapus.');
        ClearAll;
        btnBatalClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;

end;

procedure TFrmSPBB.btnAmbilKetClick(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  {
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
  }
end;

procedure TFrmSPBB.cxChkTampilSPMBAllClick(Sender: TObject);
begin
  zqrNoBukti.Close;
  if cxChkTampilSPMBAll.Checked then
    zqrNoBukti.SQL.Text := 'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM tbl_spbb_head a ' +
      'LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode ' +
      'ORDER BY tanggal DESC'
  else
    zqrNoBukti.SQL.Text := 'SELECT a.no_bukti, a.tanggal, a.user, a.user_dept, b.nama FROM tbl_spbb_head a ' +
      'LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode ' +
      'WHERE no_penerimaan IS NULL ' +
      'ORDER BY tanggal DESC';
  zqrNoBukti.Open;
end;

procedure TFrmSPBB.btnSimpanKetClick(Sender: TObject);
begin
  if nxGrd.Cell[CKD_BRG,nxGrd.SelectedRow].AsString <> '' then
    nxGrd.Cell[nxColKet.Index,nxGrd.SelectedRow].AsString :=
      cxMemo.Lines.Text;
  cxMemo.Lines.Text := '';
  pnlMemo.Visible := False;
end;

procedure TFrmSPBB.btnBatalMemoClick(Sender: TObject);
begin
  pnlMemo.Visible := False;
end;

procedure TFrmSPBB.cxMemoExit(Sender: TObject);
begin
  inherited;
  btnSimpanKetClick(nil);
end;

procedure TFrmSPBB.Button1Click(Sender: TObject);
begin
  inherited;
  if cxdTglTrs.Properties.ReadOnly then
    MsgBox('readonly')
  else
    MsgBox('not read only');
end;

procedure TFrmSPBB.cxMemo2Exit(Sender: TObject);
begin
  cxtKeterangan.Text := cxMemo2.Lines.Text;
  cxMemo2.Visible := False;

end;

procedure TFrmSPBB.btnShowMemoClick(Sender: TObject);
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

procedure TfrmSPBB.cxlNoPOPropertiesEditValueChanged(Sender: TObject);
var
  q, qcek, qpb: TZQuery;
  i: integer;
begin
  inherited;
  cxLUSupp.Text := zqrNoPO.FieldByName('nama_supplier').AsString;
  cxtNopol.SetFocus;

  { 22-01-2016
  // cek apakah PO sudah dibuatkan SPBB dan belum di posting
  // jika belum maka pembuatan SPBB baru tidak diperbolehkan
  qCek := OpenRS('SELECT * FROM tbl_spbb_det WHERE no_po = ''%s'' AND no_penerimaan IS NULL',
    [zqrNoPO.FieldByName('no_bukti').AsString]);
  if not qCek.IsEmpty then begin
    MsgBox('No. PO ini sudah dibuatkan SPBB dan belum di posting.');
    qCek.Close;
    Abort;
  end;
  qCek.Close;
  }

  q := OpenRS('SELECT * FROM v_po_head WHERE no_bukti = ''%s''',
    [zqrNoPO.FieldByName('no_bukti').AsString]);
  cxlAlmKirim.EditValue := q.FieldByName('kode_alamat_kirim').AsString;
  cxtDivisi.Text := q.FieldByName('divisi').AsString;
  q.Close;

  q := OpenRS('SELECT * FROM v_po_det WHERE no_bukti = ''%s''',
    [zqrNoPO.FieldByName('no_bukti').AsString]);
  if not q.IsEmpty then begin
    nxGrd.ClearRows;
    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColDipesan.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
      nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;

      qpb := OpenRS('SELECT SUM(qty) AS qty FROM tbl_spbb_det WHERE no_po = ''%s'' ' +
        'AND kode_brg = ''%s'' AND no_penerimaan IS NOT NULL',
        [zqrNoPO.FieldByName('no_bukti').AsString, q.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[nxColDiterima.Index,i].AsFloat := qpb.FieldByName('qty').AsFloat;
      qpb.Close;

      nxGrd.Cell[nxColKet.Index,i].AsString := q.FieldByName('keterangan').AsString;

      q.Next;
    end;
  end;
  q.Close;
  
end;

procedure TfrmSPBB.btnClosePnlClick(Sender: TObject);
begin
  inherited;
  pnlOpenSPBB.Visible := False;
end;

procedure TfrmSPBB.btnSPBBOpenClick(Sender: TObject);
begin
  inherited;
  pnlOpenSPBB.Visible := True;
  zqrSPBBOpen.Close;
  zqrSPBBOpen.ParamByName('no_po').AsString := cxlNoPO.Text;
  zqrSPBBOpen.Open;
end;

procedure TfrmSPBB.pnlOpenSPBBExit(Sender: TObject);
begin
  inherited;
  pnlOpenSPBB.Visible := False;
end;

end.
