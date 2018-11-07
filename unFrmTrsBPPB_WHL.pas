unit unFrmTrsBPPB_WHL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxEdit, StdCtrls, PBNumEdit, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, ZDataset, DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  cxTextEdit, ExtCtrls, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ZAbstractRODataset, cxSpinEdit, cxCheckBox;

type
  TfrmTrsBPPB_WHL = class(TForm)
    pnlAtas: TPanel;
    lblJudul: TLabel;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxtNoSO: TcxTextEdit;
    cxLabel3: TcxLabel;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxCmb: TNxComboBoxColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    nxCmb2: TNxComboBoxColumn;
    NxTextColumn4: TNxTextColumn;
    nxColQtyMutasi: TNxNumberColumn;
    NxMemoColumn1: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    pbNumTot: TPBNumEdit;
    Panel2: TPanel;
    btnSimpan: TButton;
    btnKeluar: TButton;
    btnHpsTrans: TButton;
    btnHapus: TButton;
    NxTextColumn2: TNxButtonColumn;
    NxButtonEdit1: TNxButtonEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    btnTambah: TButton;
    cxsTot: TcxSpinEdit;
    NxTextColumn6: TNxTextColumn;
    cxlNoSO: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    NxImageColumn1: TNxImageColumn;
    cxChkSOMdb: TcxCheckBox;
    NxNumberColumn3: TNxNumberColumn;
    btnCariBrg: TButton;
    nxColChk: TNxCheckBoxColumn;
    btnPilSemua: TButton;
    btnBersih: TButton;
    btnHapusPil: TButton;
    cxLabel7: TcxLabel;
    cxtNoLKM: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure NxEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nxGrdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHpsTransClick(Sender: TObject);
    procedure nxGrdBeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
    procedure NxButtonEdit1ButtonClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure cxChkSOMdbClick(Sender: TObject);
    procedure cxlNoSOPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxlNoSOPropertiesEditValueChanged(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnPilSemuaClick(Sender: TObject);
    procedure btnBersihClick(Sender: TObject);
    procedure btnHapusPilClick(Sender: TObject);
  private
    mUserDept: string;
    mNoSO: string;
    mMutasiCFT: string;
    mJenisMutasi: string;
    procedure HitungTotal;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    property NoSO: string read mNoSO write mNoSO;
    property JenisMutasi: string write mJenisMutasi;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmTrsBPPB_WHL: TfrmTrsBPPB_WHL;

implementation

uses unAplikasi, unDM, unTools, unFrmCari, unFrmUtama; //, UnFrmNoBuktiHapus;

const
  CCHK : Integer = 0;
  CHAPUS : Integer = 1;
  CNO : integer = 2;
  CKD_BRG : integer = 3;
  CNM_BRG : integer = 4;
  CSAT : Integer = 5;
  CGDG : integer = 6;
  CNM_GDG : integer = 7;
  CSTOK : integer = 8;
  CGDG2 : integer = 9;
  CNM_GDG2 : integer = 10;
  CQTY_SO : Integer = 11;
  CQTY : integer = 12;
  CREF : Integer = 13;
  CKET : Integer = 14;

{$R *.dfm}

procedure TfrmTrsBPPB_WHL.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmTrsBPPB_WHL.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_gudang WHERE f_aktif = 1');
  while not q.Eof do begin
    nxCmb.Items.Add(q.FieldByName('kode').AsString);
    nxCmb2.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  cxtNoTrans.Text := GetLastFak('mutasi');
  cxdTglTrs.Date := aplikasi.TanggalServer;

  if aplikasi.UserDept = 'CFT' then begin
    // cek apakah user yang diberikan hak untuk mutasi
    q := OpenRS('SELECT * FROM tbl_oto_mutasi WHERE user = ''%s'' ' +
      'AND f_selesai = 0 AND tanggal = ''%s''',
      [Aplikasi.NamaUser, Aplikasi.TanggalString]);

    if not q.IsEmpty then begin
      if zqrNoSO.Active then zqrNoSO.Close;
      zqrNoSO.SQL.Text := Format(
        'SELECT no_bukti, tanggal, nama FROM v_so_head WHERE f_completed = 0 AND no_bukti IN ' +
          '(SELECT no_so FROM tbl_oto_mutasi WHERE user = ''%s'' AND tanggal = ''%s'' AND f_selesai = 0)',
        [aplikasi.NamaUser, Aplikasi.TanggalString]
      );
      zqrNoSO.Open;
      mMutasiCFT := '1';
      cxChkSOMdb.Visible := false;
      cxdTglTrs.Properties.ReadOnly := True;
    end
    else begin
      MsgBox('Pemberian wewenang mutasi tidak ditemukan.');
      //(Self.Parent as TfrmUtama).mnPPIC.Visible := False;
      frmUtama.mnPPIC.Visible := False;
      Close;
    end;
    q.Close;
  end;

  cxLabel7.Visible := False;
  cxtNoLKM.Visible := False;

  zqrNoSO.Open;
  zqrBrg.Open;
  
end;

procedure TfrmTrsBPPB_WHL.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
begin
  // kolom kode barang
  if ACol = 1 then begin
    Value := '';
  end

  // kolom quantity
  else if ACol = CQTY then begin
    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin

      q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' ' +
        'AND kode_gdg = ''%s''',
        [nxGrd.Cell[CKD_BRG,ARow].AsString,
         nxGrd.Cell[CGDG,ARow].AsString]);

      if q.IsEmpty then begin
        MsgBox('Stok untuk barang ini belum ada.');

      end
      else begin

        if aplikasi.NamaUser <> 'ADMIN' then begin
          if nxGrd.Cell[CQTY,ARow].AsInteger > q.FieldByName('stok').AsInteger then begin
            MsgBox('Stok tidak mencukupi untuk transfer.');
            nxGrd.Cell[CQTY,ARow].AsInteger := 0;
            Abort;
          end;
        end;

        HitungTotal;

        if ARow < nxGrd.RowCount - 1 then
          nxGrd.SelectCell(CQTY,ARow)
        else begin
          if cxChkSOMdb.Checked then begin
            i := nxGrd.AddRow();
            nxGrd.SelectCell(CKD_BRG,i);
            nxGrd.ScrollToRow(i);
          end;
        end;
      end;
    end;

  end
  else if ACol = CGDG then begin
    nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang(nxGrd.Cell[CGDG,ARow].AsString);

    q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' ' +
      'AND kode_gdg = ''%s''',
      [nxGrd.Cell[CKD_BRG,ARow].AsString, nxGrd.Cell[CGDG,ARow].AsString]);
    nxGrd.Cell[CSTOK,ARow].AsFloat := q.FieldByName('stok').AsFloat;
    q.Close;
  end
  else if ACol = CGDG2 then begin
    if nxGrd.Cell[CGDG2,ARow].AsString = nxGrd.Cell[CGDG,ARow].AsString then begin
      MsgBox('Gudang tujuan tidak boleh sama dengan gudang asal.');
      nxGrd.Cell[CGDG2,ARow].AsString := '';
      Abort;
    end;
    
    nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang(nxGrd.Cell[CGDG2,ARow].AsString);
  end;

  end;

