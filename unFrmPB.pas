unit unFrmPB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxTextEdit, cxCalendar, cxSpinEdit,
  cxDBLookupComboBox, cxDropDownEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGrid, cxCheckBox,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxLabel, StdCtrls, ExtCtrls,
  DB, ZAbstractRODataset, ZDataset;

type
  TfrmPenerimaanBarang = class(TfrmTplTrans)
    cxlbl1: TcxLabel;
    cxtNoBukti: TcxTextEdit;
    cxlbl5: TcxLabel;
    cxlSupp: TcxLookupComboBox;
    cxChkPBTanpaPO: TcxCheckBox;
    cxlbl6: TcxLabel;
    cxtAlamat: TcxTextEdit;
    cxlbl4: TcxLabel;
    cxdTglDatang: TcxDateEdit;
    cxlbl7: TcxLabel;
    cxtNopol: TcxTextEdit;
    cxlbl8: TcxLabel;
    cxtSopir: TcxTextEdit;
    cxlbl14: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtNoSJ: TcxTextEdit;
    btnPilihPO: TButton;
    cxgrdPP: TcxGrid;
    cxtbPB: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColKodeBrg: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColNoPO: TcxGridColumn;
    cxColTglPO: TcxGridColumn;
    cxColQtyPO: TcxGridColumn;
    cxColQtyTerima: TcxGridColumn;
    cxColQtyDatang: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColHarga: TcxGridColumn;
    cxColGdg: TcxGridColumn;
    cxColPPn: TcxGridColumn;
    cxColValuta: TcxGridColumn;
    cxColKeterangan: TcxGridColumn;
    cxColTotal: TcxGridColumn;
    cxColIdSatuan: TcxGridColumn;
    cxColIdBrg: TcxGridColumn;
    cxColIdGdg: TcxGridColumn;
    cxColIdPO: TcxGridColumn;
    cxgrdlvl1Grid1Level1: TcxGridLevel;
    zqrSupp: TZReadOnlyQuery;
    zqrPO: TZReadOnlyQuery;
    zqrBarang: TZReadOnlyQuery;
    dsBarang: TDataSource;
    dsSupp: TDataSource;
    zqrGdg: TZReadOnlyQuery;
    dsGdg: TDataSource;
    dsPO: TDataSource;
    cxlbl3: TcxLabel;
    cxdTglPO: TcxDateEdit;
    cxGrdPB2: TcxGrid;
    cxtbPB2: TcxGridTableView;
    cxColKodeBrg2: TcxGridColumn;
    cxColDeskripsi2: TcxGridColumn;
    cxColQtyDatang2: TcxGridColumn;
    cxColSatuan2: TcxGridColumn;
    cxGridColumn10: TcxGridColumn;
    cxColHarga2: TcxGridColumn;
    cxColPPN2: TcxGridColumn;
    cxColGdg2: TcxGridColumn;
    cxColKeterangan2: TcxGridColumn;
    cxColKodeBrg22: TcxGridColumn;
    cxColIdGdg22: TcxGridColumn;
    cxColIdSatuan22: TcxGridColumn;
    cxColSubtotal2: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxChkPosting: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxChkPBTanpaPOClick(Sender: TObject);
    procedure cxlSuppExit(Sender: TObject);
    procedure btnPilihPOClick(Sender: TObject);
    procedure cxtbPB2DataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxtbPB2DataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mNoLPB: string;
  public
    { Public declarations }
    property NoLPB: string read mNoLPB write mNoLPB;
  end;

var
  frmPenerimaanBarang: TfrmPenerimaanBarang;

implementation

uses
  unDm, unTools, unAplikasi, unFrmPilihPO;

{$R *.dfm}

