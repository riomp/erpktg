unit unFrmQuotetion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, DB,
  ZAbstractRODataset, ZDataset, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, ZAbstractDataset,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxMemo, cxSpinEdit, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmQuotetion = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel2: TcxLabel;
    cxdTglExp: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxlCust: TcxLookupComboBox;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    zBrg: TZQuery;
    dsBrg: TDataSource;
    zDet: TZQuery;
    dsDet: TDataSource;
    cxmPayment: TcxMemo;
    cxLabel9: TcxLabel;
    cxComboTax: TcxComboBox;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxsTax: TcxSpinEdit;
    cxsGrand: TcxSpinEdit;
    cxdTglTrs: TcxDateEdit;
    zQuote: TZQuery;
    dsQuote: TDataSource;
    btnCetak: TButton;
    cxtShipMethode: TcxTextEdit;
    cxtShipping: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxlSales: TcxLookupComboBox;
    zqrSales: TZReadOnlyQuery;
    dsSales: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1TableView1: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColItem: TcxGridColumn;
    cxColDelivery: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColPrice: TcxGridColumn;
    cxColTotal: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    cxColKode: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    Label1: TLabel;
    cxdDel: TcxDateEdit;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    cxColQty2: TcxGridColumn;
    cxColSatuan2: TcxGridColumn;
    Button1: TButton;
    cxLabel13: TcxLabel;
    cxcCurr: TcxComboBox;
    cxsKurs: TcxSpinEdit;
    cxColTotal2: TcxGridColumn;
    cxsGrand2: TcxSpinEdit;
    cxsTax2: TcxSpinEdit;
    cxcShipMethode: TcxComboBox;
    cxcShipping: TcxComboBox;
    procedure cxGrid1TableView1DataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxComboTaxPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure cxGrid1TableView1DataControllerAfterDelete(
      ADataController: TcxCustomDataController);
    procedure btnHapusClick(Sender: TObject);
    procedure cxGrid1TableView1DataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure Button1Click(Sender: TObject);
    procedure cxcCurrPropertiesEditValueChanged(Sender: TObject);
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    mStatus,mNoQuot: string;

  public
    { Public declarations }
    property NoQuot: string read mNoQuot write mNoQuot;
  end;

var
  frmQuotetion: TfrmQuotetion;

implementation

uses unDm, unTools, unAplikasi, unFrmLapUmum, unFrmLaporan1;

{$R *.dfm}


procedure TfrmQuotetion.cxGrid1TableView1DataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  i : Integer;
  z,q : TZQuery;