procedure TfrmTrsBPPB_WHL.HitungTotal;
var
  i: integer;
  tmpQty: real;
begin
  tmpQty := 0;
  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[CQTY,i].AsFloat;
  end;
  cxsTot.EditValue := tmpQty;
end;

procedure TfrmTrsBPPB_WHL.NxEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
  gudang: string;
begin
  if Key = VK_F2 then begin
    ACol := nxGrd.SelectedColumn;
    ARow := nxGrd.SelectedRow;
    if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') And  (ACol = 1) then begin
      f := TFrmCari.Create(self);
      f.Jenis := 'barang';
      f.FilterText := 'deskripsi,"' + NxEdit1.Text + '"'; 
      f.ShowModal;
      if f.ModalResult = idOk then begin
        s := f.Result;
        fKode := s.Objects[0] as TField;
        if not CekKodeBrg(fKode.AsString, ARow) then
          MsgBox('Kode Barang sudah ada.')
        else begin
          q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
            fKode.AsString + '''');

          gudang := q.FieldByName('gudang').AsString;

          nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
          nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('nama').AsString;
          nxGrd.Cell[CGDG,ARow].AsString := gudang;
          nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang(gudang);
          nxGrd.Cell[CSTOK,ARow].AsInteger := q.fieldByName(gudang).AsInteger;
          nxGrd.Cell[CGDG2,ARow].AsString := 'G01';
          nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G02');

          nxGrd.SelectCell(CQTY,ARow);
          q.Close;
        end;
      end;
    end;
  end;
end;

function TfrmTrsBPPB_WHL.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TfrmTrsBPPB_WHL.nxGrdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  gudang: string;
begin
  if Key = VK_F2 then begin
    ACol := nxGrd.SelectedColumn;
    ARow := nxGrd.SelectedRow;
    if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') And  (ACol = 1) then begin
      f := TFrmCari.Create(self);
      f.jenis := 'barang';
      //f.FilterText := 'deskripsi,"' + NxEdit1.Text + '"';
      //NxEdit1.Text := '';
      //nxGrd.SelectCell(CKD_BRG, ARow);
      f.ShowModal;
      if f.ModalResult = idOk then begin
        s := f.Result;
        fKode := s.Objects[0] as TField;
        if not CekKodeBrg(fKode.AsString, ARow) then
          MsgBox('Kode Barang sudah ada.')
        else begin
          q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
            fKode.AsString + '''');

          nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
          nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;

          if mUserDept = 'WHL' then begin
            nxGrd.Cell[CGDG,ARow].AsString := 'G02';
            nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G02');
            nxGrd.Cell[CGDG2,ARow].AsString := 'G01';
            nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G01');
            nxGrd.SelectCell(CQTY,ARow);
          end
          else if mUserDept = 'PPIC' then begin
            nxGrd.Cell[CGDG,ARow].AsString := 'G01';
            nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G01');
            nxGrd.Cell[CGDG2,ARow].AsString := 'G02';
            nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G02');
            nxGrd.SelectCell(CQTY,ARow);
          end;

          qg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
            'AND kode_gdg = ''%s''',
            [fKode.AsString, nxGrd.Cell[CGDG,ARow].AsString]);
          nxGrd.Cell[CSTOK,ARow].AsFloat := qg.FieldByName('stok').AsFloat;
          q.Close;
        end;
      end;
    end;
  end;
