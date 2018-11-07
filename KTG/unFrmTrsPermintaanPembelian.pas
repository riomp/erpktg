unit unFrmTrsPermintaanPembelian;

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
  cxDBLookupComboBox, ZAbstractRODataset, cxCheckBox, cxRadioGroup,
  cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxClasses, cxGridCustomView, cxGrid, frxClass, frxDBSet, ZAbstractDataset;

type
  TfrmTrsPermintaanPembelian = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxtNoBukti: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxCmbDept: TcxComboBox;
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    btnEdit2: TButton;
    cxlNoBukti: TcxLookupComboBox;
    dsNoBukti: TDataSource;
    zqrNoBukti: TZReadOnlyQuery;
    cxLabel4: TcxLabel;
    cxtDiajukanOleh: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxdTglDiperlukan: TcxDateEdit;
    cxgrdPP: TcxGrid;
    cxGrdTblPP: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColKodeBrg: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColKeterangan: TcxGridColumn;
    cxColIdSatuan: TcxGridColumn;
    cxgrdlvl1Grid1Level1: TcxGridLevel;
    cxrdgrp1: TcxRadioGroup;
    cxCboLevel: TcxComboBox;
    btnCetak: TButton;
    zSatuan: TZQuery;
    ds4: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    cxsQty: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure cxCmbGdgPropertiesChange(Sender: TObject);      
    procedure cxdTglTrsPropertiesChange(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrdTblPPDataControllerBeforePost(
      ADataController: TcxCustomDataController);
    procedure cxGrdTblPPDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnCetakClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrdTblPPFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    mUserDept: string;
    mNoPP: string;
    procedure ClearAll;
  public
    property UserDept: string read mUserDept write mUserDept;
    property NoPP: string read mNoPP write mNoPP;
  end;

var
  frmTrsPermintaanPembelian: TFrmTrsPermintaanPembelian;

implementation

uses unFrmCari, unTools, unDm, unFrmUtama, unFrmCariSO, unFrmCariSPK, unFrmLapUmum, unFrmScheduleKirimPP, unFrmSchedulePP;


{$R *.dfm}

procedure TFrmTrsPermintaanPembelian.FormCreate(Sender: TObject);
var
  q: TZQuery;
  lst: TList;
  s : string;
begin

    cxdTglTrs.Date := Aplikasi.TanggalServer;

    cxtNoBukti.Text := GetLastFak('permintaan_pembelian');


    // collect departemen
    q := OpenRS('SELECT * FROM tbl_bagian ORDER BY bagian');
    while not q.Eof do begin
      cxCmbDept.Properties.Items.Add(q.fieldByName('bagian').AsString);
      q.Next;
    end;
    q.Close;

    lst := TList.Create();
    lst.Add(zqrNoBukti);
    lst.Add(zqrBrg);
    OpenSQL(lst);



    cxdTglDiperlukan.Date := Aplikasi.Tanggal;

    cxtNobukti.Properties.ReadOnly := True;
    Jenis := 'T';
    cxtDiajukanOleh.Text := Aplikasi.NamaUser;
    cxCmbDept.Text := Aplikasi.UserDept;
    cxtDiajukanOleh.Properties.ReadOnly := True;
    cxCmbDept.Properties.ReadOnly := True;
    //btnBaru.Enabled:= False;
    if cxCmbDept.Text='HRD' then begin
      with zqrBrg do begin
        Close;
        SQL.Text := 'SELECT * FROM v_brg_per_gdg_2 where left(kode,2)="EX" ORDER BY deskripsi';
        Open;
      end;
    end;  
end;

procedure TFrmTrsPermintaanPembelian.btnBaruClick(Sender: TObject);
var
  f : TfrmSchedulePP ;
  i : Integer;
  qh : TZQuery ;
begin
  inherited;
   qh := OpenRS('SELECT * FROM tbl_schedule_pp WHERE no_bukti = ''%s'' and no_urut=''%s'' and kode_brg=''%s''',[cxtNoBukti.Text,label1.Caption,label2.Caption]);

  f := TfrmSchedulePP.Create(Self);
  f.cxtNoBukti.Text := cxtNoBukti.Text;
  f.Label1.Caption := Label1.Caption ;
  f.Label5.Caption := Label2.Caption ;
  f.cxsQty.EditValue := cxsQty.EditValue;
  if qh.IsEmpty then begin
     with f.cxTblPP.DataController do begin
      BeginUpdate;
      try
         i := AppendRecord;
        Values[i, f.cxColNo.Index] := 1;
        Values[i, f.cxColTgl.Index] := cxdTglDiperlukan.EditValue;
        Values[i, f.cxColQty.Index] := cxsQty.EditValue;
      finally
          EndUpdate
      end
    end;
  end
  else begin

     while not qh.Eof do begin
        with f.cxTblPP.DataController do begin
          BeginUpdate;
          i := AppendRecord;
            Values[i, f.cxColNo.Index] := qh.FieldByName('no').AsInteger;
            Values[i, f.cxColTgl.Index] :=  qh.FieldByName('tgl').AsDateTime;
            Values[i, f.cxColQty.Index] :=  qh.FieldByName('qty').AsFloat;
            if qh.FieldByName('keterangan').AsString<>null then
            Values[i, f.cxColKeterangan.Index] := qh.FieldByName('keterangan').AsString;
          EndUpdate;
        end;
        qh.Next;
      end;
  end;
  f.ShowModal;
  //Self.Jenis := 'tambah';

end;

procedure TFrmTrsPermintaanPembelian.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;

  zqrNoBukti.Close;
  zqrNoBukti.Open;

  self.Jenis := '';
  cxtNoBukti.Properties.ReadOnly := False;
  
end;

procedure TFrmTrsPermintaanPembelian.btnBatalClick(Sender: TObject);
begin
  //inherited;
  ClearAll;
  Self.Jenis := '';
  cxtNoBukti.SetFocus;
  cxtNoBukti.Text := GetLastFak('permintaan_pembelian');
end;

procedure TFrmTrsPermintaanPembelian.btnSimpanClick(Sender: TObject);
var
  i, ID: integer;
  f0: Boolean;
  qh, qd : TZQuery;
  sNoBukti: string;
begin
  inherited;

 { if (cxGrdTblPP.DataController.EditState = [dceInsert, dceModified]) or (cxGrdTblPP.DataController.EditState = [dceEdit, dceModified]) then begin
    MsgBox('Mohon selesaikan pengeditan detail sebelum disimpan.');
    Abort;
  end;    }

  with cxgrdTblPP.DataController do begin
    if RecordCount = 0 then begin
      MsgBox('Detail transaksi masih kosong.');
      Abort;
    end;

    f0 := False;
    for i  := 0 to RecordCount - 1 do begin
      //if (VarIsNull(Values[i, cxColKodeBrg.Index])) or (VarToStr(Values[i, cxColKodeBrg.Index]) = '') then begin
      if (VarToStr(Values[i, cxColKodeBrg.Index]) = '') then begin
        f0 := True;
        Break;
      end;
    end;
    if f0 then begin
      MsgBox('Kode barang masih kosong.');
      Abort;
    end;

    if Self.Jenis = 'T' then begin
      sNoBukti := GetLastFak('permintaan_pembelian');
      UpdateFaktur(Copy(sNoBukti,1,7));
    end
    else begin
      sNoBukti := cxtNoBukti.text;
    end;

    try
      dm.zConn.StartTransaction;
      qh := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',[sNoBukti]);
        if Self.Jenis = 'T' then begin
          qh.Insert;
        end else begin
            qh.Edit;
            dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_fobj_det WHERE no_bukti = ''%s''',[sNoBukti]));
          end;



      qh.FieldByName('no_bukti').AsString := sNoBukti;
      qh.FieldByName('tanggal').AsDateTime := cxdTglTrs.Date;
      qh.FieldByName('tgl_diperlukan').AsDateTime := cxdTglDiperlukan.Date;
      qh.FieldByName('diajukan_oleh').AsString := cxtDiajukanOleh.Text;
      qh.FieldByName('diajukan_dept').AsString := cxCmbDept.Text;
      qh.FieldByName('level_kebutuhan').AsString := cxCboLevel.Text;
      qh.FieldByName('user').AsString := Aplikasi.NamaUser;
      qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      qh.FieldByName('tgl_input').AsDateTime := Aplikasi.Tanggal;
      qh.FieldByName('f_penawaran').AsInteger := 0;
      qh.FieldByName('f_po').AsInteger := 0;
      qh.FieldByName('f_app').AsInteger := 0;

      {if Self.Jenis = 'edit' then begin
        qh.FieldByName('f_edit').AsInteger := 1;
        qh.FieldByName('user_edit').AsString := Aplikasi.NamaUser;
        qh.FieldByName('tg_edit').AsDateTime := Aplikasi.Tanggal;
      end else begin
        qh.FieldByName('f_edit').AsInteger := 0;
      end;}

      qh.Post;

      //if Self.Jenis = 'T' then  ID := LastInsertID;

      qd := OpenRS('SELECT * FROM tbl_fobj_det WHERE no_bukti = ''%s''',[sNoBukti]);
      for i := 0 to cxgrdTblPP.DataController.RecordCount - 1 do begin
        qd.Insert;
        qd.FieldByName('no_bukti').AsString := sNoBukti;
        qd.FieldByName('kode_brg').AsString := Values[i, cxColKodeBrg.Index];
        qd.FieldByName('qty').AsFloat := Values[i, cxColQty.Index];
        qd.FieldByName('satuan').AsString := Values[i, cxColSatuan.Index];
        if VarIsNull(Values[i,cxColKeterangan.Index]) = True then begin
          qd.FieldByName('keterangan').AsString := '';
        end else begin
          qd.FieldByName('keterangan').AsString := Values[i, cxColKeterangan.Index];
        end;
        qd.Post;
      end;
      qh.Close;
      qd.Close;
      dm.zConn.Commit;
      MsgBox('Transaksi permintaan pembelian sudah disimpan dengan No. Bukti : ' + sNoBukti);

      with cxGrdTblPP.DataController do begin
      BeginUpdate;
      try
        while RecordCount > 0 do
          DeleteRecord(0);
          cxGrdTblPP.DataController.ClearDetails;

      finally
          EndUpdate
      end
    end;
      btnBatalClick(nil);
      Close ;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
