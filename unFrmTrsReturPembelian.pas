unit unFrmTrsReturPembelian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit,
  cxLabel, ZDataset, DB, NxEdit, PBNumEdit, cxMaskEdit, cxSpinEdit,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ZAbstractRODataset, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdMessageClient, IdSMTPBase, IdSMTP, IdMessage, IdText;

type
  TfrmTrsReturPembelian = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    nxGrd: TNextGrid;
    nxNoUrut: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColNamaBrg: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    NxEdit1: TNxEdit;
    Label5: TLabel;
    cxsTotalQty: TcxSpinEdit;
    nxColHapus: TNxImageColumn;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    nxColKet: TNxTextColumn;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    NxEdit2: TNxEdit;
    zqrNoBukti: TZReadOnlyQuery;
    dsNoBukti: TDataSource;
    nxColSatuan: TNxTextColumn;
    NxEdit3: TNxEdit;
    nxBeNoSO: TNxButtonEdit;
    zqrNoSJ: TZReadOnlyQuery;
    dsSJ: TDataSource;
    cxlPO: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    zqrPO: TZReadOnlyQuery;
    dsPO: TDataSource;
    nxColQtyRetur: TNxNumberColumn;
    nxColChkPilih: TNxCheckBoxColumn;
    nxColKey: TNxTextColumn;
    btnSimpan2: TButton;
    idSMTP: TIdSMTP;
    cxLabel2: TcxLabel;
    cxtSupplier: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxdtglpo: TcxDateEdit;
    nxColNoSPBB: TNxTextColumn;
    cxlbl1: TcxLabel;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    btnReturBaru: TButton;
    btnCetakSPMB: TButton;
    btnCetakSJ: TButton;
    dsPOHead: TDataSource;
    zqrPOHead: TZReadOnlyQuery;
    cxtNoSPMB: TcxTextEdit;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxtNoSJ: TcxTextEdit;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxtNoPolisi: TcxTextEdit;
    cxtDriver: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure NxEdit1DblClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalClick(Sender: TObject);
    procedure cxlPOPropertiesEditValueChanged(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnSimpan2Click(Sender: TObject);
    procedure btnReturBaruClick(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnCetakSPMBClick(Sender: TObject);
    procedure btnCetakSJClick(Sender: TObject);
  private
    mJenis: string;
    mUserDept: string;
    function CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
    procedure HitungTotal;
    procedure ClearAll;
    procedure SendEmail;
  public
    public property Jenis: string read mJenis write mJenis;
    public property UserDept: string read mUserDept write mUserDept;
    procedure AddRow(sNoPO, sKodeBrg: string);
  end;

var
  frmTrsReturPembelian: TFrmTrsReturPembelian;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSJ, unFrmLapUmum;

const
  CNO : integer = 0;
  CKD_BRG : integer = 1;
  CNM_BRG : integer = 2;
  CSAT : integer = 3;
  CQTY : integer = 4;
  CNOSO : Integer = 5;
  CNOSPK : Integer = 6;
  CREF : Integer = 7;
  CKET : Integer = 8;
  CHAPUS: integer = 9;

{$R *.dfm}

procedure TFrmTrsReturPembelian.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin

  cxtNoPolisi.Style.Color := clMoneyGreen;
  cxtDriver.Style.Color := clMoneyGreen;
  cxtNoPolisi.Properties.ReadOnly :=True;
  cxtDriver.Properties.ReadOnly :=True;

  cxdTglTrs.Date := Aplikasi.TanggalServer;
  cxtNOTrans.Text := GetLastFak('retur-pemb');

  zqrPO.Open;
  zqrPOHead.Open;
end;

procedure TFrmTrsReturPembelian.btnBaruClick(Sender: TObject);
begin
  inherited;
  cxtNOTrans.Text := GetLastFak('brg_out');
  Self.Jenis := 'tambah';
end;

function TFrmTrsReturPembelian.CekKodeBrg(sKodeBrg : String; Row: Integer) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if (Row <> i) And
      (sKodeBrg = Trim(nxGrd.Cell[1,i].AsString)) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TFrmTrsReturPembelian.NxEdit1DblClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow: Integer;
  q: TZQuery;
begin
  Abort;
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.SelectedRow;
  if (Trim(nxGrd.Cell[ACol,ARow].AsString) = '') and  (ACol = 1) then begin
    f := TFrmCari.Create(self);
    f.jenis := 'barang';
    f.ShowModal;
    if f.ModalResult = idOk then begin
      s := f.Result;
      fKode := s.Objects[0] as TField;
    end;
  end;
end;

procedure TFrmTrsReturPembelian.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  q: TZQuery;
  i: integer;
  flag_ada: boolean;
  stok_gudang: real;
begin
  if ACol = nxColQtyRetur.Index then begin
    with nxGrd do begin
      if Cell[nxColQtyRetur.Index,ARow].AsFloat > Cell[nxColQty.Index,ARow].AsFloat then begin
        Cell[nxColQtyRetur.Index,ARow].AsFloat := Cell[nxColQty.Index,ARow].AsFloat;
      end;
      HitungTotal;
    end;
  end
  else if ACol = nxColChkPilih.Index then begin
    if nxGrd.Cell[nxColChkPilih.Index,ARow].AsBoolean then
      HitungTotal;
  end;
end;

procedure TFrmTrsReturPembelian.HitungTotal;
var
  i: integer;
  tmp, tmpQty: Real;
begin
  tmp := 0;
  tmpQty := 0;
  for i := 0 to nxGrd.RowCount - 1 do begin
    tmpQty := tmpQty + nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat;
  end;
  cxsTotalQty.Value := tmpQty;
end;

procedure TFrmTrsReturPembelian.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  nxGrd.ClearRows;
  nxGrd.AddRow;
  cxsTotalQty.Value := 0;
  cxtNoTrans.Text := GetLastFak('retur-pemb');
end;

procedure TFrmTrsReturPembelian.btnBatalClick(Sender: TObject);
begin
  ClearAll;
  Self.Jenis := '';
end;

procedure TFrmTrsReturPembelian.AddRow(sNoPO, sKodeBrg: string);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  ACol, ARow, i: Integer;
  q, qb: TZQuery;
begin
  ACol := nxGrd.SelectedColumn;
  ARow := nxGrd.RowCount - 1;

  q := OpenRS('SELECT a.* FROM v_spbb_det a, v_spbb_head b, v_po_head c WHERE a.no_bukti = b.no_bukti' +
    'WHERE a.no_bukti = b.no_bukti ' +
    'AND a.no_bukti = ''%s'' AND a.kode_brg = %s',
    [sNoPO, sKodeBrg]);
  with nxGrd do begin
    if FindText(nxColKey.Index, (sNoPO + sKodeBrg), [soCaseInsensitive, soContinueFromTop]) then begin
      MsgBox('No. PO dan Kode barang sudah ada.');
      q.Close;
      Abort;
    end;
    Cell[nxColNoSPBB.Index,ARow].AsString := q.FieldByName('no_spbb').AsString;
    Cell[nxColKodeBrg.Index,ARow].AsString := sKodeBrg;
    Cell[nxColNamaBrg.Index,ARow].AsString := q.FieldByName('deskripsi').AsString;
    Cell[nxColSatuan.Index,ARow].AsString := q.FieldByName('satuan').AsString;
    Cell[nxColQty.Index,ARow].AsFloat := q.FieldByName('qty').AsFloat;
    Cell[nxColQtyRetur.Index,ARow].AsFloat := 0;
    Cell[nxColKey.Index,ARow].AsString := sNoPO + sKodeBrg;

    HitungTotal;

    AddRow();
  end;
  q.Close;
end;

procedure TFrmTrsReturPembelian.SendEmail;
begin

end;


procedure TfrmTrsReturPembelian.cxlPOPropertiesEditValueChanged(
  Sender: TObject);
var
  q, qb, qs, qh, qty: TZQuery;
  i: integer;
begin

  qh := OpenRS('select *,sh.no_bukti as spmb from tbl_trsreturpemb_head h, tbl_trsreturpemb_det d, tbl_spmb_head sh where h.no_bukti = d.no_bukti and h.no_bukti = sh.no_retur and h.no_bukti = ''%s''',
        [cxlNoBukti.EditValue]);
  if Jenis = 'edit' then begin
      cxtSupplier.Text := qh.FieldByName('supplier').AsString;
      cxdtglpo.EditValue := qh.FieldByName('tanggal').AsString;
      cxtNoSPMB.Text  := qh.FieldByName('spmb').AsString;
      cxtNoPolisi.Text  := qh.FieldByName('nopol').AsString;
      cxtDriver.Text  := qh.FieldByName('driver').AsString;

      q := OpenRS('select * from tbl_sj_head where no_spmb = ''%s''',[cxtNoSPMB.Text]);
      cxtNoSJ.Text := q.FieldByName('no_bukti').AsString;
      q.Close;

      if not qh.IsEmpty then begin
          nxGrd.ClearRows;
          i:=0;
            while not qh.Eof do begin
              i := nxGrd.AddRow();
              nxGrd.Cell[nxColNoSPBB.Index,i].AsString := qh.FieldByName('no_bukti').AsString;
              nxGrd.Cell[nxColKodeBrg.Index,i].AsString := qh.FieldByName('kode_brg').AsString;

              qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
              [qh.FieldByName('kode_brg').AsString]);
              nxGrd.Cell[nxColNamaBrg.Index,i].AsString := qb.FieldByName('deskripsi').AsString;
              nxGrd.Cell[nxColSatuan.Index,i].AsString := qb.FieldByName('satuan').AsString;
              qb.Close;

              qty := OpenRS('SELECT qty FROM v_po_det where no_bukti = ''%s''',
              [cxlPO.EditValue]);
              nxGrd.Cell[nxColQty.Index,i].AsFloat := qty.FieldByName('qty').AsFloat;;
              qty.Close;

              nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat := qh.FieldByName('qty').AsFloat;
              nxGrd.Cell[nxColKet.Index,i].AsString := qh.FieldByName('keterangan').AsString;
              //cxsTotalQty.Value := q.FieldByName('qty_komplain').AsFloat;
              qh.Next
            end;
      end;
      HitungTotal;
  qh.Close;
  Abort;
  end;

 { qs := OpenRS('select sd.no_po, sd.kode_brg, ph.kode_supp, ph.tanggal, sp.nama, sum(sd.qty) qty ' +
                'from tbl_spbb_det sd, tbl_po_head ph, tbl_supplier sp ' +
                'where sd.no_po = ph.no_bukti and ph.kode_supp=sp.kode and sd.no_po<>'' ' +
                'and sd.no_po = ''%s''' +
                'group by sd.no_po ' +
                'order by sd.no_po, sd.kode_brg',[zqrPO.FieldByName('no_po').AsString]);
  }

  qs := OpenRS('SELECT no_bukti, nama_supplier, tanggal FROM v_po_head where no_bukti = ''%s''',
    [zqrPO.FieldByName('no_po').AsString]);
  cxtSupplier.Text := qs.FieldByName('nama_supplier').AsString;
  cxdtglpo.EditValue := qs.FieldByName('tanggal').AsDateTime;
  qs.Close;

  q := OpenRS('select no_po, kode_brg, sum(qty) qty from tbl_spbb_det where no_po = ''%s'' group by no_po,kode_brg',
    [zqrPO.FieldByName('no_po').AsString]);
  if not q.IsEmpty then begin
    nxGrd.ClearRows;
    i:=0;
        while not q.Eof do begin

        //for i := 0 to q.RecordCount - 1 do begin
          i := nxGrd.AddRow();
          //nxGrd.Cell[nxColNoSPBB.Index,i].AsString := q.FieldByName('no_bukti').AsString;
          nxGrd.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;

          qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
          [q.FieldByName('kode_brg').AsString]);
          nxGrd.Cell[nxColNamaBrg.Index,i].AsString := qb.FieldByName('deskripsi').AsString;
          nxGrd.Cell[nxColSatuan.Index,i].AsString := qb.FieldByName('satuan').AsString;
          qb.Close;

          qty := OpenRS('SELECT qty FROM v_po_det where no_bukti = ''%s''',
            [cxlPO.EditValue]);
            nxGrd.Cell[nxColQty.Index,i].AsFloat := qty.FieldByName('qty').AsFloat;;
          qty.Close;

          //nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
          nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat := 0;
          //nxGrd.Cell[nxColQtyRetur.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
          //cxsTotalQty.Value := q.FieldByName('qty_komplain').AsFloat;
          q.Next
        end;
  end;
  q.Close;
