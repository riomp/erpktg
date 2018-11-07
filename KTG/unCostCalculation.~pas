unit unCostCalculation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DB, ZAbstractRODataset, ZDataset, cxSpinEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, StdCtrls, ExtCtrls,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxClasses, cxGridCustomView, cxGridDBTableView, cxGrid,
  cxPC, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, TeEngine, Series, TeeProcs, Chart;

type
  TfrmCostCalculation = class(TfrmTransBaru)
    zqrBrg: TZReadOnlyQuery;
    dsBrg: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxTblBOM: TcxGridTableView;
    cxColBomKode: TcxGridColumn;
    cxColDesc2: TcxGridColumn;
    cxColPersen: TcxGridColumn;
    cxColPrice: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblRouting: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColRouting: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    cxColMesin: TcxGridColumn;
    cxColOperator: TcxGridColumn;
    cxColDayaMotor: TcxGridColumn;
    cxColDayaHeater: TcxGridColumn;
    cxColOperatorSet: TcxGridColumn;
    cxColTotalOperator: TcxGridColumn;
    cxColUpah: TcxGridColumn;
    cxColWaktu: TcxGridColumn;
    cxColListrik: TcxGridColumn;
    cxColBiayaListrik: TcxGridColumn;
    cxColBiayaUpah: TcxGridColumn;
    cxColTotalBiaya: TcxGridColumn;
    cxColpasar: TcxGridColumn;
    cxColTotal1: TcxGridColumn;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxTblBom1: TcxGridTableView;
    cxGridColumn1: TcxGridColumn;
    cxGridColumn3: TcxGridColumn;
    cxGridColumn4: TcxGridColumn;
    cxGridColumn5: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxGridColumn9: TcxGridColumn;
    cxGridColumn11: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxTblRouting1: TcxGridTableView;
    cxGridColumn12: TcxGridColumn;
    cxGridColumn13: TcxGridColumn;
    cxGridColumn14: TcxGridColumn;
    cxGridColumn15: TcxGridColumn;
    cxGridColumn16: TcxGridColumn;
    cxGridColumn17: TcxGridColumn;
    cxGridColumn18: TcxGridColumn;
    cxGridColumn19: TcxGridColumn;
    cxGridColumn20: TcxGridColumn;
    cxGridColumn21: TcxGridColumn;
    cxGridColumn22: TcxGridColumn;
    cxGridColumn23: TcxGridColumn;
    cxGridColumn24: TcxGridColumn;
    cxGridColumn25: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxtNoTrans: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxdTglTrs: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxLUBrg: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxsReject: TcxSpinEdit;
    Button1: TButton;
    cxsTebal: TcxSpinEdit;
    Label14: TLabel;
    cxsLebarBuka: TcxSpinEdit;
    Label15: TLabel;
    cxsLebarJadi: TcxSpinEdit;
    Label16: TLabel;
    cxsPanjang: TcxSpinEdit;
    Label10: TLabel;
    cxsBeratKotor: TcxSpinEdit;
    Label12: TLabel;
    cxsBeratBersih: TcxSpinEdit;
    Label11: TLabel;
    cxsBeratMeter: TcxSpinEdit;
    Label8: TLabel;
    cxsBeratJenis: TcxSpinEdit;
    cxColOutput: TcxGridColumn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    cxsRaw1: TcxSpinEdit;
    cxsRaw2: TcxSpinEdit;
    cxsRaw3: TcxSpinEdit;
    cxsRaw4: TcxSpinEdit;
    cxsRaw5: TcxSpinEdit;
    Label13: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxsSupport1: TcxSpinEdit;
    cxsSupport2: TcxSpinEdit;
    cxsSupport3: TcxSpinEdit;
    cxsSupport4: TcxSpinEdit;
    cxsSupport5: TcxSpinEdit;
    cxsUpah1: TcxSpinEdit;
    cxsUpah2: TcxSpinEdit;
    cxsUpah3: TcxSpinEdit;
    cxsUpah4: TcxSpinEdit;
    cxsUpah5: TcxSpinEdit;
    cxsListrik1: TcxSpinEdit;
    cxsListrik2: TcxSpinEdit;
    cxsListrik3: TcxSpinEdit;
    cxsListrik4: TcxSpinEdit;
    cxsListrik5: TcxSpinEdit;
    cxsHPP1: TcxSpinEdit;
    cxsHPP2: TcxSpinEdit;
    cxsHPP3: TcxSpinEdit;
    cxsHPP4: TcxSpinEdit;
    cxsHPP5: TcxSpinEdit;
    Label24: TLabel;
    cxsBop1: TcxSpinEdit;
    cxsBop2: TcxSpinEdit;
    cxsBop3: TcxSpinEdit;
    cxsBop4: TcxSpinEdit;
    cxsBop5: TcxSpinEdit;
    cxsTrans1: TcxSpinEdit;
    cxsTrans2: TcxSpinEdit;
    cxsTrans3: TcxSpinEdit;
    cxsTrans4: TcxSpinEdit;
    cxsTrans5: TcxSpinEdit;
    cxsMargin1: TcxSpinEdit;
    cxsMargin2: TcxSpinEdit;
    cxsMargin3: TcxSpinEdit;
    cxsMargin4: TcxSpinEdit;
    cxsMargin5: TcxSpinEdit;
    cxsHarga1: TcxSpinEdit;
    cxsHarga2: TcxSpinEdit;
    cxsHarga3: TcxSpinEdit;
    cxsHarga4: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxsRejectPropertiesEditValueChanged(Sender: TObject);
    procedure cxsQtyPropertiesEditValueChanged(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxLUBrgPropertiesChange(Sender: TObject);
    procedure cxsLainnyaPropertiesEditValueChanged(Sender: TObject);
    procedure cxTblBOMDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxsBop1PropertiesEditValueChanged(Sender: TObject);
    procedure cxsTrans1PropertiesEditValueChanged(Sender: TObject);
    procedure cxsMargin1PropertiesEditValueChanged(Sender: TObject);
    procedure cxTblBom1DataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxLUBrgPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
       mNoCost: string;
    procedure ClearAll;
  public
    { Public declarations }
     property NoCost: string read mNoCost write mNoCost;
  end;

var
  frmCostCalculation: TfrmCostCalculation;

implementation

uses unDm, unAplikasi, unTools, unFrmTplTrans, unFrmDaftarCost;

{$R *.dfm}

procedure TfrmCostCalculation.FormCreate(Sender: TObject);
begin
  cxtNoTrans.Text := GetLastFak('costcalculation');
  cxdTglTrs.Date  := Aplikasi.TanggalServer ;


  zqrBrg.Open;
end;

procedure TfrmCostCalculation.cxsRejectPropertiesEditValueChanged(
  Sender: TObject);
var
  z : TZQuery ;
begin
 
end;

procedure TfrmCostCalculation.cxsQtyPropertiesEditValueChanged(
  Sender: TObject);
  var
  z : TZQuery ;
begin
  
end;

procedure TfrmCostCalculation.Button1Click(Sender: TObject);
 var
  z,zz,zzz,u,l,aaa : TZQuery ;
  j,i,k : Integer ;
  total,rm,bp,upah,listrik,lainnya,bb,personil,output : Double ;
  lst1: TStringList;
    sFld: string;
begin

  cxTblBOM.DataController.RecordCount:= 0;
  cxTblRouting.DataController.RecordCount:=0;
  cxTblBOM1.DataController.RecordCount:= 0;
  cxTblRouting1.DataController.RecordCount:=0;

   z := OpenRS('SELECT * FROM tbl_barang where kode =''%s''',[cxLUBrg.EditValue]) ;

  // Detail Routing Upah //
   zzz := OpenRS('SELECT a.*,b.deskripsi,c.* FROM tbl_routing as a ' +
   'left join tbl_barang as b on a.kode_brg=b.deskripsi left join tbl_mesin as c ' +
   'on a.kode_mesin=c.kode where a.kode =''%s'' order by a.no asc',[cxLUBrg.EditValue]) ;
  while not zzz.Eof do begin
    with cxTblRouting.DataController do begin
     i := AppendRecord ;
     Values[i, cxColNo.Index] := zzz.FieldByName('no').AsInteger ;
     Values[i, cxColRouting.index] := zzz.FieldByName('routing').AsString;
     Values[i, cxColMesin.Index] := zzz.FieldByName('kode_mesin').AsString;
     Values[i, cxColOperator.Index] := zzz.FieldByName('jml_personil').AsFloat;
     //Values[i, cxColOperatorSet.Index] := zzz.FieldByName('operator_setup').AsFloat;
     //Values[i, cxColDayaMotor.Index] := zzz.FieldByName('daya_motor').AsFloat;
     //Values[i, cxColDayaHeater.Index] := zzz.FieldByName('daya_heater').AsFloat;
     //Values[i, cxColTotalOperator.Index] := zzz.FieldByName('jml_personil').AsFloatt;
     Values[i, cxColOutput.Index] := zzz.FieldByName('output').AsFloat;

      u := OpenRS('select * from tbl_upah WHERE tgl=(select max(tgl) from tbl_upah)') ;
      Values[i, cxColUpah.Index] := u.FieldByName('upah').AsFloat;
      if (cxsTebal.EditValue<>0) and (cxsLebarJadi.EditValue<>0) and (cxsPanjang.EditValue<>0) and (cxsBeratJenis.EditValue<>0) then
      bb := (cxsTebal.EditValue*cxsLebarJadi.EditValue*cxsPanjang.EditValue*cxsBeratJenis.EditValue/1000000);
      upah := u.FieldByName('upah').AsFloat ;
      if (zzz.FieldByName('jml_personil').AsFloat<>0) then
      personil := zzz.FieldByName('jml_personil').AsFloat;
      if (zzz.FieldByName('output').AsFloat<>0) then
      output := zzz.FieldByName('output').AsFloat;
     Values[i, cxColBiayaUpah.Index] := upah*personil*(bb/output)/173/0.8;

    end;
     with cxTblRouting1.DataController do begin
     i := AppendRecord ;
     Values[i, cxColNo.Index] := zzz.FieldByName('no').AsInteger ;
     Values[i, cxColRouting.index] := zzz.FieldByName('routing').AsString;
     Values[i, cxColMesin.Index] := zzz.FieldByName('kode_mesin').AsString;
     Values[i, cxColDayaMotor.Index] := zzz.FieldByName('daya_motor').AsFloat;

      l := OpenRS('select * from tbl_listrik WHERE tgl=(select max(tgl) from tbl_listrik where jenis="H")') ;
        Values[i, cxGridColumn22.Index] := l.FieldByName('biaya').AsFloat;
         Values[i, cxGridColumn23.Index] := l.FieldByName('biaya').AsFloat*zzz.FieldByName('daya_motor').AsFloat*(bb/zzz.FieldByName('output').AsFloat);

      end;

    zzz.Next;
  end;
  zzz.Close;

  // Detail BOM Room Material //

   zz := OpenRS('Select distinct a.kode,c.kode_brg,d.deskripsi,d.hpp,c.qty,c.satuan,c.persen,c.jns ,ifnull(e.harga_include,0) as harga_include ' +
    'FROM tbl_barang as a join tbl_routing as b on a.`kode`=b.kode ' +
    'join tbl_formula_subdet as c on b.kode_brg=c.kode join tbl_barang as d on d.kode=c.kode_brg ' +
    'LEFT JOIN (select * from tbl_hargapasar WHERE start=(select max(start) from tbl_hargapasar)) e ON c.kode_brg=e.kode_brg ' +
    'where c.nama="A" and left(c.kode_brg,1)="C"  and a.kode = ''%s''',[cxLUBrg.EditValue]);
      while not zz.Eof do begin
        with cxTblBOM.DataController do begin
          j := AppendRecord;
          Values[j, cxColBomKode.Index] := zz.FieldByName('kode_brg').AsString;
          Values[j, cxColDesc2.Index] := zz.FieldByName('deskripsi').AsString;
          Values[j, cxColPersen.Index] := zz.FieldByName('persen').Value;

          if (zz.FieldByName('hpp').Value<>0) then
          Values[j, cxColPrice.Index] := (zz.FieldByName('hpp').Value);

          if (zz.FieldByName('harga_include').Value<>0) then
          Values[j, cxColpasar.Index] := (zz.FieldByName('harga_include').Value);

          if zz.FieldByName('harga_include').Value=0 then  Values[j, cxColTotal1.Index] := 0 ;

            Values[j, cxColTotal1.Index] := ((zz.FieldByName('harga_include').Value) * (Values[j, cxColPersen.Index]/100) ) ;
        end;
        zz.Next;
      end;
      zz.Close;

    // Detail BOM Bahan Pembantu //

     zz := OpenRS('Select distinct a.kode,c.kode_brg,d.deskripsi,d.hpp,c.qty,c.satuan,c.persen,c.jns ,ifnull(e.harga_include,0) as harga_include ' +
    'FROM tbl_barang as a join tbl_routing as b on a.`kode`=b.kode ' +
    'join tbl_formula_subdet as c on b.kode_brg=c.kode join tbl_barang as d on d.kode=c.kode_brg ' +
    'LEFT JOIN (select * from tbl_hargapasar WHERE start=(select max(start) from tbl_hargapasar)) e ON c.kode_brg=e.kode_brg ' +
    'where c.nama="A" and left(c.kode_brg,1)="D"  and a.kode = ''%s''',[cxLUBrg.EditValue]);
      while not zz.Eof do begin
        with cxTblBom1.DataController do begin
          j := AppendRecord;
          Values[j, cxGridColumn1.Index] := zz.FieldByName('kode_brg').AsString;
          Values[j, cxGridColumn3.Index] := zz.FieldByName('deskripsi').AsString;
          Values[j, cxGridColumn5.Index] := zz.FieldByName('satuan').Value ;
          { if (zz.FieldByName('qty').Value<>0) then
          Values[j, cxGridColumn4.Index] := zz.FieldByName('qty').Value;


          if (zz.FieldByName('hpp').Value<>0) then
          Values[j, cxGridColumn8.Index] := (zz.FieldByName('hpp').Value/1000);

          if (zz.FieldByName('harga_include').Value<>0) then
          Values[j, cxGridColumn9.Index] := (zz.FieldByName('harga_include').Value/1000);

          Values[j, cxGridColumn11.Index] := ((zz.FieldByName('harga_include').Value/1000) * Values[j, cxGridColumn4.Index])  }

        end;
        zz.Next;
      end;
      zz.Close;

  cxsRaw2.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1];
  cxsRaw3.EditValue :=  cxsRaw2.EditValue*1.1;
  cxsRaw4.EditValue :=  cxsRaw2.EditValue/cxsBeratBersih.EditValue ;
  cxsRaw5.EditValue :=  (cxsRaw2.EditValue*1.1)/cxsBeratBersih.EditValue;

  cxsSupport2.EditValue :=  cxTblBOM1.DataController.Summary.FooterSummaryValues[1];
  cxsSupport3.EditValue :=  cxsSupport2.EditValue*1.1;
  cxsSupport4.EditValue :=  cxsSupport2.EditValue/cxsBeratBersih.EditValue ;
  cxsSupport5.EditValue :=  (cxsSupport2.EditValue*1.1)/cxsBeratBersih.EditValue;

  cxsUpah2.EditValue :=  cxTblRouting.DataController.Summary.FooterSummaryValues[1];
  cxsUpah3.EditValue :=  cxsUpah2.EditValue*1.1;
  cxsUpah4.EditValue :=  cxsUpah2.EditValue/cxsBeratBersih.EditValue ;
  cxsUpah5.EditValue :=  (cxsUpah2.EditValue*1.1)/cxsBeratBersih.EditValue;

  cxsListrik2.EditValue :=  cxTblRouting1.DataController.Summary.FooterSummaryValues[1];
  cxsListrik3.EditValue :=  cxsListrik2.EditValue*1.1;
  cxsListrik4.EditValue :=  cxsListrik2.EditValue/cxsBeratBersih.EditValue ;
  cxsListrik5.EditValue :=  (cxsListrik2.EditValue*1.1)/cxsBeratBersih.EditValue;


  cxsHPP2.EditValue := cxsUpah2.EditValue + cxsListrik2.EditValue ;
  cxsHPP3.EditValue := cxsUpah3.EditValue + cxsListrik3.EditValue ;
  cxsHPP4.EditValue := cxsUpah4.EditValue + cxsListrik4.EditValue ;
  cxsHPP5.EditValue := cxsUpah5.EditValue + cxsListrik5.EditValue ;

  if cxTblBOM.DataController.Summary.FooterSummaryValues[1]<>0 then
  cxsRaw1.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;

  if cxTblBOM1.DataController.Summary.FooterSummaryValues[1]<>0 then
  cxsSupport1.EditValue :=  cxTblBOM1.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;

  cxsUpah1.EditValue :=  cxTblRouting.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;
  //cxsSupport1.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue ;
  cxsListrik1.EditValue :=  cxTblRouting1.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100;
  cxsHPP1.EditValue :=  cxsHPP2.EditValue/cxsHPP2.EditValue*100 ;

  cxsHarga1.EditValue := cxsHPP2.EditValue ;
  cxsHarga2.EditValue := cxsHPP3.EditValue ;
  cxsHarga3.EditValue := cxsHPP4.EditValue ;
  cxsHarga4.EditValue := cxsHPP5.EditValue ;

    {

  cxsCostMaterial.EditValue := cxTblBOM.DataController.Summary.FooterSummaryValues[0];
  cxsBP.EditValue := cxTblBOM1.DataController.Summary.FooterSummaryValues[0];
  cxsLaborCost.EditValue := cxTblRouting.DataController.Summary.FooterSummaryValues[1];
  cxsListrik.EditValue := cxTblRouting1.DataController.Summary.FooterSummaryValues[1];
  cxsTmargin.Value := (cxsCostMaterial.EditValue+cxsLaborCost.EditValue+cxslainnya.EditValue);
  cxsTKomisi.Value := (cxsCostMaterial.EditValue+cxsLaborCost.EditValue+cxslainnya.EditValue);
  cxsTHPP.Value := (cxsCostMaterial.EditValue+cxsLaborCost.EditValue+cxslainnya.EditValue)+ (((cxsCostMaterial.EditValue+cxsLaborCost.EditValue+cxslainnya.EditValue)*10)/100);

  //KG
  cxSpinEdit1.Value := (cxsCostMaterial.Value / cxsQty.Value );
  cxSpinEdit2.Value := (cxsLaborCost.Value / cxsQty.Value );
  cxSpinEdit4.Value := (cxsTmargin.Value / cxsQty.Value );
  cxSpinEdit5.Value := (cxsTKomisi.Value / cxsQty.Value );
  cxSpinEdit6.Value := (cxsTHPP.Value / cxsQty.Value );
  cxSpinEdit13.Value := (cxsBP.Value / cxsQty.Value );
  cxSpinEdit15.Value := (cxsListrik.Value / cxsQty.Value );

  //PCS
  cxSpinEdit7.Value := (cxsCostMaterial.Value / cxsOrderPcs.Value );
  cxSpinEdit8.Value := (cxsLaborCost.Value / cxsOrderPcs.Value );
  cxSpinEdit10.Value := (cxsTmargin.Value / cxsOrderPcs.Value );
  cxSpinEdit11.Value := (cxsTKomisi.Value / cxsOrderPcs.Value );
  cxSpinEdit12.Value := (cxsTHPP.Value / cxsOrderPcs.Value );
  cxSpinEdit14.Value := (cxsbp.Value / cxsOrderPcs.Value );
  cxSpinEdit16.Value := (cxsListrik.Value / cxsOrderPcs.Value );

  //Chart
  total := (cxsCostMaterial.Value + cxsBP.Value + cxsCostMaterial.Value + cxsListrik.Value + cxsLainnya.Value) ;
  rm := (cxsCostMaterial.Value/total)*100 ;
  bp := (cxsBP.Value/total)*100 ;
  upah := (cxsLaborCost.Value /total)*100;
  listrik := (cxsListrik.Value/total)*100;
  lainnya := (cxsLainnya.value/total)*100;
  Chart1.Series[0].Clear ;
  Chart1.Series[0].Add(rm,'RM',clRed);
  Chart1.Series[0].Add(bp,'BP',clYellow);
  Chart1.Series[0].Add(upah,'UPAH',clGreen);
  Chart1.Series[0].Add(listrik,'LISTRIK',clblue);
  Chart1.Series[0].Add(lainnya,'LAINNYA',clblack);
                                        }
