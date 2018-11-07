unit unFrmPembayaranPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, StdCtrls, ExtCtrls, cxMemo,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCalendar, ZAbstractRODataset, ZDataset, cxSpinEdit, cxCheckBox;

type
  TfrmPembayaranPembelian = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxlSupplier: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxdTglInvoice: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxComboBox1: TcxComboBox;
    cxGrid1Level1: TcxGridLevel;
    cxTbl: TcxGridTableView;
    cxColNoInvoice: TcxGridColumn;
    cxLabel7: TcxLabel;
    cxmKeterangan: TcxMemo;
    zqrSupp: TZReadOnlyQuery;
    dsSupp: TDataSource;
    zqrPO: TZReadOnlyQuery;
    dsPO: TDataSource;
    cxColTgl: TcxGridColumn;
    cxColTotInvoice: TcxGridColumn;
    cxColTerbayar: TcxGridColumn;
    cxColSisa: TcxGridColumn;
    cxColDibayar: TcxGridColumn;
    cxLabel6: TcxLabel;
    cxdTanggal: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxlAkunPembayaran: TcxLookupComboBox;
    dsAkun: TDataSource;
    zqrAkun: TZReadOnlyQuery;
    cxtNoAkun: TcxTextEdit;
    cxChkPosting: TcxCheckBox;
    cxLabel9: TcxLabel;
    cxsTotJmlPembayaran: TcxSpinEdit;
    cxtAkunSupp: TcxTextEdit;
    cxColCair: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure cxColNoPOPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxlAkunPembayaranPropertiesChange(Sender: TObject);
    procedure cxlSupplierPropertiesChange(Sender: TObject);
    procedure cxColDibayarPropertiesChange(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxTblDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure cxTblDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmPembayaranPembelian: TfrmPembayaranPembelian;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TFrmPembayaranPembelian.FormCreate(Sender: TObject);
begin
  inherited;
  zqrSupp.Open;
  zqrAkun.Open;
end;

procedure TfrmPembayaranPembelian.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNoTrans.Text := GetLastFak('pembayaran-pembelian');
  cxdTanggal.Date := Aplikasi.TanggalServer;
  cxlAkunPembayaran.EditValue := GetDefaultAkun('PEMBAYARAN PEMBELIAN', 'K');
end;

procedure TfrmPembayaranPembelian.ClearAll;
begin
  cxtNoTrans.Text := '';
  cxdTanggal.Text := '';
  cxlSupplier.Text := '';
  cxTbl.DataController.RecordCount := 0;
  cxlAkunPembayaran.Text := '';
  cxtAkunSupp.Text := '';
end;

procedure TfrmPembayaranPembelian.cxColNoPOPropertiesChange(
  Sender: TObject);
var
  q, qp: TZQuery;
  i: Integer;
begin
  {
  inherited;

  i := cxTbl.DataController.GetFocusedRowIndex;
  q := OpenRS('SELECT a.tanggal, SUM(b.qty * b.harga) total ' +
    'FROM tbl_po_head a INNER JOIN tbl_po_det b ' +
    'ON a.no_bukti = b.no_bukti ' +
    'WHERE a.no_bukti = ''%s'' GROUP BY a.tanggal',
    [zqrPO.FieldByName('no_bukti').AsString]);

  qp := OpenRS('SELECT IFNULL(SUM(jml_pembayaran),0) jml_bayar FROM tbl_trspelunasan_det WHERE no_po = ''%s''',
    [zqrPO.FieldByName('no_bukti').AsString]);
    
  with cxTbl.DataController do begin
    Values[i, cxColTotPembelian.Index] := q.FieldByName('total').AsFloat;
    Values[i, cxColTgl.Index] := q.FieldByName('tanggal').AsDateTime;
    Values[i, cxColNoPO.Index] := zqrPO.FieldByName('no_bukti').AsString;
    Values[i, cxColTerbayar.Index] := qp.FieldByName('jml_bayar').AsFloat;
    Values[i, cxColSisa.Index] := Values[i,cxColTotPembelian.Index] - Values[i, cxColTerbayar.Index];
  end;

  q.Close;
  qp.Close;
  }
end;

procedure TfrmPembayaranPembelian.btnSimpanClick(Sender: TObject);
var
  sNoJ, sNoTrs, sAkun, sNoJInfo, sAkunDiskon, sNoAkun: string;
  qp, qpd, qjh, qjd, qc, qgiro: TZQuery;
  i, iAns: integer;
begin
  
  inherited;
  if cxlSupplier.Text = '' then begin
    MsgBox('Supplier harus diisi.');
    cxlSupplier.SetFocus;
  end
  else if Trim(cxdTanggal.Text) = '' then begin
    MsgBox('Tanggal harus diisi.');
    cxdTanggal.SetFocus;
  end
  else if Trim(cxlAkunPembayaran.Text) = '' then begin
    MsgBox('Mohon pilih sumber akun pembayaran.');
    cxlAkunPembayaran.SetFocus;
  end
  else if cxsTotJmlPembayaran.Value = 0 then begin
    MsgBox('Detail pembayarang masih belum ada.');
  end
  else begin

    with cxTbl.DataController do begin
      // cek apakah masih ada pembayaran yang masih kosong
      for i := 0 to RowCount - 1 do begin
        if Values[i, cxColDibayar.Index] = 0 then begin
          MsgBox('Jumlah pembayaran masih ada yang kosong');
        end;
      end;      
    end;

    // cek apakah transaksi sudah di posting
    if Self.Jenis = 'edit' then begin
      sNoTrs := cxtNoTrans.Text;
      qc := OpenRS('SELECT * FROM v_jurnal WHERE no_trans = ''%s''',[sNoTrs]);
      if not qc.IsEmpty then begin
        MsgBox('Transaksi ini tidak bisa di edit karena sudah di posting.');
        qc.Close;
        Abort;
      end;
      qc.Close;
    end;

    try

      if Self.Jenis = 'tambah' then begin
        sNoTrs := GetLastFak('pembayaran-pembelian');
        UpdateFaktur(Copy(sNoTrs,1,8));
      end
      else begin
        sNoTrs := cxtNoTrans.Text;
      end;

      dm.zConn.StartTransaction;

      qp := OpenRS('SELECT * FROM tbl_trspelunasan WHERE no_bukti = ''%s''',[sNoTrs]);
      with qp do begin
        if not IsEmpty then
          Edit
        else
          Insert;
        FieldByName('no_bukti').AsString := sNoTrs;
        FieldByName('tanggal').AsDateTime := cxdTanggal.Date;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := Aplikasi.UserDept;
        FieldByName('akun_kas').AsString := VarToStr(cxlAkunPembayaran.EditValue);
        FieldByName('kode_supp').Value := cxlSupplier.EditValue;
        FieldByName('jenis').AsString := 'PL-PB';
        FieldByName('akun_bank').AsString := cxlAkunPembayaran.EditValue;
        Post;
      end;
      qp.Close;

      if Self.Jenis = 'edit' then
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trspelunasan_det WHERE no_bukti = ' +
          QuotedStr(sNoTrs));

      qpd := OpenRS('SELECT * FROM tbl_trspelunasan_det WHERE no_bukti = ''%s''',[sNoTrs]);
      for i := 0 to cxTbl.DataController.RowCount - 1 do begin
        qpd.Insert;
        qpd.FieldByName('no_bukti').AsString := sNoTrs;
        qpd.FieldByName('no_invoice').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
        qpd.FieldByName('jml_pembayaran').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
        qpd.Post;
      end;
      qpd.Close;
      
      if cxChkPosting.Checked then begin
        for i := 0 to cxTbl.DataController.RecordCount - 1 do begin
          if cxTbl.DataController.Values[i, cxColDibayar.Index] > 0 then begin
            sNoJ := GetLastFak('jurnal');
            UpdateFaktur(Copy(sNoJ,1,6));
            sAkun := cxtAkunSupp.Text;
            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
            qjd.Insert;
            qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := sNoJ;
            qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
            qjd.FieldByName('keterangan').AsString := 'PEMBAYARAN PEMBELIAN (AP)';
            qjd.FieldByName('kode_suppcust').AsString := cxlSupplier.EditValue;
            qjd.FieldByName('dc').AsString := 'D';
            qjd.Post;

            sAkun := GetDefaultAkun('depositintransit');
            qjd.Insert;
            qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := sNoJ;
            qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
            qjd.FieldByName('keterangan').AsString := 'PEMBAYARAN PEMBELIAN (AP)';
            qjd.FieldByName('dc').AsString := 'K';
            qjd.FieldByName('kode_suppcust').AsString := cxlSupplier.EditValue;
            qjd.Post;

            if cxTbl.DataController.Values[i, cxColCair.Index] = 1 then begin
              sAkun := GetDefaultAkun('depositintransit');
              qjd.Insert;
              qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
              qjd.FieldByName('no_jurnal').AsString := sNoJ;
              qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
              qjd.FieldByName('akun').AsString := sAkun;
              qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
              qjd.FieldByName('keterangan').AsString := 'PEMBAYARAN PEMBELIAN (AP)';
              qjd.FieldByName('dc').AsString := 'D';
              qjd.Post;

              sAkun := cxtNoAkun.Text;
              qjd.Insert;
              qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
              qjd.FieldByName('no_jurnal').AsString := sNoJ;
              qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
              qjd.FieldByName('akun').AsString := sAkun;
              qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
              qjd.FieldByName('keterangan').AsString := 'PEMBAYARAN PEMBELIAN (AP)';
              qjd.FieldByName('dc').AsString := 'K';
              qjd.Post;
              qjd.Close;
            end;
            qjd.Close;
          end;
        end;

        // update status posting
        dm.zConn.ExecuteDirect(
          Format('UPDATE tbl_trspelunasan SET f_posted = 1 ' +
            'WHERE no_bukti = ''%s''',[sNoTrs])
        );
        
      end;

      dm.zConn.Commit;

      aplikasi.log_('SIMPAN PEMBAYARAN PEMBELIAN : ' + sNoTrs);

      MsgBox('Transaksi Pelunasan pembelian sudah disimpan dengan Nomor: ' + sNoTrs + Chr(10) + Chr(13) +
        'No Jurnal : ' + sNoJ);

      ClearAll;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
    
  end;

