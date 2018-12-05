unit unFrmRework;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxLabel,DB, ZAbstractRODataset, ZDataset,
  cxSpinEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, dxSkinscxPCPainter, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, DateUtils;

type
  TfrmRework = class(TfrmTransBaru)
    cxLabel1: TcxLabel;
    cxtNoLHP: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtNoBukti: TcxTextEdit;
    Label1: TLabel;
    txtSPK: TEdit;
    Label3: TLabel;
    txtKode: TEdit;
    lblDeskripsi: TLabel;
    Label2: TLabel;
    cxtUrut: TcxTextEdit;
    cxtRouting: TcxTextEdit;
    cxtRouting1: TcxTextEdit;
    Label5: TLabel;
    cxdTglPrd: TcxDateEdit;
    Label8: TLabel;
    cxtShift: TcxTextEdit;
    Label6: TLabel;
    cxdStart: TcxDateEdit;
    Label7: TLabel;
    cxdFinish: TcxDateEdit;
    Label9: TLabel;
    cxlMesin: TcxLookupComboBox;
    Label10: TLabel;
    cxsReject: TcxSpinEdit;
    Label11: TLabel;
    cxsOperator: TcxSpinEdit;
    zqrKategoriDown: TZReadOnlyQuery;
    dsKategoriDown: TDataSource;
    zqrKetMesin: TZReadOnlyQuery;
    dsKetMesin: TDataSource;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    zqrUnit: TZReadOnlyQuery;
    dsUnit: TDataSource;
    zqrKaryawan: TZReadOnlyQuery;
    dsKaryawan: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxTblHP: TcxGridTableView;
    cxColNoTblHPLot: TcxGridColumn;
    cxColNoTblHPQty1: TcxGridColumn;
    cxColNoTblHPSat1: TcxGridColumn;
    cxColNoTblHPQty2: TcxGridColumn;
    cxColNoTblHPQty3: TcxGridColumn;
    cxGridLevel1: TcxGridLevel;
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
    cxTabSheet3: TcxTabSheet;
    cxGrid12: TcxGrid;
    cxTblPakaiBBDet: TcxGridTableView;
    cxColDosing: TcxGridColumn;
    cxGridColumn18: TcxGridColumn;
    cxGridColumn27: TcxGridColumn;
    cxGridColumn30: TcxGridColumn;
    cxGridColumn28: TcxGridColumn;
    cxColSisa: TcxGridColumn;
    cxGridColumn29: TcxGridColumn;
    cxGridColumn31: TcxGridColumn;
    cxColLayer1: TcxGridColumn;
    cxColLayer2: TcxGridColumn;
    cxColLayer3: TcxGridColumn;
    cxColLayer4: TcxGridColumn;
    cxColLayer5: TcxGridColumn;
    cxColLayer6: TcxGridColumn;
    cxColLayer7: TcxGridColumn;
    cXColLayer8: TcxGridColumn;
    cxColHPP: TcxGridColumn;
    cxColTHPP: TcxGridColumn;
    cxGridLevel9: TcxGridLevel;
    cxTabSheet5: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxKaryawan: TcxGridTableView;
    cxKaryawanColumn1: TcxGridColumn;
    cxKaryawanColumn2: TcxGridColumn;
    cxGridLevel4: TcxGridLevel;
    Label4: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    Label12: TLabel;
    cxSpinEdit2: TcxSpinEdit;
    Label13: TLabel;
    cxsDurasi: TcxSpinEdit;
    cxsQtySpk: TcxSpinEdit;
    cxtUnitSPK: TcxTextEdit;
    cxtLOT: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxdTglPrdPropertiesEditValueChanged(Sender: TObject);
    procedure cxdStartPropertiesEditValueChanged(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure ClearAll;
    procedure cxKaryawanDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxTblDTDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure cxlMesinPropertiesChange(Sender: TObject);
    procedure cxTblHPDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
  private
    { Private declarations }
     mNoHPR: string;
  public
    { Public declarations }
    property NoHPR: string read mNoHPR write mNoHPR;
  end;

var
  frmRework: TfrmRework;

implementation

uses
  unDm, unAplikasi, unTools, unFrmLHP;

{$R *.dfm}

procedure TfrmRework.FormShow(Sender: TObject);
var
    q,z,a,b : TZQuery;
    j : Integer;
begin
  inherited;
  zqrKategoriDown.Open;
  zqrMesin.Open;
  zqrUnit.Open;
  zqrKetMesin.Open ;
  zqrKaryawan.Open ;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl1.Pages[2].TabVisible := False ;

  cxtNoLHP.Text := mNoHPR;
  cxtNoBukti.Text := GetLastFak('rework');

  
    q := OpenRS('SELECT a.*,b.qty,b.kode_brg,b.deskripsi, IFNULL(c.no,0) no_urut_routing,b.routing ' +
        'FROM tbl_hsl_prd a LEFT JOIN v_spk b ON a.no_spk=b.no_spk ' +
        'LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_routing) c ON b.kode_brg = c.kode_brg  ' +
        'WHERE no_bukti = ''%s''',[mNoHPR]);
    txtKode.Text := q.FieldByName('kode_brg').AsString;
    lblDeskripsi.Caption := q.FieldBYName('deskripsi').AsString;
    txtSPK.Text := q.FieldBYName('no_spk').AsString;
    cxtUrut.Text := IntToStr(q.FieldByName('no_urut_routing').AsInteger);
       cxsQtySpk.EditValue := q.FieldByname('qty').AsFloat;
       
     a := OpenRS('SELECT routing FROM tbl_routing WHERE kode = ''%s'' and No=''%s''',[txtKode.Text,cxtUrut.Text]);
    if q.FieldByname('routing').AsString='BJ' then
    cxtRouting.Text := a.FieldByname('routing').AsString
    else
    cxtRouting.Text := q.FieldByname('routing').AsString;
    a.Close;
    cxtRouting1.Text := q.FieldByname('routing').AsString;
    q.Close ;
     //Menampilkan BOM
    z := OpenRS('SELECT a.*, b.deskripsi,b.hpp,sf_wipitem(a.kode_brg) as wip FROM tbl_bom_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE no_spk = ''%s''',[txtSPK.Text]);

    cxTblPakaiBBDet.DataController.RecordCount := 0;

    while not z.Eof do begin
      with cxTblPakaiBBDet.DataController do begin
        j := AppendRecord;
        Values[j, cxGridColumn18.Index] := z.FieldByName('kode_brg').AsString;
        Values[j, cxGridColumn27.Index] := z.FieldByname('deskripsi').AsString;
         if (z.FieldByname('satuan').AsString='GR') then
        Values[j, cxGridColumn28.Index] := z.FieldByName('qty').AsFloat/1000
        else
         Values[j, cxGridColumn28.Index] := z.FieldByName('qty').AsFloat ;

        if (z.FieldByname('satuan').AsString='GR') then
          Values[j, cxGridColumn30.Index] := 'KG'
        else
        Values[j, cxGridColumn30.Index] := z.FieldByname('satuan').AsString;

        Values[j, cxColHPP.Index] := z.FieldByname('hpp').AsFloat;


            //Menampilkan Sudah BON
          b := OpenRS('SELECT a.*, b.deskripsi, b.unitid, ' +
          'IFNULL((SELECT SUM(qty) FROM tbl_trskeluar_det WHERE kode_brg = a.kode_brg AND no_spk = a.no_spk),0) qty_ambil ' +
          'FROM tbl_bom_det a ' +
          'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
          'WHERE no_spk = ''%s'' and kode_brg= ''%s'' AND LEFT(b.kode,1) IN (''C'',''D'')',[txtSPK.Text,z.FieldByName('kode_brg').AsString]);

        if (Copy(z.FieldByName('kode_brg').AsString,1,1)='B') then begin
          Values[j, cxColSisa.Index] := z.FieldByName('wip').AsFloat ;
          end
        else
        Values[j, cxColSisa.Index] := b.FieldByname('qty_ambil').AsFloat;
        b.Close ;

      end;
      z.Next;

    end;
    z.Close;

    { if (cxtRouting.Text ='EXTRUSI') or (cxtRouting.Text ='EXTRUTION')  or (cxtRouting.Text ='EXTRUSION')  or (cxtRouting.Text ='MIXING')  or (cxtRouting.Text ='CASTING') then begin
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
       end
       else begin
       cxColNoTblHPQty3.Visible := False ;
       end;   }
end;

procedure TfrmRework.cxdTglPrdPropertiesEditValueChanged(Sender: TObject);
 var
  tanggal : TDate ;
  tgl,bln : ShortInt ;
  thn : Integer;
begin
  inherited;
  cxdStart.EditValue := cxdTglPrd.EditValue ;
  cxdFinish.EditValue := cxdTglPrd.EditValue ;
  cxtNoBukti.Text := GetLastFak('rework',cxdTglPrd.Date);

    if  cxTblHP.DataController.Summary.FooterSummaryValues[1]> 0 then begin

     tanggal := cxdTglPrd.Date ;

      tgl := DayOf(tanggal);
      bln := MonthOf(tanggal);
      thn := YearOf(tanggal);

      cxtLOT.Text := IntToStr(thn) +''+  IntToStr(bln) +''+  IntToStr(tgl) +''+ cxtShift.Text +''+ StringReplace(cxlMesin.Text,'-','',[rfReplaceAll, rfIgnoreCase]);
  end;
end;

procedure TfrmRework.cxdStartPropertiesEditValueChanged(Sender: TObject);
 var
  tanggal : TDate ;
  tgl,bln : ShortInt ;
  thn : Integer;
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

    if  cxTblHP.DataController.Summary.FooterSummaryValues[1]> 0 then begin

     tanggal := cxdTglPrd.Date ;

      tgl := DayOf(tanggal);
      bln := MonthOf(tanggal);
      thn := YearOf(tanggal);

      cxtLOT.Text := IntToStr(thn) +''+  IntToStr(bln) +''+  IntToStr(tgl) +''+ cxtShift.Text +''+ StringReplace(cxlMesin.Text,'-','',[rfReplaceAll, rfIgnoreCase]);
  end;
end;

procedure TfrmRework.btnSimpanClick(Sender: TObject);
 var
  i,j,upah1,listrik1: Integer;
  sNoTrs: String;
  q, qh, qd, qhst, qb, qbd, qbom,z,a,b1,b2,qkar,qj, qjd : TZQuery;
  AD, AK, KodeBrg, sNoJ, sNoBukti: string;
  jml_bahan: real;
  upah , biaya, biayaupah,biayalistrik,tcogs : real;
begin
  inherited;
  if (cxSpinEdit2.EditValue < cxTblHP.DataController.Summary.FooterSummaryValues[1]) then begin
    MsgBox('Qty Hasil Tidak Boleh melebihi jumlah rework');
    Abort;
  end
  else begin
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
        sNoTrs := GetLastFak('rework',cxdTglPrd.Date);
        UpdateFaktur(Copy(sNoTrs,1,9));
        cxtNoBukti.Text :=  sNoTrs;
      end
      else begin
        sNoTrs := cxtNoBukti.Text;
      end;

    q := OpenRS('SELECT * FROM tbl_hsl_prd WHERE no_bukti = ''%s''',[sNoTrs]);

    if Self.Jenis ='tambah' then begin
      q.Insert;

        //Input Detail LPH
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
      {if (cxTblPakaiBBDet.DataController.RecordCount<>0) then begin
        with cxTblPakaiBBDet.DataController do begin
          for j := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_pemakaian_bahan where no_bukti =''%s''',[sNoTrs]) ;
            if  Values[j,cxGridColumn31.Index]<>0 then begin
              z.Insert;
              z.FieldByName('no_spk').AsString := txtSPK.Text;
              z.FieldByName('no_bukti').AsString := sNoTrs;
              z.FieldByName('kode_brg').AsString :=  Values[j , cxGridColumn18.Index];
              z.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
              z.FieldByName('satuan').AsString := Values[j , cxGridColumn30.Index];
              if (Values[j,cxGridColumn31.Index]<>null) then
              z.FieldByName('qty').AsFloat := Values[j,cxGridColumn31.Index];
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
            end;
          end;
        end;
      end;}

      // jika selain barang jadi maka masukkan barang ke gudang G-WIP
      if cxtRouting1.Text <> 'BJ' then begin
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
        qd.FieldByName('kode_gdg').AsString := 'G-WIP';
        qd.FieldByName('satuan').AsString := cxTblHP.DataController.Values[0, cxColNoTblHPSat1.Index];
        qd.FieldByName('no_spk').AsString := txtSPK.Text;
        qd.Post;
        qd.Close;

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
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          //FieldByName('hpp').AsFloat := GetHPP(txtKode.Text,'G-WIP');
          FieldByName('unit_ktg').AsString := GetUnitKTG(txtKode.Text);
          Post;
        end;
        qhst.Close;

        // simpan jurnal otomatis
        sNoJ := GetLastFak('jurnal');
        UpdateFaktur(Copy(sNoJ,1,6));
        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
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
          AD := GetDefaultAkun('TRANSFER BARANG WIP KE GUDANG','D');
          AK := GetDefaultAkun('TRANSFER BARANG WIP KE GUDANG','K');
        end;

        // DEBET
        qjd.Insert;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoBukti;
        qjd.FieldByName('akun').AsString := AD;
        //qjd.FieldByName('debet').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0] * GetHPP(txtKode.Text,'G-WIP');
        qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG WIP KE GUDANG';
        qjd.FieldByName('dc').AsString := 'D';
        qjd.FieldByName('kode_brg').AsString := KodeBrg;
        qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
        qjd.Post;

        // KREDIT
        qjd.Insert;
        qjd.FieldByName('no_jurnal').AsString := sNoJ;
        qjd.FieldByName('no_trans').AsString := sNoBukti;
        qjd.FieldByName('akun').AsString := AK;
       // qjd.FieldByName('kredit').AsFloat := cxTblHP.DataController.Summary.FooterSummaryValues[0] * GetHPP(txtKode.Text,'G-WIP');
        qjd.FieldByName('keterangan').AsString := 'TRANSFER BARANG WIP KE GUDANG';
        qjd.FieldByName('dc').AsString := 'C';
        qjd.FieldByName('kode_brg').AsString := KodeBrg;
        qjd.FieldByName('unit').AsString := GetUnitKTG(KodeBrg);
        qjd.Post;
        qjd.Close;

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
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          FieldByName('hpp').AsFloat := biayaupah + biayalistrik +  cxTblPakaiBBDet.DataController.Summary.FooterSummaryValues[1] ;
          FieldByName('unit_ktg').AsString := GetUnitKTG(txtKode.Text);
          Post;
        end;
        qhst.Close;

        // simpan jurnal otomatis
        sNoJ := GetLastFak('jurnal',cxdTglPrd.Date);
        UpdateFaktur(Copy(sNoJ,1,6));
        qj := OpenRS('SELECT * FROM tbl_jurnal WHERE no_jurnal = ''%s''');
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
        qjd.Close;

      end;

       try
           qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[txtKode.Text]);
          qb.Edit;
          qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat + cxTblHP.DataController.Summary.FooterSummaryValues[0];
          qb.Post;
          qb.Close;

              except
            end;



      qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-WIP''',
        [txtKode.Text]);
      if qbd.IsEmpty then
        qbd.Insert
      else
        qbd.Edit;
      
      qbd.FieldByName('kode_brg').AsString := txtKode.Text;
      qbd.FieldByName('kode_gdg').AsString := 'G-WIP';
      qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat + cxTblHP.DataController.Summary.FooterSummaryValues[0];
      qbd.Post;
      qbd.Close;

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
            FieldByName('gudang').AsString := 'G-WIP';
            FieldByName('user').AsString := Aplikasi.NamaUser;
            FieldByName('user_dept').AsString := Aplikasi.UserDept;
            FieldByName('no_spk').AsString := txtSPK.Text ;
            FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
            //FieldByName('hpp').AsFloat :=
             // GetHPP(qbom.FieldByname('kode_brg').AsString,'G-WIP');
            FieldByName('unit_ktg').AsString := GetUnitKTG(qbom.FieldByname('kode_brg').AsString);
            Post;
          end;
          qhst.Close;


        
         try
           {   qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[qbom.FieldByName('kode_brg').AsString]);
            qb.Edit;
            qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat - (jml_bahan * cxTblHP.DataController.Summary.FooterSummaryValues[0]);
            qb.Post;
            qb.Close; }
                except
              end;

          qbd := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''G-WIP''',
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

    end
    else begin
      q.Edit;
      sNoTrs := cxtNoBukti.Text;
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
    q.FieldByName('lot').AsString := cxtLOT.Text;

    if (cxsReject.EditValue<>0) then
      tcogs :=( q.FieldByName('cogs_mat').AsFloat / (cxTblHP.DataController.Summary.FooterSummaryValues[1] + cxsReject.EditValue))*cxsReject.EditValue;

    q.FieldByName('cogs_afval').AsFloat := tcogs ;
    q.FieldByName('cogs').AsFloat :=  q.FieldByName('cogs_upah').AsFloat +  q.FieldByName('cogs_listrik').AsFloat +   q.FieldByName('cogs_mat').AsFloat;
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

        q.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
        q.FieldByName('user').AsString := Aplikasi.NamaUser;
        q.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        q.FieldByName('ket_mesin').AsString := '-';
    Post ;
    Close;

     //Input Detail LPH
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
            if  Values[j,cxGridColumn31.Index]>=0 then begin
              z.Insert;
              z.FieldByName('no_spk').AsString := txtSPK.Text;
              z.FieldByName('no_bukti').AsString := sNoTrs;
              z.FieldByName('kode_brg').AsString :=  Values[j , cxGridColumn18.Index];
              z.FieldByName('tanggal').AsDateTime := cxdTglPrd.EditValue;
              z.FieldByName('satuan').AsString := Values[j , cxGridColumn30.Index];
              if (Values[j,cxGridColumn31.Index]<>null) then
              z.FieldByName('qty').AsFloat := Values[j,cxGridColumn31.Index];
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

            end;
          end;
        end;
      end;

    dm.zConn.StartTransaction;
    dm.zConn.ExecuteDirect('UPDATE tbl_karantina_hdr SET f_rework=1 WHERE no_bukti = ''' + cxtNoLHP.Text + '''');
    dm.zConn.Commit;

    MsgBox('Data Rework Sudah Disimpan dengan nomor:' + sNoTrs  );
    btnKeluarClick(nil);
    ClearAll;


  end;

end;
end;


procedure TfrmRework.ClearAll;
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


procedure TfrmRework.cxKaryawanDataControllerRecordChanged(
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

procedure TfrmRework.cxTblDTDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
 var
      i : Integer;
begin
  inherited;
  {if (AItemIndex = cxGridColumn31.Index) then begin
    i := ADataController.GetFocusedRecordIndex;
      with ADataController do begin
        Values[i, cxColTHPP.Index] := Values[i, cxGridColumn31.Index] *Values[i, cxColHPP.Index]  ;
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
      end;   }
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

procedure TfrmRework.cxlMesinPropertiesChange(Sender: TObject);
var
  tanggal : TDate ;
  tgl,bln : ShortInt ;
  thn : Integer;
begin
  inherited;
   if  cxTblHP.DataController.Summary.FooterSummaryValues[1]> 0 then begin

     tanggal := cxdTglPrd.Date ;

      tgl := DayOf(tanggal);
      bln := MonthOf(tanggal);
      thn := YearOf(tanggal);

      cxtLOT.Text := IntToStr(thn) +''+  IntToStr(bln) +''+  IntToStr(tgl) +''+ cxtShift.Text +''+ StringReplace(cxlMesin.Text,'-','',[rfReplaceAll, rfIgnoreCase]);
  end;
end;

procedure TfrmRework.cxTblHPDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
  var
  tanggal : TDate ;
  tgl,bln : ShortInt ;
  thn : Integer;
begin
  inherited;
   if AItemIndex = cxColNoTblHPQty1.Index then begin

      tanggal := cxdTglPrd.Date ;

      tgl := DayOf(tanggal);
      bln := MonthOf(tanggal);
      thn := YearOf(tanggal);

      cxtLOT.Text := IntToStr(thn) +''+  IntToStr(bln) +''+  IntToStr(tgl) +''+ cxtShift.Text +''+ StringReplace(cxlMesin.Text,'-','',[rfReplaceAll, rfIgnoreCase]);
    end;
end;

end.