end;

procedure TfrmCostCalculation.cxLUBrgPropertiesChange(Sender: TObject);
var
  z : TZQuery ;
begin


end;

procedure TfrmCostCalculation.cxsLainnyaPropertiesEditValueChanged(
  Sender: TObject);
var
  total,rm,bp,upah,listrik,lainnya : Double ;
begin

  { cxSpinEdit3.Value := cxsLainnya.Value / cxsQty.Value ;

   //Chart
  total := (cxsCostMaterial.Value + cxsBP.Value + cxsCostMaterial.Value + cxsListrik.Value + cxsLainnya.Value) ;
  rm := (cxsCostMaterial.Value/total)*100 ;
  bp := (cxsBP.Value/total)*100 ;
  upah := (cxsLaborCost.Value /total)*100;
  listrik := (cxsListrik.Value/total)*100;
  lainnya := (cxsLainnya.value/total)*100;
  Chart1.Series[0].Clear ;
  Chart1.Series[0].Add(rm,'RM',clRed);
  Chart1.Series[0].Add(bp,'BP',clYellow);
  Chart1.Series[0].Add(upah,'UPAH',clGreen);
  Chart1.Series[0].Add(listrik,'LISTRIK',clblue);
  Chart1.Series[0].Add(lainnya,'LAINNYA',clblack);      }
