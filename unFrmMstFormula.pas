unit unFrmMstFormula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxTextEdit,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, cxMaskEdit, cxSpinEdit, cxCheckBox, Jpeg,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinCoffee, cxGroupBox;

type
  TFrmMstFormula = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    zqKodeBrg: TZQuery;
    dsKodeBrg: TDataSource;
    pgDet: TPageControl;
    TabSheet3: TTabSheet;
    cxLabel9: TcxLabel;
    zqKtgr: TZQuery;
    dsKtgr: TDataSource;
    cxLabel7: TcxLabel;
    cxTblViewColumn1: TcxGridDBColumn;
    cxlDeskripsi: TcxLookupComboBox;
    dsKodeHead: TDataSource;
    zqrKodeHead: TZQuery;
    cxsKode: TcxSpinEdit;
    cxtKeterangan: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxsStok: TcxSpinEdit;
    cxChkAktif: TcxCheckBox;
    zqDet: TZQuery;
    dsDet: TDataSource;
    cxlKategori: TcxLookupComboBox;
    btnCariBrg: TButton;
    TabSheet4: TTabSheet;
    btnTmbhDet: TButton;
    cxLabel8: TcxLabel;
    cxtSatuan: TcxTextEdit;
    cxsQty: TcxSpinEdit;
    cxLabel4: TcxLabel;
    cxLabel3: TcxLabel;
    cxsKodeDet: TcxSpinEdit;
    cxlDeskripsiDet: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel10: TcxLabel;
    nxGrdF: TNextGrid;
    btnCari2: TButton;
    nxColHapus2: TNxImageColumn;
    nxColNoUrut2: TNxIncrementColumn;
    nxColNamaF: TNxTextColumn;
    cxLabel11: TcxLabel;
    cxtNamaFormula: TcxTextEdit;
    Button1: TButton;
    NxImageColumn1: TNxImageColumn;
    cxtNamaFormula2: TcxTextEdit;
    nxColIndex: TNxTextColumn;
    nxColLD: TNxHyperlinkColumn;
    cxtID: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxlDibuka: TcxLookupComboBox;
    cxlDibatasi: TcxLookupComboBox;
    PageControl1: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    zqrDibuka: TZQuery;
    dsDibuka: TDataSource;
    zqrDibatasi: TZQuery;
    dsDibatasi: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxLabel15: TcxLabel;
    cxtKategori: TcxTextEdit;
    cxLabel16: TcxLabel;
    ScrollBox1: TScrollBox;
    nxGrd: TNextGrid;
    nxColNoUrut: TNxIncrementColumn;
    nxColHapus: TNxImageColumn;
    nxColEdit: TNxImageColumn;
    nxColKode: TNxTextColumn;
    nxColDeskripsi: TNxTextColumn;
    nxColQty: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    nxColDibuka: TNxTextColumn;
    nxColDibatasi: TNxTextColumn;
    nxGrd2: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxColHapusAlt: TNxImageColumn;
    nxColKodeAlt: TNxTextColumn;
    nxColDeskAlt: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    cxLabel17: TcxLabel;
    Panel1: TPanel;
    cxlDeskripsi2: TcxLookupComboBox;
    btnCari3: TButton;
    btnTambahAlt: TButton;
    zqrDet2: TZQuery;
    dsDet2: TDataSource;
    cxLabel14: TcxLabel;
    cxtDeskAlt: TcxTextEdit;
    nxColUrutan: TNxNumberColumn;
    cxtKode: TcxTextEdit;
    cxtKodeDet: TcxTextEdit;
    cxsPersen: TcxSpinEdit;
    cxLabel18: TcxLabel;
    nxColPersen: TNxNumberColumn;
    cxLabel19: TcxLabel;
    cxCmbJenisIsian: TcxComboBox;
    nxColJenisIsian: TNxTextColumn;
    cxlSatuan: TcxLookupComboBox;
    zqrUnit: TZQuery;
    dsUnit: TDataSource;
    nxColLayer1: TNxNumberColumn;
    nxColLayer2: TNxNumberColumn;
    nxColLayer3: TNxNumberColumn;
    cxGroupBox7: TcxGroupBox;
    cxGrid5: TcxGrid;
    cxTblMatSaran: TcxGridTableView;
    cxCol_MS_Bahan: TcxGridColumn;
    cxCol_MS_KodeBrg: TcxGridColumn;
    cxCol_MS_Deskripsi: TcxGridColumn;
    cxCol_MS_Layer1: TcxGridColumn;
    cxCol_MS_Layer2: TcxGridColumn;
    cxCol_MS_Layer3: TcxGridColumn;
    cxCol_MS_Mono: TcxGridColumn;
    cxGridLevel3: TcxGridLevel;
    cxs_MS_Layer1: TcxSpinEdit;
    cxLabel20: TcxLabel;
    cxs_MS_Layer2: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    cxs_MS_Layer3: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxs_MS_Total: TcxSpinEdit;
    cxLabel24: TcxLabel;
    cxs_MS_PLayer1: TcxSpinEdit;
    cxs_MS_PLayer2: TcxSpinEdit;
    cxs_MS_PLayer3: TcxSpinEdit;
    cxLabel27: TcxLabel;
    cxsLayer1: TcxSpinEdit;
    cxsLayer2: TcxSpinEdit;
    cxsLayer3: TcxSpinEdit;
    cxsBeratBersih: TcxSpinEdit;
    cxsBeratKotor: TcxSpinEdit;
    cxsBeratBom: TcxSpinEdit;
    cxChkMix: TcxCheckBox;
    NxColAlternatif: TNxImageColumn;
    TabSheet8: TTabSheet;
    cxLabel28: TcxLabel;
    cxtKodeBahan: TcxTextEdit;
    cxLabel29: TcxLabel;
    cxlNamaBrg: TcxLookupComboBox;
    cxGrid9: TcxGrid;
    cxTblaLT: TcxGridTableView;
    cxColKode: TcxGridColumn;
    cxColDeskripsi1: TcxGridColumn;
    cxGridLevel7: TcxGridLevel;
    btnSimpanAlt: TButton;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    NxColMLayer1: TNxNumberColumn;
    NxColMLayer2: TNxNumberColumn;
    NxColMLayer3: TNxNumberColumn;
    cxsLayer4: TcxSpinEdit;
    cxsLayer5: TcxSpinEdit;
    cxsLayer6: TcxSpinEdit;
    cxsLayer7: TcxSpinEdit;
    cxsLayer8: TcxSpinEdit;
    cxs_MS_Layer4: TcxSpinEdit;
    cxs_MS_Layer5: TcxSpinEdit;
    cxs_MS_Layer6: TcxSpinEdit;
    cxs_MS_Layer7: TcxSpinEdit;
    cxs_MS_Layer8: TcxSpinEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    cxs_MS_PLayer4: TcxSpinEdit;
    cxs_MS_PLayer5: TcxSpinEdit;
    cxs_MS_PLayer6: TcxSpinEdit;
    cxs_MS_PLayer7: TcxSpinEdit;
    cxs_MS_PLayer8: TcxSpinEdit;
    nxColLayer4: TNxNumberColumn;
    nxColLayer5: TNxNumberColumn;
    nxColLayer6: TNxNumberColumn;
    nxColLayer7: TNxNumberColumn;
    nxColLayer8: TNxNumberColumn;
    NxColMLayer4: TNxNumberColumn;
    NxColMLayer5: TNxNumberColumn;
    NxColMLayer6: TNxNumberColumn;
    NxColMLayer7: TNxNumberColumn;
    NxColMLayer8: TNxNumberColumn;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnTmbhDetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnTmbhNotClick(Sender: TObject);
    procedure nxGrdNotesCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnTambahClick(Sender: TObject);
    procedure cxlDeskripsiPropertiesEditValueChanged(Sender: TObject);
    procedure btnCariBrgClick(Sender: TObject);
    procedure btnCari2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure nxGrdFCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrdFCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure pgDetChange(Sender: TObject);
    procedure pgDetChanging(Sender: TObject; var AllowChange: Boolean);
    procedure cxlDeskripsiDetPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnTambahAltClick(Sender: TObject);
    procedure btnCari3Click(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrd2CellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure nxGrd2AfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure cxs_MS_OutPropertiesChange(Sender: TObject);
    procedure cxsOutPropertiesEditValueChanged(Sender: TObject);
    procedure cxsMidPropertiesEditValueChanged(Sender: TObject);
    procedure cxsInPropertiesEditValueChanged(Sender: TObject);
    procedure cxsPersenPropertiesEditValueChanged(Sender: TObject);
    procedure cxTblaLTDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure btnSimpanAltClick(Sender: TObject);
    procedure cxsLayer4PropertiesEditValueChanged(Sender: TObject);
    procedure cxsLayer5PropertiesEditValueChanged(Sender: TObject);
    procedure cxsLayer6PropertiesEditValueChanged(Sender: TObject);
    procedure cxsLayer7PropertiesEditValueChanged(Sender: TObject);
    procedure cxsLayer8PropertiesEditValueChanged(Sender: TObject);
    procedure cxs_MS_Layer4PropertiesChange(Sender: TObject);
    procedure cxs_MS_Layer5PropertiesChange(Sender: TObject);
    procedure cxs_MS_Layer6PropertiesChange(Sender: TObject);
    procedure cxs_MS_Layer7PropertiesChange(Sender: TObject);
    procedure cxs_MS_Layer8PropertiesChange(Sender: TObject);
  private
    tbl: TZTable;
    mRowEdit: Integer;
    mKode: string;
    function FindRow(val: String): Integer;
    procedure ClearAll;
  public
    property Kode: string write mKode;
  end;

var
  frmMstMenu: TFrmMstFormula;

const
  CKD_BRG : Integer = 1;
  CNAMA : Integer = 2;
  CQTY : Integer = 3;
  CSAT : Integer = 4;
  CHPS : Integer = 5;
  CUPD : Integer = 6;

implementation

uses unDm, unTools, unAplikasi, unFrmUtama, unFrmCari;

{$R *.dfm}

procedure TFrmMstFormula.btnSimpanClick(Sender: TObject);
var
  f: Boolean;
  i: integer;
  tbl_det: TZTable;
begin
  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Kode bahan harus diisi.');
    cxlDeskripsi.SetFocus;
  end
  //else if cxlKategori.Text = '' then begin
  //  MsgBox('Pilih kategori formula.');
  //  cxlKategori.SetFocus;
  //end
  //else if nxGrd.RowCount = 0 then begin
  //  MsgBox('Detail formula masih kosong.');
  //  cxlDeskripsiDet.SetFocus;
  //end
  else begin
    // cek detail apakah masih kosong atau tidak 

    try
      dm.zConn.StartTransaction;
      f := True;
      if self.Jenis = 'tambah' then begin
        if CheckKey('tbl_formula_head','kode_brg', QuotedStr(Trim(cxtKode.Text))) then begin
          MsgBox('Kode Formula sudah ada.');
          cxtKode.SelectAll;
          cxtKode.SetFocus;
          f := False;
        end
        else
          tbl.Insert;
      end
      else begin
        if not CheckKey('tbl_formula_head','kode_brg',QuotedStr(Trim(cxtKode.Text))) then begin
          MsgBox('Kode Formula belum ada.');
          cxtKode.SelectAll;
          cxtKode.SetFocus;
          f := False;
        end
        else begin
          tbl.Locate('kode_brg',Trim(cxtKode.Text),[loCaseInsensitive]);
          tbl.Edit;
        end;
      end;

      if f then begin
        tbl.FieldByName('kode_brg').AsString := cxtKode.Text;
        tbl.FieldByName('kategori').AsString := cxlKategori.Text;
        tbl.FieldByName('keterangan').AsString := Trim(cxtKeterangan.Text);
        if self.Jenis = 'tambah' then begin
          tbl.FieldByName('tgl_buat').AsDateTime := aplikasi.TanggalServer;
          tbl.FieldByName('user').AsString := aplikasi.NamaUser;
          tbl.FieldByName('user_dept').AsString := Aplikasi.UserDept;
        end;
        if self.Jenis = 'edit' then begin
          tbl.FieldByName('tgl_edit').AsDateTime := aplikasi.TanggalServer;
          tbl.FieldByName('user_edit').AsString := aplikasi.NamaUser;
          tbl.FieldByName('dept_edit').AsString := Aplikasi.UserDept;
        end;

        if cxChkAktif.Checked then
          i := 1
        else
          i := 0;

        tbl.FieldByName('f_aktif').AsInteger := i;

        tbl.Post;

        dm.zConn.ExecuteDirect('DELETE FROM tbl_formula_det WHERE ' +
          'kode = ''' + cxtKode.Text + '''');
        tbl_det := OpenTbl('tbl_formula_det');
        for i := 0 to nxGrdF.RowCount - 1 do begin
          tbl_det.Insert;
          tbl_det.FieldByName('kode').AsString := cxtKode.Text;
          tbl_det.FieldByName('nama').AsString := nxGrdF.Cell[nxColNamaF.Index,i].AsString;
          tbl_det.Post;
        end;
        tbl_det.Close;

        MsgBox('Master Formula sudah disimpan.');

        zQry.Close;
        zQry.Open;

        btnBatalClick(nil);
      end;
      dm.zConn.Commit;
      tbl.Close;
      tbl.Open;
    except
      on E: Exception do begin
        
      end;
    end;
  end;

  {
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if Trim(cxtDeskripsi.Text) = '' then begin
    MsgBox('Deskripsi Formula harus diisi.');
    cxtDeskripsi.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;
      f := True;
      if self.Jenis = 'tambah' then begin
        if CheckKey('tbl_formula_head','kode', QuotedStr(Trim(cxtKode.Text))) then begin
          MsgBox('Kode Formula sudah ada.');
          cxtKode.SelectAll;
          cxtKode.SetFocus;
          f := False;
        end
        else
          tbl.Insert;
      end
      else begin
        if not CheckKey('tbl_formula_head','kode',QuotedStr(Trim(cxtKode.Text))) then begin
          MsgBox('Kode Formula belum ada.');
          cxtKode.SelectAll;
          cxtKode.SetFocus;
          f := False;
        end
        else begin
          tbl.Locate('kode',Trim(cxtKode.Text),[loCaseInsensitive]);
          tbl.Edit;
        end;
      end;

      if f then begin
        tbl.FieldByName('kode').AsString := Trim(cxtKode.Text);
        tbl.FieldByName('deskripsi').AsString := Trim(cxtDeskripsi.Text);
        tbl.FieldByName('kategori').AsString := cxlKtgrFormula.Text;
        tbl.FieldByName('keterangan').AsString := Trim(cxtKeterangan.Text);

        if chkAktif.Checked then
          i := 1
        else
          i := 0;
          
        tbl.FieldByName('f_aktif').AsInteger := i;

        tbl.Post;

        MsgBox('Formula sudah disimpan.');
        
        zQry.Close;
        zQry.Open;

        btnBatalClick(nil);
      end;
      dm.zConn.Commit;
      tbl.Close;
      tbl.Open;
    except
      on E: Exception do begin
        
      end;
    end;
  end;
  }
end;

procedure TFrmMstFormula.btnTmbhDetClick(Sender: TObject);
var
  q, q_cek, q_brg, qm_saran : TZQuery;
  i, row: integer;
  tbl_det: TZTable;
begin
  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Pilih kode barang formula.');
    cxlDeskripsi.SetFocus;
  end
  else if Trim(cxtKodeDet.text) = '' then begin
    MsgBox('Kode detail barang harus diisi.');
    cxtKodeDet.SetFocus;
  end
  else if Trim(cxCmbJenisIsian.Text) = '' then begin
    MsgBox('Pilih jenis isian.');
    cxCmbJenisIsian.SetFocus;
  end
  else begin

    if cxCmbJenisIsian.Text <> 'PERSEN' then begin
      if cxsQty.Value = 0 then begin
        MsgBox('Qty. bahan harus > 0.');
        cxsQty.SetFocus;
        Abort;
      end;
    end;

    if cxCmbJenisIsian.Text = 'PERSEN' then begin
      if cxsPersen.Value = 0 then begin
        MsgBox('Jumlah persentase harus di isi.');
        cxsPersen.SetFocus;
        Abort;
      end;
    end;

    dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_formula_subdet WHERE kode = ''%s'' AND ' +
      'nama = ''%s'' AND kode_brg = ''%s''',
      [cxtKode.Text, cxtNamaFormula2.Text, cxtKodeDet.Text]));

    if mRowEdit > -1 then
      i := mRowEdit
    else begin
      i := nxGrd.AddRow();
    end;

    nxGrd.Cell[nxColKode.Index,i].AsString := cxtKodeDet.Text;
    nxGrd.Cell[nxColDeskripsi.Index,i].AsString := cxlDeskripsiDet.Text;
    nxGrd.Cell[nxColQty.Index,i].AsFloat := cxsQty.Value;
    nxGrd.Cell[nxColPersen.Index, i].AsFloat := cxsPersen.Value;

    //nxGrd.Cell[nxColSatuan.Index,i].AsString := zqDet.FieldByName('satuan').AsString;
    nxGrd.Cell[nxColSatuan.Index, i].AsString := cxlSatuan.EditValue;

    nxGrd.Cell[nxColDibuka.Index,i].AsString := cxlDibuka.Text;
    nxGrd.Cell[nxColDibatasi.Index,i].AsString := cxlDibatasi.Text;
    nxGrd.Cell[nxColJenisIsian.Index, i].AsString := cxCmbJenisIsian.Text;

    if cxChkMix.Checked then begin
      nxGrd.Cell[nxColLayer1.Index, i].AsFloat := cxsLayer1.Value;
      nxGrd.Cell[nxColLayer2.Index, i].AsFloat := cxsLayer2.Value;
      nxGrd.Cell[nxColLayer3.Index, i].AsFloat := cxsLayer3.Value;
      nxGrd.Cell[nxColLayer4.Index, i].AsFloat := cxsLayer4.Value;
      nxGrd.Cell[nxColLayer5.Index, i].AsFloat := cxsLayer5.Value;
      nxGrd.Cell[nxColLayer6.Index, i].AsFloat := cxsLayer6.Value;
      nxGrd.Cell[nxColLayer7.Index, i].AsFloat := cxsLayer7.Value;
      nxGrd.Cell[nxColLayer8.Index, i].AsFloat := cxsLayer8.Value;

      nxGrd.Cell[nxColPersen.Index,i].AsFloat :=
        ((cxsLayer1.EditValue / 100) * cxs_MS_PLayer1.Value) +
        ((cxsLayer2.EditValue / 100) * cxs_MS_PLayer2.Value) +
        ((cxsLayer3.EditValue / 100) * cxs_MS_PLayer3.Value)+
        ((cxsLayer4.EditValue / 100) * cxs_MS_PLayer4.Value)+
        ((cxsLayer5.EditValue / 100) * cxs_MS_PLayer5.Value)+
        ((cxsLayer6.EditValue / 100) * cxs_MS_PLayer6.Value)+
        ((cxsLayer7.EditValue / 100) * cxs_MS_PLayer7.Value)+
        ((cxsLayer8.EditValue / 100) * cxs_MS_PLayer8.Value);

      nxGrd.Cell[nxColQty.Index, i].AsFloat :=
        (nxGrd.Cell[nxColPersen.Index, i].AsFloat / 100) * cxsBeratBom.Value;
    end;

    tbl_det := OpenTbl('tbl_formula_subdet');
    try
      dm.zConn.StartTransaction;
      tbl_det.Insert;
      tbl_det.FieldByName('kode').AsString := cxtKode.Text;
      tbl_det.FieldByName('nama').AsString := cxtNamaFormula2.Text;
      tbl_det.FieldByName('kode_brg').AsString := cxtKodeDet.Text;
      tbl_det.FieldByName('qty').AsFloat := cxsQty.Value;

      //tbl_det.FieldByName('satuan').AsString := cxtSatuan.Text;
      tbl_det.FieldByName('satuan').AsString := cxlSatuan.EditValue;

      tbl_det.FieldByName('dibuka').AsString := cxlDibuka.Text;
      tbl_det.FieldByName('dibatasi').AsString := cxlDibatasi.Text;

      tbl_det.FieldByName('persen').AsFloat := cxsPersen.Value;
      tbl_det.FieldByName('jns').AsString := cxCmbJenisIsian.Text;
      tbl_det.FieldByName('l_group').AsFloat := 1;

      tbl_det.Post;

      if cxChkMix.Checked then begin
        qm_saran := OpenRS('SELECT * FROM tbl_mat_saran WHERE kode = ''%s'' AND kode_brg = ''%s'' AND nama_formula = ''%s''',
          [cxtKode.Text, cxtKodeDet.Text, cxtNamaFormula2.Text]);
        if not qm_saran.IsEmpty then
          qm_saran.Edit
        else
          qm_saran.Insert;
        qm_saran.FieldByName('kode').AsString := cxtKode.Text;
        qm_saran.FieldByName('kode_brg').AsString := cxtKodeDet.Text;
        qm_saran.FieldByName('layer1').AsFloat := cxsLayer1.Value;
        qm_saran.FieldByName('layer2').AsFloat := cxsLayer2.Value;
        qm_saran.FieldByName('layer3').AsFloat := cxsLayer3.Value;
        qm_saran.FieldByName('layer4').AsFloat := cxsLayer4.Value;
        qm_saran.FieldByName('layer5').AsFloat := cxsLayer5.Value;
        qm_saran.FieldByName('layer6').AsFloat := cxsLayer6.Value;
        qm_saran.FieldByName('layer7').AsFloat := cxsLayer7.Value;
        qm_saran.FieldByName('layer8').AsFloat := cxsLayer8.Value;
        qm_saran.FieldByName('mtp_layer1').AsFloat := cxs_MS_Layer1.Value;
        qm_saran.FieldByName('mtp_layer2').AsFloat := cxs_MS_Layer2.Value;
        qm_saran.FieldByName('mtp_layer3').AsFloat := cxs_MS_Layer3.Value;
        qm_saran.FieldByName('mtp_layer4').AsFloat := cxs_MS_Layer4.Value;
        qm_saran.FieldByName('mtp_layer5').AsFloat := cxs_MS_Layer5.Value;
        qm_saran.FieldByName('mtp_layer6').AsFloat := cxs_MS_Layer6.Value;
        qm_saran.FieldByName('mtp_layer7').AsFloat := cxs_MS_Layer7.Value;
        qm_saran.FieldByName('mtp_layer8').AsFloat := cxs_MS_Layer8.Value;
        qm_saran.FieldByName('nama_formula').AsString := cxtNamaFormula2.Text;
        qm_saran.Post;
      end;

      cxsLayer1.LockChangeEvents(True);
      cxsLayer1.Value := 0;
      cxsLayer1.LockChangeEvents(False, False);

      cxsLayer2.LockChangeEvents(True);
      cxsLayer2.Value := 0;
      cxsLayer2.LockChangeEvents(False, False);

      cxsLayer3.LockChangeEvents(True);
      cxsLayer3.Value := 0;
      cxsLayer3.LockChangeEvents(False, False);

      cxsLayer4.LockChangeEvents(True);
      cxsLayer4.Value := 0;
      cxsLayer4.LockChangeEvents(False, False);

      cxsLayer5.LockChangeEvents(True);
      cxsLayer5.Value := 0;
      cxsLayer5.LockChangeEvents(False, False);

      cxsLayer6.LockChangeEvents(True);
      cxsLayer6.Value := 0;
      cxsLayer6.LockChangeEvents(False, False);

      cxsLayer7.LockChangeEvents(True);
      cxsLayer7.Value := 0;
      cxsLayer7.LockChangeEvents(False, False);

      cxsLayer8.LockChangeEvents(True);
      cxsLayer8.Value := 0;
      cxsLayer8.LockChangeEvents(False, False);

      
      cxs_MS_Layer1.LockChangeEvents(True);
      cxs_MS_Layer1.Value := 0;
      cxs_MS_Layer1.LockChangeEvents(False, False);

      cxs_MS_Layer2.LockChangeEvents(True);
      cxs_MS_Layer2.Value := 0;
      cxs_MS_Layer2.LockChangeEvents(False, False);

      cxs_MS_Layer3.LockChangeEvents(True);
      cxs_MS_Layer3.Value := 0;
      cxs_MS_Layer3.LockChangeEvents(False, False);

      cxs_MS_Layer4.LockChangeEvents(True);
      cxs_MS_Layer4.Value := 0;
      cxs_MS_Layer4.LockChangeEvents(False, False);

      cxs_MS_Layer5.LockChangeEvents(True);
      cxs_MS_Layer5.Value := 0;
      cxs_MS_Layer5.LockChangeEvents(False, False);

      cxs_MS_Layer6.LockChangeEvents(True);
      cxs_MS_Layer6.Value := 0;
      cxs_MS_Layer6.LockChangeEvents(False, False);
      
      cxs_MS_Layer7.LockChangeEvents(True);
      cxs_MS_Layer7.Value := 0;
      cxs_MS_Layer7.LockChangeEvents(False, False);
      
      cxs_MS_Layer8.LockChangeEvents(True);
      cxs_MS_Layer8.Value := 0;
      cxs_MS_Layer8.LockChangeEvents(False, False);


      dm.zConn.Commit;

      cxsKodeDet.Value := 0;
      cxsKodeDet.Text := '';
      cxsQty.Value := 0;
      cxtSatuan.Text := '';
      cxlDeskripsiDet.Text := '';
      cxlDibuka.Text := '';
      cxlDibatasi.Text := '';
      cxlDeskripsiDet.SetFocus;
      mRowEdit := -1;
      cxsPersen.Value := 0;
      cxlSatuan.Text := '';
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);  
        dm.zConn.Rollback;
      end;
    end;

  end;
  {
  if Trim(cxtKode.Text) = '' then begin
    MsgBox('Kode menu harus diisi.');
    cxtKode.SetFocus;
  end
  else if Trim(cxtKodeBrg.Text) = '' then begin
    MsgBox('Kode barang harus diisi.');
    cxLUNamaBrg.Setfocus;
  end
  else if cxsQty.Value = 0 then begin
    MsgBox('Qty. barang harus > 0.');
    cxsQty.SetFocus;
  end
  else begin
    // cek apakah header sudah disimpan
    q := OpenRS('SELECT * FROM tbl_formula_head WHERE kode = ''%s''',
      [Trim(cxtKode.Text)]);
    if q.IsEmpty then begin
      MsgBox('Kode formula ini belum disimpan.');
      cxtKode.SetFocus;
    end
    else begin
      tbl_det := OpenTbl('tbl_formula_det');

      q_cek := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s'' ' +
        'AND kode_brg = ''%s''',
        [Trim(cxtKode.Text), cxtKodeBrg.Text]);

      q_brg := OpenRS('SELECT satuan FROM tbl_barang WHERE kode = ''%s''',
          [cxtKodeBrg.Text]);

      if not q_cek.IsEmpty then begin

        row := FindRow(Trim(cxtKodeBrg.Text));
        if row > -1 then begin
          nxGrd.Cell[nxColQty.Index,row].AsFloat := cxsQty.Value;
          nxGrd.Cell[nxColSatuan.Index,row].AsString := q_brg.FieldByName('satuan').AsString;
          if tbl_det.Locate('kode;kode_brg',
            VarArrayOf([Trim(cxtKode.Text),cxtKodeBrg.Text]),[]) then
            tbl_det.Edit
          else begin
            Abort;
          end;
        end;
      end
      else begin
        nxGrd.AddRow();
        i := nxGrd.LastAddedRow;
        nxGrd.Cell[nxColKode.Index,i].AsString := cxtKodeBrg.Text;
        nxGrd.Cell[nxColDeskripsi.Index,i].AsString := cxtKodeBrg.Text;
        nxGrd.Cell[nxColQty.Index,i].AsFloat := cxsQty.Value;
        nxGrd.Cell[nxColSatuan.Index,i].AsString := q_brg.FieldByName('satuan').AsString;
        tbl_det.Insert;
      end;

      tbl_det.FieldByName('kode').AsString := Trim(cxtKode.Text);
      tbl_det.FieldByName('kode_brg').AsString := cxtKodeBrg.Text;
      tbl_det.FieldByName('qty').AsFloat := cxsQty.Value;
      tbl_det.FieldByName('satuan').AsString := q_brg.FieldByName('satuan').AsString;
      tbl_det.Post;
      
      q_brg.Close;
    end;
    q.Close;
  end;
  }