begin
  inherited;

  if mStatus = '' then begin

    if (AItemIndex = cxColQty.Index) or (AItemIndex = cxColPrice.Index) then begin

      i := ADataController.GetFocusedRecordIndex;
      with ADataController do begin
        Values[i, cxColQty2.Index] := Values[i, cxColQty.Index] *
          GetConvSatuan(Values[i, cxColKode.Index], Values[i, cxColSatuan.Index]);

        q := OpenRS('SELECT unitid FROM tbl_barang WHERE kode = ''%s''',[Values[i, cxColKode.Index]]);
          Values[i, cxColSatuan2.Index] := q.FieldByname('unitid').AsString;
        q.Close;
      end;

      try
        cxGrid1.BeginUpdate;
        ADataController.Values [ARecordIndex, cxColTotal.Index] :=
          ADataController.Values [ARecordIndex, cxColQty.Index] *
          ADataController.Values [ARecordIndex, cxColPrice.Index] ;

        ADataController.Values [ARecordIndex, cxColTotal2.Index] :=
          ADataController.Values [ARecordIndex, cxColTotal.Index] * cxsKurs.Value ;

      if cxComboTax.Text = 'EXCLUDE' then begin

        cxsTax.EditValue :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0]*0.1 ;
        cxsGrand.EditValue :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] + cxsTax.EditingValue ;

        cxsTax2.EditValue :=  cxsTax.EditValue *  cxsKurs.Value ;
        cxsGrand2.EditValue :=  cxsGrand.EditValue *  cxsKurs.Value ;
        end
       else begin
       if cxComboTax.Text = 'INCLUDE' then begin
        cxsTax.EditValue := 0 ;
        cxsGrand.EditValue := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] + cxsTax.EditingValue ;

        cxsGrand2.EditValue := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[1] + cxsTax.EditingValue ;
       end;
       end;


      finally
        cxGrid1.EndUpdate;
      end;
    end
    else if AItemIndex = cxColItem.Index then begin
      try
        cxGrid1TableView1.BeginUpdate;
        ADataController.Values[ARecordIndex, cxColKode.Index] :=
          ADataController.Values[ARecordIndex, cxColItem.Index];
        label1.Caption := ADataController.Values[ARecordIndex, cxColKode.Index]  ;
         ADataController.Values[ARecordIndex, cxColQty.Index] := 1 ;
         ADataController.Values[ARecordIndex, cxColDelivery.Index] := 'TBA' ;
        z := OpenRS('SELECT unitid FROM tbl_barang where kode =''%s''',[Label1.caption]) ;
        with cxGrid1TableView1.DataController do begin
         Values[i, cxColSatuan.Index] := z.FieldByName('unitid').AsString ;
        end;
      finally
        cxGrid1TableView1.EndUpdate;
      end;
    end
    else if (AItemIndex = cxColSatuan.Index) then begin
      i := ADataController.GetFocusedRecordIndex;
      with ADataController do begin
        Values[i, cxColQty2.Index] := Values[i, cxColQty.Index] *
          GetConvSatuan(Values[i, cxColKode.Index], Values[i, cxColSatuan.Index]);

        q := OpenRS('SELECT unitid FROM tbl_barang WHERE kode = ''%s''',[Values[i, cxColKode.Index]]);
        Values[i, cxColSatuan2.Index] := q.FieldByname('unitid').AsString;
        q.Close;
      end;
    end;
  end;
end;

procedure TfrmQuotetion.cxComboTaxPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxComboTax.Text = 'EXCLUDE' then begin
      cxsTax.EditValue :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0]*0.1 ;
      cxsGrand.EditValue :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] + cxsTax.EditingValue ;
      end
     else begin
     if cxComboTax.Text = 'INCLUDE' then begin
      cxsTax.EditValue := 0 ;
      cxsGrand.EditValue := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] + cxsTax.EditingValue ;
     end;
  end;
end;

procedure TfrmQuotetion.FormCreate(Sender: TObject);
begin
  inherited;

  cxdTglTrs.Date  := Aplikasi.TanggalServer ;
  cxdTglExp.Date  := Aplikasi.TanggalServer ;
  cxtNoTrans.Text := GetLastFak('quotetion',cxdTglTrs.Date);

  Self.Jenis := 'tambah';
  btnHapus.Enabled := False ;
  //cxtShipMethode.Enabled :=True;
  //cxtShipping.Enabled :=True;
  //cxtDel.Enabled :=True;

  if cxcCurr.Text='IDR' then cxsKurs.Enabled := False ;
  cxsKurs.Value := 0 ;
  zBrg.Open;
  zqrCust.Open;
  zqrSales.Open;
  zQuote.Open;
  zqrUnit.Open ;
end;

procedure TfrmQuotetion.btnSimpanClick(Sender: TObject);
var
  q,z : TZQuery ;
  i,j : integer;
  sNoTrs : string;
  f: TFrm_LaporanUmum1 ;
