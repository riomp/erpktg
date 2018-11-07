unit unFrmBuatSPK2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, ComCtrls, StdCtrls, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxLabel, dxSkinscxPCPainter, cxPC, frxDesgnCtrls, ZDataset, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxSpinEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TfrmBuatSPK2 = class(TfrmTplTrans)
    Panel1: TPanel;
    pg: TcxPageControl;
    cxLabel7: TcxLabel;
    cxtNoSO: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtCustomer: TcxTextEdit;
    cxdTglSO: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxsQtySO: TcxSpinEdit;
    cxTabSheet1: TcxTabSheet;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTblKetSPK: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColJenisSPK: TcxGridColumn;
    cxColNoSPK: TcxGridColumn;
    cxColTglSPK: TcxGridColumn;
    cxColHslProd: TcxGridColumn;
    cxColQtySPK: TcxGridColumn;
    cxtSatuan: TcxTextEdit;
    Panel2: TPanel;
    cxLabel4: TcxLabel;
    cxsQtySPK: TcxSpinEdit;
    cxLabel5: TcxLabel;
    cxsToleransi: TcxSpinEdit;
    btnProsesSPK: TButton;
    cxLabel6: TcxLabel;
    cxdTargetKirim: TcxDateEdit;
    cxsQty1: TcxSpinEdit;
    cxtSatuan1: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblConversi: TcxGridTableView;
    cxColNoNo: TcxGridColumn;
    cxColKonversi: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxsPCS: TcxSpinEdit;
    cxsRoll: TcxSpinEdit;
    cxLabel9: TcxLabel;
    cxsPemanasan: TcxSpinEdit;
    cxLabel10: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnProsesSPKClick(Sender: TObject);
    procedure cxsQtySPKPropertiesChange(Sender: TObject);
  private
    mNoSO: string;
    mNoMO: string;
    mKodeBrg: string;
    mJenisEdit: string;
    procedure CloneFSB(AAncestor: TComponent);
  public
    property NoSO: string read mNoSO write mNoSO;
    property NoMO: string read mNoMO write mNoMO;
    property KodeBrg: string read mKodeBrg write mKodeBrg;
    property JenisEdit: string read mJenisEdit write mJenisEdit;
  end;

var
  frmBuatSPK2: TfrmBuatSPK2;

implementation

uses unTools, unAplikasi, unDm, unFrmTmpBuatSPK;

{$R *.dfm}

procedure TfrmBuatSPK2.FormShow(Sender: TObject);
var
  q, qBrg, q2, q3,q4 : TZQuery;
  i,j: integer;
  sRouting, sSPK: string;
  compName, bentuk: string;
  fsb: TfrxScrollBox;
  ts: TcxTabSheet;

  f: TfrmTmpBuatSPK;