end;

procedure TfrmTrsBPPB_WHL.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  Key: word;
begin
  if ACol = CKD_BRG then begin
    
  end
  else if ACol = CHAPUS then begin
    if nxGrd.SelectedRow > -1 then begin
      if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin
        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxNoUrut.Refresh();
        HitungTotal;
        if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end;
  end;
end;

procedure TfrmTrsBPPB_WHL.NxEdit1DblClick(Sender: TObject);
var
  Key: word;
begin
  Abort;
  Key := VK_F2;
  self.nxGrdKeyDown(self, Key, [ssShift]);
end;

procedure TfrmTrsBPPB_WHL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmTrsBPPB_WHL.btnKeluarClick(Sender: TObject);
begin
  Close;
  Release;
end;

procedure TfrmTrsBPPB_WHL.btnHapusClick(Sender: TObject);
var
  ACol, ARow: integer;
begin
  if nxGrd.SelectedRow > -1 then begin
    ACol := nxGrd.SelectedColumn;
    ARow := nxGrd.SelectedRow;
    if Trim(nxGrd.Cell[CKD_BRG, ARow].AsString) <> '' then begin
      nxGrd.DeleteRow(nxGrd.SelectedRow);
      nxNoUrut.Refresh();
      HitungTotal;
      if nxGrd.RowCount = 0 then nxGrd.AddRow();
    end;
  end;
end;

procedure TfrmTrsBPPB_WHL.btnSimpanClick(Sender: TObject);
var
  //trs_head, trs_det,
  //thist, barang, barang_det, tbl_mo : TZTable;
  trs_head, trs_det,
  thist, barang, barang_det, tbl_mo : TZQuery;
  q: TZQuery;
  i,j,k: integer;
  sno_bukti, sno_mo: String;
  b: boolean;