begin
  inherited;

  if cxlCust.Text = '' then begin
    MsgBox('Mohon isi nama customer.');
    cxlCust.SetFocus;
    Abort;
  end;

  if cxlsales.Text = '' then begin
    MsgBox('Mohon isi nama sales.');
    cxlSales.SetFocus;
    Abort;
  end;

  {if Trim(cxtShipMethode.Text) = '' then begin
    MsgBox('Metode pengiriman harus di isi.');
    cxtShipMethode.SetFocus;
    Abort;
  end;  }

  if Trim(cxdDel.Text) = '' then begin
    MsgBox('Tanggal kirim harus di isi.');
    cxdDel.SetFocus;
    Abort;
  end;

  if Self.Jenis = 'tambah' then begin
    sNoTrs := GetLastFak('quotetion',cxdTglTrs.Date);
    UpdateFaktur(Copy(sNoTrs,1,8));
  end
  else begin
    sNoTrs := cxtNoTrans.Text;
  end;

  q := OpenRS('SELECT * FROM tbl_quote_head where no_quote =''%s''',[sNoTrs]) ;

  if Self.Jenis ='tambah' then begin
    q.Insert;
      if (cxsGrand.EditValue <> 0) then begin
        with cxGrid1TableView1.DataController  do begin

          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_quote_det where no_quote =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no').AsInteger := i+1;
            z.FieldByName('no_quote').AsString := sNoTrs;
            z.FieldByName('delivery').AsString := Values[i, cxColDelivery.index];
            z.FieldByName('kode_item').AsString := Values[i, cxColKode.index];
            z.FieldByName('qty').AsFloat := Values [i, cxColQty.Index];
            z.FieldByName('unitid').AsString := Values [i, cxColSatuan.Index];
            z.FieldByName('price').AsFloat := Values[i, cxColPrice.Index];
            z.FieldByName('qty2').AsFloat := Values[i, cxColQty2.Index];
            z.FieldByName('satuan2').AsString := Values[i, cxColSatuan2.Index];
            z.FieldByName('total_price').AsFloat := Values[i, cxColTotal.Index];
            z.FieldByName('total_price2').AsFloat := Values[i, cxColTotal.Index];
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
        dm.zConn.ExecuteDirect('DELETE FROM tbl_quote_det WHERE no_quote = ''' + cxtNOTrans.Text + '''');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;

        with cxGrid1TableView1.DataController  do begin
        for i := 0 to cxGrid1TableView1.DataController.RowCount -1 do begin
           z := OpenRS('SELECT * FROM tbl_quote_det where no_quote =''%s''',
              [cxtNoTrans.Text]) ;
           z.Insert;
           //z.FieldByName('no').AsInteger := Values[i, cxColNo.Index];
           z.FieldByName('no').AsInteger := i+1;
           z.FieldByName('no_quote').AsString := sNoTrs;
            z.FieldByName('delivery').AsString := Values[i, cxColDelivery.index];
            z.FieldByName('kode_item').AsString := Values[i, cxColKode.index];
            z.FieldByName('qty').AsFloat := Values [i, cxColQty.Index];
            z.FieldByName('unitid').AsString := Values [i, cxColSatuan.Index];
            z.FieldByName('price').AsFloat := Values[i, cxColPrice.Index];
            z.FieldByName('qty2').AsFloat := Values[i, cxColQty2.Index];
            z.FieldByName('satuan2').AsString := Values[i, cxColSatuan2.Index];
            z.FieldByName('total_price').AsFloat := Values[i, cxColTotal.Index];
            z.FieldByName('total_price2').AsFloat := Values[i, cxColTotal.Index];
           z.Post;
           z.Close;
        end;
        end;
      end;

  with q do begin
    FieldByName('no_quote').AsString          := cxtNoTrans.Text ;
    FieldByName('kode_customer').AsString     := cxlCust.EditValue ;
    FieldByName('shipping_method').AsString   := cxcShipMethode.Text ;
    FieldByName('shipping_terms').AsString    := cxcShipping.Text ;
    FieldByName('delivery_date').AsDateTime   := cxdDel.EditValue ;
    FieldByName('payment_terms').AsString     := cxmPayment.Text ;
    FieldByName('sub_total').AsFloat          := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0];
    FieldByName('sub_total2').AsFloat         := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[1];
    FieldByName('tax').AsFloat                := cxsTax.Value;
    FieldByName('tax2').AsFloat               := cxsTax2.Value;
    FieldByName('net_total').AsFloat          := cxsGrand.Value  ;
    FieldByName('net_total2').AsFloat         := cxsGrand2.Value  ;
    FieldByName('d_tax').AsString             := cxComboTax.Text;
    FieldByName('tgl_trans').AsDateTime       := cxdTglTrs.EditValue;
    FieldByName('tgl_expired').AsDateTime     := cxdTglExp.EditValue;
    FieldByName('kode_sales').AsString        := cxlSales.EditValue ;
    FieldByName('f_konfirmasi').AsInteger := 0;
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
    dsQuote.DataSet.Refresh ;
    cxGrid1TableView1.DataController.RecordCount := 0;
  end;

  i := QBox(Self, 'Cetak Quotetion Nomer: ' + cxtNOTrans.Text,'Quotetion');
        if i = IDYES then begin
         f := TFrm_LaporanUmum1.Create(Self);
        if cxtNoTrans.Text <> '' then begin
          with f do begin
            zqrQuote.Close;
            zqrQuote.ParamByName('no_quote').AsString := cxtNoTrans.Text;
            zqrQuote.Open;
            rptQuote.ShowReport(True);
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
                   if Components[i] is TcxMemo then
                  (Components[i] as TcxMemo).Text := '';
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
                   if Components[i] is TcxMemo then
                  (Components[i] as TcxMemo).Text := '';
           end;
        end;


  FormCreate(nil);
  close;
