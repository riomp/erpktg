unit unFrmPurchaseOrderJasa;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxRadioGroup, cxSpinEdit, NxEdit, cxMemo,
  cxCheckBox, cxCheckListBox, cxCalendar, cxLabel, ComCtrls, DB,
  ZAbstractRODataset, ZDataset;

type
  TfrmPurchaseOrderJasa = class(TfrmTplTrans)
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    NxEdit1: TNxEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxLUSupp: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxdTglKirim: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    cxChkLstEmail: TcxCheckListBox;
    chkSdhKirimEmail: TcxCheckBox;
    cxLabel5: TcxLabel;
    cxmIsiEmail: TcxMemo;
    cxmTemplate: TcxMemo;
    mm: TcxMemo;
    cxLabel2: TcxLabel;
    cxtSubject: TcxTextEdit;
    chkComplete: TcxCheckBox;
    NxButtonEdit1: TNxButtonEdit;
    btnCariSupp: TButton;
    cxLabel9: TcxLabel;
    cxCmbPembayaran: TcxComboBox;
    cxLabel14: TcxLabel;
    cxlAlamatKirim: TcxLookupComboBox;
    btnCariAlamatKirim: TButton;
    cxLabel16: TcxLabel;
    cxCmbJenis: TcxComboBox;
    cxtnopol: TcxTextEdit;
    cxtdriver: TcxTextEdit;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    zqrSupp: TZReadOnlyQuery;
    dsSupp: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    dsNoBukti: TDataSource;
    zqrNoFOBJ: TZReadOnlyQuery;
    dsNoFOBJ: TDataSource;
    zqrAlmKirim: TZReadOnlyQuery;
    dsAlmKirim: TDataSource;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    nxGrd: TNextGrid;
    nxColHapus: TNxImageColumn;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaJasa: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    nxColHarga: TNxNumberColumn;
    nxColMataUang: TNxComboBoxColumn;
    nxColSubtotal: TNxNumberColumn;
    nxColKeterangan: TNxTextColumn;
    nxColNoPen: TNxTextColumn;
    NxEdit2: TNxEdit;
    cxsTotalHarga: TcxSpinEdit;
    cxsPPN: TcxSpinEdit;
    cxsTotalPPN: TcxSpinEdit;
    cxsGrandTotal: TcxSpinEdit;
    cxChk2Angka: TcxCheckBox;
    cxChk3Angka: TcxCheckBox;
    NxEdit4: TNxEdit;
    cxChk4Angka: TcxCheckBox;
    TabSheet2: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    nxGrd2: TNextGrid;
    nxColHapus2: TNxImageColumn;
    nxNoUrut2: TNxIncrementColumn;
    nxColKodeBrg2: TNxTextColumn;
    nxColNamaBrg2: TNxTextColumn;
    nxColQty2: TNxNumberColumn;
    nxColSatuan2: TNxTextColumn;
    nxColHarga2: TNxNumberColumn;
    nxColMataUang2: TNxComboBoxColumn;
    nxColSubtotal2: TNxNumberColumn;
    nxColKeterangan2: TNxTextColumn;
    NxEdit3: TNxEdit;
    cxsTotal2: TcxSpinEdit;
    cxsPPN2: TcxSpinEdit;
    cxsTotPPN2: TcxSpinEdit;
    cxsGrandTotal2: TcxSpinEdit;
    cxChk2Angka_2: TcxCheckBox;
    cxChk3Angka_2: TcxCheckBox;
    cxLabel3: TcxLabel;
    cxLUJasa: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxsQty: TcxSpinEdit;
    btnTambah: TButton;
    cxLabel4: TcxLabel;
    cxLUBrg: TcxLookupComboBox;
    cxLabel11: TcxLabel;
    cxsQtyBrg: TcxSpinEdit;
    btnTambahBrg: TButton;
    btnSPMB: TButton;
    btnSJ: TButton;
    zqJasa: TZReadOnlyQuery;
    dsJasa: TDataSource;
    btnBuatBaru: TButton;
    btnCariBrg: TButton;
    cxtNoSPMB: TcxTextEdit;
    chkPODgnBrg: TcxCheckBox;
    GroupBox1: TGroupBox;
    cxrNonPajak: TcxRadioButton;
    cxrStandard: TcxRadioButton;
    cxLabel12: TcxLabel;
    cxtNoPOPajak: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxLabel17: TcxLabel;
    cxtNoFOBJ: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure cell(Sender: TObject; ACol, ARow: Integer);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure cxChk2AngkaClick(Sender: TObject);
    procedure cxsPPNPropertiesEditValueChanged(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnBuatBaruClick(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnTambahBrgClick(Sender: TObject);
    procedure btnCariSuppClick(Sender: TObject);
    procedure btnCariAlamatKirimClick(Sender: TObject);
    procedure nxGrd2AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure cxChk2Angka_2Click(Sender: TObject);
    procedure btnSPMBClick(Sender: TObject);
    procedure btnSJClick(Sender: TObject);
    procedure cxLUSuppPropertiesEditValueChanged(Sender: TObject);
    procedure cxrNonPajakClick(Sender: TObject);
  private
    mLstDaftarEmail: TStringList;
    procedure ClearAll;
    function CekNamaJasa(sNamaJasa : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungSubTotal;
    procedure HitungPPN;
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPurchaseOrderJasa: TfrmPurchaseOrderJasa;

implementation

uses unAplikasi, unDm, unTools, unFrmCari;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CNM_JASA : integer = 2;
  CHARGA : integer = 3;
  CTOTAL : integer = 4;
  CKET : Integer = 5;
  CQTY : integer = 6;
  CSAT : Integer = 7;

{$R *.dfm}

procedure TFrmPurchaseOrderJasa.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmPurchaseOrderJasa.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: Integer;
  tx: TcxCheckListBoxItem;
  bEditSO: boolean;
begin

  zqrSupp.Open;
  zqrAlmKirim.Open;

  zqrNoBukti.Open;
  zqJasa.Open;

  cxdTglTrs.Date := Aplikasi.TanggalServer;

  //cxdTglTrs.Properties.ReadOnly := Not aplikasi.UbahTglTrs;

  cxtNoTrans.Text := GetLastFak('po_jasa');

  cxCmbPembayaran.Properties.Items.Add('');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Bulan');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Bulan');
  cxCmbPembayaran.Properties.Items.Add('1 (Satu) Minggu');
  cxCmbPembayaran.Properties.Items.Add('2 (Dua) Minggu');
  cxCmbPembayaran.Properties.Items.Add('3 (Tiga) Minggu');
  cxCmbPembayaran.Properties.Items.Add('45 Hari');
  cxCmbPembayaran.Properties.Items.Add('Kontan');
  cxCmbPembayaran.ItemIndex := 0;

  lst := TStringList.Create;
  lst.Add('boby@sdp.mail');
  lst.Add('vivi@sdp.mail');
  lst.Add('felgitotema@sdp.mail');
  lst.Add('ferry@sdp.mail');
  lst.Add('sunanto@sdp.mail');
  //lst.Add('marion@sdp.mail');
  lst.Add('fredi@sdp.mail');
  lst.Add('enny@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    tx := cxChkLstEmail.Items.Add();
    tx.Text := lst.Strings[i];
  end;

  Self.Jenis := 'tambah';
  mLstDaftarEmail := TStringList.Create;

  cxChk2Angka.Checked := True;
  cxChk2Angka_2.Checked := True;

  q := OpenRS('SELECT * FROM tbl_mata_uang ORDER BY mata_uang');
  while not q.Eof do begin
    nxColMataUang.Items.Add(q.FieldByName('mata_uang').AsString);
    nxColMataUang2.Items.Add(q.FieldByName('mata_uang').AsString);
    q.Next;
  end;
  q.Close;

  cxCmbJenis.Properties.Items.Add('JASA');
  cxCmbJenis.Properties.Items.Add('SPAREPART');
  cxCmbJenis.Properties.Items.Add('LAIN-LAIN');

  pg.ActivePageIndex := 0;

  zqrBrg.Open;
end;

procedure TfrmPurchaseOrderJasa.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qg: TZQuery;
  sNamaJasa: string;
begin
    ACol := nxGrd.SelectedColumn;
    ARow := nxGrd.RowCount - 1;

     q := OpenRS('SELECT * FROM tbl_jasa WHERE deskripsi = ''%s''',
      [cxLUJasa.Text]);
    if not q.IsEmpty then begin
      if Trim(q.FieldByName('deskripsi').AsString) = Trim(cxLUJasa.Text) then begin
        nxGrd.Cell[nxColKeterangan.Index,ARow].AsString := q.fieldByName('keterangan').AsString;
      end;
    end;
    q.Close;

  if cxLUJasa.Text = '' then Abort;

  //sNamaJasa := zqJasa.FieldByName('deskripsi').AsString;
  sNamaJasa := Trim(cxLUJasa.Text);



  if not CekNamaJasa(sNamaJasa, ARow) then begin
    MsgBox('Nama Jasa ini sudah ada.');
    Abort;
  end
  else begin
    nxGrd.Cell[nxColNamaJasa.Index,ARow].AsString := sNamaJasa;
    nxGrd.Cell[nxColNamaJasa.Index,ARow].AsString := cxLUJasa.Text ;
    nxGrd.Cell[nxColHarga.Index,ARow].AsFloat := 0;
    nxGrd.Cell[nxColHarga.Index,ARow].Color := clSkyBlue;

    HitungTotal;
    nxGrd.SelectCell(nxColNamaJasa.Index, nxGrd.LastAddedRow);
    nxGrd.SelectLastRow();
    cxLUJasa.Text := '';

    nxGrd.AddRow();
  end;

end;

function TFrmPurchaseOrderJasa.CekNamaJasa(sNamaJasa : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (sNamaJasa = nxGrd.Cell[nxColNamaJasa.Index,i].AsString) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TfrmPurchaseOrderJasa.cell(Sender: TObject; ACol,
  ARow: Integer);
begin
   if nxGrd.SelectedRow > -1 then begin
    if ACol = CHAPUS then begin
      if Trim(nxGrd.Cell[nxColNamaJasa.index, ARow].AsString) <> '' then begin

          nxGrd.DeleteRow(nxGrd.SelectedRow);
          nxNoUrut.Refresh();
          HitungTotal;
          if nxGrd.RowCount = 0 then nxGrd.AddRow();
      end;
    end;

  end;
end;

procedure TFrmPurchaseOrderJasa.HitungTotal;
var
  i: integer;
  tmp, tmpHarga: Real;
begin
  tmp := 0;
  tmpHarga := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpHarga := tmpHarga + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
  end;
  cxsTotalHarga.Value := tmpHarga;
  cxsTotalPPN.Value := (cxsPPN.Value / 100 * cxsTotalHarga.Value);
  cxsGrandTotal.Value := cxsTotalHarga.Value + cxsTotalPPN.Value;

  tmp := 0;
  tmpHarga := 0;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    tmpHarga := tmpHarga + nxGrd2.Cell[nxColSubtotal.Index,i].AsFloat;
  end;
  cxsTotal2.Value := tmpHarga;
  cxsTotPPN2.Value := (cxsPPN.Value / 100 * cxsTotal2.Value);
  cxsGrandTotal2.Value := cxsTotal2.Value + cxsTotPPN2.Value;
end;

procedure TfrmPurchaseOrderJasa.btnSimpanClick(Sender: TObject);
var
  jasa, poj_head, poj_det, poj_subdet, qmu: TZQuery;
  sNoTrs, sNoPOPajak : string;
  jml : string;
  i: Integer;
  b: Boolean;
  f_approval, user_app: string;
  tgl_app: TDateTime;
begin

  if Trim(cxLUSupp.Text) = '' then begin
    MsgBox('Nama Supplier harus diisi.');
    Abort;
  end;

  if Trim(cxlAlamatKirim.Text) = '' then begin
    MsgBox('Pilih alamat kirim.');
    Abort;
  end;

  if Trim(cxCmbPembayaran.Text)  = '' then begin
    MsgBox('Jenis Pembayaran harus diisi.');
    Abort;
  end;

  if Trim(cxCmbJenis.Text) = '' then begin
    MsgBox('Jenis PO harus diisi.');
    Abort;
  end;

  // cek row kosong
  if cxsTotalHarga.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end;


  // cek harga jasa kosong (di bagian detail)
    b := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if (nxGrd.Cell[nxColNamaJasa.Index,i].AsString <> '') and
        (nxGrd.Cell[nxColHarga.Index,i].AsFloat = 0) then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom harga yang kosong.');
      Abort;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;

  try

    if Self.Jenis = 'edit' then begin
      sNoTrs := cxtNoTrans.Text;
    end
    else begin
      sNoTrs := GetLastFak('po_jasa');
      UpdateFaktur(Copy(sNoTrs,1,8));
    end;

    dm.zConn.StartTransaction;
    poj_head := OpenRS('select * from tbl_poj_head where no_bukti = ''%s''',
                [cxtNoTrans.Text]);
    poj_det := OpenRS('select * from tbl_poj_det where no_bukti = ''%s''',
                [cxtNoTrans.Text]);
    poj_subdet := OpenRS('select * from tbl_poj_subdet where no_bukti = ''%s''',
                [cxtNoTrans.Text]);

    f_approval := '0';
    if Self.Jenis = 'edit' then begin
      // ambil status approval
      if poj_head.FieldByName('f_approval').AsString = '1' then begin
        f_approval := '1';
        user_app := poj_head.FieldByName('user_app').AsString;
        tgl_app := poj_head.FieldByName('tgl_app').AsDateTime;
      end;

      dm.zConn.ExecuteDirect('DELETE FROM tbl_poj_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_poj_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_poj_subdet WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
    end;

    poj_head.Insert;
    poj_head.FieldByName('no_bukti').AsString := sNoTrs;
    poj_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
    poj_head.FieldByName('kode_supp').AsString := cxLUSupp.EditValue;
    poj_head.FieldByName('tgl_required').AsDateTime := cxdTglKirim.Date;
    poj_head.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
    poj_head.FieldByName('keterangan').AsString := cxtKeterangan.Text;
    poj_head.FieldByName('user').AsString := aplikasi.NamaUser;
    poj_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
    poj_head.FieldByName('tgl_input').AsDateTime := cxdTglTrs.Date;
    poj_head.FieldByName('pembayaran').AsString := cxCmbPembayaran.Text;
    poj_head.FieldByName('currency').AsString := 'IDR';
    poj_head.FieldByName('f_completed').AsString := '0';
    poj_head.FieldByName('host').AsString := aplikasi.HostName;
    poj_head.FieldByName('f_approval').AsString := '0';
    poj_head.FieldByName('ppn').AsString := cxsPPN.Text;
    poj_head.FieldByName('kode_alamat_kirim').AsString := cxlAlamatKirim.EditValue;
    poj_head.FieldByName('no_fobj').AsString := Trim(cxtNoFOBJ.Text);

    if cxrNonPajak.Checked then
      poj_head.FieldByName('jenis_po').AsString := 'np'
    else
      poj_head.FieldByName('jenis_po').AsString := 'st';

    if poj_head.FieldByName('jenis_po').AsString = 'st' then begin
      if self.Jenis <> 'edit' then begin
        sNoPOPajak := GetLastNoPOPajak;
        UpdateFaktur(Copy(sNoPOPajak,1,7));
        poj_head.FieldByName('no_po_pajak').AsString := sNoPOPajak;
      end
      else begin
        if cxtNoPOPajak.Text <> '' then
          poj_head.FieldByName('no_po_pajak').AsString := cxtNoPOPajak.Text;
      end;
    end;

    if cxChk2Angka.Checked then
      poj_head.FieldByName('digit').AsInteger := 2
    else if cxChk3Angka.Checked then
      poj_head.FieldByName('digit').AsInteger := 3
    else if cxChk4Angka.Checked then
      poj_head.FieldByName('digit').AsInteger := 4;

    poj_head.FieldByName('jenis_po2').AsString := cxCmbJenis.Text;  
    poj_head.FieldByName('no_internal').AsString :=
        cxCmbJenis.Text + '-' + Copy(sNoTrs,5,8);

    // jika sudah di approval
    if f_approval = '1' then begin
      poj_head.FieldByName('f_approval').AsString := f_approval;
      poj_head.FieldByName('user_app').AsString := user_app;
      poj_head.FieldByName('tgl_app').AsDateTime := tgl_app;
    end;

    poj_head.Post;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColNamaJasa.Index,i].AsString = '' then
        Continue;

      jasa := OpenRS('SELECT * FROM tbl_jasa WHERE deskripsi = ''%s''',
        [nxGrd.Cell[nxColNamaJasa.Index,i].AsString]);

      if nxGrd.Cell[nxColNamaJasa.Index,i].AsString <> jasa.fieldByName('deskripsi').AsString then begin
        jasa.Insert;
        jasa.FieldByName('deskripsi').AsString := nxGrd.Cell[nxColNamaJasa.Index,i].AsString;
        jasa.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKeterangan.Index,i].AsString;
        jasa.FieldByName('user').AsString := aplikasi.NamaUser;
        jasa.Post;
      end
      else begin
        jasa.Edit;
        jasa.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKeterangan.Index,i].AsString;
        jasa.FieldByName('user').AsString := aplikasi.NamaUser;
        jasa.Post;
      end;

      poj_det.Insert;
      poj_det.FieldByName('no_bukti').AsString := sNoTrs;
      poj_det.FieldByName('deskripsi').AsString := nxGrd.Cell[nxColNamaJasa.Index,i].AsString;
      poj_det.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index, i].AsFloat;
      poj_det.FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index, i].AsString;
      poj_det.FieldByName('harga').AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
      poj_det.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKeterangan.Index,i].AsString;

      if nxGrd.Cell[nxColMataUang.Index,i].AsString <> 'IDR' then begin
        qmu := OpenRS('SELECT * FROM tbl_kurs WHERE tanggal = ' +
          '(SELECT MAX(tanggal) FROM tbl_kurs WHERE mata_uang = ''%s'') AND mata_uang = ''%s''',
          [nxGrd.Cell[nxColMataUang.Index,i].AsString,nxGrd.Cell[nxColMataUang.Index,i].AsString]);

        poj_det.FieldByName('nilai_tukar').AsFloat := qmu.FieldByName('rupiah').AsFloat;
        qmu.Close;
      end
      else begin
        poj_det.FieldByName('nilai_tukar').AsFloat := 1;
      end;

      poj_det.FieldByName('mata_uang').AsString := nxGrd.Cell[nxColMataUang.Index, i].AsString;
      poj_det.Post;
    end;

    if nxGrd2.RowCount > 0 then begin
      for i := 0 to nxGrd2.RowCount - 2 do begin
        with poj_subdet do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoTrs;
          FieldByName('kode_brg').AsString := nxGrd2.Cell[nxColKodeBrg2.Index, i].AsString;
          FieldByName('qty').AsFloat := nxGrd2.Cell[nxColQty2.Index, i].AsFloat;
          FieldByName('harga').AsFloat := nxGrd2.Cell[nxColHarga2.Index, i].AsFloat;
          FieldByName('keterangan').AsString := nxGrd2.Cell[nxColKeterangan2.Index, i].AsString;
          Post;
        end;
      end;
    end;

    dm.zConn.Commit;

    jasa.Close;
    poj_head.Close;
    poj_det.Close;
    poj_subdet.Close;

    MsgBox('Transaksi Purchase Order Jasa sudah disimpan dengan nomer: ' + sNoTrs);

    zqJasa.Close;
    zqJasa.Open;
    zqrNoBukti.Close;
    zqrNoBukti.Open;

    ClearAll;
    Self.Jenis := '';
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TfrmPurchaseOrderJasa.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = nxColHarga.Index then begin
    nxGrd.Cell[nxColSubtotal.Index,Arow].AsFloat :=
    nxGrd.Cell[nxColHarga.Index,Arow].AsFloat * nxGrd.Cell[nxColQty.Index, ARow].AsFloat;
    HitungTotal;
  end;
