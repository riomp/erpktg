unit unFrmInvoicePembelian;

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
  cxCalendar, ZAbstractRODataset, ZDataset, cxSpinEdit, cxCheckBox,
  unFrmTplTrans2;

type
  TfrmInvoicePembelian = class(TfrmTplTrans2)
    cxLabel1: TcxLabel;
    cxlSupp: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxmAlmKirim: TcxMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxdTglInvoice: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxlNoLPB: TcxLookupComboBox;
    btnProses: TButton;
    cxGrid1Level1: TcxGridLevel;
    cxTbl: TcxGridTableView;
    cxColKodeBrg: TcxGridColumn;
    cxColDesk: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColHarga: TcxGridColumn;
    cxLabel7: TcxLabel;
    cxmKet: TcxMemo;
    zqrSupp: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxColSubTotal: TcxGridColumn;
    zqrPO: TZReadOnlyQuery;
    dsSO: TDataSource;
    cxdTanggal: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxChkPosting: TcxCheckBox;
    cxsTotal: TcxSpinEdit;
    cxLabel9: TcxLabel;
    zqrEdit: TZReadOnlyQuery;
    dsEdit: TDataSource;
    cxtAkunSupp: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxlAkunSupp: TcxLookupComboBox;
    zqrAkun: TZReadOnlyQuery;
    dsAkun: TDataSource;
    cxtNoJurnal: TcxTextEdit;
    zqrLPB: TZReadOnlyQuery;
    dsLPB: TDataSource;
    cxsTotalPPn: TcxSpinEdit;
    cxlblPPn: TcxLabel;
    cxColPPn: TcxGridColumn;
    procedure cxlCustomerPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxlAkunSuppPropertiesChange(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmInvoicePembelian: TfrmInvoicePembelian;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmInvoicePembelian.cxlCustomerPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  zqrLPB.Close;
  zqrLPB.ParamByName('kode_supp').AsString := zqrSupp.FieldByName('kode').AsString;
  zqrLPB.Open;

  // get akun supplier
  q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[zqrSupp.FieldByName('kode').AsString]);
  if not q.IsEmpty then begin
    cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
    cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
  end;
  q.Close;
  
end;

procedure TfrmInvoicePembelian.FormCreate(Sender: TObject);
begin
  inherited;
  zqrSupp.Open;
  zqrAkun.Open;
end;

procedure TfrmInvoicePembelian.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
  total, totalPPn: Real;
begin
  inherited;

  if Trim(cxlNoLPB.Text) <> '' then begin
    cxTbl.DataController.RecordCount := 0;

    total := 0;
    q := OpenRS('SELECT a.*, b.deskripsi, CASE WHEN c.pajak = "PPN" THEN 0.1 * a.qty * a.harga ELSE 0 END AS ppn FROM tbl_spbb_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode LEFT JOIN tbl_po_det c ON c.no_bukti = a.no_po and c.kode_brg = a.kode_brg WHERE a.no_bukti = ''%s''',[cxlNoLPB.Text]);
    if not q.IsEmpty then begin

      while not q.Eof do begin
        i := cxTbl.DataController.AppendRecord;
        with cxTbl.DataController do begin
          Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColDesk.Index] := q.FieldByName('deskripsi').AsString;
          Values[i, cxColQty.Index] := q.FieldByName('qty').AsFloat;
          Values[i, cxColHarga.Index] := q.FieldByName('harga').AsFloat;
          Values[i, cxColPPn.Index] := q.Fieldbyname('ppn').AsFloat;
          Values[i, cxColSubTotal.Index] := q.FieldByName('harga').AsFloat * q.FieldByName('qty').AsFloat;
          total := total + Values[i, cxColSubTotal.Index];
          totalPPn := totalPPn + Values[i, cxColPPn.Index];
        end;
        q.Next;
      end;
    end;
    q.Close;
    if total > 0 then
      cxsTotal.Value := total;
    if totalPPn > 0 then
      cxsTotalPPn.Value := totalPPn; 
  end;
  
end;

procedure TfrmInvoicePembelian.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNoTrans.Text := GetLastFak('invoice-pembelian');  
end;

procedure TfrmInvoicePembelian.ClearAll;
begin
  cxtNoTrans.Text := '';
  cxlSupp.Text := '';
  cxlNoLPB.Text := '';
  cxlAkunSupp.Text := '';
  cxTbl.DataController.RecordCount := 0;
  cxsTotal.Value := 0;
  cxsTotalPPn.Value := 0;
end;

procedure TfrmInvoicePembelian.btnSimpanClick(Sender: TObject);
var
  sNoTrs, sNoJ, sAkun: string;
  q, qh, qd, qjh, qjd, qc, qt, qsm, qtotal_biaya: TZQuery;
  i, iAns: Integer;
  total, total_biaya: real;
  totInvoice: Extended;
  lst: TStringList;