end;

procedure TFrmMstFormula.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  tbl := OpenTbl('tbl_formula_head');
  //pgDet.ActivePage := TabSheet3;

  zqrKodeHead.Open;
  zQry.Open;
  zqKtgr.Open;
  zqDet.Open;
  zqrDibuka.Open;
  zqrDibatasi.Open;
  pgDet.ActivePageIndex := 0;
  mRowEdit := -1;
  zqrDet2.Open;
  cxCmbJenisIsian.Properties.Items.CommaText := 'PERSEN,VOLUME';
  zqrUnit.Open;

  cxGroupBox7.Visible := False;
  nxColLayer1.Visible := False;
  nxColLayer2.Visible := False;
  nxColLayer3.Visible := False;
  nxColLayer4.Visible := False;
  nxColLayer5.Visible := False;
  nxColLayer6.Visible := False;
  nxColLayer7.Visible := False;
  nxColLayer8.Visible := False;
  
end;

procedure TFrmMstFormula.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q, qb, q_det, qd: TZQuery;
  stream: TMemoryStream;
  jpg: TJPEGImage;
  sKode: string;
  i: Integer;
begin
  if Self.Jenis = 'edit' then begin
    sKode := zQry.FieldByName('kode_brg').AsString;
    q := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = ''%s''',[sKode]);

    cxlDeskripsi.EditValue := q.FieldByName('kode_brg').AsString;
    cxtKode.Text := q.FieldByName('kode_brg').AsString;
    cxlKategori.Text := q.FieldByName('kategori').AsString;
    cxtKeterangan.Text := q.FieldByName('keterangan').AsString;

    qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''', [sKode]);
    cxsStok.Value := qb.FieldByName('stok').AsFloat;
    if Copy(cxlDeskripsi.EditText,1,3) = 'MIX' then begin
      cxs_MS_Layer1.EditValue := qb.FieldByname('mt_layer1').AsFloat;
      cxs_MS_Layer2.EditValue := qb.FieldByName('mt_layer2').AsFloat;
      cxs_MS_Layer3.EditValue := qb.FieldByName('mt_layer3').AsFloat;
      cxs_MS_Layer4.EditValue := qb.FieldByname('mt_layer4').AsFloat;
      cxs_MS_Layer5.EditValue := qb.FieldByName('mt_layer5').AsFloat;
      cxs_MS_Layer6.EditValue := qb.FieldByName('mt_layer6').AsFloat;
      cxs_MS_Layer7.EditValue := qb.FieldByname('mt_layer7').AsFloat;
      cxs_MS_Layer8.EditValue := qb.FieldByName('mt_layer8').AsFloat;
    end;
    cxsBeratBersih.Value := qb.FieldByName('berat_bersih').AsFloat;
    cxsBeratKotor.Value := qb.FieldByName('berat_kotor').AsFloat;
    if Copy(cxtKode.Text,1,1) = 'A' then begin
      cxsBeratBOM.Value := cxsBeratBersih.Value;
    end
    else
      cxsBeratBOM.Value := cxsBeratKotor.Value;
      
    qb.Close;

    if q.FieldByName('f_aktif').AsInteger = 1 then
      cxChkAktif.Checked := True
    else
      cxChkAktif.Checked := False;

    // 26/09/2017
    if Copy(cxlDeskripsi.EditText,1,3) = 'MIX' then begin
      cxGroupBox7.Visible := True;
      nxColLayer1.Visible := True;
      nxColLayer2.Visible := True;
      nxColLayer3.Visible := True;
      nxColLayer4.Visible := True;
      nxColLayer5.Visible := True;
      nxColLayer6.Visible := True;
      nxColLayer7.Visible := True;
      nxColLayer8.Visible := True;
      cxChkMix.Checked := True;
      cxsLayer1.Enabled := True;
      cxsLayer2.Enabled := True;
      cxsLayer3.Enabled := True;
      cxsLayer4.Enabled := True;
      cxsLayer5.Enabled := True;
      cxsLayer6.Enabled := True;
      cxsLayer7.Enabled := True;
      cxsLayer8.Enabled := True;
    end
    else begin
      cxslayer1.Enabled := False;
      cxsLayer2.Enabled := False;
      cxsLayer3.Enabled := False;
      cxsLayer4.Enabled := False;
      cxsLayer5.Enabled := False;
      cxsLayer6.Enabled := False;
      cxsLayer7.Enabled := False;
      cxsLayer8.Enabled := False;
    end;

    q.Close;

    {
    q_det := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = %s',[sKode]);
    nxGrd.ClearRows;
    while not q_det.Eof do begin
      nxGrd.AddRow();
      i := nxGrd.LastAddedRow;
      nxGrd.Cell[nxColKode.Index,i].AsString := q_det.FieldByName('kode_brg').AsString;

      q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [q_det.FieldByName('kode_brg').AsString]);
      nxGrd.Cell[nxColDeskripsi.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      q.Close;

      nxGrd.Cell[nxColQty.Index,i].AsFloat := q_det.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColSatuan.Index,i].AsString := q_det.FieldByName('satuan').AsString;
      q_det.Next;
    end;
    q_det.Close;
    }

    q_det := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s''',[sKode]);
    nxGrdF.ClearRows;
    while not q_det.Eof do begin
      i := nxGrdF.AddRow();
      nxGrdF.Cell[nxColNamaF.Index,i].AsString := q_det.FieldByName('nama').AsString;
      nxGrdF.Cell[nxColIndex.Index,i].AsString := q_det.FieldByName('id').AsString;
      nxGrdF.Cell[nxColLD.Index,i].AsString := 'Detail';
      q_det.Next;
    end;

    pg.ActivePageIndex := 0;
    cxlDeskripsi.SetFocus;
  end;
end;

function TFrmMstFormula.FindRow(val: String): Integer;
var
  i, tmp: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[CKD_BRG,i].AsString = val then begin
      tmp := i;
      break;
    end;
  end;
  Result := tmp;
end;

procedure TFrmMstFormula.ClearAll;
begin
  zqrKodeHead.Close;
  zqrKodeHead.Open;
  zqDet.Close;
  zqDet.Open;
  zqKtgr.Close;
  zqKtgr.Open;

  cxlDeskripsi.Text := '';
  cxsKode.Text := '';
  cxlKategori.Text := '';
  cxtKeterangan.Text := '';
  cxsStok.Text := '';

  cxlDeskripsiDet.Text := '';
  cxsKodeDet.Text := '';
  cxsQty.Text := '';

  nxGrd.ClearRows;
  cxChkAktif.Checked := False;
  cxtSatuan.Text := '';
  cxtNamaFormula2.Text := '';
  cxlDibuka.Text := '';
  cxlDibatasi.Text := '';
  pgDet.ActivePageIndex := 0;

  nxGrdF.ClearRows;
  mRowEdit := -1;
  cxtKategori.Text := '';
  Self.Jenis := '';

  cxtKodeDet.Text := '';
  cxlSatuan.Text := '';
  cxsPersen.Value := 0;
  cxCmbJenisIsian.Text := '';

  cxGroupBox7.Visible := False;
  nxColLayer1.Visible := False;
  nxColLayer2.Visible := False;
  nxColLayer3.Visible := False;
  nxColLayer4.Visible := False;
  nxColLayer5.Visible := False;
  nxColLayer6.Visible := False;
  nxColLayer7.Visible := False;
  nxColLayer8.Visible := False;

  cxChkMix.Checked := False;
  cxtKode.Text := '';

  cxsLayer1.LockChangeEvents(True);
  cxsLayer1.Value := 0;
  cxsLayer1.LockChangeEvents(False, False);

  cxsLayer2.LockChangeEvents(True);
  cxsLayer2.Value := 0;
  cxsLayer2.LockChangeEvents(False, False);

  cxsLayer3.LockChangeEvents(True);
  cxsLayer3.Value := 0;
  cxsLayer3.LockChangeEvents(False, False);

  cxsLayer4.LockChangeEvents(True);
  cxsLayer4.Value := 0;
  cxsLayer4.LockChangeEvents(False, False);

  cxsLayer5.LockChangeEvents(True);
  cxsLayer5.Value := 0;
  cxsLayer5.LockChangeEvents(False, False);

  cxsLayer6.LockChangeEvents(True);
  cxsLayer6.Value := 0;
  cxsLayer6.LockChangeEvents(False, False);

  cxsLayer7.LockChangeEvents(True);
  cxsLayer7.Value := 0;
  cxsLayer7.LockChangeEvents(False, False);

  cxsLayer8.LockChangeEvents(True);
  cxsLayer8.Value := 0;
  cxsLayer8.LockChangeEvents(False, False);

end;

procedure TFrmMstFormula.btnBatalClick(Sender: TObject);
var
  q: TZQuery;
begin
  if Self.Jenis = 'tambah' then begin
    q := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = %s', [cxsKode.Text]);
    if q.IsEmpty then
      dm.zConn.ExecuteDirect('DELETE FROM tbl_formula_det WHERE kode = ' + cxsKode.Text);
    q.Close;
  end;
  ClearAll;
  inherited;
end;

procedure TFrmMstFormula.nxGrdCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  i,j: Integer;
  sKodeBrg: string;
  q: TZQuery;
begin

  if ACol = nxColHapus.Index then begin
    if Trim(nxGrd.Cell[nxColKode.Index, ARow].AsString) <> '' then begin
      try
        dm.zConn.StartTransaction;

        dm.zConn.ExecuteDirect(Format('DELETE FROM tbl_formula_subdet WHERE kode = ''%s'' AND nama = ''%s'' AND kode_brg = ''%s''',
          [cxtKode.Text, cxtNamaFormula2.Text, nxGrd.Cell[nxColKode.Index, ARow].AsString]));

        dm.zConn.Commit;

        nxGrd.DeleteRow(nxGrd.SelectedRow);
        nxColNoUrut.Refresh();
        //if nxGrd.RowCount = 0 then nxGrd.AddRow();

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
  end
  else if ACol = nxColEdit.Index then begin
    q := OpenRS('SELECT * FROM tbl_formula_subdet WHERE kode = ''%s'' AND nama = ''%s'' AND kode_brg = ''%s''',
      [cxsKode.Text, cxtNamaFormula2.Text, nxGrd.Cell[nxColKode.Index, ARow].AsString]);

    cxlDeskripsiDet.EditValue := nxGrd.Cell[nxColKode.Index, ARow].AsString;
    cxtKodeDet.Text := nxGrd.Cell[nxColKode.Index, ARow].AsString;
    cxsQty.Value := nxGrd.Cell[nxColQty.Index, ARow].AsFloat;
    cxtSatuan.Text := 'KG';
    cxlDibuka.Text := nxGrd.Cell[nxColDibuka.Index,ARow].AsString;
    cxlDibatasi.Text := nxGrd.Cell[nxColDibatasi.Index,ARow].AsString;
    cxCmbJenisIsian.Text := nxGrd.Cell[nxColJenisIsian.Index, ARow].AsString;
    cxsPersen.Value := nxGrd.Cell[nxColPersen.Index, ARow].AsFloat;
    cxlSatuan.EditValue := nxGrd.Cell[nxColSatuan.Index, ARow].AsString;

    cxs_MS_Layer1.LockChangeEvents(True);
    cxs_MS_Layer1.Value := nxGrd.Cell[nxColMLayer1.Index, ARow].AsFloat;
    cxs_MS_Layer1.LockChangeEvents(False, False);

    cxs_MS_Layer2.LockChangeEvents(True);
    cxs_MS_Layer2.Value := nxGrd.Cell[nxColMLayer2.Index, ARow].AsFloat;
    cxs_MS_Layer2.LockChangeEvents(False, False);

    cxs_MS_Layer3.LockChangeEvents(True);
    cxs_MS_Layer3.Value  := nxGrd.Cell[nxColMLayer3.Index, ARow].AsFloat;
    cxs_MS_Layer3.LockChangeEvents(False, False);

     cxs_MS_Layer4.LockChangeEvents(True);
    cxs_MS_Layer4.Value  := nxGrd.Cell[nxColMLayer4.Index, ARow].AsFloat;
    cxs_MS_Layer4.LockChangeEvents(False, False);

     cxs_MS_Layer5.LockChangeEvents(True);
    cxs_MS_Layer5.Value  := nxGrd.Cell[nxColMLayer5.Index, ARow].AsFloat;
    cxs_MS_Layer5.LockChangeEvents(False, False);

     cxs_MS_Layer6.LockChangeEvents(True);
    cxs_MS_Layer6.Value  := nxGrd.Cell[nxColMLayer6.Index, ARow].AsFloat;
    cxs_MS_Layer6.LockChangeEvents(False, False);

     cxs_MS_Layer7.LockChangeEvents(True);
    cxs_MS_Layer7.Value  := nxGrd.Cell[nxColMLayer7.Index, ARow].AsFloat;
    cxs_MS_Layer7.LockChangeEvents(False, False);

     cxs_MS_Layer8.LockChangeEvents(True);
    cxs_MS_Layer8.Value  := nxGrd.Cell[nxColMLayer8.Index, ARow].AsFloat;
    cxs_MS_Layer8.LockChangeEvents(False, False);

    cxsLayer1.Value := nxGrd.Cell[nxColLayer1.Index, ARow].AsFloat;
    cxsLayer2.Value := nxGrd.Cell[nxColLayer2.Index, ARow].AsFloat;
    cxsLayer3.Value := nxGrd.Cell[nxColLayer3.Index, ARow].AsFloat;
    cxsLayer4.Value := nxGrd.Cell[nxColLayer4.Index, ARow].AsFloat;
    cxsLayer5.Value := nxGrd.Cell[nxColLayer5.Index, ARow].AsFloat;
    cxsLayer6.Value := nxGrd.Cell[nxColLayer6.Index, ARow].AsFloat;
    cxsLayer7.Value := nxGrd.Cell[nxColLayer7.Index, ARow].AsFloat;
    cxsLayer8.Value := nxGrd.Cell[nxColLayer8.Index, ARow].AsFloat;


    mRowEdit := ARow;

    q.Close;
  end
  else if ACol = NxColAlternatif.Index then begin
    pgDet.ActivePageIndex := 2;

     q := OpenRS('SELECT * FROM tbl_formula_subdet WHERE kode = ''%s'' AND nama = ''%s'' AND kode_brg = ''%s''',
      [cxsKode.Text, cxtNamaFormula2.Text, nxGrd.Cell[nxColKode.Index, ARow].AsString]);

     cxlNamaBrg.EditValue := nxGrd.Cell[nxColKode.Index, ARow].AsString;
     cxtKodeBahan.Text :=nxGrd.Cell[nxColKode.Index, ARow].AsString;
     q.Close ;

     cxTblaLT.DataController.RecordCount := 0;
      q := OpenRS('SELECT * FROM tbl_alternatif where kode =''%s'' and kode_bahan=''%s'' and formula=''%s''',[cxtKode.Text,cxtKodeBahan.Text,cxtNamaFormula2.Text]) ;
    while not q.Eof do begin
      with cxTblaLT.DataController do begin
       j := AppendRecord ;
       Values[j, cxColkode.Index] := q.FieldByName('kode_alt').AsString ;
       Values[j, cxColDeskripsi1.Index] := q.FieldByName('kode_alt').AsString ;
      end;
      q.Next;
    end;
    q.Close;
  end;

  