end;

procedure TfrmQuotetion.btnCetakClick(Sender: TObject);
var
  f: TFrm_LaporanUmum1 ;
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM tbl_quote_head WHERE no_quote = ''%s''',
    [cxtNoTrans.Text]);
  if q.IsEmpty then begin
    MsgBox('Quotetion ini belum disimpan.');
    q.Close;
    Abort;
  end;
  q.Close;

   f := TFrm_LaporanUmum1.Create(Self);
  if cxtNoTrans.Text <> '' then begin
    with f do begin
      zqrQuote.Close;
      zqrQuote.ParamByName('no_quote').AsString := cxtNoTrans.Text;
      zqrQuote.Open;
      rptQuote.ShowReport(True);
    end;
    f.Release;
  end;
end;

procedure TfrmQuotetion.btnBaruClick(Sender: TObject);
var
  i : Integer ;
begin
  inherited;
  cxdTglTrs.Date  := Aplikasi.TanggalServer ;
  cxtNoTrans.Text := GetLastFak('quotetion',cxdTglTrs.Date);

  for i:= 0 to ComponentCount-1 do
  begin
      if Components[i] is TcxTextEdit then
        (Components[i] as TcxTextEdit).Text := '';
      if Components[i] is TcxSpinEdit then
        (Components[i] as TcxSpinEdit).Value := 0;
        if Components[i] is TcxLookupComboBox then
        (Components[i] as TcxLookupComboBox).Text := '';
         if Components[i] is TcxMemo then
        (Components[i] as TcxMemo).Text := '';
  end;
   cxGrid1TableView1.DataController.RecordCount := 0;

end;

procedure TfrmQuotetion.btnEdit2Click(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer;
begin
  inherited;
  btnHapus.Enabled := True ;
  btnCetak.Visible := True ;
  if Trim(cxtNoTrans.Text)='' then Abort ;

  Self.Jenis :='edit';
  mStatus := 'onload';
  
//  cxGrid1DBTableView1.DataController.RecordCount := 0;

  cxtNoTrans.Text := zQuote.FieldByName('no_quote').AsString;
  cxdTglTrs.EditValue := zQuote.FieldByName('tgl_trans').AsDateTime;
  cxlCust.EditValue := zQuote.FieldByName('kode_customer').AsString ;


  q := OpenRS('SELECT * FROM tbl_quote_head WHERE no_quote = ''%s''', [ cxtNoTrans.Text]);
   with cxGrid1TableView1.DataController do begin
        BeginUpdate;
        try
           while RecordCount > 0 do begin
             DeleteRecord(0);
           end;
        finally
          EndUpdate
        end
      end;
  with q do begin
    cxdTglExp.EditValue := FieldByName('tgl_expired').AsDateTime;
    cxcShipMethode.Text := FieldByName('shipping_method').AsString;
    cxcShipping.Text := FieldByName('shipping_terms').AsString;
    cxdDel.EditValue := FieldByName('delivery_date').AsDatetime ;
    cxmPayment.Text := FieldByName('payment_terms').AsString ;
    cxsTax.Value := FieldByName('tax').AsFloat ;
    cxsTax2.Value := FieldByName('tax2').AsFloat ;
    cxsGrand.Value := FieldByName('net_total').AsFloat ;
    cxsGrand2.Value := FieldByName('net_total2').AsFloat ;
    cxComboTax.Text := FieldByName('d_tax').AsString;
    cxlSales.EditValue := FieldByName('kode_sales').AsString ;

    z := OpenRS('SELECT * FROM tbl_quote_det where no_quote =''%s'' order by no asc',[cxtNoTrans.Text]) ;
    while not z.Eof do begin 
      cxGrid1.BeginUpdate;
      with cxGrid1TableView1.DataController do begin
        i := AppendRecord ;
        Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
        Values[i, cxColDelivery.index] := z.FieldByName('delivery').AsString;
        Values[i, cxColItem.index] := z.FieldByName('kode_item').AsString;
        Values[i, cxColKode.Index] := z.FieldByName('kode_item').AsString;
        Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
        Values[i, cxColSatuan.Index]:= z.FieldByName('unitid').AsString ;
        Values[i, cxColQty2.Index] := z.FieldByName('qty2').AsFloat;
        Values[i, cxColSatuan2.Index] := z.FieldByName('satuan2').asstring;
        Values[i, cxColPrice.Index] := z.FieldByName('price').AsFloat ;
        Values[i, cxColTotal.Index] := z.FieldByName('total_price').AsFloat;
        Values[i, cxColTotal2.Index] := z.FieldByName('total_price2').AsFloat;
      end;
      cxGrid1.EndUpdate;
      z.Next;
    end;
    z.Close;
  end;

  mStatus := '';
