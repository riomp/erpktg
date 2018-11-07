unit unFrmMstSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDropDownEdit,
  cxTextEdit, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCheckBox, cxLabel, ComCtrls, StdCtrls,
  ExtCtrls, ZAbstractDataset, ZDataset, ZAbstractRODataset;

type
  TfrmMstSupplier1 = class(TfrmTplTrans)
    pg: TPageControl;
    TabSheet1: TTabSheet;
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxtNama: TcxTextEdit;
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
    cxLabel13: TcxLabel;
    cxCmbPembayaran: TcxComboBox;
    cxLabel14: TcxLabel;
    cxlAkun: TcxLookupComboBox;
    cxtNoAkun: TcxTextEdit;
    TabSheet3: TTabSheet;
    cxGrdBrg: TcxGrid;
    cxTblBrg: TcxGridDBTableView;
    cxTblBrgkode: TcxGridDBColumn;
    cxTblBrgdeskripsi: TcxGridDBColumn;
    cxTblBrgstok: TcxGridDBColumn;
    cxTblBrgsatuan: TcxGridDBColumn;
    cxTblBrgtipe: TcxGridDBColumn;
    cxTblBrgkategori: TcxGridDBColumn;
    cxTblBrgsubkategori: TcxGridDBColumn;
    cxGrdBrgLevel1: TcxGridLevel;
    btnTmbhDet: TButton;
    nxGrdBrgSupp: TNextGrid;
    nxColHapus: TNxImageColumn;
    nxColNoUrut: TNxIncrementColumn;
    nxColKode: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColSat: TNxTextColumn;
    nxColHarga: TNxNumberColumn;
    Button2: TButton;
    cxtNama2: TcxTextEdit;
    cxLabel12: TcxLabel;
    TabSheet4: TTabSheet;
    cxGrid9: TcxGrid;
    cxTblBank: TcxGridTableView;
    cxColBank: TcxGridColumn;
    cxColAccount: TcxGridColumn;
    cxColNama: TcxGridColumn;
    cxGridLevel7: TcxGridLevel;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    zqrCoa: TZQuery;
    dsCoa: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxlAkunPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
    tbl: TZTable;
    mNoSupp: string;
  public
    { Public declarations }
    property NoSupp: string read mNoSupp write mNoSupp;
  end;

var
  frmMstSupplier1: TfrmMstSupplier1;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmMstSupplier1.FormCreate(Sender: TObject);
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
  zqrCoa.Open;
end;

procedure TfrmMstSupplier1.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i,j : integer;
  q,z: TZQuery;
  Stream: TMemoryStream;
  //jpg: TJPEGImage;
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

  if Self.Jenis = 'edit' then begin
     cxTblBank.DataController.RecordCount := 0 ;
     
    q := OpenRS('SELECT * FROM tbl_supplier WHERE kode = ''%s''',
      [mNoSupp]);
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

procedure TfrmMstSupplier1.cxlAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtNoAkun.Text := zqrCoa.FieldByName('noakun').AsString;
end;

procedure TfrmMstSupplier1.btnSimpanClick(Sender: TObject);
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
     { ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);  }
      Close;
    end;

  end;

  cxTblBank.DataController.RecordCount := 0 ;
end;

end.
