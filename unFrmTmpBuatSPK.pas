unit unFrmTmpBuatSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxLabel, ExtCtrls, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  StdCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ComCtrls, cxMemo,
  dxSkinscxPCPainter, cxPC, DateUtils, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGridDBTableView, cxGrid, cxButtonEdit, cxGroupBox;

type
  TfrmTmpBuatSPK = class(TForm)
    ScrollBox1: TScrollBox;
    zqrMesin: TZQuery;
    dsMesin: TDataSource;
    zqrFormula: TZQuery;
    dsFormula: TDataSource;
    zqrSatuan: TZQuery;
    dsSatuan: TDataSource;
    cxLabel1: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtDeskripsi: TcxTextEdit;
    cxdStartUp: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxdMulai: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxdSelesai: TcxDateEdit;
    cxsQtySPK: TcxSpinEdit;
    cxLabel7: TcxLabel;
    cxlMesin: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    btnProses: TButton;
    cxLabel9: TcxLabel;
    cxMemoKet: TcxMemo;
    cxCmbJenisBentuk: TcxComboBox;
    cxLabel11: TcxLabel;
    cxtNoIS: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxtBahanDasar: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxsBeratJenis: TcxSpinEdit;
    cxsBerat: TcxSpinEdit;
    cxLabel14: TcxLabel;
    cxtSatA: TcxTextEdit;
    cxtSatB: TcxTextEdit;
    cxtUnitID: TcxTextEdit;
    cxlSatuan: TcxLookupComboBox;
    cxLabel16: TcxLabel;
    cxsToleransi: TcxSpinEdit;
    cxLabel15: TcxLabel;
    cxlFormula: TcxLookupComboBox;
    btnTambah: TButton;
    nxGrdDet: TNextGrid;
    nxColHapus2: TNxImageColumn;
    nxColEdit: TNxHyperlinkColumn;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColKodeBrg: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColStok: TNxNumberColumn;
    nxColGudang: TNxTextColumn;
    nxCmbSatuan: TNxComboBoxColumn;
    nxColFormulasi: TNxNumberColumn;
    nxColKomposisi: TNxNumberColumn;
    nxColQtyMO: TNxNumberColumn;
    nxColQtyBOM2: TNxNumberColumn;
    nxColSatuanBom: TNxTextColumn;
    nxColTotal: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    nxColQtyBom: TNxNumberColumn;
    nxColDibuka: TNxTextColumn;
    nxColDibatasi: TNxTextColumn;
    nxColQty2: TNxNumberColumn;
    nxColSatuan2: TNxTextColumn;
    nxColTotal2: TNxNumberColumn;
    nxColBpu: TNxNumberColumn;
    nxColNamaFormula: TNxTextColumn;
    cxtRouting: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxskonversipcs: TcxSpinEdit;
    cxskonversim: TcxSpinEdit;
    cxtEdit: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblBOM: TcxGridTableView;
    cxColSub: TcxGridColumn;
    cxCollockGroup: TcxGridColumn;
    cxColLockDetail: TcxGridColumn;
    cxColBomKode: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    zqrBrgBom: TZQuery;
    dsBrgBom: TDataSource;
    cxColDes: TcxGridColumn;
    cxColStock: TcxGridColumn;
    cxColPersen: TcxGridColumn;
    cxColBom: TcxGridColumn;
    cxColSatuan: TcxGridColumn;
    cxColTotal: TcxGridColumn;
    cxColSatuan1: TcxGridColumn;
    cxColLockPersen: TcxGridColumn;
    cxtSub: TcxTextEdit;
    cxColDes2: TcxGridColumn;
    cxLabel19: TcxLabel;
    cxsSpeed: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxsDIE: TcxSpinEdit;
    cxsBUR: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxsMeter: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxsMeterRoll: TcxSpinEdit;
    cxLabel24: TcxLabel;
    cxsKgMeter: TcxSpinEdit;
    cxLabel25: TcxLabel;
    cxsRoll1: TcxSpinEdit;
    cxColLayer1: TcxGridColumn;
    cxColLayer2: TcxGridColumn;
    cxColLayer3: TcxGridColumn;
    cxsPCS: TcxSpinEdit;
    cxsConv: TcxSpinEdit;
    cxtFormula: TcxTextEdit;
    cxColLayer4: TcxGridColumn;
    cxColLayer5: TcxGridColumn;
    cxColLayer6: TcxGridColumn;
    cxColLayer7: TcxGridColumn;
    cxColLayer8: TcxGridColumn;
    cxChkAktif: TcxCheckBox;
    cxLabel26: TcxLabel;
    cxsLine: TcxSpinEdit;
    cxsbj: TcxSpinEdit;
    cxLabel27: TcxLabel;
    cxsTube: TcxSpinEdit;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxsPanjangExtru: TcxSpinEdit;
    cxsBeratMeter: TcxSpinEdit;
    cxGroupBox10: TcxGroupBox;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxtPolaTreatLuar: TcxTextEdit;
    cxtPolaTreatDalam: TcxTextEdit;
    cxsTreatLuar: TcxSpinEdit;
    cxsTreatDalam: TcxSpinEdit;
    cxColMtp1: TcxGridColumn;
    cxColMtp2: TcxGridColumn;
    cxColMtp3: TcxGridColumn;
    cxColMtp4: TcxGridColumn;
    cxColMtp5: TcxGridColumn;
    cxColMtp6: TcxGridColumn;
    cxColMtp7: TcxGridColumn;
    cxColMtp8: TcxGridColumn;
    cxColId: TcxGridColumn;
    cxColBomKode1: TcxGridColumn;
    procedure FormShow(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxdStartUpPropertiesChange(Sender: TObject);
    procedure cxsQtySPKExit(Sender: TObject);
    procedure cxTblBOMDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblBOMEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxColDes2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxsMeterRollPropertiesEditValueChanged(Sender: TObject);
    procedure cxlMesinPropertiesEditValueChanged(Sender: TObject);
    procedure cxsLinePropertiesEditValueChanged(Sender: TObject);
    procedure cxsTubePropertiesEditValueChanged(Sender: TObject);
    procedure cxsTubePropertiesChange(Sender: TObject);
    procedure cxsMeterRollPropertiesChange(Sender: TObject);
  private
    mJenis: string;
    mNoUrut: Integer;
    mNoSO: string;
    mQtySO: Real;
    mKodeBrg: String ;
    mPCS : Real;
    mPemanasan : Real ;
  public
    property Jenis: string read mJenis write mJenis;
    property Nourut: Integer read mNoUrut write mNoUrut;
    property NoSO: string read mNoSO write mNoSO;
    property PCS:Real read mPCS write mPCS;
    property QtySO: Real read mQtySO write mQtySO;
    property pemanasan: Real read mPemanasan write mPemanasan;
    procedure SimpanBOM;
    procedure ProsesSPK(qtySPK: real; toleransi: real);
    property KodeBrg: string read mKodeBrg write mKodeBrg;
  end;

var
  frmTmpBuatSPK: TfrmTmpBuatSPK;

implementation

uses unAplikasi, unDm, unTools, unFrmBuatSPK2, unFrmCari;

{$R *.dfm}

procedure TfrmTmpBuatSPK.FormShow(Sender: TObject);
begin
  zqrMesin.Open;
  zqrFormula.ParamByName('kode').AsString := cxtKodeBrg.Text;
  zqrFormula.Open;
end;

procedure TfrmTmpBuatSPK.btnTambahClick(Sender: TObject);
var
  q, qs, qt, qb, qkonv, b,c: TZQuery;
  i: integer;
  total, bpu, beratk, s_konv,persen : real;
begin

  cxTblBOM.DataController.RecordCount := 0;
  q := OpenRS('SELECT * FROM v_formula_spkdet WHERE kode = ''%s'' AND nama = ''%s''',
    [zqrFormula.FieldByName('kode').AsString, zqrFormula.FieldByName('nama').AsString]);
    cxtFormula.Text := zqrFormula.FieldByName('nama').AsString;

  qt := OpenRS('SELECT SUM(qty) total FROM v_formula_spkdet WHERE kode = ''%s'' AND nama = ''%s''',
    [zqrFormula.FieldByName('kode').AsString, zqrFormula.FieldByName('nama').AsString]);
    
  total := qt.FieldByName('total').AsFloat;
  qt.Close;

  b := OpenRS('SELECT a.*, b.deskripsi,b.sub_group as kelompok,c.* FROM tbl_formula_subdet a ' +
    'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'LEFT JOIN tbl_mat_saran c ON a.kode_brg = c.kode_brg and a.kode=c.kode and a.nama=c.nama_formula ' +
    'WHERE a.kode = ''%s'' and a.nama=''%s'' ',[cxtKodeBrg.Text ,zqrFormula.FieldByName('nama').AsString]);
  while not b.Eof do begin
    with cxTblBOM.DataController do begin
      i := AppendRecord;
      //Values[i, cxColBomBahan.Index] := z.FieldByName('bahan').Value;
      Values[i, cxColId.Index] := 0;
      Values[i, cxColBomKode1.Index] := b.FieldByName('kode_brg').Value;
      Values[i, cxColBomKode.Index] := b.FieldByName('kode_brg').Value;
      Values[i, cxColDes.Index] := b.FieldByName('kode_brg').Value;
      Values[i, cxColDes2.Index] := b.FieldByname('deskripsi').Value;
      Values[i, cxColLockPersen.Index] := b.FieldByName('l_persen').Value;
      Values[i, cxColLockDetail.Index] := b.FieldByName('l_detail').Value;
      Values[i, cxCollockGroup.Index] := b.FieldByName('l_group').Value;
      Values[i, cxColSub.Index] := b.FieldByName('kelompok').Value;

      c := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G01''',
          [b.FieldByName('kode_brg').AsString]);
      Values[i, cxColStock.Index] := c.FieldByName('stok').AsFloat;
      Values[i, cxColLayer1.Index] := b.FieldByName('layer1').AsFloat;
      Values[i, cxColLayer2.Index] := b.FieldByName('layer2').AsFloat;
      Values[i, cxColLayer3.Index] := b.FieldByName('layer3').AsFloat;
      Values[i, cxColLayer4.Index] := b.FieldByName('layer4').AsFloat;
      Values[i, cxColLayer5.Index] := b.FieldByName('layer5').AsFloat;
      Values[i, cxColLayer6.Index] := b.FieldByName('layer6').AsFloat;
      Values[i, cxColLayer7.Index] := b.FieldByName('layer7').AsFloat;
      Values[i, cxColLayer8.Index] := b.FieldByName('layer8').AsFloat;
      Values[i, cxColMtp1.Index] := b.FieldByName('mtp_layer1').AsFloat;
      Values[i, cxColMtp2.Index] := b.FieldByName('mtp_layer2').AsFloat;
      Values[i, cxColMtp3.Index] := b.FieldByName('mtp_layer3').AsFloat;
      Values[i, cxColMtp4.Index] := b.FieldByName('mtp_layer4').AsFloat;
      Values[i, cxColMtp5.Index] := b.FieldByName('mtp_layer5').AsFloat;
      Values[i, cxColMtp6.Index] := b.FieldByName('mtp_layer6').AsFloat;
      Values[i, cxColMtp7.Index] := b.FieldByName('mtp_layer7').AsFloat;
      Values[i, cxColMtp8.Index] := b.FieldByName('mtp_layer8').AsFloat;
      Values[i, cxColPersen.Index] := b.FieldByName('persen').AsFloat;
      Values[i, cxColBom.Index] := b.FieldByName('qty').AsFloat;
      Values[i, cxColSatuan.Index] := q.FieldByName('satuan').AsString;
      Values[i, cxColSatuan1.Index] := b.FieldByName('satuan').AsString;
      //Values[i, cxColSatuan1.Index] := Values[i, cxColSatuan.Index];
      if b.FieldByName('jns').AsString = 'PERSEN' then begin
          Values[i, cxColTotal.Index] :=
            ((b.FieldByName('persen').AsFloat*cxsQtySPK.Value)/100)*1000;
            end
            else begin

         // if  Copy( b.FieldByName('kode_brg').Value,1,3) = 'C90' then
          //Values[i, cxColTotal.Index] := (Values[i, cxColBom.Index]* cxsQtySPK.Value) + ((Values[i, cxColBom.Index]* cxsQtySPK.Value)*5/100)
         // Values[i, cxColTotal.Index] := (Values[i, cxColBom.Index]* cxsConv.Value) + ((Values[i, cxColBom.Index]* cxsQtySPK.Value)*5/100)
          // else
           //Values[i, cxColTotal.Index] := (Values[i, cxColBom.Index]* cxsQtySPK.Value);
           Values[i, cxColTotal.Index] := (Values[i, cxColBom.Index]* cxsConv.Value);
      end;
    end;
    b.Next;
  end;
  b.Close;

end;

procedure TfrmTmpBuatSPK.FormCreate(Sender: TObject);
begin
  cxCmbJenisBentuk.Properties.Items.CommaText :=
    '"BOTTOM-SEAL","SIDE-SEAL","NON-RECTANGLE","SHEET",';
  zqrSatuan.Open;
  zqrBrgBom.Open;
end;

procedure TfrmTmpBuatSPK.SimpanBOM;
var
  tbl_bom,tbl_bom1, tbl_bom_d: TZQuery;
  i: Integer;
begin

  if cxTblBOM.DataController.RecordCount > 0 then begin
    // hapus header bom
    dm.zConn.ExecuteDirect('DELETE FROM tbl_bom WHERE no_spk = ''' +
      cxtNoSPK.Text + '''');
    // hapus detail mo
    dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_det WHERE no_spk = ''' +
      cxtNoSPK.Text + '''');

    tbl_bom := OpenRS('SELECT * FROM tbl_bom WHERE no_spk = ''%s''', [cxtNoSPK.Text]);
    tbl_bom.Insert;
    tbl_bom.FieldByName('no_mo').AsString := '';
    tbl_bom.FieldByName('no_spk').AsString := cxtNoSPK.Text;
    tbl_bom.FieldByName('kode_formula').AsString := cxlFormula.Text;
    tbl_bom.FieldByName('nama_formula').AsString := cxtFormula.Text;
    tbl_bom.Post;
    tbl_bom.Close;

    tbl_bom_d := OpenRS('SELECT * FROM tbl_bom_det WHERE no_spk = ''%s''', [cxtNoSPK.Text]);
    tbl_bom1 := OpenRS('SELECT * FROM tbl_mat_saran1 WHERE no_spk = ''%s''', [cxtNoSPK.Text]);

   { for i := 0 to nxGrdDet.RowCount - 1 do begin
      tbl_bom_d.Insert;
      tbl_bom_d.FieldByName('no_mo').AsString := '';
      tbl_bom_d.FieldByName('kode_brg').AsString := nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString;
      //tbl_bom_d.FieldByName('berat').AsFloat := cxsBeratPerUnitBom.Value;
      tbl_bom_d.FieldByName('satuan').AsString := nxGrdDet.Cell[nxColSatuan.Index,i].AsString;
      tbl_bom_d.FieldByName('qty').AsFloat := nxGrdDet.Cell[nxColTotal.Index,i].AsFloat;

      //tbl_bom_d.FieldByName('satuan2').AsString := nxGrdDet.Cell[nxColSatuan2.Index,i].AsString;
      //tbl_bom_d.FieldByName('qty2').AsFloat := nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat;

      //tbl_bom_d.FieldByName('total').AsFloat := nxGrdDet.Cell[7,i].AsFloat;
      tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
      tbl_bom_d.Post;
    end; }
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
        tbl_bom_d.FieldByName('layer4').AsFloat := Values[i, cxColLayer4.Index];
        tbl_bom_d.FieldByName('layer5').AsFloat := Values[i, cxColLayer5.Index];
        tbl_bom_d.FieldByName('layer6').AsFloat := Values[i, cxColLayer6.Index];
        tbl_bom_d.FieldByName('layer7').AsFloat := Values[i, cxColLayer7.Index];
        tbl_bom_d.FieldByName('layer8').AsFloat := Values[i, cxColLayer8.Index];
        tbl_bom_d.FieldByName('mono').AsFloat := Values[i, cxColPersen.Index];
        tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        tbl_bom_d.FieldByName('f_id').AsInteger := Values[i, cxColId.Index];
        tbl_bom_d.Post;

        tbl_bom1.Insert;
        tbl_bom1.FieldByName('no_spk').AsString := cxtNoSPK.Text;
        tbl_bom1.FieldByName('kode_brg').AsString :=  Values[i, cxColBomKode.Index];
        tbl_bom1.FieldByName('mtp_layer1').AsFloat := Values[i, cxColMtp1.Index];
        tbl_bom1.FieldByName('mtp_layer2').AsFloat := Values[i, cxColMtp2.Index];
        tbl_bom1.FieldByName('mtp_layer3').AsFloat := Values[i, cxColMtp3.Index];
        tbl_bom1.FieldByName('mtp_layer4').AsFloat := Values[i, cxColMtp4.Index];
        tbl_bom1.FieldByName('mtp_layer5').AsFloat := Values[i, cxColMtp5.Index];
        tbl_bom1.FieldByName('mtp_layer6').AsFloat := Values[i, cxColMtp6.Index];
        tbl_bom1.FieldByName('mtp_layer7').AsFloat := Values[i, cxColMtp7.Index];
        tbl_bom1.FieldByName('mtp_layer8').AsFloat := Values[i, cxColMtp8.Index];
        tbl_bom1.Post;
      end;
    end;
    tbl_bom_d.Close;
    tbl_bom1.Close;
  end;