end;

procedure TfrmPurchaseOrderJasa.cxChk2AngkaClick(Sender: TObject);
var
  chk: TcxCheckBox;
begin
  chk := (Sender as TcxCheckBox);

  if chk.Name = 'cxChk2Angka' then begin
    if chk.Checked then begin
      nxColHarga.FormatMask := '#,##0.00';
      nxColSubtotal.FormatMask := '#,##0.00';
      cxsTotalHarga.Properties.DisplayFormat := '#,##0.00';
      cxsTotalPPN.Properties.DisplayFormat := '#,##0.00';
      cxsGrandTotal.Properties.DisplayFormat := '#,##0.00';
      cxChk3Angka.Checked := False;
      cxChk4Angka.Checked := False;
    end
    //else
    //  cxChk3Angka.Checked := True;
  end
  else if chk.Name = 'cxChk3Angka' then begin
    if chk.Checked then begin
      nxColHarga.FormatMask := '#,##0.000';
      nxColSubtotal.FormatMask := '#,##0.000';
      cxsTotalHarga.Properties.DisplayFormat := '#,##0.000';
      cxsTotalPPN.Properties.DisplayFormat := '#,##0.000';
      cxsGrandTotal.Properties.DisplayFormat := '#,##0.000';
      cxChk2Angka.Checked := False;
      cxChk4Angka.Checked := False;
    end
    //else
    //  cxChk2Angka.Checked := True;
  end
  else if chk.Name = 'cxChk4Angka' then begin
    if chk.Checked then begin
      nxColHarga.FormatMask := '#,##0.0000';
      nxColSubtotal.FormatMask := '#,##0.0000';
      cxsTotalHarga.Properties.DisplayFormat := '#,##0.0000';
      cxsTotalPPN.Properties.DisplayFormat := '#,##0.0000';
      cxsGrandTotal.Properties.DisplayFormat := '#,##0.0000';
      cxChk2Angka.Checked := False;
      cxChk3Angka.Checked := False;
    end
    //else
    //  cxChk2Angka.Checked := True;
  end;
