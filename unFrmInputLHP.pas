unit unFrmInputLHP;

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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  StdCtrls, ExtCtrls,DB, ZAbstractRODataset, ZDataset, dxSkinscxPCPainter,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxSpinEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxCheckBox,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxLookupEdit, cxDBLookupEdit;

type
  TfrmInputLHP = class(TfrmTransBaru)
    Label1: TLabel;
    Label3: TLabel;
    lblDeskripsi: TLabel;
    txtSPK: TEdit;
    btnCariBrg: TButton;
    txtKode: TEdit;
    dsHslPrd: TDataSource;
    zqrHslPrd: TZReadOnlyQuery;
    Label2: TLabel;
    cxtUrut: TcxTextEdit;
    cxtRouting: TcxTextEdit;
    Label4: TLabel;
    cxtSO: TcxTextEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    cxdTglPrd: TcxDateEdit;
    cxdStart: TcxDateEdit;
    cxdFinish: TcxDateEdit;
    Label8: TLabel;
    cxtShift: TcxTextEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid4: TcxGrid;
    cxTblDT: TcxGridTableView;
    cxColNoSPK2: TcxGridColumn;
    cxColKodeBrg2: TcxGridColumn;
    cxColDeskripsi2: TcxGridColumn;
    cxColRouting2: TcxGridColumn;
    cxColTglSPK2: TcxGridColumn;
    cxColQtySPK2: TcxGridColumn;
    cxColKategoriDown2: TcxGridColumn;
    cxColJenisDowntime: TcxGridColumn;
    cxColTglHP2: TcxGridColumn;
    cxGridColumn8: TcxGridColumn;
    cxColQtyReject2: TcxGridColumn;
    cxColMesin2: TcxGridColumn;
    cxColSatSPK2: TcxGridColumn;
    cxColKetMesin2: TcxGridColumn;
    cxColShift2: TcxGridColumn;
    cxColJam2_1: TcxGridColumn;
    cxColJam2_2: TcxGridColumn;
    cxColOperator2: TcxGridColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTblHP: TcxGridTableView;
    cxGridLevel1: TcxGridLevel;
    zqrKategoriDown: TZReadOnlyQuery;
    dsKategoriDown: TDataSource;
    zqrKetMesin: TZReadOnlyQuery;
    dsKetMesin: TDataSource;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    Label9: TLabel;
    cxlMesin: TcxLookupComboBox;
    cxColNoTblHPLot: TcxGridColumn;
    cxColNoTblHPQty1: TcxGridColumn;
    cxColNoTblHPSat1: TcxGridColumn;
    cxColNoTblHPQty2: TcxGridColumn;
    Label10: TLabel;
    cxsReject: TcxSpinEdit;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    Label11: TLabel;
    cxsOperator: TcxSpinEdit;
    cxTabSheet3: TcxTabSheet;
    cxGrid12: TcxGrid;
    cxTblPakaiBBDet: TcxGridTableView;
    cxGridColumn18: TcxGridColumn;
    cxGridColumn27: TcxGridColumn;
    cxGridColumn28: TcxGridColumn;
    cxGridColumn29: TcxGridColumn;
    cxGridColumn31: TcxGridColumn;
    cxColLayer1: TcxGridColumn;
    cxColLayer2: TcxGridColumn;
    cxColLayer3: TcxGridColumn;
    cxGridColumn30: TcxGridColumn;
    cxGridLevel9: TcxGridLevel;
    cxColSisa: TcxGridColumn;
    cxtMO: TcxTextEdit;
    cxtTrans: TEdit;
    cxtRouting1: TcxTextEdit;
    cxsQtySpk: TcxSpinEdit;
    cxtUnitSPK: TcxTextEdit;
    cxsDurasi: TcxSpinEdit;
    cxColHPP: TcxGridColumn;
    cxColTHPP: TcxGridColumn;
    cxTabSheet4: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxTblHP1: TcxGridTableView;
    cxColHP1Lot: TcxGridColumn;
    cxColHP1Qty: TcxGridColumn;
    cxColHP1Unit: TcxGridColumn;
    cxColHP1QtyKG: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    cxColLayer4: TcxGridColumn;
    cxColLayer5: TcxGridColumn;
    cxColLayer6: TcxGridColumn;
    cxColLayer7: TcxGridColumn;
    cXColLayer8: TcxGridColumn;
    cxColDosing: TcxGridColumn;
    cxTabSheet5: TcxTabSheet;
    zqrKaryawan: TZReadOnlyQuery;
    dsKaryawan: TDataSource;
    cxGrid3: TcxGrid;
    cxKaryawan: TcxGridTableView;
    cxGridLevel4: TcxGridLevel;
    cxKaryawanColumn1: TcxGridColumn;
    cxKaryawanColumn2: TcxGridColumn;
    cxColNoTblHPQty3: TcxGridColumn;
    cxColHP1QtyM: TcxGridColumn;
    cxCheck: TcxCheckBox;
    cxlInline: TcxLookupComboBox;
    dsInline: TDataSource;
    zqrInline: TZReadOnlyQuery;
    cxtLHP: TEdit;
    cxChkPosting: TcxCheckBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cxsBB: TcxSpinEdit;
    cxsBK: TcxSpinEdit;
    cxsSelisih: TcxSpinEdit;
    cxColQtyKG: TcxGridColumn;
    Label15: TLabel;
    cxsNPM: TcxSpinEdit;
    Label16: TLabel;
    cxsJamOpr: TcxSpinEdit;
    Label17: TLabel;
    cxsJamOpr1: TcxSpinEdit;
    cxsDT: TcxSpinEdit;
    Label18: TLabel;
    Label19: TLabel;
    cxsAfval: TcxSpinEdit;
    procedure btnCariBrgClick(Sender: TObject);
    procedure cxdTglPrdPropertiesEditValueChanged(Sender: TObject);
    procedure cxdStartPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblDTDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblHPDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure ClearAll;
    procedure cxdFinishPropertiesEditValueChanged(Sender: TObject);
    procedure cxTblPakaiBBDetDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxKaryawanDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxCheckPropertiesChange(Sender: TObject);
    procedure cxlInlinePropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTblPakaiBBDetDataControllerAfterPost(
      ADataController: TcxCustomDataController);
    procedure cxTblPakaiBBDetNavigatorButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure cxTblHP1DataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblDTDataControllerAfterPost(
      ADataController: TcxCustomDataController);
  private
    mNoLHP: string;
    //mnTotal : Double ;
  public
    property NoLHP: string read mNoLHP write mNoLHP;
  end;

var
  frmInputLHP: TfrmInputLHP;

implementation

uses unDm, unAplikasi, unTools, unFrmCari, DateUtils;

{$R *.dfm}

procedure TfrmInputLHP.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q,z,a : TZQuery;
  j : Integer ;
  aCol: TcxGridColumn;
