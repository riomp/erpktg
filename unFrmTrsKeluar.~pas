unit unFrmTrsKeluar;

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
  TfrmTrsKeluar = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    btnCariPO: TButton;
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
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    cxLabel2: TcxLabel;
    cxCmbGdg: TcxComboBox;
    cxLabel3: TcxLabel;
    cxtNoSpmb: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtNoSpk: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtNoSo: TcxTextEdit;
    cxtNamaGdg: TcxTextEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxLUBrg: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    btnTambah: TButton;
    nxtNoSO: TNxTextColumn;
    nxtNoSPK: TNxTextColumn;
    NxEdit2: TNxEdit;
    cxlNoBukti: TcxLookupComboBox;
    btnEdit2: TButton;
    zqrNoBukti: TZReadOnlyQuery;
    dsNoBukti: TDataSource;
    nxColSatuan: TNxTextColumn;
    NxEdit3: TNxEdit;
    nxBeNoSO: TNxButtonEdit;
    idSMTP: TIdSMTP;
    btnCariBrg: TButton;
    cxLabel8: TcxLabel;
    cxlNoSO: TcxLookupComboBox;
    cxLabel9: TcxLabel;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    nxColQtySO: TNxNumberColumn;
    zqrNoBukti_Backup: TZReadOnlyQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
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
    procedure cxlNoSOPropertiesEditValueChanged(Sender: TObject);
  private
    mJenis: string;
    mJenisTrans: string;
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure SendEmail;
  public
    public property Jenis: string read mJenis write mJenis;
    public property UserDept: string read mUserDept write mUserDept;
    public property JenisTrans: string read mJenisTrans write mJenisTrans; 
  end;

var
  frmPO: TfrmTrsKeluar;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama;

const
  CNO : integer = 0;
  CKD_BRG : integer = 1;
  CNM_BRG : integer = 2;
  CSAT : integer = 3;
  CQTYSO : Integer = 4;
  CQTY : integer = 5;
  CNOSO : Integer = 6;
  CNOSPK : Integer = 7;
  CREF : Integer = 8;
  CKET : Integer = 9;
  CHAPUS: integer = 10;

{$R *.dfm}

procedure TfrmTrsKeluar.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  aplikasi.log_('TRS-KELUAR');
  
  btnCariPO.Visible := False;
  cxdTglTrs.Date := Aplikasi.TanggalServer;

  // cek wewenang ubah tanggal transaksi
  // 13-06-2016
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''UbahTglTrs'' AND nama = ''%s''',
    [Aplikasi.NamaUser]);
  if q.IsEmpty then
    cxdTglTrs.Properties.ReadOnly := True
  else begin
    if q.FieldByName('wwn').AsString = '0' then
      cxdTglTrs.Properties.ReadOnly := True
    else
      cxdTglTrs.Properties.ReadOnly := False;
  end;
  q.Close;

  // collect gudang
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.fieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  // 31-08-2016
  cxCmbGdg.Properties.Items.CommaText := Aplikasi.WewenangGudang.CommaText;

  if aplikasi.UserDept = 'CFT' then begin
    cxCmbGdg.Text := 'G01';
    cxCmbGdg.Properties.ReadOnly := true;
  end;
  if aplikasi.UserDept = 'PPIC' then begin
    cxCmbGdg.Text := 'G01';
    cxtNoSpmb.Enabled := False;
    cxCmbGdg.Properties.ReadOnly := true;
  end;
  if aplikasi.UserDept = 'WHL' then begin
    cxCmbGdg.Text := 'G02';
    cxtNoSpk.Enabled := False;
    // 20-03-2014 permintaan ibu fera
    cxCmbGdg.Properties.ReadOnly := false;
  end;
  if aplikasi.UserDept = 'QAC' then begin
    cxCmbGdg.Text := 'G03';
    cxtNoSpmb.Enabled := False;
    cxCmbGdg.Properties.ReadOnly := true;
  end;

  cxtNOTrans.Text := GetLastFak('brg_out');

  // cek wewenang tanggal
  //if Aplikasi.UserDept = 'WHL' then begin
  //  cxdTglTrs.Properties.ReadOnly := False;
  //  cxdTglTrs.Properties.MinDate := Aplikasi.TanggalServer - 2;
  //end;
  //MsgBox(FormatDateTime('dd-MM-yyyy', cxdTglTrs.Properties.MinDate));

  cxLabel7.Visible := Aplikasi.EditTrans;
  cxlNoBukti.Visible := Aplikasi.EditTrans;
  btnEdit2.Visible := aplikasi.EditTrans;

  zqrNoBukti.Open;
  zqrBrg.Open;
  zqrNoSO.Open;

end;

procedure TfrmTrsKeluar.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_out');
  Self.Jenis := 'tambah';
end;

function TfrmTrsKeluar.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TfrmTrsKeluar.NxEdit1DblClick(Sender: TObject);
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
          q := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = ''%s''',
            [fKode.AsString]);
          nxGrd.Cell[ACol,ARow].AsString := fKode.AsString;
          nxGrd.Cell[CNM_BRG,ARow].AsString := q.FieldByName('deskripsi').AsString;
          nxGrd.SelectCell(CQTY,ARow);
          q.Close;
        //end;
      //end;
    end;
  end;