end;

procedure TFrmMstFormula.btnTmbhNotClick(Sender: TObject);
var
  i: Integer;
  tbl: TZTable;
begin
  {
  if Trim(cxtNotes.Text) <> '' then begin
    nxGrdNotes.AddRow();
    i := nxGrdNotes.LastAddedRow;
    nxGrdNotes.Cell[1,i].AsString := Trim(cxtNotes.Text);

    tbl := OpenTbl('tbl_menu_notes');
    tbl.Insert;
    tbl.FieldByName('kode').AsString := Trim(cxtKode.Text);
    tbl.FieldByName('notes').AsString := Trim(cxtNotes.Text);
    tbl.Post;

    cxtNotes.Text := '';
  end;
  }
end;

procedure TFrmMstFormula.nxGrdNotesCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
var
  i: Integer;
  sKode, sNotes: string;
begin
  {
  if Trim(cxtKode.Text) <> '' then begin
    if ACol = 2 then begin
      i := unTools.QBox(self, 'Hapus notes ?', 'Hapus');
      if i = IDYES then begin
        try
          sKode := Trim(cxtKode.Text);
          //sNotes := nxGrdNotes.Cell[1, ARow].AsString;
          dm.zConn.StartTransaction;
          dm.zConn.ExecuteDirect(
            Format('DELETE FROM tbl_menu_notes WHERE kode = ''%s'' ' +
              'AND notes = ''%s''',
            [sKode, sNotes]));
          dm.zConn.Commit;
          //nxGrdNotes.DeleteRow(ARow);
          //nxIncColNotes.Refresh();
        except
          on E: Exception do begin
            MsgBox('Error: ' + E.Message);
            dm.zConn.Rollback;
          end;
        end;
      end;
    end;
  end;
  }
