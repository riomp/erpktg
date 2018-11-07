unit unFrmProsesMS;

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
  dxSkinXmas2008Blue, ZAbstractTable, ZDataset, DB, ZAbstractRODataset,
  ZAbstractDataset, cxCheckBox, cxDBLookupComboBox, ComCtrls, Buttons,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxDropDownEdit, cxCalendar, StdCtrls, cxSpinEdit,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxTextEdit, cxMemo, NxEdit, cxLabel, ExtCtrls;

type
  TfrmProsesMS = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    cxtNoSO: TcxTextEdit;
    cxtNoMO: TcxTextEdit;
    cxtKodeBrg: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxtNamaCust: TcxTextEdit;
    cxsQtyMO: TcxSpinEdit;
    cxsToleransi: TcxSpinEdit;
    btnKeluar: TButton;
    btnSimpan: TButton;
    cxdTglPProd: TcxDateEdit;
    btnBersih: TButton;
    cxsTotal: TcxSpinEdit;
    cxdTglPSelesai: TcxDateEdit;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    Label12: TLabel;
    nxGrdDet: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColDesk: TNxTextColumn;
    nxColFormulasi: TNxNumberColumn;
    nxColKomposisi: TNxNumberColumn;
    nxCmbSatuan: TNxComboBoxColumn;
    nxColQtyMO: TNxNumberColumn;
    nxColTotal: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    cxlFormula: TcxLookupComboBox;
    btnProses: TButton;
    cxsKapasitas: TcxSpinEdit;
    cxlMesin: TcxLookupComboBox;
    zqFormula: TZQuery;
    dsFormula: TDataSource;
    zqMesin: TZQuery;
    dsMesin: TDataSource;
    zTblGrpMesin: TZTable;
    dsGrpMesin: TDataSource;
    cxmKetSO: TcxMemo;
    cxsBeratPUnit: TcxSpinEdit;
    Label9: TLabel;
    cxtNoSPK: TcxTextEdit;
    cxsQtySPK: TcxSpinEdit;
    cxCmbJenisSPK: TcxComboBox;
    nxColKodeBrg: TNxNumberColumn;
    nxGrdBom: TNextGrid;
    Label10: TLabel;
    nxColDeskBahan: TNxTextColumn;
    nxColCmbSat: TNxComboBoxColumn;
    nxColQty: TNxNumberColumn;
    NxEdit1: TNxEdit;
    btnSimpan2: TButton;
    nxNoUrut: TNxIncrementColumn;
    nxColHapus: TNxImageColumn;
    Label15: TLabel;
    cxsQtySO: TcxSpinEdit;
    cxsBeratPerUnitBom: TcxSpinEdit;
    Label11: TLabel;
    nxColStok: TNxNumberColumn;
    btnTambah: TButton;
    nxColHapus2: TNxImageColumn;
    nxColGudang: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    GroupBox1: TGroupBox;
    cxLabel1: TcxLabel;
    cxtWarna: TcxTextEdit;
    cxtPanjang: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxtLebar: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtTebal: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtDiameter: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxtDiameterDlm: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxtDiameterLuar: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxtPacking: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxtFlowProc: TcxTextEdit;
    lblS_Berat: TLabel;
    lblS_Berat2: TLabel;
    Label18: TLabel;
    cxtLain2: TcxTextEdit;
    Label19: TLabel;
    cxtKetPPIC: TcxTextEdit;
    cxtBeratPUnit: TcxTextEdit;
    nxColEdit: TNxHyperlinkColumn;
    nxColQtyBom: TNxNumberColumn;
    nxColDibuka: TNxTextColumn;
    nxColDibatasi: TNxTextColumn;
    nxColQtyBOM2: TNxNumberColumn;
    cxChkBOM: TcxCheckBox;
    Shape1: TShape;
    cxtLokasi: TcxTextEdit;
    cxtKondisi: TcxTextEdit;
    cxtNoPO: TcxTextEdit;
    Label21: TLabel;
    pnlSPKGiling: TPanel;
    btnUpdateBOM: TButton;
    Label22: TLabel;
    cxlHslGiling: TcxLookupComboBox;
    zqrHslGiling: TZQuery;
    dsHslGiling: TDataSource;
    Label23: TLabel;
    cxtKodeBrgInput: TcxTextEdit;
    cxtDeskBrgInput: TcxTextEdit;
    Label24: TLabel;
    cxLabel10: TcxLabel;
    nxColQty2: TNxNumberColumn;
    nxColSatuan2: TNxTextColumn;
    nxColTotal2: TNxNumberColumn;
    nxColBpu: TNxNumberColumn;
    nxColNamaFormula: TNxTextColumn;
    cxChkWIP: TcxCheckBox;
    cxChkFAI: TcxCheckBox;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProsesClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
    procedure nxGrdBomAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure nxGrdBomCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnTambahClick(Sender: TObject);
    procedure cxsToleransiPropertiesChange(Sender: TObject);
    procedure nxGrdDetCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrdDetCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormShow(Sender: TObject);
  private
    mNoMO: string;
    mNoSPK: string;
    mJenis: string;
    mJenisSPK: string;
    fWIP, fWIPAwal, fWIPAkhir: Integer;
    procedure EditSPK(sNOMO: string);
    procedure HapusBOM;
    procedure ProsesSPKTambahan(sNoSPKInduk: string);
  public
    property NoMO: string read mNoMO write mNoMO;
    property NoSPK: string read mNoSPK write mNoSPK;
    property Jenis: string read mJenis write mJenis;
    property JenisSPK: string read mJenisSPK write mJenisSPK;
    function CekKodeBrg(sKodeBrg : String) : Boolean;
  end;

var
  frmProsesMS: TfrmProsesMS;

implementation

uses unAplikasi, unDm, unTools, unFrmUtama, unFrmEditDetailBOM_SPK;

{$R *.dfm}

procedure TfrmProsesMS.FormShow(Sender: TObject);
var
  q, qBrg, qSO, qSJ, qbom, qin: TZQuery;
  sNoSPK: string;
  i: integer;