end;

procedure TfrmTmpBuatSPK.cxdStartUpPropertiesChange(Sender: TObject);
var
  q: TZQuery;
  dt,dt1: TDateTime;
begin
  if (cxlMesin.Text <> '') and (not VarIsNull(cxdStartUp.EditValue)) then begin
    q := OpenRS('SELECT * FROM tbl_mesin WHERE kode = ''%s''',[cxlMesin.EditValue]);
    dt := cxdStartUp.EditValue;
    dt := IncMinute(dt, q.FieldByName('setup_time').AsInteger);
    cxdMulai.EditValue := dt;
    dt1 := cxdMulai.EditValue ;
    dt1 := IncMinute(dt1, ((cxsQtySPK.EditValue/cxsSpeed.EditValue)*60));
    cxdSelesai.EditValue := dt1 ;

   { if (Jenis = 'MIXING') or (Copy(cxtDeskripsi.Text,1,3)='MIX') then  begin
        cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,((cxsQtySPK.EditValue/cxsSpeed.EditValue)*60)) ;
        cxSpinEdit1.EditValue := IncMinute(cxdMulai.EditValue,((cxsQtySPK.EditValue/cxsSpeed.EditValue)*60)) ;
        end
        else if (Jenis = 'EXTRUSI') or (Jenis = 'EXTRUSION') or (Copy(cxtDeskripsi.Text,1,3)='EXT') then begin
         cxSpinEdit1.EditValue := ((cxsQtySPK.EditValue/cxsSpeed.EditValue)*60) ;
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,((cxsQtySPK.EditValue/cxsSpeed.EditValue)*60)) ;
         end
        else if (Jenis = 'PRINTING') or (Copy(cxtDeskripsi.Text,1,3)='PRN') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsMeter.EditValue/cxsSpeed.EditValue)*60)
        else if (Jenis = 'GUSET') or (Copy(cxtDeskripsi.Text,1,3)='GST') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,((cxsQtySPK.EditValue/ cxsSpeed.EditValue)*60)/ q.FieldByName('line').AsFloat)
        else if (Jenis = 'CONVERTING') or (Copy(cxtDeskripsi.Text,1,3)='CVT') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsQtySPK.EditValue/ q.FieldByName('line').AsFloat / q.FieldByName('output').AsFloat))
        else if (Jenis = 'PACKING') or (Copy(cxtDeskripsi.Text,1,3)='PCK') then
         cxdSelesai.EditValue := IncMinute(cxdMulai.EditValue,(cxsQtySPK.EditValue/ q.FieldByName('output').AsFloat) );   }


    q.Close;
  end;