end;

procedure TfrmPurchaseOrderJasa.cxsPPNPropertiesEditValueChanged(
  Sender: TObject);
var
  i: integer;
  subtotal, total: real;
begin
  try
    subtotal := 0;
    for i := 0 to nxGrd.RowCount - 1 do begin
      subtotal := subtotal + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
    end;
    if subtotal > 0 then begin
      total := (cxsPPN.Value / 100) * subtotal;
      cxsTotalPPN.Value := total;
    end;
    cxsGrandTotal.Value := cxsTotalPPN.Value + cxsTotalharga.Value;
  except
  end;

end;

procedure TfrmPurchaseOrderJasa.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;

  cxLUSupp.Text := '';
  cxlAlamatKirim.Text := '';
  cxdTglKirim.Text := '';
  cxCmbPembayaran.Text := '';
  cxtKeterangan.Text := '';
  cxlNoBukti.Text := '';
  
  cxsTotalHarga.Value := 0;
  cxsTotalPPN.Value := 0;
  cxsGrandTotal.Value := 0;
  cxsPPN.Value := 0;

  cxsTotal2.Value := 0;
  cxsTotPPN2.Value := 0;
  cxsGrandTotal2.Value := 0;
  cxsPPN2.Value := 0;


  cxtNoTrans.Text := GetLastFak('po_jasa');

  zqJasa.Close;
  zqJasa.Open;
  
  nxGrd.ClearRows;
  nxGrd.AddRow();
  
  nxGrd2.ClearRows;
  nxGrd2.AddRow();

  cxrNonPajak.Checked := True;
  cxtNoFOBJ.Text := '';