end;

procedure TfrmCostCalculation.cxTblBOMDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
  var
  i : Integer;
begin
  inherited;
   if (AItemIndex = cxColpasar.Index) then begin
      i := ADataController.GetFocusedRecordIndex;
      with ADataController do begin
        Values[i, cxColTotal1.Index] := cxsBeratBersih.EditValue*(Values[i, cxColPersen.Index]/100)*Values[i, cxColpasar.Index]*(1+(cxsReject.EditValue/100));
      end;

      try
         cxGrid2.BeginUpdate;
        cxsRaw2.EditValue := cxTblBOM.DataController.Summary.FooterSummaryValues[1];
         cxsRaw3.EditValue :=  cxsRaw2.EditValue*1.1;
        cxsRaw4.EditValue :=  cxsRaw2.EditValue/cxsBeratBersih.EditValue ;
        cxsRaw5.EditValue :=  (cxsRaw2.EditValue*1.1)/cxsBeratBersih.EditValue;

        if cxsRaw2.EditValue<>0 then
        cxsHPP2.EditValue := cxsRaw2.EditValue + cxsUpah2.EditValue + cxsListrik2.EditValue + cxsSupport2.EditValue   ;
         if cxsRaw3.EditValue<>0 then
        cxsHPP3.EditValue := cxsRaw3.EditValue + cxsUpah3.EditValue + cxsListrik3.EditValue + cxsSupport3.EditValue ;
         if cxsRaw4.EditValue<>0 then
        cxsHPP4.EditValue := cxsRaw4.EditValue + cxsUpah4.EditValue + cxsListrik4.EditValue + cxsSupport4.EditValue ;
         if cxsRaw5.EditValue<>0 then
        cxsHPP5.EditValue := cxsRaw5.EditValue + cxsUpah5.EditValue + cxsListrik5.EditValue + cxsSupport5.EditValue ;

          if cxTblBOM.DataController.Summary.FooterSummaryValues[1]<>0 then
          cxsRaw1.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;
          cxsUpah1.EditValue :=  cxTblRouting.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;
          //cxsSupport1.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue ;
          cxsListrik1.EditValue :=  cxTblRouting1.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100;
          cxsHPP1.EditValue :=  cxsHPP2.EditValue/cxsHPP2.EditValue*100 ;



         cxsHarga1.EditValue := cxsHPP2.EditValue + cxsBop2.EditValue + cxsTrans2.EditValue + cxsMargin2.EditValue;
  cxsHarga2.EditValue := cxsHPP3.EditValue + cxsBop3.EditValue  + cxsTrans3.EditValue + cxsMargin3.EditValue;
  cxsHarga3.EditValue := cxsHPP4.EditValue + cxsBop4.EditValue  + cxsTrans4.EditValue+ cxsMargin4.EditValue;
  cxsHarga4.EditValue := cxsHPP5.EditValue + cxsBop5.EditValue  + cxsTrans5.EditValue + cxsMargin5.EditValue;
                finally
        cxGrid2.EndUpdate;
     end;
   end;