begin
  inherited;
   cxGrid2.Visible := false ;

  q := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',[mNoSO]);

  cxtNoSO.Text := q.FieldByName('no_bukti').AsString;
  cxdTglSO.Date := q.FieldByName('tanggal').AsDateTime;
  cxtCustomer.Text := q.FieldByName('nama').AsString;
  cxtKeterangan.Text :=  q.FieldByName('notes').AsString;
  q.Close;

  q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = ''%s''',
      [mNoSO, mKodeBrg]);
  cxtKodeBrg.Text := mKodeBrg;
  cxtDeskripsi.Text := q.FieldByname('deskripsi').AsString;
  cxsQtySO.Value := q.FieldByName('qty').AsFloat;
  cxsQty1.EditValue := q.FieldByName('konversi').AsFloat;
  cxtSatuan.Text := q.FieldByName('satuan').AsString;
  q.Close;



  // cxsQtySPK.Value := cxsQtySO.Value;
  cxsQtySPK.EditValue := cxsQty1.EditValue;

  // 29-10-2017
  // cek apakah sudah ada spk ?
  q := OpenRS('SELECT SUM(qty) qty,toleransi FROM v_spk WHERE no_so = ''%s'' AND kode_brg = ''%s''',
    [NoSO, cxtKodeBrg.Text]);
 // cxsQtySPK.Properties.MaxValue := cxsQtySO.Value - q.FieldByName('qty').AsFloat;
  cxsQtySPK.Properties.MaxValue := cxsQty1.Value - ((100/(100+q.FieldByName('toleransi').AsFloat)*q.FieldByName('qty').AsFloat));
  cxsQtySPK.EditValue := cxsQty1.Value - ((100/(100+q.FieldByName('toleransi').AsFloat)*q.FieldByName('qty').AsFloat));
  q.Close;
  // jika qty sudah 0
  if cxsQtySPK.Value = 0 then begin
    MsgBox('SPK sudah tidak bisa dibuat.');
  end;
  // EOF 29-10-2017

  // tampilkan SPK yang sudah pernah dibuat
  {q2 := OpenRS('SELECT a.*, b.no_so, ' +
    '(SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = a.no_spk) hsl_prod ' +
    'FROM tbl_spk a ' +
    'LEFT JOIN tbl_mo b ON b.no_mo = a.no_mo ' + 
    'WHERE b.no_so = ''%s''',[mNoSO]);
  while not q2.Eof do begin
    with cxTblKetSPK.DataController do begin
      j := AppendRecord;
      Values[j, cxColJenisSPK.Index] := q2.FieldByName('routing').AsString;
      Values[j, cxColNoSPK.Index] := q2.FieldByName('no_spk').AsString;
      Values[j, cxColTglSPK.Index] := q2.FieldByName('tanggal').AsDateTime;
      Values[j, cxColQtySPK.Index] := q2.FieldByName('qty').AsFloat;
      Values[j, cxColHslProd.Index] := q2.FieldByName('hsl_prod').AsFloat;
    end;
    q2.Next;
  end;
  q2.Close; }

  if mJenisEdit = 'add' then begin

    q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = ''%s''',
      [mNoSO, mKodeBrg]);

    f := TfrmTmpBuatSPK.Create(nil);
    f.ManualDock(pg, pg, alClient);
    f.Jenis := 'NOT-BJ';
    f.cxtEdit.Text := mKodeBrg ;
    ts := (f.parent as TcxTabSheet);
    ts.Caption := 'Barang Jadi';
    with f do begin
      cxtRouting.Text := f.Jenis;
      cxtNoSPK.Text := GetLastFak('spk');
      cxtKodeBrg.Text := mKodeBrg;
      cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;

      qBrg := OpenRS('SELECT no_is, base_material, berat_kotor, berat_bersih, unitid, unitsetid, bentuk ' +
        'FROM tbl_barang WHERE kode = ''%s''',[mKodeBrg]);
      bentuk := qBrg.FieldByName('bentuk').AsString;

      cxtNoIS.Text := qBrg.FieldByname('no_is').AsString;
      cxtBahanDasar.Text := qBrg.FieldByName('base_material').AsString;
      cxsBerat.Value := qBrg.FieldByName('berat_bersih').Value;
      cxLabel14.Caption := 'Berat Bersih';
      cxtSatA.Text := qBrg.FieldByName('unitid').AsString;
      cxlSatuan.EditValue := qBrg.FieldByName('unitid').AsString;
      cxtUnitID.Text := qBrg.FieldByName('unitsetid').AsString;
      cxtSatB.Text := 'GR';
      qBrg.Close;

      f.QtySO := cxsQtySO.Value;
      f.NoSO := cxtNoSO.Text;

    end;
    f.Show;

    // ambil routing
    q := OpenRS('SELECT a.*, b.deskripsi, b.berat_kotor, b.berat_bersih,b.lebar_buka,b.tebal,b.unitid,b.berat_jenis,b.unitsetid,b.standar_roll, ' +
      'b.bentuk,b.speed,b.treat_luar,b.treat_dalam,b.pola_tl,b.pola_td,c.output,c.satuan,c.die ' +
      'FROM tbl_routing a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode LEFT JOIN tbl_mesin as c ON a.kode_mesin=c.kode ' +
      'WHERE a.kode = ''%s'' ORDER BY a.no',[mKodeBrg]);

    while not q.Eof do begin

      f := TfrmTmpBuatSPK.Create(nil);
      f.ManualDock(pg, pg, alClient);
      f.Nourut := q.FieldByName('no').AsInteger;
      f.cxCmbJenisBentuk.Text := bentuk;

      with f do begin
        Jenis := q.FieldByname('routing').AsString;
        //KodeBrg := mKodeBrg;
        cxtEdit.Text := mKodeBrg ;
        // cek urutan
        q3 := OpenRS('SELECT MAX(no) maxno FROM tbl_routing WHERE kode = ''%s''',[mKodeBrg]);
        if q3.FieldByName('maxno').AsInteger = f.Nourut then f.Jenis := 'BJ';
        q3.Close;

        if Jenis = 'MIXING' then
          cxtNoSPK.Text := GetLastFak('spk-mixing')
        else if (Jenis = 'EXTRUSI') or (Jenis = 'EXTRUSION') then
          cxtNoSPK.Text := GetLastFak('spk-extrusi')
        else if Jenis = 'PRINTING' then
          cxtNoSPK.Text := GetLastFak('spk-printing')
        else if Jenis = 'GUSET' then
          cxtNoSPK.Text := GetLastFak('spk-guset')
        else if Jenis = 'CONVERTING' then
          cxtNoSPK.Text := GetLastFak('spk-converting')
        else if Jenis = 'PACKING' then
          cxtNoSPK.Text := GetLastFak('spk-packing')
        else if Jenis = 'SORTING' then
          cxtNoSPK.Text := GetLastFak('spk-sorting')
        else if Jenis = 'CRUSHER' then
          cxtNoSPK.Text := GetLastFak('spk-crusher')
        else if Jenis = 'WASHING' then
          cxtNoSPK.Text := GetLastFak('spk-washing')
        else if Jenis = 'PELET' then
          cxtNoSPK.Text := GetLastFak('spk-pelet')
        else if Jenis = 'INJECTION' then
          cxtNoSPK.Text := GetLastFak('spk-injection')
        else if Jenis = 'CASTING' then
          cxtNoSPK.Text := GetLastFak('spk-casting')
        else if Jenis = 'MANUAL' then
          cxtNoSPK.Text := GetLastFak('spk-manual')
        else if Jenis = 'BJ' then
          cxtNoSPK.Text := GetLastFak('spk');

          if Jenis = 'MIXING' then begin
            cxColLayer1.Visible := True ;
            cxColLayer2.Visible := True ;
            cxColLayer3.Visible := True ;
            cxColLayer4.Visible := True ;
            cxColLayer5.Visible := True ;
            cxColLayer6.Visible := True ;
            cxColLayer7.Visible := True ;
            cxColLayer8.Visible := True
            end
            else begin
              cxColLayer1.Visible := False ;
              cxColLayer2.Visible := False ;
              cxColLayer3.Visible := False ;
              cxColLayer4.Visible := False ;
              cxColLayer5.Visible := False ;
              cxColLayer6.Visible := False ;
              cxColLayer7.Visible := False ;
              cxColLayer8.Visible := False
            end;

        cxtRouting.Text := f.Jenis;
        cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
        cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
        cxlMesin.Properties.OnEditValueChanged := nil ;
        cxlMesin.EditValue := q.FieldByName('kode_mesin').AsString;
        cxlMesin.Properties.OnEditValueChanged := cxlMesinPropertiesEditValueChanged;
        cxsSpeed.EditValue := q.FieldByName('speed').AsFloat;
        cxsSpeed.Enabled := False ;
        cxsDIE.EditValue := q.FieldByName('die').AsFloat ;
        cxsTreatLuar.EditValue := q.FieldByName('treat_luar').AsFloat;
        cxsTreatDalam.EditValue := q.FieldByName('treat_dalam').AsFloat;
        cxtPolaTreatLuar.Text := q.FieldByName('pola_tl').AsString;
        cxtPolaTreatDalam.Text := q.FieldByName('pola_td').AsString;
          if (Jenis = 'EXTRUSI') or (Jenis = 'EXTRUSION') then begin
             cxsDIE.Visible := True ;
              cxsBUR.Visible := True;
              cxsMeter.Visible := True ;
              cxsKgMeter.Visible := True ;
              cxsMeterRoll.Visible := True;
              cxsRoll1.Visible := True ;
              cxsPanjangExtru.Visible := True ;
              cxsBeratMeter.Visible := True ;
              cxLabel20.Visible := True ;
              cxLabel25.Visible := True ;
              cxLabel21.Visible := True ;
              cxLabel22.Visible := True ;
              cxLabel23.Visible := True ;
              cxLabel28.Visible := True ;
              cxLabel29.Visible := True ;
              cxLabel24.Visible := True ;
              cxGroupBox10.Visible := True
          end
            else begin
             cxsDIE.Visible := False ;
            cxsBUR.Visible := False  ;
            cxsMeter.Visible := False;
            cxsKgMeter.Visible := false ;
              cxsMeterRoll.Visible := false;
              cxsRoll1.Visible := False;
              cxsPanjangExtru.Visible := False ;
              cxsBeratMeter.Visible := False ;
                cxLabel20.Visible := False;
                cxLabel22.Visible := False ;
                cxLabel23.Visible := False ;
              cxLabel24.Visible := False ;
              cxLabel25.Visible := False ;
              cxLabel28.Visible := False ;
              cxLabel29.Visible := False ;
              cxLabel21.Visible := False;
               cxGroupBox10.Visible := false
           end  ;

            if (Jenis = 'MIXING') then begin
              cxLabel26.Visible := False ;
              cxsLine.Visible := False ;
              cxLabel27.Visible := False ;
              cxsTube.Visible := False
              end
              else begin
                cxLabel26.Visible := True ;
              cxsLine.Visible := True ;
               cxLabel27.Visible := True ;
              cxsTube.Visible := True
              end;


        try
          if (q.FieldByName('die').AsFloat<>0) then
          cxsBUR.EditValue :=( ((q.FieldByName('lebar_buka').AsFloat*10)/q.FieldByName('die').AsFloat/(157))*100) ;
          if (q.FieldByName('tebal').AsFloat<>0) or (q.FieldByName('lebar_buka').AsFloat<>0) or (q.FieldByName('berat_jenis').AsFloat<>0) then
          cxsMeter.EditValue := (cxsQtySPK.EditValue *100)/(q.FieldByName('tebal').AsFloat*q.FieldByName('lebar_buka').AsFloat*(q.FieldByName('berat_jenis').AsFloat/100)) *10;
          if (q.FieldByName('standar_roll').AsFloat<>0) then  begin
          cxsKgMeter.EditValue := (q.FieldByName('standar_roll').AsFloat*(q.FieldByName('tebal').AsFloat*q.FieldByName('lebar_buka').AsFloat*(q.FieldByName('berat_jenis').AsFloat/100))/1000)*10;
          cxsMeterRoll.EditValue := q.FieldByName('standar_roll').AsFloat;

        end ;
        except
            on E: Exception do begin
          MsgBox('Data Master Item Belum Lengkap,Silahkan Periksa Kembali!');
        end;
        end;

        //cxsBerat.Value := q.FieldByName('berat_bersih').Value;
        cxsBerat.Value := q.FieldByName('berat_kotor').Value;

        cxtSatA.Text := q.FieldByName('unitid').AsString;
        cxtSatB.Text := 'GR';
        cxtUnitID.Text := q.FieldByName('unitsetid').AsString;
        cxlSatuan.EditValue := q.FieldByName('unitid').AsString;
        cxLabel14.Caption := 'Berat Kotor';
      end;

      ts := (f.parent as TcxTabSheet);
      ts.Caption := q.FieldByName('routing').AsString;

      f.NoSO := cxtNoSO.Text;
      f.QtySO := cxsQtySO.Value;

      f.Show;

      q.Next;
    end;
    q.Close;

    pg.ActivePageIndex := 1;

    pg.Pages[1].PageIndex := pg.Tabs.Count - 1;
    pg.Pages[pg.Tabs.Count-1].TabVisible := False;
  end
  else begin
    q := OpenRS('SELECT a.*, c.* FROM v_so_det a ' +
      'LEFT JOIN tbl_mo b ON a.no_bukti = b.no_so ' +
      'LEFT JOIN tbl_spk c ON b.no_mo = c.no_mo ' + 
      'WHERE a.no_bukti = ''%s'' AND a.kode_brg = ''%s'' AND c.routing = ''BJ''',
      [mNoSO, mKodeBrg]);

    f := TfrmTmpBuatSPK.Create(nil);
    f.ManualDock(pg, pg, alClient);
    f.Jenis := 'BJ';
    f.Nourut := q.FieldByName('no_urut').AsInteger;
    ts := (f.parent as TcxTabSheet);
    ts.Caption := 'Barang Jadi';
    with f do begin
      cxtNoSPK.Text := q.FieldbyName('no_spk').AsString;
      cxtKodeBrg.Text := mKodeBrg;
      cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
      cxdStartUp.Date := q.FieldByName('startup').AsDateTime;
      cxdMulai.Date := q.FieldByName('mulai').AsDateTime;
      cxdSelesai.Date := q.FieldByName('selesai').AsDateTime;
    end;
    f.Show;

    // ambil routing
    q := OpenRS('SELECT c.no_spk, c.kode_brg, d.deskripsi, c.startup, c.mulai, c.selesai, ' +
      'c.routing, c.no_urut ' +
      'FROM v_so_det a ' +
      'LEFT JOIN tbl_mo b ON a.no_bukti = b.no_so ' +
      'LEFT JOIN tbl_spk c ON b.no_mo = c.no_mo ' +
      'LEFT JOIN tbl_barang d ON c.kode_brg = d.kode ' +
      'WHERE a.no_bukti = ''%s'' AND a.kode_brg = ''%s'' AND c.routing <> ''BJ''',
      [mNoSO, mKodeBrg]);

    while not q.Eof do begin

      f := TfrmTmpBuatSPK.Create(nil);
      f.ManualDock(pg, pg, alClient);
      f.Nourut := q.FieldByName('no_urut').AsInteger;

      with f do begin
        cxtNoSPK.Text := q.FieldByName('no_spk').AsString;
        cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
        cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
        cxdStartUp.Date := q.FieldByName('startup').AsDateTime;
        cxdMulai.Date := q.FieldByName('mulai').AsDateTime;
        cxdSelesai.Date := q.FieldByName('selesai').AsDateTime;
      end;

      ts := (f.parent as TcxTabSheet);
      ts.Caption := q.FieldByName('routing').AsString;
      f.Show;

      q.Next;
    end;
    q.Close;
  end;