begin
  inherited;
  //mnTotal := 0 ;
  f := TFrmCari.Create(self);
  f.jenis := 'spk';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    txtSPK.Text:= fKode.AsString;

    q := OpenRS('SELECT a.*, IFNULL(b.no,0) no_urut_routing,' +
        'IFNULL((SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = a.no_spk),0) qty_prod ' +
        'FROM v_spk a ' +
        'LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_routing) b ON a.kode_brg = b.kode_brg ' +
        'WHERE no_spk = ''%s''',[fKode.AsString]);
    txtKode.Text := q.FieldByName('kode_brg').AsString;
    lblDeskripsi.Caption := q.FieldBYName('deskripsi').AsString;
    cxtUrut.Text := IntToStr(q.FieldByName('no_urut_routing').AsInteger);

    a := OpenRS('SELECT routing FROM tbl_routing WHERE kode = ''%s'' and No=''%s''',[txtKode.Text,cxtUrut.Text]);
    if q.FieldByname('routing').AsString='BJ' then
    cxtRouting.Text := a.FieldByname('routing').AsString
    else
    cxtRouting.Text := q.FieldByname('routing').AsString;
    a.Close;
    cxtRouting1.Text := q.FieldByname('routing').AsString;

    cxtSO.Text := q.FieldByname('no_so').AsString;
    cxtMO.Text := q.FieldByname('no_mo').AsString ;
    cxsQtySpk.EditValue := q.FieldByname('qty').AsFloat;
    cxtUnitSPK.Text := q.FieldByname('satuan').AsString;
    q.Close;


    //Disable Bila No.SPK Kosong
      if txtSPK.Text ='' then begin
      cxPageControl1.Enabled := False ;
      cxCheck.Enabled := False;
      end
      else begin
       cxPageControl1.Enabled := True ;
       cxCheck.Enabled := True;
      end;

       //Menampilkan BOM
    q := OpenRS('SELECT a.*, b.deskripsi,b.hpp,sf_wipitem(a.kode_brg) as wip FROM tbl_bom_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE no_spk = ''%s''',[fKode.AsString]);

    cxTblPakaiBBDet.DataController.RecordCount := 0;

    while not q.Eof do begin
      with cxTblPakaiBBDet.DataController do begin
        j := AppendRecord;
        Values[j, cxGridColumn18.Index] := q.FieldByName('kode_brg').AsString;
        Values[j, cxGridColumn27.Index] := q.FieldByname('deskripsi').AsString;
         if (q.FieldByname('satuan').AsString='GR') then
        Values[j, cxGridColumn28.Index] := q.FieldByName('qty').AsFloat/1000
        else
         Values[j, cxGridColumn28.Index] := q.FieldByName('qty').AsFloat ;

        if (q.FieldByname('satuan').AsString='GR') then
          Values[j, cxGridColumn30.Index] := 'KG'
        else
        Values[j, cxGridColumn30.Index] := q.FieldByname('satuan').AsString;

        Values[j, cxColHPP.Index] := q.FieldByname('hpp').AsFloat;


            //Menampilkan Sudah BON
          z := OpenRS('SELECT a.*, b.deskripsi, b.unitid, ' +
          'IFNULL((SELECT SUM(qty) FROM tbl_trskeluar_det WHERE kode_brg = a.kode_brg AND no_spk = a.no_spk),0) qty_ambil ' +
          'FROM tbl_bom_det a ' +
          'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
          'WHERE no_spk = ''%s'' and kode_brg= ''%s'' AND LEFT(b.kode,1) IN (''C'',''D'')',[fKode.AsString,q.FieldByName('kode_brg').AsString]);

        if (Copy(q.FieldByName('kode_brg').AsString,1,1)='B') then begin
          Values[j, cxColSisa.Index] := q.FieldByName('wip').AsFloat ;
          end
        else
      //  if (z.FieldByname('satuan').AsString='GR') and (Copy(q.FieldByName('kode_brg').AsString,1,1)<>'B') then
      //    Values[j, cxColSisa.Index] := z.FieldByname('qty_ambil').AsFloat/1000
      //  else
          Values[j, cxColSisa.Index] := z.FieldByname('qty_ambil').AsFloat;

        z.Close ;

      end;
      q.Next;

    end;
    q.Close;

    if (cxtRouting.Text ='EXTRUSI') or (cxtRouting.Text ='EXTRUTION')  or (cxtRouting.Text ='EXTRUSION')  or (cxtRouting.Text ='MIXING')  or (cxtRouting.Text ='CASTING') then begin
     cxColLayer1.Visible := True ;
     cxColLayer2.Visible := True ;
     cxColLayer3.Visible := True ;
     cxColLayer4.Visible := True ;
     cxColLayer5.Visible := True ;
     cxColLayer6.Visible := True ;
     cxColLayer7.Visible := True ;
     cxColLayer8.Visible := True ;
     end
     else begin
      cxColLayer1.Visible := False ;
     cxColLayer2.Visible := False ;
     cxColLayer3.Visible := False ;
     cxColLayer4.Visible := False ;
     cxColLayer5.Visible := False ;
     cxColLayer6.Visible := False ;
     cxColLayer7.Visible := False ;
     cxColLayer8.Visible := False ;
     end;

     if (cxtRouting.Text ='PRINTING') then begin
       cxColNoTblHPQty3.Visible := True ;
       cxColHP1QtyM.Visible := True ;
       end
       else begin
       cxColNoTblHPQty3.Visible := False ;
       cxColHP1QtyM.Visible := False ;
       end;


        { aCol := cxTblPakaiBBDet.CreateColumn;
      with aCol do begin
        Name := 'colUnbound';
        Caption := 'Dosing';
      end;
      aCol.DataBinding.ValueTypeClass := TcxStringValueType;
      aCol.PropertiesClass := TcxCheckBoxProperties;
      with aCol.Properties as TcxCheckBoxProperties do begin
        AllowGrayed := false;
        ValueChecked := 'T';
        ValueUnchecked := 'F';
        NullStyle := nssUnchecked;
        ImmediatePost := True;
      end;
      aCol.Index := 0;  }

  end;
end;

procedure TfrmInputLHP.cxdTglPrdPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxdStart.EditValue := cxdTglPrd.EditValue ;
  cxdFinish.EditValue := cxdTglPrd.EditValue ;
end;

procedure TfrmInputLHP.cxdStartPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  try
    if (TimeOf(cxdStart.EditValue)>= StrToTime('06:00:00')) and
              (TimeOf(cxdStart.EditValue)<= StrToTime('13:59:59')) then
      cxtShift.Text := IntToStr(1)
    else if (TimeOf(cxdStart.EditValue)>=StrToTime('14:00:00'))  and
          (TimeOf(cxdStart.EditValue)<= StrToTime('21:59:59')) then
      cxtShift.Text:=IntToStr(2)
    else
      cxtShift.Text:=IntToStr(3) ;
  except
  end;
end;

procedure TfrmInputLHP.FormCreate(Sender: TObject);
begin
  inherited;
  zqrKategoriDown.Open;
  zqrMesin.Open;
  zqrUnit.Open;
  zqrKetMesin.Open ;
  zqrKaryawan.Open ;
  cxPageControl1.ActivePageIndex := 0;

  if txtSPK.Text ='' then begin
  cxPageControl1.Enabled := False ;
  cxCheck.Enabled := False;
  end;
end;

procedure TfrmInputLHP.cxTblDTDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColKategoriDown2.Index then begin
    try
      //i := ADataController.GetFocusedRecordIndex;
      
      zqrKetMesin.Close;
      zqrKetMesin.ParamByName('mesin').AsString := cxtRouting.Text ;
      zqrKetMesin.ParamByName('kategori').AsString :=
        cxTblDT.DataController.Values[ARecordIndex , cxColKategoriDown2.Index];
      zqrKetMesin.Open;

      if Copy(cxTblDT.DataController.Values[ARecordIndex , cxColKategoriDown2.Index],1,10) =
          'JENIS DOWN' then  cxTblDT.DataController.Values[ARecordIndex , cxColSatSPK2.Index] := 'MENIT'
          else cxTblDT.DataController.Values[ARecordIndex , cxColSatSPK2.Index] := 'KG' ;

    except
    end;
  end;

end;

procedure TfrmInputLHP.btnSimpanClick(Sender: TObject);
 var
  i,j,upah1,listrik1: Integer;
  sNoTrs,sAkun: String;
  q, qh, qd, qhst, qb, qbd, qbom,z,a,b1,b2,qkar,qj, qjd, q_sa : TZQuery;
  AD, AK, KodeBrg, sNoJ, sNoBukti: string;
  jml_bahan,HPP,hpp_akhir,sAkhir: real;
  upah , biaya, biayaupah,biayalistrik,tcogs : real;

