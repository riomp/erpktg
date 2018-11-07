unit unFrmPembayaranPenjualan;

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
  TfrmPembayaranPenjualan = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxlCustomer: TcxLookupComboBox;
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
    cxtAkunCust: TcxTextEdit;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure cxColNoPOPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxlAkunPembayaranPropertiesChange(Sender: TObject);
    procedure cxColDibayarPropertiesChange(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxTblDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure cxTblDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxlCustomerPropertiesChange(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmPembayaranPenjualan: TfrmPembayaranPenjualan;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmPembayaranPenjualan.FormCreate(Sender: TObject);
begin
  inherited;
  zqrCust.Open;
  zqrAkun.Open;
end;

procedure TfrmPembayaranPenjualan.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNoTrans.Text := GetLastFak('pembayaran-penjualan');
  cxdTanggal.Date := Aplikasi.TanggalServer;
  cxlAkunPembayaran.EditValue := GetDefaultAkun('PEMBAYARAN PEMBELIAN', 'K');
end;

procedure TfrmPembayaranPenjualan.ClearAll;
begin
  cxtNoTrans.Text := '';
  cxdTanggal.Text := '';
  cxlCustomer.Text := '';
  cxTbl.DataController.RecordCount := 0;
  cxlAkunPembayaran.Text := '';
  cxtAkunCust.Text := '';
end;

procedure TfrmPembayaranPenjualan.cxColNoPOPropertiesChange(
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

procedure TfrmPembayaranPenjualan.btnSimpanClick(Sender: TObject);
var
  sNoJ, sNoTrs, sAkun, sNoJInfo, sAkunDiskon, sNoAkun: string;
  qp, qpd, qjh, qjd, qc, qgiro: TZQuery;
  i, iAns: integer;
begin
  
  inherited;
  if cxlCustomer.Text = '' then begin
    MsgBox('Customer harus diisi.');
    cxlCustomer.SetFocus;
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
        sNoTrs := GetLastFak('pembayaran-penjualan');
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
        FieldByName('kode_cust').Value := cxlCustomer.EditValue;
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

        sNoJ := GetLastFak('jurnal');
        UpdateFaktur(Copy(sNoJ,1,6));
        sAkun := cxtNoAkun.Text;
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := cxsTotJmlPembayaran.Value;
        qjd.FieldByName('keterangan').AsString := 'PEMBAYARAN PENJUALAN (AR)';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.Post;


        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := cxtAkunCust.Text;
        qjd.FieldByName('kredit').AsFloat := cxsTotJmlPembayaran.Value;
        qjd.FieldByName('keterangan').AsString := 'PEMBAYARAN PENJUALAN (AR)';
        qjd.FieldByName('dc').AsString := 'K';
        qjd.Post;
        qjd.Close;

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

procedure TfrmPembayaranPenjualan.cxlAkunPembayaranPropertiesChange(
  Sender: TObject);
begin
  inherited;
  inherited;
  if cxlAkunPembayaran.Text = '' then Abort;
  cxtNoAkun.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TfrmPembayaranPenjualan.cxColDibayarPropertiesChange(
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

procedure TfrmPembayaranPenjualan.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmPembayaranPenjualan.cxTblDataControllerAfterPost(
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

procedure TfrmPembayaranPenjualan.cxTblDataControllerRecordChanged(
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

procedure TfrmPembayaranPenjualan.cxlCustomerPropertiesChange(
  Sender: TObject);
var
  i: integer;
  q: TZQuery;
begin
  inherited;

  q := OpenRS('SELECT akun_piutang FROM tbl_customer WHERE kode = ''%s''',[zqrCust.FieldByName('kode').AsString]);
  cxtAkunCust.Text := q.FieldByName('akun_piutang').AsString;
  q.Close;

  cxTbl.DataController.RecordCount := 0;

  q := OpenRS('select a.no_bukti, a.tanggal, sum(c.qty * d.harga) total ' +
              'from tbl_trsinvoice_head a ' +
              'inner join tbl_trsinvoice_det b on a.no_bukti = b.no_bukti ' +
              'left join tbl_sj_det c on c.no_bukti = b.no_sj ' +
              'left join tbl_so_det d on d.no_bukti = c.no_so and d.kode_brg = c.kode_brg ' +
              'where a.kode_cust = ''%s'' ' +
              'group by a.no_bukti, a.tanggal', [zqrCust.FieldByName('kode').AsString]);

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

end.