end;

procedure TfrmPembayaranPembelian.cxlAkunPembayaranPropertiesChange(
  Sender: TObject);
begin
  inherited;
  inherited;
  if cxlAkunPembayaran.Text = '' then Abort;
  cxtNoAkun.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TfrmPembayaranPembelian.cxlSupplierPropertiesChange(
  Sender: TObject);
var
  i: integer;
  q: TZQuery;
begin
  inherited;

  q := OpenRS('SELECT akun_hutang FROM tbl_supplier WHERE kode = ''%s''',[zqrSupp.FieldByName('kode').AsString]);
  cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
  q.Close;

  cxTbl.DataController.RecordCount := 0;

  q := OpenRS('select a.no_bukti, a.tanggal, sum(d.qty * d.harga) total ' +
          'FROM tbl_trsinvoice_head a ' +
          'INNER JOIN tbl_trsinvoice_det b ON a.no_bukti = b.no_bukti ' +
          'LEFT JOIN tbl_spbb_head c ON c.no_bukti = b.no_lpb ' +
          'LEFT JOIN tbl_spbb_det d ON d.no_bukti = c.no_bukti ' +
          'WHERE a.kode_supp = ''%s'' ' +
          'group by a.no_bukti, a.tanggal',[zqrSupp.FieldByname('kode').AsString]);
          
  while not q.Eof do begin
    with cxTbl.DataController do begin
      i := AppendRecord;
      Values[i, cxColNoInvoice.Index] := q.FieldByName('no_bukti').AsString;
      Values[i, cxColTgl.Index] := q.FieldByname('tanggal').AsString;
      Values[i, cxColTotInvoice.Index] := q.FieldByName('total').AsFloat;
    end;
    q.Next;
  end;
  q.Close;