end;

procedure TfrmTrsReturPembelian.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
 if ACol = nxColHapus.Index then begin
    if Trim(nxGrd.Cell[nxColNoSPBB.Index, ARow].AsString) <> '' then begin
      nxGrd.DeleteRow(nxGrd.SelectedRow);
      nxNoUrut.Refresh();
      HitungTotal;
      if nxGrd.RowCount = 0 then nxGrd.AddRow();
    end;
 end;

end;

procedure TfrmTrsReturPembelian.btnSimpan2Click(Sender: TObject);
var
    rphead, rpdet : TZQuery;
    sNoTrans : string;
    jml : string;
    i : Integer;
begin

if cxtSupplier.Text = ''  then begin
   MsgBox('Pilih No. PO yang akan diretur.');
   cxlPO.SetFocus;
   Abort;
end
else if cxsTotalQty.Value = 0 then begin
   MsgBox('Qty. retur masih kosong.');
   Abort;
end;


try

  sNoTrans := GetLastFak('retur-pemb');
  UpdateFaktur(Copy(sNoTrans,1,7));

  dm.zConn.StartTransaction;

  rphead := OpenRS('select * from tbl_trsreturpemb_head WHERE no_bukti = ''%s''',[sNoTrans]);

  rphead.Insert;
  rphead.FieldByName('no_bukti').AsString := sNoTrans;
  rphead.FieldByName('tanggal').AsDateTime := cxdtglpo.EditValue;
  rphead.FieldByName('no_fobj').AsString := zqrPO.FieldByName('no_fobj').AsString;
  rphead.FieldByName('jam').AsString := aplikasi.JamString;
  rphead.FieldByName('user').AsString := aplikasi.NamaUser;
  rphead.FieldByName('user_dept').AsString := aplikasi.UserDept;
  rphead.FieldByName('tgl_input').AsDateTime := aplikasi.TanggalServer;
  rphead.FieldByName('f_approval').AsInteger := 0;
  rphead.FieldByName('supplier').AsString := zqrPO.FieldByName('nama').AsString;
  rphead.Post;
  rphead.Close;

    rpdet := OpenRS('select * from tbl_trsreturpemb_det where no_bukti = ''%s''',[sNoTrans]);
    for i := 0 to nxGrd.RowCount - 1 do begin
        if nxGrd.Cell[CKD_BRG,i].AsString = '' then
          Continue;

          rpdet.Insert;
          rpdet.FieldByName('no_bukti').AsString := sNoTrans;
          rpdet.FieldByName('kode_brg').AsString:= nxGrd.Cell[nxColKodeBrg.Index,i].AsString;
          rpdet.FieldByName('qty').AsString := nxGrd.Cell[nxColQtyRetur.Index,i].AsString;
          rpdet.FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,i].AsString;
          rpdet.FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index,i].AsString;
          rpdet.FieldByName('kode_gdg').AsString := 'G01';
          rpdet.FieldByName('no_po').AsString := zqrPO.FieldByName('no_po').AsString;
          //rpdet.FieldByName('no_spbb').AsString := nxGrd.Cell[nxColNoSPBB.Index,i].AsString;
          rpdet.Post;
    end;
    rpdet.Close;

    dm.zConn.Commit;
    MsgBox('Data sudah disimpan dengan No. : ' + sNoTrans);
    cxtNOTrans.Text := GetLastFak('retur-pemb');
    cxlPO.EditValue := '';
    cxtSupplier.Text := '';
    cxdtglpo.EditValue := '';
    cxtNoSJ.Text := '';
    nxGrd.ClearRows;
    cxlPO.SetFocus;
    cxsTotalQty.Value := 0;