end;



procedure TFrmTrsPermintaanPembelian.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  if cxtNoBukti.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_po_head WHERE no_fobj = ''%s''',
      [cxtNObukti.Text]);
    if not q.IsEmpty then begin
        MsgBox('Maaf data tidak bisa dihapus karena sudah dibuatkan PO');
    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_fobj_head WHERE no_bukti = ''' + cxtNoBukti.Text + '''');
        dm.zConn.ExecuteDirect('DELETE FROM tbl_fobj_det WHERE no_bukti = ''' + cxtNOBukti.Text + '''');
        dm.zConn.Commit;
        MsgBox('Penghapusan PP berhasil.');
        btnBatalClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
  end;
end;

procedure TFrmTrsPermintaanPembelian.cxCmbGdgPropertiesChange(Sender: TObject);
var
  s: string;
begin
  { 27/06/2014 -> no fobj diinput manual
  s := cxCmbDept.Text;
  if Length(s) = 4 then
    s := Copy(s,1,3);
  cxtNoTrans.Text := GetLastFakFOBJ(s);
  } 
end;


procedure TFrmTrsPermintaanPembelian.cxdTglTrsPropertiesChange(Sender: TObject);
begin
  if aplikasi.UbahTglTrs = False then
    if cxdTglTrs.EditValue < aplikasi.TanggalServer - 2 then
      cxdTglTrs.Date := Aplikasi.TanggalServer;
  if cxdTglTrs.Date > aplikasi.TanggalServer then
    cxdTglTrs.Date := Aplikasi.TanggalServer;

      if Self.Jenis='T' then
   cxtNoBukti.Text := GetLastFak('permintaan_pembelian',cxdTglTrs.Date);
end;

procedure TFrmTrsPermintaanPembelian.btnEdit2Click(Sender: TObject);
var
  q, qBrg, z: TZQuery;
  i, nomer: Integer;
begin

  if Trim(cxlNoBukti.Text) = '' then Abort;

  self.Jenis := 'edit';
  cxtNoBukti.Text := zqrNoBukti.FieldByName('no_bukti').AsString;
  cxtNoBukti.Properties.ReadOnly := True;

  cxdTglTrs.Date := zqrNoBukti.FieldByName('tanggal').AsDateTime;

  q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
    [cxtNoBukti.Text]);
  cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
  cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
  cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;
  cxCboLevel.Text := q.fieldbyname('level_kebutuhan').AsString;

  q.Close;

  z := OpenRS('SELECT * FROM v_fobj_det WHERE no_bukti = ''%s''',
    [zqrNoBukti.FieldByName('no_bukti').AsString]);
  nomer := 1;

  cxGrdTblPP.DataController.OnRecordChanged := nil;
  while not z.Eof do begin
    with cxgrdTblPP.DataController do begin
      i := AppendRecord;
      Values[i, cxColNo.Index] := nomer;
      Values[i, cxColKodeBrg.Index] := z.FieldByName('kode_brg').AsString;
      Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
      Values[i, cxColQty.Index] := z.FieldByName('qty').AsString;
      Values[i, cxColSatuan.Index] := z.FieldByName('satuan').AsString;
      Values[i, cxColKeterangan.Index] := z.FieldByName('keterangan').AsString;
      nomer := nomer +1;
    end;
    z.Next;
  end;

  z.Close;

