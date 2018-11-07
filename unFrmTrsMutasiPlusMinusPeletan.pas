unit unFrmTrsMutasiPlusMinusPeletan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, DB,
  ZAbstractRODataset, ZDataset;

type
  TfrmTrsMutasiPlusMinusPeletan = class(TfrmTplTrans)
    nxGrd: TNextGrid;
    nxColNoSPK: TNxTextColumn;
    nxColNoSO: TNxTextColumn;
    nxColPlusMinus: TNxNumberColumn;
    nxColGAsis: TNxNumberColumn;
    nxColQtyMutasi: TNxNumberColumn;
    nxColNoUrut: TNxIncrementColumn;
    nxColCust: TNxTextColumn;
    zqrPM: TZReadOnlyQuery;
    nxColKodeBrg: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColCheck: TNxCheckBoxColumn;
    btnRefresh: TButton;
    nxColJenis: TNxTextColumn;
    nxColQtyBaik: TNxNumberColumn;
    nxColQtyAfkir: TNxNumberColumn;
    nxColQtyRetur: TNxNumberColumn;
    nxColQtySO: TNxNumberColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrsMutasiPlusMinusPeletan: TfrmTrsMutasiPlusMinusPeletan;

implementation

uses unTools, unDm, unAplikasi;

{$R *.dfm}

procedure TfrmTrsMutasiPlusMinusPeletan.FormCreate(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  inherited;
  zqrPM.Open;
  nxGrd.ClearRows;
  if not zqrPM.IsEmpty then begin
    while not zqrPM.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColNoSPK.Index, i].AsString := zqrPM.FieldByName('no_spk').AsString;
      nxGrd.Cell[nxColNoSO.Index, i].AsString := zqrPM.FieldByName('no_so').AsString;
      nxGrd.Cell[nxColCust.Index, i].AsString := zqrPM.FieldByName('nama').AsString;
      nxGrd.Cell[nxColPlusMinus.Index, i].AsFloat := zqrPM.FieldByName('plusminus2').AsFloat;
      nxGrd.Cell[nxColKodeBrg.Index, i].AsString := zqrPM.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColDesk.Index, i].AsString := zqrPM.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColQtySO.Index, i].AsFloat := zqrPM.FieldByName('qty_so').AsFloat;
      nxGrd.Cell[nxColQtyBaik.Index, i].AsFloat := zqrPM.FieldByName('qty_baik').AsFloat;
      nxGrd.Cell[nxColQtyAfkir.Index, i].AsFloat := zqrPM.FieldByName('qty_afkir').AsFloat;
      nxGrd.Cell[nxColQtyRetur.Index, i].AsFloat := zqrPM.FieldByName('qty_retur').AsFloat;
      if zqrPM.FieldByName('plusminus2').AsFloat > 0 then
        nxGrd.Cell[nxColJenis.Index, i].AsString := 'P'
      else
        nxGrd.Cell[nxColJenis.Index, i].AsString := 'M';
      zqrPM.Next;
    end;
  end;

  if nxGrd.RowCount > 0 then begin
    for i := 0 to nxGrd.RowCount - 1 do begin
      q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''G-ASIS''',
        [nxGrd.Cell[nxColKodeBrg.Index, i].AsString]);
      nxGrd.Cell[nxColGAsis.Index, i].AsFloat := q.FieldByName('stok').AsFloat;
      q.Close;
    end;
  end;

end;

procedure TfrmTrsMutasiPlusMinusPeletan.btnRefreshClick(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin
  if nxGrd.RowCount > 0 then begin
    for i := 0 to nxGrd.RowCount - 1 do begin
      q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''G-ASIS''',
        [nxGrd.Cell[nxColKodeBrg.Index, i].AsString]);
      nxGrd.Cell[nxColGAsis.Index, i].AsFloat := q.FieldByName('stok').AsFloat;
      q.Close;
    end;
  end;
end;

procedure TfrmTrsMutasiPlusMinusPeletan.btnSimpanClick(Sender: TObject);
var
  i,j: Integer;
  sNoTrs: string;
  qh, qoh, qod, qht: TZQuery;
