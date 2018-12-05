unit unFrmPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxCheckBox, cxTextEdit,
  cxLabel, StdCtrls, ExtCtrls, DB, ZAbstractRODataset, ZDataset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxSpinEdit, cxMemo, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid,
  ZAbstractDataset;

type
  TfrmPI = class(TfrmTplTrans)
    cxLabel3: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxChkPosting: TcxCheckBox;
    cxdTanggal: TcxDateEdit;
    cxlCustomer: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxJenis: TcxComboBox;
    zqrSupp: TZReadOnlyQuery;
    dsSupp: TDataSource;
    cxLabel6: TcxLabel;
    cxlNoPO: TcxLookupComboBox;
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
    cxsGross: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxCurr: TcxComboBox;
    cxLabel5: TcxLabel;
    cxsRate: TcxSpinEdit;
    dsPO: TDataSource;
    zqrPO: TZReadOnlyQuery;
    cxtAkunSupp: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxlAkunSupp: TcxLookupComboBox;
    dsAkun: TDataSource;
    zqrAkun: TZReadOnlyQuery;
    zBrg: TZQuery;
    dsBrg: TDataSource;
    btnUM: TButton;
    cxLabel9: TcxLabel;
    cxlUM: TcxLookupComboBox;
    zqrUM: TZReadOnlyQuery;
    dsUM: TDataSource;
    cxtAkunUM: TcxTextEdit;
    cxColTax: TcxGridColumn;
    cxtNoPO: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxsTax: TcxSpinEdit;
    cxsTotal: TcxSpinEdit;
    cxColGross: TcxGridColumn;
    procedure cxdTanggalPropertiesChange(Sender: TObject);
    procedure cxJenisPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxlCustomerPropertiesChange(Sender: TObject);
    procedure cxCurrPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxlAkunSuppPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure cxTblDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnUMClick(Sender: TObject);
    procedure cxlUMPropertiesChange(Sender: TObject);
    procedure cxTblDataControllerBeforePost(
      ADataController: TcxCustomDataController);
  private
    { Private declarations }
    mNoPI: string;
  public
    { Public declarations }
    property NoPI: string read mNoPI write mNoPI;
  end;

var
  frmPI: TfrmPI;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmPI.cxdTanggalPropertiesChange(Sender: TObject);
begin
  inherited;
  if Self.Jenis='tambah' then begin
    if cxJenis.Text = 'INVOICE PEMBELIAN (LPB)' then begin
      cxtNoTrans.Text := GetLastFak('invoice_pembelian',cxdTanggal.Date);
    end
    else if cxJenis.Text = 'UANG MUKA PEMBELIAN' then begin
      cxtNoTrans.Text := GetLastFak('uang_muka',cxdTanggal.Date) ;
     end
    else if cxJenis.Text = 'INVOICE PEMBELIAN (DARI PO)' then begin
      cxtNoTrans.Text := GetLastFak('invoice_pembelian1',cxdTanggal.Date) ;
     end
    else if cxJenis.Text = 'INVOICE PEMBELIAN (TANPA PO)' then begin
      cxtNoTrans.Text := GetLastFak('invoice_pembelian2',cxdTanggal.Date) ;
    end;
  end;
end;

procedure TfrmPI.cxJenisPropertiesChange(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
  if Self.Jenis='tambah' then begin

      if cxJenis.Text='INVOICE PEMBELIAN (LPB)' then begin

        cxtNoTrans.Text := GetLastFak('invoice_pembelian',cxdTanggal.Date);
        // get akun supplier
        cxLabel4.Visible := False ;
        cxLabel5.Visible := False ;
        cxCurr.Visible   := False ;
        cxsRate.Visible  := False ;
        cxLabel6.Caption := 'No.LPB';
        cxLabel6.Visible := True ;
        cxlNoPO.Visible  := True ;
        btnProses.Visible:= True ;

       { q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[cxlCustomer.EditValue]);
        if not q.IsEmpty then begin
          cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
          cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
        end;
        q.Close; }

        cxmKet.Text := 'INVOICE PEMBELIAN';

            with zBrg do begin
          Close ;
          SQL.Text := 'SELECT kode,deskripsi FROM tbl_barang' ;
          Open;
        end;

      end
      else if  cxJenis.Text='UANG MUKA PEMBELIAN' then begin

        cxtNoTrans.Text := GetLastFak('uang_muka',cxdTanggal.Date);
        cxLabel4.Visible := True ;
        cxLabel5.Visible := True ;
        cxCurr.Visible   := True ;
        cxsRate.Visible  := True ;
        cxLabel6.Caption := 'No.PO';
        cxLabel6.Visible := True ;
        cxlNoPO.Visible  := True ;

        with zqrPO do begin
          Close ;
          SQL.Text := 'SELECT no_bukti FROM tbl_po_head WHERE f_approval=1'  ;
          Open;
        end;


          with zqrAkun do begin
          Close ;
          SQL.Text := 'SELECT noakun, nama FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND induk = 115000' ;
          Open;
        end;

         with zBrg do begin
          Close ;
          SQL.Text := 'SELECT kode,deskripsi FROM tbl_barang where left(kode,3)="BL1"' ;
          Open;
        end;

        cxmKet.Text := 'UANG MUKA PEMBELIAN';
        btnProses.Visible := False;
      end
      else if  cxJenis.Text='INVOICE PEMBELIAN (DARI PO)' then begin

        cxtNoTrans.Text := GetLastFak('invoice_pembelian1',cxdTanggal.Date);
        // get akun supplier
        cxLabel4.Visible := False ;
        cxLabel5.Visible := False ;
        cxCurr.Visible   := False ;
        cxsRate.Visible  := False ;
        cxLabel6.Caption := 'No.PO';
        cxLabel6.Visible := True ;
        cxlNoPO.Visible  := True ;
        btnProses.Visible:= True ;

        {q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[cxlCustomer.EditValue]);
        if not q.IsEmpty then begin
          cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
          cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
        end;
        q.Close; }
       end
      else if  cxJenis.Text='INVOICE PEMBELIAN (TANPA PO)' then begin

      cxtNoTrans.Text := GetLastFak('invoice_pembelian2',cxdTanggal.Date);
        // get akun supplier
        cxLabel4.Visible := True ;
        cxLabel5.Visible := True ;
        cxCurr.Visible   := True ;
        cxsRate.Visible  := True ;
        cxLabel6.Visible := False ;
        cxlNoPO.Visible  := False ;
        btnProses.Visible:= False ;

        {q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[cxlCustomer.EditValue]);
        if not q.IsEmpty then begin
          cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
          cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
        end;
        q.Close;  }
      end;
  end
  else begin

    cxtNoTrans.Text := NoPI;

  end;