except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
end;

end;

procedure TfrmTrsReturPembelian.btnReturBaruClick(Sender: TObject);
begin

    Jenis := '';
    cxlPO.EditValue := '';
    cxtSupplier.Text := '';
    cxdtglpo.EditValue := '';
    nxGrd.ClearRows;
    cxlPO.SetFocus;
    cxsTotalQty.Value := 0;
    cxlNoBukti.EditValue := '';
    cxtNoSPMB.Text := '';
    cxtNoSJ.Text := '';
    btnSimpan2.Enabled := True;
    cxlPO.Properties.ReadOnly := False;

    cxtNoPolisi.Text := '';
    cxtDriver.Text := '';
    cxtNoPolisi.Style.Color := clMoneyGreen;
    cxtDriver.Style.Color := clMoneyGreen;
    cxtNoPolisi.Properties.ReadOnly :=True;
    cxtDriver.Properties.ReadOnly :=True;


    cxtNOTrans.Text := GetLastFak('retur-pemb');
end;

procedure TfrmTrsReturPembelian.btnEdit2Click(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin

    cxtNoPolisi.Style.Color := clWhite;
    cxtDriver.Style.Color := clWhite;
    cxtNoPolisi.Properties.ReadOnly :=False;
    cxtDriver.Properties.ReadOnly :=False;

    if cxlNoBukti.Text  = '' then Abort;

    cxsTotalQty.Value := 0;
    btnSimpan2.Enabled := False;
    cxlPO.Properties.ReadOnly := True;

    if Trim(cxlNoBukti.Text) = '' then Abort;
    Jenis := 'edit';

    q := OpenRS('select * from tbl_trsreturpemb_head h, tbl_trsreturpemb_det d, tbl_spmb_head sp  where h.no_bukti = d.no_bukti and sp.no_retur=h.no_bukti and h.no_bukti = ''%s''',
          [cxlNoBukti.EditValue]);
    cxtNoTrans.Text := q.FieldByName('no_bukti').AsString;
    cxdTglTrs.EditValue := q.FieldByName('tgl_input').AsString;
    cxlPO.Text := q.FieldByName('no_po').AsString;
    cxtDriver.Text := q.FieldByName('driver').AsString;
    cxtNoPolisi.Text := q.FieldByName('nopol').AsString;
    q.Close;

end;

procedure TfrmTrsReturPembelian.btnCetakSPMBClick(Sender: TObject);
var
  q: TZQuery;
  f: TfrmLapUmum;
begin

  if Jenis = '' then begin
      MsgBox('Data Retur belum disimpan.');
      Abort;
  end;

      // Update sopir dan no. pol
    dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
        'SET nopol = ''' + cxtNoPolisi.Text  + ''' WHERE no_bukti = ''' + cxtNoSPMB.Text + '''');

    dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
        'SET driver = ''' + cxtDriver.Text  + ''' WHERE no_bukti = ''' + cxtNoSPMB.Text + '''');


  q := OpenRS('SELECT no_bukti FROM tbl_spmb_head ' +
    'WHERE no_retur = ''%s''',
    [cxtNoTrans.Text]);

      f := TfrmLapUmum.Create(Self);
      with f do begin
        zqrSPMBRetur.Close;
        zqrSPMBRetur.ParamByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;;
        zqrSPMBRetur.Open;
        rptSPMBRetur.ShowReport(True);
        Release;
      end;
  q.Close;

