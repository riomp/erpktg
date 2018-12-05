unit unFrmPurchaseOrderKTG;

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
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckListBox, cxCheckBox,
  cxMemo, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTP, unFrmWait, IdSMTPBase,
  IdMessage, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdText, IdAttachmentFile, cxRadioGroup, ComCtrls, frxClass,
  OleCtrls, SHDocVw, cxGroupBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid,
  cxCheckGroup;

type
  TfrmPurchaseOrderKTG = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    btnTambah: TButton;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    cxLabel8: TcxLabel;
    dsSupp: TDataSource;
    zqrSupp: TZReadOnlyQuery;
    cxLUSupp: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxdTglKirim: TcxDateEdit;
    cxLabel13: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    cxmTemplate: TcxMemo;
    chkComplete: TcxCheckBox;
    cxLabel7: TcxLabel;
    cxsQty: TcxSpinEdit;
    btnCariSupp: TButton;
    pnlMemo: TPanel;
    btnSimpanKet: TButton;
    btnBatalMemo: TButton;
    cxMemo: TcxMemo;
    idSMTP: TIdSMTP;
    cxLabel9: TcxLabel;
    cxCmbPembayaran: TcxComboBox;
    btnCariBrg: TButton;
    zqrNoFOBJ: TZReadOnlyQuery;
    dsNoFOBJ: TDataSource;
    cxLabel14: TcxLabel;
    cxlAlamatKirim: TcxLookupComboBox;
    zqrAlmKirim: TZReadOnlyQuery;
    dsAlmKirim: TDataSource;
    btnCariAlamatKirim: TButton;
    btnCetak: TButton;
    btnCetakPOInternal: TButton;
    cxtNoFOBJ: TcxTextEdit;
    zqrSatuan: TZReadOnlyQuery;
    dsSatuan: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxLabel19: TcxLabel;
    cxlDivisi: TcxLookupComboBox;
    cxLabel18: TcxLabel;
    cxtUser: TcxTextEdit;
    zrDivisi: TZReadOnlyQuery;
    dsDivisi: TDataSource;
    cxLabel4: TcxLabel;
    cxlNoPP: TcxLookupComboBox;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTbl: TcxGridTableView;
    cxColKodeBrg: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColQtyPesan: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColHarga: TcxGridColumn;
    cxColTax: TcxGridColumn;
    cxColProject: TcxGridColumn;
    cxColSubtotaltax: TcxGridColumn;
    zqrPP: TZReadOnlyQuery;
    dsPP: TDataSource;
    zqrProject: TZReadOnlyQuery;
    dsProject: TDataSource;
    cxColNoProject: TcxGridColumn;
    zqrTax: TZReadOnlyQuery;
    dsTax: TDataSource;
    cxColSubTotal: TcxGridColumn;
    cxColQtyPP: TcxGridColumn;
    cxColQtyPO: TcxGridColumn;
    Label1: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxCheckGroup1: TcxCheckGroup;
    cxtCritical: TcxMemo;
    cxColKeterangan: TcxGridColumn;
    cxLabel2: TcxLabel;
    cxCurr: TcxComboBox;
    cxLabel5: TcxLabel;
    cxsRate: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxCmbKategoriSOPropertiesChange(Sender: TObject);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxsQtyKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariSuppClick(Sender: TObject);
    procedure pnlMemoExit(Sender: TObject);
    procedure btnBatalMemoClick(Sender: TObject);
    procedure idSMTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure cxsPPNPropertiesEditValueChanged(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxlNoFOBJPropertiesEditValueChanged(Sender: TObject);
    procedure cxrStandardClick(Sender: TObject);
    procedure btnCariAlamatKirimClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnCetakPOInternalClick(Sender: TObject);
    procedure cxLUSuppPropertiesEditValueChanged(Sender: TObject);
    procedure cxlNoPPPropertiesChange(Sender: TObject);
    procedure cxTblDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxColTaxPropertiesChange(Sender: TObject);
    procedure cxColSubtotalPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTblFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    mUserDept: string;
    mLstDaftarEmail: TStringList;
    fw: TFrmWait;
    f_app_po: Boolean;
    mNoPO: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure ResetCheckEmail;
    procedure SendEmailPO(sNoBukti: string);
    function GenerateHTML(sNoBukti: string) : string;
    procedure GetDaftarEmail;
    procedure HitungSubTotal;
  public
    property UserDept: string read mUserDept write mUserDept;
    procedure CreateParams(var Params: TCreateParams); override;
    property NoPO: string read mNoPO write mNoPO;
  end;

var
  frmPurchaseOrderKTG: TfrmPurchaseOrderKTG;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unThreadKirimEmail,
  unFrmLapUmum, unAplikasi, unFrmDaftarPO;

const
  CHAPUS: integer = 0;
  CNO : integer = 1;
  CKD_BRG : integer = 2;
  CNM_BRG : integer = 3;
  CQTY : integer = 4;
  CSAT : Integer = 5;
  CSTOK_G02 : Integer = 6;
  CKET : Integer = 7;
  CKET2 : Integer = 8;

{$R *.dfm}

procedure TfrmPurchaseOrderKTG.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmPurchaseOrderKTG.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TStringList;
  i: Integer;
  tx: TcxCheckListBoxItem;
  bEditSO: boolean;
begin
  inherited;
  Aplikasi.log_('PO');
  
  unTools.OpenAllQ(Self);

  cxdTglTrs.Date := Aplikasi.TanggalServer;

  //cxdTglTrs.Properties.ReadOnly := Not aplikasi.UbahTglTrs;



  {
  bEditSO := False;
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nm_comp = ''%s'' ' +
    'AND nama = ''%s''',
    ['EditSalesOrder', aplikasi.NamaUser]);
  if not q.IsEmpty then
    if q.FieldByName('wwn').AsInteger = 1 then
      bEditSO := True;

  cxlNoBukti.Visible := bEditSO;
  btnEdit2.Visible := bEditSO;
  q.Close;
  }

  cxCmbPembayaran.Properties.Items.Add('');
  cxCmbPembayaran.Properties.Items.Add('7 (Tujuh) Hari');
  cxCmbPembayaran.Properties.Items.Add('14 (Empat Belas) Hari');
  cxCmbPembayaran.Properties.Items.Add('21 (Dua Puluh Satu) Hari');
  cxCmbPembayaran.Properties.Items.Add('30 (Tiga Puluh) Hari');
  cxCmbPembayaran.Properties.Items.Add('45 (Empat Puluh Lima) Hari');
  cxCmbPembayaran.Properties.Items.Add('COD (Cash On Delivery)');
  cxCmbPembayaran.Properties.Items.Add('CBD (Cash Before Delivery)');
  cxCmbPembayaran.ItemIndex := 0;

  lst := TStringList.Create;

  Self.Jenis := 'tambah';
  mLstDaftarEmail := TStringList.Create;

  pnlMemo.Left := 450;
  pnlMemo.Top := 175;

  f_app_po := False;
  zqrProject.Open;
  zrDivisi.Open;
  zqrSupp.Open;
  zqrNoFOBJ.Open;
  zqrNoBukti.Open;
  zqrTax.Open;

  cxtNoTrans.Text := GetLastFak('po');

  cxsRate.Value := 1 ;
end;

procedure TfrmPurchaseOrderKTG.btnBaruClick(Sender: TObject);
var
  //f : TfrmReceivePO ;
  i : Integer;
  qh : TZQuery ;
begin
  inherited;
  {
//  cxtNOTrans.Text := GetLastFak('brg_in');
 // Self.Jenis := 'tambah';
 qh := OpenRS('select a.no_bukti,a.tanggal,a.no_po,b.kode_brg,c.deskripsi,b.qty_po,b.qty,b.satuan ' +
            'from tbl_spbb_head a join tbl_spbb_det b on a.no_bukti=b.no_bukti and a.`no_po`=b.no_po ' +
          'join tbl_barang c on b.kode_brg=c.kode WHERE a.no_po=''%s'' and b.kode_brg=''%s''',[cxtNoTrans.Text,label1.Caption]);

  f := TfrmReceivePO.Create(Self);
  f.cxtNoBukti.Text := cxtNoTrans.Text;
  f.Label5.Caption := Label1.Caption ;
  f.cxsQty.EditValue := cxSpinEdit1.EditValue;


     while not qh.Eof do begin
        with f.cxTblPO.DataController do begin
          BeginUpdate;
          i := AppendRecord;
            Values[i, f.cxColTgl.Index] := qh.FieldByName('tanggal').AsDateTime;
            Values[i, f.cxColNoLPB.Index] :=  qh.FieldByName('no_bukti').AsString;
            Values[i, f.cxColSatuan.Index] :=  qh.FieldByName('satuan').AsString;
            Values[i, f.cxColQtyLPB.Index] :=  qh.FieldByName('qty').AsFloat;
          EndUpdate;
        end;
        qh.Next;
        end;
        qh.Close ;
   if VarIsNull(f.cxTblPO.DataController.Summary.FooterSummaryValues[0]) then  f.cxSpinEdit1.EditValue := f.cxsQty.EditValue else
  f.cxSpinEdit1.EditValue := (f.cxsQty.EditValue - f.cxTblPO.DataController.Summary.FooterSummaryValues[0]);
  f.ShowModal;
  }
