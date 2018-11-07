unit unFrmTrsSPK_Trial;

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
  cxDBLookupComboBox, ZAbstractRODataset, cxMemo;

type
  TFrmTrsSPK_Trial = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    NxEdit1: TNxEdit;
    NxImageColumn1: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKeterangan: TNxTextColumn;
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
    nxColSatuan: TNxTextColumn;
    cxLabel4: TcxLabel;
    cxCmbGdg2: TcxComboBox;
    cxtNamaGdg2: TcxTextEdit;
    nxGrd2: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColDesk2: TNxTextColumn;
    nxColSatuan2: TNxTextColumn;
    nxColQty2: TNxNumberColumn;
    NxTextColumn12: TNxTextColumn;
    NxImageColumn2: TNxImageColumn;
    NxEdit3: TNxEdit;
    NxEdit4: TNxEdit;
    cxLUBrg2: TcxLookupComboBox;
    btnTambah2: TButton;
    nxCmbGdg: TNxComboBoxColumn;
    NxTextColumn3: TNxTextColumn;
    Label1: TLabel;
    cxsTotalQty2: TcxSpinEdit;
    NxTextColumn6: TNxTextColumn;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    cxLabel8: TcxLabel;
    cxlNoSO: TcxLookupComboBox;
    nxColKodeBrg2: TNxTextColumn;
    cxLabel5: TcxLabel;
    cxLabel9: TcxLabel;
    cxdTrgSelesai: TcxDateEdit;
    btnCariBrg: TButton;
    btnCariBrg2: TButton;
    nxColTipe: TNxTextColumn;
    nxColBtnEdit: TNxButtonEdit;
    cxLabel10: TcxLabel;
    cxtKetPPIC: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxtJenisBom: TcxTextEdit;
    cxtNoTrial: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxlMesin: TcxLookupComboBox;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxmDeskTrial: TcxMemo;
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
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxCmbGdg2PropertiesChange(Sender: TObject);
    procedure btnTambah2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nxGrd2CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrd2AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure cxLUBrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxLUBrg2KeyPress(Sender: TObject; var Key: Char);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnCariBrg2Click(Sender: TObject);
    procedure btnBatalMemoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    mUserDept: string;
    mNoMO: string;
    mNoSO: string;
    mKodeBrg: string;
    mNoSPK: string;
    mNoTrial: string;
    mJenisBOM: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    function GetRow(grd: TNextGrid): Integer;
  public
    property UserDept: string read mUserDept write mUserDept;
    property NoMO: string write mNoMO;
    property NoSO: string write mNoSO;
    property KodeBrg: string write mKodeBrg;
    property NoSPK: string write mNoSPK;
    property NoTrial: string write mNoTrial;
    property JenisBOM: string write mJenisBOM;
  end;

var
  frmTrsSPK_Trial: TFrmTrsSPK_Trial;

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

procedure TFrmTrsSPK_Trial.FormCreate(Sender: TObject);
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
    nxCmbGdg.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  cxtNoTrans.Text := GetLastFak('spk');

  //cxLabel7.Visible := Aplikasi.EditTrans;
  //cxlNoBukti.Visible := Aplikasi.EditTrans;
  //btnEdit2.Visible := aplikasi.EditTrans;

  btnEdit2.Visible := False;
  cxlNoBukti.Visible := False;
  zqrMesin.Open;
end;

function TFrmTrsSPK_Trial.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
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

procedure TFrmTrsSPK_Trial.NxEdit1DblClick(Sender: TObject);
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

procedure TFrmTrsSPK_Trial.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
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
      {
      if ARow < nxGrd.RowCount - 1 then
        nxGrd.SelectCell(1,nxGrd.RowCount-1)
      else begin
        i := nxGrd.AddRow();
        nxGrd.SelectCell(1,i);
        nxGrd.ScrollToRow(i);
      end;
      }
    end;

  end;
end;

procedure TFrmTrsSPK_Trial.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;

  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[CQTY,i].AsFloat;
  end;

  tmpQty := 0;
  for i := 0 to nxGrd2.RowCount - 1 do begin
    if nxGrd2.Cell[CKD_BRG,i].AsString <> '' then
      tmpQty := tmpQty + nxGrd2.Cell[CQTY2,i].AsFloat;
  end;
  cxsTotalQty2.Value := tmpQty;
  
end;

procedure TFrmTrsSPK_Trial.ClearAll;
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
  nxGrd2.ClearRows;
  nxGrd2.AddRow;
  cxsTotalQty2.Value := 0;
  cxtNoTrans.Text := GetLastFak('spk');
  cxCmbGdg.Text := 'G01';
  cxtNamaGdg.Text := GetNamaGudang('G01');
  cxCmbGdg2.Text := '';
  zqrNoBukti.Close;
  zqrNoBukti.Open;