end;

procedure TfrmTrsKeluar.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
  stok_gudang: real;
begin
  // kolom kode barang
  if ACol = CKD_BRG then begin
    nxGrd.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = CQTY then begin

    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
      Abort;
    end;

    if Self.Jenis = 'edit' then begin
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(1,nxGrd.RowCount-1)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;
      Abort;
    end;

    q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
      'AND kode_gdg = ''%s''',
      [nxGrd.Cell[CKD_BRG,ARow].AsString,
       cxCmbGdg.Text
      ]);
    stok_gudang := q.FieldByName('stok').AsFloat;
    q.Close;
      
    if nxGrd.Cell[CQTY,ARow].AsInteger < 1 then begin
      //nxGrd.Cell[CQTY,ARow].AsInteger := 1;
    end;

    // 23-07-2014
    // cek apakah stok gudang mencukupi
    if aplikasi.NamaUser = 'ANTON' then begin
      if stok_gudang < nxGrd.Cell[CQTY,ARow].AsFloat then begin
        MsgBox('Stok gudang : ' + FloatToStr(stok_gudang) + Chr(10) + Chr(13) +
          'Stok tidak mencukupi.');
        nxGrd.Cell[CQTY,ARow].AsFloat := 0;
        nxGrd.SelectCell(CQTY, ARow);
        Abort;
      end;
    end;

    // jika kode barang masih kosong
    if Trim(nxGrd.Cell[CKD_BRG,ARow].AsString) = '' then begin
      nxGrd.Cell[CQTY,ARow].AsInteger := 0;
      nxGrd.SelectCell(CKD_BRG,ARow);
    end
    else begin
      HitungTotal;

      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(CQTY,Arow+1)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(CQTY,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = CREF then
    nxGrd.SelectCell(CKET, ARow)
  else if ACol = CNOSO then begin
    if ARow <= nxGrd.RowCount - 1 then
      nxGrd.SelectCell(CNOSO,ARow+1);
  end;
end;

procedure TfrmTrsKeluar.HitungTotal;
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
  if cxsTotalQty.Value = 0 then cxCmbGdg.Properties.ReadOnly := False;
end;

procedure TfrmTrsKeluar.ClearAll;
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
  cxtNoTrans.Text := GetLastFak('brg_out');
  cxlNoBukti.Text := '';
  cxlNoSO.Text := '';
  nxGrd.ClearRows;
end;

procedure TfrmTrsKeluar.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TfrmTrsKeluar.btnEditClick(Sender: TObject);
begin
  inherited;
  btnCariPO.Visible := True;
end;

procedure TfrmTrsKeluar.btnSimpanClick(Sender: TObject);
var
  sNoTrs: string;
  in_head, in_det, barang, barang_det, hist: TZQuery;
  i: integer;
  b: Boolean;
  q, qCekTgl: TZQuery;
begin
  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else begin

    // 13-06-2016
    qCekTgl := OpenRS('SELECT curdate() as tanggal');
    if qCekTgl.FieldByName('tanggal').AsDateTime <> Date then begin
      MsgBox('Tanggal komputer tidak sama dengan tanggal Server. Program tidak bisa dijalankan.');
      qCekTgl.Close;
      Application.Terminate;
    end;
    qCekTgl.Close;

    // jika user adalah PPIC
    {
    if aplikasi.UserDept = 'PPIC' then begin
      if Trim(cxtNoSpk.Text) = '' then begin
        MsgBox('No. SPK harus diisi.');
        cxtNoSpk.SetFocus;
        Abort;
      end
      else if Trim(cxtNoSO.Text) = '' then begin
        MsgBox('No. SO harus diisi.');
        cxtNoSo.SetFocus;
        Abort;
      end;
    end;
    }

    // jika user adalah WHL
    if aplikasi.UserDept = 'WHL' then begin
      if Trim(cxtNoSpmb.Text) = '' then begin
        MsgBox('No. SPMB harus diisi.');
        cxtNoSpmb.SetFocus;
        Abort;
      end
      //else if Trim(cxtNoSO.Text) = '' then begin
      //  MsgBox('No. SO harus diisi.');
      //  cxtNoSo.SetFocus;
      //  Abort;
      //end;
    end;

    // jika user WHL
    if mUserDept = 'WHL' then begin
      b := False;
      for i := 0 to nxGrd.RowCount - 1 do begin
        if (nxGrd.Cell[CKD_BRG,i].AsString <> '') and
          (Trim(nxGrd.Cell[CNOSO,i].AsString) = '') then begin
          b := True;
          Break;
        end;
      end;
      if b then begin
        MsgBox('Masih ada kolom No. SO yang kosong.');
        Abort;
      end;
    end;

    // jika user PPIC
    if mUserDept = 'PPIC' then begin

      b := False;
      for i := 0 to nxGrd.RowCount - 1 do begin
        if (nxGrd.Cell[CKD_BRG,i].AsString <> '') and
          (Trim(nxGrd.Cell[CNOSPK,i].AsString) = '') then begin
          b := True;
          Break;
        end;
      end;
      if b then begin
        MsgBox('Masih ada kolom No. SPK yang kosong.');
        Abort;
      end;

      b := False;
      for i := 0 to nxGrd.RowCount - 1 do begin
        if (nxGrd.Cell[CKD_BRG,i].AsString <> '') and
          (Trim(nxGrd.Cell[CNOSO,i].AsString) = '') then begin
          b := True;
          Break;
        end;
      end;
      if b then begin
        MsgBox('Masih ada kolom No. SO yang kosong.');
        Abort;
      end;
      
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

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

    if Self.Jenis = 'edit' then
      sNoTrs := cxtNoTrans.Text
    else begin
      sNoTrs := GetLastFak('brg_out');
      UpdateFaktur(Copy(sNoTrs,1,7));
    end;

    try
      Screen.Cursor := crSQLWait;

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
        }
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trskeluar_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trskeluar_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_history WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      //in_head := OpenTbl('tbl_trskeluar_head');
      //in_det := OpenTbl('tbl_trskeluar_det');
      //barang := OpenTbl('tbl_barang');
      //barang_det := OpenTbl('tbl_barang_det');
      hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);
      in_head := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''', [sNoTrs]);
      in_det := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''', [sNoTrs]);
      
      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('user').AsString := aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
      in_head.FieldByName('f_approval').AsInteger := 0;

      // jika user adalah NENSI
      if (aplikasi.NamaUser = 'NENSI') then begin
        in_head.FieldByName('f_approval').AsInteger := 1;
        in_head.FieldByName('user_approval').AsString := aplikasi.NamaUser;
      end;
      
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
        in_det.FieldByName('referensi').AsString := '';
        
        in_det.FieldByName('keterangan').AsString :=
          UpperCase(nxGrd.Cell[CKET,i].AsString);

        in_det.FieldByName('no_so').AsString := Trim(nxGrd.Cell[CNOSO,i].AsString);
        in_det.FieldByName('no_spmb').AsString := Trim(cxtNoSpmb.Text);
        in_det.FieldByName('no_spk').AsString := Trim(nxGrd.Cell[CNOSPK,i].AsString);
        in_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;

        in_det.Post;

        // jika user adalah NENSI
        if (aplikasi.NamaUser = 'NENSI') then begin
          // update stok
          barang := OpenRS('SELECT stok FROM tbl_barang WHERE kode = %s',[nxGrd.Cell[CKD_BRG,i].AsString]);
          barang.Edit;
          barang.FieldByName('stok').AsFloat :=
            barang.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang.Post;
          barang.Close;

          // update detail barang
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [nxGrd.Cell[CKD_BRG, i].AsString, cxCmbGdg.Text]);
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsInteger, cxCmbGdg.Text]),[]) then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
            barang_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
          barang_det.Close;

          hist.Insert;
          hist.FieldByName('no_bukti').AsString := sNoTrs;
          hist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
          hist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
          hist.FieldByName('tipe').AsString := 'OUT_';
          hist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
          hist.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
          hist.FieldByName('gudang').AsString := cxCmbGdg.Text;
          hist.FieldByName('no_so').AsString := Trim(nxGrd.Cell[CNOSO,i].AsString);
          hist.FieldByName('no_spmb').AsString := Trim(cxtNoSpmb.Text);
          hist.FieldByName('no_spk').AsString := Trim(nxGrd.Cell[CNOSPK,i].AsString);
          hist.FieldByName('referensi').AsString := nxGrd.Cell[CREF,i].AsString;
          hist.FieldByName('keterangan').AsString :=
            UpperCase(nxGrd.Cell[CKET,i].AsString);
          hist.FieldByName('user').AsString := Aplikasi.NamaUser;
          hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
          hist.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          hist.Post;
        end;

        // jika user adalah NENSI
        if (mJenisTrans = 'ongkos') then begin
          // update stok
          barang := OpenRS('SELECT stok FROM tbl_barang WHERE kode = %s',[nxGrd.Cell[CKD_BRG,i].AsString]);
          barang.Edit;
          barang.FieldByName('stok').AsFloat :=
            barang.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang.Post;
          barang.Close;

          // update detail barang
          barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [nxGrd.Cell[CKD_BRG, i].AsString, cxCmbGdg.Text]);
          if barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([nxGrd.Cell[CKD_BRG,i].AsInteger, cxCmbGdg.Text]),[]) then
            barang_det.Edit
          else begin
            barang_det.Insert;
            barang_det.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
            barang_det.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
          end;

          barang_det.FieldByName('stok').AsFloat :=
            barang_det.FieldByName('stok').AsFloat - nxGrd.Cell[CQTY,i].AsFloat;
          barang_det.Post;
          barang_det.Close;

          hist.Insert;
          hist.FieldByName('no_bukti').AsString := sNoTrs;
          hist.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
          hist.FieldByName('kode_brg').AsString := nxGrd.Cell[CKD_BRG,i].AsString;
          hist.FieldByName('tipe').AsString := 'OUT_';
          hist.FieldByName('qty').AsFloat := nxGrd.Cell[CQTY,i].AsFloat;
          hist.FieldByName('satuan').AsString := nxGrd.Cell[CSAT,i].AsString;
          hist.FieldByName('gudang').AsString := cxCmbGdg.Text;
          hist.FieldByName('no_so').AsString := Trim(nxGrd.Cell[CNOSO,i].AsString);
          hist.FieldByName('no_spmb').AsString := Trim(cxtNoSpmb.Text);
          hist.FieldByName('no_spk').AsString := Trim(nxGrd.Cell[CNOSPK,i].AsString);
          hist.FieldByName('referensi').AsString := nxGrd.Cell[CREF,i].AsString;
          hist.FieldByName('keterangan').AsString :=
            UpperCase(nxGrd.Cell[CKET,i].AsString);
          hist.FieldByName('user').AsString := Aplikasi.NamaUser;
          hist.FieldByName('user_dept').AsString := aplikasi.UserDept;
          hist.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          hist.Post;
        end;
      end;

      in_head.Close;
      in_det.Close;
      hist.Close;

      //if Self.Jenis <> 'edit' then
      //  UpdateFaktur(Copy(sNoTrs,1,7));

      dm.zConn.Commit;

      if mJenisTrans <> 'ongkos' then
        SendEmail;

      Screen.Cursor := crDefault;

      MsgBox('Transaksi barang keluar sudah disimpan dengan nomer: ' + sNoTrs);
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