end;



procedure TfrmCostCalculation.cxsBop1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxsBop2.EditValue := cxsRaw2.EditValue * cxsBop1.EditValue /100 ;
  cxsBop3.EditValue := cxsRaw3.EditValue * cxsBop1.EditValue /100 ;
  cxsBop4.EditValue := cxsRaw4.EditValue * cxsBop1.EditValue /100 ;
  cxsBop5.EditValue := cxsRaw5.EditValue * cxsBop1.EditValue /100 ;

 cxsHarga1.EditValue := cxsHPP2.EditValue + cxsBop2.EditValue + cxsTrans2.EditValue + cxsMargin2.EditValue;
  cxsHarga2.EditValue := cxsHPP3.EditValue + cxsBop3.EditValue  + cxsTrans3.EditValue + cxsMargin3.EditValue;
  cxsHarga3.EditValue := cxsHPP4.EditValue + cxsBop4.EditValue  + cxsTrans4.EditValue+ cxsMargin4.EditValue;
  cxsHarga4.EditValue := cxsHPP5.EditValue + cxsBop5.EditValue  + cxsTrans5.EditValue + cxsMargin5.EditValue;
end;


procedure TfrmCostCalculation.cxsTrans1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxsTrans2.EditValue := cxsRaw2.EditValue * cxsTrans1.EditValue /100 ;
  cxsTrans3.EditValue := cxsRaw3.EditValue * cxsTrans1.EditValue /100 ;
  cxsTrans4.EditValue := cxsRaw4.EditValue * cxsTrans1.EditValue /100 ;
  cxsTrans5.EditValue := cxsRaw5.EditValue * cxsTrans1.EditValue /100 ;

  cxsHarga1.EditValue := cxsHPP2.EditValue + cxsBop2.EditValue + cxsTrans2.EditValue + cxsMargin2.EditValue;
  cxsHarga2.EditValue := cxsHPP3.EditValue + cxsBop3.EditValue  + cxsTrans3.EditValue + cxsMargin3.EditValue;
  cxsHarga3.EditValue := cxsHPP4.EditValue + cxsBop4.EditValue  + cxsTrans4.EditValue+ cxsMargin4.EditValue;
  cxsHarga4.EditValue := cxsHPP5.EditValue + cxsBop5.EditValue  + cxsTrans5.EditValue + cxsMargin5.EditValue;
end;

procedure TfrmCostCalculation.cxsMargin1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxsMargin2.EditValue := cxsHPP2.EditValue * cxsTrans1.EditValue /100 ;
  cxsMargin3.EditValue := cxsHPP3.EditValue * cxsTrans1.EditValue /100 ;
  cxsMargin4.EditValue := cxsHPP4.EditValue * cxsTrans1.EditValue /100 ;
  cxsMargin5.EditValue := cxsHPP5.EditValue * cxsTrans1.EditValue /100 ;

 cxsHarga1.EditValue := cxsHPP2.EditValue + cxsBop2.EditValue + cxsTrans2.EditValue + cxsMargin2.EditValue;
  cxsHarga2.EditValue := cxsHPP3.EditValue + cxsBop3.EditValue  + cxsTrans3.EditValue + cxsMargin3.EditValue;
  cxsHarga3.EditValue := cxsHPP4.EditValue + cxsBop4.EditValue  + cxsTrans4.EditValue+ cxsMargin4.EditValue;
  cxsHarga4.EditValue := cxsHPP5.EditValue + cxsBop5.EditValue  + cxsTrans5.EditValue + cxsMargin5.EditValue;
