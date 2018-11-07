unit unFrmInquirySheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxPC, cxContainer, cxEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, cxLabel,
  frxDesgnCtrls, cxSpinEdit, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, ZAbstractRODataset, ZDataset;

type
  TfrmInquirySheet = class(TfrmTplTrans)
    frxScrollBox1: TfrxScrollBox;
    cxLabel1: TcxLabel;
    cxtNoIS: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxdTgl: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxsQtyOrder: TcxSpinEdit;
    cxLabel5: TcxLabel;
    cxtNamaProduk: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxmFungsi: TcxMemo;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxtWarnaPlastik: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxmDimensiLain: TcxMemo;
    cxLabel13: TcxLabel;
    Panel1: TPanel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxtKeteranganWarna: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxmAksesoris: TcxMemo;
    cxlCustomer: TcxLookupComboBox;
    cxsPanjang: TcxSpinEdit;
    cxsLebar: TcxSpinEdit;
    cxsKetebalan: TcxSpinEdit;
    cxCmbBaseMaterial: TcxComboBox;
    cxCmbCetak: TcxComboBox;
    cxCmbWarna: TcxComboBox;
    cxLabel17: TcxLabel;
    cxmPackaging: TcxMemo;
    cxLabel18: TcxLabel;
    cxtCIP1: TcxTextEdit;
    cxtCSpec1: TcxTextEdit;
    cxtCIP2: TcxTextEdit;
    cxtCSpec2: TcxTextEdit;
    cxtCIP3: TcxTextEdit;
    cxtCSpec3: TcxTextEdit;
    cxtCIP4: TcxTextEdit;
    cxtCSpec4: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxCmbReqTambahan: TcxComboBox;
    cxLabel20: TcxLabel;
    cxmKonfirmasiPengiriman: TcxMemo;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxmLain2: TcxMemo;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    cxlCari: TcxLookupComboBox;
    btnEdit2: TButton;
    zqrCari: TZReadOnlyQuery;
    dsCari: TDataSource;
    cxlSales: TcxLookupComboBox;
    zqrSales: TZReadOnlyQuery;
    dsSales: TDataSource;
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmInquirySheet: TfrmInquirySheet;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmInquirySheet.btnSimpanClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  if Trim(cxtNoIS.Text) = '' then begin
    MsgBox('Mohon mengisi Nomer Inquiry Sheet.');
    cxtNoIS.SetFocus;
  end
  else if cxdTgl.Text = '' then begin
    MsgBox('Mohon mengisi Tanggal Issue.');
    cxdTgl.SetFocus;
  end
  else if cxlCustomer.Text = '' then begin
    MsgBox('Mohon pilih Customer.');
    cxlCustomer.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;

      // cek nomer IS apakah sudah ada
      if Self.Jenis = 'edit' then begin
        q := OpenRS('SELECT * FROM tbl_is WHERE no_is = ''%s''',[Trim(cxtNoIS.Text)]);
        if not q.IsEmpty then begin
          MsgBox('Nomer Inquiry Sheet ini sudah ada.');
          cxtNoIS.SelectAll;
          cxtNoIS.SetFocus;
          q.Close;
          Abort;
        end;
      end;

      if Self.jenis = 'edit' then begin
        dm.zConn.ExecuteDirect('DELETE FROM tbl_is WHERE no_is = ''' + Trim(cxtNoIS.Text) + '''');
      end;

      q := OpenRS('SELECT * FROM tbl_is WHERE no_is = ''%s''',[cxtNoIS.text]);

      with q do begin
        Insert;
        FieldByName('no_is').AsString := Trim(cxtNoIS.Text);
        FieldByName('tgl_issue').AsDateTime := cxdTgl.Date;
        FieldByName('kode_customer').AsString := cxlCustomer.EditValue;
        FieldByName('possible_qty_order').AsFloat := cxsQtyOrder.Value;
        
        FieldByName('nama_produk').AsString := Trim(cxtNamaProduk.Text);
        FieldByName('fungsi').AsString := Trim(cxmFungsi.Text);
        FieldByName('panjang').AsFloat := cxsPanjang.Value;
        FieldByName('lebar').AsFloat := cxsLebar.Value;
        FieldByName('tebal').AsFloat := cxsKetebalan.Value;
        FieldByName('warna_plastik').AsString := Trim(cxtWarnaPlastik.Text);
        FieldByName('dimensi_lain').AsString := Trim(cxmDimensiLain.Text);
        FieldByName('base_material').AsString := cxCmbBaseMaterial.Text;
        FieldByName('print').AsString := cxCmbCetak.Text;
        FieldByName('print_colour').AsString := cxCmbWarna.Text;
        FieldByName('aksesoris').AsString := Trim(cxmAksesoris.Text);
        FieldByName('packaging').AsString := Trim(cxmPackaging.Text);
        FieldByName('cust_ip1').AsString := Trim(cxtCIP1.Text);
        FieldByName('cust_ip2').AsString := Trim(cxtCIP2.Text);
        FieldByName('cust_ip3').AsString := Trim(cxtCIP3.Text);
        FieldByName('cust_ip4').AsString := Trim(cxtCIP4.Text);
        FieldByName('cust_spec1').AsString := Trim(cxtCSpec1.Text);
        FieldByName('cust_spec2').AsString := Trim(cxtCSpec2.Text);
        FieldByName('cust_spec3').AsString := Trim(cxtCSpec3.Text);
        FieldByName('cust_spec4').AsString := Trim(cxtCSpec4.Text);
        FieldByName('request_tambahan').AsString := cxCmbReqTambahan.Text;
        FieldByName('konfirmasi_kirim').AsString := Trim(cxmKonfirmasiPengiriman.Text);
        FieldByName('lain2').AsString := Trim(cxmLain2.Text);
        FieldByName('kode_sales').AsString := cxlSales.EditValue;
        Post;
      end;

      dm.zConn.Commit;

      MsgBox('Inquery Sheet Nomor : ' + cxtNoIS.Text + ' sudah berhasil disimpan.');
      ClearAll;

      zqrCari.Close;
      zqrCari.Open;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