end;

procedure TfrmBuatSPK2.CloneFSB(AAncestor: TComponent);

  function CloneComponent(AAncestor: TComponent): TComponent;
  var
    XMemoryStream: TMemoryStream;
    XTempName: string;
  begin
    Result:=nil;
    if not Assigned(AAncestor) then
      exit;
    XMemoryStream:=TMemoryStream.Create;
    try
      XTempName:=AAncestor.Name;
      AAncestor.Name:='clone_' + XTempName;
      XMemoryStream.WriteComponent(AAncestor);
      AAncestor.Name:=XTempName;
      XMemoryStream.Position:=0;
      Result:=TComponentClass(AAncestor.ClassType).Create(AAncestor.Owner);
      if AAncestor is TControl then TControl(Result).Parent:=TControl(AAncestor).Parent;
      XMemoryStream.ReadComponent(Result);
    finally
      XMemoryStream.Free;
    end;
  end;

var
  aFsb: TfrxScrollBox;
  Ctrl, Ctrl_: TComponent;
  cxEdit: TcxTextEdit;
  i: Integer;
begin
  {
  TComponent(aFsb) := CloneComponent(frxScrollBox1);
  aFsb.Parent := cxTabSheet2;
  aFsb.Align := alClient;
  aFsb.Visible := True;


  for i := 0 to frxScrollBox1.ControlCount - 1 do begin
    try
    Ctrl := TComponent(frxScrollBox1.Controls[i]);

    if Ctrl.ClassName = 'TcxTextEdit' then begin
      cxEdit := Ctrl as TcxTextEdit;
      Ctrl_ := CloneComponent(cxEdit);
    end
    else
      Ctrl_ := CloneComponent(Ctrl);

    TControl(Ctrl_).Parent := aFsb;
    TControl(Ctrl_).Left := TControl(Ctrl).Left;
    TControl(Ctrl_).top := TControl(Ctrl).top;
    except
    end;
  end;
  }