end;

procedure TfrmCostCalculation.cxTblBom1DataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
  var
    i : Integer ;
begin
  inherited;
     if (AItemIndex = cxGridColumn4.Index) or (AItemIndex = cxGridColumn9.Index) then begin
      i := ADataController.GetFocusedRecordIndex;
      with ADataController do begin
        Values[i, cxGridColumn11.Index] := Values[i, cxGridColumn4.index]*Values[i, cxGridColumn9.index];
      end;

      try
         cxGrid3.BeginUpdate;
        cxsSupport2.EditValue := cxTblBOM1.DataController.Summary.FooterSummaryValues[1];
         cxsSupport3.EditValue :=  cxsSupport2.EditValue*1.1;
        cxsSupport4.EditValue :=  cxsSupport2.EditValue/cxsBeratBersih.EditValue ;
        cxsSupport5.EditValue :=  (cxsSupport2.EditValue*1.1)/cxsBeratBersih.EditValue;

        if cxsSupport2.EditValue<>0 then
        cxsHPP2.EditValue := cxsRaw2.EditValue + cxsUpah2.EditValue + cxsListrik2.EditValue + cxsSupport2.EditValue  ;
         if cxsSupport3.EditValue<>0 then
        cxsHPP3.EditValue := cxsRaw3.EditValue + cxsUpah3.EditValue + cxsListrik3.EditValue + cxsSupport3.EditValue ;
         if cxsSupport4.EditValue<>0 then
        cxsHPP4.EditValue := cxsRaw4.EditValue + cxsUpah4.EditValue + cxsListrik4.EditValue + cxsSupport4.EditValue ;
         if cxsSupport5.EditValue<>0 then
        cxsHPP5.EditValue := cxsRaw5.EditValue + cxsUpah5.EditValue + cxsListrik5.EditValue + cxsSupport5.EditValue ;

          if cxTblBOM1.DataController.Summary.FooterSummaryValues[1]<>0 then
          cxsSupport1.EditValue :=  cxTblBOM1.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;
          cxsRaw1.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;
          cxsUpah1.EditValue :=  cxTblRouting.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100 ;
          //cxsSupport1.EditValue :=  cxTblBOM.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue ;
          cxsListrik1.EditValue :=  cxTblRouting1.DataController.Summary.FooterSummaryValues[1]/cxsHPP2.EditValue * 100;
          cxsHPP1.EditValue :=  cxsHPP2.EditValue/cxsHPP2.EditValue*100 ;


     cxsHarga1.EditValue := cxsHPP2.EditValue + cxsBop2.EditValue + cxsTrans2.EditValue + cxsMargin2.EditValue;
  cxsHarga2.EditValue := cxsHPP3.EditValue + cxsBop3.EditValue  + cxsTrans3.EditValue + cxsMargin3.EditValue;
  cxsHarga3.EditValue := cxsHPP4.EditValue + cxsBop4.EditValue  + cxsTrans4.EditValue+ cxsMargin4.EditValue;
  cxsHarga4.EditValue := cxsHPP5.EditValue + cxsBop5.EditValue  + cxsTrans5.EditValue + cxsMargin5.EditValue;
        finally
        cxGrid3.EndUpdate;
     end;
   end;
end;

procedure TfrmCostCalculation.btnSimpanClick(Sender: TObject);
var
  q,z,r,s,a : TZQuery ;
  i,j,k,l : integer;
  sNoTrs : string;