end;

procedure TFrmTrsSPK_Trial.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmTrsSPK_Trial.btnSimpanClick(Sender: TObject);
var
  in_head, in_det, barang, barang_det, hist: TZTable;
  sNoTrs, sNoSPK, sNoMO: string;
  i: integer;
  b: Boolean;
  qspk,qmo,q, qbom, qbomd, qgrp_trial: TZQuery;
  lstGrp: TStringList;
begin
  if Trim(cxdTrgSelesai.Text) = '' then begin
    MsgBox('Target selesai harus diisi.');
    cxdTrgSelesai.SetFocus;
  end
  else if Trim(cxlMesin.Text) = '' then begin
    MsgBox('Mesin harus diisi.');
    cxlMesin.SetFocus;
  end
  else begin

    try
      dm.zConn.StartTransaction;

      if Self.Jenis = 'tambah' then begin
        sNoSPK := GetLastFak('spk');
        UpdateFaktur(Copy(sNoSPK,1,8));
      end
      else begin
        sNoSPK := cxtNoTrans.Text;
      end;

      dm.zConn.ExecuteDirect(
        Format('DELETE FROM tbl_bom WHERE no_spk = ''%s''',[sNoSPK])
      );
      dm.zConn.ExecuteDirect(
        Format('DELETE FROM tbl_bom_det WHERE no_spk = ''%s''',[sNoSPK])
      );

      sNoMO := mNoMO;
      qspk := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''',[sNoSPK]);

      if Self.Jenis = 'tambah' then begin
        with qspk do begin
          Insert;
          FieldByName('no_mo').AsString := sNoMO;
          FieldByName('no_spk').AsString := sNoSPK;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index, 0].AsString;
          FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index, 0].AsFloat;
          FieldByName('kode_mesin').AsString := cxlMesin.EditValue;
          FieldByName('keterangan').AsString := cxtKetPPIC.Text;
          FieldByName('jenis_spk').AsString := 'SPK TRIAL';
          FieldByName('tgl_p_mulai').AsDateTime := Aplikasi.TanggalServer;
          FieldByName('tgl_p_selesai').AsDateTime := cxdTrgSelesai.Date;
          FieldByName('toleransi').AsFloat := 0;
          FieldByName('f_app_prd').AsInteger := 1;
          FieldByName('lain_lain').AsString := '';
          FieldByName('ket_ppic').AsString := '';
          FieldByName('lokasi').AsString := '';
          FieldByName('kondisi').AsString := '';
          FieldByName('no_po_plt').AsString := '';
          FieldByName('f_edit').AsInteger := 1;
          FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
          FieldByName('user_edit').AsString := aplikasi.NamaUser;
          FieldByName('no_trial').AsString := cxtNoTrial.Text;

          // ambil group trial dan jadikan keterangan
          qgrp_trial := OpenRS('SELECT * FROM tbl_logbook_child WHERE no_trial = ''%s''',
            [cxtNoTrial.Text]);
          lstGrp := TStringList.Create;
          if not qgrp_trial.IsEmpty then begin
            while not qgrp_trial.Eof do begin
              lstGrp.Add(qgrp_trial.FieldByName('no_trial_child').AsString);
              qgrp_trial.Next;
            end;
            FieldByName('keterangan').AsString :=
              FieldByName('keterangan').AsString + ', GROUP TRIAL: ' + lstGrp.CommaText;
          end;
          qgrp_trial.Close;

          Post;
        end;

        // check and insert into MO
        q := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',[sNoMO]);
        if not q.IsEmpty then begin
          q.Edit;
          q.FieldByName('no_spk').AsString := sNoSPK;
          q.FieldByName('f_spk').AsInteger := 1;
          q.Post;
        end;
        q.Close;

        qbom := OpenRS('SELECT * FROM tbl_bom WHERE no_mo = ''%s''', [sNoMO]);
        qbom.Insert;
        qbom.FieldByName('no_mo').AsString := sNoMO;
        qbom.FieldByName('no_spk').AsString := sNoSPK;
        qbom.FieldByName('kode_formula').AsString := '';
        qbom.Post;
        qbom.Close;

        qbomd := OpenRS('SELECT * FROM tbl_bom_det WHERE no_mo = ''%s''', [sNoMO]);
        for i := 0 to nxGrd2.RowCount - 1 do begin
          if Trim(nxGrd2.Cell[nxColKodeBrg2.Index,i].AsString) = '' then Continue;
          qbomd.Insert;
          qbomd.FieldByName('no_mo').AsString := sNoMO;
          qbomd.FieldByName('kode_brg').AsString := nxGrd2.Cell[nxColKodeBrg2.Index,i].AsString;
          qbomd.FieldByName('berat').AsFloat := 0;
          qbomd.FieldByName('satuan').AsString := nxGrd2.Cell[nxCOlSatuan2.Index,i].AsString;
          qbomd.FieldByName('qty').AsFloat := nxGrd2.Cell[nxCOlQty2.Index,i].AsFloat;
          qbomd.FieldByName('qty2').AsFloat := nxGrd2.Cell[nxCOlQty2.Index,i].AsFloat;
          qbomd.FieldByName('satuan2').AsString := nxGrd2.Cell[nxCOlSatuan2.Index,i].AsString;
          qbomd.FieldByName('no_spk').AsString := sNoSPK;
          qbomd.Post;
        end;
        qbomd.Close;
      end
      else begin

        with qspk do begin
          Edit;
          FieldByName('no_mo').AsString := sNoMO;
          FieldByName('no_spk').AsString := sNoSPK;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index, 0].AsString;
          FieldByName('qty').AsFloat := nxGrd.Cell[nxColQty.Index, 0].AsFloat;
          FieldByName('kode_mesin').AsString := '';
          FieldByName('keterangan').AsString := cxtKetPPIC.Text;
          FieldByName('jenis_spk').AsString := 'SPK TRIAL';
          FieldByName('tgl_p_mulai').AsDateTime := Aplikasi.TanggalServer;
          FieldByName('tgl_p_selesai').AsDateTime := cxdTrgSelesai.Date;
          FieldByName('toleransi').AsFloat := 0;
          FieldByName('f_app_prd').AsInteger := 1;
          FieldByName('lain_lain').AsString := '';
          FieldByName('ket_ppic').AsString := '';
          FieldByName('lokasi').AsString := '';
          FieldByName('kondisi').AsString := '';
          FieldByName('no_po_plt').AsString := '';
          FieldByName('f_edit').AsInteger := 1;
          FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
          FieldByName('user_edit').AsString := aplikasi.NamaUser;
          Post;
        end;

        qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s'' AND no_spk = ''%s''',
          [mNoMO, sNoSPK]);
        if not qmo.IsEmpty then begin
          qmo.Edit;
          qmo.FieldByName('no_spk').AsString := sNoSPK; 
          qmo.Post;
        end;
        qmo.Close;

        qbom := OpenRS('SELECT * FROM tbl_bom WHERE no_mo = ''%s''', [sNoMO]);
        qbom.Insert;
        qbom.FieldByName('no_mo').AsString := sNoMO;
        qbom.FieldByName('no_spk').AsString := sNoSPK;
        qbom.FieldByName('kode_formula').AsString := '';
        qbom.Post;
        qbom.Close;

        qbomd := OpenRS('SELECT * FROM tbl_bom_det WHERE no_mo = ''%s''', [sNoMO]);
        for i := 0 to nxGrd2.RowCount - 1 do begin
          if Trim(nxGrd2.Cell[nxColKodeBrg2.Index, i].AsString) = '' then Continue; 
          qbomd.Insert;
          qbomd.FieldByName('no_mo').AsString := sNoMO;
          qbomd.FieldByName('kode_brg').AsString := nxGrd2.Cell[nxColKodeBrg2.Index,i].AsString;
          qbomd.FieldByName('berat').AsFloat := 0;
          qbomd.FieldByName('satuan').AsString := nxGrd2.Cell[nxCOlSatuan2.Index,i].AsString;
          qbomd.FieldByName('qty').AsFloat := nxGrd2.Cell[nxCOlQty2.Index,i].AsFloat;
          qbomd.FieldByName('no_spk').AsString := sNoSPK;
          qbomd.Post;
        end;
        qbomd.Close;

      end;

      dm.zConn.Commit;
      MsgBox('SPK TRIAL sudah disimpan dengan Nomor: ' + sNoSPK);
      Close;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;

