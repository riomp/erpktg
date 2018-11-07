unit unFrmKonfirmPO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid, cxDropDownEdit,
  cxCalendar, cxTextEdit, cxLabel, cxMaskEdit, cxLookupEdit, cxDBLookupEdit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxMemo;

type
  TfrmKonfirmasiPO = class(TfrmTplTrans)
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTglExp: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxlCust: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxtPO: TcxTextEdit;
    cxdTglPO: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxtLebar: TcxTextEdit;
    cxtAngkutan: TcxTextEdit;
    cxLabel9: TcxLabel;
    zQuote: TZQuery;
    dsQuote: TDataSource;
    cxlQuote: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1TableView1: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColItem: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColPrice: TcxGridColumn;
    cxColTotal: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel11: TcxLabel;
    cxsTax: TcxSpinEdit;
    cxLabel12: TcxLabel;
    cxsGrand: TcxSpinEdit;
    cxLabel10: TcxLabel;
    cxsGross: TcxSpinEdit;
    cxLabel13: TcxLabel;
    cxsSAD: TcxSpinEdit;
    zBrg: TZQuery;
    dsBrg: TDataSource;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    zKPO: TZQuery;
    dsKPO: TDataSource;
    btnCetak: TButton;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxtAlamatKirim: TcxTextEdit;
    cxtPIC: TcxTextEdit;
    cxtTlpPIC: TcxTextEdit;
    cxColSatuan: TcxGridColumn;
    cxtNote: TcxMemo;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxlTop: TcxLookupComboBox;
    zTop: TZQuery;
    dTop: TDataSource;
    cxtOthers: TcxTextEdit;
    cxColQty2: TcxGridColumn;
    cxColSatuan2: TcxGridColumn;
    cxColDisc: TcxGridColumn;
    cxColDiscAmount: TcxGridColumn;
    cxColDPP: TcxGridColumn;
    cxColPPN: TcxGridColumn;
    cxColNet: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxlQuoteKeyPress(Sender: TObject; var Key: Char);
    procedure btnHapusClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure cxGrid1TableView1DataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxlTopPropertiesChange(Sender: TObject);
    procedure cxlQuotePropertiesChange(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mStatus,mNoKPO: string;
  public
    { Public declarations }
    property NoKPO: string read mNoKPO write mNoKPO;
  end;

var
  frmKonfirmasiPO: TfrmKonfirmasiPO;

implementation

uses unDm, unTools, unAplikasi, unFrmLaporan1;

{$R *.dfm}

procedure TfrmKonfirmasiPO.FormCreate(Sender: TObject);
begin
  inherited;

  cxdTglTrs.Date  := Aplikasi.TanggalServer ;
  cxdTglExp.Date  := Aplikasi.TanggalServer ;
  cxdTglPO.Date   := Aplikasi.TanggalServer ;
  cxtNoTrans.Text := GetLastFak('kpo',cxdTglTrs.Date);

  cxlCust.Enabled := False ;
  cxlQuote.Enabled := True ;
  btnHapus.Enabled := False ;
  btnCetak.Enabled :=False;
  cxtOthers.Enabled := False;

  Self.Jenis := 'tambah';

  zQuote.Open;
  zBrg.Open;
  zqrCust.Open;
  zKPO.Open;
  zTop.Open ;
end;


procedure TfrmKonfirmasiPO.btnSimpanClick(Sender: TObject);
var
  q,z, qhead : TZQuery ;
  i : integer;
  sNoTrs : string;
  f: TFrm_LaporanUmum1 ;
begin
  inherited;
  if cxtPO.Text = '' then begin
    MsgBox('Mohon isi Nomor PO.');
    cxtPO.SetFocus;
    Abort;
  end;
    if cxlTop.EditValue = null then begin
    MsgBox('Mohon isi TOP.');
    cxlTop.SetFocus;
    Abort;
  end;


  if Self.Jenis = 'tambah' then begin
    sNoTrs := GetLastFak('kpo',cxdTglTrs.Date);
    UpdateFaktur(Copy(sNoTrs,1,8));
  end
  else begin
    sNoTrs := cxtNoTrans.Text;
  end;

  q := OpenRS('SELECT * FROM tbl_kpo_head where no_kpo =''%s''',[sNoTrs]) ;
  qhead := OpenRS('SELECT * FROM tbl_quote_head where no_quote =''' + cxlQuote.Text + '''');
  qhead.Edit;
  qhead.FieldByName('f_konfirmasi').AsFloat := 1;
  qhead.Post;
  qhead.Close;

  if Self.Jenis ='tambah' then begin
    q.Insert;
      if (cxsGrand.EditValue <> 0) then begin
        with cxGrid1TableView1.DataController  do begin

          for i := 0 to cxGrid1TableView1.DataController.RowCount -1 do begin
           z := OpenRS('SELECT * FROM tbl_kpo_det where no_kpo =''%s''',[sNoTrs]) ;
           z.Insert;
           z.FieldByName('no').AsInteger := Values[i, cxColNo.Index];
           z.FieldByName('no_kpo').AsString := sNoTrs;
           z.FieldByName('kode_item').AsString := Values[i, cxColItem.index];
           z.FieldByName('qty').AsFloat := Values [i, cxColQty.Index];
           z.FieldByName('unitid').AsString := Values[i, cxColSatuan.Index];
           z.FieldByName('price').AsFloat := Values[i, cxColPrice.Index];
           z.FieldByName('total_price').AsFloat := Values[i, cxColTotal.Index];
           if z.FieldByName('disc').AsFloat<> 0 then
           z.FieldByName('disc').AsFloat := Values[i, cxColDisc.Index];
           if z.FieldByName('disc_amount').AsFloat<> 0 then
           z.FieldByName('disc_amount').AsFloat := Values[i, cxColDiscAmount.Index];
           z.FieldByName('dpp').AsFloat := Values[i, cxColDPP.Index];
           z.FieldByName('ppn').AsFloat := Values[i, cxColPPN.Index];
           z.FieldByName('net').AsFloat := Values[i, cxColNet.Index];
           z.FieldByName('qty2').AsFloat := Values[i, cxColQty2.Index];
           z.FieldByName('satuan2').AsString := Values[i, cxColSatuan2.Index];
           z.Post;
           z.Close;
          end;
        end;
      end;
    end
    else begin
      q.Edit;
      sNoTrs := cxtNoTrans.Text;
        try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_kpo_det WHERE no_kpo = ''' + cxtNOTrans.Text + '''');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;

        with cxGrid1TableView1.DataController  do begin
        for i := 0 to cxGrid1TableView1.DataController.RowCount -1 do begin
           z := OpenRS('SELECT * FROM tbl_kpo_det where no_kpo =''%s''',
              [cxtNoTrans.Text]) ;
           z.Insert;
           z.FieldByName('no').AsInteger := Values[i, cxColNo.Index];
           z.FieldByName('no_kpo').AsString := cxtNoTrans.Text ;
           z.FieldByName('kode_item').AsString := Values[i, cxColItem.index];
           z.FieldByName('qty').AsFloat := Values [i, cxColQty.Index];
           z.FieldByName('unitid').AsString := Values[i, cxColSatuan.index];
           z.FieldByName('price').AsFloat := Values[i, cxColPrice.Index];
           z.FieldByName('total_price').AsFloat := Values[i, cxColTotal.Index];
           if z.FieldByName('disc').AsFloat<> 0 then
           z.FieldByName('disc').AsFloat := Values[i, cxColDisc.Index];
           if z.FieldByName('disc_amount').AsFloat<> 0 then
           z.FieldByName('disc_amount').AsFloat := Values[i, cxColDiscAmount.Index];
           z.FieldByName('dpp').AsFloat := Values[i, cxColDPP.Index];
           z.FieldByName('ppn').AsFloat := Values[i, cxColPPN.Index];
           z.FieldByName('net').AsFloat := Values[i, cxColNet.Index];
           z.FieldByName('qty2').AsFloat := Values[i, cxColQty2.Index];
           z.FieldByName('satuan2').AsString := Values[i, cxColSatuan2.Index];
           z.Post;
           z.Close;
        end;
        end;
      end;

  with q do begin
    FieldByName('no_kpo').AsString            := cxtNoTrans.Text ;
    FieldByName('kode_customer').AsString     := cxlCust.EditValue ;
    FieldByName('no_po').AsString             := cxtPO.Text  ;
    FieldByName('tgl_po').AsDateTime          := cxdTglPO.EditValue  ;
    FieldByName('no_quote').AsString          := cxlQuote.EditValue  ;
    FieldByName('tgl_kpo').AsDateTime         := cxdTglPO.EditValue  ;
    FieldByName('estimasi_kirim').AsDateTime  := cxdTglExp.EditValue  ;
    if cxtLebar.Text<>'' then
    FieldByName('lebar_jalan').AsString       := cxtLebar.Text ;
    if cxtAngkutan.Text<>'' then
    FieldByName('angkutan').AsString          := cxtAngkutan.Text ;
    FieldByName('gross').AsFloat              := cxsGross.Value  ;
    if FieldByName('discount').AsFloat<> 0 then
    FieldByName('discount').AsFloat           := cxsSAD.Value ;
    FieldByName('ppn').AsFloat                := cxsTax.Value ;
    FieldByName('total').AsFloat              := cxsGrand.Value  ;
    if cxtAlamatKirim.Text<>'' then
    FieldByName('alamat_kirim').AsString      := cxtAlamatKirim.Text ;
    if cxtPIC.Text<>'' then
    FieldByName('pic').AsString               := cxtPIC.Text ;
    if cxtTlpPIC.Text<>'' then
    FieldByName('tlp_pic').AsString           := cxtTlpPIC.Text ;
    if cxlTop.EditValue<>'' then
    FieldByName('top').AsString               := cxlTop.EditValue ;
    if cxtOthers.Text<>'' then
    FieldByName('top_lain').AsString          := cxtOthers.Text ;
    FieldByName('note').AsString              := cxtNote.Text  ;

    if self.Jenis = 'tambah' then begin
          FieldByName('user_input').AsString := aplikasi.NamaUser;
          FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
          end;
    if Self.Jenis = 'edit' then begin
          FieldByName('user_edit').AsString := aplikasi.NamaUser;
          FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
    end;
    Post ;
    Close;
    dsKPO.DataSet.Refresh ;
    dsQuote.DataSet.Refresh ;
    cxGrid1TableView1.DataController.RecordCount := 0;
  end;
   i := QBox(Self, 'Cetak Konfirmasi PO Nomer: ' + cxtNOTrans.Text,'Konfirmasi PO');
     if i = IDYES then begin
         f := TFrm_LaporanUmum1.Create(Self);
        if cxtNoTrans.Text <> '' then begin
          with f do begin
            zqrKPO.Close;
            zqrKPO.ParamByName('no_kpo').AsString := cxtNoTrans.Text;
            zqrKPO.Open;
            rptKPO.ShowReport(True);
          end;
          f.Release;
          for i:= 0 to ComponentCount-1 do
            begin
                if Components[i] is TcxTextEdit then
                  (Components[i] as TcxTextEdit).Text := '';
                if Components[i] is TcxSpinEdit then
                  (Components[i] as TcxSpinEdit).Value := 0;
                  if Components[i] is TcxLookupComboBox then
                  (Components[i] as TcxLookupComboBox).Text := '';
            end;
        end;
        end
        else begin
          for i:= 0 to ComponentCount-1 do
          begin
              if Components[i] is TcxTextEdit then
                (Components[i] as TcxTextEdit).Text := '';
              if Components[i] is TcxSpinEdit then
                (Components[i] as TcxSpinEdit).Value := 0;
                if Components[i] is TcxLookupComboBox then
                (Components[i] as TcxLookupComboBox).Text := '';
          end;
        end;

      close;
 //FormCreate(nil);

end;

procedure TfrmKonfirmasiPO.btnEdit2Click(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer;
begin
  inherited;
  btnHapus.Enabled := True ;
  btnCetak.Enabled := True ;
  if Trim(cxlNoBukti.EditValue)='' then Abort ;

  Self.Jenis :='edit';
  mStatus := 'onload';

  cxtNoTrans.Text := cxlNoBukti.EditValue;
  //cxdTglTrs.EditValue := zKPO.FieldByName('tgl_kpo').AsDateTime;
  //cxlCust.EditValue := zKPO.FieldByName('kode_customer').AsString ;
  //cxlQuote.Enabled :=False ;

  q := OpenRS('SELECT * FROM tbl_kpo_head WHERE no_kpo = ''%s''', [ cxlNoBukti.EditValue]);

  with q do begin

    cxdTglTrs.EditValue := FieldByName('tgl_kpo').AsDateTime;
    cxlQuote.EditValue := FieldByName('no_quote').asString;
    cxtPO.Text := FieldByName('no_po').AsString ;
    cxlCust.EditValue :=FieldByName('kode_customer').AsString ;
    cxdTglPO.EditValue := FieldByName('tgl_po').AsDateTime;
    cxdTglExp.EditValue := FieldByName('estimasi_kirim').AsDateTime;
    cxtLebar.Text := FieldByName('lebar_jalan').AsString ;
    cxtAngkutan.Text := FieldByName('angkutan').AsString ;
    cxtAlamatKirim.Text := FieldByName('alamat_kirim').AsString;
    cxtPIC.Text := FieldByName('pic').AsString ;
    cxtTlpPIC.Text := FieldByName('tlp_pic').AsString;
    cxlTop.EditValue := FieldByName('top').AsString;
    cxtOthers.Text := FieldByName('top_lain').AsString;
    cxtNote.Text := FieldByName('note').AsString;

    z := OpenRS('SELECT a.no,a.kode_item,a.qty,a.unitid,a.price,a.total_price,a.disc,a.disc_amount,a.dpp,a.ppn,a.net, a.qty2, a.satuan2 ' +
      'FROM tbl_kpo_det as a where a.no_kpo =''%s'' order by a.no asc',[cxlNoBukti.EditValue]) ;

    while not z.Eof do begin
      with cxGrid1TableView1.DataController do begin
       i := AppendRecord ;
       Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
       Values[i, cxColItem.index] := z.FieldByName('kode_item').AsString;
       Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
       Values[i, cxColSatuan.Index] := z.FieldByName('unitid').AsString ;
       Values[i, cxColPrice.Index] := z.FieldByName('price').AsFloat ;
       Values[i, cxColTotal.Index] := z.FieldByName('total_price').AsFloat ;
       Values[i, cxColDisc.Index]:= z.FieldByName('disc').AsFloat;
       Values[i, cxColDiscAmount.Index] := z.FieldByName('disc_amount').AsFloat ;
       Values[i, cxColDPP.Index] := z.FieldByName('dpp').AsFloat ;
        Values[i, cxColPPN.Index]:= z.FieldByName('ppn').AsFloat ;
        Values[i, cxColNet.Index] := z.FieldByName('net').AsFloat ;
       Values[i, cxColQty2.Index] := z.FieldbyName('qty2').AsFloat;
       Values[i, cxColSatuan2.Index] := z.FieldByname('satuan2').AsString;
      end;
      z.Next;
    end;
    z.Close;

    //cxsTax.Value := FieldByName('ppn').AsFloat ;
    //cxsGrand.Value := FieldByName('total').AsFloat ;
    //cxsSAD.Value := FieldByName('sad').AsFloat ;
    //cxsDiscount.Value := FieldByName('discount').AsFloat;
     cxsGross.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0];
        cxsSAD.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[1];
        cxsTax.Value := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[2];
        cxsGrand.Value :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[3];

  end;
  mStatus := '';
  
end;

procedure TfrmKonfirmasiPO.cxlQuoteKeyPress(Sender: TObject;
  var Key: Char);
var
  q,z : TZQuery ;
  i : Integer;
begin

  inherited;
  if (Key = #13 ) then begin
     cxGrid1TableView1.DataController.RecordCount := 0 ;
  cxlCust.EditValue := zQuote.FieldByName('kode_customer').AsString ;
 // if Self.Jenis = 'tambah' then begin
    cxlCust.EditValue := zQuote.FieldByName('kode_customer').AsString ;

    q := OpenRS('SELECT * FROM tbl_quote_head WHERE no_quote = ''%s''', [ cxlQuote.EditValue]);

    mStatus := 'onload';

    with q do begin
     { cxsTax.Value := FieldByName('tax').AsFloat ;
      cxsGrand.Value := FieldByName('net_total').AsFloat ;
      cxsSAD.EditValue := (FieldByName('net_total').AsFloat) - (FieldByName('tax').AsFloat); }


      z := OpenRS('SELECT a.no,a.kode_item,a.qty,a.unitid,a.price,a.total_price,c.d_tax,a.qty2, a.satuan2 ' +
        'FROM tbl_quote_det as a left join tbl_barang as b on a.kode_item=b.kode left join tbl_quote_head as c on a.no_quote=c.no_quote where a.no_quote =''%s'' order by a.no asc',[cxlQuote.EditValue]) ;
      while not z.Eof do begin
        with cxGrid1TableView1.DataController do begin
         i := AppendRecord ;
         Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
         Values[i, cxColItem.index] := z.FieldByName('kode_item').AsString;
         Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
         Values[i, cxColSatuan.Index] := z.FieldByName('unitid').AsString ;
         Values[i, cxColPrice.Index] := z.FieldByName('price').AsFloat ;
         Values[i, cxColTotal.Index] := z.FieldByName('total_price').AsFloat;
         Values[i, cxColQty2.Index] := z.FieldByname('qty2').AsFloat;
         Values[i, cxColSatuan2.Index] := z.FieldByName('satuan2').AsString;
         if z.FieldByName('d_tax').AsString = 'INCLUDE' then begin
           Values [i, cxColDPP.Index] :=
          (Values [i, cxColQty.Index] *Values [i, cxColPrice.Index])/1.1 ;

          Values [i, cxColPPN.Index] :=
           Values [i, cxColDPP.Index]* 0.1 ;
           Values [i, cxColNet.Index] :=
           Values [i, cxColQty.Index] *
           Values [i, cxColPrice.Index];
         end
         else begin
           Values [i, cxColDPP.Index] :=
          (Values [i, cxColQty.Index] *Values [i, cxColPrice.Index]);

          Values [i, cxColPPN.Index] :=
          Values [i, cxColDPP.Index]* 0.1 ;
          Values [i, cxColNet.Index] :=
          (Values [i, cxColQty.Index] *
          Values [i, cxColPrice.Index])+ Values [i, cxColPPN.Index];
         end;
        end;
        z.Next;
      end;
      z.Close;

      //cxsDiscount.Value := 0;
      cxsGross.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0];
      cxsTax.Value := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[2];
      cxsGrand.Value :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[3];
    end;

    mStatus := '';
  end;

end;

procedure TfrmKonfirmasiPO.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
  sNoTrs : string;
begin
  inherited;
   if cxtNOTrans.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_kpo_head WHERE no_kpo = ''%s''',
      [cxtNOTrans.Text]);
    if not q.IsEmpty then begin
        i := QBox(Self, 'Hapus Konfirmasi PO Nomer: ' + cxtNOTrans.Text,'Hapus Konfirmasi PO');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_kpo_head WHERE no_kpo = ''' + cxtNOTrans.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_kpo_det WHERE no_kpo = ''' + cxtNOTrans.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Konfirmasi PO berhasil.');
            cxtNoTrans.Text := GetLastFak('kpo');

            for i:= 0 to ComponentCount-1 do
            begin
                if Components[i] is TcxTextEdit then
                  (Components[i] as TcxTextEdit).Text := '';
                if Components[i] is TcxSpinEdit then
                  (Components[i] as TcxSpinEdit).Value := 0;
                  if Components[i] is TcxLookupComboBox then
                  (Components[i] as TcxLookupComboBox).Text := '';
            end;
             cxGrid1TableView1.DataController.RecordCount := 0;
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
    end;
  end;
  FormCreate(nil);
  dsKPO.DataSet.Refresh ;
  dsQuote.DataSet.Refresh ;
end;

procedure TfrmKonfirmasiPO.btnCetakClick(Sender: TObject);
var
   f: TFrm_LaporanUmum1 ;
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_kpo_head WHERE no_kpo = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('Konfirmasi PO ini belum disimpan.');
    q.Close;
    Abort;
  end;
  q.Close;

   f := TFrm_LaporanUmum1.Create(Self);
  if cxtNoTrans.Text <> '' then begin
    with f do begin
      zqrKPO.Close;
      zqrKPO.ParamByName('no_kpo').AsString := cxtNoTrans.Text;
      zqrKPO.Open;
      rptKPO.ShowReport(True);
    end;
    f.Release;
  end;

end;

procedure TfrmKonfirmasiPO.cxGrid1TableView1DataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  q : TZQuery ;
begin
  inherited;
  if mStatus = '' then begin
    if (AItemIndex = cxColDisc.Index) then begin
      try
        cxGrid1.BeginUpdate;

        {ADataController.Values [ARecordIndex, cxColTotal.Index] :=
          ADataController.Values [ARecordIndex, cxColQty.Index] *
          ADataController.Values [ARecordIndex, cxColPrice.Index] ;

        ADataController.Values[ARecordIndex, cxColQty2.Index] :=
          ADataController.Values[ARecordIndex, cxColQty.Index] *
            GetConvSatuan(ADataController.Values[ARecordIndex, cxColItem.Index], ADataController.Values[ARecordIndex, cxColSatuan.Index]);

        cxsSAD.Value := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] - cxsDiscount.EditValue;
        cxsTax.Value := cxsSAD.Value*0.1 ;

        cxsGrand.Value := cxsSAD.Value + cxsTax.Value ; }
         ADataController.Values[ARecordIndex, cxColDiscAmount.Index] :=
        (ADataController.Values [ARecordIndex, cxColTotal.Index]*
        ADataController.Values [ARecordIndex, cxColDisc.Index])/100 ;

         q := OpenRS('SELECT d_tax FROM tbl_quote_head where no_quote =''%s''',[cxlQuote.EditValue]) ;

         if q.FieldByName('d_tax').AsString = 'INCLUDE' then begin
            ADataController.Values [ARecordIndex, cxColDPP.Index] :=
             (ADataController.Values [ARecordIndex, cxColTotal.Index] - ((ADataController.Values [ARecordIndex, cxColTotal.Index]*
          ADataController.Values [ARecordIndex, cxColDisc.Index])/100))/1.1 ;

          ADataController.Values [ARecordIndex, cxColPPN.Index] :=
          ADataController.Values [ARecordIndex, cxColDPP.Index]* 0.1 ;
          ADataController.Values [ARecordIndex, cxColNet.Index] :=
          (ADataController.Values [ARecordIndex, cxColTotal.Index] -(ADataController.Values [ARecordIndex, cxColTotal.Index]*
          ADataController.Values [ARecordIndex, cxColDisc.Index])/100);
         end
         else begin
            ADataController.Values [ARecordIndex, cxColDPP.Index] :=
          (ADataController.Values [ARecordIndex, cxColTotal.Index] -((ADataController.Values [ARecordIndex, cxColTotal.Index]*
          ADataController.Values [ARecordIndex, cxColDisc.Index])/100));

          ADataController.Values [ARecordIndex, cxColPPN.Index] :=
          ADataController.Values [ARecordIndex, cxColDPP.Index]* 0.1 ;
          ADataController.Values [ARecordIndex, cxColNet.Index] :=
          (ADataController.Values [ARecordIndex, cxColTotal.Index] -((ADataController.Values [ARecordIndex, cxColTotal.Index]*
          ADataController.Values [ARecordIndex, cxColDisc .Index])/100))+ ADataController.Values [ARecordIndex, cxColPPN.Index];
         end;

        //cxGrid1.EndUpdate;
      finally
        cxGrid1.EndUpdate;
         cxsGross.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0];
        cxsSAD.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[1];
        cxsTax.Value := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[2];
        cxsGrand.Value :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[3];

      end;
    end;
  end;
