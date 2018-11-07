unit unFrmEditSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxCheckBox, cxButtonEdit,
  cxDBLookupComboBox, cxSpinEdit, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, cxMemo, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxMaskEdit, cxTextEdit,
  cxLabel, StdCtrls, ExtCtrls, DateUtils;

type
  TfrmEditSPK = class(TfrmTransBaru)
    cxLabel1: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxtRouting: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtNoIS: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxtBahanDasar: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxsBeratJenis: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxsMeterRoll: TcxSpinEdit;
    cxsKgMeter: TcxSpinEdit;
    cxsDIE: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxsBUR: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxCmbJenisBentuk: TcxComboBox;
    cxLabel11: TcxLabel;
    cxLabel16: TcxLabel;
    cxsToleransi: TcxSpinEdit;
    cxLabel7: TcxLabel;
    cxsQtySPK: TcxSpinEdit;
    cxLabel14: TcxLabel;
    cxsBerat: TcxSpinEdit;
    cxlSatuan: TcxLookupComboBox;
    cxtSatB: TcxTextEdit;
    cxtUnitID: TcxTextEdit;
    cxLabel22: TcxLabel;
    cxsMeter: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxsRoll1: TcxSpinEdit;
    cxsSpeed: TcxSpinEdit;
    cxLabel19: TcxLabel;
    cxlMesin: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    cxLabel4: TcxLabel;
    cxdStartUp: TcxDateEdit;
    cxLabel5: TcxLabel;
    cxdMulai: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxdSelesai: TcxDateEdit;
    cxMemoKet: TcxMemo;
    cxLabel9: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblBOM: TcxGridTableView;
    cxCollockGroup: TcxGridColumn;
    cxColLockDetail: TcxGridColumn;
    cxColLockPersen: TcxGridColumn;
    cxColSub: TcxGridColumn;
    cxColBomKode: TcxGridColumn;
    cxColDes2: TcxGridColumn;
    cxColDes: TcxGridColumn;
    cxColStock: TcxGridColumn;
    cxColLayer1: TcxGridColumn;
    cxColLayer2: TcxGridColumn;
    cxColLayer3: TcxGridColumn;
    cxColPersen: TcxGridColumn;
    cxColBom: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColTotal: TcxGridColumn;
    cxColSatuan1: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    zqrSatuan: TZQuery;
    dsSatuan: TDataSource;
    zqrBrgBom: TZQuery;
    dsBrgBom: TDataSource;
    zqrMesin: TZQuery;
    dsMesin: TDataSource;
    zqrFormula: TZQuery;
    dsFormula: TDataSource;
    cxLabel24: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxdStartUpPropertiesChange(Sender: TObject);
    procedure cxColDes2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxsMeterRollPropertiesEditValueChanged(Sender: TObject);
  private
    mNoSPK: string;
  public
    property NoSPK : string read mNoSPK write mNoSPK;
  end;

var
  frmEditSPK: TfrmEditSPK;

implementation

uses unTools, unAplikasi, unDm, unFrmCari;

{$R *.dfm}

procedure TfrmEditSPK.FormCreate(Sender: TObject);
begin
  inherited;
  zqrSatuan.Open ;
  zqrBrgBom.Open;
  zqrMesin.Open ;
  zqrFormula.Open ;
end;

procedure TfrmEditSPK.FormShow(Sender: TObject);
var
  q,b,z : TZQuery ;
  i : Integer ;
  Jenis: string;