end;

procedure TFrmTrsSPK_Trial.nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
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

procedure TFrmTrsSPK_Trial.btnHapusClick(Sender: TObject);
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

procedure TFrmTrsSPK_Trial.cxCmbGdgPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);
  except
  end;
end;

procedure TFrmTrsSPK_Trial.btnTambahClick(Sender: TObject);
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

  //if (nxGrd.RowCount > 0) and (nxGrd.Cell[CKD_BRG,0].AsString <> '') then
  //  Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  // YSF: 07-11-2014
  // cek apakah stok barang mencukupi
  //if CekStok(sKodeBrg, 'G01') <= 0 then begin
  //  MsgBox('Stok barang G-SDP tidak mencukupi.');
  //  Abort;
  //end;

  // cek apakah barang kedua yang dimasukkan sudah benar ongkos
  {
  if (nxGrd.RowCount > 0) and (nxGrd.Cell[CKD_BRG,0].AsString <> '') then begin
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[sKodeBrg]);
    if Trim(q.FieldByName('tipe').AsString) <> 'JASA' then begin
      MsgBox('Tipe barang yang dipilih bukan JASA.' + #10#13 +
        'Mohon pilih barang dengan tipe JASA');
      q.Close;
      Abort;
    end;
    q.Close;
  end;

  // cek apakah barang kedua yang dimasukkan sudah benar ongkos
  if (nxGrd.RowCount > 0) and (nxGrd.Cell[CKD_BRG,0].AsString = '') then begin
    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[sKodeBrg]);
    if Trim(q.FieldByName('tipe').AsString) = 'JASA' then begin
      MsgBox('Tipe barang yang dipilih bukan BARANG JADI.' + #10#13 +
        'Mohon pilih barang dengan tipe BARANG JADI');
      q.Close;
      Abort;
    end;
    q.Close;
  end;
  }

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
    nxGrd.Cell[nxColTipe.Index,ARow].AsString := q.FieldByName('tipe').AsString;

    HitungTotal;

    q.Close;
    nxGrd.AddRow();
    
    //nxGrd.SelectCell(0, nxGrd.LastAddedRow);
  //end;