begin
  inherited;

  a := OpenRS('select id,upah from tbl_upah WHERE tgl=(select max(tgl) from tbl_upah)') ;
  upah := a.FieldByName('upah').AsFloat ;
  upah1 := a.FieldByName('id').AsInteger ;
  biayaupah := (upah/26/7/60)*(cxsDurasi.EditValue)*cxsOperator.EditValue ;
  b1 := OpenRS('select id,biaya from tbl_listrik WHERE tgl=(select max(tgl) from tbl_listrik) and jenis="H"') ;
  b2 := OpenRS('select id,biaya from tbl_listrik WHERE tgl=(select max(tgl) from tbl_listrik) and jenis="L"') ;

  if cxtShift.Text = '2' then  begin
   biayalistrik := cxsDurasi.EditValue *  b1.FieldByName('biaya').AsFloat ;
   listrik1 := b1.FieldByName('id').AsInteger ;
  end
  else begin
   biayalistrik := cxsDurasi.EditValue *  b2.FieldByName('biaya').AsFloat ;
   listrik1 := b2.FieldByName('id').AsInteger ;
  end;

   if Self.Jenis = 'tambah' then begin
    sNoTrs := GetLastFak('hasil_produksi',cxdTglPrd.Date);
    UpdateFaktur(Copy(sNoTrs,1,8));
    cxtTrans.Text :=  sNoTrs;
  end
  else begin
    sNoTrs := cxtTrans.Text;
  end;

  try
   dm.zConn.StartTransaction;
   q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[sNoTrs]);

    if Self.Jenis ='tambah' then begin
      q.Insert;
    end
    else begin
      q.Edit;
      sNoTrs := cxtTrans.Text;
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_hsl_prd_lhp WHERE no_bukti = ''%s''',[sNoTrs]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_karantina_dtl WHERE no_bukti = ''%s''',[sNoTrs]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_karantina_hdr WHERE no_bukti = ''%s''',[sNoTrs]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_hsl_prd_operator WHERE no_bukti = ''%s''',[sNoTrs]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_hsl_prd_afvaldt WHERE no_bukti = ''%s''',[sNoTrs]));
      dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_pemakaian_bahan WHERE no_bukti = ''%s''',[sNoTrs]));

    end;

    if (cxsReject.EditValue<>0) then
        tcogs :=( cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] / (cxTblHP.DataController.Summary.FooterSummaryValues[1] + cxsReject.EditValue))*cxsReject.EditValue;

    if cxChkPosting.Checked then begin
        // jika selain barang jadi maka masukkan barang ke gudang G-WIP
        if cxtRouting1.Text <> 'BJ' then begin
          sNoBukti := GetLastFak('brg_in',cxdTglPrd.Date);
          UpdateFaktur(Copy(sNoBukti,1,7));
          qh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoBukti]);
          qh.Insert;
          qh.FieldByName('no_bukti').AsString := sNoBukti;
          qh.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
          qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.Post;
          qh.Close;

          qd := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoBukti]);
          qd.Insert;
          qd.FieldByName('no_bukti').AsString := sNoBukti;
          qd.FieldByName('kode_brg').AsString :=txtKode.Text;
          qd.FieldByName('qty').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0];
          qd.FieldByName('kode_gdg').AsString := 'G-PRD';
          qd.FieldByName('satuan').AsString := cxTblHP.DataController.Values[0, cxColNoTblHPSat1.Index];
          qd.FieldByName('no_spk').AsString := txtSPK.Text;
          qd.Post;
          qd.Close;

          q_sa := OpenRS('SELECT sf_get_stokakhir_all(''%s'',''%s'') sa',[txtKode.Text,'G-PRD']);
          sAkhir := q_sa.FieldByName('sa').AsFloat;
          q_sa.Close;

          q_sa := OpenRS('SELECT sf_get_hpp(''%s'') hpp',[txtKode.Text]);
          hpp_akhir := q_sa.FieldByName('hpp').AsFloat;
          q_sa.Close;

          // hitung hpp
          HPP := ((hpp_akhir * sAkhir) + ( cxTblHP.DataController.Summary.FooterSummaryValues[0] * (cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] +
                  biayaupah + biayalistrik + (tcogs/2) )) /
                (sAkhir +  cxTblHP.DataController.Summary.FooterSummaryValues[0]));


          qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
          with qhst do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoBukti;
            FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
            FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := txtKode.Text;
            FieldByName('tipe').AsString := 'IN_';
            FieldByName('qty').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0];
            FieldByName('satuan').AsString := cxTblHP.DataController.Values[0, cxColNoTblHPSat1.Index];
            FieldByName('gudang').AsString := 'G-PRD';
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_spk').AsString := txtSPK.Text;
            FieldByName('no_lhp').AsString := sNoTrs;
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            //FieldByName('hpp').AsFloat := GetHPP(txtKode.Text);
            FieldByName('hpp').AsFloat := HPP ;
            FieldByName('harga').AsFloat := HPP ;
            FieldByName('unit_ktg').AsString := GetUnitKTG(txtKode.Text);
            Post;
          end;
          qhst.Close;

          // simpan jurnal otomatis
          //sNoJ := GetLastFak('jurnal',cxdTglPrd.Date);
          sNoJ := sNoTrs ;
          //UpdateFaktur(Copy(sNoJ,1,6));
          qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''',[sNoJ]);
          qj.Insert;
          qj.FieldByName('no_jurnal').AsString := sNoJ;
          qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
          qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
          qj.FieldByName('keterangan').AsString := 'PEMAKAIAN MATERIAL'+' '+ cxtRouting.EditValue;
          qj.FieldByName('f_posted').AsString := '1';
          qj.FieldByName('user').AsString := Aplikasi.NamaUser;
          qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qj.Post;
          qj.Close;

          KodeBrg := txtKode.Text;
          qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);

          {if Copy(KodeBrg,1,1) = 'B' then begin
            AD := GetDefaultAkun('TRANSFER BARANG WIP KE GUDANG','D');
            AK := GetDefaultAkun('TRANSFER BARANG WIP KE GUDANG','K');
          end; }

          // DEBET
          sAkun := GetDefaultAkunBrg(KodeBrg, 'persediaan');
          qjd.Insert;
          qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoTrs;
          qjd.FieldByName('akun').AsString := sAkun;
          qjd.FieldByName('debet').AsFloat :=  cxTblHP.DataController.Summary.FooterSummaryValues[0] * GetHPP(txtKode.Text);
          qjd.FieldByName('dc').AsString := 'D';
          qjd.FieldByName('keterangan').AsString := 'PERSEDIAAN ';
          qjd.FieldByName('kode_brg').AsString := KodeBrg;
          qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
          qjd.Post;



          {qjd.Insert;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoBukti;
          qjd.FieldByName('akun').AsString := AD;
          //qjd.FieldByName('debet').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0] * GetHPP(txtKode.Text,'G-WIP');
          qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG WIP';
          qjd.FieldByName('dc').AsString := 'D';
          qjd.FieldByName('kode_brg').AsString := KodeBrg;
          qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
          qjd.Post;   }

          // KREDIT
          sAkun := GetDefaultAkunBrg(KodeBrg, 'persediaan');
          qjd.Insert;
          qjd.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoTrs;
          qjd.FieldByName('akun').AsString := sAkun;
          qjd.FieldByName('kredit').AsFloat :=  cxTblHP.DataController.Summary.FooterSummaryValues[0] * GetHPP(txtKode.Text);
          qjd.FieldByName('dc').AsString := 'C';
          qjd.FieldByName('keterangan').AsString := 'PERSEDIAAN ';
          qjd.FieldByName('kode_brg').AsString := KodeBrg;
          qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
          qjd.Post;
          qjd.Close;

          {qjd.Insert;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoBukti;
          qjd.FieldByName('akun').AsString := AK;
         // qjd.FieldByName('kredit').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0] * GetHPP(txtKode.Text,'G-WIP');
          qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG WIP';
          qjd.FieldByName('dc').AsString := 'C';
          qjd.FieldByName('kode_brg').AsString := KodeBrg;
          qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
          qjd.Post;
          qjd.Close; }

        end
        // jika BJ (Barang Jadi)
        else begin
          sNoBukti := GetLastFak('brg_in');
          UpdateFaktur(Copy(sNoBukti,1,7));
          qh := OpenRS('SELECT * FROM tbl_trsmasuk_head WHERE no_bukti = ''%s''',[sNoBukti]);
          qh.Insert;
          qh.FieldByName('no_bukti').AsString := sNoBukti;
          qh.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
          qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          qh.FieldByName('user').AsString := Aplikasi.NamaUser;
          qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          qh.Post;
          qh.Close;

          qd := OpenRS('SELECT * FROM tbl_trsmasuk_det WHERE no_bukti = ''%s''',[sNoBukti]);
          qd.Insert;
          qd.FieldByName('no_bukti').AsString := sNoBukti;
          qd.FieldByName('kode_brg').AsString :=txtKode.Text;
          qd.FieldByName('qty').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0];
          qd.FieldByName('kode_gdg').AsString := 'G-PRD';
          qd.FieldByName('satuan').AsString := cxTblHP.DataController.Values[0, cxColNoTblHPSat1.Index];
          qd.FieldByName('no_spk').AsString := txtSPK.Text;
          qd.Post;
          qd.Close;

          //28-08-2018
          {qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
          with qhst do begin
            Insert;
            FieldByName('no_bukti').AsString := sNoBukti;
            FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
            FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := txtKode.Text;
            FieldByName('tipe').AsString := 'IN_';
            FieldByName('qty').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0];
            FieldByName('satuan').AsString := cxTblHP.DataController.Values[0, cxColNoTblHPSat1.Index];
            FieldByName('gudang').AsString := 'G02';
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_spk').AsString := txtSPK.Text;
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            FieldByName('hpp').AsFloat := biayaupah + biayalistrik +  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] ;
            FieldByName('unit_ktg').AsString := GetUnitKTG(txtKode.Text);
            Post;
          end;
          qhst.Close;   }

          // simpan jurnal otomatis
          //sNoJ := GetLastFak('jurnal');
          //UpdateFaktur(Copy(sNoJ,1,6));
          {sNoJ := sNoBukti ;
          qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''',[sNoBukti]);
          qj.Insert;
          qj.FieldByName('no_jurnal').AsString := sNoJ;
          qj.FieldByName('tanggal').AsDateTime := Aplikasi.Tanggal;
          qj.FieldByName('tgljam').AsDateTime := Aplikasi.TanggalServer;
          qj.FieldByName('keterangan').AsString := 'PEMAKAIAN PERSEDIAAN';
          qj.FieldByName('f_posted').AsString := '1';
          qj.FieldByName('user').AsString := Aplikasi.NamaUser;
          qj.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          qj.Post;
          qj.Close;

          KodeBrg := txtKode.Text;
          qjd := OpenRS('SELECT * FROM tbl_jurnal_det WHERE no_jurnal = ''%s''',[sNoJ]);

          if Copy(KodeBrg,1,1) = 'B' then begin
            AD := GetDefaultAkun('TRANSFER BARANG JADI KE GUDANG','D');
            AK := GetDefaultAkun('TRANSFER BARANG JADI KE GUDANG','K');
          end;

          // DEBET
          qjd.Insert;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoBukti;
          qjd.FieldByName('akun').AsString := AD;
          qjd.FieldByName('debet').AsFloat := biayaupah + biayalistrik +  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] ;
          qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG JADI KE GUDANG';
          qjd.FieldByName('dc').AsString := 'D';
          qjd.FieldByName('kode_brg').AsString := KodeBrg;
          qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
          qjd.Post;

          // KREDIT
          qjd.Insert;
          qjd.FieldByName('no_jurnal').AsString := sNoJ;
          qjd.FieldByName('no_trans').AsString := sNoBukti;
          qjd.FieldByName('akun').AsString := AK;
          qjd.FieldByName('kredit').AsFloat := biayaupah + biayalistrik +  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] ;
          qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG JADI KE GUDANG';
          qjd.FieldByName('dc').AsString := 'C';
          qjd.FieldByName('kode_brg').AsString := KodeBrg;
          qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
          qjd.Post;
          qjd.Close;   }

        end;

         try
             qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[txtKode.Text]);
            qb.Edit;
            qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat + cxTblHP.DataController.Summary.FooterSummaryValues[0];
            qb.Post;
            qb.Close;

                except
              end;


         {
        qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-PRD''',
          [txtKode.Text]);
        if qbd.IsEmpty then
          qbd.Insert
        else
          qbd.Edit;

        qbd.FieldByName('kode_brg').AsString := txtKode.Text;
        qbd.FieldByName('kode_gdg').AsString := 'G-PRD';
        qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat + cxTblHP.DataController.Summary.FooterSummaryValues[0];
        qbd.Post;
        qbd.Close;   }

        // kurangi stok WIP BOM
        qbom := OpenRS('SELECT kode_brg, LEFT(kode_brg,1) prefix_kodebrg, qty, satuan FROM tbl_bom_det WHERE no_spk = ''%s''',
          [txtSPK.Text]);
        while not qbom.Eof do begin
          if qbom.FieldByName('prefix_kodebrg').AsString = 'B' then begin

            sNoBukti := GetLastFak('brg_out');
            UpdateFaktur(Copy(sNoBukti,1,7));

            qh := OpenRS('SELECT * FROM tbl_trskeluar_head WHERE no_bukti = ''%s''',[sNoBukti]);
            qh.Insert;
            qh.FieldByName('no_bukti').AsString := sNoBukti;
            qh.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
            qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            qh.FieldByName('user').AsString := Aplikasi.NamaUser;
            qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
            qh.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            qh.Post;
            qh.Close;

            qd := OpenRS('SELECT * FROM tbl_trskeluar_det WHERE no_bukti = ''%s''',[sNoBukti]);
            qd.Insert;
            qd.FieldByName('no_bukti').AsString := sNoBukti;
            qd.FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;

            jml_bahan := qbom.FieldByName('qty').AsFloat / cxsQtySpk.EditValue;
            qd.FieldByName('qty').AsFloat := jml_bahan * cxTblHP.DataController.Summary.FooterSummaryValues[0];

            qd.FieldByName('kode_gdg').AsString := 'G-PRD';
            qd.FieldByName('satuan').AsString := cxtUnitSPK.Text;
            qd.FieldByName('no_spk').AsString := txtSPK.Text;

            qd.Post;
            qd.Close;

            qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoBukti]);
            with qhst do begin
              Insert;
              FieldByName('no_bukti').AsString := sNoBukti;
              FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
              FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
              FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;
              FieldByName('tipe').AsString := 'OUT_';
              FieldByName('qty').AsFloat := jml_bahan * cxTblHP.DataController.Summary.FooterSummaryValues[0];
              FieldByName('satuan').AsString := qbom.FieldByName('satuan').AsString;
              FieldByName('gudang').AsString := 'G-PRD';
              FieldByName('user').AsString := Aplikasi.NamaUser;
              FieldByName('user_dept').AsString := Aplikasi.UserDept;
              FieldByName('no_spk').AsString := txtSPK.Text ;
              FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
              FieldByName('hpp').AsFloat :=
               GetHPP(qbom.FieldByname('kode_brg').AsString);
              FieldByName('unit_ktg').AsString := GetUnitKTG(qbom.FieldByname('kode_brg').AsString);
              Post;
            end;
            qhst.Close;



             try
                {  qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[qbom.FieldByName('kode_brg').AsString]);
                qb.Edit;
                qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat - (jml_bahan * cxTblHP.DataController.Summary.FooterSummaryValues[0]);
                qb.Post;
                qb.Close; }
                    except
                  end;

            qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-PRD''',
              [qbom.FieldByName('kode_brg').AsString]);
            if qbd.IsEmpty then
              qbd.Insert
            else
              qbd.Edit;
            qbd.FieldByName('kode_brg').AsString := qbom.FieldByName('kode_brg').AsString;
            qbd.FieldByName('kode_gdg').AsString := 'G-PRD';
            qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat - (jml_bahan * cxTblHP.DataController.Summary.FooterSummaryValues[0]);
            qbd.Post;
            qbd.Close;

          end;
            qbom.Next;
        end;
        qbom.Close;

      end;
  
    with q do begin
      q.FieldByName('no_spk').AsString := txtSPK.Text;
      q.FieldByName('no_bukti').AsString := sNoTrs;
      q.FieldByName('shift').AsString := cxtShift.Text;
      q.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
      q.FieldByName('jam1').AsDateTime := cxdStart.EditValue;
      q.FieldByName('jam2').AsDateTime := cxdFinish.EditValue;
      q.FieldByName('jml_operator').AsFloat := cxsOperator.EditValue ;
      q.FieldByName('mesin').AsString := cxlMesin.EditValue;
      q.FieldByName('id_upah').AsInteger := upah1;
      q.FieldByName('id_listrik').AsInteger := listrik1;
      q.FieldByName('cogs_upah').AsFloat := biayaupah;
      q.FieldByName('cogs_listrik').AsFloat := biayalistrik;
      q.FieldByName('cogs_mat').AsFloat := cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] ;
      if cxChkPosting.Checked then
         q.FieldByName('f_posted').AsInteger := 1
      else
      q.FieldByName('f_posted').AsInteger := 0;

       if cxCheck.Checked then
         q.FieldByName('f_inline').AsInteger := 1
      else
      q.FieldByName('f_inline').AsInteger := 0;

      if not VarIsNull(cxlInline.EditValue) then
      q.FieldByName('inline').AsString := cxlInline.EditValue ;



      q.FieldByName('cogs_afval').AsFloat := (tcogs / 2) ;
      q.FieldByName('cogs').AsFloat :=  q.FieldByName('cogs_upah').AsFloat +  q.FieldByName('cogs_listrik').AsFloat +   q.FieldByName('cogs_mat').AsFloat + (tcogs / 2);
      q.FieldByName('upah').AsFloat := upah ;
      if cxtShift.Text = '2' then
        q.FieldByName('listrik').AsFloat := b1.FieldByName('biaya').AsFloat
      else
        q.FieldByName('listrik').AsFloat := b2.FieldByName('biaya').AsFloat ;


       //Hasil Produksi
        if (cxTblHP.DataController.Summary.FooterSummaryValues[0]<>null) then
          q.FieldByName('qty_prod').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0]
        else q.FieldByName('qty_prod').AsFloat := 0;

          if (cxsReject.EditValue<>0) then
            q.FieldByName('qty_reject').AsFloat := cxsReject.EditValue
          else
          q.FieldByName('qty_reject').AsFloat := 0;

          //Hasil Produksi KG
            if (cxTblHP.DataController.Summary.FooterSummaryValues[1]<>null) then
          q.FieldByName('qty_prod_kg').AsFloat :=cxTblHP.DataController.Summary.FooterSummaryValues[1]
          else    q.FieldByName('qty_prod_kg').AsFloat := 0;

          if (cxsReject.EditValue<>0) then
            q.FieldByName('qty_reject').AsFloat := cxsReject.EditValue
          else
          q.FieldByName('qty_reject').AsFloat := 0;

          if (cxsJamOpr.EditValue<>0) then
            q.FieldByName('jam_operator').AsFloat := cxsJamOpr.EditValue
          else
          q.FieldByName('jam_operator').AsFloat := 0;
          
          if (cxsJamOpr1.EditValue<>0) then
            q.FieldByName('jam_operator_lembur').AsFloat := cxsJamOpr1.EditValue
          else
          q.FieldByName('jam_operator_lembur').AsFloat := 0;


          if (cxsNPM.EditValue<>0) then
            q.FieldByName('qty_npm').AsFloat := cxsNPM.EditValue
          else
          q.FieldByName('qty_npm').AsFloat := 0;

          if (cxsBK.EditValue<>0) then
            q.FieldByName('qty_baik').AsFloat := cxsBK.EditValue
          else
          q.FieldByName('qty_baik').AsFloat := 0;


          q.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          q.FieldByName('user').AsString := Aplikasi.NamaUser;
          q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
          q.FieldByName('ket_mesin').AsString := '-';
      Post ;
      Close;
      dm.zConn.Commit;

       //Input Detail LHP
      if  (cxTblHP.DataController.RecordCount<>0) then begin

        with cxTblHP.DataController do begin
          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_hsl_prd_lhp where no_bukti =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_bukti').AsString := sNoTrs;

            if (Values[i, cxColNoTblHPLot.Index]<>null) then
            z.FieldByName('no_lot').AsString := Values[i, cxColNoTblHPLot.index];

            if (Values[i, cxColNoTblHPQty1.Index]<>null) then
            z.FieldByName('qty_hasil').AsFloat := Values[i, cxColNoTblHPQty1.index];

            if (Values[i, cxColNoTblHPQty2.Index]<>null) then
            z.FieldByName('qty_kg').AsFloat := Values[i, cxColNoTblHPQty2.index];

            if (Values[i, cxColNoTblHPQty3.Index]<>null) then
            z.FieldByName('qty_m').AsFloat := Values[i, cxColNoTblHPQty3.index];

            z.FieldByName('satuan').AsString := Values [i, cxColNoTblHPSat1.Index];
            z.Post;
            z.Close;
          end;
        end;

      end;

      //Input Detail Karantina
      if  (cxTblHP1.DataController.RecordCount<>0) then begin

        with cxTblHP1.DataController do begin
          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_karantina_dtl where no_bukti =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_bukti').AsString := sNoTrs;

            if (Values[i, cxColHP1Lot.Index]<>null) then
            z.FieldByName('no_lot').AsString := Values[i, cxColHP1Lot.index];

            if (Values[i, cxColHP1Qty.Index]<>null) then
            z.FieldByName('qty_hasil').AsFloat := Values[i, cxColHP1Qty.index];

            if (Values[i, cxColHP1QtyKG.Index]<>null) then
            z.FieldByName('qty_kg').AsFloat := Values[i, cxColHP1QtyKG.index];

            if (Values[i, cxColHP1QtyM.Index]<>null) then
            z.FieldByName('qty_m').AsFloat := Values[i, cxColHP1QtyM.index];

            z.FieldByName('satuan').AsString := Values [i, cxColHP1Unit.Index];
            z.Post;
            z.Close;
          end;
        end;

        qkar := OpenRS('SELECT * FROM tbl_karantina_hdr WHERE no_bukti = ''%s''',[sNoTrs]);
        qkar.Insert;
        with qkar do begin
          qkar.FieldByName('no_spk').AsString := txtSPK.Text;
          qkar.FieldByName('no_bukti').AsString := sNoTrs;
          qkar.FieldByName('shift').AsString := cxtShift.Text;
          qkar.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;

          if (cxTblHP1.DataController.Summary.FooterSummaryValues[0]<>null) then
            qkar.FieldByName('qty_hasil').AsFloat := cxTblHP1.DataController.Summary.FooterSummaryValues[0]
          else
            qkar.FieldByName('qty_hasil').AsFloat := 0;

          //Hasil Produksi KG
          if (cxTblHP1.DataController.Summary.FooterSummaryValues[1]<>null) then
            qkar.FieldByName('qty_kg').AsFloat :=cxTblHP1.DataController.Summary.FooterSummaryValues[1]
          else
            qkar.FieldByName('qty_kg').AsFloat := 0;

          //Hasil Produksi M
          if VarIsNull(cxTblHP1.DataController.Summary.FooterSummaryValues[2])then
            qkar.FieldByName('qty_m').AsFloat :=cxTblHP1.DataController.Summary.FooterSummaryValues[2]
          else
            qkar.FieldByName('qty_m').AsFloat := 0;


          qkar.FieldByName('satuan').AsString := cxTblHP1.DataController.Values[0, cxColHP1Unit.Index];
          qkar.FieldByName('cogs').AsFloat := biayaupah + biayalistrik +  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] ;
        end;
          qkar.Post;
        qkar.Close;
      end;

       //Input Detail Operator
      if  (cxKaryawan.DataController.RecordCount<>0) then begin

        with cxKaryawan.DataController do begin
          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_hsl_prd_operator where no_bukti =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_bukti').AsString := sNoTrs;

            if (Values[i, cxKaryawanColumn1.Index]<>null) then
            z.FieldByName('nik').AsString := Values[i, cxKaryawanColumn1.index];

            if (Values[i, cxColNoTblHPQty1.Index]<>null) then
            z.FieldByName('nama').AsFloat := Values[i, cxKaryawanColumn2.index];
            z.Post;
            z.Close;
          end;
        end;

      end;
      

      //Detail DT and Afval
      if (cxTblDT.DataController.RecordCount<>0) then begin
        with cxTblDT.DataController do begin
          for j := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_hsl_prd_afvaldt where no_bukti =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no_spk').AsString := txtSPK.Text;
            z.FieldByName('no_bukti').AsString := sNoTrs;
            z.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
            z.FieldByName('kategori').AsString := Values[j , cxColKategoriDown2.Index];
            if  (Values[j , cxColJenisDowntime.Index]<>null) then
            z.FieldByName('jenis').AsString := Values[j , cxColJenisDowntime.Index];
            if (Values[j , cxColKetMesin2.Index]<>'') then
            z.FieldByName('keterangan').AsString := Values[j , cxColKetMesin2.Index];
            z.FieldByName('qty').AsFloat := Values[j , cxColQtyReject2.Index];
            z.FieldByName('satuan').AsString := Values[j , cxColSatSPK2.Index];
            if Values[j , cxColSatSPK2.Index] = 'MENIT' then
              z.FieldByName('f_id').AsInteger := 2
            else z.FieldByName('f_id').AsInteger := 1 ;
            z.Post;
            z.Close;
            end;
          end;
      end;

      //Detail Pemakaian Bahan
      if (cxTblPakaiBBDet.DataController.RecordCount<>0) then begin
        with cxTblPakaiBBDet.DataController do begin
          for j := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_pemakaian_bahan where no_bukti =''%s''',[sNoTrs]) ;
            if  Values[j,cxGridColumn31.Index]>0 then begin
              z.Insert;
              z.FieldByName('no_spk').AsString := txtSPK.Text;
              z.FieldByName('no_bukti').AsString := sNoTrs;
              z.FieldByName('kode_brg').AsString :=  Values[j , cxGridColumn18.Index];
              z.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
              z.FieldByName('satuan').AsString := Values[j , cxGridColumn30.Index];
              if (Values[j,cxGridColumn31.Index]<>null) then
              z.FieldByName('qty').AsFloat := Values[j,cxGridColumn31.Index];
              if (Values[j,cxColQtyKG.Index]<>null) then
              z.FieldByName('qty_kg').AsFloat := Values[j,cxColQtyKG.Index];
              if (Values[j,cxColLayer1.Index]<>null) then
              z.FieldByName('layer1').AsFloat := Values[j,cxColLayer1.Index];
              if (Values[j,cxColLayer2.Index]<>null) then
              z.FieldByName('layer2').AsFloat := Values[j,cxColLayer2.Index];
              if (Values[j,cxColLayer3.Index]<>null) then
              z.FieldByName('layer3').AsFloat := Values[j,cxColLayer3.Index];
              if (Values[j,cxColLayer4.Index]<>null) then
              z.FieldByName('layer1').AsFloat := Values[j,cxColLayer4.Index];
              if (Values[j,cxColLayer5.Index]<>null) then
              z.FieldByName('layer2').AsFloat := Values[j,cxColLayer5.Index];
              if (Values[j,cxColLayer6.Index]<>null) then
              z.FieldByName('layer3').AsFloat := Values[j,cxColLayer6.Index];
              if (Values[j,cxColLayer7.Index]<>null) then
              z.FieldByName('layer1').AsFloat := Values[j,cxColLayer7.Index];
              if (Values[j,cxColLayer8.Index]<>null) then
              z.FieldByName('layer2').AsFloat := Values[j,cxColLayer8.Index];
              if (Values[j,cxColDosing.Index]=1) then
              z.FieldByName('f_dozing').AsInteger := 1
              else
              z.FieldByName('f_dozing').AsInteger := 0;
              z.Post;
              z.Close;

              qhst := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[sNoTrs]);
              with qhst do begin
                Insert;
                FieldByName('no_bukti').AsString := sNoTrs;
                FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
                FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
                FieldByName('kode_brg').AsString := Values[j , cxGridColumn18.Index];
                FieldByName('tipe').AsString := 'OUT_';
                if (Values[j,cxGridColumn31.Index]<>null) then
                FieldByName('qty').AsFloat :=  Values[j,cxGridColumn31.Index];
                FieldByName('satuan').AsString := Values[j , cxGridColumn30.Index];
                FieldByName('gudang').AsString := 'G-PRD';
                FieldByName('user').AsString := Aplikasi.NamaUser;
                FieldByName('user_dept').AsString := Aplikasi.UserDept;
                FieldByName('no_spk').AsString := txtSPK.Text;
                FieldByName('no_lhp').AsString := sNoTrs;
                FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
                FieldByName('hpp').AsFloat := GetHPP(Values[j , cxGridColumn18.Index]);
                FieldByName('unit_ktg').AsString := GetUnitKTG(Values[j , cxGridColumn18.Index]);
                Post;
              end;
              qhst.Close;

            end;

          end;
        end;
      end;

      MsgBox('Data LHP Sudah Disimpan dengan nomor:' + sNoTrs  );
      btnKeluarClick(nil);
      ClearAll;
    end;
   except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
end;

procedure TfrmInputLHP.cxTblHPDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
   {if AItemIndex = cxColNoTblHPSat1.Index then begin
     cxTblHP.DataController.Summary.FooterSummaryValues[2]:=  ADataController.Values[ARecordIndex, cxColNoTblHPSat1.Index];
   end;   }
   if AItemIndex = cxColNoTblHPQty2.Index then begin
     cxsBB.EditValue :=   cxTblHP.DataController.Summary.FooterSummaryValues[1] ;

     if VarIsNull(cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11]) then
     cxsSelisih.EditValue :=  0 - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1]-cxsAfval.EditValue
     else
     cxsSelisih.EditValue :=  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11] - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1] - cxsAfval.EditValue ;

     cxsBK.EditValue := cxsBB.EditValue + cxsNPM.EditValue ;
   end
   else if AItemIndex = cxColNoTblHPSat1.Index then begin
     if ADataController.Values[ARecordIndex, cxColNoTblHPSat1.Index] = 'KG' then
     ADataController.Values[ARecordIndex, cxColNoTblHPQty2.Index] := ADataController.Values[ARecordIndex, cxColNoTblHPQty1.Index] ;
     cxsBB.EditValue :=   cxTblHP.DataController.Summary.FooterSummaryValues[1] ;

     if VarIsNull(cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11]) then
     cxsSelisih.EditValue :=  0 - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1]
     else
     cxsSelisih.EditValue :=  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11] - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1];
     
     cxsBK.EditValue := cxsBB.EditValue + cxsNPM.EditValue ;
   end;
end;

procedure TfrmInputLHP.ClearAll;
var
  i: Integer;
begin
   for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxTextEdit then
      (Components[i] as TcxTextEdit).Text := '';
    if Components[i] is TcxSpinEdit then
      (Components[i] as TcxSpinEdit).Value := 0;
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
  end;

    Self.Jenis := '';
    cxTblPakaiBBDet.DataController.RecordCount := 0;
    cxTblHP.DataController.RecordCount := 0;
    cxTblDT.DataController.RecordCount := 0;
end;



procedure TfrmInputLHP.cxdFinishPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxsDurasi.EditValue := Trunc((cxdFinish.EditValue-cxdStart.EditValue)*24*60);
end;

procedure TfrmInputLHP.cxTblPakaiBBDetDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
  var
  i : Integer;
 // mnTotal : Real ;
begin
  //mnTotal := 0 ;
  inherited;
  if (AItemIndex = cxGridColumn31.Index) then begin
    i := ADataController.GetFocusedRecordIndex;
      with ADataController do begin
        Values[i, cxColTHPP.Index] := Values[i, cxGridColumn31.Index] *Values[i, cxColHPP.Index]  ;
    end;

     if ADataController.Values[ARecordIndex, cxGridColumn30.Index] = 'KG' then
     ADataController.Values[ARecordIndex, cxColQtyKG.Index] := ADataController.Values[ARecordIndex, cxGridColumn31.Index] ;

     cxsSelisih.EditValue :=  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11] - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1]  ;
  end
  else if (AItemIndex = cxColLayer1.Index) or
        (AItemIndex = cxColLayer2.Index) or
        (AItemIndex = cxColLayer3.Index) or
        (AItemIndex = cxColLayer4.Index) or
        (AItemIndex = cxColLayer5.Index) or
        (AItemIndex = cxColLayer6.Index) or
        (AItemIndex = cxColLayer7.Index) or
        (AItemIndex = cxColLayer8.Index) then begin
           //MsgBox(Copy(txtSPK.Text,5,3));
            if (Copy(txtSPK.Text,5,3) = 'EXT') or (Copy(txtSPK.Text,5,3) = 'MIX') then begin
               try
              with ADataController do begin
                 Values[ARecordIndex, cxGridColumn31.Index] :=
                  (Values[ARecordIndex, cxColLayer1.Index]) +
                  (Values[ARecordIndex, cxColLayer2.Index]) +
                  (Values[ARecordIndex, cxColLayer3.Index]) +
                  (Values[ARecordIndex, cxColLayer4.Index]) +
                  (Values[ARecordIndex, cxColLayer5.Index]) +
                  (Values[ARecordIndex, cxColLayer6.Index]) +
                  (Values[ARecordIndex, cxColLayer7.Index]) +
                  (Values[ARecordIndex, cxColLayer8.Index]);
              end;

              except
            end;
        end;
      end
      else if (AItemIndex = cxColQtyKG.Index) then begin
         cxsSelisih.EditValue :=  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11] - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1] ;
         {if Copy(ADataController.Values[ARecordIndex, cxGridColumn18.Index],1,1) = 'D' then begin
             try
                mnTotal := mnTotal +  ADataController.Values[ARecordIndex, cxColQtyKG.Index] ;
                if mnTotal > 0 then
                cxsNPM.Value := mnTotal ;
              except
            end;
         end;   }

      end;
end;

procedure TfrmInputLHP.cxKaryawanDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
if AItemIndex = cxKaryawanColumn2.Index then begin
    try
      cxKaryawan.BeginUpdate;
      ADataController.Values[ARecordIndex, cxKaryawanColumn1.Index] :=
        ADataController.Values[ARecordIndex, cxKaryawanColumn2.Index];

      cxsOperator.EditValue := cxKaryawan.DataController.Summary.FooterSummaryValues[0]
    finally
      cxKaryawan.EndUpdate;
    end;
  end
end;

procedure TfrmInputLHP.cxCheckPropertiesChange(Sender: TObject);
begin
  inherited;
  if cxCheck.EditValue = True then begin
   cxlInline.Visible := True;
   zqrInline.Open;
   end
    else begin
      cxlInline.Visible := False ;
      zqrInline.Close;
    end;
end;

procedure TfrmInputLHP.cxlInlinePropertiesChange(Sender: TObject);
var
  q,z : TZQuery ;
  i,j,k,l : Integer;
begin
  inherited;
  cxPageControl1.Pages[0].TabVisible := False ;
  cxPageControl1.Pages[1].TabVisible := False ;
  cxPageControl1.Pages[3].TabVisible := False ;
  cxPageControl1.Pages[4].TabVisible := False ;

   q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[cxlInline.EditValue]);

   //LHP
 { cxTblHP.DataController.RecordCount := 0 ;
  z := OpenRS('SELECT * FROM tbl_hsl_prd_lhp where no_bukti =''%s'' order by no_bukti desc',[cxlInline.EditValue]) ;
    while not z.Eof do begin
      cxTblHP.BeginUpdate;
      with cxTblHP.DataController do begin
        i := AppendRecord ;
        Values[i, cxColNoTblHPLot.index] := z.FieldByName('no_lot').AsString;
        Values[i, cxColNoTblHPQty1.index] := z.FieldByName('qty_hasil').AsFloat;
         Values[i, cxColNoTblHPQty2.index] := z.FieldByName('qty_kg').AsFloat;
        Values[i, cxColNoTblHPQty3.index] := z.FieldByName('qty_m').AsFloat;
        Values [i, cxColNoTblHPSat1.Index] :=z.FieldByName('satuan').AsString;
      end;
      cxTblHP.EndUpdate;
      z.Next;
    end;
    z.Close;
    //cxTblHP.OptionsData.Editing := False;
    cxTblHP.OptionsData.Inserting := False;

   //Karantina
     cxTblHP1.DataController.RecordCount := 0 ;
     z := OpenRS('SELECT * FROM tbl_karantina_dtl where no_bukti =''%s''',[cxlInline.EditValue]) ;
     while not z.Eof do begin
      cxTblHP1.BeginUpdate;
      with cxTblHP1.DataController do begin
        j := AppendRecord ;
        Values[j, cxColHP1Lot.index] := z.FieldByName('no_lot').AsString;
        Values[j, cxColHP1Qty.index] := z.FieldByName('qty_hasil').AsFloat;
        Values[j, cxColHP1QtyKG.index]:= z.FieldByName('qty_kg').AsFloat;
        Values[j, cxColHP1QtyM.index] := z.FieldByName('qty_m').AsFloat;
        Values [j, cxColHP1Unit.Index] := z.FieldByName('satuan').AsString;
      end;
      cxTblHP1.EndUpdate;
      z.Next;
    end;
    z.Close;
    cxTblHP1.OptionsData.Editing := False;
    cxTblHP1.OptionsData.Inserting := False;

     //Afval
     cxTblDT.DataController.RecordCount := 0 ;
     z := OpenRS('SELECT * FROM tbl_hsl_prd_afvaldt where no_bukti =''%s''',[cxlInline.EditValue]) ;
     while not z.Eof do begin
      cxTblDT.BeginUpdate;
      with cxTblDT.DataController do begin
        k := AppendRecord;
        Values[k , cxColKategoriDown2.Index] := z.FieldByName('kategori').AsString;
        Values[k , cxColJenisDowntime.Index] := z.FieldByName('jenis').AsString;
        Values[k , cxColKetMesin2.Index] := z.FieldByName('keterangan').AsString ;
        Values[k , cxColQtyReject2.Index] := z.FieldByName('qty').AsFloat;
        Values[k , cxColSatSPK2.Index] := z.FieldByName('satuan').AsString ;
      end;
      cxTblDT.EndUpdate;
      z.Next;
    end;
    z.Close;
   // cxTblDT.OptionsData.Editing := False;
    //cxTblDT.OptionsData.Inserting := False;

    //Operator
     cxKaryawan.DataController.RecordCount := 0 ;
     z := OpenRS('SELECT * FROM tbl_hsl_prd_operator where no_bukti =''%s''',[cxlInline.EditValue]) ;
     while not z.Eof do begin
      cxKaryawan.BeginUpdate;
      with cxKaryawan.DataController do begin
        l := AppendRecord;
        Values[l, cxKaryawanColumn1.index] := z.FieldByName('nik').AsString ;
        Values[l, cxKaryawanColumn2.index] :=  z.FieldByName('nama').AsFloat ;
      end;
      cxKaryawan.EndUpdate;
      z.Next;
    end;
    z.Close;    }
    {cxKaryawan.OptionsData.Editing := False;
    cxKaryawan.OptionsData.Inserting := False;}


    with q do begin
    cxtShift.Text := FieldByName('shift').AsString;
    cxdTglPrd.EditValue := FieldByName('tanggal').AsDateTime;
    cxdStart.EditValue := FieldByName('jam1').AsDateTime;
    cxdFinish.EditValue := FieldByName('jam2').AsDateTime;
    cxsOperator.EditValue := FieldByName('jml_operator').AsFloat;
    cxlMesin.EditValue :=  FieldByName('mesin').AsString;
    cxsReject.EditValue :=  FieldByName('qty_reject').AsFloat ;
  end;
