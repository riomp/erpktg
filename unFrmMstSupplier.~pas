unit unFrmMstSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ExtCtrls, cxContainer, cxTextEdit,
  cxLabel, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCheckBox, Jpeg,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxCheckComboBox;

type
  TfrmMstSupplier = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxtNama: TcxTextEdit;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    chkAktif: TcxCheckBox;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxtKode: TcxTextEdit;
    cxtKontak: TcxTextEdit;
    cxtAlamat: TcxTextEdit;
    cxtKota: TcxTextEdit;
    cxtTelpon: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtFax: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxtHP: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxtEmail: TcxTextEdit;
    cxtAlamat2: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtProvinsi: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtNegara: TcxTextEdit;
    TabSheet3: TTabSheet;
    cxGrdBrg: TcxGrid;
    cxTblBrg: TcxGridDBTableView;
    cxGrdBrgLevel1: TcxGridLevel;
    dsBrg: TDataSource;
    cxTblBrgkode: TcxGridDBColumn;
    cxTblBrgdeskripsi: TcxGridDBColumn;
    cxTblBrgstok: TcxGridDBColumn;
    cxTblBrgsatuan: TcxGridDBColumn;
    cxTblBrgtipe: TcxGridDBColumn;
    cxTblBrgkategori: TcxGridDBColumn;
    cxTblBrgsubkategori: TcxGridDBColumn;
    btnTmbhDet: TButton;
    nxGrdBrgSupp: TNextGrid;
    nxColKode: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColSat: TNxTextColumn;
    Button2: TButton;
    nxColHarga: TNxNumberColumn;
    nxColHapus: TNxImageColumn;
    zqrBrg: TZReadOnlyQuery;
    cxtNama2: TcxTextEdit;
    cxLabel12: TcxLabel;
    nxColNoUrut: TNxIncrementColumn;
    cxLabel13: TcxLabel;
    cxCmbPembayaran: TcxComboBox;
    cxLabel14: TcxLabel;
    cxlAkun: TcxLookupComboBox;
    zqrCoa: TZQuery;
    dsCoa: TDataSource;
    cxtNoAkun: TcxTextEdit;
    TabSheet4: TTabSheet;
    cxGrid9: TcxGrid;
    cxTblBank: TcxGridTableView;
    cxGridLevel7: TcxGridLevel;
    cxColBank: TcxGridColumn;
    cxColAccount: TcxGridColumn;
    cxColNama: TcxGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnTmbhDetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure nxGrdBrgSuppCellDblClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure cxlAkunPropertiesChange(Sender: TObject);
  private
    tbl: TZTable;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMstSupplier: TfrmMstSupplier;

implementation

uses unDm, unAplikasi, unTools, unFrmUtama;

{$R *.dfm}

procedure TFrmMstSupplier.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  tbl := OpenTbl('tbl_supplier');
  pg.ActivePageIndex := 0;

  cxCmbPembayaran.Properties.Items.Add('');
  cxCmbPembayaran.Properties.Items.Add('7 (Tujuh) Hari');
  cxCmbPembayaran.Properties.Items.Add('14 (Empat Belas) Hari');
  cxCmbPembayaran.Properties.Items.Add('21 (Dua Puluh Satu) Hari');
  cxCmbPembayaran.Properties.Items.Add('30 (Tiga Puluh) Hari');
  cxCmbPembayaran.Properties.Items.Add('45 (Empat Puluh Lima) Hari');
  cxCmbPembayaran.Properties.Items.Add('COD (Cash On Delivery)');
  cxCmbPembayaran.Properties.Items.Add('CBD (Cash Before Delivery)');
  cxCmbPembayaran.ItemIndex := 0;
  zQry.Open;
  zqrCoa.Open;
end;