end;

function TfrmPurchaseOrderKTG.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
begin

end;

procedure TfrmPurchaseOrderKTG.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  {
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
  end;
  cxsTotal.Value := tmpQty;
  cxsTotPPN.Value := (cxsPPN.Value / 100 * cxsTotal.Value);
  cxsGrandTotal.Value := cxsTotal.Value + cxsTotPPN.Value;

  tmp := 0;
  tmpQty := 0;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd2.Cell[nxColSubtotal.Index,i].AsFloat;
  end;
  cxsTotal2.Value := tmpQty;
  cxsTotPPN2.Value := (cxsPPN.Value / 100 * cxsTotal2.Value);
  cxsGrandTotal2.Value := cxsTotal2.Value + cxsTotPPN2.Value;
  }
end;

procedure TfrmPurchaseOrderKTG.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;

  cxLUSupp.Text := '';
  cxdTglKirim.Text := '';
  cxtKeterangan.Text := '';
  cxCmbPembayaran.ItemIndex := 0;
  Self.Jenis := 'tambah';

  cxdTglTrs.Date := Aplikasi.TanggalServer;
  mLstDaftarEmail.Clear;
  cxlAlamatKirim.Text := '';
   cxtCritical.Text := '';

  btnCariBrg.Enabled := True;
  cxsQty.Enabled := False;
  btnTambah.Enabled := True;

  zqrNoBukti.Close;
  zqrNoBukti.Open;
  zqrNoFOBJ.Close;
  zqrNoFOBJ.Open;
  zqrNoFOBJ.Close;
  zqrNoFOBJ.Open;

  chkComplete.Checked := False;
  
end;

procedure TfrmPurchaseOrderKTG.btnBatalClick(Sender: TObject);
var
  i : Integer;
begin
  inherited;
  ClearAll;

  Self.Jenis := '';
  cxlNoPP.Text := '';
  cxtNoTrans.Text := GetLastFak('po');
  cxlNoBukti.Text := '';
  Self.Jenis := 'tambah';
  zqrNoBukti.Close;
  zqrNoBukti.Open;
  f_app_po := False;
  cxtNoFOBJ.Visible := False;

  with cxTbl.DataController do begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          DeleteRecord(0);
          RefreshExternalData;
      finally
          EndUpdate
      end
  end;


end;

procedure TfrmPurchaseOrderKTG.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, in_det_e, barang,
  barang_det, hist, tbl_mo, tbl_tmp: TZTable;
  rs_fobj :TZQuery;
  sNoTrs, sNoTrs2, sNoMO, sJenisPO, sNoPOPajak: string;
  i: integer;
  b: Boolean;
  q, qCekMO, qmu: TZQuery;