begin
  if cxsTot.EditValue = 0 then begin
    MsgBox('Detail Transaksi Transfer tidak boleh kosong.');
    nxGrd.SetFocus;
  end
  else begin

    // cek qty so < qty
    //for i := 0 to nxGrd.

    // jika user adalah PPIC maka
    // cek apakah nomer SO kosong
    if mUserDept = 'PPIC' then begin
      if cxChkSOMdb.Checked then begin
        if Trim(cxtNoSO.Text) = '' then begin
          MsgBox('No. SO harus diisi.');
          cxtNoSO.SetFocus;
          Abort;
        end;
      end
      else begin
        if cxlNoSO.EditValue = '' then begin
          MsgBox('No. SO harus diisi.');
          cxlNoSO.SetFocus;
          Abort;
        end;
      end;
    end;

    if mUserDept = 'QAC' then begin
      if (Trim(cxtNoSO.Text) = '') and (Trim(cxlNoSO.Text) = '') then begin
        MsgBox('Silahkan pilih No. SO terlebih dahulu.');
        Abort;
      end;  
    end;

    if aplikasi.NamaUser <> 'ADMIN' then begin
    // cek apakah qty mutasi lebih kecil dari stok barang
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '' then begin
        q := OpenRS('SELECT * FROM ' +
          'tbl_barang_det WHERE kode_brg = %s ' +
          'AND kode_gdg = ''%s''',
          [nxGrd.Cell[nxColKodeBrg.Index,i].AsString, nxGrd.Cell[nxCmb.Index,i].AsString]);
        if q.FieldByName('stok').AsFloat < nxGrd.Cell[nxColQtyMutasi.Index,i].AsFloat then begin
          MsgBox('Ada Qty. Mutasi melebihi stok gudang Asal.');
          nxGrd.SelectCell(nxColQtyMutasi.Index, i);
          nxGrd.SetFocus;
          q.Close;
          Abort;
        end;
        q.Close;
      end;
    end;
    end;

    // cek apakah sebelumnya sudah ada mutasi untuk so dan qty yang sama
    for i := 0 to nxGrd.RowCount - 1 do begin
      q := OpenRS('SELECT * FROM ' +
        'tbl_trsmutasi_det WHERE no_so = ''%s'' AND kode_brg = ''%s''',
        [cxlNoSO.Text, nxGrd.Cell[CKD_BRG,i].AsString]);
      if not q.IsEmpty then begin
        j := QBox(Self, 'No. SO : ' + cxlNoSO.Text + Chr(10) + Chr(13) +
          'Kode Barang : ' + nxGrd.Cell[CKD_BRG,i].AsString + Chr(10) + Chr(13) +
          'Sudah pernah di mutasi dengan nomer : ' + q.FieldByName('no_bukti').AsString + Chr(10) + Chr(13) +
          'Sejumlah : ' + q.FieldByName('qty').AsString + Chr(10) + Chr(13) +
          'Lanjutkan penyimpanan transaksi ?','Warning');
        if j = IDNO then begin
          q.Close;
          Abort;
        end;
      end;
      q.Close;
    end;

    //cek apakah ada referensi yang masih kosong
    {
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[CKD_BRG,i].AsString <> '') and
        (nxGrd.Cell[CREF,i].AsString = '') then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom referensi yang kosong.');
      Abort;
    end;
    }

    // cek apakah ada stok gudang yang kosong
    if aplikasi.NamaUser <> 'ADMIN' then begin
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString <> '' then
          if nxGrd.Cell[CSTOK,i].AsFloat <= 0 then begin
            MsgBox('Masih ada Stok Gudang yang kosong.');
            nxGrd.SetFocus;
            nxGrd.SelectedRow := i;
            Abort;
          end;
      end;
    end;

    // cek apakah ada gudang yang kosong
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[CKD_BRG,i].AsString <> '' then
        if nxGrd.Cell[CGDG,i].AsString = '' then begin
          MsgBox('Masih ada Gudang yang kosong.');
          nxGrd.SelectedRow := i;
          Abort;
        end;
    end;

    // cek apakah ada gudang yang kosong
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[CKD_BRG,i].AsString <> '' then
        if nxGrd.Cell[CGDG2,i].AsString = '' then begin
          MsgBox('Masih ada Gudang yang kosong.');
          nxGrd.SelectedRow := i;
          Abort;
        end;
    end;

    // cek apakah ada gudang yang kosong
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[CKD_BRG,i].AsString <> '' then
        if nxGrd.Cell[CQTY,i].AsString = '' then begin
          MsgBox('Masih ada Qty. Mutasi yang kosong.');
          nxGrd.SelectedRow := i;
          Abort;
        end;
    end;

    if mMutasiCFT <> '' then begin
      i := QBox(Self, 'Simpan mutasi ?' + #10#13 +
        'Pastikan Qty. SO sudah benar karena proses ini tidak bisa diulang.','Cek Qty. SO');
      if i = IDNO then begin
        Abort;
      end;
    end;

    sno_bukti := GetLastFak('mutasi');
    UpdateFaktur(Copy(sno_bukti,1,7));

    try
      dm.zConn.StartTransaction;

      // buka table po_head dan po_det
      //trs_head := OpenTbl('tbl_trsmutasi_head');
      trs_head := OpenRS('SELECT * FROM tbl_trsmutasi_head WHERE no_bukti = ''%s''', [sno_bukti]);

      //trs_det := OpenTbl('tbl_trsmutasi_det');
      trs_det := OpenRS('SELECT * FROM tbl_trsmutasi_det WHERE no_bukti = ''%s''', [sno_bukti]);

      // buka table barang
      //thist := OpenTbl('tbl_history');
      thist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sno_bukti]);

      // table barang
      //barang := OpenTbl('tbl_barang');
      //barang_det := OpenTbl('tbl_barang_det');

      // simpan trs_head
      trs_head.Insert;
      trs_head.FieldByName('no_bukti').AsString := sno_bukti;
      trs_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      trs_head.FieldByName('user').AsString := aplikasi.NamaUser;
      trs_head.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      trs_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      trs_head.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
      trs_head.Post;

      // simpan trs_det
      for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;
        if nxGrd.Cell[CQTY,i].AsFloat = 0 then
          Continue;  
        trs_det.Insert;
        trs_det.FieldByName('no_bukti').AsString := sno_bukti;
        trs_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        trs_det.FieldByName('gudang_asal').AsString := nxGrd.Cell[CGDG,i].AsString;
        trs_det.FieldByName('gudang_tujuan').AsString := nxGrd.Cell[CGDG2,i].AsString;
        trs_det.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        trs_det.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;

        if mUserDept = 'PPIC' then begin
          trs_det.FieldByName('referensi').AsString := cxtNoSO.Text;
          if cxChkSOMdb.Checked then
            trs_det.FieldByName('no_so').AsString := cxtNoSO.Text
          else
            trs_det.FieldByName('no_so').AsString := cxlNoSO.EditValue;
        end
        else
          trs_det.FieldByName('no_so').AsString := cxlNoSO.EditValue;

        trs_det.FieldByName('keterangan').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);

        trs_det.Post;

        // update barang
        barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
          [nxGrd.Cell[CKD_BRG,i].AsString,nxGrd.Cell[CGDG,i].AsString]);
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsString,nxGrd.Cell[CGDG,i].AsString]),[]) then begin
          barang_det.Edit;
          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
        end;

        barang_det.Close;
        barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
          [nxGrd.Cell[CKD_BRG,i].AsString,nxGrd.Cell[CGDG2,i].AsString]);
        if barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsString,nxGrd.Cell[CGDG2,i].AsString]),[]) then begin
          barang_det.Edit;
          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat + nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
        end
        else begin
          barang_det.Insert;
          barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
          barang_det.FieldByName('kode_gdg').AsString := nxGrd.Cell[CGDG2,i].AsString;
          barang_det.FieldByName('stok').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
        end;
        barang_det.Close;
        barang_det.Free;

        // masukkan history
        thist.Insert;
        thist.FieldByName('no_bukti').AsString := sno_bukti;
        thist.FieldByName('tipe').AsString := 'OUT_';
        thist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        thist.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
        thist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        thist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        thist.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
        thist.FieldByName('gudang').AsString := nxGrd.Cell[CGDG,i].AsString;

        if mUserDept = 'PPIC' then begin
          thist.FieldByName('referensi').AsString := cxtNoSO.Text;
          if cxChkSOMdb.Checked then
            thist.FieldByName('no_so').AsString := cxtNoSO.Text
          else
            thist.FieldByName('no_so').AsString := cxlNoSO.EditValue;
        end
        else
          thist.FieldByName('no_so').AsString := cxlNoSO.EditValue;
        
        thist.FieldByName('keterangan').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);
        thist.FieldByName('user').AsString := Aplikasi.NamaUser;
        thist.FieldByName('user_dept').AsString := aplikasi.UserDept;
        thist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        if aplikasi.UserDept = 'QAC' then
          thist.FieldByName('no_lkm').AsString := Trim(cxtNoLKM.Text);
        thist.Post;

        // masukkan history
        thist.Insert;
        thist.FieldByName('no_bukti').AsString := sno_bukti;
        thist.FieldByName('tipe').AsString := 'IN_';
        thist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
        thist.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
        thist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
        thist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
        thist.FieldByName('gudang').AsString := nxGrd.Cell[CGDG2,i].AsString;

        if mUserDept = 'PPIC' then begin
          thist.FieldByName('referensi').AsString := cxtNoSO.Text;
          if cxChkSOMdb.Checked then
            thist.FieldByName('no_so').AsString := cxtNoSO.Text
          else
            thist.FieldByName('no_so').AsString := cxlNoSO.EditValue;
        end
        else
          thist.FieldByName('no_so').AsString := cxlNoSO.EditValue;

        thist.FieldByName('keterangan').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);
        thist.FieldByName('user').AsString := Aplikasi.NamaUser;
        thist.FieldByName('user_dept').AsString := mUserDept;
        thist.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
        if aplikasi.UserDept = 'QAC' then
          thist.FieldByName('no_lkm').AsString := Trim(cxtNoLKM.Text);
        thist.Post;

        // update stok barang
        q := OpenRS('SELECT sf_get_stok(''%s'') AS stok',
          [nxGrd.Cell[CKD_BRG,i].AsString]);
        dm.zConn.ExecuteDirect('UPDATE tbl_barang SET stok = ' +
          q.FieldByName('stok').AsString + ' WHERE kode = ''' +
          nxGrd.Cell[CKD_BRG,i].AsString + '''');
        q.Close;
        // eof update stok barang

        // check and insert into MO
        q := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' ' +
          'AND kode_brg = %s AND (no_mutasi IS NULL or no_mutasi = '''')',
          [cxlNoSO.Text, nxGrd.Cell[CKD_BRG,i].AsString]);
        if not q.IsEmpty then begin

          if q.FieldByName('qty_mo').AsFloat >
            nxGrd.Cell[CQTY,i].AsFloat then begin

            sno_mo := GetLastFakHeader(q.FieldByName('no_mo').AsString);

            //tbl_mo := OpenTbl('tbl_mo');
            tbl_mo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sno_mo]);

            tbl_mo.Insert;

            for k := 0 to q.FieldCount-1 do begin
              tbl_mo.Fields[k].Value := q.Fields[k].Value;
            end;

            //tbl_mo.FieldByName('no_mo').AsString :=
              //GetLastFakHeader(q.FieldByName('no_mo').AsString);
            tbl_mo.FieldByName('no_mo').AsString := sno_mo; 

            tbl_mo.FieldByName('qty_mo').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
            tbl_mo.FieldByName('no_mutasi').AsString := cxtNoTrans.Text;

            q.Edit;
            q.FieldByName('qty_mo').AsFloat :=
              q.FieldByName('qty_mo').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
            q.Post;

            tbl_mo.Post;
            tbl_mo.Close;
            //UpdateFaktur(q.FieldByName('no_mo').AsString);
            UpdateFaktur(sno_mo);
          end
          else begin
            q.Edit;
            q.FieldByName('no_mutasi').AsString := cxtNoTrans.Text;
            q.Post;
          end;
          
        end;
        q.Close;

      end;

      // tutup table
      trs_head.Close;
      trs_det.Close;
      barang_det.Close;

      if mMutasiCFT <> '' then
        dm.zConn.ExecuteDirect(
          Format('UPDATE tbl_oto_mutasi SET f_selesai = 1 ' +
            'WHERE user = ''%s'' AND no_so = ''%s''',
            [
              aplikasi.NamaUser, cxlNoSO.Text
            ]
          )
        );

      // update counter faktur
      //UpdateFaktur(Copy(sno_bukti,1,7));

      dm.zConn.Commit;

      // keterangan
      MsgBox('Transaksi Mutasi sudah disimpan dengan No. Bukti : ' +
        sno_bukti);

      ClearAll;

      if mMutasiCFT <> '' then begin
        // cek apakah masih ada otorisasi mutasi untuk so yang lain
        q := OpenRS('SELECT * FROM tbl_oto_mutasi WHERE user = ''%s'' ' +
          'AND f_selesai = 0 AND tanggal = ''%s''',
          [Aplikasi.NamaUser, Aplikasi.TanggalString]);

        if not q.IsEmpty then begin
          zqrNoSO.Close;
          zqrNoSO.Open;
        end
        else
          Close;
          
        q.Close;
      end;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;