begin
  inherited;
    if cxLUBrg.Text = '' then begin
    MsgBox('Barang Belum Dipilih');
    cxLUBrg.SetFocus;
    Abort;
  end;

    if Self.Jenis = 'tambah' then begin
    sNoTrs := GetLastFak('costcalculation');
    UpdateFaktur(Copy(sNoTrs,1,7));
  end
  else begin
    sNoTrs := cxtNoTrans.Text;
  end;

   q := OpenRS('SELECT * FROM tbl_cost_head where no_cost =''%s''',[sNoTrs]) ;

  if Self.Jenis ='tambah' then begin
    q.Insert;

    //RAW Material
        with cxTblBOM.DataController  do begin
          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_cost_mat where no_cost =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_cost').AsString := sNoTrs;
            z.FieldByName('kode_brg').AsString := Values[i, cxColBomKode.index];
            if (Values [i, cxColPersen.Index]<>0) then
            z.FieldByName('persen').AsFloat := Values [i, cxColPersen.Index];
            //if (Values [i, cxColPrice.Index]<>0) then
           // z.FieldByName('harga_actual').AsFloat := Values [i, cxColPrice.Index];
            if ( Values [i, cxColpasar.Index]<>0) then
            z.FieldByName('harga').AsFloat := Values [i, cxColpasar.Index];
            if (Values [i, cxColTotal1.Index]<>0) then
            z.FieldByName('total').AsFloat := Values [i, cxColTotal1.Index];
            z.Post;
            z.Close;
          end;
        end;   

      //Support Material
         with cxTblBom1.DataController  do begin
          for j:= 0 to RecordCount -1 do begin
            r := OpenRS('SELECT * FROM tbl_cost_mat1 where no_cost =''%s''',[sNoTrs]) ;
            r.Insert;
            r.FieldByName('no_cost').AsString := sNoTrs;
            r.FieldByName('kode_brg').AsString := Values[j, cxGridColumn1.index];
            if (Values [j, cxGridColumn4.Index]<>0) then
            r.FieldByName('qty').AsFloat := Values [j, cxGridColumn4.Index];
            r.FieldByName('satuan').AsString := Values [j, cxGridColumn5.Index];
           // if (Values [j, cxGridColumn8.Index]<>0) then
          //  r.FieldByName('harga_actual').AsFloat := Values [j, cxGridColumn8.Index];
            if (Values [j, cxGridColumn9.Index]<>0) then
            r.FieldByName('harga').AsFloat := Values [j, cxGridColumn9.Index];
            if (Values [j, cxGridColumn11.Index]<>0) then
            r.FieldByName('total').AsFloat := Values [j, cxGridColumn11.Index];
            r.Post;
           r.Close;
          end;
        end;

        //Upah
        with cxTblRouting.DataController  do begin
          for k := 0 to RecordCount -1 do begin
            s := OpenRS('SELECT * FROM tbl_cost_routing where no_cost =''%s''',[sNoTrs]) ;
            s.Insert;
            s.FieldByName('no_cost').AsString := sNoTrs;
            s.FieldByName('no').AsInteger:= Values[k, cxColNo.index];
            s.FieldByName('jenis').AsString := Values[k, cxColRouting.index];
            s.FieldByName('mesin').AsString := Values[k, cxColMesin.index];
            s.FieldByName('umk').AsFloat := Values [k, cxColUpah.Index];
            s.FieldByName('operator').AsFloat := Values [k, cxColOperator.Index];
            s.FieldByName('output').AsFloat := Values [k, cxColOutput.Index];
            s.FieldByName('upah').AsFloat := Values [k, cxColBiayaUpah.Index];
            s.FieldByName('f_jenis').AsInteger := 0;
            s.Post;
            s.Close;
          end;
        end;

          //Listrik
        with cxTblRouting1.DataController  do begin
          for l := 0 to RecordCount -1 do begin
            a := OpenRS('SELECT * FROM tbl_cost_routing1 where no_cost =''%s''',[sNoTrs]) ;
            a.Insert;
            a.FieldByName('no_cost').AsString := sNoTrs;
            a.FieldByName('no').AsInteger:= Values[l, cxGridColumn12.index];
            a.FieldByName('jenis').AsString := Values[l, cxGridColumn13.index];
            a.FieldByName('mesin').AsString := Values[l, cxGridColumn14.index];
            a.FieldByName('listrik').AsFloat := Values [l, cxGridColumn22.Index];
            a.FieldByName('daya').AsFloat := Values [l, cxGridColumn17.Index];
            a.FieldByName('biaya_listrik').AsFloat := Values [l, cxGridColumn23.Index];
            a.FieldByName('f_jenis').AsInteger := 1;
            a.Post;
            a.Close;
          end;
        end;
    end
    else begin
      q.Edit;
      try
          dm.zConn.StartTransaction;
          dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_mat WHERE no_cost = ''' + sNoTrs + '''');
          dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_mat1 WHERE no_cost = ''' + sNoTrs + '''');
          dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_routing WHERE no_cost = ''' + sNoTrs + '''');
          dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_routing1 WHERE no_cost = ''' + sNoTrs + '''');
          dm.zConn.Commit;
        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;

        //RAW Material
        with cxTblBOM.DataController  do begin
          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_cost_mat where no_cost =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_cost').AsString := sNoTrs;
            z.FieldByName('kode_brg').AsString := Values[i, cxColBomKode.index];
            if (Values [i, cxColPersen.Index]<>0) then
            z.FieldByName('persen').AsFloat := Values [i, cxColPersen.Index];
            //if (Values [i, cxColPrice.Index]<>0) then
           // z.FieldByName('harga_actual').AsFloat := Values [i, cxColPrice.Index];
            if ( Values [i, cxColpasar.Index]<>0) then
            z.FieldByName('harga').AsFloat := Values [i, cxColpasar.Index];
            if (Values [i, cxColTotal1.Index]<>0) then
            z.FieldByName('total').AsFloat := Values [i, cxColTotal1.Index];
            z.Post;
            z.Close;
          end;
        end;   

      //Support Material
         with cxTblBom1.DataController  do begin
          for j:= 0 to RecordCount -1 do begin
            r := OpenRS('SELECT * FROM tbl_cost_mat1 where no_cost =''%s''',[sNoTrs]) ;
            r.Insert;
            r.FieldByName('no_cost').AsString := sNoTrs;
            r.FieldByName('kode_brg').AsString := Values[j, cxGridColumn1.index];
            if (Values [j, cxGridColumn4.Index]<>0) then
            r.FieldByName('qty').AsFloat := Values [j, cxGridColumn4.Index];
            r.FieldByName('satuan').AsString := Values [j, cxGridColumn5.Index];
           // if (Values [j, cxGridColumn8.Index]<>0) then
          //  r.FieldByName('harga_actual').AsFloat := Values [j, cxGridColumn8.Index];
            if (Values [j, cxGridColumn9.Index]<>0) then
            r.FieldByName('harga').AsFloat := Values [j, cxGridColumn9.Index];
            if (Values [j, cxGridColumn11.Index]<>0) then
            r.FieldByName('total').AsFloat := Values [j, cxGridColumn11.Index];
            r.Post;
           r.Close;
          end;
        end;

        //Upah
        with cxTblRouting.DataController  do begin
          for k := 0 to RecordCount -1 do begin
            s := OpenRS('SELECT * FROM tbl_cost_routing where no_cost =''%s''',[sNoTrs]) ;
            s.Insert;
            s.FieldByName('no_cost').AsString := sNoTrs;
            s.FieldByName('no').AsInteger:= Values[k, cxColNo.index];
            s.FieldByName('jenis').AsString := Values[k, cxColRouting.index];
            s.FieldByName('mesin').AsString := Values[k, cxColMesin.index];
            s.FieldByName('umk').AsFloat := Values [k, cxColUpah.Index];
            s.FieldByName('operator').AsFloat := Values [k, cxColOperator.Index];
            s.FieldByName('output').AsFloat := Values [k, cxColOutput.Index];
            s.FieldByName('upah').AsFloat := Values [k, cxColBiayaUpah.Index];
            s.FieldByName('f_jenis').AsInteger := 0;
            s.Post;
            s.Close;
          end;
        end;

          //Listrik
        with cxTblRouting1.DataController  do begin
          for l := 0 to RecordCount -1 do begin
            a := OpenRS('SELECT * FROM tbl_cost_routing1 where no_cost =''%s''',[sNoTrs]) ;
            a.Insert;
            a.FieldByName('no_cost').AsString := sNoTrs;
            a.FieldByName('no').AsInteger:= Values[l, cxGridColumn12.index];
            a.FieldByName('jenis').AsString := Values[l, cxGridColumn13.index];
            a.FieldByName('mesin').AsString := Values[l, cxGridColumn14.index];
            a.FieldByName('listrik').AsFloat := Values [l, cxGridColumn22.Index];
            a.FieldByName('daya').AsFloat := Values [l, cxGridColumn17.Index];
            a.FieldByName('biaya_listrik').AsFloat := Values [l, cxGridColumn23.Index];
            a.FieldByName('f_jenis').AsInteger := 1;
            a.Post;
            a.Close;
          end;
        end;
      end;

       with q do begin
        FieldByName('no_cost').AsString           := cxtNoTrans.Text ;
        FieldByName('tgl_cost').AsDateTime        := cxdTglTrs.EditValue ;
        FieldByName('kode_brg').AsString          := cxLUBrg.EditValue ;
        FieldByName('reject').AsFloat             := cxsReject.EditValue ;
        FieldByName('tebal').AsFloat              := cxsTebal.EditValue ;
        FieldByName('lebar_buka').AsFloat         := cxsLebarBuka.EditValue ;
        FieldByName('lebar_jadi').AsFloat         := cxsLebarJadi.EditValue ;
        FieldByName('panjang').AsFloat            := cxsPanjang.EditValue ;
        FieldByName('berat_kotor').AsFloat        := cxsBeratKotor.EditValue ;
        FieldByName('berat_bersih').AsFloat       := cxsBeratBersih.EditValue ;
        FieldByName('berat_meter').AsFloat        := cxsBeratMeter.EditValue ;
        FieldByName('berat_jenis').AsFloat        := cxsBeratJenis.EditValue ;
        FieldByName('raw1').AsFloat               := cxsRaw1.EditValue ;
        FieldByName('raw2').AsFloat               := cxsRaw2.EditValue ;
        FieldByName('raw3').AsFloat               := cxsRaw3.EditValue ;
        FieldByName('raw4').AsFloat               := cxsRaw4.EditValue ;
        FieldByName('raw5').AsFloat               := cxsRaw5.EditValue ;
        FieldByName('support1').AsFloat           := cxsSupport1.EditValue ;
        FieldByName('support2').AsFloat           := cxsSupport2.EditValue ;
        FieldByName('support3').AsFloat           := cxsSupport3.EditValue ;
        FieldByName('support4').AsFloat           := cxsSupport4.EditValue ;
        FieldByName('support5').AsFloat           := cxsSupport5.EditValue ;
        FieldByName('upah1').AsFloat              := cxsUpah1.EditValue ;
        FieldByName('upah2').AsFloat              := cxsUpah2.EditValue ;
        FieldByName('upah3').AsFloat              := cxsUpah3.EditValue ;
        FieldByName('upah4').AsFloat              := cxsUpah4.EditValue ;
        FieldByName('upah5').AsFloat              := cxsUpah5.EditValue ;
        FieldByName('listrik1').AsFloat           := cxsListrik1.EditValue ;
        FieldByName('listrik2').AsFloat           := cxsListrik2.EditValue ;
        FieldByName('listrik3').AsFloat           := cxsListrik3.EditValue ;
        FieldByName('listrik4').AsFloat           := cxsListrik4.EditValue ;
        FieldByName('listrik5').AsFloat           := cxsListrik5.EditValue ;
        FieldByName('hpp1').AsFloat               := cxshpp1.EditValue ;
        FieldByName('hpp2').AsFloat               := cxshpp2.EditValue ;
        FieldByName('hpp3').AsFloat               := cxshpp3.EditValue ;
        FieldByName('hpp4').AsFloat               := cxshpp4.EditValue ;
        FieldByName('hpp5').AsFloat               := cxshpp5.EditValue ;
        FieldByName('bop1').AsFloat               := cxsbop1.EditValue ;
        FieldByName('bop2').AsFloat               := cxsbop2.EditValue ;
        FieldByName('bop3').AsFloat               := cxsbop3.EditValue ;
        FieldByName('bop4').AsFloat               := cxsbop4.EditValue ;
        FieldByName('bop5').AsFloat               := cxsbop5.EditValue ;
        FieldByName('transport1').AsFloat         := cxsTrans1.EditValue ;
        FieldByName('transport2').AsFloat         := cxsTrans2.EditValue ;
        FieldByName('transport3').AsFloat         := cxsTrans3.EditValue ;
        FieldByName('transport4').AsFloat         := cxsTrans4.EditValue ;
        FieldByName('transport5').AsFloat         := cxsTrans5.EditValue ;
        FieldByName('margin1').AsFloat            := cxsMargin1.EditValue ;
        FieldByName('margin2').AsFloat            := cxsMargin2.EditValue ;
        FieldByName('margin3').AsFloat            := cxsMargin3.EditValue ;
        FieldByName('margin4').AsFloat            := cxsMargin4.EditValue ;
        FieldByName('margin5').AsFloat            := cxsMargin5.EditValue ;
        FieldByName('harga1').AsFloat             := cxsHarga1.EditValue ;
        FieldByName('harga2').AsFloat             := cxsHarga2.EditValue ;
        FieldByName('harga3').AsFloat             := cxsHarga3.EditValue ;
        FieldByName('harga4').AsFloat             := cxsHarga4.EditValue ;
        if self.Jenis = 'tambah' then begin
              FieldByName('user_input').AsString := aplikasi.NamaUser;
              end;
        if Self.Jenis = 'edit' then begin
              FieldByName('user_edit').AsString := aplikasi.NamaUser;
              FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
        end;
        Post ;
        MsgBox('Cost Calculation Sudah Disimpan');
        ClearAll;
        btnBatalClick(nil);
        Close;
  end;
  btnKeluarClick(nil);
  //frmDaftarCost.dsDaftarCost.DataSet.Refresh ;