end;

procedure TfrmInputLHP.FormShow(Sender: TObject);
var
  q,a,b,z,tbahan : TZQuery ;
  i,j,k,l,m : Integer;
begin
  inherited;
  if Self.Jenis ='edit' then begin

    cxPageControl1.Enabled := True ;
    cxCheck.Enabled := True;

    cxtTrans.Text := NoLHP ;
    b := OpenRS('SELECT * FROM tbl_hsl_prd where no_bukti=''%s''',[NoLHP]);

       
    q := OpenRS('SELECT a.*, IFNULL(b.no,0) no_urut_routing,' +
        'IFNULL((SELECT SUM(qty_prod) FROM tbl_hsl_prd WHERE no_spk = a.no_spk),0) qty_prod ' +
        'FROM v_spk a ' +
        'LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_routing) b ON a.kode_brg = b.kode_brg ' +
        'WHERE no_spk = ''%s''',[b.FieldBYName('no_spk').AsString]);

    btnCariBrg.Enabled    := False ;
    if b.FieldBYName('f_posted').AsInteger= 1 then begin
      cxChkPosting.Checked := True ;
      btnSimpan.Enabled := False
    end
    else begin
      cxChkPosting.Checked := False;
      btnSimpan.Enabled := True;
    end;

    if b.FieldBYName('f_inline').AsInteger= 1 then begin
      cxlInline.Visible := True ;
      cxCheck.Checked := True ;
      zqrInline.Open;
      cxlInline.EditValue :=  b.FieldBYName('inline').AsString;
    end
    else begin
      cxlInline.Visible := False ;
      cxCheck.Checked := False ;
      //cxlInline.EditValue :=  b.FieldBYName('inline').AsString;
    end;

    txtSPK.Text           := b.FieldBYName('no_spk').AsString ;
    txtKode.Text          := q.FieldByName('kode_brg').AsString;
    lblDeskripsi.Caption  := q.FieldBYName('deskripsi').AsString;
    cxtUrut.Text          := IntToStr(q.FieldByName('no_urut_routing').AsInteger);
    cxdTglPrd.EditValue   := b.FieldBYName('tanggal').AsDateTime ;
    cxdStart.EditValue    := b.FieldBYName('jam1').AsDateTime;
    cxdFinish.EditValue   := b.FieldBYName('jam2').AsDateTime;
    cxlMesin.EditValue    := b.FieldBYName('mesin').AsString;
    cxsOperator.EditValue := b.FieldByName('jml_operator').AsFloat;
    cxsReject.EditValue   := b.FieldByName('qty_reject').AsFloat ;
    cxsJamOpr.EditValue   := b.FieldByName('jam_operator').AsFloat ;
    cxsJamOpr1.EditValue   := b.FieldByName('jam_operator_lembur').AsFloat ;

    a := OpenRS('SELECT routing FROM tbl_routing WHERE kode = ''%s'' and No=''%s''',[txtKode.Text,cxtUrut.Text]);
    if q.FieldByname('routing').AsString='BJ' then
    cxtRouting.Text := a.FieldByname('routing').AsString
    else
    cxtRouting.Text := q.FieldByname('routing').AsString;
    a.Close;
    cxtRouting1.Text := q.FieldByname('routing').AsString;

    cxtSO.Text := q.FieldByname('no_so').AsString;
    cxtMO.Text := q.FieldByname('no_mo').AsString ;
    cxsQtySpk.EditValue := q.FieldByname('qty').AsFloat;
    cxtUnitSPK.Text := q.FieldByname('satuan').AsString;
    q.Close;


   //LHP
  cxTblHP.DataController.RecordCount := 0 ;
  z := OpenRS('SELECT * FROM tbl_hsl_prd_lhp where no_bukti =''%s'' order by no_bukti desc',[NoLHP]) ;
    while not z.Eof do begin
      cxTblHP.BeginUpdate;
      with cxTblHP.DataController do begin
        i := AppendRecord ;
        Values[i, cxColNoTblHPLot.index] := z.FieldByName('no_lot').AsString;
        Values[i, cxColNoTblHPQty1.index] := z.FieldByName('qty_hasil').AsFloat;
         Values[i, cxColNoTblHPQty2.index] := z.FieldByName('qty_kg').AsFloat;
        Values[i, cxColNoTblHPQty3.index] := z.FieldByName('qty_m').AsFloat;
        Values [i, cxColNoTblHPSat1.Index] :=z.FieldByName('satuan').AsString;
      end;
      cxTblHP.EndUpdate;
      z.Next;
    end;
    z.Close;
    //cxTblHP.OptionsData.Editing := False;
    //cxTblHP.OptionsData.Inserting := False;

   //Karantina
     cxTblHP1.DataController.RecordCount := 0 ;
     z := OpenRS('SELECT * FROM tbl_karantina_dtl where no_bukti =''%s''',[NoLHP]) ;
     while not z.Eof do begin
      cxTblHP1.BeginUpdate;
      with cxTblHP1.DataController do begin
        j := AppendRecord ;
        Values[j, cxColHP1Lot.index] := z.FieldByName('no_lot').AsString;
        Values[j, cxColHP1Qty.index] := z.FieldByName('qty_hasil').AsFloat;
        Values[j, cxColHP1QtyKG.index]:= z.FieldByName('qty_kg').AsFloat;
        Values[j, cxColHP1QtyM.index] := z.FieldByName('qty_m').AsFloat;
        Values [j, cxColHP1Unit.Index] := z.FieldByName('satuan').AsString;
      end;
      cxTblHP1.EndUpdate;
      z.Next;
    end;
    z.Close;
    //cxTblHP1.OptionsData.Editing := False;
    //cxTblHP1.OptionsData.Inserting := False;

     //Afval
     cxTblDT.DataController.RecordCount := 0 ;
     z := OpenRS('SELECT * FROM tbl_hsl_prd_afvaldt where no_bukti =''%s''',[NoLHP]) ;
     while not z.Eof do begin
      cxTblDT.BeginUpdate;
      with cxTblDT.DataController do begin
        k := AppendRecord;
        Values[k , cxColKategoriDown2.Index] := z.FieldByName('kategori').AsString;
        Values[k , cxColJenisDowntime.Index] := z.FieldByName('jenis').AsString;
        Values[k , cxColKetMesin2.Index] := z.FieldByName('keterangan').AsString ;
        Values[k , cxColQtyReject2.Index] := z.FieldByName('qty').AsFloat;
        Values[k , cxColSatSPK2.Index] := z.FieldByName('satuan').AsString ;
      end;
      cxTblDT.EndUpdate;
      z.Next;
    end;
    z.Close;
    //cxTblDT.OptionsData.Editing := False;
    //cxTblDT.OptionsData.Inserting := False;

    //Operator
     cxKaryawan.DataController.RecordCount := 0 ;
     z := OpenRS('SELECT * FROM tbl_hsl_prd_operator where no_bukti =''%s''',[NoLHP]) ;
     while not z.Eof do begin
      cxKaryawan.BeginUpdate;
      with cxKaryawan.DataController do begin
        l := AppendRecord;
        Values[l, cxKaryawanColumn1.index] := z.FieldByName('nik').AsString ;
        Values[l, cxKaryawanColumn2.index] :=  z.FieldByName('nama').AsFloat ;
      end;
      cxKaryawan.EndUpdate;
      z.Next;
    end;
    z.Close;

    //Pemakaian Bahan
    tbahan := OpenRS('SELECT a.*, b.deskripsi,b.hpp,sf_wipitem(a.kode_brg) as wip,ifnull(c.qty,0)qty_lhp,c.qty_kg,c.f_dozing,ifnull(c.layer1,0)lyr1, ' +
    'ifnull(c.layer2,0)lyr2,ifnull(c.layer3,0)lyr3,ifnull(c.layer4,0)lyr4,ifnull(c.layer5,0)lyr5,ifnull(c.layer6,0)lyr6,ifnull(c.layer7,0)lyr7,ifnull(c.layer8,0)lyr8 ' +
    ' FROM tbl_bom_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
    'LEFT JOIN (SELECT * FROM tbl_pemakaian_bahan WHERE no_bukti=''%s'') c on a.kode_brg=c.kode_brg AND a.no_spk=c.no_spk WHERE a.no_spk = ''%s''',[NoLHP,b.FieldBYName('no_spk').AsString ]);

    cxTblPakaiBBDet.DataController.RecordCount := 0;

    while not tbahan.Eof do begin
      with cxTblPakaiBBDet.DataController do begin
        m := AppendRecord;
        Values[m, cxGridColumn18.Index] := tbahan.FieldByName('kode_brg').AsString;
        Values[m, cxGridColumn27.Index] := tbahan.FieldByname('deskripsi').AsString;
         if (tbahan.FieldByname('satuan').AsString='GR') then
        Values[m, cxGridColumn28.Index] := tbahan.FieldByName('qty').AsFloat/1000
        else
         Values[m, cxGridColumn28.Index] := tbahan.FieldByName('qty').AsFloat ;

        if (tbahan.FieldByname('satuan').AsString='GR') then
          Values[m, cxGridColumn30.Index] := 'KG'
        else
        Values[m, cxGridColumn30.Index] := tbahan.FieldByname('satuan').AsString;

        Values[m, cxColHPP.Index] := tbahan.FieldByname('hpp').AsFloat;
        Values[m, cxGridColumn31.Index] := tbahan.FieldByname('qty_lhp').AsFloat;
        Values[m, cxColQtyKG.Index] := tbahan.FieldByname('qty_kg').AsFloat;
        Values[m, cxColDosing.Index] := tbahan.FieldByname('f_dozing').AsInteger;
        Values[m, cxColLayer1.Index] := tbahan.FieldByname('lyr1').AsFloat;
        Values[m, cxColLayer2.Index] := tbahan.FieldByname('lyr2').AsFloat;
        Values[m, cxColLayer3.Index] := tbahan.FieldByname('lyr3').AsFloat;
        Values[m, cxColLayer4.Index] := tbahan.FieldByname('lyr4').AsFloat;
        Values[m, cxColLayer5.Index] := tbahan.FieldByname('lyr5').AsFloat;
        Values[m, cxColLayer6.Index] := tbahan.FieldByname('lyr6').AsFloat;
        Values[m, cxColLayer7.Index] := tbahan.FieldByname('lyr7').AsFloat;
        Values[m, cxColLayer8.Index] := tbahan.FieldByname('lyr8').AsFloat;


            //Menampilkan Sudah BON
          z := OpenRS('SELECT a.*, b.deskripsi, b.unitid, ' +
          'IFNULL((SELECT SUM(qty) FROM tbl_trskeluar_det WHERE kode_brg = a.kode_brg AND no_spk = a.no_spk),0) qty_ambil ' +
          'FROM tbl_bom_det a ' +
          'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
          'WHERE no_spk = ''%s'' and kode_brg= ''%s'' AND LEFT(b.kode,1) IN (''C'',''D'')',[b.FieldBYName('no_spk').AsString ,tbahan.FieldByName('kode_brg').AsString]);

        if (Copy(tbahan.FieldByName('kode_brg').AsString,1,1)='B') then begin
          Values[m, cxColSisa.Index] := tbahan.FieldByName('wip').AsFloat ;
          end
        else
          Values[m, cxColSisa.Index] := z.FieldByname('qty_ambil').AsFloat;

        z.Close ;

      end;
      tbahan.Next;

    end;
    q.Close;

    b.Close;
  end;