end;

procedure TFrmMstFormula.btnTambahClick(Sender: TObject);
begin
  inherited;
  Self.Jenis := 'tambah';
  cxChkAktif.Checked := True;
  cxlDeskripsi.SetFocus;
end;

procedure TFrmMstFormula.cxlDeskripsiPropertiesEditValueChanged(
  Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  try
    if cxlDeskripsi.Text <> '' then begin
      q := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',
        [zqrKodeHead.FieldByName('kode').AsString]);
      cxsKode.Value := q.FieldByName('kode').AsString;
      cxtKode.Text := q.FieldByName('kode').AsString;
      cxsStok.Value := q.FieldByName('stok').AsFloat;
      cxtKategori.Text := q.FieldByName('kategori').AsString;
      q.Close;

      nxGrdF.ClearRows;
      q := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s''',
        [zqrKodeHead.FieldByName('kode').AsString]);
      while not q.Eof do begin
        i := nxGrdF.AddRow();
        nxGrdF.Cell[nxColNamaF.Index,i].AsString := q.FieldByName('nama').AsString;
        q.Next;
      end;  
      q.Close;
      
    end;
  except
  end;
end;

procedure TFrmMstFormula.btnCariBrgClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q, qc: TZQuery;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    qc := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = %s', [fKode.AsString]);
    if not qc.IsEmpty then begin
      MsgBox('Formula untuk kode barang ini sudah ada.');
      qc.Close;
      Abort;
    end;
    qc.Close;

    cxlDeskripsi.EditValue := fKode.AsInteger;

    q := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',
      [fKode.AsString]);
    cxsKode.Value := q.FieldBYName('kode').AsInteger;
    cxsStok.Value := GetStokGudang(fKode.AsString, 'G01');  
    q.Close;
  end;

end;

procedure TFrmMstFormula.btnCari2Click(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;

  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    q := OpenRS('SELECT deskripsi, kode, satuan FROM tbl_barang WHERE kode = ''%s''',[fKode.AsString]);
    cxlDeskripsiDet.Text := q.FieldByName('deskripsi').AsString;
    cxtKodeDet.Text := q.FieldBYName('kode').AsString;
    cxtSatuan.Text := q.FieldByName('satuan').AsString;
    q.Close;
  end;