procedure TfrmPenerimaanBarang.FormCreate(Sender: TObject);
begin
  inherited;
  cxtNoBukti.Text := GetLastFak('spbb');
  zqrSupp.Open;
  zqrBarang.Open;
  zqrGdg.Open;
  cxdTglDatang.EditValue := Aplikasi.TanggalServer;
  if cxChkPBTanpaPO.Checked= True then begin
    cxGrdPB2.Visible := True;
    cxgrdPP.Visible := False;
    btnPilihPO.Visible := False;
  end
  else begin
    cxGrdPB2.Visible := False;
    cxgrdPP.Visible := True;
    btnPilihPO.Visible := True;
   end;
  cxGrdPB2.Top := cxgrdPP.Top;
  cxGrdPB2.Left := cxgrdPP.Left;

  if Aplikasi.UserDept='AKT' then
    cxChkPosting.Visible := True
  else
    cxChkPosting.Visible := False;
end;

procedure TfrmPenerimaanBarang.cxChkPBTanpaPOClick(Sender: TObject);
begin
  inherited;
  if cxChkPBTanpaPO.Checked= True then begin
    cxGrdPB2.Visible := True;
    cxgrdPP.Visible := False;
    btnPilihPO.Visible := False;
  end
  else begin
    cxGrdPB2.Visible := False;
    cxgrdPP.Visible := True;
    btnPilihPO.Visible := True;
   end;
  {cxGrdPB2.Visible := cxChkPBTanpaPO.Checked;
  btnPilihPO.Visible := not cxChkPBTanpaPO.Checked; }
end;