end;

procedure TfrmTmpBuatSPK.cxsQtySPKExit(Sender: TObject);
var
  q: TZQuery;
begin
  if cxtRouting.Text = 'BJ' then begin
    q := OpenRS('SELECT SUM(qty) qty FROM tbl_spk a ' +
      'LEFT JOIN tbl_mo b ON a.no_spk = b.no_spk AND a.no_mo = b.no_mo ' + 
      'WHERE b.no_so = ''%s'' AND a.routing = ''%s''',
      [mNoSO, 'BJ']);
    if mQtySO < (cxsQtySPK.Value + q.FieldByName('qty').AsFloat) then begin
      MsgBox('Qty. SPK melebihi Qty. Sales Order.');
      cxsQtySPK.Value := 0;
      cxsQtySPK.SetFocus;
    end;
    q.Close;
  end;
end;

procedure TfrmTmpBuatSPK.ProsesSPK(qtySPK, toleransi: real);
var
  q,z,a,r : TZQuery ;
  persen_plong,x1,x2 : Real ;
  barang : string ;
begin
   cxsPCS.EditValue :=mPCS ;
   barang := mKodeBrg ;
  q := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''',
    [cxtKodeBrg.Text] );
  if (q.FieldByname('panjang_plong').AsFloat=0) or (q.FieldByname('lebar_plong').AsFloat=0) then
  persen_plong := 0
  else
  persen_plong := (q.FieldByname('panjang_plong').AsFloat * q.FieldByname('lebar_plong').AsFloat) / (q.FieldByname('lebar_buka').AsFloat * q.FieldByname('panjang').AsFloat);

  z := OpenRS('SELECT unitsetid,kode,tebal,panjang,lebar_buka,berat_jenis,standar_roll,sf_konversikg(1,unitsetid,"KG",unitid) as conv,sf_konversikg(1,unitsetid,"ROLL",unitid) as conv1,sf_konversikg(1,unitsetid,unitid,"KG") as conv2 FROM tbl_barang WHERE kode =''%s''',
    [cxtKodeBrg.Text] );


 { if (Copy(cxtDeskripsi.Text,5,11) = 'GEOMEMBRANE') or (Copy(cxtKodeBrg.Text,1,3) = 'A31') then begin
    a := OpenRS('select a.*,b.conversi from tbl_unitset_det as a join (SELECT unitsetid,`convert` as conversi FROM tbl_unitset_det where unitid="KG") as b on a.unitsetid=b.unitsetid WHERE a.unitsetid=''%s'' order by no asc',[z.FieldByName('unitsetid').AsString ]);
    cxskonversim.EditValue := ((qtySPK/a.FieldByName('conversi').AsFloat)*a.FieldByName('convert').AsFloat);
    cxsQtySPK.Value := ((z.FieldByName('tebal').AsFloat*z.FieldByName('lebar_buka').AsFloat*z.FieldByName('panjang').AsFloat*z.FieldByName('berat_jenis').AsFloat/10000)*(cxskonversim.EditValue)/1000) + (((z.FieldByName('tebal').AsFloat*z.FieldByName('lebar_buka').AsFloat*z.FieldByName('panjang').AsFloat*z.FieldByName('berat_jenis').AsFloat/10000)*(cxskonversim.EditValue)/1000)*toleransi)/100 ;
    end
    else   }

 // if cxsPCS.EditValue = 0 then
  //cxsQtySPK.Value := (qtySPK + ((qtySPK*toleransi)/100) +  persen_plong )
  //else
  //18-12-2017
  if (cxtRouting.Text='MIXING') and (Copy(barang,1,1)<>'D') then
    cxsQtySPK.Value := ((q.FieldByname('berat_kotor').AsFloat*cxsPCS.EditValue/1000)+ (((q.FieldByname('berat_kotor').AsFloat*cxsPCS.EditValue/1000)*toleransi)/100) + persen_plong ) + mPemanasan
  else if (cxtRouting.Text='MIXING') and (Copy(barang,1,1)='D') then
    cxsQtySPK.Value := (qtySPK + ((qtySPK*toleransi)/100) +  persen_plong ) + mPemanasan
  else if (cxtRouting.Text<>'MIXING') and (Copy(barang,1,1)='D') then
     cxsQtySPK.Value := (qtySPK + ((qtySPK*toleransi)/100) +  persen_plong )
  else
    cxsQtySPK.Value := ((q.FieldByname('berat_kotor').AsFloat*cxsPCS.EditValue/1000)+ (((q.FieldByname('berat_kotor').AsFloat*cxsPCS.EditValue/1000)*toleransi)/100) + persen_plong );
  if  z.FieldByname('conv2').AsFloat<>0 then
  cxsConv.Value := ((q.FieldByname('berat_kotor').AsFloat*cxsPCS.EditValue/1000)+ persen_plong) / z.FieldByname('conv2').AsFloat
  else cxsConv.Value := 0;

  cxsToleransi.Value := toleransi;
  cxtBahanDasar.Text := q.FieldByName('base_material').AsString ;
  cxsBeratJenis.Value := q.FieldByName('berat_jenis').AsFloat;
  cxsMeter.EditValue := (cxsQtySPK.EditValue *1000)/(z.FieldByName('tebal').AsFloat*z.FieldByName('lebar_buka').AsFloat*(z.FieldByName('berat_jenis').AsFloat/100)) ;
  if (q.FieldByName('standar_roll').AsFloat<>0) then
  cxsRoll1.EditValue := (cxsMeter.EditValue/q.FieldByName('standar_roll').AsFloat)  ;
  cxsbj.EditValue := q.FieldByName('tebal').AsFloat;

  if cxsSpeed.EditValue = 0 then
  cxsSpeed.Enabled := True ;

  zqrFormula.Close;
  zqrFormula.ParamByName('kode').AsString := cxtKodeBrg.Text;
  zqrFormula.Open;

  cxlFormula.EditValue := zqrFormula.FieldByName('id').AsString;
 btnTambahClick(nil);




  {z := OpenRS('SELECT * FROM tbl_barang where kode =''%s''',[cxtEdit.Text]) ;

  if (cxsToleransi.Value = 0) then
   cxskonversipcs.EditValue := ((cxsQtySPK.EditValue)/z.FieldByName('berat_bersih').AsFloat)*1000
   else
   cxskonversipcs.EditValue := ((100/(cxsToleransi.EditValue+100)*cxsQtySPK.EditValue)/z.FieldByName('berat_bersih').AsFloat)*1000 ;

    if (z.FieldByName('bentuk').AsString = 'BOTTOM-SEAL') or (z.FieldByName('bentuk').AsString = 'SHEET')  then begin
    cxskonversim.EditValue :=  z.FieldByName('panjang').AsFloat/100*cxskonversipcs.EditValue;
  end;
   if z.FieldByName('bentuk').AsString = 'NON-RECTANGLE' then begin
       cxskonversim.EditValue :=  (z.FieldByName('panjang').AsFloat/2/100)*cxskonversipcs.EditValue ;
  end;
    if z.FieldByName('bentuk').AsString = 'SIDE-SEAL' then begin
      cxskonversim.EditValue :=  (z.FieldByName('lebar_buka').AsFloat/100)*cxskonversipcs.EditValue ;
  end;


  z.Close ;      }