procedure TfrmTrsKeluar.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
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
      if cxCmbGdg.Text = '' then
        cxCmbGdg.SetFocus
      else
        NxEdit1DblClick(nil);
    end;
  end;
end;

procedure TfrmTrsKeluar.btnCariPOClick(Sender: TObject);
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

procedure TfrmTrsKeluar.btnHapusClick(Sender: TObject);
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

procedure TfrmTrsKeluar.FormShow(Sender: TObject);
var
  qo: TZQuery;
begin
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

  if aplikasi.NamaUser = 'ANTON' then begin
    zqrBrg.Close;
    zqrBrg.SQL.Text := 'SELECT * FROM v_brg_per_gdg_2 ' +
      'WHERE (tipe LIKE ''SPT%'' OR tipe LIKE ''BPS%'') ORDER BY deskripsi';
    zqrBrg.Open;
  end;

  // hacked 30-01-2016
  if Pos(aplikasi.NamaUser, 'SUNANTO;YOSEFS;TIWI;DWIHARJO') > 0 then begin
    zqrBrg.Close;
    zqrBrg.SQL.Text := 'SELECT * FROM v_brg_per_gdg_2 ' +
      'WHERE (tipe like ''BB%'') or (deskripsi like ''BOARD%'') or (deskripsi LIKE ''%GRAM BESI%'') ' +
      'or (deskripsi LIKE ''JENDELA%'') ' +
      'or (deskripsi LIKE ''BOX DUMA%'')';
    zqrBrg.Open;
  end;

  // hacked 10-02-2016
  // hacked 10-02-2016
  qo := OpenRS('SELECT * FROM _tbl_open WHERE tanggal = curdate()');
  //if Aplikasi.TanggalString = '2016-05-27' then begin
  if not qo.IsEmpty then begin
    if Pos(aplikasi.NamaUser, 'SUNANTO;TIWI') > 0 then begin
      zqrBrg.Close;
      zqrBrg.SQL.Text := 'SELECT * FROM v_brg_per_gdg_2';
      zqrBrg.Open;
    end;
  end;
  qo.Close;

  if mJenisTrans = '' then begin
    cxLabel9.Visible := False;
    cxlNoSO.Visible := False;
    nxColQtySO.Visible := False;
  end
  else if mJenisTrans = 'ongkos' then begin
    nxColQtySO.Visible := True;
    cxCmbGdg.Text := 'G02';
    cxtNamaGdg.Text := unTools.GetNamaGudang('G02');
    cxCmbGdg.Properties.ReadOnly := True;
    cxLabel8.Visible := True;
    cxlNoSO.Visible := True;
    zqrNoSO.Open;
    nxtNoSO.Options := nxtNoSO.Options - [coEditing];
    nxtNoSPK.Visible := False;

    cxLUBrg.Enabled := False;
    btnCariBrg.Visible := False;
    btnTambah.Visible := False;
    cxdTglTrs.Properties.ReadOnly := True;
    nxColQtySO.Header.Caption := 'Stok G-CUST';
    nxColQty.Header.Caption := 'Qty. Keluar';
  end;