end;

procedure TfrmBuatSPK2.Button2Click(Sender: TObject);
var
  f: TfrmTmpBuatSPK;
  i,j: Integer;
  ts: TcxTabSheet;
begin
  inherited;

  for i := 0 to pg.PageCount - 1 do begin
    ts := pg.Pages[i];
    f := (ts.Controls[0] as TfrmTmpBuatSPK);

    MsgBox(f.Jenis);
    //f.cxtNoSPK01.Text := 'NO. SPK ' + f.Jenis;

    {
    for j := 0 to ts.ControlCount - 1 do begin
      MsgBox(ts.Caption);
      MsgBox(ts.Controls[i].ClassName);
    end;
    }
  end;

end;

procedure TfrmBuatSPK2.btnSimpanClick(Sender: TObject);
var
  i,J: Integer;
  f: TfrmTmpBuatSPK;
  ts: TcxTabSheet;
  q, qmo,r: TZQuery;
  sNoSPK, sNoMO, sNoSPK_Induk: string;
  fQtySpk, fDetBom, fMesin, fTglStartup, fTglSelesai: Boolean;
begin

  // cek qty, mesin dan detail bom
  for i := 1 to pg.PageCount-2 do begin
    ts := pg.Pages[i];
    f := (ts.Controls[0] as TfrmTmpBuatSPK);
    fQtySpk := true;
    fDetBom := true;
    fMesin := true;
    fTglStartup := true;
    fTglSelesai := true;

    if f.cxsQtySPK.Value = 0 then
      fQtySpk := false;
    if f.nxGrdDet.RowCount = 0 then
      fDetBom := false;
    if f.cxlMesin.Text = '' then
      fMesin := false;
    if VarIsNull(f.cxdStartUp.EditValue) then
      fTglStartup := false;
    if VarIsNull(f.cxdSelesai.EditValue) then
      fTglSelesai := false;

    if not fQtySpk then begin
      MsgBox('Ada Qty. SPK yang masih kosong.');
      Abort;
    end;

    //if not fDetBom then begin
    // MsgBox('Ada detail BOM yang belum diisi.');
    // Abort;
    //end;

    if not fMesin then begin
      MsgBox('Pilihan mesin harus di isi.');
      Abort;
    end;

    if not fTglStartup then begin
      MsgBox('Tanggal Start Up harus di isi.');
      Abort;
    end;

    if not fTglSelesai then begin
      MsgBox('Tanggal Selesai harus di isi.');
      Abort;
    end;
  end;

  try
    dm.zConn.StartTransaction;
    //for i := 1 to pg.PageCount - 1 do begin
    for i := pg.PageCount - 2 downto 1 do begin
      ts := pg.Pages[i];
      f := (ts.Controls[0] as TfrmTmpBuatSPK);

      if mJenisEdit = 'add' then begin

        if f.Jenis = 'BJ' then begin
          sNoSPK := GetLastFak('spk');
          UpdateFaktur(Copy(sNoSPK,1,8));
          sNoSPK_Induk := sNoSPK;
        end
        else if f.Jenis = 'MIXING' then begin
          sNoSPK := GetLastFak('spk-mixing');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if (f.Jenis = 'EXTRUSI') or (f.Jenis='EXTRUSION') then begin
          sNoSPK := GetLastFak('spk-extrusi');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'PRINTING' then begin
          sNoSPK := GetLastFak('spk-printing');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'GUSET' then begin
          sNoSPK := GetLastFak('spk-guset');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'CONVERTING' then begin
          sNoSPK := GetLastFak('spk-converting');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'PACKING' then begin
          sNoSPK := GetLastFak('spk-packing');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'SORTING' then begin
          sNoSPK := GetLastFak('spk-sorting');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'CRUSHER' then begin
          sNoSPK := GetLastFak('spk-crusher');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'WASHING' then begin
          sNoSPK := GetLastFak('spk-washing');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'PELET' then begin
          sNoSPK := GetLastFak('spk-pelet');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'INJECTION' then begin
          sNoSPK := GetLastFak('spk-injection');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'CASTING' then begin
          sNoSPK := GetLastFak('spk-casting');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end
        else if f.Jenis = 'MANUAL' then begin
          sNoSPK := GetLastFak('spk-manual');
          UpdateFaktur(Copy(sNoSPK,1,12));
        end;

      end;

      q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''', [sNoSPK]);
      q.Insert;
      q.FieldByName('no_spk').AsString := sNoSPK;
      q.FieldByName('no_mo').AsString := mNoMO;
      q.FieldByName('kode_brg').AsString := f.cxtKodeBrg.Text;
      q.FieldByName('qty').AsFloat := f.cxsQtySPK.Value;
      q.FieldByName('kode_mesin').AsString := f.cxlMesin.EditValue;
      q.FieldByName('routing').AsString := f.Jenis;
      q.FieldByName('startup').AsDateTime := f.cxdStartUp.EditValue;
      q.FieldByName('mulai').AsDateTime := f.cxdMulai.EditValue;
      q.FieldByName('selesai').AsDateTime := f.cxdSelesai.EditValue;
      q.FieldByName('no_urut').AsInteger := f.Nourut;
      q.FieldByName('keterangan').AsString := f.cxMemoKet.Lines.Text;
      q.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
      q.FieldByName('toleransi').AsFloat := f.cxsToleransi.Value;
      q.FieldByName('pemanasan').AsFloat := cxsPemanasan.EditValue;
      q.FieldByName('jenis_spk').AsString := f.Jenis;
      q.FieldByName('speed').AsString := f.cxsSpeed.value;
      q.FieldByName('target_tgl_kirim').AsDateTime := cxdTargetKirim.Date;
      q.FieldByName('line').AsInteger := f.cxsLine.value;
      q.FieldByName('lebar_tube').AsFloat := f.cxsTube.value;

        if (f.Jenis = 'EXTRUSI') or (f.Jenis='EXTRUSION') then begin
          q.FieldByName('die').AsFloat := f.cxsDIE.Value;
          q.FieldByName('bur').AsFloat := f.cxsBUR.Value;
          q.FieldByName('meter').AsFloat := f.cxsMeter.Value;
          q.FieldByName('roll').AsFloat := f.cxsRoll1.Value;
          q.FieldByName('meterroll').AsFloat := f.cxsMeterRoll.Value;
          q.FieldByName('kgroll').AsFloat := f.cxsKgMeter.Value;
          q.FieldByName('panjang_extru').AsFloat := f.cxsPanjangExtru.Value;
          q.FieldByName('berat_meter').AsFloat := f.cxsBeratMeter.Value;
        end;

         if f.cxChkAktif.Checked then
        q.FieldByName('f_inline').AsInteger := 1
      else
        q.FieldByName('f_inline').AsInteger := 0;

      if f.Jenis <> 'BJ' then
        q.FieldByName('no_spk_induk').AsString := sNoSPK_Induk;

      if f.Jenis = 'BJ' then begin
        r := OpenRS('SELECT * FROM tbl_konversi_spk WHERE no_spk = ''%s''', [sNoSPK_Induk]);
           with cxTblConversi.DataController do begin
           for J := 0 to RecordCount - 1 do begin
            r.Insert;
            r.FieldByName('no_spk').AsString := sNoSPK_Induk ;
            r.FieldByName('unitid').AsString :=  Values[J, cxColSatuan.Index];
            r.FieldByName('qty').AsFloat := Values[J, cxColKonversi.Index];
            r.Post;
            end;
        end;
        r.Close ;
      end;

      q.Post;

      if f.Jenis <> 'BJ' then begin
        sNoMO := GetLastFak('master_order');
        UpdateFaktur(Copy(sNoMO,1,7));
        qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''', [sNoMO]);
        qmo.Insert;
        qmo.FieldByName('no_so').AsString := mNoSO;
        qmo.FieldByName('no_mo').AsString := sNoMO;
        qmo.FieldByName('no_spk').AsString := sNoSPK;
        qmo.FieldByName('kode_brg').AsString := f.cxtKodeBrg.Text;
        qmo.FieldByName('jenis').AsString := f.Jenis;
        qmo.Post;
      end
      else begin
        qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s'' AND ((no_spk IS NULL) or (TRIM(no_spk) = ''''))', [mNoMO]);
        if not qmo.IsEmpty then begin
          qmo.Edit;
          sNoMO := mNoMO;
        end
        else begin
          qmo.Close;
          sNoMO := GetLastFak('master_order');
          UpdateFaktur(Copy(sNoMO,1,7));
          qmo := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''', [sNoMO]);
          qmo.Insert;
        end;
        qmo.FieldByName('no_mo').AsString := sNoMO;
        qmo.FieldByName('no_so').AsString := mNoSO;
        qmo.FieldByName('no_spk').AsString := sNoSPK;
        qmo.FieldByName('kode_brg').AsString := f.cxtKodeBrg.Text;
        qmo.FieldByName('jenis').AsString := f.Jenis;
        qmo.Post;
        qmo.Close;
      end;

      f.SimpanBOM;

    end;

    dm.zConn.Commit;

    MsgBox('SPK sudah disimpan.');
    Close;
    
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end; 
  end;

end;

procedure TfrmBuatSPK2.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmBuatSPK2.btnProsesSPKClick(Sender: TObject);
var
  i,j: Integer;
  f: TfrmTmpBuatSPK;
  ts: TcxTabSheet;
  q,z,r : TZQuery ;
  persen_plong : Real ;
begin
  inherited;
  cxGrid2.Visible := True ;
  // 29-10-2017
  if (cxsQtySPK.Value = 0) or (cxsQtySPK.Value < 0) then begin
    MsgBox('Qty. SPK harus di isi (positif).');
    cxsQtySPK.SetFocus;
    Abort;
  end;

  if Trim(cxdTargetKirim.Text) = '' then begin
    MsgBox('Target tanggal kirim harus di isi.');
    cxdTargetKirim.SetFocus;
    Abort;
  end;

  Screen.Cursor := crSQLWait;

  for i := 1 to pg.PageCount-1 do begin
    ts := pg.Pages[i];
    f := (ts.Controls[0] as TfrmTmpBuatSPK);
    //if (Copy(cxtKodeBrg.Text,2,2) = '07') or (Copy(cxtKodeBrg.Text,2,2) = '08')  or (Copy(cxtKodeBrg.Text,2,2) = '06') then
     if cxtSatuan.Text='PCS' then
   cxsPCS.EditValue := (cxsQtySO.EditValue/cxsQty1.EditValue)* cxsQtySPK.EditValue ;
    f.PCS := cxsPCS.EditValue ;
    f.KodeBrg := cxtKodeBrg.EditValue;
    f.pemanasan := cxsPemanasan.EditValue ;
    if f.Jenis <> '' then begin
      f.ProsesSPK(cxsQtySPK.Value, cxsToleransi.Value);
    end;

  end;

  Screen.Cursor := crDefault;


   z := OpenRS('SELECT * FROM tbl_barang where kode =''%s''',[cxtKodeBrg.Text ]) ;

   //f (z.FieldByName('tebal').AsFloat<>0) or (z.FieldByName('lebar_buka').AsFloat<>0) or (z.FieldByName('berat_jenis').AsFloat<>0) then

   if (f.cxsMeterRoll.EditValue<>0) then
   f.cxsRoll1.EditValue := (f.cxsMeter.EditValue/f.cxsMeterRoll.EditValue)  ;

       if (z.FieldByname('panjang_plong').AsFloat=0) or (z.FieldByname('lebar_plong').AsFloat=0) then
      persen_plong := 0
      else
      persen_plong := (z.FieldByname('panjang_plong').AsFloat * z.FieldByname('lebar_plong').AsFloat) / (z.FieldByname('lebar_buka').AsFloat * z.FieldByname('panjang').AsFloat);

    
    r := OpenRS('select a.*,b.conversi from tbl_unitset_det as a join (SELECT unitsetid,`convert` as conversi FROM tbl_unitset_det where unitid="KG") as b on a.unitsetid=b.unitsetid WHERE a.unitsetid=''%s'' order by no asc',[z.FieldByName('unitsetid').AsString ]);
      while not r.Eof do begin
        with cxTblConversi.DataController do begin
          j := AppendRecord;
          Values[j, cxColNo.Index] := r.FieldByName('no').AsInteger;
          Values[j, cxColSatuan.Index] := r.FieldByName('unitid').AsString;
          Values[j, cxColKonversi.Index] :=((cxsQtySPK.EditValue/r.FieldByName('conversi').AsFloat)*r.FieldByName('convert').AsFloat);
        end;
        r.Next;
      end;
      r.Close;

      cxsRoll.EditValue:=  ((cxsQtySPK.EditValue/(cxsQty1.EditValue/cxsQtySO.EditValue)));

  z.Close ;

   //cxskonversipcs.EditValue := ((cxsQtySPK.Value + ((cxsQtySPK.Value/cxsToleransi.Value/100)))/BB)*1000 ;
   //cxLabel9.Visible := True ;
   //cxKonversi.Visible := True ;
   cxGrid2.Visible := True ;

end;


procedure TfrmBuatSPK2.cxsQtySPKPropertiesChange(Sender: TObject);
var
  q : TZQuery ;
begin
  inherited;
   q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[cxtKodeBrg.Text]);
   if cxtSatuan.Text='PCS' then
   cxsPCS.EditValue := (cxsQtySO.EditValue/cxsQty1.EditValue)* cxsQtySPK.EditValue
   else
  cxsPCS.EditValue := (cxsQtySPK.EditValue/(q.FieldByName('berat_bersih').AsFloat/1000));
end;

end.