end;

procedure TFrmTrsSPK_Trial.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;
end;

procedure TFrmTrsSPK_Trial.btnEdit2Click(Sender: TObject);
var
  q, qBrg: TZQuery;
  i,j,k: Integer;
begin
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
    if q.FieldByName('jenis').AsString = 'IN' then begin
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
    else if q.FieldByName('jenis').AsString = 'OUT' then begin
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
end;

procedure TFrmTrsSPK_Trial.cxCmbGdg2PropertiesChange(Sender: TObject);
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

procedure TFrmTrsSPK_Trial.btnTambah2Click(Sender: TObject);
var
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q, qg: TZQuery;
  sKodeBrg, gudang: string;
begin
  if cxLUBrg2.Text = '' then Abort;

  sKodeBrg := zqrBrg.FieldByName('kode').AsString;

  ACol := nxGrd2.SelectedColumn;
  ARow := nxGrd2.RowCount - 1;

  // cek stok barang di gudang G01
  if CekStok(sKodeBrg, 'G01') <= 0 then begin
    MsgBox('Stok barang G-SDP tidak mencukupi.');
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
    }

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
  HitungTotal;
end;

procedure TFrmTrsSPK_Trial.FormShow(Sender: TObject);
  var
  qt, q, qSO, qbd, qspk, qmo, qbt, qb: TZQuery;
  i: Integer;