begin
  if mNoMO <> '' then begin
    Screen.Cursor := crSQLWait;
    if mJenis = 'edit' then begin
      EditSPK(mNoMO);

    end
    else begin

      // cek apakah spk sudah ada sebelumnya, jika sudah maka
      // nomer spk-N
      q := OpenRS('SELECT * FROM tbl_spk WHERE no_mo = ''%s'' ' +
        'AND length(no_spk) = 12',[mNoMO]);
      if q.IsEmpty then
        cxtNoSPK.Text := GetLastFak('spk')
      else
        cxtNoSPK.Text := GetLastFakHeader(q.FieldByName('no_spk').AsString);

      //q := OpenRS('SELECT * FROM v_mo WHERE no_mo = ''%s''', [mNoMO]);
      q := OpenRS('SELECT * FROM _mo');
      if not q.IsEmpty then begin
        // lokasi
        cxtLokasi.Text := q.FieldByName('lokasi').AsString;
        // kondisi
        cxtKondisi.Text := q.FieldByName('kondisi').AsString;

        // no PO
        cxtNoPO.Text := q.FieldByName('no_po').AsString;

        cxtNoSO.Text := q.FieldByName('no_so').AsString;

        cxtNamaCust.Text := q.FieldByName('nama_customer').AsString;
        cxtNoMO.Text := q.FieldByName('no_mo').AsString;

        // jika MTS maka toleransi default 10%
        if Copy(cxtNoSO.Text,1,3) = 'MTS' then begin
          cxsToleransi.Value := 10;
          //cxsToleransi.Properties.ReadOnly := False;
        end;

        cxsQtySO.Value := q.FieldByName('qty_so').AsFloat;

        cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
        cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;

        //cxsBeratPUnit.Value := q.FieldByName('berat_per_unit').AsFloat;
        cxtBeratPUnit.Text := q.FieldByName('berat_per_unit').AsString;

        // Keterangan so jika ada
        qSO := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
          'AND kode_brg = %s',
          [cxtNoSO.Text, cxtKodeBrg.Text]);
        cxsQtyMO.Value := q.FieldByName('qty_mo').AsFloat;
        cxmKetSO.Lines.Text := qSO.FieldByName('notes').AsString;
        qSO.Close;

        // SO head
        qSO := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
          [cxtNoSO.Text]);
        cxmKetSO.Text := qSO.FieldByName('notes').AsString;
        fWIP := qSO.FieldByName('f_wip').AsInteger;
        fWIPAwal := qSO.FIeldByName('f_wip_awal').AsInteger;
        fWIPAkhir := qSO.FieldByName('f_wip_akhir').AsInteger;
        qSO.Close;

        // qty spk adalah qty so - qty sj
        qSJ := OpenRS('SELECT IFNULL(qty,0) qty FROM tbl_sj_det ' +
          'WHERE no_so = ''%s'' and kode_brg = %s',
          [cxtNoSO.Text, cxtKodeBrg.Text]);

        // 28-06-2014 -> sementara
        //cxsQtySPK.Value := cxsQtyMO.Value - qSJ.FieldByName('qty').AsFloat;
        //
        cxsQtySPK.Value := cxsQtyMO.Value;
        cxsQtySPK.Properties.MaxValue := cxsQtySPK.Value;
        qSJ.Close;

        // cek apakah barang ini memiliki bom
        qbom := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = %s',
          [cxtKodeBrg.Text]);
        if not qbom.IsEmpty then
          cxChkBOM.Checked := True;
        qbom.Close;

        qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
          [cxtKodeBrg.text]);

        // ambil flag fai
        if qBrg.FieldByName('f_fai').AsInteger = 1 then
          cxChkFAI.Checked := True;

        if qBrg.FieldByName('tipe').AsString = 'BBT - BAHAN BAKU TEPUNG' then begin
          cxCmbJenisSPK.Text := 'MIXING / COMPOUND';
          cxCmbJenisSPK.Properties.ReadOnly := True;
          cxCmbJenisSPK.Style.Color := clMoneyGreen;
        end
        else if qBrg.FieldByName('tipe').AsString = 'BJ - BARANG JADI' then begin
          cxCmbJenisSPK.Text := 'BARANG JADI';
          cxCmbJenisSPK.Properties.ReadOnly := True;
          cxCmbJenisSPK.Style.Color := clMoneyGreen;
        end;
        // jika nomer so adalah so peletan
        if Copy(cxtNoSO.Text,1,3) = 'SPL' then begin
          cxCmbJenisSPK.Text := 'PELETAN';
          cxCmbJenisSPK.Properties.ReadOnly := True;
          cxCmbJenisSPK.Style.Color := clMoneyGreen;
        end;

        // jika mJenisSPK ada isinya (biasanya untuk spk giling)
        if mJenisSPK <> '' then begin
          cxCmbJenisSPK.Text := mJenisSPK;
          cxCmbJenisSPK.Properties.ReadOnly := True;
          cxCmbJenisSPK.Style.Color := clMoneyGreen;

          pnlSPKGiling.Top := pg.Top;
          pnlSPKGiling.Left := pg.Left;
          pnlSPKGiling.Width := pg.Width;
          pnlSPKGiling.Height := pg.Height;

          qin := OpenRS('SELECT deskripsi FROM tbl_barang WHERE kode = %s',
            [q.FieldByName('kode_brg_input').AsString]);
          cxtKodeBrgInput.Text := q.FieldByName('kode_brg_input').AsString;
          cxtDeskBrgInput.Text := qin.FieldByName('deskripsi').AsString;
          qin.Close;

          pg.Visible := False;
          zqrHslGiling.Open;
          cxsQtySPK.Properties.ReadOnly := True;
          cxsQtySPK.Style.Color := clMoneyGreen;
          pnlSPKGiling.Visible := True;
        end;

        lblS_Berat.Caption := '';
        lblS_Berat2.Caption := '';  
        lblS_Berat.Caption := qBrg.FieldByName('s_berat').AsString;
        lblS_Berat2.Caption := qBrg.FieldByName('s_berat_per_unit_b').AsString;

        cxsBeratPerUnitBom.Value := qBrg.FieldByName('berat_per_unit_b').AsFloat;
        cxtWarna.Text := qBrg.FieldByName('warna').AsString;
        cxtPanjang.Text := qBrg.FieldByName('panjang').AsString + ' ' +
          qBrg.FieldByName('s_panjang').AsString;
        cxtLebar.Text := qBrg.FieldByName('lebar').AsString + ' ' +
          qBrg.FieldByName('s_lebar').AsString;
        cxtTebal.Text := qBrg.FieldByName('tebal').AsString + ' ' +
          qBrg.FieldByName('s_tebal').AsString;
        cxtDiameter.Text := qBrg.FieldByName('diameter').AsString + ' ' +
          qBrg.FieldByName('s_diameter').AsString;
        cxtDiameterDlm.Text := qBrg.FieldByName('diameter_dalam').AsString;
        cxtDiameterLuar.Text := qBrg.FieldByName('diameter_luar').AsString;
        cxtPacking.Text := qBrg.FieldByName('packing').AsString;
        cxtFlowProc.Text := qBrg.FieldByName('flow_process').AsString;
        qBrg.Close;

        zqFormula.Close;
        zqFormula.ParamByName('kode').AsString := cxtKodeBrg.Text;
        zqFormula.Open;

        //zqFormula.Close;
        //zqFormula.ParamByName('kategori').AsString := qBrg.FieldByName('kategori').AsString;
        //zqFormula.Open;

        // tampilkan kapasitas
        //cxsKapasitas.Value := qBrg.FieldByName('kapasitas').AsFloat;

        //qBrg.Close;

        {
        // get header bom
        q := OpenRS('SELECT a.kode_formula, b.deskripsi FROM tbl_bom a, tbl_formula b ' +
          'WHERE a.no_mo = ''%s''',
          [mNoMo]);
        cxlFormula.Text := q.FieldByName('kode_formula').AsString;
        cxeDeskFormula.Text := q.FieldByName('deskripsi').AsString;
        q.Close;

        // detail bom
        q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_bom_det a, tbl_bahan b ' +
          'WHERE a.kode_bahan = b.kode AND no_mo = ''%s''',[mNoMo]);
        i := 0;
        while not q.Eof do begin
          nxGrdDet.AddRow();
          nxGrdDet.Cell[1,i].AsString := q.FieldByName('kode_bahan').AsString;
          nxGrdDet.Cell[2,i].AsString := q.FieldByName('deskripsi').AsString;
          nxGrdDet.Cell[3,i].AsFloat := q.FieldByName('formulasi').AsFloat;
          nxGrdDet.Cell[4,i].AsFloat := q.FieldByName('komposisi').AsFloat;
          nxGrdDet.Cell[6,i].AsFloat := q.FieldByName('qty_mo').AsFloat;
          nxGrdDet.Cell[7,i].AsFloat := nxGrdDet.Cell[4,i].AsFloat *
            StrToFloat(cxtBerat.Text) * cxsQtyMO.Value;
          if cxsToleransi.Value > 0 then
            nxGrdDet.Cell[7,i].AsFloat := nxGrdDet.Cell[7,i].AsFloat *
            (1 + cxsToleransi.Value / 100);
          inc(i);
          q.Next;
        end;
        nxGrdDet.CalculateFooter();
        q.Close;
        }

        // Hitung perkiraan tanggal produksi
        //HitungTanggal;

        // packing
        {
        q := OpenRSM('SELECT * FROM tbl_inventor_packing WHERE kode_barang = ''%s''',
          [cxtKodeBrg.Text]);
        if not q.IsEmpty then begin
          i := 0;
          while not q.Eof do begin
            nxGrdPacking.AddRow();
            nxGrdPacking.Cell[1,i].AsString := q.FieldByName('deskripsi').AsString;
            nxGrdPacking.Cell[2,i].AsString := q.FieldByName('satuan').AsString;
            nxGrdPacking.Cell[3,i].AsFloat := q.FieldByName('isi').AsFloat;
            nxGrdPacking.Cell[4,i].AsFloat :=
              cxsQtyMo.Value / q.FieldByName('isi').AsFloat;
            nxGrdPacking.Cell[5,i].AsInteger := 0;
            Inc(i);
            q.Next;
          end;
        end;
        q.Close;
         }
      end;
      if q.Active then q.Close;
    end;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmProsesMS.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProsesMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmProsesMS.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  i: integer;
  totFormula: double;
  totFormula2: currency;
begin
  if Trim(cxlFormula.Text) = '' then begin
    MsgBox('Formula masih kosong.');
    cxlFormula.SetFocus;
  end
  else begin

    // jika nxGrd tidak kosong, maka kosongi
    nxGrdDet.ClearRows;

    // ambil total jumlah formula
    q := OpenRS('SELECT SUM(qty) AS jum FROM tbl_formula_det WHERE kode = ''%s''',
      [cxlFormula.EditValue]);
    totFormula := q.FieldByName('jum').AsFloat;
    q.Close;
    
    q := OpenRS('SELECT a.kode_brg, a.deskripsi, a.qty, a.satuan FROM v_formula_det a ' +
      'WHERE a.kode = ''%s''',[cxlFormula.EditValue]);
    
    if not q.IsEmpty then begin
      i := 0;
      totFormula2 := 0;
      while not q.Eof do begin
        nxGrdDet.AddRow();
        nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
        nxGrdDet.Cell[nxColDesk.Index,i].AsString := q.FieldByName('deskripsi').AsString;
        nxGrdDet.Cell[nxColFormulasi.Index,i].AsString := q.FieldByName('qty').AsString;
        nxGrdDet.Cell[nxColKomposisi.Index,i].AsFloat :=
          nxGrdDet.Cell[nxColFormulasi.Index,i].AsFloat / totFormula;

        //nxGrdDet.Cell[nxCol,i].AsString := q.FieldByName('satuan').AsString;

        nxGrdDet.Cell[nxColQtyMO.Index,i].AsInteger := cxsQtySPK.Value;
        nxGrdDet.Cell[nxColTotal.Index,i].AsFloat :=
          (nxGrdDet.Cell[nxColKomposisi.Index,i].AsFloat * cxsBeratPUnit.Value) * cxsQtySPK.Value;

        if cxsToleransi.Value > 0 then begin
          nxGrdDet.Cell[nxColTotal.Index,i].AsFloat :=
            nxGrdDet.Cell[nxColTotal.Index,i].AsFloat * (1 + cxsToleransi.Value / 100);
        end;
        totFormula2 := totFormula2 + nxGrdDet.Cell[nxColTotal.Index,i].AsFloat;

        inc(i);
        q.Next;
      end;
      nxGrdDet.CalculateFooter();
      //cxsTotal.Text := FloatToStr(totFormula2);

    end;
  end;
end;