end;

procedure TfrmTmpBuatSPK.cxTblBOMDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
var
  q : TZQuery ;
begin
  if AItemIndex = cxColDes.Index then begin
     try
      cxTblBOM.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColBomKode.Index] :=
        ADataController.Values[ARecordIndex, cxColDes.Index];
    finally
      cxTblBOM.EndUpdate;
    end;
    end
    else if (AItemIndex = cxColLayer1.Index) or
        (AItemIndex = cxColLayer2.Index) or
        (AItemIndex = cxColLayer3.Index) or
        (AItemIndex = cxColLayer4.Index) or
        (AItemIndex = cxColLayer5.Index) or
        (AItemIndex = cxColLayer6.Index) or
        (AItemIndex = cxColLayer7.Index) or
        (AItemIndex = cxColLayer8.Index) then begin

        q := OpenRS('Select * From tbl_barang Where kode = ''%s''',[cxtKodeBrg.Text]) ;
            if Copy(cxtKodeBrg.Text,1,3) = 'B01' then begin
             try
            with ADataController do begin
              Values[ARecordIndex, cxColPersen.Index] :=
                ((Values[ARecordIndex, cxColLayer1.Index] / 100) * q.FieldByName('mtp_layer1').Value) +
                ((Values[ARecordIndex, cxColLayer2.Index] / 100) *  q.FieldByName('mtp_layer2').Value) +
                ((Values[ARecordIndex, cxColLayer3.Index] / 100) * q.FieldByName('mtp_layer3').Value) +
                ((Values[ARecordIndex, cxColLayer4.Index] / 100) * q.FieldByName('mtp_layer4').Value) +
                ((Values[ARecordIndex, cxColLayer5.Index] / 100) * q.FieldByName('mtp_layer5').Value) +
                ((Values[ARecordIndex, cxColLayer6.Index] / 100) *  q.FieldByName('mtp_layer6').Value) +
                ((Values[ARecordIndex, cxColLayer7.Index] / 100) *  q.FieldByName('mtp_layer7').Value) +
                ((Values[ARecordIndex, cxColLayer8.Index] / 100) * q.FieldByName('mtp_layer8').Value);
             Values[ARecordIndex, cxColBom.Index] := ((Values[ARecordIndex, cxColPersen.Index] / 100) * q.FieldByName('berat_kotor').Value);
            end;

            except
          end;
        end;
        q.Close;
      end
  else if AItemIndex = cxColPersen.Index then begin
     try
          cxTblBOM.BeginUpdate;

            ADataController.Values[ARecordIndex, cxColTotal.Index] :=
                ((ADataController.Values[ARecordIndex, cxColPersen.Index] *cxsQtySPK.Value)/100)*1000;
        finally
          cxTblBOM.EndUpdate;
          end;
  end;