end;

procedure TfrmTrsKeluar.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TfrmTrsKeluar.btnTambahClick(Sender: TObject);
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
      { 22-07-2014 }
      if Aplikasi.NamaUser = 'ANTON' then begin
        MsgBox('Stok barang tidak mencukupi.' + Chr(10) + Chr(13) +
          'Gudang : ' + cxCmbGdg.Text + Chr(10) + Chr(13) +
          'Stok : 0');
        cxLUBrg.Text := '';
        q.Close;
        Abort;
      end;
    end;
    q.Close;
    // eof cek stok per gudang

    cxLUBrg.Text := '';
    nxGrd.Cell[CKD_BRG,ARow].AsString := sKodeBrg;
    q := OpenRS('SELECT kode, deskripsi, satuan FROM tbl_barang WHERE kode = ''' +
      sKodeBrg + '''');

    nxGrd.Cell[CNM_BRG,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[CSAT,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[CQTY,ARow].AsFloat := 1;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  //end;
end;

procedure TfrmTrsKeluar.cxCmbGdgEnter(Sender: TObject);
begin
  inherited;
  if cxsTotalQty.Value > 0 then
    cxCmbGdg.Properties.ReadOnly := True;
end;

procedure TfrmTrsKeluar.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TfrmTrsKeluar.Button1Click(Sender: TObject);
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

procedure TfrmTrsKeluar.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
begin
  if Trim(cxlNoBukti.Text) = '' then Abort;
  
  self.Jenis := 'edit';
  cxtNoTrans.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  cxCmbGdg.Text := q.FieldByName('kode_gdg').AsString;
  cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  cxtNoSpmb.Text := q.FieldByName('no_spmb').AsString;

  if q.RecordCount > 1 then
    nxGrd.ClearRows;

  i := 0;
  while not q.Eof do begin
    nxGrd.AddRow();
    qBrg := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = ''%s''',
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

procedure TfrmTrsKeluar.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TfrmTrsKeluar.nxBeNoSOButtonClick(Sender: TObject);
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

procedure TFrmTrsKeluar.SendEmail;
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
      email.Recipients.EMailAddresses := 'boby@sdp.mail,vivi@sdp.mail,sunanto@sdp.mail,marion@sdp.mail';

    email.Subject := 'Approval Transaksi Keluar Nomor : ' + cxtNoTrans.Text;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('</br>');
    lst.Add('Ada transaksi pengeluaran barang yang perlu di Approval, silahkan cek aplikasi MDA');
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

procedure TfrmTrsKeluar.btnCariBrgClick(Sender: TObject);
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

procedure TfrmTrsKeluar.cxlNoSOPropertiesEditValueChanged(Sender: TObject);
var
  q, qso: TZQuery;
  i: integer;
begin
  try
    q := OpenRS('SELECT a.kode_brg, a.no_so, b.deskripsi, b.satuan, ' +
      'SUM(IF(a.tipe=''IN_'',a.qty,0)) - SUM(IF(a.tipe=''OUT_'',a.qty,0)) qty FROM tbl_history a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_so = ''%s'' AND b.deskripsi LIKE ''ONGKOS%s'' AND a.gudang = ''G02'' ' +
      'GROUP BY a.kode_brg, a.no_so, b.deskripsi, b.satuan',
      [zqrNoSO.FieldByName('no_bukti').AsString, '%']);

    if not q.IsEmpty then begin
      nxGrd.ClearRows;
      while not q.Eof do begin
        if q.FieldByName('qty').AsFloat > 0 then begin
          i := nxGrd.AddRow();
          nxGrd.Cell[nxColKodeBrg.Index, i].AsString := q.FieldByName('kode_brg').AsString;
          nxGrd.Cell[nxColNamaBrg.Index, i].AsString := q.FieldByName('deskripsi').AsString;
          nxGrd.Cell[nxColSatuan.Index, i].AsString := q.FieldByName('satuan').AsString;
          nxGrd.Cell[nxColQtySO.Index, i].AsFloat := q.FieldByName('qty').AsFloat;
          nxGrd.Cell[nxtNoSO.Index,i].AsString := q.FieldByName('no_so').AsString;
          nxGrd.Cell[nxtNoSPK.Index,i].AsString := '-';

          //qso := OpenRS('SELECT qty FROM tbl_so_det WHERE kode_brg = %s AND no_bukti = ''%s''',
          //  [q.FieldByName('kode_brg').AsString, q.FieldByName('no_so').AsString]);
          //nxGrd.Cell[nxColQtySO.Index, i].AsFloat := qso.FieldByName('qty').AsFloat;
          //qso.Close;
          
          HitungTotal;
        end;
        q.Next;
      end;
    end;
    q.Close;

  except
  end;

end;

end.