end;

procedure TfrmTrsReturPembelian.btnCetakSJClick(Sender: TObject);
var
  sj_det, sj_head, brg, brg_det,
  hist, q, qso, qcek, qSO_V_SJ, qp, qsup: TZQuery;
  sNoSJ: string;
  qty_susut: Real;
  fLap : TFrmLapUmum;
  ii: Integer;
begin
  {CetakSuratJalan;}

  if cxsTotalQty.Value = 0 then begin
    MsgBox('Detail Transaksi masih kosong.');
    nxGrd.SelectCell(0,0);
    nxGrd.SetFocus;
  end
  else begin

    // cek apakah spmb sudah disimpan
    q := OpenRS('SELECT * FROM tbl_spmb_head WHERE no_bukti = ''%s''',
      [cxtNoSPMB.Text]);
    if q.IsEmpty then begin
      MsgBox('SPMB ini belum disimpan.');
      q.Close;
      Abort;
    end;
    q.Close;

    if (cxtNoPolisi.Text = '') and (cxtDriver.Text = '') then begin
      cxtNoPolisi.SetFocus;
      cxtNoPolisi.Style.Color := clWindow;
      cxtDriver.Style.Color := clWindow;
      cxtNoPolisi.Properties.ReadOnly :=False;
      cxtDriver.Properties.ReadOnly :=False;
      MsgBox('Harap mengisi No. Polisi dan Nama Driver.');
      Abort;
    end;

    // konfirmasi cetak surat jalan
    ii := QBox(Self,'Cetak Surat Jalan ?' + Chr(10) + Chr(13) +
      'Pastikan SPMB sudah diserahkan ke WHL.','Cetak SJ');
    if ii = IDNO then begin
      Abort;
    end;

    Screen.Cursor := crSQLWait;

    self.Jenis := 'edit';
    //btnSimpanClick(btnCetakSJ);

    // cek apakah spmb sudah di sjkan
    q := OpenRS('SELECT * FROM tbl_sj_head WHERE no_spmb = ''%s''',
      [cxtNoSPMB.Text]);

    if q.IsEmpty then begin

      // Update sopir dan no. pol