procedure TfrmPenerimaanBarang.cxlSuppExit(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
   try
    zqrPO.Close;
    zqrPO.ParamByName('id_supplier').AsString := cxlSupp.EditValue;
    zqrPO.Open;

    cxtbPB.DataController.RecordCount := 0;
    //cxdTglPO.Text := '';
    q := OpenRS('SELECT alamat, alamat2, kota, provinsi, negara FROM tbl_supplier WHERE kode = ''%s''',[cxlSupp.EditValue]);
    cxtAlamat.Text := q.FieldByName('alamat').AsString + ', ' + q.FieldByName('alamat2').AsString +
      ', ' + q.FieldByname('kota').AsString + ', ' + q.FieldByName('provinsi').AsString;
    q.Close;
  except
  end;
end;

procedure TfrmPenerimaanBarang.btnPilihPOClick(Sender: TObject);
var
  f: TfrmPilihPO;
  cx: TcxGridTableView;
  i,j: Integer;
  qhrg, qbrg: TZQuery;
begin
  inherited;
  if cxlSupp.Text = '' then Abort;

  f := TfrmPilihPO.Create(Self);
  if Self.Jenis = 'edit' then f.IsEdit := true;
  f.IdSupp := cxlSupp.EditValue;
  if f.ShowModal = mrOk then begin
    cx := f.cxtbSO;
    cxtbPB.BeginUpdate;
    cxtbPB.DataController.RecordCount := 0;
    with cx.DataController do begin
      for i := 0 to RecordCount -  1 do begin
        if Values[i, f.cxColPilih.Index] = 1 then begin
          j := cxtbPB.DataController.AppendRecord;
          cxtbPB.DataController.Values[j, cxColIdBrg.Index] := Values[i, f.cxColIdBrg.Index];
          cxtbPB.DataController.Values[j, cxColIdPO.Index] := Values[i, f.cxColIdSO.Index];
          cxtbPB.DataController.Values[j, cxColKodeBrg.Index] := Values[i,f.cxColKodeBrg.Index];
          cxtbPB.DataController.Values[j, cxColDeskripsi.Index] := Values[i,f.cxColDeskripsi.Index];
          cxtbPB.DataController.Values[j, cxColNoPO.Index] := Values[i, f.cxColNoPO.Index];
          cxtbPB.DataController.Values[j, cxColTglPO.Index] := Values[i, f.cxColTanggal.Index];
          cxtbPB.DataController.Values[j, cxColQtyPO.Index] := Values[i, f.cxColQtyPO.Index];
          cxtbPB.DataController.Values[j, cxColQtyTerima.Index] := Values[i, f.cxColQtyDiterima.Index];
          cxtbPB.DataController.Values[j, cxColQtyDatang.Index] := Values[i, f.cxColJmlTerima.Index];

          cxtbPB.DataController.Values[j, cxColGdg.Index] := Values[i, f.cxColGdg.Index];
          cxtbPB.DataController.Values[j, cxColSatuan.Index] := Values[i, f.cxColSatuan.Index];
          //cxtbPB.DataController.Values[j, cxColIdSatuan.Index] := Values[i, f.cxColIdSatuan.Index];

          qhrg := OpenRS('SELECT harga FROM tbl_po_det WHERE no_bukti = ''%s'' AND kode_brg = ''%s''',
            [Values[i, f.cxColNoPO.Index], Values[i, f.cxColIdBrg.Index]]);
          cxtbPB.DataController.Values[j, cxColHarga.Index] := qhrg.FieldByname('harga').AsFloat;
          qhrg.Close;

          cxtbPB.DataController.Values[j, cxColTotal.Index] :=
            cxtbPB.DataController.Values[j, cxColHarga.Index] * cxtbPB.DataController.Values[j, cxColQtyTerima.Index];
        end;
      end;
      //HitungTotal;
    end;
    cxtbPB.EndUpdate;  
  end;
end;

procedure TfrmPenerimaanBarang.cxtbPB2DataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  sat: string;
  t1,t2 : Real;
begin
  inherited;
    if AItemIndex = cxColKodeBrg2.Index then begin
    ADataController.Values[ARecordIndex, cxColDeskripsi2.Index] := ADataController.Values[ARecordIndex, AItemIndex];
    ADataController.Values[ARecordIndex, cxColIdSatuan22.Index] := GetSatuan(ADataController.Values[ARecordIndex, AItemIndex], sat);
    ADataController.Values[ARecordIndex, cxColSatuan2.Index] := sat;
  end;

  if AItemIndex = cxColDeskripsi2.index then begin
    ADataController.Values[ARecordIndex, cxColKodeBrg2.Index] := ADataController.Values[ARecordIndex, AItemIndex];
    ADataController.Values[ARecordIndex, cxColIdSatuan22.Index] := GetSatuan(ADataController.Values[ARecordIndex, AItemIndex], sat);
    ADataController.Values[ARecordIndex, cxColSatuan2.Index] := sat;
  end;


    if (AItemIndex = cxColHarga2.index) or (AItemIndex = cxColPPN2.index) then begin
     try
      cxtbPB2.BeginUpdate;
      if cxColPPN2.EditValue = 'PPN' then begin
        t1 := (cxColQtyDatang2.EditValue *  cxColHarga2.EditValue) ;
        t2 := t1 * (10/100);
        cxColSubtotal2.EditValue := t1 + t2;
        cxtbPB2.DataController.RefreshExternalData;
      end else begin
        cxColSubtotal2.EditValue := cxColQtyDatang2.EditValue *  cxColHarga2.EditValue;
        cxtbPB2.DataController.RefreshExternalData;
      end;

    finally
      cxtbPB2.EndUpdate;
    end;
  end;
end;

procedure TfrmPenerimaanBarang.cxtbPB2DataControllerBeforePost(
  ADataController: TcxCustomDataController);
  var
  i,j,k: integer;
  v: variant;
  sa: real;
begin
  inherited;
  i := ADataController.FocusedRowIndex;
  k := ADataController.GetEditingRecordIndex;
  v := ADataController.Values[i, cxColKodeBrg2.Index];

  for j := 0 to ADataController.RecordCount - 1 do begin
    if j <> k then begin
      if v = ADataController.Values[j, cxColKodeBrg2.Index] then begin
        MsgBox('Item tersebut sudah ada.');
        ADataController.DeleteRecord(i);
        Abort
      end;
    end;
  end;

  if (VarIsNull(ADataController.Values[i, cxColKodeBrg2.Index])) or
      (Trim(ADataController.Values[i, cxColKodeBrg2.Index]) = '')  then begin
    MsgBox('Kode barang harus diisi.');
    Abort;
  end;

  if (VarIsNull(ADataController.Values[i, cxColGdg2.Index])) or
      (Trim(ADataController.Values[i, cxColGdg2.Index]) = '')  then begin
    MsgBox('Kode gudang harus diisi.');
    Abort;
  end;

  if ADataController.Values[i, cxColQtyDatang2.Index] <= 0 then begin
    MsgBox('Qty. Datang tidak boleh 0 atau minus.');
    Abort;
  end;
end;

procedure TfrmPenerimaanBarang.btnSimpanClick(Sender: TObject);
var
  in_head, in_det: TZTable;
  barang,qSupp,brg ,qj, q_sd,q_sh,q_sa, hist,brg_det,qjd: TZQuery;
  sNoTrs, sNoTrsSJ,sAkunBrg,sNoPB,sNoJ,sAkun : string;
  sAkhir, hpp_akhir, HPP, totHutang, totPPN: real;
  i: integer;
  b: Boolean;
  q: TZQuery;
begin
  inherited;
  if cxChkPosting.Checked = True then begin
    // cek apakah spbb sudah disimpan
    q := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''',
      [cxtNoBukti.Text]);
    if q.IsEmpty then begin
      MsgBox('LPB ini belum disimpan.');
      q.Close;
      Abort;
    end;
    q.Close;

     barang := OpenRS('select ifnull(COUNT(a.kode_brg),0) j1,ifnull(COUNT(b.akun_persediaan),0) j2 from tbl_spbb_det a ' +
            'join tbl_barang b on a.kode_brg=b.kode where a.no_bukti = ''%s''',[cxtNoBukti.Text]);

     if barang.FieldByName('j1').AsInteger = barang.FieldByName('j2').AsInteger then begin

     q := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''',
      [cxtNoBukti.Text]);

    if q.FieldByName('no_penerimaan').IsNull then begin

      sNoPB := GetLastFak('penerimaan');
      UpdateFaktur(Copy(sNoPB,1,7));

      try
        dm.zConn.StartTransaction;

        q_sh := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''',
          [cxtNoBukti.Text]);
        if not q_sh.IsEmpty then begin
          q_sh.Edit;
          q_sh.FieldByName('no_penerimaan').AsString := sNoPB;
          q_sh.FieldByName('f_posted').AsInteger  := 1;
          q_sh.Post;

          q_sd := OpenRS('SELECT * FROM tbl_spbb_det WHERE no_bukti = ''%s''',
            [cxtNoBukti.Text]);
          if not q_sd.IsEmpty then begin

            q_sd.Close;
            q_sd := OpenRS('SELECT * FROM tbl_spbb_det WHERE no_bukti = ''%s''',[cxtNoBukti.Text]);

            totHutang := 0; totPPN := 0;
            sNoJ := GetLastFak('jurnal');
            UpdateFaktur(Copy(sNoJ,1,6));

            qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
              qj.Insert;
              qj.FieldByName('no_jurnal').AsString := cxtNoBukti.Text ;
              qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
              qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
              qj.FieldByName('keterangan').AsString := 'PENERIMAAN BARANG';
              qj.FieldByName('f_posted').AsString := '1';
              qj.FieldByName('user').AsString := Aplikasi.NamaUser;
              qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
              qj.Post;
              qj.Close;

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
                FieldByName('harga').AsFloat := q_sd.FieldByName('harga').AsFloat;
                FieldByName('hpp').AsFloat := HPP;
                FieldByName('unit_ktg').AsString := GetUnitKTG(q_sd.FieldByName('kode_brg').AsString);
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

              {brg_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''%s''',
                [q_sd.FieldByName('kode_brg').AsString,q_sd.FieldByName('gudang').AsString]);
              with brg_det do begin
                Edit;
                FieldByName('stok').AsFloat :=
                  FieldByName('stok').AsFloat + q_sd.FieldByName('qty').AsFloat;
                FieldByName('hpp').AsFloat := HPP;
                Post;
              end;
              brg_det.Close; }

               qSupp := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[cxlSupp.Editvalue]);
               brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
                [q_sd.FieldByName('kode_brg').AsString]);



              // simpan jurnal
              sAkun := GetDefaultAkunBrg(q_sd.FieldByName('kode_brg').AsString,'persediaan');

              qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
              qjd.Insert;
              qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
              qjd.FieldByName('no_jurnal').AsString := cxtNoBukti.Text ;
              qjd.FieldByName('no_trans').AsString := sNoJ;
              qjd.FieldByName('akun').AsString := sAkun;
              qjd.FieldByName('debet').AsFloat := q_sd.FieldByName('harga').AsFloat * q_sd.FieldByName('qty').AsFloat;
              totHutang := totHutang + qjd.FieldByName('debet').AsFloat;
              qjd.FieldByName('keterangan').AsString := brg.FieldByName('deskripsi').AsString + '-' + qSupp.FieldByName('nama').AsString;
              qjd.FieldByName('dc').AsString := 'D';
              qjd.FieldByName('kode_brg').AsString := q_sd.FieldByName('kode_brg').AsString;
              qjd.FieldByName('unit').AsString := GetUnitKTG(q_sd.FieldByName('kode_brg').AsString);
              qjd.Post;


              if q_sd.FieldByName('pajak').AsString = 'PPN' then begin
                totPPN := totPPN + ((q_sd.FieldByName('harga').AsFloat * q_sd.FieldByName('qty').AsFloat) * (10/100));
                sAkun := GetDefaultAkun('ppnmasukanblmfaktur');
                qjd.Insert;
                qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := cxtNoBukti.Text;
                qjd.FieldByName('no_trans').AsString := sNoJ ;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('debet').AsFloat := (q_sd.FieldByName('harga').AsFloat * q_sd.FieldByName('qty').AsFloat) * (10/100);
                qjd.FieldByName('keterangan').AsString := 'PPN Masukan Belum Difakturkan ' +'['+ qSupp.FieldByName('nama').AsString +']';
                qjd.FieldByName('dc').AsString := 'D';
                qjd.FieldByName('unit').AsString := GetUnitKTG(q_sd.FieldByName('kode_brg').AsString);
                qjd.Post;
              end;

              q_sd.Next;
            end;

            sAkun := GetDefaultAkun('hutangbelum');
            qjd.Insert;
            qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := cxtNoBukti.Text;
            qjd.FieldByName('no_trans').AsString := sNoJ;
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('kredit').AsFloat := totHutang + totPPN;
            qjd.FieldByName('keterangan').AsString := 'HUTANG BLM DIFAKTURKAN '+'['+ qSupp.FieldByName('nama').AsString +']';
            qjd.FieldByName('dc').AsString := 'K';
            qjd.FieldByName('unit').AsString := GetUnitKTG(q_sd.FieldByName('kode_brg').AsString);
            qjd.Post;
            qjd.Close;

          end;
        end;

        q_sh.Close;
        q_sh.Close;

        dm.zConn.Commit;

        close;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end
    else begin
      //MsgBox('SPBB dengan No. : ' + cxtNoTrans.Text + ' sudah di posting.');
    end;
    q.Close;
    end
   else begin
              MsgBox('LPB tidak dapat diposting, Periksa Akun Persediaan Barang');
            end;
            barang.Close;


  end
  else begin
      if cxChkPBTanpaPO.Checked = False then begin
      if cxtbPB.DataController.RecordCount = 0 then begin
        MsgBox('Detail transaksi tidak boleh kosong.');
        Abort;
      end
      else begin
        try

          if Self.Jenis = 'edit' then
            sNoTrs := cxtNoBukti.Text
          else begin
            sNoTrs := GetLastFak('spbb');
            UpdateFaktur(Copy(sNoTrs,1,8));
          end;

          dm.zConn.StartTransaction;

          if Self.Jenis = 'edit' then begin
            dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_head WHERE no_bukti = ''' + cxtNoBukti.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_det WHERE no_bukti = ''' + cxtNoBukti.Text + '''');
          end;

          in_head := OpenTbl('tbl_spbb_head');
          in_det := OpenTbl('tbl_spbb_det');

          in_head.Insert;
          in_head.FieldByName('no_bukti').AsString := sNoTrs;
          in_head.FieldByName('f_po').AsInteger := 1;
          //in_head.FieldByName('no_po').AsString := cxlNoPO.Text;
          in_head.FieldByName('tanggal').AsDateTime := cxdTglDatang.Date;
          in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          if not VarIsNull(cxtNopol.Text) then
          in_head.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
          if not VarIsNull(cxtSopir.Text) then
          in_head.FieldByName('driver').AsString := Trim(cxtSopir.Text);
          in_head.FieldByName('user').AsString := aplikasi.NamaUser;
          in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
          in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          if not VarIsNull(cxtKeterangan.Text) then
          in_head.FieldByName('keterangan').AsString := Trim(cxtKeterangan.Text);
          in_head.FieldByName('kode_supp').AsString := Trim(cxlSupp.EditValue);
          if not VarIsNull(cxtNoSJ.Text) then
          in_head.FieldByName('no_sj').AsString := cxtNoSJ.Text;


          in_head.Post;

          // simpan in_det
        with cxtbPB.DataController do begin
          for i := 0 to RecordCount - 1 do begin
            in_det.Insert;
            in_det.FieldByName('no_bukti').AsString := sNoTrs;
            in_det.FieldByname('kode_brg').AsString := Values[i, cxColKodeBrg.Index];
            in_det.FieldByName('no_po').AsString := Values[i, cxColNoPO.Index];
            in_det.FieldByname('qty_po').AsFloat := Values[i, cxColQtyPO.Index];
            in_det.FieldByname('qty').AsFloat := Values[i, cxColQtyDatang.Index];
            in_det.FieldByName('satuan').AsString := Values[i, cxColSatuan.Index];
            in_det.FieldByName('harga').AsFloat := Values[i, cxColHarga.Index];
            in_det.FieldByName('sub_total').AsFloat := Values[i, cxColTotal.Index];
            if not VarIsNull(Values[i, cxColKeterangan.Index]) then
            in_det.FieldByName('keterangan').AsString := Values[i, cxColKeterangan.Index];
            in_det.FieldbyName('gudang').AsString := Values[i, cxColGdg.Index];
            in_det.Post;

            dm.zConn.ExecuteDirect('UPDATE tbl_barang SET price = ' +
              StringReplace(Values[i, cxColHarga.Index],',','.',[rfReplaceAll]) +
              ',price_date='''+ FormatDateTime('yyyy-mm-dd',cxdTglDatang.Date) +''' ' +
              'WHERE kode = ''' + Values[i, cxColKodeBrg.Index] + '''');

          end;
          end;



          in_head.Close;
          in_det.Close;



          dm.zConn.Commit;
          Self.Jenis := '';

          if (Sender as TButton).Name <> 'btnCetakSJ' then begin
            MsgBox('Transaksi SPBB masuk sudah disimpan dengan nomer: ' + sNoTrs);
            cxtNoBukti.Text := sNoTrs;
          end;

          //zqrNoBukti.Close;
          //zqrNoBukti.Open;
          //btnBatalClick(nil);
          Close;

          //if (Sender as TButton).Name <> 'btnCetakSJ' then begin
          //  btnBatalClick(nil);
          //end;

        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
            Self.Jenis := '';
            Close;
          end;
        end;
      end;
    end else begin
      if cxtbPB2.DataController.RecordCount = 0 then begin
      MsgBox('Detail transaksi tidak boleh kosong.');
      Abort;
      end
      else begin
        try

          if Self.Jenis = 'edit' then
            sNoTrs := cxtNoBukti.Text
          else begin
            sNoTrs := GetLastFak('spbb');
            UpdateFaktur(Copy(sNoTrs,1,8));
          end;

          dm.zConn.StartTransaction;

          if Self.Jenis = 'edit' then begin
            dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_head WHERE no_bukti = ''' + cxtNoBukti.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_spbb_det WHERE no_bukti = ''' + cxtNoBukti.Text + '''');
          end;

          in_head := OpenTbl('tbl_spbb_head');
          in_det := OpenTbl('tbl_spbb_det');

          in_head.Insert;
          in_head.FieldByName('no_bukti').AsString := sNoTrs;
          in_head.FieldByName('f_po').AsInteger := 0;
          //in_head.FieldByName('no_po').AsString := cxlNoPO.Text;
          in_head.FieldByName('tanggal').AsDateTime := cxdTglDatang.Date;
          in_head.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          if not VarIsNull(cxtNopol.Text) then
          in_head.FieldByName('nopol').AsString := Trim(cxtNopol.Text);
          if not VarIsNull(cxtSopir.Text) then
          in_head.FieldByName('driver').AsString := Trim(cxtSopir.Text);
          in_head.FieldByName('user').AsString := aplikasi.NamaUser;
          in_head.FieldByName('user_dept').AsString := aplikasi.UserDept;
          in_head.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          if not VarIsNull(cxtKeterangan.Text) then
          in_head.FieldByName('keterangan').AsString := Trim(cxtKeterangan.Text);
          in_head.FieldByName('kode_supp').AsString := Trim(cxlSupp.EditValue);
          if not VarIsNull(cxtNoSJ.Text) then
          in_head.FieldByName('no_sj').AsString := cxtNoSJ.Text;
          if cxChkPosting.Checked then
            in_head.FieldByName('f_posted').AsInteger := 1
          else
            in_head.FieldByName('f_posted').AsInteger := 0 ;
          in_head.Post;

          // simpan in_det
        with cxtbPB2.DataController do begin
          for i := 0 to RecordCount - 1 do begin
            in_det.Insert;
            in_det.FieldByName('no_bukti').AsString := sNoTrs;
            in_det.FieldByname('kode_brg').AsString := Values[i, cxColKodeBrg2.Index];
            in_det.FieldByname('qty').AsFloat := Values[i, cxColQtyDatang2.Index];
            in_det.FieldByName('satuan').AsString := Values[i, cxColSatuan2.Index];
            in_det.FieldByName('pajak').AsString := Values[i, cxColPPN2.Index];
            in_det.FieldByName('harga').AsFloat := Values[i, cxColHarga2.Index];
            in_det.FieldByName('sub_total').AsFloat := Values[i, cxColSubtotal2.Index];
            if not VarIsNull(Values[i, cxColKeterangan2.Index]) then
            in_det.FieldByName('keterangan').AsString := Values[i, cxColKeterangan2.Index];
            in_det.FieldbyName('gudang').AsString := Values[i, cxColGdg2.Index];
            in_det.Post;

            dm.zConn.ExecuteDirect('UPDATE tbl_barang SET price = ' +
              StringReplace(Values[i, cxColHarga2.Index],',','.',[rfReplaceAll]) +
              ',price_date='''+ FormatDateTime('yyyy-mm-dd',cxdTglDatang.Date) +''' ' +
              'WHERE kode = ''' + Values[i, cxColKodeBrg2.Index] + '''');

          end;
        end;



          in_head.Close;
          in_det.Close;

          dm.zConn.Commit;
          Self.Jenis := '';

          if (Sender as TButton).Name <> 'btnCetakSJ' then begin
            MsgBox('Transaksi SPBB masuk sudah disimpan dengan nomer: ' + sNoTrs);
            cxtNoBukti.Text := sNoTrs;
          end;

          //zqrNoBukti.Close;
          //zqrNoBukti.Open;
          //btnBatalClick(nil);
          Close;

          //if (Sender as TButton).Name <> 'btnCetakSJ' then begin
          //  btnBatalClick(nil);
          //end;

        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
            Self.Jenis := '';
            Close;
          end;
        end;
      end;
    end;
  end;

end;

procedure TfrmPenerimaanBarang.FormShow(Sender: TObject);
var
  q,z : TZQuery;
  i : Integer ;
begin
  inherited;
  if Self.Jenis='edit' then begin

    q := OpenRS('SELECT * FROM tbl_spbb_head WHERE no_bukti = ''%s''', [ NoLPB]);
    
    cxtNoBukti.Text := NoLPB;

    with q do begin
        cxdTglDatang.Date       := FieldByName('tanggal').AsDateTime;
        cxtNopol.Text           := FieldByName('nopol').AsString;
        cxtSopir.Text           := FieldByName('driver').AsString;
        cxtKeterangan.Text      := FieldByName('keterangan').AsString;
        cxlSupp.EditValue       := FieldByName('kode_supp').AsString;
        cxtNoSJ.Text            := FieldByName('no_sj').AsString;

        if FieldByName('f_posted').AsInteger=1 then begin
          cxChkPosting.Checked:=True ;
          btnSimpan.Enabled := False;
          end
        else begin
          cxChkPosting.Checked:=False;
          btnSimpan.Enabled := True;
          end;

         if FieldByName('f_po').AsInteger=0 then
          cxChkPBTanpaPO.Checked:=True
        else
          cxChkPBTanpaPO.Checked:=False;
    end;

    z := OpenRS('SELECT alamat, alamat2, kota, provinsi, negara FROM tbl_supplier WHERE kode = ''%s''',[cxlSupp.EditValue]);
    cxtAlamat.Text := z.FieldByName('alamat').AsString + ', ' + z.FieldByName('alamat2').AsString +
      ', ' + z.FieldByname('kota').AsString + ', ' + z.FieldByName('provinsi').AsString;
    z.Close;

    z := OpenRS('SELECT a.*,(SELECT tanggal FROM tbl_po_head where no_bukti=a.no_bukti) tanggal,(SELECT deskripsi FROM tbl_barang WHERE kode=a.kode_brg) deskripsi FROM tbl_spbb_det a WHERE a.no_bukti = ''%s''', [ NoLPB]);

    if q.FieldByName('f_po').asInteger=0 then begin

        cxGrdPB2.Visible := True;
        cxgrdPP.Visible := False;
        btnPilihPO.Visible := False;

        cxtbPB2.DataController.OnRecordChanged := nil;

        while not z.Eof do begin
          with cxtbPB2.DataController do begin
           i := AppendRecord ;
            Values[i, cxColKodeBrg2.Index]        := z.FieldByname('kode_brg').AsString;
            Values[i, cxColDeskripsi2.Index]      := z.FieldByname('kode_brg').AsString;
            Values[i, cxColQtyDatang2.Index]      := z.FieldByname('qty').AsFloat;
            Values[i, cxColSatuan2.Index]         := z.FieldByName('satuan').AsString;
            Values[i, cxColHarga2.Index]          := z.FieldByName('harga').AsFloat;
            Values[i, cxColPPN2.Index]            := z.FieldByName('pajak').AsString;
            Values[i, cxColKeterangan2.Index]     := z.FieldByName('keterangan').AsString;
            Values[i, cxColGdg2.Index]            := z.FieldbyName('gudang').AsString;
            Values[i, cxColSubtotal2.Index]       := z.FieldByName('sub_total').AsFloat;
          end;
          z.Next;
        end;
        z.Close;

        cxtbPB2.DataController.OnRecordChanged := cxtbPB2DataControllerRecordChanged;
    end
    else begin
        cxGrdPB2.Visible := False;
        cxgrdPP.Visible := True;
        btnPilihPO.Visible := True;

        while not z.Eof do begin
          with cxtbPB.DataController do begin
           i := AppendRecord ;
            Values[i, cxColKodeBrg.Index]     := z.FieldByname('kode_brg').AsString;
            Values[i, cxColDeskripsi.Index]   := z.FieldByname('deskripsi').AsString;
            Values[i, cxColNoPO.Index]        := z.FieldByName('no_po').AsString;
            Values[i, cxColTglPO.Index]       := z.FieldByName('tanggal').AsDateTime;
            Values[i, cxColQtyPO.Index]       := z.FieldByname('qty_po').AsFloat;
            Values[i, cxColQtyDatang.Index]   := z.FieldByname('qty').AsFloat;
            Values[i, cxColSatuan.Index]      := z.FieldByName('satuan').AsString;
            Values[i, cxColHarga.Index]       := z.FieldByName('harga').AsFloat;
            Values[i, cxColTotal.Index]       := z.FieldByName('sub_total').AsFloat;
            Values[i, cxColKeterangan.Index]  := z.FieldByName('keterangan').AsString;
            Values[i, cxColGdg.Index]         := z.FieldbyName('gudang').AsString;
          end;
          z.Next;
        end;
        z.Close;
    end;
  end;
end;

end.