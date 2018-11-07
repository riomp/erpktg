unit unFrmSI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxTextEdit, cxSpinEdit,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxCheckBox, cxLabel, StdCtrls, ExtCtrls,
  ZAbstractDataset;

type
  TfrmSI = class(TfrmTplTrans)
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxChkPosting: TcxCheckBox;
    cxdTanggal: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxLabel1: TcxLabel;
    cxlCustomer: TcxLookupComboBox;
    cxtAkunCust: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxmAlmKirim: TcxMemo;
    cxLabel6: TcxLabel;
    cxlNoSJ: TcxLookupComboBox;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTbl: TcxGridTableView;
    cxColKodeBrg: TcxGridColumn;
    cxColDesk: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColHarga: TcxGridColumn;
    cxColSubTotal: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel7: TcxLabel;
    cxmKet: TcxMemo;
    dsCust: TDataSource;
    zqrCust: TZReadOnlyQuery;
    dsSO: TDataSource;
    zqrSO: TZReadOnlyQuery;
    dsEdit: TDataSource;
    zqrEdit: TZReadOnlyQuery;
    zqrSJ: TZReadOnlyQuery;
    dsSJ: TDataSource;
    zBrg: TZQuery;
    dsBrg: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxdTanggalPropertiesChange(Sender: TObject);
    procedure cxlCustomerPropertiesChange(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxlCustomerPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
     mNoSI: string;
  public
    { Public declarations }
     property NoSI: string read mNoSI write mNoSI;
  end;

var
  frmSI: TfrmSI;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmSI.FormCreate(Sender: TObject);
begin
  inherited;
  zqrCust.Open;
end;

procedure TfrmSI.cxdTanggalPropertiesChange(Sender: TObject);
begin
  inherited;
  if Self.Jenis='tambah' then
  cxtNoTrans.Text := GetLastFak('invoice',cxdTanggal.Date);
end;

procedure TfrmSI.cxlCustomerPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  zqrSJ.Close;
  zqrSJ.ParamByName('kode_customer').AsString := zqrCust.FieldByName('kode').AsString;
  zqrSJ.Open;

  q := OpenRS('SELECT akun_piutang FROM tbl_customer WHERE kode = ''%s''',
    [zqrCust.FieldByName('kode').AsString]);

  cxtAkunCust.Text := q.FieldByName('akun_piutang').AsString;
  
  q.Close;
end;

procedure TfrmSI.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
  tot: Real;
begin
  inherited;

  if Trim(cxlNoSJ.Text) <> '' then begin
    cxTbl.DataController.RecordCount := 0;

    q := OpenRS('SELECT b.kode_brg, c.deskripsi, b.qty, c.harga FROM tbl_sj_head a ' +
      'inner join tbl_sj_det b on a.no_bukti = b.no_bukti ' +
      'left join v_so_det c on b.no_so = c.no_bukti and b.kode_brg=c.kode_brg ' +
      'WHERE a.no_bukti = ''%s''',[cxlNoSJ.Text]);
    if not q.IsEmpty then begin

      while not q.Eof do begin
        i := cxTbl.DataController.AppendRecord;
        with cxTbl.DataController do begin
          Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColDesk.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColQty.Index] := q.FieldByName('qty').AsFloat;
          Values[i, cxColHarga.Index] := q.FieldByName('harga').AsFloat;
          Values[i, cxColSubTotal.Index] := q.FieldByName('harga').AsFloat * q.FieldByName('qty').AsFloat;
         // tot := tot + Values[i, cxColSubTotal.Index];
        end;
        q.Next;
      end;
     // cxsTotal.Value := tot;
    end;
    cxmKet.Lines.Text := 'INVOICE PENJUALAN '+  q.FieldByName('deskripsi').AsString +'['+ cxlNoSJ.EditValue +']' ;
    q.Close;


  end;
end;