//      dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
//          'SET nopol = ''' + cxtNoPolisi.Text  + ''' WHERE no_bukti = ''' + cxtNoSPMB.Text + '''');

//      dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
//          'SET driver = ''' + cxtDriver.Text  + ''' WHERE no_bukti = ''' + cxtNoSPMB.Text + '''');


      sNoSJ := GetLastFak('sj');
      UpdateFaktur(Copy(sNoSJ,1,7));

      try
        dm.zConn.StartTransaction;

        //sj_head := OpenTbl('tbl_sj_head');
        sj_head := OpenRS('SELECT * FROM tbl_sj_head WHERE no_bukti = ''%s''', [sNoSJ]);

        //sj_det := OpenTbl('tbl_sj_det');
        sj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s''', [sNoSJ]);

        //hist := OpenTbl('tbl_history');
        hist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoSJ]);

        with sj_head do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoSJ;

          qsup := OpenRS('SELECT kode FROM tbl_supplier WHERE nama = ''%s''',
          [cxtSupplier.Text]);
          FieldByName('kode_supplier').AsString := qsup.FieldByName('kode').AsString;
          qsup.Close;


          FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('no_spmb').AsString := cxtNoSPMB.Text;
          FieldByName('user').AsString := Aplikasi.NamaUser;
          FieldByName('user_dept').AsString := aplikasi.UserDept;
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          FieldByName('f_cetak').AsInteger := 1;
          FieldByName('ongkos_kirim').AsFloat := 0;
          Post;
        end;

        for ii := 0 to nxGrd.RowCount - 1 do begin
          if nxGrd.Cell[CKD_BRG,ii].AsString = '' then Continue;
          with sj_det do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoSJ;
            FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,ii].AsString;
            FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyRetur.Index,ii].AsFloat;
            FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,ii].AsString;
            FieldByName('qty_so').AsFloat := 0;
            FieldByName('no_so').AsString := '';
            FieldByName('kode_gdg').AsString := 'G02';

              FieldByName('qty_baik').AsFloat := 0;
              FieldByName('qty_afkir').AsFloat := 0;
              FieldByName('qty_retur').AsFloat := 0;


            //qso := OpenRS('SELECT `po#`, `sc#` FROM tbl_so_head WHERE ' +
            //  'no_bukti = ''%s''',
            //  [nxGrd.Cell[CNO_SO,ii].AsString]);
            FieldByName('po#').AsString := '';
            FieldByName('sc#').AsString := '';
            //qso.Close;

            FieldByName('keterangan').AsString := nxGrd.Cell[nxColKet.Index,ii].AsString;
            FieldByName('ket_harga').AsString := '0';

            Post;
          end;

          brg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
            [nxGrd.Cell[nxColKodeBrg.Index,ii].AsString]);
          with brg do begin
            if Locate('kode', nxGrd.Cell[nxColKodeBrg.Index,ii].AsInteger,[]) then begin
              Edit;
              FieldByName('stok').AsFloat :=
                FieldByName('stok').AsFloat - nxGrd.Cell[nxColQtyRetur.Index,ii].AsFloat;
              Post;
            end;
          end;
          brg.Close;

          brg_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s ' +
            'AND kode_gdg = ''%s''',
            [nxGrd.Cell[nxColKodeBrg.Index,ii].AsString,'G01']);
          with brg_det do begin
            if Locate('kode_brg;kode_gdg',
              VarArrayOf([nxGrd.Cell[nxColKodeBrg.Index,ii].AsInteger,'G01']),[]) then begin
              Edit;
              FieldByName('stok').AsFloat :=
                FieldByName('stok').AsFloat - nxGrd.Cell[nxColQtyRetur.Index,ii].AsFloat;
              Post;
            end;
          end;
          brg_det.Close;

          with hist do begin
            Insert;
            FieldByName('no_bukti').AsString := cxtNoTrans.Text;
            FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index,ii].AsString;
            FieldByName('tipe').AsString := 'OUT_';
            FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyRetur.Index,ii].AsFloat;

              FieldByName('qty_baik').AsFloat := 0;
              FieldByName('qty_afkir').AsFloat := 0;
              FieldByName('qty_retur').AsFloat := 0;


            FieldByName('satuan').AsString := nxGrd.Cell[nxColSatuan.Index,ii].AsString;
            FieldByName('gudang').AsString := 'G01';
            FieldByName('referensi').AsString := '';
            FieldByName('keterangan').AsString := UpperCase(nxGrd.Cell[nxColKet.Index,ii].AsString);
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := aplikasi.UserDept;
            FieldByName('no_so').AsString := '';
            FieldByName('no_spk').AsString := '';
            FieldByName('no_spmb').AsString := cxtNoSPMB.Text;
            FieldByName('no_ccr').AsString := '';
            FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
            Post;
          end;


        end;

        // update status SPMB
        dm.zConn.ExecuteDirect('UPDATE tbl_spmb_head ' +
          'SET f_completed = 1 WHERE no_bukti = ''' + cxtNoSPMB.Text + '''');

        sj_head.Close;
        sj_det.Close;
        hist.Close;

        dm.zConn.Commit;

        Screen.Cursor := crDefault;
          {
        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          if mJnsSPMB = 'peletan' then begin
            zqrSJPel.Close;
            zqrSJPel.SQL.Add('WHERE no_bukti = ''' + sNoSJ + ''' ORDER BY no_so, kode_brg');
            zqrSJPel.Open;
            rptSJPel.ShowReport(True);

            zqrPerincianPlt.Close;
            zqrPerincianPlt.SQL.Strings[14] := 'AND a.no_bukti IN ' +
              '(SELECT no_so FROM tbl_sj_det WHERE no_bukti = ''' + sNoSJ + ''') '; 
            zqrPerincianPlt.Open;
            rptPerincianPlt.ShowReport(True);

            Release;
          end
          else begin
            zqrSJ.Close;
            zqrSJ.SQL.Add('WHERE no_bukti = ''' + sNoSJ + ''' ORDER BY no_so, kode_brg');
            zqrSJ.Open;
            rptSJ.ShowReport(True);
            Release;
          end;
          btnBatalClick(nil);
        end;}

        fLap := TfrmLapUmum.Create(Self);


            fLap := TfrmLapUmum.Create(Self);
            with fLap do begin
              zqrSJReturPemb.Close;
              zqrSJReturPemb.ParamByName('no_bukti').AsString := sNoSJ;
              zqrSJReturPemb.Open;
              rptSJReturPemb.ShowReport(True);
              Release;
            end;

       btnReturBaruClick(Self);

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end
    else begin
    Screen.Cursor := crDefault;

      //if aplikasi.GetWewenang('CetalUlangSJ') = '1' then begin
        fLap := TfrmLapUmum.Create(Self);
        with fLap do begin
          zqrSJReturPemb.Close;
          //zqrSJ.SQL.Add('WHERE no_bukti = ''' + cxtNoSJ.Text + '''');
          zqrSJReturPemb.ParamByName('no_bukti').AsString := cxtNoSJ.Text;
          zqrSJReturPemb.Open;
          rptSJReturPemb.ShowReport(True);
          Release;
        end;
      //end;

      //MsgBox('Cetak ulang');
    end;
    q.Close;
  end;

end;

end.