end;

procedure TFrmMstFormula.Button1Click(Sender: TObject);
var
  tbl: TZTable;
  q: TZQuery;
  i, id: integer;
begin
  if Trim(cxtNamaFormula.Text) <> '' then begin
  
    q := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s'' AND nama = ''%s''',
      [cxtKode.Text, cxtNamaFormula.Text]);
    if not q.IsEmpty then begin
      MsgBox('Nama formula sudah ada.');
    end
    else begin
      tbl := OpenTbl('tbl_formula_det');
      try
        dm.zConn.StartTransaction;
        tbl.Insert;
        tbl.FieldByName('kode').AsString := cxtKode.Text;
        tbl.FieldByName('nama').AsString := Trim(cxtNamaFormula.Text);
        tbl.Post;
        dm.zConn.Commit;

        q := OpenRS('SELECT MAX(id) id FROM tbl_formula_det');
        id := q.FieldByName('id').AsInteger;
        q.Close;

        i := nxGrdF.AddRow();
        nxGrdF.Cell[nxColNamaF.Index,i].AsString := Trim(cxtNamaFormula.Text);
        nxGrdF.Cell[nxColLD.Index,i].AsString := 'Detail';
        nxGrdF.Cell[nxColIndex.Index,i].AsString := IntToStr(id);
        cxtNamaFormula.Text := '';

      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;

end;

procedure TFrmMstFormula.nxGrdFCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  if ACol = nxColNamaF.Index then begin
    
  end
  else if ACol = nxColHapus2.Index then begin
    if ARow > -1 then begin
      dm.zConn.ExecuteDirect(
        Format('DELETE FROM tbl_formula_det WHERE kode = ''%s'' AND nama = ''%s''',
        [cxtKode.Text, nxGrdF.Cell[nxColNamaF.Index, ARow].AsString])
      );
      dm.zConn.ExecuteDirect(
        Format('DELETE FROM tbl_formula_subdet WHERE kode = ''%s'' AND nama = ''%s''',
        [cxtKode.Text, nxGrdF.Cell[nxColNamaF.Index, ARow].AsString])
      );
      nxGrdF.DeleteRow(ARow);
      nxGrd.ClearRows;
      cxtNamaFormula2.Text := '';
      cxlDeskripsiDet.Text := '';
      cxsKodeDet.Value := 0;
      cxsQty.Value := 0;
      cxlDibuka.Text := '';
      cxlDibatasi.Text := '';

      MsgBox('Detail formula berhasil dihapus.');
    end;
  end;