end;

procedure TfrmTrsBPPB_WHL.ClearAll;
var
  i: integer;
begin
  pbNumTot.AsInteger := 0;
  nxGrd.ClearRows;
  nxGrd.AddRow(1);
  cxtNoTrans.Text := GetLastFak('mutasi');
end;

procedure TfrmTrsBPPB_WHL.btnHpsTransClick(Sender: TObject);
var
  q: TZQuery;
  key: char;
  i: integer;
  sTgl, sNoBukti,
  sGudang: string;
begin
  {
  frmNoBuktiHapus := TFrmNoBuktiHapus.Create(self);
  frmNoBuktiHapus.Jenis := 'transfer';
  if frmNoBuktiHapus.ShowModal = mrOk then begin
    sNoBukti := frmNoBuktiHapus.NoBukti;
    i := unTools.QBox(self, 'Hapus Transfer Antar Gudang : ' + sNoBukti + ' ?', 'Hapus');
    if i = IDYES then begin
      try
      dm.zConn.StartTransaction;

      q := OpenRS('SELECT * FROM transfer_head WHERE nobukti = ''' + sNoBukti + '''');
      sTgl := DateToMySQLDate(q.FieldByName('tanggal').AsDateTime);
      q.Close;

      // masukkan ke log
      dm.zConn.ExecuteDirect(Format('INSERT INTO loghapus ' +
        'VALUES(''%s'',''%s'',''%s'',''%s'',''%s'',''%s'')',[
        Aplikasi.TanggalString,
        Aplikasi.JamString,
        sNoBukti,
        sTgl,
        Aplikasi.KodeUser,'TRANSFER'
      ]));

      // update stok barang
      q := OpenRS('SELECT * FROM hststok WHERE ' +
        'nobukti = ''%s'' AND tipe = ''TRANS_IN''', [sNoBukti]);
      while not q.Eof do begin
        sGudang := q.FieldByName('gudang').AsString;
        dm.zConn.ExecuteDirect('UPDATE barang SET ' + sGudang + ' = ' + sGudang +
          ' - ' + IntToStr(q.FieldByName('qty').AsInteger) +
          ' WHERE kode = ''' + q.FieldByName('kode_brg').AsString + '''');
        q.Next;
      end;
      q.Close;

      // update stok barang
      q := OpenRS('SELECT * FROM hststok WHERE ' +
        'nobukti = ''%s'' AND tipe = ''TRANS_OUT''', [sNoBukti]);
      while not q.Eof do begin
        sGudang := q.FieldByName('gudang').AsString;
        dm.zConn.ExecuteDirect('UPDATE barang SET ' + sGudang + ' = ' + sGudang +
          ' + ' + IntToStr(q.FieldByName('qty').AsInteger) +
          ' WHERE kode = ''' + q.FieldByName('kode_brg').AsString + '''');
        q.Next;
      end;
      q.Close;

      dm.zConn.ExecuteDirect(Format('DELETE FROM transfer_head WHERE nobukti = ''%s''',[sNoBukti]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM transfer_det WHERE nobukti = ''%s''',[sNoBukti]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM hststok WHERE nobukti = ''%s''',[sNoBukti]));

      dm.zConn.Commit;

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;

    end;

    // bersihkan textbox dan grid
    ClearAll;

    cxtNoTrans.SetFocus;
  end;
  }
