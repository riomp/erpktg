unit unFrmInvoice;

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
  TfrmInvoice = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxlCustomer: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxmAlmKirim: TcxMemo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxLabel3: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxlNoSJ: TcxLookupComboBox;
    btnProses: TButton;
    cxGrid1Level1: TcxGridLevel;
    cxTbl: TcxGridTableView;
    cxColKodeBrg: TcxGridColumn;
    cxColDesk: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColHarga: TcxGridColumn;
    cxLabel7: TcxLabel;
    cxmKet: TcxMemo;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxColSubTotal: TcxGridColumn;
    zqrSO: TZReadOnlyQuery;
    dsSO: TDataSource;
    cxdTanggal: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxChkPosting: TcxCheckBox;
    cxtAkunCust: TcxTextEdit;
    cxsTotal: TcxSpinEdit;
    cxLabel9: TcxLabel;
    zqrEdit: TZReadOnlyQuery;
    dsEdit: TDataSource;
    zqrSJ: TZReadOnlyQuery;
    dsSJ: TDataSource;
    cxColPPn: TcxGridColumn;
    cxsTotPpn: TcxSpinEdit;
    cxlbl1: TcxLabel;
    procedure cxlCustomerPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmInvoice: TfrmInvoice;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmInvoice.cxlCustomerPropertiesChange(Sender: TObject);
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

procedure TfrmInvoice.FormCreate(Sender: TObject);
begin
  inherited;
  zqrCust.Open;
end;

procedure TfrmInvoice.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
  tot, totPPn: Real;
begin
  inherited;

  if Trim(cxlNoSJ.Text) <> '' then begin
    cxTbl.DataController.RecordCount := 0;

    q := OpenRS('SELECT a.kode_brg, b.deskripsi, a.qty, c.no_bukti, c.no_kpo, d.price, ' +
               '(d.dpp / d.qty) AS dpp, (d.`ppn` /d.qty) AS ppn, a.qty * (d.dpp / d.qty) AS totdpp, a.qty * (d.`ppn` /d.qty) AS totppn ' +
               'FROM tbl_sj_det a ' +
               'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
               'LEFT JOIN tbl_so_head c ON a.no_so = c.no_bukti ' +
               'LEFT JOIN tbl_kpo_det d ON d.`no_kpo` = c.`no_kpo` AND d.`kode_item` = a.`kode_brg` ' +
               'WHERE  a.no_bukti = ''%s''',[cxlNoSJ.Text]);
    if not q.IsEmpty then begin

      while not q.Eof do begin
        i := cxTbl.DataController.AppendRecord;
        with cxTbl.DataController do begin
          Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColDesk.Index] := q.FieldByName('deskripsi').AsString;
          Values[i, cxColQty.Index] := q.FieldByName('qty').AsFloat;
          Values[i, cxColHarga.Index] := q.FieldByName('price').AsFloat;
          Values[i, cxColSubTotal.Index] := q.FieldByName('totdpp').AsFloat;
          Values[i, cxColPPn.Index] := q.FieldByName('totppn').AsFloat;
          tot := tot + Values[i, cxColSubTotal.Index];
          totPPn := totPPn + Values [i, cxColPPn.Index];
        end;
        q.Next;
      end;
      cxsTotal.Value := tot;
      cxsTotPpn.Value  := totPPn;
    end;
    q.Close;
  end;
end;

procedure TfrmInvoice.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNoTrans.Text := GetLastFak('invoice');  
end;

procedure TfrmInvoice.ClearAll;
begin
  cxtNoTrans.Text := '';
  cxlCustomer.Text := '';
  cxtAkunCust.Text := '';
end;

procedure TfrmInvoice.btnSimpanClick(Sender: TObject);
var
  sNoTrs, sNoJ, sAkun: string;
  q, qh, qd, qjh, qjd, qc, qt, qsm, qtotal_biaya: TZQuery;
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
        FieldByName('kode_cust').Value := cxlCustomer.EditValue;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('keterangan').AsString := cxmKet.Lines.Text;
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
        qd.FieldByName('no_sj').AsString := cxlNoSJ.Text;
        qd.Post;
      end;
      qd.Close;

      if cxChkPosting.Checked then begin

        sAkun := cxtAkunCust.Text;
        sNoJ := GetLastFak('jurnal');
        UpdateFaktur(Copy(sNoJ,1,6));
        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := cxsTotal.Value;
        qjd.FieldByName('keterangan').AsString := 'INVOICE PENJUALAN';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.Post;

        sAkun := GetDefaultAkun('piutangbelum');
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kredit').AsFloat := cxsTotal.Value;
        qjd.FieldByName('keterangan').AsString := 'INVOICE PENJUALAN';
        qjd.FieldByName('dc').AsString := 'K';
        qjd.Post;

        sAkun := GetDefaultAkun('ppnkeluarblmfaktur');
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('debet').AsFloat := cxsTotPpn.Value;
        qjd.FieldByName('keterangan').AsString := 'INVOICE PENJUALAN';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.Post;

        sAkun := GetDefaultAkun('ppnkeluaran');
        qjd.Insert;
        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoTrs;
        qjd.FieldByName('akun').AsString := sAkun;
        qjd.FieldByName('kredit').AsFloat := cxsTotPpn.Value;
        qjd.FieldByName('keterangan').AsString := 'INVOICE PENJUALAN';
        qjd.FieldByName('dc').AsString := 'K';
        qjd.Post;


        
        // update flag transaksi invoice
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
          'WHERE no_bukti = ' + QuotedStr(sNoTrs));
      end;

      dm.zConn.Commit;

      aplikasi.log_('SIMPAN INVOICE ORDER JASA');

      if cxChkPosting.Checked then
        MsgBox('Invoice sudah disimpan dengan nomor: ' + sNoTrs + #10#13 +
          'Posting No. Jurnal: ' + sNoJ)
      else
        MsgBox('Invoice sudah disimpan dengan nomor: ' + sNoTrs);

      zqrEdit.Close; zqrEdit.Open;

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

end.