end;

procedure TfrmPI.FormCreate(Sender: TObject);
begin
  inherited;
  zqrSupp.Open;
  zqrAkun.Open;
  zBrg.Open ;
  zqrPO.Open ;
  cxsRate.Text := '1' ;
end;

procedure TfrmPI.cxlCustomerPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;

  if cxJenis.Text='INVOICE PEMBELIAN (LPB)' then begin

    zqrPO.Close;
    zqrPO.ParamByName('kode_supp').AsString := zqrSupp.FieldByName('kode').AsString;
    zqrPO.Open;

    // get akun supplier
    q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[cxlCustomer.EditValue]);
    if not q.IsEmpty then begin
      cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
      cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
    end;
    q.Close;

  end
  else if cxJenis.Text='UANG MUKA PEMBELIAN' then begin

     with zqrAkun do begin
      Close ;
      SQL.Text := 'SELECT noakun, nama FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND induk = 115000' ;
      Open;
    end;

       with zqrPO do begin
      Close ;
      SQL.Text := 'SELECT no_bukti FROM tbl_po_head WHERE f_approval=1 and kode_supp=:supp';
      ParamByName('supp').Value := cxlCustomer.EditValue ;
      Open;
    end;
  end
  else if cxJenis.Text='INVOICE PEMBELIAN (DARI PO)' then begin

       with zqrPO do begin
      Close ;
      SQL.Text := 'SELECT no_bukti FROM tbl_po_head WHERE f_approval=1 and kode_supp=:supp';
      ParamByName('supp').Value := cxlCustomer.EditValue ;
      Open;
    end;

    // get akun supplier
    q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[cxlCustomer.EditValue]);
    if not q.IsEmpty then begin
      cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
      cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
    end;
    q.Close;
    
  end
  else if cxJenis.Text='INVOICE PEMBELIAN (TANPA PO)' then begin

  end;

    q := OpenRS('SELECT nama FROM tbl_supplier WHERE kode = ''%s''',[cxlCustomer.EditValue]);
    cxmKet.Lines.Text :=  q.FieldByName('nama').AsString;
    q.Close;

end;

procedure TfrmPI.cxCurrPropertiesChange(Sender: TObject);
var
   q : TZQuery ;
begin
  inherited;
  if cxCurr.Text= 'IDR' then
    cxsRate.EditValue := 1 ;

    if cxJenis.Text='INVOICE PEMBELIAN' then begin
      // get akun supplier
      q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',[zqrSupp.FieldByName('kode').AsString]);
      if not q.IsEmpty then begin
        cxtAkunSupp.Text := q.FieldByName('akun_hutang').AsString;
        cxlAkunSupp.EditValue := q.FieldByName('akun_hutang').AsString;
      end;
      q.Close;
  end
  else begin

        with zqrAkun do begin
      Close ;
      SQL.Text := 'SELECT noakun, nama FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) = 0 AND induk = 115000' ;
      Open;
    end;
  end;
end;

procedure TfrmPI.btnSimpanClick(Sender: TObject);
var
  sNoTrs, sNoJ, sAkun: string;
  q,qj, qh, qd, qjh, qjd, qc, qt, qsm, qtotal_biaya: TZQuery;
  i,j,k,iAns: Integer;
  total, total_biaya: real;
  totInvoice: Extended;
  //mmTotal, mmTerbilang, mmDicetakOleh: TfrxMemoView;
  lst: TStringList;