end;

procedure TfrmPembayaranPembelian.cxColDibayarPropertiesChange(
  Sender: TObject);
var
  i,j: integer;
  tot: Real;
begin
  inherited;

  j := cxTbl.DataController.GetFocusedRecordIndex;
  if (cxTbl.DataController.Values[j, cxColDibayar.Index] + cxTbl.DataController.Values[j, cxColTerbayar.Index]) >
    (cxTbl.DataController.Values[j, cxColTotInvoice.Index]) then begin
    MsgBox('Pembayaran melebihi nilai Tagihan.');
    cxTbl.DataController.Values[j, cxColDibayar.Index] := 0;
    Abort;
  end;

  tot := 0;
  for i := 0 to cxTbl.DataController.RowCount - 1 do begin
    if not VarIsNull(cxTbl.DataController.Values[i, cxColDibayar.Index]) then
      tot := tot + cxTbl.DataController.Values[i, cxColDibayar.Index];
  end;

  cxsTotJmlPembayaran.Value := tot;
  
end;

procedure TfrmPembayaranPembelian.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmPembayaranPembelian.cxTblDataControllerAfterPost(
  ADataController: TcxCustomDataController);
var
  tot: real;
  i: Integer;
begin
  inherited;
  tot := 0;
  for i := 0 to cxTbl.DataController.RowCount - 1 do begin
    if not VarIsNull(cxTbl.DataController.Values[i, cxColDibayar.Index]) then
      tot := tot + cxTbl.DataController.Values[i, cxColDibayar.Index];
  end;
  cxsTotJmlPembayaran.Value := tot;
end;

procedure TfrmPembayaranPembelian.cxTblDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  i: integer;
  dibayar, tot, terbayar: real;
begin
  inherited;
  if AItemIndex = cxColDibayar.Index then begin
    i := ARecordIndex;
    with ADataController do begin
      tot := Values[i, cxColTotInvoice.Index];
      if VarIsNull(Values[i, cxColTerbayar.Index]) then
        terbayar := 0
      else
        terbayar := Values[i, cxColTerbayar.Index];
        
      dibayar := Values[i, cxColDibayar.Index];
      if dibayar > (tot - terbayar) then begin
        MsgBox('Pembayaran melebihi jumlah Tagihan.');
        Values[i, cxColDibayar.Index] := 0;
        Abort;
      end;
    end;
  end;
end;

end.