procedure TFrmMstSupplier.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  tbl_sa: TZTable;
  q, qSA,z: TZQuery;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Kode Supplier harus diisi.');
    cxtKode.SetFocus;
  end
  else if Trim(cxtNama.Text) = '' then begin
    MsgBox('Nama Supplier harus diisi.');
    cxtNama.SetFocus;
  end
  else if Trim(cxCmbPembayaran.Text) = '' then begin
    MsgBox('Jenis pembayaran harus diisi.');
    cxCmbPembayaran.SetFocus;
  end
  else begin

    f := True;
    if self.Jenis = 'tambah' then begin

      if CheckKey('tbl_supplier','kode', QuotedStr(Trim(cxtKode.Text))) then begin
        MsgBox('Kode Supplier sudah ada.');
        cxtKode.SelectAll;
        cxtKode.SetFocus;
        f := False;
      end
      else
        tbl.Insert;
    end
    else begin
      if not CheckKey('tbl_supplier','kode',QuotedStr(Trim(cxtKode.Text))) then begin
        MsgBox('Kode Supplier belum ada.');
        cxtKode.SelectAll;
        cxtKode.SetFocus;
        f := False;
      end
      else begin
        tbl.Locate('kode',cxtKode.text,[loCaseInsensitive]);
        tbl.Edit;

        try
          dm.zConn.StartTransaction;
          dm.zConn.ExecuteDirect('DELETE FROM tbl_bank_vendor WHERE kode = ''' + cxtKode.Text + '''');
          dm.zConn.Commit;
        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;

      end;
    end;

    with cxTblBank.DataController  do begin
    for i := 0 to cxTblBank.DataController.RowCount -1 do begin
     z := OpenRS('SELECT * FROM tbl_bank_vendor where kode =''%s''',
        [cxtKode.Text]) ;
     z.Insert;
     z.FieldByName('kode').AsString := cxtKode.Text;
     z.FieldByName('bank').AsString := Values[i, cxColBank.Index] ;
     z.FieldByName('no_rek').AsString := Values[i, cxColAccount.Index] ;
     z.FieldByName('nama').AsString := Values[i, cxColNama.Index];
     z.Post;
     z.Close;
    end;
  end;

    if f then begin
      tbl.FieldByName('kode').AsString := cxtKode.Text;
      tbl.FieldByName('nama').AsString := Trim(cxtNama.Text);
      tbl.FieldByName('kontak').AsString := Trim(cxtKontak.Text);
      tbl.FieldByName('alamat').AsString := Trim(cxtAlamat.Text);
      tbl.FieldByName('alamat2').AsString := Trim(cxtAlamat2.Text);
      tbl.FieldByName('kota').AsString := Trim(cxtKota.Text);
      tbl.FieldByName('provinsi').AsString := Trim(cxtProvinsi.Text);
      tbl.FieldByName('negara').AsString := Trim(cxtNegara.Text);
      tbl.FieldByName('telpon').AsString := Trim(cxtTelpon.Text);
      tbl.FieldByName('fax').AsString := Trim(cxtFax.Text);
      tbl.FieldByName('hp').AsString := Trim(cxtHP.Text);
      tbl.FieldByName('email').AsString := Trim(cxtEmail.Text);
      if cxCmbPembayaran.Text<>'' then
      tbl.FieldByName('pembayaran').AsString := cxCmbPembayaran.Text;
      if  cxlAkun.EditValue<>null then
      tbl.FieldByName('akun_hutang').AsString := cxlAkun.EditValue;

      if chkAktif.Checked then
        i := 1
      else
        i := 0;
      tbl.FieldByName('f_aktif').AsInteger := i;
      tbl.Post;

      MsgBox('Data Supplier sudah disimpan.');
      ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);
    end;

  end;

  cxTblBank.DataController.RecordCount := 0 ;
end;

procedure TFrmMstSupplier.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  chkAktif.Checked := False;
  cxtNama2.Text := '';
  nxGrdBrgSupp.ClearRows;
  zQry.Close;
  zQry.Open;
  cxlAkun.Text := '';
  cxtNoAkun.Text := '';
end;

procedure TFrmMstSupplier.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q,z: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
  i: Integer;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
     cxTblBank.DataController.RecordCount := 0 ;
     
    q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',
      [zQry.FieldByName('kode').AsString]);
    cxtNama.Text := q.FieldByName('nama').AsString;
    cxtNama2.Text := q.FieldByName('nama').AsString;
    cxtKode.Text := q.FieldByName('kode').AsString;
    cxtKontak.Text := q.FieldByName('kontak').AsString;
    cxtAlamat.Text := q.FieldByName('alamat').AsString;
    cxtAlamat2.Text := q.FieldByName('alamat2').AsString;
    cxtKota.Text := q.FieldByName('kota').AsString;
    cxtProvinsi.Text := q.FieldByName('provinsi').AsString;
    cxtNegara.Text := q.FieldByName('negara').AsString;
    cxtTelpon.Text := q.FieldByName('telpon').AsString;
    cxtHP.Text := q.FieldByName('hp').AsString;
    cxtEmail.Text := q.FieldByName('email').AsString;
    cxCmbPembayaran.Text := q.FieldByName('pembayaran').AsString;
    cxtFax.Text := q.FieldByName('fax').AsString;
    cxlAkun.EditValue := q.FieldByName('akun_hutang').AsString;

    if q.FieldByName('f_aktif').AsInteger = 1 then
      chkAktif.Checked := True
    else
      chkAktif.Checked := False;

    pg.ActivePageIndex := 0;
    cxtKode.SetFocus;
    q.Close;

    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_barang_supp a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode AND ' +
      'kode_supp = ''%s''',
      [cxtKode.Text]);
    if not q.IsEmpty then begin
      while not q.Eof do begin
        i := nxGrdBrgSupp.AddRow();
        nxGrdBrgSupp.Cell[nxColKode.Index,i].AsString := q.FieldByName('kode_brg').AsString;
        nxGrdBrgSupp.Cell[nxColDesk.Index,i].AsString := q.FieldByName('deskripsi').AsString;
        nxGrdBrgSupp.Cell[nxColSat.Index,i].AsString := q.FieldByName('satuan').AsString;
        nxGrdBrgSupp.Cell[nxColHarga.Index,i].AsFloat := q.FieldByName('harga').AsFloat;
        q.Next;
      end;
    end;
    q.Close;

    z := OpenRS('SELECT * FROM tbl_bank_vendor where kode =''%s''',[cxtKode.Text]) ;
    while not z.Eof do begin
      with cxTblBank.DataController do begin
       i := AppendRecord ;
       Values[i, cxColBank.Index] := z.FieldByName('bank').AsString ;
       Values[i, cxColAccount.index] := z.FieldByName('no_rek').AsString;
       Values[i, cxColNama.Index] := z.FieldByName('nama').AsString;

      end;
      z.Next;
    end;
    z.Close;
    
  end;