begin
  inherited;

  q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''',[mNoSPK]);
  cxtNoSPK.Text:= q.FieldByName('no_spk').AsString ;
  cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString ;

  z := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[cxtKodeBrg.Text]);
  cxtDeskripsi.Text := z.FieldByName('deskripsi').AsString;
  cxtBahanDasar.Text := z.FieldByName('base_material').AsString ;
  cxsBeratJenis.Value := z.FieldByName('berat_jenis').AsFloat;
  cxlSatuan.EditValue := z.FieldByName('unitid').AsString;
  cxtUnitID.Text := z.FieldByName('unitsetid').AsString;
  cxsBerat.Value := z.FieldByName('berat_bersih').Value;
  cxtNoIS.Text := z.FieldByname('no_is').AsString;
  z.Close;

  cxsToleransi.EditValue := q.FieldByName('toleransi').AsFloat;
  cxsQtySPK.Value:=q.FieldByName('qty').AsFloat;
  cxlMesin.EditValue:=q.FieldByName('kode_mesin').AsString;
  cxtRouting.text:=q.FieldByName('routing').AsString;
  cxdStartUp.EditValue:=q.FieldByName('startup').AsDateTime;
  cxdMulai.EditValue:=q.FieldByName('mulai').AsDateTime;
  cxdSelesai.EditValue:=q.FieldByName('selesai').AsDateTime;
  if  q.FieldByName('keterangan').AsString<>'' then
  cxMemoKet.Lines.Text:=q.FieldByName('keterangan').AsString;
  cxsToleransi.Value:= q.FieldByName('toleransi').AsFloat;
  Jenis:=q.FieldByName('jenis_spk').AsString;
  cxsSpeed.value:=q.FieldByName('speed').AsFloat;
  if (Jenis = 'EXTRUSI') or (Jenis='EXTRUSION') then begin
    cxsDIE.Value:=q.FieldByName('die').AsFloat;
    cxsDIE.Visible := True ;
    cxsBUR.Value:=q.FieldByName('bur').AsFloat;
    cxsBUR.Visible := True ;
    cxsMeter.Value:=q.FieldByName('meter').AsFloat;
    cxsMeter.Visible := True ;
    cxsRoll1.Value:=q.FieldByName('roll').AsFloat;
    cxsRoll1.Visible := True ;
    cxsMeterRoll.Value:=q.FieldByName('meterroll').AsFloat;
    cxsMeterRoll.Visible := True ;
    cxsKgMeter.Value:=q.FieldByName('kgroll').AsFloat;
    cxsKgMeter.Visible := True ;
  end
  else begin
    cxsDIE.Visible := False ;
    cxsBUR.Visible := False ;
    cxsMeter.Visible := False ;
    cxsRoll1.Visible := False ;
    cxsMeterRoll.Visible := False ;
    cxsKgMeter.Visible := False ;
    cxLabel20.Visible := False;
    cxLabel22.Visible := False ;
    cxLabel23.Visible := False ;
    cxLabel24.Visible := False ;
    cxLabel25.Visible := False ;
    cxLabel21.Visible := False
  end;
  q.Close;

  b := OpenRS('SELECT a.*,b.*,b.qty as mat_saran,c.stok,c.kelompok,c.deskripsi FROM tbl_bom_det as a ' +
    'left join tbl_formula_subdet as b on a.kode_brg=b.kode_brg ' +
    'left join tbl_barang as c on a.kode_brg=c.kode WHERE a.no_spk = ''%s'' and b.kode=''%s''',[cxtNoSPK.Text,cxtKodeBrg.Text]);
  while not b.Eof do begin
    with cxTblBOM.DataController do begin
      i := AppendRecord;
      Values[i, cxColBomKode.Index] := b.FieldByName('kode_brg').Value;
      Values[i, cxColDes.Index] := b.FieldByName('kode_brg').Value;
      Values[i, cxColDes2.Index] := b.FieldByname('deskripsi').Value;
      Values[i, cxColLockPersen.Index] := b.FieldByName('l_persen').Value;
      Values[i, cxColLockDetail.Index] := b.FieldByName('l_detail').Value;
      Values[i, cxCollockGroup.Index] := b.FieldByName('l_group').Value;
      Values[i, cxColSub.Index] := b.FieldByName('kelompok').Value;
      Values[i, cxColStock.Index] := b.FieldByName('stok').AsFloat;
      Values[i, cxColLayer1.Index] := b.FieldByName('layer1').AsFloat;
      Values[i, cxColLayer2.Index] := b.FieldByName('layer2').AsFloat;
      Values[i, cxColLayer3.Index] := b.FieldByName('layer3').AsFloat;
      Values[i, cxColPersen.Index] := b.FieldByName('persen').AsFloat;
      Values[i, cxColBom.Index] := b.FieldByName('mat_saran').AsFloat;
      Values[i, cxColSatuan.Index] := b.FieldByName('satuan').AsString;
      //Values[i, cxColSatuan1.Index] := cxlSatuan.Text;
      Values[i, cxColSatuan1.Index] := Values[i, cxColSatuan.Index];
      Values[i, cxColTotal.Index] := b.FieldByName('qty').AsFloat;
    end;
    b.Next;
  end;

  b.Close;
end;

procedure TfrmEditSPK.cxdStartUpPropertiesChange(Sender: TObject);
var
  q: TZQuery;
  dt: TDateTime;
begin
  inherited;
  if (cxlMesin.Text <> '') and (not VarIsNull(cxdStartUp.EditValue)) then begin
    q := OpenRS('SELECT * FROM tbl_mesin WHERE kode = ''%s''',[cxlMesin.EditValue]);
    dt := cxdStartUp.EditValue;
    dt := IncMinute(dt, q.FieldByName('setup_time').AsInteger);
    cxdMulai.EditValue := dt;

    if (Jenis = 'MIXING') or (Copy(cxtDeskripsi.Text,1,3)='MIX') then
        cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,((cxsQtySPK.EditValue/cxsSpeed.EditValue)*60))
        else if (Jenis = 'EXTRUSI') or (Jenis = 'EXTRUSION') or (Copy(cxtDeskripsi.Text,1,3)='EXT') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsMeter.EditValue/cxsSpeed.EditValue)*60)
        else if (Jenis = 'PRINTING') or (Copy(cxtDeskripsi.Text,1,3)='PRN') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsMeter.EditValue/cxsSpeed.EditValue)*60)
        else if (Jenis = 'GUSET') or (Copy(cxtDeskripsi.Text,1,3)='GST') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,((cxsQtySPK.EditValue/ cxsSpeed.EditValue)*60)/ q.FieldByName('line').AsFloat)
        else if (Jenis = 'CONVERTING') or (Copy(cxtDeskripsi.Text,1,3)='CVT') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsQtySPK.EditValue/ q.FieldByName('line').AsFloat / q.FieldByName('output').AsFloat))
        else if (Jenis = 'PACKING') or (Copy(cxtDeskripsi.Text,1,3)='PCK') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsQtySPK.EditValue/ q.FieldByName('output').AsFloat) );

    q.Close;
  end;