end;

procedure TfrmInquirySheet.FormCreate(Sender: TObject);
begin
  inherited;
  zqrCust.Open;
  zqrCari.Open;

  with cxCmbReqTambahan.Properties do begin
    Items.Add('Product Mock-up');
    Items.Add('Packaging Mock-up');
    Items.Add('Plastic Sample');
    Items.Add('Finish Product Sample');
  end;
  cxCmbReqTambahan.ItemIndex := 0;

end;

procedure TfrmInquirySheet.btnEdit2Click(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_is WHERE no_is = ''%s''',[cxlCari.EditValue]);

  if not q.IsEmpty then begin
    Self.Jenis := 'edit';
    with q do begin
      cxtNoIS.Text := FieldByName('no_is').AsString;
      cxtNoIS.Properties.ReadOnly := true;
      
      cxdTgl.Date := FieldByName('tgl_issue').AsDateTime;
      cxlCustomer.EditValue := FieldByName('kode_customer').AsString;
      cxsQtyOrder.Value := FieldByName('possible_qty_order').AsFloat;
      //cxtNamaSales.Text := FieldByName('nama_sales').AsString;
      cxtNamaProduk.Text := FieldByName('nama_produk').AsString;
      cxmFungsi.Text := FieldByName('fungsi').AsString;
      cxsPanjang.Value := FieldByName('panjang').AsFloat;
      cxsLebar.Value := FieldByName('lebar').AsFloat;
      cxsKetebalan.Value := FieldByName('tebal').AsFloat;
      cxtWarnaPlastik.Text := FieldByName('warna_plastik').AsString;
      cxmDimensiLain.Text := FieldByName('dimensi_lain').AsString;
      cxCmbBaseMaterial.Text := FieldByName('base_material').AsString;
      cxCmbCetak.Text := FieldByName('print').AsString;
      cxCmbWarna.Text := FieldByName('print_colour').AsString;
      cxmAksesoris.Text := FieldByName('aksesoris').AsString;
      cxmPackaging.Text := FieldByName('packaging').AsString;
      cxtCIP1.Text := FieldByName('cust_ip1').AsString;
      cxtCIP2.Text := FieldByName('cust_ip2').AsString;
      cxtCIP3.Text := FieldByName('cust_ip3').AsString;
      cxtCIP4.Text := FieldByName('cust_ip4').AsString;
      cxtCSpec1.Text := FieldByName('cust_spec1').AsString;
      cxtCSpec2.Text := FieldByName('cust_spec2').AsString;
      cxtCSpec3.Text := FieldByName('cust_spec3').AsString;
      cxtCSpec4.Text := FieldByName('cust_spec4').AsString;
      cxCmbReqTambahan.Text := FieldByName('request_tambahan').AsString;
      cxmKonfirmasiPengiriman.Text := FieldByName('konfirmasi_kirim').AsString;
      cxmLain2.Text := FieldByName('lain2').AsString;
    end;
  end;
  q.Close;
  
end;

procedure TfrmInquirySheet.ClearAll;
var
  i: integer;
begin
  for i := 0 to Self.ComponentCount - 1 do begin
    if Components[i].Tag = 11 then begin
      if Components[i].ClassName = 'TcxTextEdit' then
        (Components[i] as TcxTextEdit).Text := ''
      else if Components[i].ClassName = 'TcxDateEdit' then
        (Components[i] as TcxDateEdit).Text := ''
      else if Components[i].ClassName = 'TcxLookupComboBox' then
        (Components[i] as TcxLookupComboBox).Text := ''
      else if Components[i].ClassName = 'TcxSpinEdit' then
        (Components[i] as TcxSpinEdit).Text := ''
      else if Components[i].ClassName = 'TcxMemo' then
        (Components[i] as TcxMemo).Lines.Text := '';
    end;
  end;
  Self.Jenis := '';
  
end;

end.