end;

procedure TFrmMstSupplier.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TFrmMstSupplier.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
begin
  {
  if Trim(cxtKode.Text) <> '' then begin
    q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',
      [cxtKode.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode ini masih memiliki transaksi.');

    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_barang WHERE kode = ' +
          cxsKode.Text);
        dm.zConn.Commit;
        MsgBox('Kode barang: ' + cxsKode.Text + ' sudah berhasil dihapus.');
        zQry.Close;
        zQry.Open;
        btnBatalClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;
  }
end;

procedure TfrmMstSupplier.btnTambahClick(Sender: TObject);
begin
  inherited;
  cxtKode.SetFocus;
  chkAktif.Checked := True;
end;

procedure TfrmMstSupplier.btnTmbhDetClick(Sender: TObject);
var
  j, i: Integer;
  lst: TStringList;
  chk: string;
  q: TZQuery;
begin
  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Pilih kode supplier.');
    pg.ActivePageIndex := 0;
    cxtKode.SetFocus;
  end;

  lst := TStringList.Create;
  for i := 0 to cxTblBrg.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTblBrg.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblBrg.DataController.Values[i,0];
      
    if chk = 'T' then begin
      lst.Add(cxTblBrg.DataController.Values[i,1]);
    end;
  end;

  if lst.Count > 0 then begin
    for i := 0 to lst.Count - 1 do begin
      q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[lst.Strings[i]]);
      with nxGrdBrgSupp do begin
        j := AddRow();
        Cell[nxColKode.Index,j].AsString := q.FieldByName('kode').AsString;
        Cell[nxColDesk.Index,j].AsString := q.FieldByName('deskripsi').AsString;
        Cell[nxColSat.Index,j].AsString := q.FieldByName('satuan').AsString; 
      end;
      q.Close;    
    end;
  end;
  
end;

procedure TfrmMstSupplier.FormShow(Sender: TObject);
var
aCol: TcxGridDBColumn;
i : integer;
begin
  aCol := cxTblBrg.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; //TcxBooleanValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;
end;

procedure TfrmMstSupplier.Button2Click(Sender: TObject);
var
  tbl: TZTable;
  i: integer;
  b: Boolean;
begin
  if Trim(cxtKode.Text) <> '' then begin

    // cek apakah ada harga yang kosong
    b := False;
    for i := 0 to nxGrdBrgSupp.RowCount - 1 do begin
      if nxGrdBrgSupp.Cell[nxColHarga.Index,i].AsFloat = 0 then begin
        b := True;
        Break;
      end;
    end;
    if b then begin
      MsgBox('Harga masih ada yang kosong.');
      nxGrdBrgSupp.SetFocus;
      Abort;
    end;

    try
      dm.zConn.StartTransaction;

      dm.zConn.ExecuteDirect('DELETE FROM tbl_barang_supp WHERE kode_supp = ''' +
        cxtKode.Text + '''');

      tbl := OpenTbl('tbl_barang_supp');

      if nxGrdBrgSupp.RowCount > 0 then begin
        for i := 0 to nxGrdBrgSupp.RowCount - 1 do begin
          tbl.Insert;
          tbl.FieldByName('kode_supp').AsString := cxtKode.Text;
          tbl.FieldByName('kode_brg').AsInteger := nxGrdBrgSupp.Cell[nxColKode.Index,i].AsInteger;
          tbl.FieldByName('harga').AsFloat := nxGrdBrgSupp.Cell[nxColHarga.Index,i].AsFloat;
          tbl.Post;
        end;
      end;
      tbl.Close;
      dm.zConn.Commit;

      MsgBox('Master barang Supplier sudah disimpan.');
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;
  
end;

procedure TfrmMstSupplier.nxGrdBrgSuppCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if ACol = nxColHapus.Index then begin
    nxGrdBrgSupp.DeleteRow(ARow);
    nxColNoUrut.Refresh();
  end;
end;

procedure TfrmMstSupplier.cxlAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtNoAkun.Text := zqrCoa.FieldByName('noakun').AsString;
end;

end.