end;

procedure TFrmMstFormula.nxGrdFCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  q, qd: TZQuery;
  i: integer;
begin
  if ACol = nxColLD.Index then begin

    // cek apakah formula sudah disimpan
    q := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s'' AND nama = ''%s''',
      [cxtKode.Text, nxGrdF.Cell[nxColNamaF.Index, ARow].AsString]);
    if q.IsEmpty then begin
      MsgBox('Formula ini belum disimpan.' + Chr(10) + CHr(13) +
        'Untuk melakukan pengeditan detail, formula harus disimpan dahulu.');
      q.Close;
      Abort;
    end;
    q.Close;

    nxGrd.ClearRows;
    cxlDeskripsiDet.Text := '';
    cxsKodeDet.Text := '';
    cxsQty.Value := 0;
    cxtSatuan.Text := '';

    pgDet.ActivePageIndex := 1;
    cxtNamaFormula2.Text := nxGrdF.Cell[nxColNamaF.Index,ARow].AsString;
    cxtID.Text := nxGrdF.Cell[nxColIndex.Index,Arow].AsString;

    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_formula_subdet a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.nama = ''%s'' ' +
      'AND a.kode = ''%s''',
      [cxtNamaFormula2.Text, cxtKode.Text]);
    while not q.Eof do begin
      i := nxGrd.AddRow();
      nxGrd.Cell[nxColKode.Index,i].AsString := q.FieldByName('kode_brg').AsString;
      nxGrd.Cell[nxColDeskripsi.Index,i].AsString := q.FieldByName('deskripsi').AsString;
      nxGrd.Cell[nxColQty.Index,i].AsFloat := q.FieldByName('qty').AsFloat;
      nxGrd.Cell[nxColSatuan.Index,i].AsString := q.FieldByName('satuan').AsString;
      nxGrd.Cell[nxColDibatasi.Index, i]. AsString := q.FieldByName('dibatasi').AsString;
      nxGrd.Cell[nxColDibuka.Index, i].AsString := q.FieldByName('dibuka').AsString;
      nxGrd.Cell[nxColJenisIsian.Index, i].AsString := q.FieldByName('jns').AsString;
      nxGrd.Cell[nxColPersen.Index, i].AsFloat := q.FieldByName('persen').AsFloat;

      qd := OpenRS('SELECT * FROM tbl_mat_saran WHERE kode = ''%s'' AND kode_brg = ''%s'' AND nama_formula = ''%s''',
        [cxtKode.Text, q.FieldByName('kode_brg').AsString, cxtNamaFormula2.Text]);
      if not q.IsEmpty then begin
        nxGrd.Cell[nxColLayer1.Index, i].AsFloat := qd.FieldByName('layer1').AsFloat;
        nxGrd.Cell[nxColLayer2.Index, i].AsFloat := qd.FieldByName('layer2').AsFloat;
        nxGrd.Cell[nxColLayer3.Index, i].AsFloat := qd.FieldByName('layer3').AsFloat;
        nxGrd.Cell[nxColLayer4.Index, i].AsFloat := qd.FieldByName('layer4').AsFloat;
        nxGrd.Cell[nxColLayer5.Index, i].AsFloat := qd.FieldByName('layer5').AsFloat;
        nxGrd.Cell[nxColLayer6.Index, i].AsFloat := qd.FieldByName('layer6').AsFloat;
        nxGrd.Cell[nxColLayer7.Index, i].AsFloat := qd.FieldByName('layer7').AsFloat;
        nxGrd.Cell[nxColLayer8.Index, i].AsFloat := qd.FieldByName('layer8').AsFloat;
        nxGrd.Cell[nxColMLayer1.Index, i].AsFloat := qd.FieldByName('mtp_layer1').AsFloat;
        nxGrd.Cell[nxColMLayer2.Index, i].AsFloat := qd.FieldByName('mtp_layer2').AsFloat;
        nxGrd.Cell[nxColMLayer3.Index, i].AsFloat := qd.FieldByName('mtp_layer3').AsFloat;
        nxGrd.Cell[nxColMLayer4.Index, i].AsFloat := qd.FieldByName('mtp_layer4').AsFloat;
        nxGrd.Cell[nxColMLayer5.Index, i].AsFloat := qd.FieldByName('mtp_layer5').AsFloat;
        nxGrd.Cell[nxColMLayer6.Index, i].AsFloat := qd.FieldByName('mtp_layer6').AsFloat;
        nxGrd.Cell[nxColMLayer7.Index, i].AsFloat := qd.FieldByName('mtp_layer7').AsFloat;
        nxGrd.Cell[nxColMLayer8.Index, i].AsFloat := qd.FieldByName('mtp_layer8').AsFloat;
      end;
      qd.Close;

      q.Next;
    end;
    q.Close;

  end;