begin
  inherited;
  if Trim(cxlCustomer.Text) = '' then begin
    MsgBox('Supplier harus diisi.');
    cxlCustomer.SetFocus;
  end
  else begin

    if cxJenis.Text = 'UANG MUKA PEMBELIAN' then begin
        if Self.Jenis = 'tambah' then begin
        sNoTrs := GetLastFak('uang_muka',cxdTanggal.Date);
        UpdateFaktur(Copy(sNoTrs,1,7));

      end
      else begin
        sNoTrs := cxtNoTrans.Text;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ' + QuotedStr(sNoTrs));
      end;

      if cxChkPosting.Checked then begin

        if  cxtAkunSupp.Text ='' then begin
          MsgBox('Akun Supplier belum diisi');
          Abort;
        end
        else begin
           sNoJ := cxtNoTrans.Text;

            qjh := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''',[sNoJ]);
            with qjh do begin
              Insert;
              FieldByName('no_jurnal').AsString := sNoJ;
              FieldByName('tanggal').AsDateTime := cxdTanggal.Date;
              FieldByName('keterangan').AsString := 'UANG MUKA PEMBELIAN NO: ' + sNoTrs + '['+ cxmKet.Text + ']';
              FieldByName('periode').AsString := Aplikasi.Periode;
              FieldByName('user').AsString := aplikasi.NamaUser;
              FieldByName('user_dept').AsString := aplikasi.UserDept;
              FieldByName('f_posted').AsInteger := 1 ;
              Post;
            end;

            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);

             sAkun := cxtAkunSupp.Text;
            qjd.Insert;
            qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := sNoJ;
            qjd.FieldByName('no_trans').AsString := sNoTrs;
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('debet').AsFloat :=  cxTbl.DataController.Summary.FooterSummaryValues[0];
            qjd.FieldByName('keterangan').AsString := 'UANG MUKA PEMBELIAN NO: ' + sNoTrs + '['+ cxmKet.Text + ']';
            qjd.FieldByName('dc').AsString := 'D';
            qjd.Post;
        
            sAkun := GetDefaultAkun('bankidr');
            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
            qjd.Insert;
            qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            qjd.FieldByName('no_jurnal').AsString := sNoJ;
            qjd.FieldByName('no_trans').AsString := sNoTrs;
            qjd.FieldByName('akun').AsString := sAkun;
            qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Summary.FooterSummaryValues[0];
            qjd.FieldByName('keterangan').AsString := 'Bank BCA SINGOSARI IDR - 368 301 0 444';
            qjd.FieldByName('dc').AsString := 'K';
            qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
            qjd.Post;



            // update flag transaksi invoice
            dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
              'WHERE no_bukti = ' + QuotedStr(sNoTrs));

        end;

      end;
     end else if cxJenis.Text='INVOICE PEMBELIAN (LPB)' then begin
        if Self.Jenis = 'tambah' then begin
        sNoTrs := GetLastFak('invoice_pembelian',cxdTanggal.Date);
        UpdateFaktur(Copy(sNoTrs,1,7));
        if not VarIsNull(cxlUM.EditValue ) then
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_alokasi = 1 WHERE no_bukti = ' + QuotedStr(cxlUM.EditValue));
      end
      else begin
        sNoTrs := cxtNoTrans.Text;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ' + QuotedStr(sNoTrs));
      end;

      if cxChkPosting.Checked then begin

        sNoJ := cxtNoTrans.Text;

        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
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

        for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);



              if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL2' then begin
               sAkun := GetDefaultAkun('ppnmasukanblmfaktur');
                qjd.Insert;
                qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := sNoJ;
                qjd.FieldByName('no_trans').AsString := sNoTrs;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                qjd.FieldByName('kredit').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                qjd.FieldByName('keterangan').AsString := 'PPN MASUKAN BELUM DIFAKTURKAN TRANSAKSI :' + sNoTrs;
                qjd.FieldByName('dc').AsString := 'K';
                qjd.Post;

                sAkun := GetDefaultAkun('ppnmasukan');
                qjd.Insert;
                qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := sNoJ;
                qjd.FieldByName('no_trans').AsString := sNoTrs;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                qjd.FieldByName('debet').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                qjd.FieldByName('keterangan').AsString := 'PPN MASUKAN TRANSAKSI :' + sNoTrs;
                qjd.FieldByName('dc').AsString := 'D';
                qjd.Post;

                end
                else  if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL1' then begin
                     sAkun := GetDefaultAkun('uang_muka_pembelian_idr');
                      qjd.Insert;
                      qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                      qjd.FieldByName('no_jurnal').AsString := sNoJ;
                      qjd.FieldByName('no_trans').AsString := sNoTrs;
                      qjd.FieldByName('akun').AsString := sAkun;
                      qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                      qjd.FieldByName('keterangan').AsString := 'UANG MUKA PEMBELIAN NO: ' + sNoTrs + '['+ cxmKet.Text + ']';
                      qjd.FieldByName('dc').AsString := 'K';
                      qjd.Post;

                       sAkun := GetDefaultAkun('bankidr');
                        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
                        qjd.Insert;
                        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                        qjd.FieldByName('no_jurnal').AsString := sNoJ;
                        qjd.FieldByName('no_trans').AsString := sNoTrs;
                        qjd.FieldByName('akun').AsString := sAkun;
                        qjd.FieldByName('debet').AsFloat :=  cxTbl.DataController.Values[i, cxColSubTotal.index];
                        qjd.FieldByName('keterangan').AsString := 'Bank BCA SINGOSARI IDR - 368 301 0 444';
                        qjd.FieldByName('dc').AsString := 'D';
                        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                        qjd.Post;

                end else begin
                       sAkun := cxtAkunSupp.Text;
                        qjd.Insert;
                        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                        qjd.FieldByName('no_jurnal').AsString := sNoJ;
                        qjd.FieldByName('no_trans').AsString := sNoTrs;
                        qjd.FieldByName('akun').AsString := sAkun;
                        qjd.FieldByName('kredit').AsFloat :=  cxTbl.DataController.Values[i, cxColSubTotal.index];
                        qjd.FieldByName('keterangan').AsString := cxmKet.Text;
                        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                        qjd.FieldByName('dc').AsString := 'K';
                        qjd.Post;

                         sAkun := GetDefaultAkunBrg(cxTbl.DataController.Values[i, cxColKodeBrg.index],'blm_tertagih');
                      qjd.Insert;
                      qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                      qjd.FieldByName('no_jurnal').AsString := sNoJ;
                      qjd.FieldByName('no_trans').AsString := sNoTrs;
                      qjd.FieldByName('akun').AsString := sAkun;
                      qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                      qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                      qjd.FieldByName('keterangan').AsString :=sNoTrs + '['+ cxmKet.Text + ']';
                      qjd.FieldByName('dc').AsString := 'D';
                      qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                      qjd.Post;
                end;
        end;

        
        // update flag transaksi invoice
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
          'WHERE no_bukti = ' + QuotedStr(sNoTrs));

      end;
     end else if cxJenis.Text='INVOICE PEMBELIAN (DARI PO)' then begin

         if Self.Jenis = 'tambah' then begin
          sNoTrs := GetLastFak('invoice_pembelian1',cxdTanggal.Date);
          UpdateFaktur(Copy(sNoTrs,1,9));

        end
        else begin
          sNoTrs := cxtNoTrans.Text;
          dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ' + QuotedStr(sNoTrs));
        end;

        if cxChkPosting.Checked then begin

        sNoJ := cxtNoTrans.Text;

        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
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

        for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);



              if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL2' then begin
               sAkun := GetDefaultAkun('ppnmasukanblmfaktur');
                qjd.Insert;
                qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := sNoJ;
                qjd.FieldByName('no_trans').AsString := sNoTrs;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                qjd.FieldByName('kredit').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                qjd.FieldByName('keterangan').AsString := 'PPN MASUKAN BELUM DIFAKTURKAN TRANSAKSI :' + sNoTrs;
                qjd.FieldByName('dc').AsString := 'K';
                qjd.Post;

                sAkun := GetDefaultAkun('ppnmasukan');
                qjd.Insert;
                qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := sNoJ;
                qjd.FieldByName('no_trans').AsString := sNoTrs;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                qjd.FieldByName('debet').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                qjd.FieldByName('keterangan').AsString := 'PPN MASUKAN TRANSAKSI :' + sNoTrs;
                qjd.FieldByName('dc').AsString := 'D';
                qjd.Post;

                end
                else  if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL1' then begin
                     sAkun := GetDefaultAkun('uang_muka_pembelian_idr');
                      qjd.Insert;
                      qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                      qjd.FieldByName('no_jurnal').AsString := sNoJ;
                      qjd.FieldByName('no_trans').AsString := sNoTrs;
                      qjd.FieldByName('akun').AsString := sAkun;
                      qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                      qjd.FieldByName('keterangan').AsString := 'UANG MUKA PEMBELIAN NO: ' + sNoTrs + '['+ cxmKet.Text + ']';
                      qjd.FieldByName('dc').AsString := 'K';
                      qjd.Post;

                       sAkun := GetDefaultAkun('bankidr');
                        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
                        qjd.Insert;
                        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                        qjd.FieldByName('no_jurnal').AsString := sNoJ;
                        qjd.FieldByName('no_trans').AsString := sNoTrs;
                        qjd.FieldByName('akun').AsString := sAkun;
                        qjd.FieldByName('debet').AsFloat :=  cxTbl.DataController.Values[i, cxColSubTotal.index];
                        qjd.FieldByName('keterangan').AsString := 'Bank BCA SINGOSARI IDR - 368 301 0 444';
                        qjd.FieldByName('dc').AsString := 'D';
                        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                        qjd.Post;

                end else begin
                       sAkun := cxtAkunSupp.Text;
                        qjd.Insert;
                        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                        qjd.FieldByName('no_jurnal').AsString := sNoJ;
                        qjd.FieldByName('no_trans').AsString := sNoTrs;
                        qjd.FieldByName('akun').AsString := sAkun;
                        qjd.FieldByName('kredit').AsFloat :=  cxTbl.DataController.Values[i, cxColSubTotal.index];
                        qjd.FieldByName('keterangan').AsString := cxmKet.Text;
                        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                        qjd.FieldByName('dc').AsString := 'K';
                        qjd.Post;

                         sAkun := GetDefaultAkunBrg(cxTbl.DataController.Values[i, cxColKodeBrg.index],'blm_tertagih');
                      qjd.Insert;
                      qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                      qjd.FieldByName('no_jurnal').AsString := sNoJ;
                      qjd.FieldByName('no_trans').AsString := sNoTrs;
                      qjd.FieldByName('akun').AsString := sAkun;
                      qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                      qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                      qjd.FieldByName('keterangan').AsString :=sNoTrs + '['+ cxmKet.Text + ']';
                      qjd.FieldByName('dc').AsString := 'D';
                      qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                      qjd.Post;
                end;
        end;

        
        // update flag transaksi invoice
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
          'WHERE no_bukti = ' + QuotedStr(sNoTrs));

      end;
     end else if cxJenis.Text='INVOICE PEMBELIAN (TANPA PO)' then begin

         if Self.Jenis = 'tambah' then begin
          sNoTrs := GetLastFak('invoice_pembelian1',cxdTanggal.Date);
          UpdateFaktur(Copy(sNoTrs,1,9));

        end
        else begin
          sNoTrs := cxtNoTrans.Text;
          dm.zConn.ExecuteDirect('DELETE FROM tbl_trsinvoice_det WHERE no_bukti = ' + QuotedStr(sNoTrs));
        end;

        if cxChkPosting.Checked then begin

        sNoJ := cxtNoTrans.Text;

        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
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

        for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

            qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);



              if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL2' then begin
               sAkun := GetDefaultAkun('ppnmasukanblmfaktur');
                qjd.Insert;
                qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := sNoJ;
                qjd.FieldByName('no_trans').AsString := sNoTrs;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                qjd.FieldByName('kredit').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                qjd.FieldByName('keterangan').AsString := 'PPN MASUKAN BELUM DIFAKTURKAN TRANSAKSI :' + sNoTrs;
                qjd.FieldByName('dc').AsString := 'K';
                qjd.Post;

                sAkun := GetDefaultAkun('ppnmasukan');
                qjd.Insert;
                qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                qjd.FieldByName('no_jurnal').AsString := sNoJ;
                qjd.FieldByName('no_trans').AsString := sNoTrs;
                qjd.FieldByName('akun').AsString := sAkun;
                qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                qjd.FieldByName('debet').AsFloat :=cxTbl.DataController.Values[i, cxColSubTotal.index];
                qjd.FieldByName('keterangan').AsString := 'PPN MASUKAN TRANSAKSI :' + sNoTrs;
                qjd.FieldByName('dc').AsString := 'D';
                qjd.Post;

                end
                else  if Copy(cxTbl.DataController.Values[i, cxColKodeBrg.index],1,3)='BL1' then begin
                     sAkun := GetDefaultAkun('uang_muka_pembelian_idr');
                      qjd.Insert;
                      qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                      qjd.FieldByName('no_jurnal').AsString := sNoJ;
                      qjd.FieldByName('no_trans').AsString := sNoTrs;
                      qjd.FieldByName('akun').AsString := sAkun;
                      qjd.FieldByName('kredit').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                      qjd.FieldByName('keterangan').AsString := 'UANG MUKA PEMBELIAN NO: ' + sNoTrs + '['+ cxmKet.Text + ']';
                      qjd.FieldByName('dc').AsString := 'K';
                      qjd.Post;

                       sAkun := GetDefaultAkun('bankidr');
                        qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);
                        qjd.Insert;
                        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                        qjd.FieldByName('no_jurnal').AsString := sNoJ;
                        qjd.FieldByName('no_trans').AsString := sNoTrs;
                        qjd.FieldByName('akun').AsString := sAkun;
                        qjd.FieldByName('debet').AsFloat :=  cxTbl.DataController.Values[i, cxColSubTotal.index];
                        qjd.FieldByName('keterangan').AsString := 'Bank BCA SINGOSARI IDR - 368 301 0 444';
                        qjd.FieldByName('dc').AsString := 'D';
                        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                        qjd.Post;

                end else begin
                       sAkun := cxtAkunSupp.Text;
                        qjd.Insert;
                        qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                        qjd.FieldByName('no_jurnal').AsString := sNoJ;
                        qjd.FieldByName('no_trans').AsString := sNoTrs;
                        qjd.FieldByName('akun').AsString := sAkun;
                        qjd.FieldByName('kredit').AsFloat :=  cxTbl.DataController.Values[i, cxColSubTotal.index];
                        qjd.FieldByName('keterangan').AsString := cxmKet.Text;
                        qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                        qjd.FieldByName('dc').AsString := 'K';
                        qjd.Post;

                         sAkun := GetDefaultAkunBrg(cxTbl.DataController.Values[i, cxColKodeBrg.index],'blm_tertagih');
                      qjd.Insert;
                      qjd.FieldbyName('tanggal').AsDateTime := Aplikasi.TanggalServer;
                      qjd.FieldByName('no_jurnal').AsString := sNoJ;
                      qjd.FieldByName('no_trans').AsString := sNoTrs;
                      qjd.FieldByName('akun').AsString := sAkun;
                      qjd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
                      qjd.FieldByName('debet').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index];
                      qjd.FieldByName('keterangan').AsString :=sNoTrs + '['+ cxmKet.Text + ']';
                      qjd.FieldByName('dc').AsString := 'D';
                      qjd.FieldByName('kode_suppcust').AsString := cxlCustomer.EditValue;
                      qjd.Post;
                end;
        end;

        
        // update flag transaksi invoice
        dm.zConn.ExecuteDirect('UPDATE tbl_trsinvoice_head SET f_posted = 1 ' +
          'WHERE no_bukti = ' + QuotedStr(sNoTrs));

      end;
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
        FieldByName('kode_supp').Value := cxlCustomer.EditValue;
        FieldByName('user').AsString := aplikasi.NamaUser;
        FieldByName('user_dept').AsString := aplikasi.UserDept;
        FieldByName('keterangan').AsString := cxmKet.Lines.Text;
        if cxJenis.Text='UANG MUKA PEMBELIAN' then begin
          FieldByName('jenis').AsString := 'UM';
        end
        else if cxJenis.Text='INVOICE PEMBELIAN (LPB)' then begin
          FieldByName('jenis').AsString := 'PI';
        end
        else if cxJenis.Text='INVOICE PEMBELIAN (DARI PO)' then begin
          FieldByName('jenis').AsString := 'PIPO';
        end
        else if cxJenis.Text='INVOICE PEMBELIAN (TANPA PO)' then begin
          FieldByName('jenis').AsString := 'PITP';
        end;
        FieldByName('curr').AsString := cxCurr.Text;
        FieldByName('noakun').AsString := cxlAkunSupp.EditValue;
        FieldByName('rate').AsFloat := cxsRate.EditValue;
        FieldByName('total').AsFloat := cxTbl.DataController.Summary.FooterSummaryValues[0];
        if not varisnull(cxlNoPO.EditValue) then
        FieldByName('no_po').AsString := cxlNoPO.EditValue;
        if cxChkPosting.Checked then
          FieldByName('f_posted').AsInteger := 1
        else
          FieldByName('f_posted').AsInteger := 0 ;
        if Self.Jenis='edit' then
        FieldByName('edit_date').AsDateTime := Aplikasi.NowServer;
        Post;
      end;



        qd := OpenRS('SELECT * FROM tbl_trsinvoice_det WHERE no_bukti = ''%s''',[sNoTrs]);
        if not qd.IsEmpty then begin
            // detail invoice
          for i := 0 to cxTbl.DataController.RecordCount - 1 do begin
            qd.Edit ;
            qd.FieldByName('no_bukti').AsString := sNoTrs;
            qd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
            qd.FieldByName('no_so').AsString := cxlNoPO.EditValue;
            qd.FieldByName('qty').AsFloat := cxTbl.DataController.Values[i, cxColQty.index] ;
            qd.FieldByName('harga').AsFloat := cxTbl.DataController.Values[i, cxColHarga.index];
            if Not VarIsNull(cxTbl.DataController.Values[i, cxColTax.index]) then
            qd.FieldByName('tax').AsFloat := cxTbl.DataController.Values[i, cxColTax.index];
            qd.FieldByName('subtotal').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index] ;
            qd.Post;
          end;
          qd.Close;

        end
        else begin
            // detail invoice
          for i := 0 to cxTbl.DataController.RecordCount - 1 do begin
            qd.Insert;
            qd.FieldByName('no_bukti').AsString := sNoTrs;
            qd.FieldByName('kode_brg').AsString := cxTbl.DataController.Values[i, cxColKodeBrg.index];
            qd.FieldByName('no_so').AsString := cxlNoPO.EditValue;
            qd.FieldByName('qty').AsFloat := cxTbl.DataController.Values[i, cxColQty.index] ;
            qd.FieldByName('harga').AsFloat := cxTbl.DataController.Values[i, cxColHarga.index];
            if Not VarIsNull(cxTbl.DataController.Values[i, cxColTax.index]) then
            qd.FieldByName('tax').AsFloat := cxTbl.DataController.Values[i, cxColTax.index];
            qd.FieldByName('subtotal').AsFloat := cxTbl.DataController.Values[i, cxColSubTotal.index] ;
            qd.Post;
          end;
          qd.Close;

        end ;

      dm.zConn.Commit;

      aplikasi.log_('SIMPAN INVOICE PEMBELIAN');

    {  if cxChkPosting.Checked then
        MsgBox('Invoice Pembelian sudah disimpan dengan nomor: ' + sNoTrs + #10#13 +
          'Posting No. Jurnal: ' + sNoJ)
      else  }
        MsgBox('Invoice sudah disimpan dengan nomor: ' + sNoTrs);

     // zqrEdit.Close; zqrEdit.Open;

      //ClearAll;
      btnBatalClick(nil);
      close;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;