procedure TfrmSI.btnSimpanClick(Sender: TObject);
var
  sNoTrs, sNoJ, sAkun: string;
  q, qh,qj, qd, qjh, qjd, qc, qt, qsm, qtotal_biaya: TZQuery;
  i, iAns: Integer;
  total, total_biaya: real;
  totInvoice: Extended;
  //mmTotal, mmTerbilang, mmDicetakOleh: TfrxMemoView;
  lst: TStringList;
begin
  inherited;

  if Trim(cxlCustomer.Text) = '' then begin
    MsgBox('Customer harus diisi.');
    cxlCustomer.SetFocus;
  end
  else begin
  
    // cek detail invoice
    if cxTbl.DataController.RecordCount = 0 then begin
      MsgBox('Detail invoice masih kosong.');
      Abort;
    end;

    // cek apakah sudah ada pembayaran
    if Self.Jenis = 'edit' then begin
      qc := OpenRS('SELECT * FROM tbl_trspelunasan WHERE no_bukti = ''%s'' LIMIT 1',
        [cxtNoTrans.Text]);
      if not qc.IsEmpty then begin
        MsgBox('Invoice ini sudah ada pembayaran, tidak bisa edit.');
        qc.Close;
        Abort;
      end;
      qc.Close;
    end;

    if Self.Jenis = 'tambah' then begin
      sNoTrs := GetLastFak('invoice');
      UpdateFaktur(Copy(sNoTrs,1,7));
    end
    else begin
      sNoTrs := cxtNoTrans.Text;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ' + QuotedStr(sNoTrs));
    end;

    try
      dm.zConn.StartTransaction;

      qh := OpenRS('SELECT * FROM tbl_trsinvoice_head WHERE no_bukti = ''%s''',[sNoTrs]);
      if Self.Jenis = 'tambah' then
        qh.Insert
      else
        qh.Edit;

      // header invoice
      with qh do begin
        FieldByName('no_bukti').AsString := sNoTrs;
        FieldByName('tanggal').AsDateTime := cxdTanggal.Date;
        FieldByName('kode_cust').Value := cxlCustomer.EditValue;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('jenis').AsString := 'SI';
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('keterangan').AsString := cxmKet.Lines.Text;
        FieldByName('keterangan_lain').AsString := cxmAlmKirim.Lines.Text;
        FieldByName('noakun').AsString := cxtAkunCust.Text;
        Post;
      end;

      // detail invoice
      for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

        qd := OpenRS('SELECT * FROM tbl_trsinvoice_det WHERE no_bukti = ''%s''',[sNoTrs]);
        if not qd.IsEmpty then
          qd.Edit
        else
          qd.Insert;

          qd.FieldByName('no_bukti').AsString := sNoTrs;
          qd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
          qd.FieldByName('qty').AsFloat := cxTbl.DataController.Values[i, cxColQty.index] ;
          qd.FieldByName('harga').AsFloat := cxTbl.DataController.Values[i, cxColHarga.index];
          //if Not VarIsNull(cxTbl.DataController.Values[i, cxColTax.index]) then
          //qd.FieldByName('tax').AsFloat := cxTbl.DataController.Values[i, cxColTax.index];
          qd.FieldByName('subtotal').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index] ;
          qd.FieldByName('no_so').AsString := cxlNoSJ.Text;
        qd.Post;
      end;
      qd.Close;

      if cxChkPosting.Checked then begin


        //sNoJ := GetLastFak('faktur');
        //UpdateFaktur(Copy(sNoJ,1,6));
        sNoJ := sNoTrs;

         qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''',[sNoJ]);
          qj.Insert;
          qj.FieldByName('no_jurnal').AsString := sNoJ;
          qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
          qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
          qj.FieldByName('keterangan').AsString := cxmKet.Text;
          qj.FieldByName('f_posted').AsString := '1';
          qj.FieldByName('user').AsString := Aplikasi.NamaUser;
          qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qj.Post;
          qj.Close;

         sAkun := cxtAkunCust.Text;
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
        qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Summary.FooterSummaryValues[0] ;
        //qjd.FieldByName('keterangan').AsString := '';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.Post;

           for i := 0 to cxTbl.DataController.RecordCount - 1 do begin
            if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL2' then begin
                 sAkun := GetDefaultAkun('ppnkeluaranbblmfaktur');
                  qjd.Insert;
                  qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                  qjd.FieldByName('no_jurnal').AsString := sNoJ;
                  qjd.FieldByName('no_trans').AsString := sNoTrs;
                  qjd.FieldByName('akun').AsString := sAkun;
                  qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                  qjd.FieldByName('kredit').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                  //qjd.FieldByName('keterangan').AsString := 'PPN Masukan Belum Difakturkan';
                  qjd.FieldByName('dc').AsString := 'K';
                  qjd.Post;
                  end else begin
                         sAkun := GetDefaultAkunBrg(cxTbl.DataController.Values[i, cxColKodeBrg.index],'penjualan');
                          qjd.Insert;
                          qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                          qjd.FieldByName('no_jurnal').AsString := sNoJ;
                          qjd.FieldByName('no_trans').AsString := sNoTrs;
                          qjd.FieldByName('akun').AsString := sAkun;
                          qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                          qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                          qjd.FieldByName('keterangan').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                          qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                          qjd.FieldByName('dc').AsString := 'K';
                          qjd.Post;
                end;
                end;

        // update flag transaksi invoice
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
          'WHERE no_bukti = ' + QuotedStr(sNoTrs));
      end;

      dm.zConn.Commit;

      aplikasi.log_('SIMPAN INVOICE ORDER JASA');

      {if cxChkPosting.Checked then
        MsgBox('Invoice sudah disimpan dengan nomor: ' + sNoTrs + #10#13 +
          'Posting No. Jurnal: ' + sNoJ)
      else  }
        MsgBox('Invoice Penjualan sudah disimpan dengan nomor: ' + sNoTrs);
      
      btnBatalClick(nil);
      Close;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

end;

procedure TfrmSI.FormShow(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer ;
begin
  inherited;
   if Self.Jenis= 'edit' then begin
     zBrg.Open;
    q := OpenRS('SELECT * FROM tbl_trsinvoice_head WHERE no_bukti = ''%s''',[NoSI]);


      cxtNoTrans.Text := NoSI;
      cxdTanggal.Date := q.FieldByName('tanggal').AsDateTime;
      cxlCustomer.EditValue := q.FieldByName('kode_cust').Value;
      cxmKet.Lines.Text := q.FieldByName('keterangan').AsString;
      cxmAlmKirim.Lines.Text := q.FieldByName('keterangan_lain').AsString;
      cxtAkunCust.Text := q.FieldByName('noakun').AsString;

      if q.FieldByName('f_posted').AsInteger = 1 then begin
        cxChkPosting.Checked := True;
        cxChkPosting.Properties.ReadOnly := True;
        btnSimpan.Enabled := False ;
      end
      else begin
        btnSimpan.Enabled := True ;
      end;
      q.Close;

      z := OpenRS('SELECT * FROM tbl_trsinvoice_det WHERE no_bukti = ''%s''',[NoSI]) ;
    while not z.Eof do begin
      cxTbl.BeginUpdate;
      with cxTbl.DataController do begin
        i := AppendRecord ;
        Values[i, cxColKodeBrg.index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColDesk.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
        Values[i, cxColHarga.Index] := z.FieldByName('harga').AsFloat ;
        Values[i, cxColSubTotal.Index] := z.FieldByName('subtotal').AsFloat;
      end;
      cxTbl.EndUpdate;
      z.Next;
    end;
    z.Close;
    
  end;

end;

procedure TfrmSI.cxlCustomerPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  if cxtAkunCust.Text='' then MsgBox('Customer Belum disetting Akun Piutangnya');
end;

end.