end;


procedure TFrmTrsPermintaanPembelian.FormShow(Sender: TObject);
var
  q, qBrg, z: TZQuery;
  i, nomer: Integer;
begin
  inherited;
  if Self.Jenis = 'E' then begin
    //if Trim(cxlNoBukti.Text) = '' then Abort;
    btnBaru.Enabled:= True;
    cxtNoBukti.Text := mNoPP;
    cxtNoBukti.Properties.ReadOnly := True;

    q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
      [cxtNoBukti.Text]);
    cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
    cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
    cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
    cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;
    cxCboLevel.Text := q.fieldbyname('level_kebutuhan').AsString;

        if cxCmbDept.Text='HRD' then begin
      with zqrBrg do begin
        Close;
        SQL.Text := 'SELECT * FROM v_brg_per_gdg_2 where left(kode,2)="EX" ORDER BY deskripsi';
        Open;
      end;
    end;
    

    if q.FieldByName('f_app').AsInteger = 0 then
    btnSimpan.Enabled := True else btnSimpan.Enabled := False ;

    q.Close;

    z := OpenRS('SELECT * FROM v_fobj_det WHERE no_bukti = ''%s''',
      [mNoPP]);
    nomer := 1;

    //cxGrdTblPP.DataController.OnRecordChanged := nil;
    while not z.Eof do begin
      with cxgrdTblPP.DataController do begin
        i := AppendRecord;
        Values[i, cxColNo.Index] := nomer;
        Values[i, cxColKodeBrg.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColQty.Index] := z.FieldByName('qty').AsString;
        Values[i, cxColSatuan.Index] := z.FieldByName('satuan').AsString;
        Values[i, cxColKeterangan.Index] := z.FieldByName('keterangan').AsString;
        nomer := nomer +1;
      end;
      z.Next;
    end;

    z.Close;
  end
    else begin
       cxtNoBukti.SetFocus;
      cxCboLevel.Properties.Items.Add('PENTING');
      cxCboLevel.Properties.Items.Add('MENDESAK');
      cxCboLevel.ItemIndex := 0;
    end;

    if Self.Jenis = 'V' then begin
    //if Trim(cxlNoBukti.Text) = '' then Abort;

    cxtNoBukti.Text := mNoPP;
    cxtNoBukti.Properties.ReadOnly := True;

    q := OpenRS('SELECT * FROM tbl_fobj_head WHERE no_bukti = ''%s''',
      [cxtNoBukti.Text]);
    cxdTglTrs.Date := q.FieldByName('tanggal').AsDateTime;
    cxdTglDiperlukan.Date := q.FieldByName('tgl_diperlukan').AsDateTime;
    cxtDiajukanOleh.Text := q.FieldByName('diajukan_oleh').AsString;
    cxCmbDept.Text := q.FieldByName('diajukan_dept').AsString;
    cxCboLevel.Text := q.fieldbyname('level_kebutuhan').AsString;

    btnSimpan.Visible := False ;

    q.Close;

    z := OpenRS('SELECT * FROM v_fobj_det WHERE no_bukti = ''%s''',
      [mNoPP]);
    nomer := 1;

    cxGrdTblPP.DataController.OnRecordChanged := nil;
    while not z.Eof do begin
      with cxgrdTblPP.DataController do begin
        i := AppendRecord;
        Values[i, cxColNo.Index] := nomer;
        Values[i, cxColKodeBrg.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColDeskripsi.Index] := z.FieldByName('kode_brg').AsString;
        Values[i, cxColQty.Index] := z.FieldByName('qty').AsString;
        Values[i, cxColSatuan.Index] := z.FieldByName('satuan').AsString;
        Values[i, cxColKeterangan.Index] := z.FieldByName('keterangan').AsString;
        nomer := nomer +1;
      end;
      z.Next;
    end;

    z.Close;
  end
    else begin
       cxtNoBukti.SetFocus;
      cxCboLevel.Properties.Items.Add('PENTING');
      cxCboLevel.Properties.Items.Add('MENDESAK');
      cxCboLevel.ItemIndex := 0;
    end;