end;

procedure TfrmTrsBPPB_WHL.nxGrdBeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
  if (ACol = CKD_BRG) then begin
    // jika kolom 0 tidak kosong, maka tidak bisa edit
    if (Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) <> '') then
      Accept := False
  end;
end;

procedure TfrmTrsBPPB_WHL.NxButtonEdit1ButtonClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  gudang: string;
begin
  if Length(Trim(NxButtonEdit1.Text)) < 4 then Abort;
  f := TfrmCari.Create(Self);
  f.Jenis := 'barang';
  f.FilterText := 'deskripsi,"' + NxButtonEdit1.Text + '"';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    NxButtonEdit1.Text := '';
    ACol := nxGrd.SelectedColumn;
    ARow := nxGrd.SelectedRow;
    s := f.Result;
    fKode := s.Objects[0] as TField;
    nxGrd.Cell[CKD_BRG,ARow].AsString := fKode.AsString;

    if not CekKodeBrg(fKode.AsString, ARow) then
      MsgBox('Kode Barang sudah ada.')
    else begin
      q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
        fKode.AsString + '''');

      nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
      nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;

      if mUserDept = 'WHL' then begin
        nxGrd.Cell[CGDG,ARow].AsString := 'G02';
        nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G02');
        nxGrd.Cell[CGDG2,ARow].AsString := 'G01';
        nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G01');
        nxGrd.SelectCell(CQTY,ARow);
      end
      else if mUserDept = 'PPIC' then begin
        nxGrd.Cell[CGDG,ARow].AsString := 'G01';
        nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G01');
        nxGrd.Cell[CGDG2,ARow].AsString := 'G02';
        nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G02');
        nxGrd.SelectCell(CQTY,ARow);
      end;

      qg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
        'AND kode_gdg = ''%s''',
        [fKode.AsString, nxGrd.Cell[CGDG,ARow].AsString]);
      nxGrd.Cell[CSTOK,ARow].AsFloat := qg.FieldByName('stok').AsFloat;
      q.Close;
    end;
    Abort;
  end;