end;

procedure TfrmTmpBuatSPK.cxTblBOMEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
var
  i: Integer;
  jenis,jenis1,jenis2: Integer;
begin
   i := cxTblBOM.DataController.FocusedRecordIndex;

   jenis := cxTblBOM.DataController.Values[i, cxCollockGroup.Index];
    //cxtSub.Text := cxTblBOM.DataController.Values[i, cxColSub.Index] ;
   if (AItem.Index = cxColDes.Index)  or (AItem.Index = cxColPersen.Index) or (AItem.Index = cxColLayer1.Index) or (AItem.Index = cxColLayer2.Index)
   or (AItem.Index = cxColLayer3.Index) or (AItem.Index = cxColLayer4.Index) or (AItem.Index = cxColLayer5.Index) or (AItem.Index = cxColLayer6.Index)
   or (AItem.Index = cxColLayer7.Index) or (AItem.Index = cxColLayer8.Index)  then begin
      if jenis  = 0 then begin
        AAllow := False;
        zqrBrgBom.Close;
        zqrBrgBom.SQL.Strings[3] := 'AND sub_group = ''' +
          cxTblBOM.DataController.Values[i, cxColSub.Index]  + '''';
        zqrBrgBom.Open;
      end;
   end
   else if (AItem.Index = cxColDes2.Index) then begin
      if jenis  = 0 then begin
        AAllow := False;

      end;
   end
   else begin
      if jenis = 1 then AAllow := false;
   end;

  { jenis1 := cxTblBOM.DataController.Values[i, cxColLockDetail.Index];
   if AItem.Index = cxColDes.Index then begin
      if jenis1  = 1 then AAllow := false;
   end
   else begin
      if jenis1 = 0 then AAllow := false;
   end;

    jenis2 := cxTblBOM.DataController.Values[i, cxColLockPersen.Index];
   if AItem.Index = cxColPersen.Index then begin
      if jenis2  = 1 then AAllow := false;
   end
   else begin
      if jenis2 = 0 then AAllow := false;
   end;   }

    
end;

procedure TfrmTmpBuatSPK.cxColDes2PropertiesButtonClick(Sender: TObject;
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

  f.Group := cxTblBOM.DataController.Values[i, cxColBomKode1.Index];
  f.KodeBrg := cxtKodeBrg.Text;
  f.Formula := cxtFormula.Text;
  f.ShowModal ;

  if f.ModalResult = idOk then begin
    s := f.Result;

    fKode := s.Objects[0] as TField;
    fKode1 := s.Objects[1] as TField;

    with cxTblBOM.DataController do begin
      Values[i, cxColBomKode.Index] := fKode.AsString;
      Values[i, cxColDes2.Index] := fkode1.AsString;
    end;
  end;
  f.Release;

end;

procedure TfrmTmpBuatSPK.cxsMeterRollPropertiesEditValueChanged(
  Sender: TObject);
  var
    z : TZQuery ;
begin
    z := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''',
    [cxtKodeBrg.Text] );
   IF (cxsTube.EditValue<>0) THEN begin
    cxsKgMeter.EditValue :=(cxsbj.EditValue/100)*cxsTube.EditValue * cxsMeterRoll.EditValue * (cxsBeratJenis.EditValue/1000)  ;
    cxsRoll1.EditValue := cxsMeter.EditValue/cxsMeterRoll.EditValue;
    cxsBUR.EditValue := (((cxsTube.EditValue*10)/cxsDIE.EditValue/(157))*100) ;
    end
    else begin
  cxsKgMeter.EditValue := (cxsMeterRoll.EditValue*(z.FieldByName('tebal').AsFloat*z.FieldByName('lebar_buka').AsFloat*(z.FieldByName('berat_jenis').AsFloat/100))/1000);
  cxsRoll1.EditValue := cxsMeter.EditValue/cxsMeterRoll.EditValue;
  end;
  z.Close ;
