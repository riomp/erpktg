unit unFrmPembayaranPembelian1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCalendar, cxSpinEdit,
  cxCheckBox, ZAbstractRODataset, ZDataset, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGridDBTableView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxLabel, StdCtrls, ExtCtrls;

type
  TfrmPembayaranPembelian1 = class(TfrmTplTrans)
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxChkPosting: TcxCheckBox;
    cxLabel6: TcxLabel;
    cxdTanggal: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxlSupplier: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel8: TcxLabel;
    cxlAkunPembayaran: TcxLookupComboBox;
    cxtNoAkun: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTbl: TcxGridTableView;
    cxColNoInvoice: TcxGridColumn;
    cxColTgl: TcxGridColumn;
    cxColTotInvoice: TcxGridColumn;
    cxColTerbayar: TcxGridColumn;
    cxColSisa: TcxGridColumn;
    cxColDibayar: TcxGridColumn;
    cxColCair: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel7: TcxLabel;
    cxmKeterangan: TcxMemo;
    dsSupp: TDataSource;
    zqrSupp: TZReadOnlyQuery;
    dsPO: TDataSource;
    zqrPO: TZReadOnlyQuery;
    dsAkun: TDataSource;
    zqrAkun: TZReadOnlyQuery;
    cxtAkunSupp: TcxTextEdit;
    cxColCheck: TcxGridColumn;
    procedure cxlSupplierPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxlAkunPembayaranPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTblDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
  private
    { Private declarations }
    mNoPEB: string;
  public
    { Public declarations }
    property NoPEB: string read mNoPEB write mNoPEB;
  end;

var
  frmPembayaranPembelian1: TfrmPembayaranPembelian1;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmPembayaranPembelian1.cxlSupplierPropertiesChange(
  Sender: TObject);
var
  i: integer;
  q: TZQuery;
begin
  inherited;

  if Self.Jenis='tambah' then begin
    q := OpenRS('SELECT akun_hutang FROM tbl_supplier WHERE kode = ''%s''',[zqrSupp.FieldByName('kode').AsString]);
    cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
    q.Close;

    cxTbl.DataController.RecordCount := 0;
    q := OpenRS('select a.no_bukti, a.tanggal, sum(b.subtotal) total,(SELECT IFNULL(SUM(jml_pembayaran),0) FROM tbl_trspelunasan_det where no_invoice=a.no_bukti) bayar,' +
                '(sum(b.subtotal) - (SELECT IFNULL(SUM(jml_pembayaran),0) FROM tbl_trspelunasan_det where no_invoice=a.no_bukti)) sisa FROM tbl_trsinvoice_head a JOIN tbl_trsinvoice_det b ON a.no_bukti = b.no_bukti ' +
                'LEFT JOIN tbl_spbb_head c ON c.no_po = b.no_so ' +
                'LEFT JOIN tbl_spbb_det d ON d.no_bukti = c.no_bukti and d.kode_brg=b.kode_brg ' +
                'where a.jenis="PI" and a.kode_supp = ''%s'' ' +
                'group by a.no_bukti, a.tanggal',[zqrSupp.FieldByname('kode').AsString]) ;
  {q := OpenRS('select a.no_bukti, a.tanggal, sum(d.qty * d.harga) total ' +
          'FROM tbl_trsinvoice_head a ' +
          'INNER JOIN tbl_trsinvoice_det b ON a.no_bukti = b.no_bukti ' +
          'LEFT JOIN tbl_spbb_head c ON c.no_bukti = b.no_lpb ' +
          'LEFT JOIN tbl_spbb_det d ON d.no_bukti = c.no_bukti ' +
          'WHERE a.kode_supp = ''%s'' ' +
          'group by a.no_bukti, a.tanggal',[zqrSupp.FieldByname('kode').AsString]); }
          
  while not q.Eof do begin
    with cxTbl.DataController do begin
      i := AppendRecord;
      Values[i, cxColNoInvoice.Index] := q.FieldByName('no_bukti').AsString;
      Values[i, cxColTgl.Index] := q.FieldByname('tanggal').AsString;
      Values[i, cxColTerbayar.Index] := q.FieldByName('bayar').AsFloat;
      Values[i, cxColSisa.Index] := q.FieldByName('sisa').AsFloat;
      Values[i, cxColTotInvoice.Index] := q.FieldByName('total').AsFloat;
    end;
    q.Next;
  end;
  q.Close;

  q := OpenRS('SELECT nama FROM tbl_supplier WHERE kode = ''%s''',[zqrSupp.FieldByName('kode').AsString]);
  cxmKeterangan.Lines.Text :=  q.FieldByName('nama').AsString;
   q.Close;
  end
  else begin
     q := OpenRS('SELECT akun_hutang FROM tbl_supplier WHERE kode = ''%s''',[zqrSupp.FieldByName('kode').AsString]);
  cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
  q.Close;
  end;