begin


  if cxLUSupp.Text = '' then begin
      MsgBox('Nama Supplier harus diisi.');
      cxLUSupp.SetFocus;
      Abort;
  end;

  if cxdTglKirim.Text = '' then begin
    MsgBox('Tanggal kirim harus diisi.');
    cxdTglKirim.SetFocus;
    Abort;
  end
  else if cxCmbPembayaran.Text = '' then begin
    MsgBox('Jenis pembayaran harus diisi.');
    cxCmbPembayaran.SetFocus;
    Abort;
  end
  else if cxlAlamatKirim.Text = '' then begin
    MsgBox('Pilih alamat kirim.');
    cxlAlamatKirim.SetFocus;
    Abort;
  end
  else begin

    // cek qty
    b := False;
    for i := 0 to cxTbl.DataController.RowCount - 1 do begin
      if cxTbl.DataController.Values[i, cxColHarga.Index] = 0 then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Masih ada kolom Harga yang masih kosong.');
      Abort;
    end;

    // cek tanggal po apakah lebih kecil dari tgl stok awal
    {
    if cxdTglTrs.Date < Aplikasi.TglStkAwal then begin
      MsgBox('Tanggal Transaksi lebih kecil dari tanggal stok awal.');
      cxdTglTrs.SetFocus;
      Abort;
    end;
    }

    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);
    if not q.IsEmpty then begin
      if q.FieldByName('f_completed').AsInteger = 1 then begin
        MsgBox('PO ini sudah komplit / selesai. Tidak bisa di edit.');
        q.Close;
        Abort;
      end;
    end;
    q.Close;

    try
      if Self.Jenis = 'edit' then begin
        sNoTrs := cxtNoTrans.Text;
      end
      else begin
        sNoTrs := GetLastFak('po');
        UpdateFaktur(Copy(sNoTrs,1,7));
      end;

      dm.zConn.StartTransaction;

      if Self.Jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_po_head WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_po_det_e WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
      end;

      in_head := OpenTbl('tbl_po_head');
      in_det := OpenTbl('tbl_po_det');
      in_det_e := OpenTbl('tbl_po_det_e');

      rs_fobj := OpenRS('select * from tbl_fobj_head where no_bukti = ''' + cxlNoPP.Text + '''');
      if not rs_fobj.Eof then begin
        rs_fobj.Edit;
        rs_fobj.FieldByName('f_po').AsString := '1';
        rs_fobj.Post;
      end;
      rs_fobj.Close;


      in_head.Insert;
      in_head.FieldByName('no_bukti').AsString := sNoTrs;
      in_head.FieldByName('no_fobj').AsString := cxlNoPP.Text;
      in_head.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('kode_supp').AsString := zqrSupp.FieldByName('kode').AsString;
      in_head.FieldByName('tgl_required').AsDateTime := cxdTglKirim.Date;
      in_head.FieldByName('kode_alamat_kirim').AsString := cxlAlamatKirim.EditValue;
      in_head.FieldByName('currency').AsString := cxCurr.Text;
      in_head.FieldByName('rate').AsFloat := cxsRate.EditValue;

      sJenisPO := 'st';

      in_head.FieldByName('jenis_po').AsString := sJenisPO;
      in_head.FieldByName('keterangan').AsString := cxtKeterangan.Text;
      in_head.FieldByName('note').AsString := cxtCritical.Text;
      in_head.FieldByName('pembayaran').AsString := cxCmbPembayaran.Text;
      in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
      in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      in_head.FieldByName('user').AsString := Aplikasi.NamaUser;
      in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
      

      if self.Jenis = 'edit' then
        in_head.FieldByName('f_revisi').AsInteger := 1
      else
        in_head.FieldByName('f_revisi').AsInteger := 0;

      if Self.Jenis = 'edit' then begin
        in_head.FieldByName('user_edit').AsString := aplikasi.NamaUser;
        in_head.FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
        in_head.FieldByName('host').AsString := GetHostName2;
        if f_app_po then
          in_head.FieldByName('f_approval').AsInteger := 1;
      end;

      in_head.FieldByName('kode_alamat_kirim').AsInteger := cxlAlamatKirim.EditValue;
      in_head.FieldByName('divisi').AsString := cxlDivisi.EditValue ;
      in_head.FieldByName('user_request').AsString := cxtUser.Text ;

      if sJenisPO = 'st' then begin
        if self.Jenis <> 'edit' then begin
          sNoPOPajak := GetLastNoPOPajak;
          UpdateFaktur(Copy(sNoPOPajak,1,7));
          in_head.FieldByName('no_po_pajak').AsString := sNoPOPajak;
        end
        else begin

        end;
      end;

      in_head.Post;

      // simpan in_det
      for i := 0 to cxTbl.DataController.RowCount - 1 do begin

        in_det.Insert;

        in_det.FieldByName('no_bukti').AsString := sNoTrs;
        in_det.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.Index];
        in_det.FieldByName('qty').AsFloat := cxTbl.DataController.Values[i, cxColQtyPesan.Index];
        in_det.FieldByName('satuan').AsString := cxTbl.DataController.Values[i, cxColSatuan.Index];
        in_det.FieldByName('harga').AsFloat := cxTbl.DataController.Values[i, cxColHarga.Index];
        in_det.FieldByName('sub_total').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.Index];
        in_det.FieldByName('sub_total_tax').AsFloat := cxTbl.DataController.Values[i, cxColSubtotaltax.Index];
        in_det.FieldByName('mata_uang').AsString := cxCurr.Text;
        in_det.FieldByName('nilai_tukar').AsFloat := cxsRate.EditValue;
        if not VarIsNull(cxTbl.DataController.Values[i, cxColKeterangan.Index]) then
        in_det.FieldByName('keterangan').AsString := cxTbl.DataController.Values[i, cxColKeterangan.Index]
        else
        in_det.FieldByName('keterangan').AsString := '';
        if VarIsNull(cxtbl.DataController.Values[i, cxcoltax.index]) = True then begin
          in_det.FieldByName('pajak').AsString := '';
        end else begin
          in_det.FieldByName('pajak').AsString := cxTbl.DataController.Values[i, cxColTax.index];
        end;

        if VarIsNull(cxTbl.DataController.Values[i, cxColProject.Index]) = True then begin
          in_det.FieldByName('project').AsString := ''
        end else begin
          in_det.FieldByName('project').AsString := VarToStr(cxTbl.DataController.Values[i, cxColProject.Index]);
        end;

        in_det.Post;

      end;

      in_head.Close;
      in_det.Close;

      dm.zConn.Commit;

      Self.Jenis := '';
      MsgBox('Transaksi Purchase Order sudah disimpan dengan nomer: ' + sNoTrs);
      with cxTbl.DataController do begin
        BeginUpdate;
        try
          while RecordCount > 0 do
            DeleteRecord(0);
        finally
            EndUpdate
        end
      end;
      btnBatalClick(nil);
      mLstDaftarEmail.Clear;

      inherited;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
        Self.Jenis := '';
      end;
    end;

  end;
   close;
end;

procedure TfrmPurchaseOrderKTG.btnHapusClick(Sender: TObject);
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

procedure TfrmPurchaseOrderKTG.btnTambahClick(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  {
  if cxLUBrg.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  if not CekKodeBrg(sKodeBrg, ARow) then begin
    MsgBox('Kode barang ini sudah ada.');
    Abort;
  end
  else begin
    cxLUBrg.Text := '';

    nxGrd.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    nxGrd2.Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''' + sKodeBrg + '''');

    nxGrd.Cell[nxColNamaBrg.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('unitid').AsString;
    nxGrd.Cell[nxColQty.Index,ARow].AsFloat := cxsQty.Value;
    nxGrd.Cell[nxColKeterangan.Index,ARow].Color := clSkyBlue;
    nxGrd.Cell[nxColMataUang.Index,ARow].AsString := 'IDR';

    nxGrd2.Cell[nxColNamaBrg.Index,ARow].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd2.Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    nxGrd2.Cell[nxColQty.Index,ARow].AsFloat := cxsQty.Value;
    //nxGrd2.Cell[nxColKeterangan.Index,ARow].Color := clSkyBlue;
    nxGrd2.Cell[nxColMataUang.Index,ARow].AsString := 'IDR';

    q.Close;
    q := OpenRS('SELECT * FROM tbl_barang_supp WHERE kode_supp = ''%s'' ' +
      'AND kode_brg = ''%s''',
      [cxLUSupp.EditValue, nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
    if not q.IsEmpty then begin
      nxGrd.Cell[nxColHarga.Index,ARow].AsFloat := q.FieldByName('harga').AsFloat;
      nxGrd2.Cell[nxColHarga.Index,ARow].AsFloat := q.FieldByName('harga').AsFloat;
    end;
    q.Close;

    HitungSubTotal;
    HitungTotal;
    
    nxGrd.SelectCell(nxColKodeBrg.Index, nxGrd.LastAddedRow);
    nxGrd.SelectLastRow();

    q.Close;

    nxGrd.AddRow();
    nxGrd2.AddRow();
  end;
  }
end;

procedure TfrmPurchaseOrderKTG.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
  t, t1, t2, t3 : Real;
begin

  cxLUSupp.EditValue := '';

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';


  q := OpenRS('SELECT a.no_bukti, a.no_fobj, a.tanggal, a.kode_supp, a.f_completed, a.kode_alamat_kirim, b.alamat, a.pembayaran, a.user, a.user_dept, a.tgl_required, a.divisi, ' +
      'c.kode_brg, d.deskripsi, e.nama, e.kontak, c.qty, c.satuan, c.harga, c.keterangan, c.pajak, c.mata_uang, c.nilai_tukar, c.lokasi, a.f_approval, a.user_request, c.kondisi, c.qty * c.harga AS total ' +
      'FROM tbl_po_head a ' +
      'LEFT JOIN tbl_alamat_kirim b ON a.kode_alamat_kirim = b.kode ' +
      'left join tbl_supplier e on a.kode_supp = e.kode ' +
      'LEFT JOIN tbl_po_det c on a.no_bukti = c.no_bukti ' +
      'LEFT JOIN tbl_barang d on c.kode_brg = d.kode ' +
      'WHERE a.no_bukti = ''%s''', [cxlNoBukti.Text]);


  if q.FieldByName('f_completed').AsInteger   = 1 then begin
    chkComplete.Checked := True;
    end
  else begin
    chkComplete.Checked := False;
  end;
  cxlNoPP.EditText := q.fieldbyname('no_fobj').AsString;
  cxtNoTrans.Text := q.fieldbyname('no_bukti').AsString;
  cxlAlamatKirim.EditValue := q.FieldByName('kode_alamat_kirim').AsString;
  cxtKeterangan.Text := q.fieldbyname('kontak').AsString;
  cxLUSupp.Text := q.fieldbyname('nama').AsString;
  cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
  cxCmbPembayaran.Text := q.FieldByName('pembayaran').AsString;
  cxlDivisi.EditValue :=  q.FieldByName('divisi').AsString;
  cxtUser.Text := q.FieldByName('user_request').AsString ;


  if q.FieldByName('f_approval').AsInteger = 1 then
    f_app_po := True
  else
    f_app_po := False;

  while not q.Eof do begin
    with cxTbl.DataController do begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          DeleteRecord(0);
          cxTbl.DataController.ClearDetails;
      finally
          EndUpdate
      end
    end;

    q.First;
    while not q.Eof do begin
      with cxTbl.DataController do begin
        BeginUpdate;
        i := AppendRecord;
        Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
        Values[i, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
        Values[i, cxColQtyPesan.Index] := q.FieldByName('qty').AsFloat;
        Values[i, cxColSatuan.Index] := q.FieldByName('satuan').AsString;
        Values[i, cxColHarga.Index] := q.fieldbyname('harga').AsFloat;
        values[i, cxcoltax.index] := q.fieldbyname('pajak').asstring;
        if Values[i, cxColTax.Index] = 'PPN' then begin
          t := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index] * 110/100;
          t1 := t * 2/100;
          Values[i, cxColSubtotal.Index] := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index];
          Values[i, cxColSubtotaltax.Index] := t + t1;
        end else begin
          Values[i, cxColSubtotal.Index] := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index];
          Values[i, cxColSubtotaltax.Index] := 0;
        end;
        EndUpdate;
      end;
      q.Next;
    end;  
  end;


  q.Close;
  
  q := OpenRS('SELECT * FROM v_po_det WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

  i := 0;

  {
  while not q.Eof do begin
    i := nxGrd.AddRow();
    nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd.Cell[nxColQty.Index,i].AsString := q.FieldByName('qty').AsString;
    nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
    nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
    nxGrd.Cell[nxColSubtotal.Index,i].AsFloat :=
      q.FieldByName('qty').AsFloat * q.FieldByName('harga').AsFloat;
    nxGrd.Cell[nxColKeterangan.Index,i].AsString :=
      q.FieldByName('keterangan').AsString;  

    nxGrd2.AddRow();
    nxGrd2.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
    nxGrd2.Cell[nxColNamaBrg.Index,i].AsString := q.fieldByName('deskripsi').AsString;
    nxGrd2.Cell[nxColQty.Index,i].AsString := q.FieldByName('qty').AsString;
    nxGrd2.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
    nxGrd2.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
    nxGrd2.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
    nxGrd2.Cell[nxColSubtotal.Index,i].AsFloat :=
      q.FieldByName('qty').AsFloat * q.FieldByName('harga').AsFloat;
    nxGrd2.Cell[nxColKeterangan.Index,i].AsString :=
      q.FieldByName('keterangan').AsString;
      
    q.Next;
  end;
  q.Close;
  }

  HitungTotal;
end;

procedure TfrmPurchaseOrderKTG.cxCmbKategoriSOPropertiesChange(Sender: TObject);
var
  sKat: string;
  i: Integer;
  tx: TcxCheckListBoxItem;
  cmb : TcxComboBox;
begin
  {
  sKat := cxCmbKategoriSO.Text;
  cmb := (Sender as TcxComboBox);

  if cmb.Name = 'cxCmbKategoriSO' then begin
    ResetCheckEmail;
    if cxCmbKategoriSO.ItemIndex = 0 then begin
      cxCmbKategoriSO2.ItemIndex := 0;
      cxCmbKategoriSO3.ItemIndex := 0;
    end;
  end
  else if cmb.Name = 'cxCmbKategoriSO2' then begin
    if cxCmbKategoriSO.Text = '' then begin
      cxCmbKategoriSO2.Text := '';
      cxCmbKategoriSO.SetFocus;
      Abort;
    end;
    if cxCmbKategoriSO.ItemIndex = cxCmbKategoriSO2.ItemIndex then begin
      cxCmbKategoriSO2.ItemIndex := 0;
      Abort;
    end;
  end
  else if cmb.Name = 'cxCmbKategoriSO3' then begin
    if cxCmbKategoriSO.Text = '' then begin
      cxCmbKategoriSO3.Text := '';
      cxCmbKategoriSO.SetFocus;
      Abort;
    end;
    if cxCmbKategoriSO2.Text = '' then begin
      cxCmbKategoriSO3.Text := '';
      cxCmbKategoriSO2.SetFocus;
      Abort;
    end;
    if cxCmbKategoriSO.ItemIndex = cxCmbKategoriSO3.ItemIndex then begin
      cxCmbKategoriSO3.ItemIndex := 0;
      Abort;
    end;
    if cxCmbKategoriSO2.ItemIndex = cxCmbKategoriSO3.ItemIndex then begin
      cxCmbKategoriSO3.ItemIndex := 0;
      Abort;
    end;
  end;
  i := (Sender as TcxComboBox).ItemIndex;

  if i = 1 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'nina@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
  end
  else if i = 2 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'nina@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 3 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'nina@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 4 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'bayu@sdp.mail';
  end
  else if i = 5 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
  end
  else if i = 6 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 7 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'etik@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'isjayatno@sdp.mail';
  end
  else if i = 8 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 9 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'faiz@sdp.mail';
  end
  else if i = 10 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'alex@sdp.mail';
    //tx := cxChkLstEmail.Items.Add;
    //tx.Text := 'bayu@sdp.mail';
  end
  else if i = 11 then begin
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'alex@sdp.mail';
  end
  else if i = 12 then begin
    cxChkLstEmail.Items.Clear;
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'boby@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'vivi@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'natalia@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'enny@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'inge@sdp.mail';
    tx := cxChkLstEmail.Items.Add;
    tx.Text := 'sunanto@sdp.mail';
    //tx := cxChkLstEmail.Items.Add;
    //tx.Text := 'marion@sdp.mail';
  end;
  }
end;

procedure TfrmPurchaseOrderKTG.ResetCheckEmail;
var
  lst: TStringList;
  tx: TcxCheckListBoxItem;
  i: Integer;
begin
  
  lst := TStringList.Create;
  //lst.Add('boby@sdp.mail');
  //lst.Add('vivi@sdp.mail');
  //lst.Add('felgitotema@sdp.mail');
  //lst.Add('ferry@sdp.mail');
  //lst.Add('sunanto@sdp.mail');
  //lst.Add('marion@sdp.mail');
  //lst.Add('fredi@sdp.mail');
  //lst.Add('enny@sdp.mail');

  for i := 0 to lst.Count - 1 do begin
    
  end;
end;

procedure TfrmPurchaseOrderKTG.SendEmailPO(sNoBukti: string);
var
  em: ThreadKirimEmail;
  lst0, lstFile, lst: TStringList;
  i : Integer;
  sTmp: string;
  f: TfrmWait;
  sNamaFile : string;
  email : TIdMessage;
  bdy: TIdText;
  q: TZQuery;
begin
  {
  if cxChkLstEmail.Items.Count = 0 then
    ShowMessage('Email penerima masih kosong.')
  else begin
    try

    idSMTP.AuthType := satNone;
    idSMTP.Host := Aplikasi.ServerSMTP;
    idSMTP.Port     := 25;
    idSMTP.UserName := aplikasi.EmailUser;
    idSMTP.Password := '';

    GetDaftarEmail;

    email := TIdMessage.Create(nil);
    try
      email.ContentType := 'multipart/mixed';
      email.From.Address := aplikasi.EmailUser;

      if aplikasi.debug then
        email.Recipients.EMailAddresses := 'yosef@sdp.mail'
      else
        email.Recipients.EMailAddresses := mLstDaftarEmail.CommaText + ',' + aplikasi.EmailUser;

      //email.Subject := cxtSubject.Text;
      q := OpenRS('SELECT * FROM v_po_head WHERE no_bukti = ''%s''',
        [sNoBukti]);
      if self.Jenis = 'tambah' then
        email.Subject := 'PO Baru (' + sNoBukti + ' - ' + q.FieldByName('nama').AsString + ')'
      else if self.Jenis = 'edit' then
        email.Subject := 'PO Revisi (' + sNoBukti + ' - ' + q.FieldByName('nama').AsString + ')';
      q.Close;

      //if Aplikasi.debug then
      //  em.EmailSend := 'yosef@sdp.mail'
      //else
      //  em.EmailSend := mLstDaftarEmail.CommaText + ',' + aplikasi.EmailUser;

      //em.Subject := cxtSubject.Text;
      //lstFile := TStringList.Create;
      //sNamaFile := GenerateHTML(sNoBukti);
      //lstFile.Add(sNamaFile);
      //em.LstAttachment := lstFile;

      lst := TStringList.Create;
      lst.Add('<html>');
      lst.Add('<head>');
      lst.Add('</head>');
      lst.Add('<body>');
      lst.Add('</br>');
      cxmIsiEmail.Text := StringReplace(cxmIsiEmail.Text, #13, '<br/>', [rfReplaceAll]);
      lst.Add('<font color="#FF0000" size="15">' + cxmIsiEmail.Text + '</font>');
      lst.Add('</br>');
      lst.Add('<font color="#666666"><b><i>Ada PO baru ditambahkan dalam database. Mohon agar di cek dan ditindaklanjuti. Terima kasih.</br>');
      lst.Add('"SAVE PAPER - THINK BEFORE YOU PRINT!"</i></b></font>');

      lst.Add('</br>');
      lst.Add('</body>');
      lst.Add('</html>');

      bdy := TIdText.Create(email.MessageParts, lst);
      bdy.ContentType := 'text/html';

      lstFile := TStringList.Create;
      sNamaFile := GenerateHTML(sNoBukti);
      lstFile.Add(sNamaFile);
      if lstFile.Count > 0 then begin
        for i := 0 to lstFile.Count - 1 do begin
          TIdAttachmentFile.Create(email.MessageParts, lstFile.Strings[i]);
        end;
      end;

      idSMTP.Connect;
      try
        idSMTP.Send(email);
      finally
        idSMTP.Disconnect;
      end;
    finally
      email.Free;
    end;
    DeleteFile(sNamaFile);

    except
      on E: Exception do begin
        ShowMessage('Error: ' + E.Message);
      end;
    end;
  end;
  }
end;

function TfrmPurchaseOrderKTG.GenerateHTML(sNoBukti: string) : string;
var
  lst: TStringList;
  sMemo: string;
  i: Integer;
  ibQ, qCust, qDet: TZQuery;
begin
  {
  mm.Lines.Clear;
  mm.Lines.Text := cxmTemplate.Text;

  ibQ := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
    [sNoBukti]);

  mm.Text := StringReplace(mm.Text,'%tgl_order%',
    FormatDateTime('dd-mm-yyy', ibQ.FieldByName('tanggal').AsDateTime),[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%tglkirim%',
    FormatDateTime('dd-mm-yyy', ibQ.FieldByName('tgl_required').AsDateTime),[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%no_so%',
    ibQ.FieldByName('no_bukti').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text, '%po%',
    ibQ.FieldByName('po#').AsString,[rfReplaceAll]);
  mm.Text := StringReplace(mm.Text, '%sc%',
    ibQ.FieldByName('sc#').AsString,[rfReplaceAll]);

  qCust := OpenRS('SELECT * FROM tbl_customer WHERE kode = ''%s''',
    [ibQ.FieldByName('kode_customer').AsString]);
  mm.Text := StringReplace(mm.Text,'%perusahaan%',
    qCust.FieldByName('nama').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%alamat%',
    qCust.FieldByName('alamat').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%kota%',
    qCust.FieldByName('kota').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%negara%',
    qCust.FieldByName('negara').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%telpon%',
    qCust.FieldByName('telpon').AsString,[rfReplaceAll]);
  qCust.Close;

  mm.Text := StringReplace(mm.Text,'%memo%',
    ibQ.FieldbyName('notes').AsString,[rfReplaceAll]);

  mm.Text := StringReplace(mm.Text,'%user%',
    Aplikasi.NamaUser,[rfReplaceAll]);

  qDet := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s''', [sNoBukti]);

  lst := TStringList.Create;
  lst.Add('<table border="1">');
  lst.Add('<tr>');
  lst.Add('<td><b>Deskripsi Barang</b></td>');
  lst.Add('<td><b>Jumlah</b></td>');
  lst.Add('<td><b>Satuan</b></td>');
  //lst.Add('<td><b>Keterangan</b></td>');
  lst.Add('</tr>');

  while not qDet.Eof do begin
    lst.Add('<tr>');
    lst.Add('<td bgcolor="#66FFFF">' + qDet.FieldByName('deskripsi').AsString + '</td>');
    lst.Add('<td bgcolor="#FFCCFF"><center>' + qDet.FieldByName('qty').AsString + '</center></td>');
    lst.Add('<td bgcolor="#66FFFF">' + qDet.FieldByName('satuan').AsString + '</td>');
    lst.Add('</tr>');
    lst.Add('<tr>');
    lst.Add('<td colspan="3" bgcolor="#FFFF99">KETERANGAN : </br>' +
      StringReplace(qDet.FieldByName('notes').AsString, #13,'</br>', [rfReplaceAll]) +
      '</td>');
    lst.Add('</tr>');
    //lst.Add('<td>' + qDet.FieldByName('notes').AsString + '</td>');
    //lst.Add('</tr>');
    qDet.Next;
  end;
  lst.Add('</table>');
  qDet.Close;

  mm.Text := StringReplace(mm.Text,'%content%',
    lst.Text,[rfReplaceAll]);

  mm.Lines.SaveToFile(Aplikasi.AppPath +
    StringReplace(cxtNoTrans.Text,'/','-',[rfReplaceAll]) +
    '.html');

  Result := Aplikasi.AppPath +
    StringReplace(cxtNoTrans.text,'/','-',[rfReplaceAll]) + '.html';
  }
end;

procedure TfrmPurchaseOrderKTG.cxLUBrgKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
    //btnTambahClick(nil);
    cxsQty.SetFocus;
  end;
end;

procedure TfrmPurchaseOrderKTG.cxsQtyKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    btnTambahClick(nil);
    cxsQty.EditValue := 0;
  end;
end;

procedure TfrmPurchaseOrderKTG.GetDaftarEmail;
var
  lst: TStringList;
  cmb : TcxComboBox;
  i,j: Integer;
begin
  {
  with mLstDaftarEmail do begin
    Add('boby@sdp.mail');
    Add('vivi@sdp.mail');
    Add('felgitotema@sdp.mail');
    Add('ferry@sdp.mail');
    Add('sunanto@sdp.mail');
    Add('fredi@sdp.mail');
    Add('enny@sdp.mail');


    lst := TStringList.Create;
    lst.Add('cxCmbKategoriSO');
    lst.Add('cxCmbKategoriSO2');
    lst.Add('cxCmbKategoriSO3');

    for j := 0 to lst.Count - 1 do begin
      cmb := (FindComponent(lst.Strings[j]) as TcxComboBox);
      i := cmb.ItemIndex;

      if i = 1 then begin
        Add('nina@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 2 then begin
        Add('nina@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 3 then begin
        Add('nina@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 4 then begin
        Add('etik@sdp.mail');
        Add('isjayatno@sdp.mail');
        Add('bayu@sdp.mail');
      end
      else if i = 5 then begin
        Add('etik@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 6 then begin
        Add('etik@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 7 then begin
        Add('etik@sdp.mail');
        Add('isjayatno@sdp.mail');
      end
      else if i = 8 then begin
        Add('natalia@sdp.mail');
        Add('faiz@sdp.mail');
      end
      else if i = 9 then begin
        Add('natalia@sdp.mail');
        //Add('faiz@sdp.mail');
        Add('bayu@sdp.mail');
      end
      else if i = 10 then begin
        Add('natalia@sdp.mail');
        Add('alex@sdp.mail');

      end
      else if i = 11 then begin
        Add('natalia@sdp.mail');
        Add('alex@sdp.mail');
      end
      else if i = 12 then begin
        Add('boby@sdp.mail');
        Add('vivi@sdp.mail');
        Add('natalia@sdp.mail');
        Add('enny@sdp.mail');
        Add('inge@sdp.mail');
        Add('sunanto@sdp.mail');
      end;

    end;
  end;
  }
end;

procedure TfrmPurchaseOrderKTG.btnCariSuppClick(Sender: TObject);
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

procedure TfrmPurchaseOrderKTG.pnlMemoExit(Sender: TObject);
begin
  pnlMemo.Visible := False;
end;

procedure TfrmPurchaseOrderKTG.btnBatalMemoClick(Sender: TObject);
begin
  inherited;
  pnlMemo.Visible := False;
end;

procedure TfrmPurchaseOrderKTG.idSMTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin
  inherited;
  fw := TfrmWait.Create(self);
  fw.Show;
  Self.Enabled := False;
end;

procedure TfrmPurchaseOrderKTG.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  try
    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_email = 1 ' +
      'WHERE no_bukti = ''' + cxtNoTrans.Text + '''');
    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
  Self.Enabled := True;
  fw.Close;
  fw.Release;
  MsgBox('Email Sales Order berhasil dikirim.');
end;

procedure TfrmPurchaseOrderKTG.HitungSubTotal;
var
  i: Integer;

begin
  {
  for i := 0 to nxGrd.RowCount - 1 do begin

    nxGrd.Cell[nxColSubtotal.Index,i].AsFloat :=
      nxGrd.Cell[nxColQty.Index,i].AsFloat * nxGrd.Cell[nxColHarga.Index,i].AsFloat;
  end;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    nxGrd2.Cell[nxColSubtotal.Index,i].AsFloat :=
      nxGrd2.Cell[nxColQty.Index,i].AsFloat * nxGrd2.Cell[nxColHarga.Index,i].AsFloat;
  end;
  }

  with cxTbl.DataController do begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          if cxColTax.EditValue = 'NON PPN' then begin
            
          end;
      finally
          EndUpdate
      end

    end;

end;


procedure TfrmPurchaseOrderKTG.cxsPPNPropertiesEditValueChanged(
  Sender: TObject);
var
  i: integer;
  subtotal, total: real;
begin
  {
  try
    subtotal := 0;
    for i := 0 to nxGrd.RowCount - 1 do begin
      subtotal := subtotal + nxGrd.Cell[nxColSubtotal.Index,i].AsFloat;
    end;
    if subtotal > 0 then begin
      total := (cxsPPN.Value / 100) * subtotal;
      cxsTotPPN.Value := total;
    end;
    cxsGrandTotal.Value := cxsTotPPN.Value + cxsTotal.Value;
  except
  end;
  }
end;

procedure TfrmPurchaseOrderKTG.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang-po-ktg';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxsQty.SetFocus;
  end;
end;

procedure TfrmPurchaseOrderKTG.cxlNoFOBJPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
  i: integer;
  no_penawaran: string;
begin
  {
  // cek apakah fobj sudah diabuatkan penawaran
  q := OpenRS('SELECT * FROM v_penawaran_supp_det WHERE no_fobj = ''%s'' AND f_pilih = 1 AND kode_supp = ''%s''',
    [zqrNoFOBJ.FieldByName('no_fobj').AsString, zqrNoFOBJ.FieldByName('kode_supp').AsString]);
  if q.IsEmpty then begin
    MsgBox('No. FOBJ ini belum dibuatkan penawaran atau penawaran belum di seleksi.');
    q.Close;
    Abort;
  end
  else begin
    nxColHapus.Visible := False;
    nxColHapus2.Visible := False;

    cxLUBrg.Enabled := False;
    btnCariBrg.Enabled := False;
    cxsQty.Enabled := True;
    btnTambah.Enabled := False;

    no_penawaran := q.FieldByName('no_bukti').AsString;
    cxLUSupp.EditValue := q.FieldByName('kode_supp').AsString;
    cxLUSupp.Properties.ReadOnly := True;

    q.Close;
    q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
      [zqrNoFOBJ.FieldByName('no_fobj').ASString]);
    cxdTglKirim.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
    q.Close;

    nxGrd.ClearRows;
    nxGrd2.ClearRows;

    q := OpenRS('SELECT * FROM v_penawaran_supp_det WHERE no_fobj = ''%s'' ' +
      'AND f_pilih = 1 ' +
      'AND kode_supp = ''%s'' ORDER BY kode_brg',
      [zqrNoFOBJ.FieldByName('no_fobj').AsString, zqrNoFOBJ.FieldByName('kode_supp').AsString]);

    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColNamaBrg.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
      nxGrd.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
      nxGrd.Cell[nxColNoPen.Index,i].AsString := q.FieldByName('no_bukti').AsString;

      i := nxGrd2.AddRow();
      nxGrd2.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd2.Cell[nxColNamaBrg.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrd2.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd2.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd2.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
      nxGrd2.Cell[nxColMataUang.Index,i].AsString := q.FieldByName('mata_uang').AsString;
      q.Next;

      HitungSubTotal;
      HitungTotal;

    end;
    q.Close;
    
  end;
  q.Close;
  }
end;

procedure TfrmPurchaseOrderKTG.cxrStandardClick(Sender: TObject);
var
  chk: TcxRadioButton;
  q: TZQuery;
begin
  inherited;
  chk := (Sender as TcxRadioButton);
  // get no po pajak standard
  //cxtNoPOPajak.Text := '';

  if (chk.Name = 'cxrStandard') or (chk.Name = 'cxrImport') then begin
    if Self.Jenis = 'edit' then begin
      q := OpenRS('SELECT * FROM v_po_head WHERE no_bukti = ''%s''',
        [cxtNoTrans.Text]);
      
    end
    else begin
      
    end;
  end
  else if chk.Name = 'cxrNonPajak' then begin
    //cxsPPN.value := 0 ;
  end
  else if chk.Name = 'cxrPeletan' then begin
    
  end;

end;

procedure TfrmPurchaseOrderKTG.btnCariAlamatKirimClick(Sender: TObject);
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

procedure TfrmPurchaseOrderKTG.btnCetakClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
begin

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('PO ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_approval').AsInteger = 0 then begin
      MsgBox('PO Ini belum di Approval.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;

  f := TFrmLapUmum.Create(Self);
  if cxtNoTrans.Text <> '' then begin
    with f do begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
      zqrPO.Open;
    end;
    f.Release;
  end;

end;

procedure TfrmPurchaseOrderKTG.btnCetakPOInternalClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
  Memo: TfrxMemoView;
begin

  q := OpenRS('SELECT * FROM tbl_po_head WHERE no_bukti = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('PO ini belum disimpan.');
    q.Close;
    Abort;
  end
  else begin
    if q.FieldByName('f_approval').AsInteger = 0 then begin
      MsgBox('PO Ini belum di Approval.');
      q.Close;
      Abort;
    end;
  end;
  q.Close;

  f := TFrmLapUmum.Create(Self);
  if cxtNoTrans.Text <> '' then begin
    with f do begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := cxtNoTrans.Text;
      zqrPO.Open;

      
    end;
    f.Release;
  end;

end;

procedure TfrmPurchaseOrderKTG.cxLUSuppPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',
    [zqrSupp.FieldByName('kode').AsString]);
    cxtKeterangan.Text := q.FIeldByName('kontak').AsString;
    cxCmbPembayaran.Text := q.FIeldByName('pembayaran').AsString;
  q.Close;
end;

procedure TfrmPurchaseOrderKTG.cxlNoPPPropertiesChange(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  inherited;

  q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',[cxlNoPP.EditValue]);
  if not q.IsEmpty then begin
    cxtUser.Text := q.FieldByName('diajukan_oleh').AsString;
    cxlDivisi.EditValue := q.FieldbyName('diajukan_dept').AsString;
    cxdTglKirim.EditValue :=  q.FieldbyName('tgl_diperlukan').AsDateTime;
  end
  else
    Abort;
  q.Close;

  q := OpenRS('SELECT a.*, b.deskripsi, b.unitid,(a.qty -IFNULL((SELECT SUM(qty) FROM `v_qtypo` ' +
    'WHERE no_fobj = a.no_bukti AND kode_brg=a.kode_brg),0)) qty_po FROM tbl_fobj_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE (a.qty -IFNULL((SELECT SUM(qty) FROM `v_qtypo` ' +
    'WHERE no_fobj = a.no_bukti AND kode_brg=a.kode_brg),0)) AND no_bukti = ''%s''',[cxlNoPP.EditValue]);
  if not q.IsEmpty then begin
    with cxTbl.DataController do begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          DeleteRecord(0);
          cxTbl.DataController.ClearDetails;
      finally
          EndUpdate
      end
    end;


    while not q.Eof do begin
      with cxTbl.DataController do begin
        BeginUpdate;
        i := AppendRecord;
        Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
        Values[i, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
        Values[i, cxColQtyPesan.Index] :=q.FieldByName('qty_po').AsFloat;
        Values[i, cxColQtyPP.Index] := q.FieldByName('qty').AsFloat;
        Values[i, cxColQtyPO.Index] := (q.FieldByName('qty').AsFloat - q.FieldByName('qty_po').AsFloat);
        Values[i, cxColSatuan.Index] := q.FieldByName('unitid').AsString;
        Values[i, cxColKeterangan.Index] := q.FieldByName('keterangan').AsString;
        EndUpdate;
      end;
      q.Next;
    end;
  end;
  q.Close;
end;

procedure TfrmPurchaseOrderKTG.cxTblDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  q: TZQuery;
  t, t1, t2, t3 : Real;
  i: Integer ;
begin
  inherited;
//  if AItemIndex = cxColDeskripsi.Index then begin
//    try
//      cxTbl.BeginUpdate;
//      ADataController.Values[ARecordIndex, cxColKodeBrg.Index] :=  ADataController.Values[ARecordIndex, cxColDeskripsi.Index];
//      q := OpenRS('SELECT unitid FROM tbl_barang WHERE kode = ''%s''',[ADataController.Values[ARecordIndex, cxColKodeBrg.Index]]);
//      ADataController.Values[ARecordIndex, cxColSatuan.Index] := q.FieldByName('unitid').AsString;
//      q.Close;
//    finally
//      cxTbl.EndUpdate;
//    end;
//  end
//  if AItemIndex = cxColProject.Index then begin
//    try
//      cxTbl.BeginUpdate;
//      ADataController.Values[ARecordIndex, cxColNoProject.Index] :=  ADataController.Values[ARecordIndex, cxColProject.Index];
//    finally
//      cxTbl.EndUpdate;
//    end;
//  end
  if AItemIndex = cxColHarga.Index then begin
    try
      cxTbl.BeginUpdate;
      if cxColTax.EditValue = 'PPN' then begin
        //t1 := (cxColQtyPesan.EditValue *  cxColHarga.EditValue)/(110 /100) ;
        t1 := (cxColQtyPesan.EditValue *  cxColHarga.EditValue) ;
        t2 := t1 * (10/100);
        cxColSubtotaltax.EditValue := t1 + t2;
        cxColSubtotal.EditValue := cxColQtyPesan.EditValue * cxColHarga.EditValue;
        cxTbl.DataController.RefreshExternalData;
      end else begin
        cxColSubtotaltax.EditValue := cxColQtyPesan.EditValue * cxColHarga.EditValue;
        cxColSubtotal.EditValue := cxColQtyPesan.EditValue * cxColHarga.EditValue;
        cxTbl.DataController.RefreshExternalData;
      end;

      //ADataController.Values[ARecordIndex, cxColSubtotal.Index] := ADataController.Values[ARecordIndex, cxColQtyPesan.Index] * ADataController.Values[ARecordIndex, cxColHarga.Index];
    finally
      cxTbl.EndUpdate;
    end;
  end
  else if AItemIndex = cxColTax.Index then begin
//    try
//      cxTbl.BeginUpdate;
//      t:= 0;
//      try
//      q := OpenRS('SELECT * FROM tbl_taxgroup_det WHERE id_group = ''%s''',[ADataController.Values[ARecordIndex, cxColTax.Index]]);
//      if not q.Eof then begin
//        q.First;
//        while not q.Eof do begin
//          for i := 0 to cxtbl.DataController.RecordCount -1 do begin
//            if t =0 then begin
//              t1 := (ADataController.Values[ARecordIndex, cxColQtyPesan.Index] * ADataController.Values[ARecordIndex, cxColHarga.Index] * 110 /100) ;
//              t2 := t1 * 2/100;
//              ADataController.Values[ARecordIndex,cxColSubtotal.Index] := t1 - t2;
//              cxTbl.DataController.RefreshExternalData;
//            end;
//          end;
//
//          q.Next;
//        end;
//      end else begin
//        try
//          cxTbl.BeginUpdate;
//          ADataController.Values[ARecordIndex, cxColSubtotal.Index] := ADataController.Values[ARecordIndex, cxColQtyPesan.Index] * ADataController.Values[ARecordIndex, cxColHarga.Index];
//          cxTbl.DataController.RefreshExternalData;
//        finally
//          cxTbl.EndUpdate;
//        end;
//      end;
//
//        finally
//          cxTbl.EndUpdate;
//        end;
//      q.Close;
//    finally
//      cxTbl.EndUpdate;
//    end;
  try
      cxTbl.BeginUpdate;
      if cxColTax.EditValue = 'PPN' then begin
            //t1 := (cxColQtyPesan.EditValue *  cxColHarga.EditValue)/(110 /100) ;
        t1 := (cxColQtyPesan.EditValue *  cxColHarga.EditValue) ;
        t2 := t1 * (10/100);
        cxColSubtotaltax.EditValue := t1 + t2;
        cxColSubtotal.EditValue := cxColQtyPesan.EditValue * cxColHarga.EditValue;
        cxTbl.DataController.RefreshExternalData;
      end else begin
        cxColSubtotal.EditValue := cxColQtyPesan.EditValue * cxColHarga.EditValue;
        cxColSubtotaltax.EditValue := cxColQtyPesan.EditValue * cxColHarga.EditValue;
        cxTbl.DataController.RefreshExternalData;
      end;

      //ADataController.Values[ARecordIndex, cxColSubtotal.Index] := ADataController.Values[ARecordIndex, cxColQtyPesan.Index] * ADataController.Values[ARecordIndex, cxColHarga.Index];
    finally
      cxTbl.EndUpdate;
    end;
  end;
end;

procedure TfrmPurchaseOrderKTG.cxColTaxPropertiesChange(Sender: TObject);
var
  t,t1,t2,t3 :Real;
  q : TZQuery;
  i : Integer;
  AColIndex :Integer;
  AValue :Variant;
begin
  inherited;
//  try
//      cxTbl.BeginUpdate;
//      t:= 0;
//      try
//      q := OpenRS('SELECT * FROM tbl_taxgroup_det WHERE id_group = ''' + cxColTax.EditValue +'''');
//      if not q.Eof then begin
//        q.First;
//        while not q.Eof do begin
//          for i := 0 to cxtbl.DataController.RecordCount -1 do begin
//            if t =0 then begin
//              t1 := cxColQtyPesan.EditValue *  cxColHarga.EditValue * 110 /100 ;
//              t2 := t1 * 2/100;
//              cxColSubtotal.EditValue := t1 - t2;
//              cxTbl.DataController.RefreshExternalData;
//            end;
//          end;
//
//          q.Next;
//        end;
//      end else begin
//        try
//          cxTbl.BeginUpdate;
//          cxColSubtotal.EditValue := cxColQtyPesan.EditValue *  cxColHarga.EditValue;
//          cxTbl.DataController.RefreshExternalData;
//        finally
//          cxTbl.EndUpdate;
//        end;
//      end;
//
//        finally
//          cxTbl.EndUpdate;
//        end;
//      q.Close;
//    finally
//      cxTbl.EndUpdate;
//    end;
//  try
//      cxTbl.BeginUpdate;
//      t:= 0;
//      try
//      q := OpenRS('SELECT * FROM tbl_taxgroup_det WHERE id_group = ''' + cxColTax.EditValue +'''');
//      if not q.Eof then begin
//        q.First;
//        while not q.Eof do begin
//          for i := 0 to cxtbl.DataController.RecordCount -1 do begin
//            if t =0 then begin
//              t1 := cxColQtyPesan.EditValue *  cxColHarga.EditValue * 110 /100 ;
//              t2 := t1 * 2/100;
//              cxColSubtotal.EditValue := t1 - t2;
//              cxTbl.DataController.RefreshExternalData;
//            end;
//          end;
//
//          q.Next;
//        end;
//      end else begin
//        try
//          cxTbl.BeginUpdate;
//          cxColSubtotal.EditValue := cxColQtyPesan.EditValue *  cxColHarga.EditValue;
//          cxTbl.DataController.RefreshExternalData;
//        finally
//          cxTbl.EndUpdate;
//        end;
//      end;
//
//        finally
//          cxTbl.EndUpdate;
//        end;
//      q.Close;
//    finally
//      cxTbl.EndUpdate;
//    end;
//
//      AColIndex := cxTbl.DataController.FocusedRowIndex;
//      AValue := cxTbl.DataController.FocusSelectedRow(AColIndex);
//
//      t:= 0;
//      try
//      cxTbl.BeginUpdate;
//      q := OpenRS('SELECT * FROM tbl_taxgroup_det WHERE id_group = ''' + AValue +'''');
//      if not q.Eof then begin
//        q.First;
//        while not q.Eof do begin
//          for i := 0 to cxtbl.DataController.RecordCount -1 do begin
//            if t =0 then begin
//              t1 := cxColQtyPesan.EditValue *  cxColHarga.EditValue * 110 /100 ;
//              t2 := t1 * 2/100;
//              cxColSubtotal.EditValue := t1 - t2;
//              cxTbl.DataController.RefreshExternalData;
//            end;
//          end;
//
//          q.Next;
//        end;
//      end else begin
//        try
//          cxTbl.BeginUpdate;
//          cxColSubtotal.EditValue := cxColQtyPesan.EditValue *  cxColHarga.EditValue;
//          cxTbl.DataController.RefreshExternalData;
//        finally
//          cxTbl.EndUpdate;
//        end;
//      end;
//
//        finally
//          cxTbl.EndUpdate;
//        end;
//      q.Close;

end;

procedure TfrmPurchaseOrderKTG.cxColSubtotalPropertiesChange(
  Sender: TObject);
  var
  t,t1,t2,t3 :Real;
  q : TZQuery;
  i : Integer;
begin
  inherited;
//     try
//      cxTbl.BeginUpdate;
//      t:= 0;
//      try
//      q := OpenRS('SELECT * FROM tbl_taxgroup_det WHERE id_group = ''' + cxColTax.EditValue +'''');
//      if not q.Eof then begin
//        q.First;
//        while not q.Eof do begin
//          for i := 0 to cxtbl.DataController.RecordCount -1 do begin
//            if t =0 then begin
//              t1 := cxColQtyPesan.EditValue *  cxColHarga.EditValue * 110 /100 ;
//              t2 := t1 * 2/100;
//              cxColSubtotal.EditValue := t1 - t2;
//              cxTbl.DataController.RefreshExternalData;
//            end;
//          end;
//
//          q.Next;
//        end;
//      end else begin
//        try
//          cxTbl.BeginUpdate;
//          cxColSubtotal.EditValue := cxColQtyPesan.EditValue *  cxColHarga.EditValue;
//        finally
//          cxTbl.EndUpdate;
//        end;
//      end;
//
//        finally
//          cxTbl.EndUpdate;
//        end;
//      q.Close;
//    finally
//      cxTbl.EndUpdate;
//    end;
end;

procedure TfrmPurchaseOrderKTG.FormShow(Sender: TObject);
var
  q, qBrg: TZQuery;
  i: Integer;
  t, t1, t2, t3 : Real;
begin
  inherited;
   if Self.Jenis = 'edit' then begin
       cxLUSupp.EditValue := '';

      //if Trim(cxlNoBukti.Text) = '' then Abort;

      //self.Jenis := 'edit';

      cxtNoTrans.Text := mNoPO ;
      cxtNoTrans.Properties.ReadOnly := True ;

      q := OpenRS('SELECT a.no_bukti, a.no_fobj, a.tanggal,a.note,a.currency,a.rate, a.kode_supp, a.f_completed, a.kode_alamat_kirim, b.alamat, a.pembayaran, a.user, a.user_dept, a.tgl_required, a.divisi, ' +
          'c.kode_brg, d.deskripsi, e.nama, e.kontak, c.qty, c.satuan, c.harga,c.sub_total,c.sub_total_tax, c.keterangan, c.pajak, c.mata_uang, c.nilai_tukar, c.lokasi, a.f_approval, a.user_request, c.kondisi, c.qty * c.harga AS total ' +
          'FROM tbl_po_head a ' +
          'LEFT JOIN tbl_alamat_kirim b ON a.kode_alamat_kirim = b.kode ' +
          'left join tbl_supplier e on a.kode_supp = e.kode ' +
          'LEFT JOIN tbl_po_det c on a.no_bukti = c.no_bukti ' +
          'LEFT JOIN tbl_barang d on c.kode_brg = d.kode ' +
          'WHERE a.no_bukti = ''%s''', [mNoPO]);
          
      if q.FieldByName('f_approval').AsInteger = 0 then
    btnSimpan.Enabled := True else btnSimpan.Enabled := False ;


      if q.FieldByName('f_completed').AsInteger   = 1 then begin
        chkComplete.Checked := True;
        end
      else begin
        chkComplete.Checked := False;
      end;
      cxlNoPP.EditText := q.fieldbyname('no_fobj').AsString;
      cxtNoTrans.Text := q.fieldbyname('no_bukti').AsString;
      cxlAlamatKirim.EditValue := q.FieldByName('kode_alamat_kirim').AsString;
      cxtKeterangan.Text := q.fieldbyname('kontak').AsString;
      cxLUSupp.Text := q.fieldbyname('nama').AsString;
      cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
      cxCmbPembayaran.Text := q.FieldByName('pembayaran').AsString;
      cxlDivisi.EditValue :=  q.FieldByName('divisi').AsString;
      cxtUser.Text := q.FieldByName('user_request').AsString ;
       cxtCritical.Text :=  q.FieldByName('note').AsString ;
       cxCurr.Text := q.FieldByName('currency').AsString ;
       cxsRate.Value := q.FieldByName('rate').AsFloat ;


      if q.FieldByName('f_approval').AsInteger = 1 then
        f_app_po := True
      else
        f_app_po := False;

      while not q.Eof do begin
        with cxTbl.DataController do begin
          BeginUpdate;
          try
            while RecordCount > 0 do
              DeleteRecord(0);
              cxTbl.DataController.ClearDetails;
          finally
              EndUpdate
          end
        end;

        q.First;
        while not q.Eof do begin
          with cxTbl.DataController do begin
            BeginUpdate;
            i := AppendRecord;
            Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
            Values[i, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
            Values[i, cxColQtyPesan.Index] := q.FieldByName('qty').AsFloat;
            Values[i, cxColSatuan.Index] := q.FieldByName('satuan').AsString;
            Values[i, cxColHarga.Index] := q.fieldbyname('harga').AsFloat;
            Values[i, cxColSubTotal.Index] := q.fieldbyname('sub_total').AsFloat;
            Values[i, cxColSubtotaltax.Index] := q.fieldbyname('sub_total_tax').AsFloat;
            values[i, cxcoltax.index] := q.fieldbyname('pajak').asstring;
           { if Values[i, cxColTax.Index] = 'PPN' then begin
              t := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index] * 110/100;
              t1 := t * 2/100;
              Values[i, cxColSubtotal.Index] := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index];
              Values[i, cxColSubtotaltax.Index] := t + t1;
            end else begin
              Values[i, cxColSubtotal.Index] := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index];
              Values[i, cxColSubtotaltax.Index] := 0;
            end;  }
            EndUpdate;
          end;
          q.Next;
        end;  
      end;


      q.Close;
  
      q := OpenRS('SELECT * FROM v_po_det WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

      i := 0;

      HitungTotal;
   end;

    if Self.Jenis = 'view' then begin
       cxLUSupp.EditValue := '';

      //if Trim(cxlNoBukti.Text) = '' then Abort;

      //self.Jenis := 'edit';

      cxtNoTrans.Text := mNoPO ;
      cxtNoTrans.Properties.ReadOnly := True ;

      q := OpenRS('SELECT a.no_bukti, a.no_fobj, a.tanggal,a.currency,a.rate, a.kode_supp, a.f_completed, a.kode_alamat_kirim, b.alamat, a.pembayaran, a.user, a.user_dept, a.tgl_required, a.divisi, ' +
          'c.kode_brg, d.deskripsi, e.nama, e.kontak, c.qty, c.satuan, c.harga, c.keterangan, c.pajak, c.mata_uang, c.nilai_tukar, c.lokasi, a.f_approval, a.user_request, c.kondisi, c.qty * c.harga AS total ' +
          'FROM tbl_po_head a ' +
          'LEFT JOIN tbl_alamat_kirim b ON a.kode_alamat_kirim = b.kode ' +
          'left join tbl_supplier e on a.kode_supp = e.kode ' +
          'LEFT JOIN tbl_po_det c on a.no_bukti = c.no_bukti ' +
          'LEFT JOIN tbl_barang d on c.kode_brg = d.kode ' +
          'WHERE a.no_bukti = ''%s''', [mNoPO]);
          

      btnSimpan.Visible := False ;


      if q.FieldByName('f_completed').AsInteger   = 1 then begin
        chkComplete.Checked := True;
        end
      else begin
        chkComplete.Checked := False;
      end;
      cxlNoPP.EditText := q.fieldbyname('no_fobj').AsString;
      cxtNoTrans.Text := q.fieldbyname('no_bukti').AsString;
      cxlAlamatKirim.EditValue := q.FieldByName('kode_alamat_kirim').AsString;
      cxtKeterangan.Text := q.fieldbyname('kontak').AsString;
      cxLUSupp.Text := q.fieldbyname('nama').AsString;
      cxdTglKirim.Date := q.FieldByName('tgl_required').AsDateTime;
      cxCmbPembayaran.Text := q.FieldByName('pembayaran').AsString;
      cxlDivisi.EditValue :=  q.FieldByName('divisi').AsString;
      cxtUser.Text := q.FieldByName('user_request').AsString ;
      cxCurr.Text := q.FieldByName('currency').AsString ;
       cxsRate.Value := q.FieldByName('rate').AsFloat ;

      if q.FieldByName('f_approval').AsInteger = 1 then
        f_app_po := True
      else
        f_app_po := False;

      while not q.Eof do begin
        with cxTbl.DataController do begin
          BeginUpdate;
          try
            while RecordCount > 0 do
              DeleteRecord(0);
              cxTbl.DataController.ClearDetails;
          finally
              EndUpdate
          end
        end;

        q.First;
        while not q.Eof do begin
          with cxTbl.DataController do begin
            BeginUpdate;
            i := AppendRecord;
            Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
            Values[i, cxColDeskripsi.Index] := q.FieldByName('deskripsi').AsString;
            Values[i, cxColQtyPesan.Index] := q.FieldByName('qty').AsFloat;
            Values[i, cxColSatuan.Index] := q.FieldByName('satuan').AsString;
            Values[i, cxColHarga.Index] := q.fieldbyname('harga').AsFloat;
            values[i, cxcoltax.index] := q.fieldbyname('pajak').asstring;
            if Values[i, cxColTax.Index] = 'PPN' then begin
              t := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index] * 110/100;
              t1 := t * 2/100;
              Values[i, cxColSubtotal.Index] := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index];
              Values[i, cxColSubtotaltax.Index] := t + t1;
            end else begin
              Values[i, cxColSubtotal.Index] := Values[i, cxColHarga.Index] * Values[i, cxColQtyPesan.Index];
              Values[i, cxColSubtotaltax.Index] := 0;
            end;
            EndUpdate;
          end;
          q.Next;
        end;  
      end;


      q.Close;
  
      q := OpenRS('SELECT * FROM v_po_det WHERE no_bukti = ''%s''', [cxtNoTrans.Text]);

      i := 0;

      HitungTotal;
   end;
end;

procedure TfrmPurchaseOrderKTG.cxTblFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
    i : Integer;
begin
  inherited;
      try
    i := cxTbl.DataController.GetFocusedRecordIndex;
    label1.Caption := cxTbl.DataController.Values[i, cxColKodeBrg.Index];
    cxSpinEdit1.EditValue := cxTbl.DataController.Values[i, cxColQtyPesan.Index];
  except
  end;
end;

end.