procedure TfrmProsesMS.btnSimpanClick(Sender: TObject);
var
  tbl, tbl_spk_det, tbl_bom_t, tbl_bom_t_d, tbl_pck, tbl_mo: TZTable;
  q, tbl_bom, tbl_bom_d, qc, mo_giling, qTarget: TZQuery;
  tbl_spk: TZQuery;
  urutan, i, k, jml_produksi: Integer;
  sNoPack, sNoSPK, sNoMO: string;
begin
  if Trim(cxCmbJenisSPK.Text) = '' then begin
    MsgBox('Jenis SPK harus diisi.');
    cxCmbJenisSPK.SetFocus;
  end
  else if cxlMesin.Text = '' then begin
    MsgBox('Mesin masih kosong.');
    cxlMesin.SetFocus;
  end
  else if Trim(cxdTglPProd.Text) = '' then begin
    MsgBox('Tanggal produksi masih kosong.');
    cxdTglPProd.SetFocus;
  end
  else if Trim(cxdTglPSelesai.Text) = '' then begin
    MsgBox('Tanggal perkiraan selesai masih kosong.');
    cxdTglPSelesai.SetFocus;
  end
  else begin

    // cek apakah barang punya bom
    qc := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = %s', [cxtKodeBrg.Text]);
    if not qc.IsEmpty then begin
      if nxGrdDet.RowCount = 0 then begin
        i := unTools.QBox(Self, 'Barang ini memiliki BOM, tetapi data bom belum di proses.' + Chr(10) + Chr(13) +
          'Tetap Simpan ?', 'BOM');
        if i = IDNO then begin
          qc.Close;
          cxlFormula.SetFocus;
          Abort;
        end;
      end;
    end;
    qc.Close;

    // cek tanggal produksi
    if mJenis <> 'edit' then begin
      if cxdTglPProd.Date <= Aplikasi.TanggalServer then begin
        MsgBox('Tanggal produksi harus lebih besar dari hari ini.');
        cxdTglPProd.SetFocus;
        Abort;
      end;

      // cek tanggal produksi
      if cxdTglPSelesai.Date <= Aplikasi.TanggalServer then begin
        MsgBox('Tanggal perkiraan selesai harus lebih besar dari hari ini.');
        cxdTglPSelesai.SetFocus;
        Abort;
      end;

      // jika spk giling, maka cek
      //if cxCmbJenisSPK.Text = 'SPK GILING' then begin
      //  if Trim(cxlHslGiling.Text) = '' then begin
      //    MsgBox('Hasil giling harus diisi.');
      //    cxlHslGiling.SetFocus;
      //    Abort;
      //  end;
      //end;
    end;

    HapusBOM;

    if mJenis = 'edit' then begin
      dm.zConn.StartTransaction;
      try

        sNoSPK := cxtNoSPK.Text;

        //tbl_spk := OpenTbl('tbl_spk');
        tbl_spk := OpenRS('SELECT * FROM tbl_spk WHERE no_spk =  ''%s''',[sNoSPK]);

        with tbl_spk do begin
          if Locate('no_spk', sNoSPK, []) then begin
            Edit;
            FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
            FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
            FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
            FieldByName('qty').AsFloat := cxsQtySPK.Value;
            FieldByName('kode_mesin').AsString := cxlMesin.EditValue;
            FieldByName('keterangan').AsString := cxmKetSO.Text;
            FieldByName('jenis_spk').AsString := cxCmbJenisSPK.Text;
            FieldByName('tgl_p_mulai').AsDateTime := cxdTglPProd.EditValue;
            FieldByName('tgl_p_selesai').AsDateTime := cxdTglPSelesai.EditValue;
            FieldByName('toleransi').AsFloat := cxsToleransi.Value;
            FieldByName('f_app_prd').AsInteger := 1;
            FieldByName('lain_lain').AsString := cxtLain2.Text;
            FieldByName('ket_ppic').AsString := cxtKetPPIC.Text;
            FieldByName('lokasi').AsString := cxtLokasi.Text;
            FieldByName('kondisi').AsString := cxtKondisi.Text;
            FieldByName('no_po_plt').AsString := cxtNoPO.Text;
            FieldByName('f_edit').AsInteger := 1;
            FieldByName('tgl_edit').AsDateTime := Aplikasi.NowServer;
            FieldByName('user_edit').AsString := aplikasi.NamaUser;
            if cxCmbJenisSPK.Text = 'SPK GILING' then
              FieldByName('kode_brg_input').AsString := cxtKodeBrgInput.Text;

            // ambil target
            qTarget := OpenRS('SELECT * FROM tbl_kapasitas_mesin WHERE kode_brg = %s AND kode_mesin = ''%s''',
              [cxtKodeBrg.Text, zqMesin.FieldByName('kode').AsString]);
            if not qTarget.IsEmpty then begin
              FieldByName('target').AsFloat := qTarget.FieldByName('target').AsFloat;
              FieldByName('target_kg').AsFloat := qTarget.FieldByName('target_kg').AsFloat;
            end;
            qTarget.Close;

            FieldByName('f_wip').AsInteger := fWIp;
            FieldByName('f_wip_awal').AsInteger := fWIPAwal;
            FieldByName('f_wip_akhir').AsInteger := fWIPAkhir;

            if cxChkWIP.Checked then begin
              FieldByName('f_wip').AsInteger := 1;
              FieldByName('f_wip_akhir').AsInteger := 1;
            end;

            // FAI
            if cxChkFAI.Checked then
              FieldByName('f_fai').AsInteger := 1;

            Post;

            q := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s'' AND no_spk = ''%s''',
              [mNoMO, sNoSPK]);
            if not q.IsEmpty then begin
              q.Edit;
              q.FieldByName('qty_mo').AsFloat := cxsQtySPK.Value;
              q.Post;
            end;
            q.Close;

          end;
        end;

        if nxGrdDet.RowCount > 0 then begin
          // hapus header bom
          dm.zConn.ExecuteDirect('DELETE FROM tbl_bom WHERE no_mo = ''' +
            cxtNoMo.Text + '''');
          // hapus detail mo
          dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_det WHERE no_mo = ''' +
            cxtNoMo.Text + '''');

          // hapus header bom
          //dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_tmbh WHERE no_mo = ''' +
          //  cxtNoMo.Text + '''');
          // hapus detail mo
          //dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_tmbh_det WHERE no_mo = ''' +
          //  cxtNoMo.Text + '''');

          //tbl_bom := OpenTbl('tbl_bom');
          tbl_bom := OpenRS('SELECT * FROM tbl_bom WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          tbl_bom.Insert;
          tbl_bom.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom.FieldByName('no_spk').AsString := sNoSPK;
          tbl_bom.FieldByName('kode_formula').AsString := cxlFormula.Text;
          tbl_bom.Post;
          tbl_bom.Close;

          //tbl_bom_d := OpenTbl('tbl_bom_det');
          tbl_bom_d := OpenRS('SELECT * FROM tbl_bom_det WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          for i := 0 to nxGrdDet.RowCount - 1 do begin
            tbl_bom_d.Insert;
            tbl_bom_d.FieldByName('no_mo').AsString := cxtNoMO.Text;
            tbl_bom_d.FieldByName('kode_brg').AsString := nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString;
            //tbl_bom_d.FieldByName('toleransi').AsFloat := cxsToleransi.Value;
            tbl_bom_d.FieldByName('berat').AsFloat := cxsBeratPerUnitBom.Value;
            //tbl_bom_d.FieldByName('formulasi').AsFloat := nxGrdDet.Cell[3,i].AsFloat;
            //tbl_bom_d.FieldByName('komposisi').AsFloat := nxGrdDet.Cell[4,i].AsFloat;
            tbl_bom_d.FieldByName('satuan').AsString := nxGrdDet.Cell[nxColSatuan.Index,i].AsString;
            tbl_bom_d.FieldByName('qty').AsFloat := nxGrdDet.Cell[nxColTotal.Index,i].AsFloat;

            tbl_bom_d.FieldByName('satuan2').AsString := nxGrdDet.Cell[nxColSatuan2.Index,i].AsString;
            tbl_bom_d.FieldByName('qty2').AsFloat := nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat;

            //tbl_bom_d.FieldByName('total').AsFloat := nxGrdDet.Cell[7,i].AsFloat;
            tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
            tbl_bom_d.Post;
          end;
          tbl_bom_d.Close;
        end;

        if cxCmbJenisSPK.Text = 'SPK GILING' then begin
          //tbl_bom := OpenTbl('tbl_bom');
          tbl_bom := OpenRS('SELECT * FROM tbl_bom WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          tbl_bom.Insert;
          tbl_bom.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom.FieldByName('no_spk').AsString := sNoSPK;
          tbl_bom.FieldByName('kode_formula').AsString := '';
          tbl_bom.Post;
          tbl_bom.Close;

          //tbl_bom_d := OpenTbl('tbl_bom_det');
          mo_giling := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''', [cxtNoSO.Text]);
          tbl_bom_d := OpenRS('SELECT * FROM tbl_bom_det WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          tbl_bom_d.Insert;
          tbl_bom_d.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom_d.FieldByName('kode_brg').AsString := cxtKodeBrgInput.Text;
          tbl_bom_d.FieldByName('berat').AsFloat := 1;
          tbl_bom_d.FieldByName('satuan').AsString := mo_giling.FieldByName('satuan').AsString;
          tbl_bom_d.FieldByName('qty').AsFloat := mo_giling.FieldByName('qty_non_kg').AsFloat;

          tbl_bom_d.FieldByName('satuan2').AsString := mo_giling.FieldByName('satuan').AsString;
          tbl_bom_d.FieldByName('qty2').AsFloat := mo_giling.FieldByName('qty_non_kg').AsFloat;

          tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          tbl_bom_d.Post;
          tbl_bom_d.Close;
          mo_giling.Close;
        end;

        ProsesSPKTambahan(sNoSPK);

        dm.zConn.Commit;

        MsgBox('SPK dengan Nomor : ' + sNoSPK + ' sudah berhasil di edit.');

      except

      end;
    end
    else begin
      dm.zConn.StartTransaction;
      try
        // urutan
        //q := OpenRS('SELECT IFNULL(MAX(urutan),0) AS urutan FROM tbl_mo ' +
        //  'WHERE group_mesin = ''' + cxtGrpMesin.Text + '''');
        //urutan := q.FieldByName('urutan').AsInteger;
        //if urutan = 0 then
        //  urutan := 1
        //else
        //  urutan := urutan + 1;

        // ambil jumlah proses
        //jml_produksi := 0;
        //q.Close;
        //q := OpenRSM('SELECT * FROM tbl_inventor WHERE kode = ''%s''',
        //  [cxtKodeBrg.Text]);
        //jml_produksi := q.FieldByName('jml_produksi').AsInteger;
        //q.Close;


        if mJenis = 'edit' then
          sNoSPK := cxtNoSPK.Text
        else begin
          sNoSPK := GetLastFak('spk');
          UpdateFaktur(Copy(sNoSPK,1,8));
        end;

        //tbl_spk := OpenTbl('tbl_spk');
        tbl_spk := OpenRS('SELECT * FROM tbl_spk WHERE no_spk =  ''%s''',[sNoSPK]);

        with tbl_spk do begin
          Insert;
          FieldByName('no_mo').AsString := cxtNoMO.Text;
          FieldByName('no_spk').AsString := sNoSPK;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
          FieldByName('qty').AsFloat := cxsQtySPK.Value;
          FieldByName('kode_mesin').AsString := cxlMesin.EditValue;
          FieldByName('keterangan').AsString := cxmKetSO.Text;
          FieldByName('jenis_spk').AsString := cxCmbJenisSPK.Text;
          FieldByName('tgl_p_mulai').AsDateTime := cxdTglPProd.EditValue;
          FieldByName('tgl_p_selesai').AsDateTime := cxdTglPSelesai.EditValue;
          FieldByName('toleransi').AsFloat := cxsToleransi.Value;
          FieldByName('f_app_prd').AsInteger := 1;
          FieldByName('lain_lain').AsString := cxtLain2.Text;
          FieldByName('ket_ppic').AsString := cxtKetPPIC.Text;
          FieldByName('lokasi').AsString := cxtLokasi.Text;
          FieldByName('kondisi').AsString := cxtKondisi.Text;
          FieldByName('no_po_plt').AsString := cxtNoPO.Text;
          if cxCmbJenisSPK.Text = 'SPK GILING' then
            FieldByName('kode_brg_input').AsString := cxtKodeBrgInput.Text;

          // ambil target
          qTarget := OpenRS('SELECT * FROM tbl_kapasitas_mesin WHERE kode_brg = %s AND kode_mesin = ''%s''',
            [cxtKodeBrg.Text, zqMesin.FieldByName('kode').AsString]);
          if not qTarget.IsEmpty then begin
            FieldByName('target').AsFloat := qTarget.FieldByName('target').AsFloat;
            FieldByName('target_kg').AsFloat := qTarget.FieldByName('target_kg').AsFloat;
          end;
          qTarget.Close;

          FieldByName('f_wip').AsInteger := fWIP;
          FieldByName('f_wip_awal').AsInteger := fWIPAwal;
          FieldByName('f_wip_akhir').AsInteger := fWIPAkhir;

          if cxChkWIP.Checked then begin
            FieldByName('f_wip').AsInteger := 1;
            FieldByName('f_wip_akhir').AsInteger := 1;
          end;

          if cxChkFAI.Checked then
            FieldByName('f_fai').AsInteger := 1;

          Post;
        end;

        { // 02-11-2014
        if nxGrdDet.RowCount > 0 then begin
          tbl_spk_det := OpenTbl('tbl_spk_det');
          for i := 0 to nxGrdDet.RowCount - 1 do begin
            with tbl_spk_det do begin
              Insert;
              FieldByName('no_spk').AsString := sNoSPK;
              FieldByName('kode_brg').AsInteger := nxGrdDet.Cell[nxColKodeBhn.Index,i].AsInteger;
              FieldByName('qty').AsFloat := nxGrdDet.Cell[nxColTotal.Index,i].AsFloat;
              FieldByName('satuan').AsString := nxGrdDet.Cell[nxColSatuan.Index,i].AsString;
              Post;
            end;
          end;
          tbl_spk_det.Close;
        end;
        }

        // check and insert into MO
        q := OpenRS('SELECT * FROM tbl_mo WHERE no_so = ''%s'' ' +
          'AND kode_brg = %s AND (no_spk IS NULL or no_spk = '''')',
          [cxtNoSO.Text, cxtKodeBrg.Text]);

        if not q.IsEmpty then begin

          if q.FieldByName('qty_mo').AsFloat > cxsQtySPK.Value then begin

            tbl_mo := OpenTbl('tbl_mo');
            tbl_mo.Insert;

            for k := 0 to q.FieldCount-1 do begin
              tbl_mo.Fields[k].Value := q.Fields[k].Value;
            end;

            sNoMO := GetLastFakHeader(q.FieldByName('no_mo').AsString);
            tbl_mo.FieldByName('no_mo').AsString := sNoMO;
            cxtNoMO.Text := sNoMO;

            // update nomer mo spk
            dm.zConn.ExecuteDirect('UPDATE tbl_spk SET no_mo = ''' + sNoMO + ''' ' +
              'WHERE no_spk = ''' + sNoSPK + '''');

            tbl_mo.FieldByName('qty_mo').AsFloat := cxsQtySPK.Value;
            tbl_mo.FieldByName('no_spk').AsString := sNoSPK;
            tbl_mo.FieldByName('f_spk').AsInteger := 1;

            q.Edit;
            q.FieldByName('qty_mo').AsFloat :=
              q.FieldByName('qty_mo').AsFloat - cxsQtySPK.Value;
            q.Post;

            tbl_mo.Post;
            tbl_mo.Close;
            UpdateFaktur(q.FieldByName('no_mo').AsString);
          end
          else begin
            q.Edit;
            q.FieldByName('no_spk').AsString := sNoSPK;
            q.FieldByName('f_spk').AsInteger := 1;
            q.Post;
          end;

        end;
        q.Close;

        {
        tbl := OpenTbl('tbl_mo');
        if tbl.Locate('no_mo',cxtNoMO.Text,[]) then begin
          sNoSPK := GetLastFak('spk');
          tbl.Edit;
          tbl.FieldByName('group_mesin').AsString := cxtGrpMesin.Text;
          tbl.FieldByName('urutan').AsInteger := urutan;
          tbl.FieldByName('f_bom').AsInteger := 1;
          tbl.FieldByName('tgl_p_selesai').AsDateTime := cxdTglPSelesai.Date;

          //if cxChkProsesTmbh.Checked then
          //  tbl.FieldByName('jml_produksi').AsInteger := 2
          //else
          //  tbl.FieldByName('jml_produksi').AsInteger := 1;

          tbl.FieldByName('toleransi').AsFloat := cxsToleransi.Value;
          tbl.FieldByName('kode_mesin').AsString := cxlMesin.Text;
          tbl.FieldByName('tgl_p_produksi').AsDateTime := cxdTglPProd.EditValue;
          tbl.FieldByName('tgl_p_selesai').AsDateTime := cxdTglPSelesai.EditValue;
          tbl.FieldByName('no_spk').AsString := sNoSPK;
          //tbl.FieldByName('tgl_spk').AsDateTime := Aplikasi.GetServerDate;
          tbl.Post;
        end;
        }

        if nxGrdDet.RowCount > 0 then begin
          // hapus header bom
          dm.zConn.ExecuteDirect('DELETE FROM tbl_bom WHERE no_mo = ''' +
            cxtNoMO.Text + '''');
          // hapus detail mo
          dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_det WHERE no_mo = ''' +
            cxtNoMO.Text + '''');

          // hapus header bom
          //dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_tmbh WHERE no_mo = ''' +
          //  cxtNoMo.Text + '''');
          // hapus detail mo
          //dm.zConn.ExecuteDirect('DELETE FROM tbl_bom_tmbh_det WHERE no_mo = ''' +
          //  cxtNoMo.Text + '''');

          //tbl_bom := OpenTbl('tbl_bom');
          tbl_bom := OpenRS('SELECT * FROM tbl_bom WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          tbl_bom.Insert;
          tbl_bom.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom.FieldByName('no_spk').AsString := sNoSPK;
          tbl_bom.FieldByName('kode_formula').AsString := cxlFormula.Text;
          tbl_bom.Post;
          tbl_bom.Close;

          //tbl_bom_d := OpenTbl('tbl_bom_det');
          tbl_bom_d := OpenRS('SELECT * FROM tbl_bom_det WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          for i := 0 to nxGrdDet.RowCount - 1 do begin
            tbl_bom_d.Insert;
            tbl_bom_d.FieldByName('no_mo').AsString := cxtNoMO.text;
            tbl_bom_d.FieldByName('kode_brg').AsString := nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString;
            //tbl_bom_d.FieldByName('toleransi').AsFloat := cxsToleransi.Value;
            tbl_bom_d.FieldByName('berat').AsFloat := cxsBeratPerUnitBom.Value;
            //tbl_bom_d.FieldByName('formulasi').AsFloat := nxGrdDet.Cell[3,i].AsFloat;
            //tbl_bom_d.FieldByName('komposisi').AsFloat := nxGrdDet.Cell[4,i].AsFloat;
            tbl_bom_d.FieldByName('satuan').AsString := nxGrdDet.Cell[nxColSatuan.Index,i].AsString;
            tbl_bom_d.FieldByName('qty').AsFloat := nxGrdDet.Cell[nxColTotal.Index,i].AsFloat;

            tbl_bom_d.FieldByName('satuan2').AsString := nxGrdDet.Cell[nxColSatuan2.Index,i].AsString;
            tbl_bom_d.FieldByName('qty2').AsFloat := nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat;

            //tbl_bom_d.FieldByName('total').AsFloat := nxGrdDet.Cell[7,i].AsFloat;
            tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
            tbl_bom_d.Post;
          end;
          tbl_bom_d.Close;
        end;

        {
        if cxChkProsesTmbh.Checked then begin
          tbl_bom_t := OpenTblM('tbl_bom_tmbh');
          tbl_bom_t.Insert;
          tbl_bom_t.FieldByName('no_so').AsString := cxtNoSO.Text;
          tbl_bom_t.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom_t.FieldByName('kode_formula').AsString := cxlFormula.Text;
          tbl_bom_t.Post;
          tbl_bom_t.Close;

          tbl_bom_t_d := OpenTblM('tbl_bom_tmbh_det');
          for i := 0 to nxGrdDet2.RowCount - 1 do begin
            tbl_bom_t_d.Insert;
            tbl_bom_t_d.FieldByName('no_mo').AsString := cxtNoMO.Text;
            tbl_bom_t_d.FieldByName('kode_bahan').AsString := nxGrdDet2.Cell[1,i].AsString;
            tbl_bom_t_d.FieldByName('formulasi').AsFloat := nxGrdDet2.Cell[3,i].AsFloat;
            tbl_bom_t_d.FieldByName('komposisi').AsFloat := nxGrdDet2.Cell[4,i].AsFloat;
            tbl_bom_t_d.FieldByName('qty_mo').AsFloat := nxGrdDet2.Cell[6,i].AsFloat;
            tbl_bom_t_d.FieldByName('total').AsFloat := nxGrdDet2.Cell[7,i].AsFloat;
            tbl_bom_t_d.Post;
          end;
          tbl_bom_t_d.Close;
        end;
        }

        // simpan detail packing
        {
        if nxGrdPacking.RowCount > 0 then begin
          tbl_pck := OpenTblM('tbl_mo_packing');
          for i := 0 to nxGrdPacking.RowCount - 1 do begin
            sNoPack := unTools.GetLastFak('packing');
            tbl_pck.Insert;
            tbl_pck.FieldByName('no_so').AsString := cxtNoSo.Text;
            tbl_pck.FieldByName('no_mo').AsString := cxtNoMo.Text;
            tbl_pck.FieldByName('no_pack').AsString := sNoPack;
            tbl_pck.FieldByName('deskripsi').AsString := nxGrdPacking.Cell[1,i].AsString;
            tbl_pck.FieldByName('satuan').AsString := nxGrdPacking.Cell[2,i].AsString;
            tbl_pck.FieldByName('isi').AsFloat := nxGrdPacking.Cell[3,i].AsFloat;
            tbl_pck.FieldByName('total').AsFloat :=
              cxsQtyMO.Value / nxGrdPacking.Cell[4,i].AsFloat;
            UpdateFaktur(Copy(sNoPack,1,8));
            tbl_pck.Post;
          end;
          tbl_pck.Close;
        end;
        }

        if cxCmbJenisSPK.Text = 'SPK GILING' then begin
          //tbl_bom := OpenTbl('tbl_bom');
          tbl_bom := OpenRS('SELECT * FROM tbl_bom WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          tbl_bom.Insert;
          tbl_bom.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom.FieldByName('no_spk').AsString := sNoSPK;
          tbl_bom.FieldByName('kode_formula').AsString := '';
          tbl_bom.Post;
          tbl_bom.Close;

          //tbl_bom_d := OpenTbl('tbl_bom_det');
          mo_giling := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s''', [cxtNoSO.Text]);
          tbl_bom_d := OpenRS('SELECT * FROM tbl_bom_det WHERE no_mo = ''%s''', [cxtNoMO.Text]);
          tbl_bom_d.Insert;
          tbl_bom_d.FieldByName('no_mo').AsString := cxtNoMO.Text;
          tbl_bom_d.FieldByName('kode_brg').AsString := cxtKodeBrgInput.Text;
          tbl_bom_d.FieldByName('berat').AsFloat := 1;
          tbl_bom_d.FieldByName('satuan').AsString := mo_giling.FieldByName('satuan').AsString;
          tbl_bom_d.FieldByName('qty').AsFloat := mo_giling.FieldByName('qty_non_kg').AsFloat;

          tbl_bom_d.FieldByName('satuan2').AsString := mo_giling.FieldByName('satuan').AsString;
          tbl_bom_d.FieldByName('qty2').AsFloat := mo_giling.FieldByName('qty_non_kg').AsFloat;

          tbl_bom_d.FieldByName('no_spk').AsString := cxtNoSPK.Text;
          tbl_bom_d.Post;
          tbl_bom_d.Close;
          mo_giling.Close;
        end;

        ProsesSPKTambahan(sNoSPK);

        dm.zConn.Commit;

        MsgBox('SPK disimpan dengan nomor : ' + sNoSPK);

        Close;

      except
        on E: Exception do begin
          dm.zConn.Rollback;
          MsgBox('Error: Transaksi tidak berhasil disimpan.');
        end;

      end;
    end;

  end;
end;

procedure TfrmProsesMS.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  with cxCmbJenisSPK do begin
    Properties.Items.Add('BARANG JADI');
    Properties.Items.Add('TAMBAHAN');
    Properties.Items.Add('MIXING / COMPOUND');
    Properties.Items.Add('PELETAN');
    Properties.Items.Add('SPK GILING');
    ItemIndex := 0;
  end;

  q := OpenRS('SELECT DISTINCT satuan FROM tbl_barang ORDER BY satuan');
  while not q.Eof do begin
    nxColCmbSat.Items.Add(q.FieldByName('satuan').AsString);
    q.Next;
  end;
  q.Close;

  zqMesin.Open;
end;

procedure TfrmProsesMS.btnSimpan2Click(Sender: TObject);
var
  tbl, tbl_spk, tbl_spk_det, tbl_bom,
  tbl_bom_d, tbl_bom_t, tbl_bom_t_d, tbl_pck,
  tbl_mo : TZTable;
  q: TZQuery;
  urutan, i, jml_produksi: Integer;
  sNoPack, sNoSPK, sNoMOBaru: string;
  b: Boolean;
begin
  if Trim(cxCmbJenisSPK.Text) = '' then begin
    MsgBox('Jenis SPK harus diisi.');
    cxCmbJenisSPK.SetFocus;
  end
  //else if Trim(cxlFormula.Text) = '' then begin
  //  MsgBox('Formula masih kosong.');
  //  cxlFormula.SetFocus;
  //end
  else if cxlMesin.Text = '' then begin
    MsgBox('Mesin masih kosong.');
    cxlMesin.SetFocus;
  end
  else if Trim(cxdTglPProd.Text) = '' then begin
    MsgBox('Tanggal produksi masih kosong.');
    cxdTglPProd.SetFocus;
  end
  else if Trim(cxdTglPSelesai.Text) = '' then begin
    MsgBox('Tanggal perkiraan selesai masih kosong.');
    cxdTglPSelesai.SetFocus;
  end
  else begin

    // cek tanggal produksi
    if cxdTglPProd.Date <= Aplikasi.TanggalServer then begin
      MsgBox('Tanggal produksi harus lebih besar dari hari ini.');
      cxdTglPProd.SetFocus;
      Abort;
    end;

    // cek tanggal produksi
    if cxdTglPSelesai.Date <= Aplikasi.TanggalServer then begin
      MsgBox('Tanggal perkiraan selesai harus lebih besar dari hari ini.');
      cxdTglPSelesai.SetFocus;
      Abort;
    end;

    if nxGrdDet.RowCount = 0 then begin
      MsgBox('Detail formula masih kosong.');
      cxlFormula.SetFocus;
    end
    else begin
    
    end;

    if nxGrdBom.RowCount = 0 then begin
      MsgBox('Detail formula masih kosong.');
      nxGrdBom.SetFocus
    end
    else begin

      //cek apakah ada kolom satuan yang masih kosong
      b := False;
      for i := 0 to nxGrdBom.RowCount - 1 do begin
        if (Trim(nxGrdBom.Cell[nxColDeskBahan.Index,i].AsString) <> '') and
          (Trim(nxGrdBom.Cell[nxColCmbSat.Index,i].AsString) = '') then begin
          b := True;
          Break;
        end;
      end;
      if b then begin
        MsgBox('Masih ada kolom satuan yang kosong.');
        nxGrdBom.SetFocus;
        nxGrdBom.SelectCell(nxColCmbSat.Index,i);
        Abort;
      end;

      //cek apakah ada kolom qty yang masih kosong
      b := False;
      for i := 0 to nxGrdBom.RowCount - 1 do begin
        if (Trim(nxGrdBom.Cell[nxColDeskBahan.Index,i].AsString) <> '') and
          (nxGrdBom.Cell[nxColQty.Index,i].AsFloat = 0) then begin
          b := True;
          Break;
        end;
      end;
      if b then begin
        MsgBox('Masih ada kolom Quantity yang kosong.');
        nxGrdBom.SetFocus;
        nxGrdBom.SelectCell(nxColQty.Index,i);
        Abort;
      end;

      // cek apakah SPK barang jadi sudah pernah dibuat
      {
      if cxCmbJenisSPK.Text = 'BARANG JADI' then begin
        q := OpenRS('SELECT * FROM tbl_spk WHERE no_mo = ''%s'' AND ' +
          'jenis_spk = ''BARANG JADI''',
          [cxtNoMO.Text]);
        if not q.IsEmpty then begin
          MsgBox('SPK Barang jadi untuk MO ini sudah dibuatkan.' + #10#13 +
            'Nomer SPK : ' + q.FieldByName('no_spk').AsString);
          q.Close;
          Abort;
        end;
      end;
      }

      dm.zConn.StartTransaction;
      try
        // urutan
        //q := OpenRS('SELECT IFNULL(MAX(urutan),0) AS urutan FROM tbl_mo ' +
        //  'WHERE group_mesin = ''' + cxtGrpMesin.Text + '''');
        //urutan := q.FieldByName('urutan').AsInteger;
        //if urutan = 0 then
        //  urutan := 1
        //else
        //  urutan := urutan + 1;

        if mJenis = 'edit' then
          sNoSPK := cxtNoSPK.Text
        else begin
          // cek apakah sudah pernah dibuatkan spk
          // jika sudah maka nomer SPK -1 dst
          q := OpenRS('SELECT * FROM tbl_spk WHERE no_mo = ''%s'' ' +
            'AND length(no_spk) = 12',
            [cxtNoMO.Text]);
          if not q.IsEmpty then
            sNoSPK := GetLastFakHeader(q.FieldByName('no_spk').AsString)
          else
            sNoSPK := GetLastFak('spk');
          q.Close;  
        end;

        tbl_spk := OpenTbl('tbl_spk');

        with tbl_spk do begin
          Insert;
          FieldByName('no_mo').AsString := cxtNoMO.Text;
          FieldByName('no_spk').AsString := sNoSPK;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
          FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
          FieldByName('qty').AsFloat := cxsQtySPK.Value;
          FieldByName('kode_mesin').AsString := cxlMesin.EditValue;
          FieldByName('keterangan').AsString := cxmKetSO.Text;
          FieldByName('jenis_spk').AsString := cxCmbJenisSPK.Text;
          FieldByName('f_app_prd').AsInteger := 1;
          Post;
        end;

        tbl_spk_det := OpenTbl('tbl_spk_det');
        for i := 0 to nxGrdBom.RowCount - 1 do begin
          with tbl_spk_det do begin

            if Trim(nxGrdBom.Cell[nxColDeskBahan.Index,i].AsString) = '' then
              Continue;

            Insert;
            FieldByName('no_spk').AsString := sNoSPK;
            FieldByName('deskripsi').AsString := nxGrdBom.Cell[nxColDeskBahan.Index,i].AsString;
            FieldByName('satuan').AsString := nxGrdBom.Cell[nxColCmbSat.Index,i].AsString;
            FieldByName('qty').AsFloat := cxsQtySPK.Value;
            Post;

          end;
        end;
        tbl_spk_det.Close;

        // jika qty spk <> qty mo maka ada mo baru dengan nomer berikutnya
        // jika sama maka tidak perlu
        q := OpenRS('SELECT * FROM tbl_mo WHERE no_mo = ''%s''',
          [cxtNoMO.Text]);
        if cxsQtyMO.Value > cxsQtySPK.Value then begin

          tbl_mo := OpenTbl('tbl_mo');
          tbl_mo.Insert;

          sNoMOBaru := GetLastFakHeader(cxtNoMO.Text);

          tbl_mo.FieldByName('no_mo').AsString := sNoMOBaru;
          tbl_mo.FieldByName('no_so').AsString := cxtNoSO.Text;
          tbl_mo.FieldByName('no_spk').AsString := sNoSPK;
          tbl_mo.FieldByName('tgl_spk').AsDateTime := Aplikasi.TanggalServer;
          tbl_mo.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
          tbl_mo.FieldByName('qty_mo').AsFloat := cxsQtySPK.Value;
          tbl_mo.FieldByName('qty_so').AsFloat := cxsQtySO.Value;
          tbl_mo.FieldByName('f_spk').AsInteger := 1;
          tbl_mo.Post;

          UpdateFaktur(cxtNoMO.Text);

          q.Edit;
          q.FieldByName('qty_mo').AsFloat :=
            q.FieldByName('qty_mo').AsFloat - cxsQtySPK.Value;
          q.Post;

        end
        else begin
          q.Edit;
          q.FieldByName('f_spk').AsInteger := 1;
          q.FieldByName('no_spk').AsString := sNoSPK;
          q.Post; 
        end;
        q.Close;

        if Length(sNoPack) = 12 then
          UpdateFaktur(Copy(sNoSPK,1,8))
        else
          UpdateFaktur(Copy(sNoSPK,1,12));

        dm.zConn.Commit;

        MsgBox('SPK disimpan dengan nomor : ' + sNoSPK);

        Close;

      except
        on E: Exception do begin
          dm.zConn.Rollback;
          MsgBox('Error: Transaksi tidak berhasil disimpan.');
        end;
      end;
    end;
  end;
end;

procedure TfrmProsesMS.nxGrdBomAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if Acol = nxColDeskBahan.Index then begin
    if Trim(nxGrdBom.Cell[nxColDeskBahan.Index,ARow].AsString) = '' then
      nxGrdBom.SelectCell(nxColDeskBahan.Index, ARow);
  end
  else if ACol = nxColCmbSat.Index then begin
    if Trim(nxGrdBom.Cell[nxColCmbSat.Index,ARow].AsString) = '' then
      nxGrdBom.SelectCell(nxColCmbSat.Index,ARow);
  end
  else if ACol = nxColQty.Index then begin
    if nxGrdBom.Cell[nxColQty.Index,ARow].AsFloat = 0 then
      nxGrdBom.SelectCell(nxColQty.Index,ARow)
    else begin
      nxGrdBom.AddRow();
      nxGrdBom.SelectCell(nxColDeskBahan.Index, nxGrdBom.LastAddedRow);
    end;
  end;
  
end;

procedure TfrmProsesMS.nxGrdBomCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if nxGrdBom.SelectedRow > -1 then begin
    if ACol = nxColHapus.Index then begin
      if Trim(nxGrdBom.Cell[nxColDeskBahan.Index, ARow].AsString) <> '' then begin
        nxGrdBom.DeleteRow(nxGrdBom.SelectedRow);
        nxNoUrut.Refresh();
        if nxGrdBom.RowCount = 0 then nxGrdBom.AddRow();
      end;
    end;
  end;
end;

procedure TfrmProsesMS.btnTambahClick(Sender: TObject);
var
  q, qs, qt, qb: TZQuery;
  i: integer;
  total, bpu: real;
begin
  q := OpenRS('SELECT * FROM v_formula_spkdet WHERE kode = %s AND nama = ''%s''',
    [zqFormula.FieldByName('kode').AsString, zqFormula.FieldByName('nama').AsString]);

  qt := OpenRS('SELECT SUM(qty) total FROM v_formula_spkdet WHERE kode = %s AND nama = ''%s''',
    [zqFormula.FieldByName('kode').AsString, zqFormula.FieldByName('nama').AsString]);
  total := qt.FieldByName('total').AsFloat;
  qt.Close;

  if not q.IsEmpty then begin
    nxGrdDet.ClearRows;
    while not q.Eof do begin
      i := nxGrdDet.AddRow();
      with nxGrdDet do begin
        Cell[nxColKodeBrg.Index,i].AsString := q.FieldByName('kode_brg').AsString;
        Cell[nxColDesk.Index,i].AsString := q.FieldByName('deskripsi').AsString;

        qs := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''G01''',
          [q.FieldByName('kode_brg').AsString]);
        Cell[nxColStok.Index,i].AsFloat := qs.FieldByName('stok').AsFloat;

        // ambil satuan
        qb := OpenRS('SELECT satuan, berat_per_unit_b FROM tbl_barang WHERE kode = %s',
          [q.FieldByName('kode_brg').AsString]);
        Cell[nxColBpu.Index, i].AsFloat := qb.FieldByName('berat_per_unit_b').AsFloat;
        Cell[nxColSatuan.Index,i].AsString := 'KG';
        Cell[nxColSatuan2.Index, i].AsString := qb.FieldByname('satuan').AsString;
        qb.Close;

        qs.Close;

        //Cell[nxColStok.Index,i].AsFloat := zqFormula.FieldByName('stok').AsFloat;
        //Cell[nxColSatuan.Index,i].AsString := zqFormula.FieldByName('satuan').AsString;

        Cell[nxColQtyBOM2.Index, i].AsFloat := q.FieldByName('qty').AsFloat;

        Cell[nxColTotal.Index,i].AsFloat :=
          ((q.FieldByName('qty').AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value) +
          ((q.FieldByName('qty').AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value * (cxsToleransi.Value / 100));

        Cell[nxColTotal2.Index,i].AsFloat :=
          ((q.FieldByName('qty').AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value) +
          ((q.FieldByName('qty').AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value * (cxsToleransi.Value / 100));

        if Cell[nxColSatuan2.Index, i].AsString <> 'KG' then begin
          bpu := Cell[nxColBpu.Index, i].AsFloat;
          if bpu > 0 then
            Cell[nxColTotal2.Index,i].AsFloat := Cell[nxColTotal2.Index,i].AsFloat / bpu
          else
            Cell[nxColTotal2.Index,i].AsFloat := Cell[nxColTotal.Index,i].AsFloat;
        end;

        if (q.FieldByName('dibuka').AsString <> '') and (not q.FieldByName('dibuka').IsNull) then
          Cell[nxColEdit.Index,i].AsString := 'EDIT';
        Cell[nxColQtyBom.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
        Cell[nxColDibuka.Index,i].AsString := q.FieldByName('dibuka').AsString;
        Cell[nxColDibatasi.Index,i].AsString := q.FieldByName('dibatasi').AsString;
        Cell[nxColNamaFormula.Index, i].AsString := q.FieldByName('nama').AsString;
        q.Next;
      end;
    end;
  end;

  // checking for alternate
  if nxGrdDet.RowCount > 0 then begin
    for i := 0 to nxGrdDet.RowCount - 1 do begin
      if nxGrdDet.Cell[nxColStok.Index, i].AsFloat < nxGrdDet.Cell[nxColTotal.Index, i].AsFloat then begin
        q := OpenRS('SELECT a.*, b.stok, c.deskripsi FROM tbl_formula_detalt a ' +
          'LEFT JOIN tbl_barang_det b ON a.kode_brg_alt = b.kode_brg ' +
          'LEFT JOIN tbl_barang c ON a.kode_brg_alt = c.kode ' +
          'WHERE a.kode_induk = %s ' +
          'AND b.kode_gdg = ''G01'' ' + 
          'AND a.nama = ''%s'' ' +
          'AND a.kode_brg = %s ORDER BY a.no_urut',
          [
            cxtKodeBrg.Text,
            nxGrdDet.Cell[nxColNamaFormula.Index, i].AsString,
            nxGrdDet.Cell[nxColKodeBrg.Index, i].AsString
          ]
        );

        while not q.Eof do begin
          if q.FieldByName('stok').AsFloat > nxGrdDet.Cell[nxColTotal.Index, i].AsFloat then begin
            nxGrdDet.Cell[nxColKodeBrg.Index, i].AsString := q.FieldByName('kode_brg_alt').AsString;
            nxGrdDet.Cell[nxColDesk.Index, i].AsString := q.FieldByName('deskripsi').AsString;
            nxGrdDet.Cell[nxColStok.Index, i].AsFloat := q.FieldByName('stok').AsFloat;
            q.Last;
            Continue;
          end;
          q.Next;
        end;
        q.Close;
        
      end;
    end;
  end;

  {
  if CekKodeBrg(zqFormula.FieldByName('kode_brg').AsString) then begin

    if zqFormula.FieldByName('stok').AsFloat = 0 then begin
      MsgBox('Stok : ' + zqFormula.FieldByName('deskripsi').AsString + #10#13 +
        'masih kosong.');
      cxlFormula.Text := '';
      Abort;
    end;

    i := nxGrdDet.AddRow();
    with nxGrdDet do begin
      Cell[nxColKodeBrg.Index,i].AsString := zqFormula.FieldByName('kode_brg').AsString;
      Cell[nxColDesk.Index,i].AsString := zqFormula.FieldByName('deskripsi').AsString;
      Cell[nxColStok.Index,i].AsFloat := zqFormula.FieldByName('stok').AsFloat;
      Cell[nxColSatuan.Index,i].AsString := zqFormula.FieldByName('satuan').AsString;
      Cell[nxColTotal.Index,i].AsFloat :=
        (cxsBeratPerUnitBom.Value * cxsQtySPK.Value) +
        (cxsBeratPerUnitBom.Value * cxsQtySPK.Value * (cxsToleransi.Value / 100));
    end;
  end
  else begin
    MsgBox('Kode formula ini sudah ada.');
  end;
  }
end;

procedure TfrmProsesMS.cxsToleransiPropertiesChange(Sender: TObject);
var
  i: integer;
  qt: TZQuery;
  tmp1, tmp2, total: Real;
begin
  try
    qt := OpenRS('SELECT IFNULL(SUM(qty),0) total FROM v_formula_spkdet WHERE kode = %s AND nama = ''%s''',
      [cxtKodeBrg.Text, zqFormula.FieldByName('nama').AsString]);
    total := qt.FieldByName('total').AsFloat;
    qt.Close;
    for i := 0 to nxGrdDet.RowCount - 1 do begin

      tmp1 := ((nxGrdDet.Cell[nxColQtyBom2.INdex, i].AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value);
      tmp2 := (tmp1 / (1 - (cxsToleransi.Value / 100))) - tmp1;

      nxGrdDet.Cell[nxColTotal.Index,i].AsFloat :=
        ((nxGrdDet.Cell[nxColQtyBOM2.Index, i].AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value) + tmp2;

      nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat :=
        ((nxGrdDet.Cell[nxColQtyBOM2.Index, i].AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value) + tmp2;

      if nxGrdDet.Cell[nxColSatuan2.Index, i].AsString <> 'KG' then begin
        if nxGrdDet.Cell[nxColBpu.Index, i].AsFloat > 0 then begin
          nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat :=
            nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat / nxGrdDet.Cell[nxColBpu.Index, i].AsFloat;
        end;
      end;
    end;
  except
  end;
  { // revisi 17-02-2016 sesuai dengan request pak fredi
  try
    qt := OpenRS('SELECT IFNULL(SUM(qty),0) total FROM v_formula_spkdet WHERE kode = %s AND nama = ''%s''',
      [cxtKodeBrg.Text, zqFormula.FieldByName('nama').AsString]);
    total := qt.FieldByName('total').AsFloat;
    qt.Close;
    for i := 0 to nxGrdDet.RowCount - 1 do begin
      nxGrdDet.Cell[nxColTotal.Index,i].AsFloat :=
        ((nxGrdDet.Cell[nxColQtyBOM2.Index, i].AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value) +
        (((nxGrdDet.Cell[nxColQtyBOM2.Index, i].AsFloat / total) * cxsQtySPK.Value * cxsBeratPerUnitBom.Value) * (cxsToleransi.Value / 100));

      nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat :=
        ((nxGrdDet.Cell[nxColQtyBOM2.Index, i].AsFloat / total) * cxsBeratPerUnitBom.Value * cxsQtySPK.Value) +
        (((nxGrdDet.Cell[nxColQtyBOM2.Index, i].AsFloat / total) * cxsQtySPK.Value * cxsBeratPerUnitBom.Value) * (cxsToleransi.Value / 100));

      if nxGrdDet.Cell[nxColSatuan2.Index, i].AsString <> 'KG' then begin
        nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat :=
          nxGrdDet.Cell[nxColTotal2.Index,i].AsFloat / nxGrdDet.Cell[nxColBpu.Index, i].AsFloat;
      end;
    end;

  except
  end;
  }
end;

function TfrmProsesMS.CekKodeBrg(sKodeBrg : String) : Boolean;
var
  i: integer;
  tmp: Boolean;
begin
  tmp := true;
  for i := 0 to nxGrdDet.RowCount - 1 do begin
    if sKodeBrg = Trim(nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString) then begin
      tmp := false;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TfrmProsesMS.EditSPK(sNOMO: string);
var
  q, qSPK, qBrg, qSO, qbd, qin: TZQuery;
  sNoSPK: string;
  i: Integer;
begin

  q := OpenRS('SELECT * FROM v_mo WHERE no_mo = ''%s''',[mNoMO]);
  if not q.IsEmpty then begin

    cxtLokasi.Text := q.FieldByName('lokasi').AsString;
    cxtKondisi.Text := q.FieldByName('kondisi').AsString;

    sNoSPK := mNoSPK;
    cxtNoSPK.Text := sNoSPK;
    cxtNoSO.Text := q.FieldByName('no_so').AsString;
    cxtNamaCust.Text := q.FieldByName('nama_customer').AsString;
    cxtNoMO.Text := q.FieldByName('no_mo').AsString;

    cxsQtySO.Value := q.FieldByName('qty_so').AsFloat;

    cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
    cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;
    //cxsBeratPUnit.Value := q.FieldByName('berat_per_unit').AsFloat;
    cxtBeratPUnit.Text := q.FieldByName('berat_per_unit').AsString;

    // Keterangan so jika ada
    qSO := OpenRS('SELECT * FROM tbl_so_det WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = %s',
      [cxtNoSO.Text, cxtKodeBrg.Text]);
    cxsQtyMO.Value := q.FieldByName('qty_mo').AsFloat;
    cxmKetSO.Lines.Text := qSO.FieldByName('notes').AsString;
    qSO.Close;

    // SO head
    qSO := OpenRS('SELECT * FROM tbl_so_head WHERE no_bukti = ''%s''',
      [cxtNoSO.Text]);
    cxmKetSO.Text := qSO.FieldByName('notes').AsString;
    qSO.Close;

    qBrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
      [cxtKodeBrg.text]);

    lblS_Berat.Caption := '';
    lblS_Berat2.Caption := '';
    lblS_Berat.Caption := qBrg.FieldByName('s_berat').AsString;
    lblS_Berat2.Caption := qBrg.FieldByName('s_berat_per_unit_b').AsString;

    cxsBeratPerUnitBom.Value := qBrg.FieldByName('berat_per_unit_b').AsFloat;
    cxtWarna.Text := qBrg.FieldByName('warna').AsString;
    cxtPanjang.Text := qBrg.FieldByName('panjang').AsString + ' ' +
      qBrg.FieldByName('s_panjang').AsString;
    cxtLebar.Text := qBrg.FieldByName('lebar').AsString + ' ' +
      qBrg.FieldByName('s_lebar').AsString;
    cxtTebal.Text := qBrg.FieldByName('tebal').AsString + ' ' +
      qBrg.FieldByName('s_tebal').AsString;
    cxtDiameter.Text := qBrg.FieldByName('diameter').AsString + ' ' +
      qBrg.FieldByName('s_diameter').AsString;
    cxtDiameterDlm.Text := qBrg.FieldByName('diameter_dalam').AsString;
    cxtDiameterLuar.Text := qBrg.FieldByName('diameter_luar').AsString;
    cxtPacking.Text := qBrg.FieldByName('packing').AsString;
    cxtFlowProc.Text := qBrg.FieldByName('flow_process').AsString;
    qBrg.Close;

    qSPK := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s''', [sNoSPK]);

    cxsQtySPK.Value := qSPK.FieldByName('qty').AsFloat;

    // 21-08-2014 -> jika edit maka qty spk disable, background hijau
    //cxsQtySPK.Properties.ReadOnly := True;
    //cxsQtySPK.Style.Color := clMoneyGreen;

    // 22-08-2014 -> jika edit ke bawa tidak bisa, maksimal jml adalah qty MO 
    cxsQtySPK.Properties.MinValue := cxsQtySPK.Value;
    cxsQtySPK.Properties.MaxValue := cxsQtyMO.Value;

    cxsToleransi.Value := qSPK.FieldByName('toleransi').AsFloat;
    cxlMesin.EditValue := qSPK.FieldByName('kode_mesin').AsString;
    cxdTglPProd.Date := qSPK.FieldByName('tgl_p_mulai').AsDateTime;
    cxdTglPSelesai.Date := qSPK.FieldByName('tgl_p_selesai').AsDateTime;
    cxtLain2.Text := qSPK.FieldByName('lain_lain').AsString;
    cxtKetPPIC.Text := qSPK.FieldByName('ket_ppic').AsString;

    cxdTglPProd.Properties.ReadOnly := True;
    cxdTglPSelesai.Properties.ReadOnly := True;

    cxCmbJenisSPK.Text := qSPK.FieldByName('jenis_spk').AsString;
    zqFormula.Close;
    zqFormula.ParamByName('kode').AsString := cxtKodeBrg.Text;
    zqFormula.Open;

    // get detail bom
    if cxCmbJenisSPK.Text <> 'SPK GILING' then begin
      qbd := OpenRS('SELECT * FROM v_bom2 WHERE no_spk = ''%s''',[qSPK.FieldByName('no_spk').AsString]);
      if not qbd.IsEmpty then begin
        zqFormula.Filter := 'kode = ' + cxtKodeBrg.Text;
        zqFormula.Filtered := True;
        cxlFormula.ItemIndex := 0;
        // cxlFormula.Enabled := False;
        btnTambahClick(nil);
      end;
    end;

    // jika spk giling
    if cxCmbJenisSPK.Text = 'SPK GILING' then begin

      qin := OpenRS('SELECT deskripsi FROM tbl_barang WHERE kode = %s',
        [qSPK.FieldByName('kode_brg_input').AsString]);
      cxtKodeBrgInput.Text := qSPK.FieldByName('kode_brg_input').AsString;
      cxtDeskBrgInput.Text := qin.FieldByName('deskripsi').AsString;
      qin.Close;

      pnlSPKGiling.Top := pg.Top;
      pnlSPKGiling.Left := pg.Left;
      pnlSPKGiling.Width := pg.Width;
      pnlSPKGiling.Height := pg.Height;
      pnlSPKGiling.Visible := True;
      
    end;

    {
    nxGrdDet.ClearRows;
    while not qbd.Eof do begin
      i := nxGrdDet.AddRow();
      nxGrdDet.Cell[nxColKodeBrg.Index, i].AsString := qbd.FieldByName('kode_brg').AsString;
      nxGrdDet.Cell[nxColDesk.Index, i].AsString := qbd.FieldByName('deskripsi').AsString;
      nxGrdDet.Cell[nxColTotal.Index, i].AsFloat := qbd.FieldByName('qty').AsFloat;
      nxGrdDet.Cell[nxColSatuan.Index, i].AsString := qbd.FieldByName('satuan').AsString;
      qbd.Next;
    end;
    qbd.Close;
    }

    if (qSPK.FieldByName('f_wip').AsInteger = 1) and
      (qSPK.FieldByName('f_wip_akhir').AsInteger = 1) then
      cxChkWIP.Checked := True;

    qSPK.Close;

  end;
  if q.Active then q.Close;
end;

procedure TfrmProsesMS.nxGrdDetCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin

  if ACol = nxColHapus2.Index then begin

  end;

end;

procedure TfrmProsesMS.nxGrdDetCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  f: TfrmEditDetailBOM_SPK;
  q: TZQuery;
begin
  if ACol = nxColEdit.Index then begin
    if nxGrdDet.Cell[nxColEdit.Index,ARow].AsString <> '' then begin
      f := TfrmEditDetailBOM_SPK.Create(Self);
      f.Kode := nxGrdDet.Cell[nxColKodeBrg.Index, ARow].AsString;
      f.Qty := nxGrdDet.Cell[nxColQtyBom.Index, ARow].AsFloat;
      f.Dibatasi := nxGrdDet.Cell[nxColDibatasi.Index, ARow].AsString;
      f.Dibuka := nxGrdDet.Cell[nxColDibuka.Index, ARow].AsString;
      if f.ShowModal = mrOk then begin
        q := OpenRS('SELECT kode, deskripsi FROM tbl_barang ' +
          'WHERE kode = ''' + f.Result + '''');
        nxGrdDet.Cell[nxColKodeBrg.Index, ARow].AsString := f.Result;
        nxGrdDet.Cell[nxColDesk.Index, ARow].AsString := q.FieldByName('deskripsi').AsString;
        q.Close;
      end;
      f.Release;
    end;
  end;
end;

procedure TfrmProsesMS.HapusBOM;
var
  sNoMO, sNoSPK: String;
begin
  sNoMO := cxtNoMO.Text;
  sNoSPK := cxtNoSPK.Text;

  try
    dm.zConn.StartTransaction;

    // 21-11-2-15 -> karena ada no spk dengan nomer mo yang berbeda
    // sehingga pada saat di poe muncul bomnya banyak
    {
    dm.zConn.ExecuteDirect(
      Format('DELETE FROM tbl_bom WHERE no_mo = ''%s'' AND no_spk = ''%s''',
        [sNoMO, sNoSPK])
    );
    dm.zConn.ExecuteDirect(
      Format('DELETE FROM tbl_bom_det WHERE no_mo = ''%s'' AND no_spk = ''%s''',
        [sNoMO, sNoSPK])
    );
    }

    dm.zConn.ExecuteDirect(
      Format('DELETE FROM tbl_bom WHERE no_spk = ''%s''',[sNoSPK])
    );
    dm.zConn.ExecuteDirect(
      Format('DELETE FROM tbl_bom_det WHERE no_spk = ''%s''',[sNoSPK])
    );

    dm.zConn.Commit;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TfrmProsesMS.ProsesSPKTambahan(sNoSPKInduk: string);
var
  q, qspk: TZQuery;
  lstSPK, lstKodeBrg: TStringList;
  sProses, sNoSPK, sKode: string;

begin
  q := OpenRS('SELECT * FROM tbl_barang_proses WHERE kode_brg = ''%s''',
    [cxtKodeBrg.Text]);
  if not q.IsEmpty then begin

    lstSPK := TStringList.Create;
    lstKodeBrg := TStringList.Create;

    while not q.Eof do begin
      sProses := q.FieldByName('proses').AsString;
      if sProses = 'EKSTRUSI' then
        sNoSPK := GetLastFak('spk_ekstrusi')
      else if sProses = 'GULUNG' then
        sNoSPK := GetLastFak('spk_gulung')
      else if sProses = 'BUNGKUS PLASTIK' then 
        sNoSPK := GetLastFak('spk_bungkus');
      UpdateFaktur(Copy(sNoSPK,1,12));
      sKode := q.FieldByName('kode_brg_proses').AsString;

      qspk := OpenRS('SELECT * FROM tbl_spk WHERE no_spk = ''%s'' AND no_spk_induk = ''%s''',
        [sNoSPK, sNoSPKInduk]);
      with qspk do begin
        Insert;
        FieldByName('no_spk').AsString := sNoSPK;
        FieldByName('jenis_spk').AsSTring := sProses;
        FieldByName('kode_brg').AsString := sKode;
        FieldByName('no_spk_induk').AsString := sNoSPKInduk;
        Post;
      end;
      qspk.Close;

      q.Next;
    end;
  end;
  q.Close;

end;

end.