end;

procedure TfrmTrsPermintaanPembelian.cxGrdTblPPDataControllerBeforePost(
  ADataController: TcxCustomDataController);
var
  i,j,k: integer;
  v: variant;
begin
  inherited;
  i := ADataController.FocusedRowIndex;
  k := ADataController.GetEditingRecordIndex;
  v := ADataController.Values[i, cxColKodeBrg.Index];


      for j := 0 to ADataController.RecordCount - 1 do begin
      if Copy(ADataController.Values[j, cxColKodeBrg.Index],1,2)<>'EX' then begin
        if j <> k then begin
          if v = ADataController.Values[j, cxColKodeBrg.Index] then begin
            MsgBox('Kode barang tersebut sudah ada.');
            ADataController.DeleteRecord(i);
            Abort;
          end;
        end;
      end;
    end;

    if (VarIsNull(ADataController.Values[i, cxColKodeBrg.Index])) or
      (Trim(ADataController.Values[i, cxColKodeBrg.Index]) = '')  then begin
      MsgBox('Mohon masukkan kode barang.');
      Abort;
    end
    else if ADataController.Values[i, cxColQty.Index] <= 0 then begin
      MsgBox('Qty. PP tidak boleh nol atau minus.');
      Abort;
    end;

end;


procedure TfrmTrsPermintaanPembelian.cxGrdTblPPDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  q: TZQuery;
 // i: Integer ;
  sSatuan : string;