end;

procedure TfrmTmpBuatSPK.cxlMesinPropertiesEditValueChanged(
  Sender: TObject);
    var
    z,q,r : TZQuery ;
begin
  z := OpenRS('SELECT * FROM tbl_mesin WHERE kode =''%s''',
    [cxlMesin.EditValue] );

    cxsSpeed.Enabled := True ;

   cxsSpeed.EditValue := z.FieldByName('output').AsFloat ;
   cxsDIE.EditValue :=  z.FieldByName('die').AsFloat ;

   q := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''',
    [cxtKodeBrg.Text] );

    { if (z.FieldByName('die').AsFloat<>0) then
         // cxsBUR.EditValue := ((q.FieldByName('lebar_buka').AsFloat*10)/q.FieldByName('die').AsFloat/(3.14/2)) ;
          cxsBUR.EditValue := (((r.FieldByName('lebar_buka').AsFloat*10)/z.FieldByName('die').AsFloat/(157))*100) ;

    q := OpenRS('SELECT a.*, b.deskripsi, b.berat_kotor, b.berat_bersih,b.lebar_buka,b.tebal,b.unitid,b.berat_jenis,b.unitsetid,b.standar_roll,a.kode_mesin, ' +
      'b.bentuk,c.output,c.satuan,c.die ' +
      'FROM tbl_routing a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode LEFT JOIN tbl_mesin as c ON a.kode_mesin=c.kode ' +
      'WHERE a.kode = ''%s'' ORDER BY a.no',[cxtKodeBrg.Text]);
                                                                 }
    try
          if (z.FieldByName('die').AsFloat<>0) and (cxsTube.EditValue=0)  then begin
         // cxsBUR.EditValue := ((q.FieldByName('lebar_buka').AsFloat*10)/q.FieldByName('die').AsFloat/(3.14/2)) ;
            cxsBUR.EditValue := (((q.FieldByName('lebar_buka').AsFloat*10)/z.FieldByName('die').AsFloat/(157))*100)  ;
            end
          else begin
            if (z.FieldByName('die').AsFloat<>0) and (cxsTube.EditValue<>0)  then
           cxsBUR.EditValue := (((cxsTube.EditValue*10)/cxsDIE.EditValue/(157))*100) ;
           end;

          if (q.FieldByName('tebal').AsFloat<>0) or (q.FieldByName('lebar_buka').AsFloat<>0) or (q.FieldByName('berat_jenis').AsFloat<>0) then
          cxsMeter.EditValue := (cxsQtySPK.EditValue *100)/(q.FieldByName('tebal').AsFloat*q.FieldByName('lebar_buka').AsFloat*(q.FieldByName('berat_jenis').AsFloat/100))*10 ;
          if (q.FieldByName('standar_roll').AsFloat<>0) then  begin
          cxsKgMeter.EditValue := (q.FieldByName('standar_roll').AsFloat*(q.FieldByName('tebal').AsFloat*q.FieldByName('lebar_buka').AsFloat*(q.FieldByName('berat_jenis').AsFloat/100))/1000)*10;
          cxsMeterRoll.EditValue := q.FieldByName('standar_roll').AsFloat;
        end ;
        except
          on E: Exception do begin
            MsgBox('Data Master Item Belum Lengkap,Silahkan Periksa Kembali!');
          end;
        end;
end;

procedure TfrmTmpBuatSPK.cxsLinePropertiesEditValueChanged(
  Sender: TObject);
begin
//  IF cxsLine.EditValue<>0 THEN
 // cxsKgMeter.EditValue :=cxsMeterRoll.EditValue * cxsLine.EditValue * cxsbj.EditValue  ;
 // cxsRoll1.EditValue := cxsMeter.EditValue/cxsMeterRoll.EditValue;
end;

procedure TfrmTmpBuatSPK.cxsTubePropertiesEditValueChanged(
  Sender: TObject);
begin
 IF (cxsTube.EditValue<>0) THEN begin
   cxsKgMeter.EditValue :=(cxsbj.EditValue/10000)*cxsTube.EditValue * cxsMeterRoll.EditValue * (cxsBeratJenis.EditValue/1000)  ;
    cxsBUR.EditValue := (((cxsTube.EditValue*10)/cxsDIE.EditValue/(157))*100) ;
    cxsBeratMeter.EditValue := (cxsbj.EditValue/10000) *cxsTube.EditValue * 100 * cxsBeratJenis.EditValue;
    cxsPanjangExtru.EditValue := (cxsQtySPK.EditValue * 1000) / (cxsBeratMeter.EditValue) ;
  end;
end;

procedure TfrmTmpBuatSPK.cxsTubePropertiesChange(Sender: TObject);
begin
  {IF (cxsTube.EditValue<>0) THEN begin
   cxsKgMeter.EditValue :=(cxsbj.EditValue/10000)*cxsTube.EditValue * cxsMeterRoll.EditValue * (cxsBeratJenis.EditValue/1000)  ;
    cxsBUR.EditValue := (((cxsTube.EditValue*10)/cxsDIE.EditValue/(157))*100) ;
    cxsBeratMeter.EditValue := (cxsbj.EditValue/10000) *cxsTube.EditValue * 100 * cxsBeratJenis.EditValue;
    cxsPanjangExtru.EditValue := (cxsQtySPK.EditValue * 1000) / (cxsBeratMeter.EditValue) ;
    end
    else begin
     cxsKgMeter.EditValue := 0 ;
    cxsBUR.EditValue := 0 ;
    cxsBeratMeter.EditValue := 0;
    cxsPanjangExtru.EditValue := 0 ;
    end;    }
end;

procedure TfrmTmpBuatSPK.cxsMeterRollPropertiesChange(Sender: TObject);
  var
    z : TZQuery ;
begin
   { z := OpenRS('SELECT * FROM tbl_barang WHERE kode =''%s''',
    [cxtKodeBrg.Text] );
   IF (cxsTube.EditValue<>0) and (cxsMeterRoll.EditValue<>0) THEN begin
    cxsKgMeter.EditValue :=(cxsbj.EditValue/100)*cxsTube.EditValue * cxsMeterRoll.EditValue * (cxsBeratJenis.EditValue/1000)  ;
    cxsRoll1.EditValue := cxsMeter.EditValue/cxsMeterRoll.EditValue;
    cxsBUR.EditValue := (((cxsTube.EditValue*10)/cxsDIE.EditValue/(157))*100) ;
    end
    else begin
  cxsKgMeter.EditValue := (cxsMeterRoll.EditValue*(z.FieldByName('tebal').AsFloat*z.FieldByName('lebar_buka').AsFloat*(z.FieldByName('berat_jenis').AsFloat/100))/1000);
  cxsRoll1.EditValue := cxsMeter.EditValue/cxsMeterRoll.EditValue;
  end;
  z.Close ; }
end;

end.