end;

procedure TfrmPembayaranPembelian1.FormCreate(Sender: TObject);
begin
  inherited;
   zqrSupp.Open;
   zqrAkun.Open;

end;

procedure TfrmPembayaranPembelian1.btnSimpanClick(Sender: TObject);
var
  sNoJ, sNoTrs, sAkun, sNoJInfo, sAkunDiskon, sNoAkun: string;
  qp, qpd,qj, qjh, qjd, qc, qgiro: TZQuery;
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
  else if cxTbl.DataController.RecordCount = 0 then begin
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
        FieldByName('akun_piutang').AsString := cxtAkunSupp.Text ;
        FieldByName('jumlah').AsFloat := cxTbl.DataController.Summary.FooterSummaryValues[0];
        FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
        FieldByName('keterangan').AsString := cxmKeterangan.Lines.Text;
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
        qpd.FieldByName('tgl_invoice').AsDateTime := cxTbl.DataController.Values[i, cxColTgl.Index];
        qpd.FieldByName('total_invoice').AsFloat := cxTbl.DataController.Values[i, cxColTotInvoice.Index];
        qpd.FieldByName('jml_pembayaran').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
        qpd.Post;
      end;
      qpd.Close;
      
      if cxChkPosting.Checked then begin
        for i := 0 to cxTbl.DataController.RecordCount - 1 do begin
          if cxTbl.DataController.Values[i, cxColDibayar.Index] > 0 then begin
            //sNoJ := GetLastFak('jurnal');
            //UpdateFaktur(Copy(sNoJ,1,6));
            sNoJ := sNoTrs;
             qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''',[sNoJ]);
              qj.Insert;
              qj.FieldByName('no_jurnal').AsString := sNoJ;
              qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
              qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
              qj.FieldByName('keterangan').AsString := cxmKeterangan.Text;
              qj.FieldByName('f_posted').AsString := '1';
              qj.FieldByName('user').AsString := Aplikasi.NamaUser;
              qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
              qj.Post;
              qj.Close;

            sAkun := cxtAkunSupp.Text;
            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
            qjd.Insert;
            qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := sNoJ;
            qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
            qjd.FieldByName('keterangan').AsString :=cxmKeterangan.Text;
            qjd.FieldByName('kode_suppcust').AsString := cxlSupplier.EditValue;
            qjd.FieldByName('dc').AsString := 'D';
            qjd.Post;

            sAkun := cxtNoAkun.Text;
            qjd.Insert;
            qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := sNoJ;
            qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
            qjd.FieldByName('keterangan').AsString := cxmKeterangan.Text;
            qjd.FieldByName('dc').AsString := 'K';
            qjd.FieldByName('kode_suppcust').AsString := cxlSupplier.EditValue;
            qjd.Post;

            {if cxTbl.DataController.Values[i, cxColCair.Index] = 1 then begin
              sAkun := GetDefaultAkun('depositintransit');
              qjd.Insert;
              qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
              qjd.FieldByName('no_jurnal').AsString := sNoJ;
              qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
              qjd.FieldByName('akun').AsString := sAkun;
              qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
              qjd.FieldByName('keterangan').AsString := cxmKeterangan.Text;
              qjd.FieldByName('dc').AsString := 'D';
              qjd.Post;

              sAkun := cxtNoAkun.Text;
              qjd.Insert;
              qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
              qjd.FieldByName('no_jurnal').AsString := sNoJ;
              qjd.FieldByName('no_trans').AsString := cxTbl.DataController.Values[i, cxColNoInvoice.Index];
              qjd.FieldByName('akun').AsString := sAkun;
              qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColDibayar.Index];
              qjd.FieldByName('keterangan').AsString := cxmKeterangan.Text;
              qjd.FieldByName('dc').AsString := 'K';
              qjd.Post;
              qjd.Close;
            end;  }
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

      //ClearAll;
      Close;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
    
  end;

end;

procedure TfrmPembayaranPembelian1.cxlAkunPembayaranPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cxlAkunPembayaran.Text = '' then Abort;
  cxtNoAkun.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TfrmPembayaranPembelian1.FormShow(Sender: TObject);
var
  q : TZQuery;
  i, nomer: Integer;
begin
  inherited;
  if Self.Jenis='edit' then begin
    cxtNoTrans.Text := mNoPEB;
    cxtNoTrans.Properties.ReadOnly := True;

    q := OpenRS('SELECT * FROM tbl_trspelunasan WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);

    cxdTanggal.Date := q.FieldByName('tanggal').AsDateTime;
    cxlAkunPembayaran.EditValue :=q.FieldByName('akun_kas').AsString;
    cxlSupplier.EditValue :=q.FieldByName('kode_supp').Value;
    cxlAkunPembayaran.EditValue :=q.FieldByName('akun_bank').AsString;
    cxmKeterangan.Lines.Text := q.FieldByName('keterangan').AsString;

     if q.FieldByName('f_posted').AsInteger = 1 then begin
            cxChkPosting.Checked := True;
            cxChkPosting.Properties.ReadOnly := True;
          end;
        q.Close;

    q := OpenRS('SELECT * FROM tbl_trspelunasan_det WHERE no_bukti = ''%s''',
      [cxtNoTrans.Text]);

    //cxGrdTblPP.DataController.OnRecordChanged := nil;
    while not q.Eof do begin
      with cxTbl.DataController do begin
        i := AppendRecord;
        Values[i, cxColNoInvoice.Index] := q.FieldByName('no_invoice').AsString;
        Values[i, cxColTgl.Index] :=q.FieldByName('tgl_invoice').AsDateTime;
        Values[i, cxColTotInvoice.Index] := q.FieldByName('total_invoice').AsFloat;
        //Values[i, cxColTerbayar.Index] := q.FieldByName('total_invoice').AsFloat;
        //Values[i, cxColSisa.Index] := q.FieldByName('total_invoice').AsFloat;
        Values[i, cxColDibayar.Index] := q.FieldByName('jml_pembayaran').AsFloat;
      end;
      q.Next;
    end;

    q.Close;
  end;
end;

procedure TfrmPembayaranPembelian1.cxTblDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColDibayar.Index then begin
      if ( ADataController.Values[ARecordIndex, cxColDibayar.Index] >
        (ADataController.Values[ARecordIndex, cxColSisa.Index])) then begin
        //MsgBox('Jumlah Pembayaran Melebihi Invoice.');
        //Abort
      end;
  end
  else if AItemIndex = cxColCheck.Index then begin

   if ADataController.Values[ARecordIndex, cxColCheck.Index] = 1 then begin
     ADataController.Values[ARecordIndex, cxColDibayar.Index] := ADataController.Values[ARecordIndex, cxColSisa.Index] ;
   end else begin
     ADataController.Values[ARecordIndex, cxColDibayar.Index] := 0 ;
   end;

  end;
end;

end.