end;

procedure TfrmEditSPK.cxColDes2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  f: TFrmCari;
  s: TStringList;
  fKode,fkode1: TField;
  q: TZQuery;
  i: Integer;
begin

  i := cxTblBOM.DataController.GetFocusedRecordIndex;
  f := TFrmCari.Create(self);
  f.jenis := 'barang-bom-spk';

  f.Group := cxTblBOM.DataController.Values[i, cxColSub.Index];
  f.KodeBrg := cxtKodeBrg.Text;


  if f.ShowModal = idOk then begin
    s := f.Result;

    fKode := s.Objects[0] as TField;
    fKode1 := s.Objects[1] as TField;

    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_alternatif as a join tbl_barang as b on a.kode_alt=b.kode WHERE a.kode = ''%s'' and a.kode_bahan=''%s''',
      [fKode.AsString, fkode1.AsString]);
    with cxTblBOM.DataController do begin
      Values[i, cxColBomKode.Index] := q.FieldByName('kode').AsString;
      Values[i, cxColDes2.Index] := q.FieldByname('deskripsi').AsString;
    end;
    q.Close;
  end;

end;

procedure TfrmEditSPK.btnSimpanClick(Sender: TObject);
var
  tbl_bom, tbl_bom_d,q: TZQuery;
  i: Integer;
begin

      q := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''',[cxtNoSPK.Text]);
      q.Edit;
      q.FieldByName('kode_mesin').AsString := cxlMesin.EditValue;
      q.FieldByName('startup').AsDateTime := cxdStartUp.EditValue;
      q.FieldByName('mulai').AsDateTime :=cxdMulai.EditValue;
      q.FieldByName('selesai').AsDateTime :=cxdSelesai.EditValue;
      q.FieldByName('keterangan').AsString := cxMemoKet.Lines.Text;
      q.FieldByName('speed').AsString := cxsSpeed.value;

        if (cxtRouting.Text ='EXTRUSI') or (cxtRouting.Text='EXTRUSION') then begin
          q.FieldByName('die').AsFloat := cxsDIE.Value;
          q.FieldByName('bur').AsFloat := cxsBUR.Value;
          q.FieldByName('meter').AsFloat := cxsMeter.Value;
          q.FieldByName('roll').AsFloat := cxsRoll1.Value;
          q.FieldByName('meterroll').AsFloat := cxsMeterRoll.Value;
          q.FieldByName('kgroll').AsFloat := cxsKgMeter.Value;
        end;
        q.Post;

  dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_det WHERE no_spk = ''' +
    cxtNoSPK.Text + '''');

  tbl_bom_d := OpenRS('SELECT * FROM tbl_bom_det WHERE no_spk = ''%s''', [cxtNoSPK.Text]);
 
  with cxTblBOM.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      tbl_bom_d.Insert;
      tbl_bom_d.FieldByName('no_mo').AsString := '';
      tbl_bom_d.FieldByName('kode_brg').AsString :=  Values[i, cxColBomKode.Index];
      tbl_bom_d.FieldByName('satuan').AsString :=  Values[i, cxColSatuan1.Index];
      tbl_bom_d.FieldByName('qty').AsFloat := Values[i, cxColTotal.Index];
      tbl_bom_d.FieldByName('layer1').AsFloat := Values[i, cxColLayer1.Index];
      tbl_bom_d.FieldByName('layer2').AsFloat := Values[i, cxColLayer2.Index];
      tbl_bom_d.FieldByName('layer3').AsFloat := Values[i, cxColLayer3.Index];
      tbl_bom_d.FieldByName('mono').AsFloat := Values[i, cxColPersen.Index];
      tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
      tbl_bom_d.Post;
    end;
  end;
  tbl_bom_d.Close;

  MsgBox('Pengeditan SPK sudah berhasil disimpan.');
  ModalResult := mrOk; 
end;

procedure TfrmEditSPK.cxsMeterRollPropertiesEditValueChanged(
  Sender: TObject);
   var
    z : TZQuery ;
begin
  inherited;
     z := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''',
    [cxtKodeBrg.Text] );
  cxsKgMeter.EditValue := (cxsMeterRoll.EditValue*(z.FieldByName('tebal').AsFloat*z.FieldByName('lebar_buka').AsFloat*(z.FieldByName('berat_jenis').AsFloat/100))/1000);
  cxsRoll1.EditValue := cxsMeter.EditValue/cxsMeterRoll.EditValue;
  z.Close ;
end;

end.