end;

procedure TfrmCostCalculation.ClearAll;
var
  i: Integer;
begin
  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxGroupBox then
      (Components[i] as TcxGroupBox).Enabled := False;
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxSpinEdit then
      (Components[i] as TcxSpinEdit).Value := 0;
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
  end;

  cxTblBOM.DataController.RecordCount:= 0;
  cxTblRouting.DataController.RecordCount:=0;
  cxTblBOM1.DataController.RecordCount:= 0;
  cxTblRouting1.DataController.RecordCount:=0;

  Self.Jenis := '';

end;

procedure TfrmCostCalculation.FormShow(Sender: TObject);
var
  q,z,r,s,a : TZQuery ;
  i,j,k,l : integer;
begin
  inherited;
  if Jenis='edit' then begin
      cxtNoTrans.Text := mNoCost ;

       q := OpenRS('SELECT * FROM tbl_cost_head where no_cost =''%s''',[cxtNoTrans.Text]) ;

       with q do begin
        cxtNoTrans.Text             := FieldByName('no_cost').AsString;
        cxdTglTrs.EditValue         := FieldByName('tgl_cost').AsDateTime;
        cxLUBrg.EditValue           := FieldByName('kode_brg').AsString;
        cxsReject.EditValue         := FieldByName('reject').AsFloat;
        cxsTebal.EditValue          :=FieldByName('tebal').AsFloat;
        cxsLebarBuka.EditValue      :=FieldByName('lebar_buka').AsFloat;
        cxsLebarJadi.EditValue      :=FieldByName('lebar_jadi').AsFloat;
        cxsPanjang.EditValue        :=FieldByName('panjang').AsFloat;
        cxsBeratKotor.EditValue     :=FieldByName('berat_kotor').AsFloat;
        cxsBeratBersih.EditValue    :=FieldByName('berat_bersih').AsFloat;
        cxsBeratMeter.EditValue     :=FieldByName('berat_meter').AsFloat;
        cxsBeratJenis.EditValue     :=FieldByName('berat_jenis').AsFloat;
        cxsRaw1.EditValue           :=FieldByName('raw1').AsFloat;
        cxsRaw2.EditValue           :=FieldByName('raw2').AsFloat;
        cxsRaw3.EditValue           :=FieldByName('raw3').AsFloat;
        cxsRaw4.EditValue           :=FieldByName('raw4').AsFloat;
        cxsRaw5.EditValue           :=FieldByName('raw5').AsFloat;
        cxsSupport1.EditValue       :=FieldByName('support1').AsFloat;
        cxsSupport2.EditValue       :=FieldByName('support2').AsFloat;
        cxsSupport3.EditValue       :=FieldByName('support3').AsFloat;
        cxsSupport4.EditValue       :=FieldByName('support4').AsFloat;
        cxsSupport5.EditValue       :=FieldByName('support5').AsFloat ;
        cxsUpah1.EditValue          :=FieldByName('upah1').AsFloat;
        cxsUpah2.EditValue          :=FieldByName('upah2').AsFloat;
        cxsUpah3.EditValue          :=FieldByName('upah3').AsFloat;
        cxsUpah4.EditValue          :=FieldByName('upah4').AsFloat;
        cxsUpah5.EditValue          :=FieldByName('upah5').AsFloat ;
        cxsListrik1.EditValue       :=FieldByName('listrik1').AsFloat;
        cxsListrik2.EditValue       :=FieldByName('listrik2').AsFloat;
        cxsListrik3.EditValue       :=FieldByName('listrik3').AsFloat;
        cxsListrik4.EditValue       :=FieldByName('listrik4').AsFloat;
        cxsListrik5.EditValue       :=FieldByName('listrik5').AsFloat;
        cxshpp1.EditValue           :=FieldByName('hpp1').AsFloat;
        cxshpp2.EditValue           :=FieldByName('hpp2').AsFloat;
        cxshpp3.EditValue           :=FieldByName('hpp3').AsFloat;
        cxshpp4.EditValue           :=FieldByName('hpp4').AsFloat;
        cxshpp5.EditValue           :=FieldByName('hpp5').AsFloat;
        cxsbop1.EditValue           :=FieldByName('bop1').AsFloat;
        cxsbop2.EditValue           :=FieldByName('bop2').AsFloat;
        cxsbop3.EditValue           :=FieldByName('bop3').AsFloat;
        cxsbop4.EditValue           :=FieldByName('bop4').AsFloat;
        cxsbop5.EditValue           :=FieldByName('bop5').AsFloat;
        cxsTrans1.EditValue         :=FieldByName('transport1').AsFloat;
        cxsTrans2.EditValue         :=FieldByName('transport2').AsFloat;
        cxsTrans3.EditValue         :=FieldByName('transport3').AsFloat;
        cxsTrans4.EditValue         :=FieldByName('transport4').AsFloat;
        cxsTrans5.EditValue         :=FieldByName('transport5').AsFloat;
        cxsMargin1.EditValue        :=FieldByName('margin1').AsFloat;
        cxsMargin2.EditValue        :=FieldByName('margin2').AsFloat;
        cxsMargin3.EditValue        :=FieldByName('margin3').AsFloat;
        cxsMargin4.EditValue        :=FieldByName('margin4').AsFloat;
        cxsMargin5.EditValue        :=FieldByName('margin5').AsFloat;
        cxsHarga1.EditValue         :=FieldByName('harga1').AsFloat;
        cxsHarga2.EditValue         :=FieldByName('harga2').AsFloat;
        cxsHarga3.EditValue         :=FieldByName('harga3').AsFloat;
        cxsHarga4.EditValue         :=FieldByName('harga4').AsFloat;
      end;

      //RAW Material
      z := OpenRS('SELECT * FROM tbl_cost_mat where no_cost =''%s''',[cxtNoTrans.Text]) ;
      while not z.Eof do begin
        with cxTblBOM.DataController do begin
         i := AppendRecord ;
         Values[i, cxColBomKode.index] :=  z.FieldByName('kode_brg').AsString ;
         Values[i, cxColDesc2.index] :=  z.FieldByName('kode_brg').AsString;
         Values [i, cxColPersen.Index] :=z.FieldByName('persen').AsFloat;
         Values [i, cxColpasar.Index] := z.FieldByName('harga').AsFloat ;
         Values [i, cxColTotal1.Index] := z.FieldByName('total').AsFloat;
        end;
        z.Next;
      end;
      z.Close;

         //Support Material
       r := OpenRS('SELECT * FROM tbl_cost_mat1 where no_cost =''%s''',[cxtNoTrans.Text]) ;
      while not r.Eof do begin
        with cxTblBom1.DataController do begin
         j := AppendRecord ;
         Values[j, cxGridColumn1.index] :=  r.FieldByName('kode_brg').AsString  ;
         Values[j, cxGridColumn3.index] :=  r.FieldByName('kode_brg').AsString  ;
         Values [j, cxGridColumn4.Index] :=  r.FieldByName('qty').AsFloat;
         Values [j, cxGridColumn5.Index] :=r.FieldByName('satuan').AsString;
         Values [j, cxGridColumn9.Index] := r.FieldByName('harga').AsFloat ;
         Values [j, cxGridColumn11.Index] :=  r.FieldByName('total').AsFloat;
        end;
        r.Next;
      end;
      r.Close;

       //Upah

       s := OpenRS('SELECT * FROM tbl_cost_routing where no_cost =''%s''',[cxtNoTrans.Text]) ;
      while not s.Eof do begin
        with cxTblRouting.DataController do begin
         k := AppendRecord ;
         Values[k, cxColNo.index] :=  s.FieldByName('no').AsInteger  ;
         Values[k, cxColRouting.index] := s.FieldByName('jenis').AsString;
         Values[k, cxColMesin.index] := s.FieldByName('mesin').AsString;
         Values [k, cxColUpah.Index] :=   s.FieldByName('umk').AsFloat;
         Values [k, cxColOperator.Index] :=   s.FieldByName('operator').AsFloat;
         Values [k, cxColOutput.Index] :=   s.FieldByName('output').AsFloat;
         Values [k, cxColBiayaUpah.Index] :=  s.FieldByName('upah').AsFloat;
        end;
        s.Next;
      end;
      s.Close;

          //Listrik

      a := OpenRS('SELECT * FROM tbl_cost_routing1 where no_cost =''%s''',[cxtNoTrans.Text]) ;
      while not a.Eof do begin
        with cxTblRouting1.DataController do begin
         l := AppendRecord ;
         Values[l, cxGridColumn12.index] := a.FieldByName('no').AsInteger;
         Values[l, cxGridColumn13.index] := a.FieldByName('jenis').AsString;
         Values[l, cxGridColumn14.index] := a.FieldByName('mesin').AsString;
         Values [l, cxGridColumn22.Index] := a.FieldByName('listrik').AsFloat;
         Values [l, cxGridColumn17.Index] := a.FieldByName('daya').AsFloat;
         Values [l, cxGridColumn23.Index] := a.FieldByName('biaya_listrik').AsFloat;
        end;
        a.Next;
      end;
      a.Close;

      Button1.Visible := False ;
  end;