begin
  inherited;
  // btnBaru.Enabled:= True;

  if (AItemIndex = cxColDeskripsi.Index) then begin

    try
      cxGrdTblPP.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColKodeBrg.Index] :=  ADataController.Values[ARecordIndex, cxColDeskripsi.Index];

      if Copy(ADataController.Values[ARecordIndex, cxColKodeBrg.Index],1,2)='EX' then
      cxColSatuan.Options.Editing:= True ;
      
      q := OpenRS('SELECT a.unitsetid,a.unitid FROM tbl_barang a ' +
        'WHERE kode = ''%s''',[cxColKodeBrg.EditValue]);
      sSatuan:= q.FieldByName('unitsetid').AsString;

      if zSatuan.Active then zSatuan.Close ;
      zSatuan.ParamByName('unitsetid').AsString := sSatuan;
      zSatuan.Open; 
      ADataController.Values[ARecordIndex, cxColSatuan.Index] := q.FieldByName('unitid').AsString;
      q.Close;
     // ADataController.Values[ARecordIndex, cxColqty.Index] := '1';
    finally
      cxGrdTblPP.EndUpdate;
    end;
  end;

end;

procedure TfrmTrsPermintaanPembelian.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  row : Integer;
begin
  inherited;
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmTrsPermintaanPembelian.btnCetakClick(Sender: TObject);
var
  q: TZQuery;
  f: TfrmLapUmum;
begin

  q := OpenRS('SELECT a.no_bukti, a.tanggal, a.tgl_diperlukan, a.diajukan_oleh, a.diajukan_dept, a.level_kebutuhan, ' +
      'b.kode_brg, c.deskripsi, b.qty, b.satuan, b.keterangan ' +
      'FROM tbl_fobj_head a ' +
      'LEFT JOIN tbl_fobj_det b ON a.`no_bukti` = b.`no_bukti` ' +
      'LEFT JOIN tbl_barang c ON b.`kode_brg` = c.`kode` ' +
      'WHERE a.no_bukti = ''%s''', [cxtNoBukti.Text]);
  if not q.IsEmpty then begin
    f := TfrmLapUmum.Create(Self);
    with f do begin
      zqrPP.Close;
      zqrPP.ParamByName('no_bukti').AsString := cxtNoBukti.Text;
      zqrPP.Open;
      rptPP1.ShowReport(True);
      Release;
    end;
  end
  else begin
    MsgBox('PP ini belum disimpan.');
  end;
  q.Close;

end;


procedure TfrmTrsPermintaanPembelian.Button1Click(Sender: TObject);
var
  f : TfrmScheduleKriripPP ;
begin
  //inherited;
  f := frmScheduleKriripPP.Create(self);
  f.ShowModal;
  //Self.Jenis := 'tambah';

end;

procedure TfrmTrsPermintaanPembelian.cxGrdTblPPFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
  var
  q: TZQuery;
  i,j: Integer;
begin
  inherited;
 { if Self.Jenis = 'T' then
    btnBaru.Enabled := False
  else
    btnBaru.Enabled := True ;  }

   try
    i := cxGrdTblPP.DataController.GetFocusedRecordIndex;
    label1.Caption := cxGrdTblPP.DataController.Values[i, cxColNo.Index];
    label2.Caption := cxGrdTblPP.DataController.Values[i, cxColKodeBrg.Index];
    cxsQty.EditValue := cxGrdTblPP.DataController.Values[i, cxColQty.Index];
  except
  end;

end;

end.