end;

procedure TFrmMstFormula.pgDetChange(Sender: TObject);
begin
  inherited;
  if cxtNamaFormula2.Text = '' then
    pg.ActivePageIndex := 0;
end;

procedure TFrmMstFormula.pgDetChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  if Trim(cxtNamaFormula2.Text) = '' then
    AllowChange := False; 
end;

procedure TFrmMstFormula.cxlDeskripsiDetPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if Trim(cxlDeskripsiDet.Text) <> '' then begin
      cxsKodeDet.Value := zqDet.FieldByName('kode').AsString;
      cxtKodeDet.Text := zqDet.FieldByName('kode').AsString;
      cxtSatuan.Text := zqDet.FieldByName('satuan').AsString;
      cxsQty.SelectAll;
      cxsQty.SetFocus;
    end;
  except
  end;

end;

procedure TFrmMstFormula.FormShow(Sender: TObject);
var
  q, qb, q_det: TZQuery;
  i: integer;
begin
  inherited;
  if Self.jenis = 'edit' then begin
    if mKode <> '' then begin
      if Self.Jenis = 'edit' then begin

        btnEditClick(nil);

        pnlTengah.Enabled := True;
        cxtStat.Caption := 'EDIT';
        cxtStat.Visible := True;
        pg.ActivePageIndex := 1;

        q := OpenRS('SELECT * FROM tbl_formula_head WHERE kode_brg = ''%s''',[mKode]);

        cxlDeskripsi.EditValue := q.FieldByName('kode_brg').AsString;
        //cxsKode.Value := q.FieldByName('kode_brg').AsString;
        cxtKode.Text := q.FieldByName('kode_brg').AsString;
        cxlKategori.Text := q.FieldByName('kategori').AsString;
        cxtKeterangan.Text := q.FieldByName('keterangan').AsString;

        qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''', [mKode]);
        cxsStok.Value := qb.FieldByName('stok').AsFloat;
        qb.Close;

        if q.FieldByName('f_aktif').AsInteger = 1 then
          cxChkAktif.Checked := True
        else
          cxChkAktif.Checked := False;
        q.Close;

        q_det := OpenRS('SELECT * FROM tbl_formula_det WHERE kode = ''%s''',[mKode]);
        nxGrdF.ClearRows;
        while not q_det.Eof do begin
          i := nxGrdF.AddRow();
          nxGrdF.Cell[nxColNamaF.Index,i].AsString := q_det.FieldByName('nama').AsString;
          nxGrdF.Cell[nxColIndex.Index,i].AsString := q_det.FieldByName('id').AsString;
          nxGrdF.Cell[nxColLD.Index,i].AsString := 'Detail';
          q_det.Next;
        end;

        pg.ActivePageIndex := 0;
        cxlDeskripsi.SetFocus;
      end;
    end;
  end;
end;

procedure TFrmMstFormula.btnKeluarClick(Sender: TObject);
begin
  btnBatalClick(nil);
  inherited;
end;

procedure TFrmMstFormula.btnEditClick(Sender: TObject);
begin
  inherited;
  Self.Jenis := 'edit';
end;