begin
  cxCmbGdg.Text := 'G01';
  cxCmbGdg.Properties.ReadOnly := True;
  cxtNamaGdg.Text := GetNamaGudang(cxCmbGdg.Text);

  Screen.Cursor := crSQLWait;

  // ambil no trial dan no mesin
  qt := OpenRS('SELECT * FROM tbl_logbook_design WHERE no_trial = ''%s''',[mNoTrial]);
  if not qt.IsEmpty then begin
    cxtNoTrial.Text := qt.FieldByName('no_trial').AsString;
    nxGrd.Cell[nxColSatuan.Index, 0].AsString := qt.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColKeterangan.Index, 0].AsString := qt.FieldByName('deskripsi_trial').AsString;
    cxmDeskTrial.Lines.Text := qt.FieldByname('deskripsi_trial').AsString;
  end;
  qt.Close;

  if mKodeBrg <> '' then begin
    q := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = %s',[mKodeBrg]);
    nxGrd.Cell[nxColKodeBrg.Index, 0].AsString := mKodeBrg;
    nxGrd.Cell[nxColDesk.Index, 0].AsString := q.FieldByName('deskripsi').AsString;
    cxlNoSO.Text := mNoSO;
    q.Close;

    qSO := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' AND kode_brg = %s',
      [mNoSO, mKodeBrg]);
    if not qSO.IsEmpty then begin
      nxGrd.Cell[nxColKeterangan.Index,0].AsString := qSO.FieldByName('notes').AsString;
    end;
    qSO.Close;

    qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' AND no_mo = ''%s''',
      [mNoSO,mNoMO]);
    nxGrd.Cell[nxColQty.Index, 0].AsFloat := qmo.FieldByName('qty_mo').AsFloat;
    nxColQty.Max := qmo.FieldByName('qty_mo').AsFloat;
    qmo.Close;

    if mJenisBOM = 'B' then
      mJenisBOM := 'BARANG JADI'
    else if mJenisBOM = 'C' then
      mJenisBOM := 'COMPOUND'
    else if mJenisBOM = 'T' then
      mJenisBOM := 'TEPUNG';

    // tampilkan bom trial
    qbt := OpenRS('SELECT * FROM tbl_trial_bom WHERE no_trial = ''%s'' ' +
      'AND jenis = ''%s'' and kode_brg_induk = %s', [mNoTrial, mJenisBOM, mKodeBrg]);
    nxGrd2.ClearRows;  
    if not qbt.IsEmpty then begin
      while not qbt.Eof do begin
        i := nxGrd2.AddRow();
        nxGrd2.Cell[nxColKodeBrg2.Index, i].AsString := qbt.FieldByName('kode_brg').AsString;
        qb := OpenRS('SELECT deskripsi, satuan FROM tbl_barang WHERE kode = %s',
          [qbt.FieldByName('kode_brg').AsString]);
        if not qb.IsEmpty then begin
          nxGrd2.Cell[nxColDesk2.Index, i].AsString := qb.FieldByName('deskripsi').AsString;
          nxGrd2.Cell[nxColSatuan2.Index, i].AsString := qb.FieldByName('satuan').AsString;
        end
        else begin

        end;
        qb.Close;
        nxGrd2.Cell[nxColQty2.Index, i].AsFloat := qbt.FieldByname('qty').AsFloat;
        qbt.Next;
      end;
    end;
    qbt.Close;
  end;

  if Self.Jenis = 'edit' then begin
    cxtNoTrans.Text := mNoSPK;

    qspk := OpenRS('SELECT tgl_p_selesai, keterangan FROM tbl_spk WHERE no_spk = ''%s''',[mNoSPk]);
    cxdTrgSelesai.Date := qspk.FieldByName('tgl_p_selesai').AsDateTime;
    cxtKetPPIC.Text := qspk.FieldByName('keterangan').AsString;
    qspk.Close;

    qbd := OpenRS('SELECT a.*, b.deskripsi FROM tbl_bom_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE no_spk = ''%s''',
      [mNoSPK]);
    if not qbd.IsEmpty then begin
      nxGrd2.ClearRows;
      while not qbd.Eof do begin
        i := nxGrd2.AddRow();
        nxGrd2.Cell[nxColKodeBrg2.Index, i].AsString := qbd.FieldByName('kode_brg').AsString;
        nxGrd2.Cell[nxColDesk2.Index, i].AsString := qbd.FieldByName('deskripsi').AsString;
        nxGrd2.Cell[nxColSatuan2.Index, i].AsString := qbd.FieldByName('satuan').AsString;
        nxGrd2.Cell[nxColQty2.Index,i].AsFloat := qbd.FieldByName('qty').AsFloat;
        qbd.Next;
      end;
      if nxGrd2.RowCount > 0 then nxGrd2.AddRow();
    end;
    qbd.Close;
    
  end;

  Screen.Cursor := crDefault;

end;

function TFrmTrsSPK_Trial.GetRow(grd: TNextGrid): Integer;
var
  i,j: Integer;
begin
  j := 0;
  for i := 0 to grd.RowCount - 1 do
    if grd.Cell[CKD_BRG,i].AsString <> '' then Inc(j);
  Result := j;
end;

procedure TFrmTrsSPK_Trial.nxGrd2CellDblClick(Sender: TObject; ACol,
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

procedure TFrmTrsSPK_Trial.nxGrd2AfterEdit(Sender: TObject; ACol,
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

procedure TFrmTrsSPK_Trial.cxLUBrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnTambahClick(nil);
end;

procedure TFrmTrsSPK_Trial.cxLUBrg2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    btnTambah2Click(nil);
end;

procedure TFrmTrsSPK_Trial.btnCariBrgClick(Sender: TObject);
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

procedure TFrmTrsSPK_Trial.btnCariBrg2Click(Sender: TObject);
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
    cxLUBrg2.EditValue := fKode.AsInteger;
  end;

end;

procedure TFrmTrsSPK_Trial.btnBatalMemoClick(Sender: TObject);
begin;
end;

procedure TFrmTrsSPK_Trial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  Release;
end;

procedure TFrmTrsSPK_Trial.Button1Click(Sender: TObject);
begin
  inherited;
  MsgBox(Self.Jenis);
end;

end.