end;



procedure TfrmKonfirmasiPO.cxlTopPropertiesChange(Sender: TObject);
begin
  if cxlTop.EditValue = 'OTHERS' then begin
    cxtOthers.Enabled := True ;
    end
    else begin
     cxtOthers.Enabled := False ;
    end;

end;

procedure TfrmKonfirmasiPO.cxlQuotePropertiesChange(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer;
begin
  inherited;
  if Self.Jenis = 'tambah' then begin
  cxGrid1TableView1.DataController.RecordCount := 0 ;
  cxlCust.EditValue := zQuote.FieldByName('kode_customer').AsString ;
 // if Self.Jenis = 'tambah' then begin
    cxlCust.EditValue := zQuote.FieldByName('kode_customer').AsString ;

    q := OpenRS('SELECT * FROM tbl_quote_head WHERE no_quote = ''%s''', [ cxlQuote.EditValue]);

    mStatus := 'onload';

    with q do begin
     { cxsTax.Value := FieldByName('tax').AsFloat ;
      cxsGrand.Value := FieldByName('net_total').AsFloat ;
      cxsSAD.EditValue := (FieldByName('net_total').AsFloat) - (FieldByName('tax').AsFloat); }


      z := OpenRS('SELECT a.no,a.kode_item,a.qty,a.unitid,a.price,a.total_price,c.d_tax,a.qty2, a.satuan2 ' +
        'FROM tbl_quote_det as a left join tbl_barang as b on a.kode_item=b.kode left join tbl_quote_head as c on a.no_quote=c.no_quote where a.no_quote =''%s'' order by a.no asc',[cxlQuote.EditValue]) ;
      while not z.Eof do begin
        with cxGrid1TableView1.DataController do begin
         i := AppendRecord ;
         Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
         Values[i, cxColItem.index] := z.FieldByName('kode_item').AsString;
         Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
         Values[i, cxColSatuan.Index] := z.FieldByName('unitid').AsString ;
         Values[i, cxColPrice.Index] := z.FieldByName('price').AsFloat ;
         Values[i, cxColTotal.Index] := z.FieldByName('total_price').AsFloat;
         Values[i, cxColQty2.Index] := z.FieldByname('qty2').AsFloat;
         Values[i, cxColSatuan2.Index] := z.FieldByName('satuan2').AsString;
         if z.FieldByName('d_tax').AsString = 'INCLUDE' then begin
           Values [i, cxColDPP.Index] :=
          (Values [i, cxColQty.Index] *Values [i, cxColPrice.Index])/1.1 ;

          Values [i, cxColPPN.Index] :=
           Values [i, cxColDPP.Index]* 0.1 ;
           Values [i, cxColNet.Index] :=
           Values [i, cxColQty.Index] *
           Values [i, cxColPrice.Index];
         end
         else begin
           Values [i, cxColDPP.Index] :=
          (Values [i, cxColQty.Index] *Values [i, cxColPrice.Index]);

          Values [i, cxColPPN.Index] :=
          Values [i, cxColDPP.Index]* 0.1 ;
          Values [i, cxColNet.Index] :=
          (Values [i, cxColQty.Index] *
          Values [i, cxColPrice.Index])+ Values [i, cxColPPN.Index];
         end;
        end;
        z.Next;
      end;
      z.Close;

      //cxsDiscount.Value := 0;
      cxsGross.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0];
      cxsTax.Value := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[2];
      cxsGrand.Value :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[3];
    end;

    mStatus := '';
  end;