begin
  j := 0;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColCheck.Index, i].AsBoolean then begin
      if nxGrd.Cell[nxColJenis.Index, i].AsString = 'P' then begin
        try
          dm.zConn.StartTransaction;

          sNoTrs := GetLastFak('hasil_produksi');
          unTools.UpdateFaktur(Copy(sNoTrs, 1, 8));

          qh := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''', [sNoTrs]);
          qh.Insert;
          qh.FieldByName('no_spk').AsString := nxGrd.Cell[nxColNoSPK.Index, i].AsString;
          qh.FieldByName('no_bukti').AsString := sNoTrs;
          qh.FieldByName('shift').AsString := '-';
          qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qh.FieldByName('qty_prod').AsFloat := 0 - nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qh.FieldByName('qty_baik').AsFloat := 0 - nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.Post;

          sNoTrs := GetLastFak('brg_in');
          UpdateFaktur(Copy(sNoTrs, 1, 7));
          qoh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''', [sNoTrs]);
          qoh.Insert;
          qoh.FieldByName('no_bukti').AsString := sNoTrs;
          qoh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qoh.FieldByName('jam').AsDateTime := APlikasi.ServerTime;
          qoh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qoh.FieldByName('user_dept').AsString := aplikasi.UserDept;
          qoh.Post;

          qod := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''', [sNoTrs]);
          qod.Insert;
          qod.FieldByName('no_bukti').AsString := sNoTrs;
          qod.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index, i].AsString;
          qod.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qod.FieldByName('kode_gdg').AsString := 'G-ASIS';
          qod.FieldByName('no_so').AsString := nxGrd.Cell[nxColNoSO.Index, i].AsString;
          qod.FieldByName('no_spk').AsString := nxGrd.Cell[nxColNoSPK.Index, i].AsString;
          qod.Post;

          qht := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoTrs]);
          qht.Insert;
          qht.FieldByName('no_bukti').AsString := sNoTrs;
          qht.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qht.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qht.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index, i].AsString;
          qht.FieldByName('tipe').AsString := 'IN_';
          qht.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qht.FieldByName('satuan').AsString := 'KG';
          qht.FieldByName('gudang').AsString := 'G-ASIS';
          qht.FieldByName('user').AsString := Aplikasi.NamaUser;
          qht.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qht.FieldByName('no_so').AsString := nxGrd.Cell[nxColNoSO.Index, i].AsString;
          qht.FieldByName('no_spk').AsString := nxGrd.Cell[nxColNoSPK.Index, i].AsString;
          qht.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
          qht.Post;

          qoh.Close;
          qod.Close;
          qh.Close;
          qht.Close;

          dm.zConn.ExecuteDirect(Format('UPDATE tbl_spk SET no_trsplusminus = ''%s'' WHERE no_spk = ''%s''',
            [sNotrs, nxGrd.Cell[nxColNoSPK.Index, i].AsString]));

          dm.zConn.Commit;
          Inc(j);

        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;
      end
      else begin
        try
          dm.zConn.StartTransaction;

          sNoTrs := GetLastFak('hasil_produksi');
          unTools.UpdateFaktur(Copy(sNoTrs, 1, 8));

          qh := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''', [sNoTrs]);
          qh.Insert;
          qh.FieldByName('no_spk').AsString := nxGrd.Cell[nxColNoSPK.Index, i].AsString;
          qh.FieldByName('no_bukti').AsString := sNoTrs;
          qh.FieldByName('shift').AsString := '-';
          qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qh.FieldByName('qty_prod').AsFloat := nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qh.FieldByName('qty_baik').AsFloat := nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.Post;

          sNoTrs := GetLastFak('brg_out');
          UpdateFaktur(Copy(sNoTrs, 1, 7));
          qoh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''', [sNoTrs]);
          qoh.Insert;
          qoh.FieldByName('no_bukti').AsString := sNoTrs;
          qoh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qoh.FieldByName('jam').AsDateTime := APlikasi.ServerTime;
          qoh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qoh.FieldByName('user_dept').AsString := aplikasi.UserDept;
          qoh.FieldByName('f_approval').AsInteger := 1;
          qoh.FieldByName('user_approval').AsString := Aplikasi.NamaUser;
          qoh.Post;

          qod := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''', [sNoTrs]);
          qod.Insert;
          qod.FieldByName('no_bukti').AsString := sNoTrs;
          qod.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index, i].AsString;
          qod.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qod.FieldByName('kode_gdg').AsString := 'G-ASIS';
          qod.FieldByName('no_so').AsString := nxGrd.Cell[nxColNoSO.Index, i].AsString;
          qod.FieldByName('no_spk').AsString := nxGrd.Cell[nxColNoSPK.Index, i].AsString;
          qod.Post;

          qht := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [sNoTrs]);
          qht.Insert;
          qht.FieldByName('no_bukti').AsString := sNoTrs;
          qht.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qht.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qht.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKodeBrg.Index, i].AsString;
          qht.FieldByName('tipe').AsString := 'OUT_';
          qht.FieldByName('qty').AsFloat := nxGrd.Cell[nxColQtyMutasi.Index, i].AsFloat;
          qht.FieldByName('satuan').AsString := 'KG';
          qht.FieldByName('gudang').AsString := 'G-ASIS';
          qht.FieldByName('user').AsString := Aplikasi.NamaUser;
          qht.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qht.FieldByName('no_so').AsString := nxGrd.Cell[nxColNoSO.Index, i].AsString;
          qht.FieldByName('no_spk').AsString := nxGrd.Cell[nxColNoSPK.Index, i].AsString;
          qht.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
          qht.Post;

          qoh.Close;
          qod.Close;
          qh.Close;
          qht.Close;

          dm.zConn.ExecuteDirect(Format('UPDATE tbl_spk SET no_trsplusminus = ''%s'' WHERE no_spk = ''%s''',
            [sNotrs, nxGrd.Cell[nxColNoSPK.Index, i].AsString]));

          dm.zConn.Commit;

          Inc(j);
        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;
      end;
    end;
  end;

  if j > 0 then begin
    MsgBox('Transaksi Plus Minus Peletan sudah berhasil disimpan.');
    Self.FormCreate(nil);
  end;
  