end;

procedure TfrmInputLHP.cxTblPakaiBBDetDataControllerAfterPost(
  ADataController: TcxCustomDataController);
var
  i : Integer ;
  mTotal : Real ;
begin
  inherited;
  mTotal := 0 ;
   for i := 0 to cxTblPakaiBBDet.DataController.RowCount - 1 do begin

    if Copy(cxTblPakaiBBDet.DataController.Values[i, cxGridColumn18.Index],1,1) = 'D' then begin
          if not VarIsNull(cxTblPakaiBBDet.DataController.Values[i, cxColQtyKG.Index]) then
      mTotal := mTotal + cxTblPakaiBBDet.DataController.Values[i, cxColQtyKG.Index];
    end;
  end;
  cxsNPM.Value := mTotal;
  cxsBK.Value := cxsBB.EditValue + cxsNPM.EditValue ;
end;

procedure TfrmInputLHP.cxTblPakaiBBDetNavigatorButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
Var
  i : Integer ;
  ADataController: TcxCustomDataController ;
begin
  inherited;
  {if AButtonIndex = 10 then begin
  i := ADataController.FocusedRowIndex;

   if Copy(ADataController.Values[i, cxGridColumn18.Index],1,1) = 'D' then begin
             try
                mnTotal := mnTotal +  ADataController.Values[i, cxColQtyKG.Index] ;
                cxsNPM.EditValue := mnTotal ;
              except
            end;
         end;
         end;       }