end;

procedure TfrmCostCalculation.cxLUBrgPropertiesEditValueChanged(
  Sender: TObject);
  var
    z : TZQuery ;
begin
  inherited;
 z := OpenRS('SELECT * FROM tbl_barang where kode =''%s''',[cxLUBrg.EditValue]) ;
 with z do begin
  cxsTebal.EditValue            := FieldByName('tebal').AsFloat;
  cxsBeratKotor.EditValue       := FieldByName('berat_kotor').AsFloat/1000 ;
  cxsBeratBersih.EditValue      := FieldByName('berat_bersih').AsFloat/1000;
  cxsBeratMeter.EditValue       := FieldByName('berat_meter').AsFloat;
  cxsLebarBuka.EditValue        := FieldByName('lebar_buka').AsFloat;
  cxsLebarJadi.Editvalue        := FieldByName('lebar_jadi').AsFloat;
  cxsPanjang.EditValue          := FieldByName('panjang').AsFloat;
  cxsBeratJenis.EditValue       := FieldByName('berat_jenis').AsFloat;
  //label3.Caption            := FieldByName('deskripsi').AsString;
 end;

 if (cxsTebal.Value=0) and (cxsBeratKotor.Value=0) and (cxsBeratBersih.Value=0) and (cxsBeratMeter.Value=0) and (cxsLebarBuka.Value=0) and (cxsLebarJadi.value=0) and (cxsPanjang.Value=0) and (cxsBeratJenis.Value=0) then
  Button1.Enabled := False
  else
  Button1.Enabled := True ;
end;

end.