begin
  inherited;

  if Trim(cxlSupp.Text) = '' then begin
    MsgBox('Supplier harus diisi.');
    cxlSupp.SetFocus;
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
      sNoTrs := GetLastFak('invoice-pembelian');
      UpdateFaktur(Copy(sNoTrs,1,8));
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
        FieldByName('kode_supp').Value := cxlSupp.EditValue;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('keterangan').AsString := cxmKet.Lines.Text;
        FieldByName('jenis').AsString := 'B';
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
        qd.FieldByName('no_lpb').AsString := cxlNoLPB.Text;
        qd.Post;
      end;
      qd.Close;

      if cxChkPosting.Checked then begin

        sNoJ := GetLastFak('jurnal');
        sAkun := GetDefaultAkun('hutangbelum');
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := cxsTotal.Value;
        qjd.FieldByName('keterangan').AsString := 'Hutang Belum Difakturkan';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.FieldByName('kode_suppcust').AsString := cxlSupp.EditValue;
        qjd.Post;

        sAkun := cxtAkunSupp.Text;
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kredit').AsFloat := cxsTotal.Value;
        qjd.FieldByName('keterangan').AsString := 'Hutang Usaha';
        qjd.FieldByName('kode_suppcust').AsString := cxlSupp.EditValue;
        qjd.FieldByName('dc').AsString := 'K';
        qjd.Post;

        sAkun := GetDefaultAkun('ppnmasukan');
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := cxsTotalPPn.Value;
        qjd.FieldByName('keterangan').AsString := 'PPN Masukan';
        qjd.FieldByName('kode_suppcust').AsString := cxlSupp.EditValue;
        qjd.FieldByName('dc').AsString := 'D';
        qjd.Post;
                                 
        sAkun := GetDefaultAkun('ppnmasukanblmfaktur');
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kredit').AsFloat := cxsTotalPPn.Value;
        qjd.FieldByName('keterangan').AsString := 'PPN Masukan Belum Difakturkan';
        qjd.FieldByName('dc').AsString := 'K';
        qjd.Post;
        
        // update flag transaksi invoice
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
          'WHERE no_bukti = ' + QuotedStr(sNoTrs));
      end;
        //dm.zConn.ExecuteDirect('update tbl_spbb_head set f_inv = 1 where no_bukti = ''%s''',[cxlNoLpb.value])
        

      dm.zConn.Commit;

      aplikasi.log_('SIMPAN INVOICE PEMBELIAN');

      if cxChkPosting.Checked then
        MsgBox('Invoice Pembelian sudah disimpan dengan nomor: ' + sNoTrs + #10#13 +
          'Posting No. Jurnal: ' + sNoJ)
      else
        MsgBox('Invoice sudah disimpan dengan nomor: ' + sNoTrs);

      zqrEdit.Close;
      zqrEdit.Open;

      {
      iAns := QBox(Self,'Cetak Invoice?','Cetak');
      if iAns = IDYES then begin
        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          // get total invoice
          q := OpenRS('SELECT SUM(biaya+biaya_lain) tot FROM v_lap_invoice_fixed WHERE no_bukti = ''%s''',
            [cxtNoTrans.Text]);
          totInvoice := q.FieldByName('tot').AsInteger;
          q.CLose;

          zqrLapInvoice2.SQL.Strings[1] := 'WHERE no_bukti = ' +
            QuotedStr(sNoTrs);
          zqrLapInvoice2.Open;

          lst := TStringList.Create;
          while not zqrLapInvoice2.Eof do begin
            lst.Add(QuotedStr(zqrLapInvoice2.FieldByName('no_sm').AsString));
            zqrLapInvoice2.Next;
          end;

          zqrLapInvoiceDet_SJ.SQL.Strings[1] :=
            'WHERE no_sm IN (' + lst.CommaText + ')';
          zqrLapInvoiceDet_SJ.Open;

          if aplikasi.Ekspedisi = '1' then begin
            if cxRbtPT.Checked then
              GenerateHeaderPT(rptLapInvoice3)
            else
              GenerateHeader(rptLapInvoice3);

            mmTotal := rptLapInvoice3.FindComponent('mmTotalInvoice') as TfrxMemoView;
            mmTotal.Text := FormatFloat('#,#0.00', totInvoice);
            mmTerbilang := rptLapInvoice3.FindComponent('mmTerbilang') as TfrxMemoView;
            mmTerbilang.Text := UpperCase(unTools.Terbilang(totInvoice) + ' RUPIAH');
            mmDicetakOleh := rptLapInvoice3.FindComponent('mmDicetakOleh') as TfrxMemoView;
            mmDicetakOleh.Text := 'Dicetak Oleh : ' + Aplikasi.NamaUser;
            rptLapInvoice3.ShowReport(True);
          end
          else begin
            if cxRbtPT.Checked then
              GenerateHeaderPT(rptLapInvoice2)
            else
              GenerateHeader(rptLapInvoice2);

            mmTotal := rptLapInvoice2.FindComponent('mmTotalInvoice') as TfrxMemoView;
            mmTotal.Text := FormatFloat('#,#0.00', totInvoice);
            mmTerbilang := rptLapInvoice2.FindComponent('mmTerbilang') as TfrxMemoView;
            mmTerbilang.Text := UpperCase(unTools.Terbilang(totInvoice) + ' RUPIAH');
            mmDicetakOleh := rptLapInvoice2.FindComponent('mmDicetakOleh') as TfrxMemoView;
            mmDicetakOleh.Text := 'Dicetak Oleh : ' + Aplikasi.NamaUser;
            rptLapInvoice2.ShowReport(True);
          end;

          Release;
        end;

      end;
      }

      ClearAll;
      btnBatalClick(nil);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

end;

procedure TfrmInvoicePembelian.cxlAkunSuppPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxtAkunSupp.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TfrmInvoicePembelian.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

end.