end;

procedure TfrmInputLHP.cxTblHP1DataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
     if AItemIndex = cxColHP1Qty.Index then begin
     cxsSelisih.EditValue :=  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11] - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1];
   end
   else if AItemIndex = cxColHP1Unit.Index then begin
     if ADataController.Values[ARecordIndex, cxColHP1Unit.Index] = 'KG' then
     ADataController.Values[ARecordIndex, cxColHP1QtyKG.Index] := ADataController.Values[ARecordIndex, cxColHP1Qty.Index] ;
     cxsSelisih.EditValue :=  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[11] - cxsBB.EditValue - cxTblHP1.DataController.Summary.FooterSummaryValues[1];
   end;
end;

procedure TfrmInputLHP.cxTblDTDataControllerAfterPost(
  ADataController: TcxCustomDataController);
var
  i : Integer ;
  mTotal,mTotal1 : Real ;
begin
  inherited;
    mTotal := 0 ;
    mTotal1 := 0 ;
   for i := 0 to cxTblDT.DataController.RowCount - 1 do begin

   if Copy(cxTblDT.DataController.Values[i , cxColKategoriDown2.Index],1,11) ='JENIS AFVAL' then begin
    if not VarIsNull(cxTblDT.DataController.Values[i, cxColQtyReject2.Index]) then
      mTotal := mTotal + cxTblDT.DataController.Values[i, cxColQtyReject2.Index];
    end else begin
       if not VarIsNull(cxTblDT.DataController.Values[i, cxColQtyReject2.Index]) then
      mTotal1 := mTotal1 + cxTblDT.DataController.Values[i, cxColQtyReject2.Index];
    end;
  end;
  cxsAfval.Value := mTotal;
  cxsDT.Value := mTotal1;
end;

end.