end;

procedure TfrmTrsBPPB_WHL.btnTambahClick(Sender: TObject);
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

    {
    if mUserDept = 'PPIC' then begin
      q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
        'AND kode_gdg = ''%s''',
        [sKodeBrg, 'G01']);
      if q.FieldByName('stok').AsFloat = 0 then begin
        MsgBox('Stok barang tidak mencukupi.' + Chr(10) + Chr(13) +
        'Gudang : G01' + Chr(10) + Chr(13) +
        'Stok : 0');
        cxLUBrg.Text := '';
        q.Close;
        Abort;
      end;
      q.Close;
    end;
    }
    {
    if mUserDept = 'QAC' then begin
      q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
        'AND kode_gdg = ''%s''',
        [sKodeBrg, 'G03']);
      if q.FieldByName('stok').AsFloat = 0 then begin
        MsgBox('Stok barang tidak mencukupi.' + Chr(10) + Chr(13) +
        'Gudang : G03' + Chr(10) + Chr(13) +
        'Stok : 0');
        cxLUBrg.Text := '';
        q.Close;
        Abort;
      end;
    end;
    }
    
    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;

    if mUserDept = 'WHL' then begin
      nxGrd.Cell[CGDG,ARow].AsString := 'G02';
      nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G02');
      nxGrd.Cell[CGDG2,ARow].AsString := 'G01';
      nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G01');
      nxGrd.SelectCell(CQTY,ARow);
    end
    else if mUserDept = 'PPIC' then begin
      nxGrd.Cell[CGDG,ARow].AsString := 'G01';
      nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G01');
      nxGrd.Cell[CGDG2,ARow].AsString := 'G02';
      nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G02');
      nxGrd.SelectCell(CQTY,ARow);
    end
    else if mUserDept = 'QAC' then begin
      nxGrd.Cell[CGDG,ARow].AsString := 'G03';
      nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G03');
      nxGrd.Cell[CGDG2,ARow].AsString := 'G01';
      nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G01');
      nxGrd.SelectCell(CQTY,ARow);
    end;

    qg := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
      'AND kode_gdg = ''%s''',
      [sKodeBrg, nxGrd.Cell[CGDG,ARow].AsString]);

    // cek apakah stok cukup
    //if qg.FieldByName('stok').AsFloat > 0 then begin
      nxGrd.Cell[CSTOK,ARow].AsFloat := qg.FieldByName('stok').AsFloat;
      HitungTotal;
    //end
    //else begin
    //  MsgBox('Stok barang tidak mencukupi.');
    //  nxGrd.DeleteRow(ARow);
    //end;

    q.Close;
    nxGrd.AddRow();
  end;
end;

procedure TfrmTrsBPPB_WHL.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then btnTambahClick(nil);
end;