end;

procedure TfrmPI.cxlAkunSuppPropertiesChange(Sender: TObject);
begin
  inherited;
 cxtAkunSupp.Text := zqrAkun.FieldByName('noakun').AsString;
end;

procedure TfrmPI.FormShow(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer ;
begin
  inherited;
  if Self.Jenis= 'edit' then begin

    q := OpenRS('SELECT * FROM tbl_trsinvoice_head WHERE no_bukti = ''%s''',[NoPI]);


      cxtNoTrans.Text := NoPI;
      cxdTanggal.Date := q.FieldByName('tanggal').AsDateTime;
      cxlCustomer.EditValue := q.FieldByName('kode_supp').Value;
      cxmKet.Lines.Text := q.FieldByName('keterangan').AsString;
      cxCurr.Text := q.FieldByName('curr').AsString;
      cxsRate.EditValue := q.FieldByName('rate').AsFloat;
      cxlAkunSupp.EditValue := q.FieldByName('noakun').AsString;
      cxlNoPO.EditValue := q.FieldByName('no_po').AsString;
       cxsTotal.EditValue := q.FieldByName('total').AsFloat;

    if q.FieldByName('jenis').AsString = 'UM' then begin
        cxJenis.Text := 'UANG MUKA PEMBELIAN' ;
         cxLabel4.Visible := True ;
        cxLabel5.Visible := True ;
        cxCurr.Visible   := True ;           
        cxsRate.Visible  := True ;
        cxLabel6.Caption := 'No.PO';
        cxLabel6.Visible := True ;
        cxlNoPO.Visible  := True ;
        btnProses.Visible := False;
        
         with zBrg do begin
          Close ;
          SQL.Text := 'SELECT kode,deskripsi FROM tbl_barang where left(kode,3)="BL1"' ;
          Open;
        end;

        with zqrPO do begin
      Close ;
      SQL.Text := 'SELECT no_bukti FROM tbl_po_head WHERE f_approval=1 and kode_supp=:supp';
      ParamByName('supp').Value := cxlCustomer.EditValue ;
      Open;
      end;
        
    end
    else if q.FieldByName('jenis').AsString = 'PI' then begin
       cxJenis.Text := 'INVOICE PEMBELIAN (LPB)' ;

      cxLabel4.Visible := False ;
        cxLabel5.Visible := False ;
        cxCurr.Visible   := False ;
        cxsRate.Visible  := False ;
        cxLabel6.Caption := 'No.LPB';
        cxLabel6.Visible := True ;
        cxlNoPO.Visible  := True ;
        btnProses.Visible:= True ;
        
      with zqrPO do begin
       Close ;
       SQL.Text := 'SELECT a.no_bukti FROM tbl_spbb_head a LEFT JOIN tbl_supplier b ON a.kode_supp = b.kode  ' +
                  'WHERE no_penerimaan IS NOT NULL AND  a.kode_supp = :kode_supp1'  ;
       ParamByName('kode_supp1').Value := cxlCustomer.EditValue ;
       Open;
      end;
    end
    else if q.FieldByName('jenis').AsString = 'PIPO' then begin
       cxJenis.Text := 'INVOICE PEMBELIAN (DARI PO)' ;

       cxLabel4.Visible := False ;
        cxLabel5.Visible := False ;
        cxCurr.Visible   := False ;
        cxsRate.Visible  := False ;
        cxLabel6.Caption := 'No.PO';
        cxLabel6.Visible := True ;
        cxlNoPO.Visible  := True ;
        btnProses.Visible:= True ;

         with zqrPO do begin
      Close ;
      SQL.Text := 'SELECT no_bukti FROM tbl_po_head WHERE f_approval=1 and kode_supp=:supp';
      ParamByName('supp').Value := cxlCustomer.EditValue ;
      Open;
      end;

     end
    else if q.FieldByName('jenis').AsString = 'PITP' then begin
       cxJenis.Text := 'INVOICE PEMBELIAN (TANPA PO)' ;

       cxLabel4.Visible := True ;
        cxLabel5.Visible := True ;
        cxCurr.Visible   := True ;
        cxsRate.Visible  := True ;
        cxLabel6.Visible := False ;
        cxlNoPO.Visible  := False ;
        btnProses.Visible:= False ;

    end;



      if q.FieldByName('f_posted').AsInteger = 1 then begin
        cxChkPosting.Checked := True;
        cxChkPosting.Properties.ReadOnly := True;
        btnSimpan.Enabled := False ;
      end
      else begin
        btnSimpan.Enabled := True ;
      end;
      q.Close;

      z := OpenRS('SELECT * FROM tbl_trsinvoice_det WHERE no_bukti = ''%s''',[NoPI]) ;
    while not z.Eof do begin
      cxTbl.BeginUpdate;
      with cxTbl.DataController do begin
        i := AppendRecord ;
        Values[i, cxColKodeBrg.index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColDesk.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
        Values[i, cxColHarga.Index] := z.FieldByName('harga').AsFloat ;
        Values[i, cxColTax.Index] := z.FieldByName('tax').AsFloat ;
        Values[i, cxColSubTotal.Index] := z.FieldByName('subtotal').AsFloat;
      end;
      cxTbl.EndUpdate;
      z.Next;
    end;
    z.Close;
    
  end;

end;

procedure TfrmPI.btnProsesClick(Sender: TObject);
var
  q,z,qPO: TZQuery;
  i: Integer;                                           
  total: Real;
begin
  inherited;
  qPO := OpenRS('SELECT no_po FROM tbl_spbb_det WHERE no_bukti = ''%s''',[cxlNoPo.EditValue]);
  cxtNoPO.Text := qPO.FieldByName('no_po').AsString;
  qPO.Close;
  
  if Trim(cxlNoPO.Text) <> '' then begin
    cxTbl.DataController.RecordCount := 0;

    total := 0;
    q := OpenRS('SELECT a.*,(SELECT pajak FROM tbl_po_det WHERE no_bukti=a.no_po and kode_brg=a.kode_brg ) ppn FROM tbl_spbb_det a WHERE a.no_bukti= ''%s''',[cxlNoPo.EditValue]);
    if not q.IsEmpty then begin

      while not q.Eof do begin
        i := cxTbl.DataController.AppendRecord;
        with cxTbl.DataController do begin
          Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColDesk.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColQty.Index] := q.FieldByName('qty').AsFloat;
          Values[i, cxColHarga.Index] := q.FieldByName('harga').AsFloat;
          Values[i, cxColGross.Index] := (q.FieldByName('qty').AsFloat * q.FieldByName('harga').AsFloat);
          if (q.FieldByName('pajak').AsString='PPN') or (q.FieldByName('ppn').AsString='PPN') then
           Values[i, cxColTax.Index] := (q.FieldByName('harga').AsFloat * q.FieldByName('qty').AsFloat)*0.1
           else    Values[i, cxColTax.Index] := 0 ;

          Values[i, cxColSubTotal.Index] := (q.FieldByName('harga').AsFloat * q.FieldByName('qty').AsFloat) + Values[i, cxColTax.Index];
          //total := total + Values[i, cxColSubTotal.Index];
        end;
        q.Next;
      end;
    end;
    q.Close;
    //if total > 0 then
      ///cxsTotal.Value := total;
      cxsTotal.EditValue := cxTbl.DataController.Summary.FooterSummaryValues[0];
      cxsGross.EditValue := cxTbl.DataController.Summary.FooterSummaryValues[2] ;
      cxsTax.EditValue   := cxTbl.DataController.Summary.FooterSummaryValues[1];
  end;

   z := OpenRS('SELECT COUNT(no_po) jumlah FROM tbl_trsinvoice_head WHERE jenis="UM" and f_alokasi=0 and no_po = ''%s''',[cxtNoPO.Text]);
   if z.FieldByName('jumlah').AsInteger = 1 then begin
    MsgBox('Ada Uang Muka Pembelian yang belum Diallokasikan Untuk PO Ini');
    cxLabel9.Visible := True ;
    cxlUM.Visible := True ;
    btnUM.Visible := True ;
   end else begin
        cxLabel9.Visible := False ;
    cxlUM.Visible := False ;
    btnUM.Visible := false ;
   end;
   z.Close;

     zqrUM.Close;
  zqrUM.ParamByName('po').AsString := cxtNoPO.Text;
  zqrUM.Open;

  cxmKet.Text := 'INVOICE PEMBELIAN DARI:'+ zqrSupp.FieldByName('nama').AsString + '[' + cxtNoPO.Text + ']';

end;

procedure TfrmPI.cxTblDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
  var
      total: Real;
begin
  inherited;
  if AItemIndex = cxColDesk.Index then begin
      try
        cxTbl.BeginUpdate;
        ADataController.Values[ARecordIndex, cxColKodeBrg.Index] :=
          ADataController.Values[ARecordIndex, cxColDesk.Index];
        ADataController.Values[ARecordIndex, cxColQty.Index] := 1;
      finally
        cxTbl.EndUpdate;
      end;
    end else if (AItemIndex = cxColQty.Index) or (AItemIndex = cxColHarga.Index) or (AItemIndex = cxColTax.Index) then begin

      try
        cxTbl.BeginUpdate;
        ADataController.Values [ARecordIndex, cxColGross.Index] :=
          ADataController.Values [ARecordIndex, cxColQty.Index] *
          ADataController.Values [ARecordIndex, cxColHarga.Index] ;

          if not VarIsNull(ADataController.Values [ARecordIndex, cxColTax.Index]) then begin
            ADataController.Values [ARecordIndex, cxColSubTotal.Index] :=
           (ADataController.Values [ARecordIndex, cxColQty.Index] *
            ADataController.Values [ARecordIndex, cxColHarga.Index]) + ADataController.Values [ARecordIndex, cxColTax.Index] ;
          end
          else begin
             ADataController.Values [ARecordIndex, cxColSubTotal.Index] :=
           (ADataController.Values [ARecordIndex, cxColQty.Index] *
            ADataController.Values [ARecordIndex, cxColHarga.Index]);
          end;

          // total := total +  ADataController.Values [ARecordIndex, cxColSubTotal.Index];

              // if total > 0 then
        //cxsTotal.Value := total;
        cxsTotal.EditValue := cxTbl.DataController.Summary.FooterSummaryValues[0] ;
        cxsGross.EditValue := cxTbl.DataController.Summary.FooterSummaryValues[2] ;
        cxsTax.EditValue   := cxTbl.DataController.Summary.FooterSummaryValues[1];
      finally
        cxTbl.EndUpdate;
      end;
    end ;
end;

procedure TfrmPI.btnUMClick(Sender: TObject);
var
 i : Integer ;
 q : TZQuery ;
  total: Real;
begin
  inherited;
   q := OpenRS('SELECT * FROM tbl_trsinvoice_det WHERE no_bukti = ''%s''',[cxlUM.EditValue]);
    if not q.IsEmpty then begin

      while not q.Eof do begin
        i := cxTbl.DataController.AppendRecord;
        with cxTbl.DataController do begin
          Values[i, cxColKodeBrg.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColDesk.Index] := q.FieldByName('kode_brg').AsString;
          Values[i, cxColQty.Index] := q.FieldByName('qty').AsFloat;
          Values[i, cxColHarga.Index] := q.FieldByName('harga').AsFloat * (-1);
          Values[i, cxColSubTotal.Index] := Values[i, cxColHarga.Index]  * q.FieldByName('qty').AsFloat;
          //total := total + Values[i, cxColSubTotal.Index];
        end;
        q.Next;
      end;
    end;

     // cxsTotal.Value := cxTbl.DataController.Summary.FooterSummaryValues[0];
end;

procedure TfrmPI.cxlUMPropertiesChange(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_trsinvoice_head WHERE no_bukti = ''%s''',[cxlUM.EditValue]);
  cxtAkunUM.Text := q.FieldByName('noakun').AsString;
  q.Close;
end;

procedure TfrmPI.cxTblDataControllerBeforePost(
  ADataController: TcxCustomDataController);
begin
  inherited;
   cxsTotal.EditValue := cxTbl.DataController.Summary.FooterSummaryValues[0] ;
   cxsGross.EditValue := cxTbl.DataController.Summary.FooterSummaryValues[2] ;
   cxsTax.EditValue   := cxTbl.DataController.Summary.FooterSummaryValues[1];
end;

end.