end;

procedure TfrmPurchaseOrderJasa.btnEdit2Click(Sender: TObject);
var
  pojh, pojd, qsupp, qkirim, q, qsubdet, qbrg: TZQuery;
  i, ii : Integer;
begin
  Self.Jenis := 'edit';
  pojh := OpenRS('select * from tbl_poj_head where no_bukti = ''%s''',
          [cxlNoBukti.EditValue]);
  pojd := OpenRS('select * from tbl_poj_det where no_bukti = ''%s''',
          [cxlNoBukti.EditValue]);

  cxtNoTrans.Text := cxlNoBukti.Text;
  cxdTglTrs.Date := pojh.FieldByName('tanggal').AsDateTime;
  cxtNoSPMB.Text := pojh.FieldByName('no_spmb').AsString;

  // ambil no po pajak
  if pojh.FieldByName('jenis_po').AsString = 'st' then begin
    cxrStandard.Checked := True;
    cxtNoPOPajak.Text := pojh.FieldByName('no_po_pajak').AsString;
    cxsPPN.Value := pojh.FieldByName('ppn').AsFloat;
  end;

  qsupp := OpenRS('select * from tbl_supplier where kode = ''%s''',
            [pojh.FieldByName('kode_supp').AsString]);
  cxLUSupp.Text := qsupp.FieldByName('nama').AsString;
  qsupp.Close;

  qkirim := OpenRS('select * from tbl_alamat_kirim where kode = ''%s''',
            [pojh.FieldByName('kode_alamat_kirim').AsString]);
  cxlAlamatKirim.Text := qkirim.FieldByName('nama').AsString;
  qkirim.Close;

  cxdTglKirim.Date := pojh.FieldByName('tgl_required').AsDateTime;
  cxCmbPembayaran.Text := pojh.FieldByName('pembayaran').AsString;
  cxtKeterangan.Text := pojh.FieldByName('keterangan').AsString;
  nxGrd.ClearRows;

  q := OpenRS('SELECT * FROM tbl_poj_det WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);
  if q.RecordCount > 0 then
    nxGrd.ClearRows;

  i := 0;

  while not q.Eof do begin
    nxGrd.AddRow();
    nxGrd.Cell[nxColNamaJasa.Index,i].AsString := q.FieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQty.Index, i].AsFloat := q.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColSatuan.index, i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.fieldByName('harga').AsFloat;
    nxGrd.Cell[nxColSubtotal.Index,i].AsFloat :=
      q.FieldByName('harga').AsFloat * q.FieldByName('qty').AsFloat;
    nxGrd.Cell[nxColKeterangan.Index,i].AsString := q.FieldByName('keterangan').AsString;
    Inc(i);
    q.Next;
  end;
  q.Close;
  nxGrd.AddRow();

  qsubdet := OpenRS('SELECT * FROM tbl_poj_subdet WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);
  if qsubdet.RecordCount > 0 then begin
    nxGrd2.ClearRows;

    ii := 0;

    while not qsubdet.Eof do begin
      nxGrd2.AddRow();
      nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString := qsubdet.FieldByName('kode_brg').AsString;
      //nama barang
      qbrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
               [nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString]);
      nxGrd2.Cell[nxColNamaBrg2.Index,ii].AsString := qbrg.fieldByName('deskripsi').AsString;
      qbrg.Close;
      nxGrd2.Cell[nxColQty2.Index,ii].AsFloat := qsubdet.fieldByName('qty').AsFloat;
      nxGrd2.Cell[nxColHarga2.Index,ii].AsFloat := qsubdet.fieldByName('harga').AsFloat;
      nxGrd2.Cell[nxColSubtotal2.Index,ii].AsFloat := qsubdet.FieldByName('harga').AsFloat * qsubdet.FieldByName('qty').AsInteger;
      nxGrd2.Cell[nxColKeterangan2.Index,ii].AsString := qsubdet.FieldByName('keterangan').AsString;
      Inc(ii);
      qsubdet.Next;
    end;
  end
  else begin
    nxGrd2.ClearRows;
  end;

  qsubdet.Close;
  nxGrd2.AddRow();

  HitungTotal;
  HitungPPN;