procedure TfrmTrsBPPB_WHL.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TfrmTrsBPPB_WHL.cxChkSOMdbClick(Sender: TObject);
begin
  cxtNoSO.Enabled := cxChkSOMdb.Checked;
  cxlNoSO.Enabled := not cxChkSOMdb.Checked;
  cxLUBrg.Enabled := cxChkSOMdb.Checked;
  btnCariBrg.Enabled := cxChkSOMdb.Checked;
  nxGrd.ClearRows;
  if cxChkSOMdb.Checked then begin
    nxGrd.AddRow();
    cxlNoSO.EditValue := '';
  end;
end;

procedure TfrmTrsBPPB_WHL.cxlNoSOPropertiesCloseUp(Sender: TObject);
begin
  //cxLookupComboBox1PropertiesEditValueChanged(nil);
end;

procedure TfrmTrsBPPB_WHL.FormShow(Sender: TObject);
var
  q: TZQuery;
begin
  if mNoSO <> '' then begin
    cxlNoSO.EditValue := mNoSO;
    //self.cxlNoSOPropertiesEditValueChanged(nil);
  end;
  if (Aplikasi.NamaUser = 'FREDI') or
    (Aplikasi.NamaUser = 'ADMIN') then begin
    nxCmb.Options := nxCmb.Options + [coEditing];
  end;

  if aplikasi.UserDept = 'QAC' then begin
    nxCmb.Options := nxCmb.Options + [coEditing];
    cxtNoSO.Enabled := False;
    cxLabel7.Visible := True;
    cxtNoLKM.Visible := True;
  end;

end;

procedure TfrmTrsBPPB_WHL.cxlNoSOPropertiesEditValueChanged(Sender: TObject);
var
  q, qStok: TZQuery;
  ARow: Integer;
begin
  if cxlNoSO.Text = '' then Abort;

  if mJenisMutasi = 'mutasi-ongkos' then
    q := OpenRS('SELECT a.*, b.tipe FROM v_so_det a LEFT JOIN tbl_barang b ON ' +
      'a.kode_brg = b.kode AND a.no_bukti = ''%s'' AND b.tipe = ''JASA'' ORDER BY kode_brg',
      [cxlNoSO.EditValue])
  else
    q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' ORDER BY kode_brg',
      [cxlNoSO.EditValue]);

  //if not cxChkSOMdb.Checked
  nxGrd.ClearRows;
  while not q.Eof do begin
    ARow := nxGrd.AddRow();
    nxGrd.Cell[CKD_BRG,ARow].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY_SO,ARow].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[CQTy,ARow].AsFloat := q.FieldByName('qty').AsFloat;

    if mUserDept = 'PPIC' then begin
      nxGrd.Cell[CGDG,ARow].AsString := 'G01';
      nxGrd.Cell[CNM_GDG,ARow].AsString := GetNamaGudang('G01');
      nxGrd.Cell[CGDG2,ARow].AsString := 'G02';
      nxGrd.Cell[CNM_GDG2,ARow].AsString := GetNamaGudang('G02');
      nxGrd.SelectCell(CQTY,ARow);
      nxGrd.Cell[CSTOK,ARow].AsFloat := GetStokGudang(
        q.FieldByName('kode_brg').AsString, 'G01');

      if nxGrd.Cell[CSTOK,ARow].AsFloat <= 0 then
        nxGrd.Cell[CSTOK,ARow].Color := clRed;
    end;

    if mMutasiCFT <> '' then begin
      nxCmb2.Options := nxCmb2.Options - [coEditing];
      nxColQtyMutasi.Options := nxColQtyMutasi.Options - [coEditing];
    end;

    HitungTotal;

    q.Next;
  end;
  q.Close;

end;

procedure TfrmTrsBPPB_WHL.btnCariBrgClick(Sender: TObject);
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

procedure TfrmTrsBPPB_WHL.btnPilSemuaClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '' then
      nxGrd.Cell[nxColChk.Index,i].AsBoolean := True;
  end;
end;

procedure TfrmTrsBPPB_WHL.btnBersihClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '' then  
      nxGrd.Cell[nxColChk.Index,i].AsBoolean := False;
  end;
end;

procedure TfrmTrsBPPB_WHL.btnHapusPilClick(Sender: TObject);
var
  i: Integer;
begin
  i := 0;

  try
    repeat
      //nxGrd.SelectCell(nxColChk.Index,i);
      if nxGrd.Cell[nxColChk.Index,i].AsBoolean then begin
        if nxGrd.Cell[nxColKodeBrg.Index,i].AsString <> '' then begin
          nxGrd.DeleteRow(i);
          i := 0;
        end
        else
          Inc(i);
      end
      else
        Inc(i);
    until i = nxGrd.RowCount;
    for i := 0 to nxGrd.RowCount - 1 do begin
      nxGrd.RefreshRow(i);
    end;
    HitungTotal;
  finally
  end;
end;

end.