procedure TFrmMstFormula.btnTambahAltClick(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  if cxlDeskripsi2.Text <> '' then begin
    q := OpenRS('SELECT * FROM tbl_formula_detalt WHERE kode_induk = %s AND nama = ''%s'' AND kode_brg = %s AND kode_brg_alt = %s',
      [
        cxsKode.Text,
        cxtNamaFormula2.Text,
        nxGrd.Cell[nxColKode.Index, nxGrd.SelectedRow].AsString,
        cxlDeskripsi2.EditValue
      ]
    );

    if not q.IsEmpty then begin
      MsgBox('Kode barang alternatif ini sudah ada.');
      q.Close;
    end
    else begin
      q.Insert;
      q.FieldByName('kode_induk').AsString := cxsKode.Text;
      q.FieldByName('nama').AsString := cxtNamaFormula2.Text;
      q.FieldByName('kode_brg').AsString := nxGrd.Cell[nxColKode.Index, nxGrd.SelectedRow].AsString;
      q.FieldByName('kode_brg_alt').Value := cxlDeskripsi2.EditValue;
      q.Post;
      q.Close;

      i := nxGrd2.AddRow();
      nxGrd2.Cell[nxColKodeAlt.Index, i].AsString := cxlDeskripsi2.EditValue;
      nxGrd2.Cell[nxColDeskAlt.Index, i].AsString := cxlDeskripsi2.Text;
    end;
  end;

end;

procedure TFrmMstFormula.btnCari3Click(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
begin
  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;

    cxlDeskripsi2.EditValue := fKode.AsInteger;
  end;
end;

procedure TFrmMstFormula.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  q: TZQuery;
  i: Integer;
begin
  inherited;
  {nxGrd2.ClearRows;
  if nxGrd.Cell[nxColKode.Index, AROw].AsString <> '' then begin
    cxtDeskAlt.Text := nxGrd.Cell[nxColDeskripsi.Index, ARow].AsString;
    q := OpenRS('SELECT a.*, b.deskripsi FROM tbl_formula_detalt a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg_alt = b.kode ' +
      'WHERE kode_induk = %s ' +
      'AND nama = ''%s'' ' +
      'AND kode_brg = ''%s''',
      [
        cxsKode.Text,
        cxtNamaFormula2.Text,
        nxGrd.Cell[nxColKode.Index, ARow].AsString
      ]
    );
    if not q.IsEmpty then begin
      while not q.Eof do begin
        i := nxGrd2.AddRow();
        nxGrd2.Cell[nxColKodeAlt.Index, i].AsString := q.FieldByName('kode_brg_alt').AsString;
        nxGrd2.Cell[nxColDeskAlt.Index, i].AsString := q.FieldByName('deskripsi').AsString;
        nxGrd2.Cell[nxColUrutan.Index, i].AsString := q.FieldByName('no_urut').AsString;
        q.Next;
      end;
    end;
    q.Close;
  end;      }
end;

procedure TFrmMstFormula.nxGrd2CellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  inherited;
  if Acol = nxColHapusAlt.Index then begin
    try
      dm.zConn.ExecuteDirect(Format(
        'DELETE FROM tbl_formula_detalt WHERE kode_induk = %s AND nama = ''%s'' ' +
        'AND kode_brg = %s AND kode_brg_alt = %s',
        [
          cxsKode.Text,
          cxtNamaFormula2.Text,
          nxGrd.Cell[nxColKode.Index, nxGrd.SelectedRow].AsString,
          nxGrd2.Cell[nxColKodeAlt.Index, ARow].AsString
        ]
      ));
      nxGrd2.DeleteRow(ARow);
    except
    end;
  end;
end;

procedure TFrmMstFormula.nxGrd2AfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  sql: String;
begin
  inherited;
  if ACol = nxColUrutan.Index then begin
    if nxGrd2.Cell[nxColUrutan.Index, ARow].AsInteger < 1 then begin
      MsgBox('Nomer urutan salah.');
    end
    else begin
      sql := Format('UPDATE tbl_formula_detalt SET no_urut = %s ' +
        'WHERE kode_induk = %s AND nama = ''%s'' AND kode_brg = %s AND kode_brg_alt = %s',
        [
          nxGrd2.Cell[nxColUrutan.Index, ARow].AsString,
          cxsKode.Text,
          cxtNamaFormula2.Text,
          nxGrd.Cell[nxColKode.Index, nxGrd.SelectedRow].AsString,
          nxGrd2.Cell[nxColKodeAlt.Index, ARow].AsString
        ]
      );
      try
        dm.zConn.ExecuteDirect(sql);
      except
      end;
    end;
  end;
end;

procedure TFrmMstFormula.cxs_MS_OutPropertiesChange(Sender: TObject);
begin
  try
    cxs_MS_Total.Value := cxs_MS_Layer1.Value +  cxs_MS_Layer2.Value +  cxs_MS_Layer3.Value +   cxs_MS_Layer4.Value +
      cxs_MS_Layer5.Value +  cxs_MS_Layer6.Value +  cxs_MS_Layer7.Value + cxs_MS_Layer8.Value;

    cxs_MS_PLayer1.Value := cxs_MS_Layer1.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer2.Value := cxs_MS_Layer2.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer3.Value := cxs_MS_Layer3.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer4.Value := cxs_MS_Layer4.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer5.Value := cxs_MS_Layer5.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer6.Value := cxs_MS_Layer6.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer7.Value := cxs_MS_Layer7.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer8.Value := cxs_MS_Layer8.Value / cxs_MS_Total.Value * 100;

      cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsOutPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsMidPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsInPropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  try
   cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsPersenPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  try
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxTblaLTDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColDeskripsi1.Index then begin
    try
      cxTblaLT.BeginUpdate;
      ADataController.Values[ARecordIndex, cxColKode.Index] :=
        ADataController.Values[ARecordIndex, cxColDeskripsi1.Index];

    finally
      cxTblaLT.EndUpdate;
    end;
  end
end;

procedure TFrmMstFormula.btnSimpanAltClick(Sender: TObject);
var
  z : TZQuery ;
  i : Integer ;
begin
  inherited;
   dm.zConn.ExecuteDirect(
    Format('DELETE FROM tbl_alternatif WHERE kode = ''%s'' and kode_bahan=''%s'' AND formula=''%s''',[cxtKode.text,cxtKodeBahan.Text,cxtNamaFormula2.Text ]));
   z := OpenRS('SELECT * FROM tbl_alternatif WHERE kode = ''%s'' and kode_bahan=''%s''  AND formula=''%s''',[cxtKode.text,cxtKodeBahan.Text,cxtNamaFormula2.Text ]);
   with cxTblaLT.DataController do begin
    for i := 0 to RecordCount - 1 do begin
      z.Insert;
      z.FieldByName('kode').Value := cxtKode.Text;
      z.FieldByName('kode_bahan').Value := cxtKodeBahan.Text;
      z.FieldByName('kode_alt').Value := Values[i, cxColKode.Index];
       z.FieldByName('formula').Value := cxtNamaFormula2.Text;
      z.Post;
    end;
  end;
  z.Close ;
   MsgBox('Alternatif Formula sudah disimpan.');
end;

procedure TFrmMstFormula.cxsLayer4PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsLayer5PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsLayer6PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsLayer7PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxsLayer8PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
try
  cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxs_MS_Layer4PropertiesChange(Sender: TObject);
begin
  inherited;
 try
    cxs_MS_Total.Value := cxs_MS_Layer1.Value +  cxs_MS_Layer2.Value +  cxs_MS_Layer3.Value +   cxs_MS_Layer4.Value +
      cxs_MS_Layer5.Value +  cxs_MS_Layer6.Value +  cxs_MS_Layer7.Value + cxs_MS_Layer8.Value;

    cxs_MS_PLayer1.Value := cxs_MS_Layer1.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer2.Value := cxs_MS_Layer2.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer3.Value := cxs_MS_Layer3.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer4.Value := cxs_MS_Layer4.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer5.Value := cxs_MS_Layer5.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer6.Value := cxs_MS_Layer6.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer7.Value := cxs_MS_Layer7.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer8.Value := cxs_MS_Layer8.Value / cxs_MS_Total.Value * 100;

      cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxs_MS_Layer5PropertiesChange(Sender: TObject);
begin
  inherited;
 try
    cxs_MS_Total.Value := cxs_MS_Layer1.Value +  cxs_MS_Layer2.Value +  cxs_MS_Layer3.Value +   cxs_MS_Layer4.Value +
      cxs_MS_Layer5.Value +  cxs_MS_Layer6.Value +  cxs_MS_Layer7.Value + cxs_MS_Layer8.Value;

    cxs_MS_PLayer1.Value := cxs_MS_Layer1.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer2.Value := cxs_MS_Layer2.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer3.Value := cxs_MS_Layer3.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer4.Value := cxs_MS_Layer4.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer5.Value := cxs_MS_Layer5.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer6.Value := cxs_MS_Layer6.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer7.Value := cxs_MS_Layer7.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer8.Value := cxs_MS_Layer8.Value / cxs_MS_Total.Value * 100;

      cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxs_MS_Layer6PropertiesChange(Sender: TObject);
begin
  inherited;
 try
    cxs_MS_Total.Value := cxs_MS_Layer1.Value +  cxs_MS_Layer2.Value +  cxs_MS_Layer3.Value +   cxs_MS_Layer4.Value +
      cxs_MS_Layer5.Value +  cxs_MS_Layer6.Value +  cxs_MS_Layer7.Value + cxs_MS_Layer8.Value;

    cxs_MS_PLayer1.Value := cxs_MS_Layer1.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer2.Value := cxs_MS_Layer2.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer3.Value := cxs_MS_Layer3.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer4.Value := cxs_MS_Layer4.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer5.Value := cxs_MS_Layer5.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer6.Value := cxs_MS_Layer6.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer7.Value := cxs_MS_Layer7.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer8.Value := cxs_MS_Layer8.Value / cxs_MS_Total.Value * 100;

      cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxs_MS_Layer7PropertiesChange(Sender: TObject);
begin
  inherited;
 try
    cxs_MS_Total.Value := cxs_MS_Layer1.Value +  cxs_MS_Layer2.Value +  cxs_MS_Layer3.Value +   cxs_MS_Layer4.Value +
      cxs_MS_Layer5.Value +  cxs_MS_Layer6.Value +  cxs_MS_Layer7.Value + cxs_MS_Layer8.Value;

    cxs_MS_PLayer1.Value := cxs_MS_Layer1.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer2.Value := cxs_MS_Layer2.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer3.Value := cxs_MS_Layer3.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer4.Value := cxs_MS_Layer4.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer5.Value := cxs_MS_Layer5.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer6.Value := cxs_MS_Layer6.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer7.Value := cxs_MS_Layer7.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer8.Value := cxs_MS_Layer8.Value / cxs_MS_Total.Value * 100;

      cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

procedure TFrmMstFormula.cxs_MS_Layer8PropertiesChange(Sender: TObject);
begin
  inherited;
 try
    cxs_MS_Total.Value := cxs_MS_Layer1.Value +  cxs_MS_Layer2.Value +  cxs_MS_Layer3.Value +   cxs_MS_Layer4.Value +
      cxs_MS_Layer5.Value +  cxs_MS_Layer6.Value +  cxs_MS_Layer7.Value + cxs_MS_Layer8.Value;

    cxs_MS_PLayer1.Value := cxs_MS_Layer1.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer2.Value := cxs_MS_Layer2.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer3.Value := cxs_MS_Layer3.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer4.Value := cxs_MS_Layer4.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer5.Value := cxs_MS_Layer5.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer6.Value := cxs_MS_Layer6.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer7.Value := cxs_MS_Layer7.Value / cxs_MS_Total.Value * 100;
    cxs_MS_PLayer8.Value := cxs_MS_Layer8.Value / cxs_MS_Total.Value * 100;

      cxsPersen.EditValue := ((cxsLayer1.EditValue/100)*cxs_MS_PLayer1.EditValue)+((cxsLayer2.EditValue/100)*cxs_MS_PLayer2.EditValue)+((cxsLayer3.EditValue/100)*cxs_MS_PLayer3.EditValue) +
                          ((cxsLayer4.EditValue/100)*cxs_MS_PLayer4.EditValue) + ((cxsLayer5.EditValue/100)*cxs_MS_PLayer5.EditValue) + ((cxsLayer6.EditValue/100)*cxs_MS_PLayer6.EditValue) +
                          ((cxsLayer7.EditValue/100)*cxs_MS_PLayer7.EditValue) + ((cxsLayer8.EditValue/100)*cxs_MS_PLayer8.EditValue);
  cxsQty.EditValue := ((cxsPersen.EditValue / 100) * cxsBeratBOM.Value);
  except
  end;
end;

end.