end;

procedure TfrmPurchaseOrderJasa.btnBuatBaruClick(Sender: TObject);
begin
  ClearAll;
  Self.Jenis := '';
end;

procedure TfrmPurchaseOrderJasa.btnCariBrgClick(Sender: TObject);
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
    cxsQtyBrg.SetFocus;
  end;
end;

procedure TfrmPurchaseOrderJasa.btnTambahBrgClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin

  if cxLUBrg.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd2.SelectedColumn;
  ARow := nxGrd2.RowCount - 1;

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end
  else begin
    cxLUBrg.Text := '';

    //nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    nxGrd2.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' + sKodeBrg + '''');

    nxGrd2.Cell[nxColNamaBrg2.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd2.Cell[nxColSatuan2.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd2.Cell[nxColQty2.Index,ARow].AsFloat := cxsQtyBrg.Value;
    nxGrd2.Cell[nxColKeterangan2.Index,ARow].Color := clSkyBlue;
    nxGrd2.Cell[nxColMataUang2.Index,ARow].AsString := 'IDR';

    HitungSubTotal;
    HitungTotal;

    nxGrd2.SelectCell(nxColKodeBrg.Index, nxGrd.LastAddedRow);
    nxGrd2.SelectLastRow();

    q.Close;
    nxGrd2.AddRow();
  end;

end;

function TFrmPurchaseOrderJasa.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd2.Cell[nxColKodeBrg.Index,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TfrmPurchaseOrderJasa.HitungSubTotal;
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    nxGrd.Cell[nxColSubtotal.Index,i].AsFloat := nxGrd.Cell[nxColHarga.Index,i].AsFloat;
  end;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    nxGrd2.Cell[nxColSubtotal2.Index,i].AsFloat :=
      nxGrd2.Cell[nxColQty2.Index,i].AsFloat * nxGrd2.Cell[nxColHarga2.Index,i].AsFloat;
  end;
end;

procedure TfrmPurchaseOrderJasa.btnCariSuppClick(Sender: TObject);
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

procedure TfrmPurchaseOrderJasa.btnCariAlamatKirimClick(Sender: TObject);
var
  f: TfrmCari;
  s: TStringList;
  fKode: TField;
begin
  f := TfrmCari.Create(Self);
  f.Jenis := 'alamat-kirim';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxlAlamatKirim.EditValue := fKode.AsInteger;
  end;
  f.Release;
  cxlAlamatKirim.SetFocus;
end;

procedure TfrmPurchaseOrderJasa.nxGrd2AfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);

var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
begin
  // kolom kode barang
  if ACol = nxColKodeBrg.Index then begin
    nxGrd2.SelectCell(CQTY, Arow);
  end
  // kolom quantity
  else if ACol = nxColQty.Index then begin

    // jika kode barang masih kosong
    if Trim(nxGrd2.Cell[nxColKodeBrg.Index,ARow].AsString) = '' then begin
      nxGrd2.Cell[nxColQty.Index,ARow].AsInteger := 0;
      nxGrd2.SelectCell(nxColKodeBrg.Index,ARow);
    end
    else begin
      HitungSubTotal;
      HitungTotal;

      if ARow < nxGrd2.RowCount - 1 then
        nxGrd2.SelectCell(CSAT,ARow)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;

    end;

  end
  else if ACol = nxColHarga.Index then begin
    if nxGrd2.Cell[nxColQty.Index,Arow].AsFloat = 0 then Abort;
    if nxGrd2.Cell[nxColKodeBrg.Index,ARow].AsString = '' then Abort;

    HitungSubTotal;
    HitungTotal;
  end;
end;

procedure TfrmPurchaseOrderJasa.cxChk2Angka_2Click(Sender: TObject);
var
  chk: TcxCheckBox;
begin
  chk := (Sender as TcxCheckBox);

  if chk.Name = 'cxChk2Angka_2' then begin
    if chk.Checked then begin
      nxColHarga2.FormatMask := '#,##0.00';
      nxColSubtotal2.FormatMask := '#,##0.00';
      cxsTotal2.Properties.DisplayFormat := '#,##0.00';
      cxsTotPPN2.Properties.DisplayFormat := '#,##0.00';
      cxsGrandTotal2.Properties.DisplayFormat := '#,##0.00';
      cxChk3Angka_2.Checked := False;
    end
  end
  else if chk.Name = 'cxChk3Angka_2' then begin
    if chk.Checked then begin
      nxColHarga2.FormatMask := '#,##0.000';
      nxColSubtotal2.FormatMask := '#,##0.000';
      cxsTotal2.Properties.DisplayFormat := '#,##0.000';
      cxsTotPPN2.Properties.DisplayFormat := '#,##0.000';
      cxsGrandTotal2.Properties.DisplayFormat := '#,##0.000';
      cxChk2Angka_2.Checked := False;
    end
  end;

end;

procedure TfrmPurchaseOrderJasa.btnSPMBClick(Sender: TObject);
var
  qsub, q, in_head, in_det, qph : TZQuery;
  sNoTrs : string;
  i : Integer;
begin

  // cek detail barang 
  if chkPODgnBrg.Checked then begin
    if nxGrd.RowCount = 0 then begin
      MsgBox('Detail barang masih kosong.');
      Abort;
    end;
  end;

  if self.Jenis = 'edit' then begin

    if cxtNoSPMB.Text <> '' then begin
      MsgBox('PO Jasa ini sudah pernah di SPMB kan.');
      Abort;
    end;

    q := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
      [cxtNoTrans.Text]);
    if not q.IsEmpty then begin
      MsgBox('SPMB ini sudah dibuatkan surat jalan.');
      q.Close;
      Abort;
    end;
    q.Close;
  end;

  if Self.Jenis = 'edit' then begin
  qsub := OpenRS('select * from tbl_poj_subdet where no_bukti = ''%s''',
                  [cxtNoTrans.Text]);
   if qsub.RecordCount > 0 then begin
      // Simpan SPMB

      try
          if cxtNoSPMB.Text = '' then begin
            sNoTrs := GetLastFak('spmb');
            UpdateFaktur(Copy(sNoTrs,1,9));
          end else begin
            sNoTrs := cxtNoSPMB.Text;
          end;

          dm.zConn.ExecuteDirect('DELETE FROM tbl_spmb_head WHERE no_bukti = ''' + sNoTrs + '''');
          dm.zConn.ExecuteDirect('DELETE FROM tbl_spmb_det WHERE no_bukti = ''' + sNoTrs + '''');

          dm.zConn.StartTransaction;

          in_head := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''', [sNoTrs]);
          in_det := OpenRS('SELECT * FROM tbl_spmb_det WHERE no_bukti = ''%s''', [sNoTrs]);

          in_head.Insert;
          in_head.FieldByName('no_bukti').AsString := sNoTrs;
          in_head.FieldByName('kode_customer').AsString := cxLUSupp.EditValue;
          in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
          in_head.FieldByName('tgl_renc_krm').AsDateTime := cxdTglKirim.Date;
          in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          in_head.FieldByName('user').AsString := Aplikasi.NamaUser;
          in_head.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          in_head.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
          in_head.FieldByName('f_completed').AsString := '0';
          in_head.FieldByName('ongkos_kirim').AsString := '0';

          in_head.Post;

          // simpan in_det
          for i := 0 to nxGrd2.RowCount - 1 do begin
            if nxGrd2.Cell[nxColKodeBrg2.Index,i].AsString = '' then
              Continue;
            in_det.Insert;
            in_det.FieldByName('no_bukti').AsString := sNoTrs;
            in_det.FieldByName('no_so').AsString := '';
            in_det.FieldByName('qty_so').AsInteger := 0;
            in_det.FieldByName('kode_brg').AsInteger := nxGrd2.Cell[nxColKodeBrg2.Index,i].AsInteger;
            q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
                        [nxGrd2.Cell[nxColKodeBrg2.Index,i].Asstring]);
            in_det.FieldByName('satuan').AsString := q.fieldbyname('satuan').AsString;
            q.Close;
            in_det.FieldByName('qty').AsFloat := nxGrd2.Cell[nxColQty2.Index,i].AsFloat;
            in_det.FieldByName('qty_baik').AsInteger := 0;
            in_det.FieldByName('qty_afkir').AsInteger := 0;
            in_det.FieldByName('qty_retur').AsInteger := 0;
            in_det.FieldByName('kode_gdg').AsString := 'G02';
            in_det.FieldByName('f_completed').AsInteger := 0;
            in_det.FieldByName('keterangan').AsString := nxGrd2.Cell[nxColKeterangan2.index,i].AsString;
            //in_det.FieldByName('ket_harga').AsString := nxGrd.Cell[CKET_HRG,i].AsString;
            in_det.Post;
          end;

          qph := OpenRS('SELECT * FROM tbl_poj_head WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

          qph.Edit;
          qph.FieldByName('no_spmb').AsString := sNoTrs;
          qph.Post;
          qph.Close;

          in_head.Close;
          in_det.Close;
          dm.zConn.Commit;
          MsgBox('SPMB sudah disimpan dengan nomer: ' + sNoTrs);
          ClearAll;

          // Cetak SPMB

          inherited;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
          Self.Jenis := '';
        end;
      end;

    end
    else begin
      //MsgBox('Barang tidak ada');
    end;
  end
  else begin
    MsgBox('Data belum disimpan.');
  end;

end;

procedure TfrmPurchaseOrderJasa.btnSJClick(Sender: TObject);
var
  q, sj_det, sj_head,
  brg, brg_det, hist, divisi : TZQuery;
  sNoSJ : string;
  ii : Integer;
begin

  if Self.Jenis = 'edit' then begin

    if cxsTotal2.Value = 0 then begin
      MsgBox('Detail Transaksi barang masih kosong.');
      nxGrd2.SelectCell(0,0);
      nxGrd2.SetFocus;
    end
    else if Trim(cxdTglKirim.Text) = '' then begin
      MsgBox('Tanggal Pengiriman harus diisi.');
      cxdTglKirim.SetFocus;
    end;

    if cxtNoSPMB.Text = '' then begin
        MsgBox('SPMB belum disimpan.');
        Abort;
    end;

    // cek apakah spmb sudah disimpan
{    q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
      [cxtNoSPMB.Text]);
    if q.IsEmpty then begin
      MsgBox('SPMB ini belum disimpan.');
      q.Close;
      Abort;
    end;
    q.Close;
}
    // konfirmasi cetak surat jalan
    ii := QBox(Self,'Cetak Surat Jalan ?' + Chr(10) + Chr(13) +
      'Pastikan SPMB sudah diserahkan ke WHL.','Cetak SJ');
    if ii = IDNO then begin
      Abort;
    end;

    Screen.Cursor := crSQLWait;

    self.Jenis := 'edit';

    // cek apakah spmb sudah di sjkan
    q := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
      [cxtNoSPMB.Text]);

    if q.IsEmpty then begin

      sNoSJ := GetLastFak('sj');
      UpdateFaktur(Copy(sNoSJ,1,7));

      try
        dm.zConn.StartTransaction;

        sj_head := OpenRS('SELECT * FROM tbl_sj_head WHERE no_bukti = ''%s''', [sNoSJ]);
        sj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s''', [sNoSJ]);
        hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoSJ]);

        // Simpan SJ Head
        with sj_head do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoSJ;
          FieldByName('kode_customer').AsString := cxLUSupp.EditValue;
          FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('no_spmb').AsString := cxtNoSPMB.Text;
          FieldByName('user').AsString := Aplikasi.NamaUser;
          FieldByName('user_dept').AsString := aplikasi.UserDept;
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          FieldByName('f_cetak').AsInteger := 1;
          FieldByName('ongkos_kirim').AsFloat := 0;
          Post;
        end;

        // Simpan SJ Detail
        for ii := 0 to nxGrd2.RowCount - 1 do begin
          if nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString = '' then Continue;
          with sj_det do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoSJ;
            FieldByName('kode_brg').AsString := nxGrd2.Cell[nxColKodeBrg2.index,ii].AsString;
            FieldByName('qty').AsFloat := nxGrd2.Cell[nxColQty2.Index,ii].AsFloat;

            brg := OpenRS('select * from tbl_barang where kode = ''%s''',
                   [nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString]);
            FieldByName('satuan').AsString := brg.fieldbyname('satuan').AsString;
            brg.Close;

            FieldByName('qty_so').AsFloat := 0;
            FieldByName('no_so').AsString := '';
            FieldByName('kode_gdg').AsString := 'G02';
            FieldByName('qty_baik').AsFloat := 0;
            FieldByName('qty_afkir').AsFloat := 0;
            FieldByName('qty_retur').AsFloat := 0;
            FieldByName('keterangan').AsString := nxGrd2.Cell[nxColKeterangan2.index,ii].AsString;
            Post;
          end;

          brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
            [nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString]);
          with brg do begin
            if Locate('kode', nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsInteger,[]) then begin
              Edit;
              FieldByName('stok').AsFloat :=
                FieldByName('stok').AsFloat - nxGrd2.Cell[nxColQty2.Index,ii].AsFloat;
              Post;
            end;
          end;
          brg.Close;

          brg_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
            'AND kode_gdg = ''%s''',
            [nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString,'G02']);
          with brg_det do begin
            if Locate('kode_brg;kode_gdg',
              VarArrayOf([nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsInteger,'G02']),[]) then begin
              Edit;
              FieldByName('stok').AsFloat :=
                FieldByName('stok').AsFloat - nxGrd2.Cell[nxColQty2.Index,ii].AsFloat;
              Post;
            end;
          end;
          brg_det.Close;

          with hist do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoSJ;
            FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := nxGrd2.Cell[nxColKodeBrg2.index,ii].AsString;
            FieldByName('tipe').AsString := 'OUT_';
            FieldByName('qty').AsFloat := nxGrd2.Cell[nxColQty2.Index,ii].AsFloat;

            FieldByName('qty_baik').AsFloat := 0;
            FieldByName('qty_afkir').AsFloat := 0;
            FieldByName('qty_retur').AsFloat := 0;

            brg := OpenRS('select * from tbl_barang where kode = ''%s''',
                   [nxGrd2.Cell[nxColKodeBrg2.Index,ii].AsString]);
            FieldByName('satuan').AsString := brg.FieldByName('satuan').AsString;
            brg.Close;
            
            FieldByName('gudang').AsString := 'G02';
            FieldByName('referensi').AsString := '';
            FieldByName('keterangan').AsString := UpperCase(nxGrd2.Cell[nxColKeterangan2.index,ii].AsString);
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := aplikasi.UserDept;
            FieldByName('no_so').AsString := '';
            FieldByName('no_spk').AsString := '';
            FieldByName('no_spmb').AsString := cxtNoSPMB.Text;
            FieldByName('no_ccr').AsString := '';
            FieldByName('no_po').AsString := cxtNoTrans.Text;
            FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
            FieldByName('dept').AsString := aplikasi.UserDept;
            divisi := OpenRS('select * from tbl_user where nama = ''%s''',
                      [aplikasi.NamaUser]);
            FieldByName('divisi').AsString := divisi.FieldByName('divisi').AsString;
            divisi.Close;
            Post;
          end;
        end;

        // update status SPMB
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
          'SET f_completed = 1 WHERE no_bukti = ''' + cxtNoSPMB.Text + '''');

        sj_head.Close;
        sj_det.Close;
        hist.Close;

        dm.zConn.Commit;

        Screen.Cursor := crDefault;
        // Buka Laporan surat Jalan


        MsgBox('Surat Jalan sudah disimpan dengan nomer: ' + sNoSJ);
      except
          on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;

    end
    else begin
      //if aplikasi.GetWewenang('CetalUlangSJ') = '1' then begin
        //fLap := TfrmLapUmum.Create(Self);
        //with fLap do begin
        //  zqrSJ.Close;
        //  zqrSJ.SQL.Add('WHERE no_bukti = ''' + cxtNoSJ.Text + '''');
        //  zqrSJ.Open;
        //  rptSJ.ShowReport(True);
        //  Release;
        //end;
        Screen.Cursor := crDefault;
        MsgBox('Buka Laporan');
      //end;
    end;

    q.Close; // tutup recordset pengecekan spmb apakah sudah di sjkan
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPurchaseOrderJasa.cxLUSuppPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',
    [zqrSupp.FieldByName('kode').AsString]);
  cxCmbPembayaran.Text := q.FIeldByName('pembayaran').AsString;
  q.Close;
end;

procedure TfrmPurchaseOrderJasa.cxrNonPajakClick(Sender: TObject);
var
  chk: TcxRadioButton;
  q: TZQuery;
begin
  inherited;
  chk := (Sender as TcxRadioButton);

  if (chk.Name = 'cxrStandard') then begin
    if Self.Jenis = 'edit' then begin
      q := OpenRS('SELECT no_po_pajak FROM tbl_poj_head WHERE no_bukti = ''%s''',
        [cxtNoTrans.Text]);
      if q.FieldByName('no_po_pajak').IsNull then
        cxtNoPOPajak.Text := GetLastNoPOPajak()
      else
        cxtNoPOPajak.Text := q.FieldByName('no_po_pajak').AsString;
    end
    else begin
      cxtNoPOPajak.Text := GetLastNoPOPajak();
    end;
  end
  else if chk.Name = 'cxrNonPajak' then begin
    cxtNoPOPajak.Text := '';
  end;
end;

procedure TfrmPurchaseOrderJasa.HitungPPN;
var
  i: integer;
  subtotal, total: real;
begin
  try
    if cxsPPN.Value = 0 then Abort;
    subtotal := 0;
    for i := 0 to nxGrd.RowCount - 1 do begin
      subtotal := subtotal + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
    end;
    if subtotal > 0 then begin
      total := (cxsPPN.Value / 100) * subtotal;
      cxsTotalPPN.Value := total;
    end;
    cxsGrandTotal.Value := cxsTotalPPN.Value + cxsTotalharga.Value;
  except
  end;

end;

end.