end;

procedure TfrmKonfirmasiPO.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  inherited;
  if Self.Jenis='tambah' then
  cxtNoTrans.Text := GetLastFak('kpo',cxdTglTrs.Date);
end;

procedure TfrmKonfirmasiPO.FormShow(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
      mStatus := 'onload';

     cxtNoTrans.Text := NoKPO;
     q := OpenRS('SELECT * FROM tbl_kpo_head WHERE no_kpo = ''%s''', [ NoKPO]);

      with q do begin

        cxdTglTrs.EditValue := FieldByName('tgl_kpo').AsDateTime;
        cxlQuote.EditValue := FieldByName('no_quote').asString;
        cxtPO.Text := FieldByName('no_po').AsString ;
        cxlCust.EditValue :=FieldByName('kode_customer').AsString ;
        cxdTglPO.EditValue := FieldByName('tgl_po').AsDateTime;
        cxdTglExp.EditValue := FieldByName('estimasi_kirim').AsDateTime;
        cxtLebar.Text := FieldByName('lebar_jalan').AsString ;
        cxtAngkutan.Text := FieldByName('angkutan').AsString ;
        cxtAlamatKirim.Text := FieldByName('alamat_kirim').AsString;
        cxtPIC.Text := FieldByName('pic').AsString ;
        cxtTlpPIC.Text := FieldByName('tlp_pic').AsString;
        cxlTop.EditValue := FieldByName('top').AsString;
        cxtOthers.Text := FieldByName('top_lain').AsString;
        cxtNote.Text := FieldByName('note').AsString;

        z := OpenRS('SELECT a.no,a.kode_item,a.qty,a.unitid,a.price,a.total_price,a.disc,a.disc_amount,a.dpp,a.ppn,a.net, a.qty2, a.satuan2 ' +
          'FROM tbl_kpo_det as a where a.no_kpo =''%s'' order by a.no asc',[NoKPO]) ;

        while not z.Eof do begin
          with cxGrid1TableView1.DataController do begin
           i := AppendRecord ;
           Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
           Values[i, cxColItem.index] := z.FieldByName('kode_item').AsString;
           Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
           Values[i, cxColSatuan.Index] := z.FieldByName('unitid').AsString ;
           Values[i, cxColPrice.Index] := z.FieldByName('price').AsFloat ;
           Values[i, cxColTotal.Index] := z.FieldByName('total_price').AsFloat ;
           Values[i, cxColDisc.Index]:= z.FieldByName('disc').AsFloat;
           Values[i, cxColDiscAmount.Index] := z.FieldByName('disc_amount').AsFloat ;
           Values[i, cxColDPP.Index] := z.FieldByName('dpp').AsFloat ;
            Values[i, cxColPPN.Index]:= z.FieldByName('ppn').AsFloat ;
            Values[i, cxColNet.Index] := z.FieldByName('net').AsFloat ;
           Values[i, cxColQty2.Index] := z.FieldbyName('qty2').AsFloat;
           Values[i, cxColSatuan2.Index] := z.FieldByname('satuan2').AsString;
          end;
          z.Next;
        end;
        z.Close;

         cxsGross.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0];
            cxsSAD.Value  := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[1];
            cxsTax.Value := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[2];
            cxsGrand.Value :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[3];

      end;
      mStatus := '';
   end;
end;

end.