end;

procedure TfrmTrsMutasiPlusMinusPeletan.nxGrdAfterEdit(Sender: TObject;
  ACol, ARow: Integer; Value: WideString);
var
  q: TZQuery;  
begin
  if ACol = nxColQtyMutasi.Index then begin
    q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_gdg = ''G-ASIS'' AND kode_brg = %s',
      [nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);
    if q.FieldByName('stok').AsFloat = 0 then begin
      MsgBox('Stok G-ASIS masih kosong.');
      nxGrd.Cell[nxColQtyMutasi.Index, ARow].AsFloat := 0;
      nxGrd.SelectCell(nxColKodeBrg.Index, ARow);
      Abort;
    end;

    if nxGrd.Cell[nxColQtyMutasi.Index, ARow].AsFloat > q.FieldByName('stok').AsFloat then begin
      nxGrd.Cell[nxColQtyMutasi.Index, ARow].AsFloat := q.FieldByName('stok').AsFloat;
      nxGrd.SelectCell(nxColGAsis.Index, ARow);
      nxGrd.SelectCell(nxColQtyMutasi.Index, ARow);
    end;

    q.Close;
  end;

  if ACol = nxColCheck.Index then begin

    if nxGrd.Cell[nxColCheck.Index, ARow].AsBoolean then begin
      q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_gdg = ''G-ASIS'' AND kode_brg = %s',
        [nxGrd.Cell[nxColKodeBrg.Index, ARow].AsString]);

      if nxGrd.Cell[nxColJenis.Index, ARow].AsString = 'M' then begin
        if q.FieldByName('stok').AsFloat < Abs(nxGrd.Cell[nxColPlusMinus.Index, ARow].AsFloat) then begin
          MsgBox('Stok G-ASIS masih kosong atau kurang.');
          nxGrd.Cell[nxColCheck.Index, ARow].AsBoolean := False;
        end
        else begin
          nxGrd.Cell[nxColQtyMutasi.Index, ARow].AsFloat := Abs(nxGrd.Cell[nxColPlusMinus.Index, ARow].AsFloat);
        end;
      end
      else begin
        nxGrd.Cell[nxColQtyMutasi.Index, ARow].AsFloat := Abs(nxGrd.Cell[nxColPlusMinus.Index, ARow].AsFloat);
      end;
      
      q.Close;
    end;
    
  end;
end;

end.