end;

procedure TfrmQuotetion.cxGrid1TableView1DataControllerAfterDelete(
  ADataController: TcxCustomDataController);
begin
  inherited;
  if cxComboTax.Text = 'INCLUDE' then begin
      cxsTax.EditValue :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0]*0.1 ;
      cxsGrand.EditValue :=  cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] + cxsTax.EditingValue ;
      end
     else begin
     if cxComboTax.Text = 'EXCLUDE' then begin
      cxsTax.EditValue := 0 ;
      cxsGrand.EditValue := cxGrid1TableView1.DataController.Summary.FooterSummaryValues[0] + cxsTax.EditingValue ;
     end;
    end;
end;

procedure TfrmQuotetion.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
  sNoTrs : string;
begin
  inherited;
   if cxtNOTrans.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_quote_head WHERE no_quote = ''%s''',
      [cxtNOTrans.Text]);
    if not q.IsEmpty then begin
        i := QBox(Self, 'Hapus Quotetion Nomer: ' + cxtNOTrans.Text,'Hapus Quotetion');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_quote_head WHERE no_quote = ''' + cxtNOTrans.Text + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_quote_det WHERE no_quote = ''' + cxtNOTrans.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Quotetion berhasil.');
            cxtNoTrans.Text := GetLastFak('quotetion');

            for i:= 0 to ComponentCount-1 do
            begin
                if Components[i] is TcxTextEdit then
                  (Components[i] as TcxTextEdit).Text := '';
                if Components[i] is TcxSpinEdit then
                  (Components[i] as TcxSpinEdit).Value := 0;
                  if Components[i] is TcxLookupComboBox then
                  (Components[i] as TcxLookupComboBox).Text := '';
                   if Components[i] is TcxMemo then
                  (Components[i] as TcxMemo).Text := '';
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
    q.Close;
    q.Open;
  end;
end;





procedure TfrmQuotetion.cxGrid1TableView1DataControllerBeforePost(
  ADataController: TcxCustomDataController);
var
  i: Integer;
begin
  inherited;
  i := ADataController.FocusedRowIndex;

  if (VarIsNull(ADataController.Values[i, cxColKode.Index])) or
    (Trim(ADataController.Values[i, cxColKode.Index]) = '')  then begin
    MsgBox('Kode barang harus di isi.');
    Abort;
  end;

end;

procedure TfrmQuotetion.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;



procedure TfrmQuotetion.Button1Click(Sender: TObject);
var
  k: real;
begin
  k := GetConvSatuan('DRF/G17/0022','LEMBAR');

end;


procedure TfrmQuotetion.cxcCurrPropertiesEditValueChanged(Sender: TObject);
begin
 if cxcCurr.Text<>'IDR' then cxsKurs.Enabled := True else cxsKurs.Enabled := False ;
end;



procedure TfrmQuotetion.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  inherited;
  if Self.Jenis='tambah' then
  cxtNoTrans.Text := GetLastFak('quotetion',cxdTglTrs.Date);
end;

procedure TfrmQuotetion.FormShow(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
      mStatus := 'onload';

      q := OpenRS('SELECT * FROM tbl_quote_head WHERE no_quote = ''%s''', [ NoQuot]);

      cxtNoTrans.Text := q.FieldByName('no_quote').AsString;
      cxdTglTrs.EditValue := q.FieldByName('tgl_trans').AsDateTime;
      cxlCust.EditValue := q.FieldByName('kode_customer').AsString ;

       with cxGrid1TableView1.DataController do begin
            BeginUpdate;
            try
               while RecordCount > 0 do begin
                 DeleteRecord(0);
               end;
            finally
              EndUpdate
            end
          end;
          
      with q do begin
        cxdTglExp.EditValue := FieldByName('tgl_expired').AsDateTime;
        cxcShipMethode.Text := FieldByName('shipping_method').AsString;
        cxcShipping.Text := FieldByName('shipping_terms').AsString;
        cxdDel.EditValue := FieldByName('delivery_date').AsDatetime ;
        cxmPayment.Text := FieldByName('payment_terms').AsString ;
        cxsTax.Value := FieldByName('tax').AsFloat ;
        cxsTax2.Value := FieldByName('tax2').AsFloat ;
        cxsGrand.Value := FieldByName('net_total').AsFloat ;
        cxsGrand2.Value := FieldByName('net_total2').AsFloat ;
        cxComboTax.Text := FieldByName('d_tax').AsString;
        cxlSales.EditValue := FieldByName('kode_sales').AsString ;

        z := OpenRS('SELECT * FROM tbl_quote_det where no_quote =''%s'' order by no asc',[cxtNoTrans.Text]) ;
        while not z.Eof do begin 
          cxGrid1.BeginUpdate;
          with cxGrid1TableView1.DataController do begin
            i := AppendRecord ;
            Values[i, cxColNo.Index] := z.FieldByName('no').AsInteger ;
            Values[i, cxColDelivery.index] := z.FieldByName('delivery').AsString;
            Values[i, cxColItem.index] := z.FieldByName('kode_item').AsString;
            Values[i, cxColKode.Index] := z.FieldByName('kode_item').AsString;
            Values[i, cxColQty.Index] := z.FieldByName('qty').AsFloat ;
            Values[i, cxColSatuan.Index]:= z.FieldByName('unitid').AsString ;
            Values[i, cxColQty2.Index] := z.FieldByName('qty2').AsFloat;
            Values[i, cxColSatuan2.Index] := z.FieldByName('satuan2').asstring;
            Values[i, cxColPrice.Index] := z.FieldByName('price').AsFloat ;
            Values[i, cxColTotal.Index] := z.FieldByName('total_price').AsFloat;
            Values[i, cxColTotal2.Index] := z.FieldByName('total_price2').AsFloat;
          end;
          cxGrid1.EndUpdate;
          z.Next;
        end;
        z.Close;
      end;

      mStatus := '';
   end;
end;

end.
