unit unFrmTplMaster2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ImgList, ComCtrls, ToolWin,cxPC, cxContainer,
  Menus, StdCtrls, cxButtons, cxLabel, ExtCtrls, cxTextEdit, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxMemo, cxNavigator, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmTplMaster2 = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zGrid: TZQuery;
    ds1: TDataSource;
    cxGrid1DBTableView1Kode: TcxGridDBColumn;
    cxGrid1DBTableView1NamaBarang: TcxGridDBColumn;
    pnlAtas: TPanel;
    lblJudul: TLabel;
    cxtStat: TcxLabel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    cxbBaru: TcxButton;
    cxbEdit: TcxButton;
    cxbHapus: TcxButton;
    cxbSimpan: TcxButton;
    cxbBatal: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxtKode: TcxTextEdit;
    cxtDescription: TcxTextEdit;
    cxlCustomer: TcxLookupComboBox;
    cxtFungsi: TcxTextEdit;
    zCust: TZQuery;
    ds2: TDataSource;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cxtAksesoris: TcxTextEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cxtBentukProduk: TcxTextEdit;
    cxtDesainPrinting: TcxTextEdit;
    cxtWarnaFilm: TcxTextEdit;
    cxtVisualProperty: TcxTextEdit;
    cxtSurfaceProperty: TcxTextEdit;
    cxcmbBase: TcxComboBox;
    cxtSheet: TcxComboBox;
    cxsBerat: TcxSpinEdit;
    cxsTebal: TcxSpinEdit;
    cxsBeratKotor: TcxSpinEdit;
    cxsBeratBersih: TcxSpinEdit;
    cxsBeratMeter: TcxSpinEdit;
    cxsBeratJadi: TcxSpinEdit;
    cxsLebarBuka: TcxSpinEdit;
    cxsLebarJadi: TcxSpinEdit;
    cxsPanjang: TcxSpinEdit;
    cxsPanjangJadi: TcxSpinEdit;
    cxsLebarTube: TcxSpinEdit;
    cxsPanjangPlong: TcxSpinEdit;
    cxsLebarPlong: TcxSpinEdit;
    cxsTopFlod: TcxSpinEdit;
    cxsGusset: TcxSpinEdit;
    cxsLebarHandle: TcxSpinEdit;
    cxsBeratAks: TcxSpinEdit;
    cxsPanjangAks: TcxSpinEdit;
    cxsTebalAks: TcxSpinEdit;
    cxsAirHole: TcxSpinEdit;
    cxsLebarAks: TcxSpinEdit;
    cxsCut: TcxSpinEdit;
    cxGroupBox4: TcxGroupBox;
    Label33: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    cxsMinTSTD: TcxSpinEdit;
    cxsMaxTSTD: TcxSpinEdit;
    cxsMinTSMD: TcxSpinEdit;
    cxsMaxTSMD: TcxSpinEdit;
    cxsMinTETD: TcxSpinEdit;
    cxsMaxTETD: TcxSpinEdit;
    cxsMinTEMD: TcxSpinEdit;
    cxsMaxTEMD: TcxSpinEdit;
    cxsMinTearTD: TcxSpinEdit;
    cxsMaxTearTD: TcxSpinEdit;
    cxsMinTearMD: TcxSpinEdit;
    cxsMaxTearMD: TcxSpinEdit;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label52: TLabel;
    cxsMinPuncture: TcxSpinEdit;
    cxsMaxPuncture: TcxSpinEdit;
    cxsMinOpasitas: TcxSpinEdit;
    cxsMaxOpasitas: TcxSpinEdit;
    cxsMinDrat: TcxSpinEdit;
    cxsMaxDrat: TcxSpinEdit;
    cxtAcuan: TcxTextEdit;
    cxtCritical: TcxMemo;
    cxTabSheet3: TcxTabSheet;
    cxbRouting: TcxButton;
    Label49: TLabel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    zqrRouting: TZQuery;
    ds3: TDataSource;
    cxGrid2DBTableView1Kode_Routing: TcxGridDBColumn;
    cxGrid2DBTableView1Description: TcxGridDBColumn;
    cxGrid2DBTableView1LebarTube: TcxGridDBColumn;
    cxGrid2DBTableView1MeterRoll: TcxGridDBColumn;
    cxGrid2DBTableView1TreatLuar: TcxGridDBColumn;
    cxGrid2DBTableView1TreatDalam: TcxGridDBColumn;
    cxGrid2DBTableView1PolaTreat1: TcxGridDBColumn;
    cxGrid2DBTableView1PolaTreat2: TcxGridDBColumn;
    cxGrid2DBTableView1CoreType: TcxGridDBColumn;
    cxGrid2DBTableView1ShiftingBobin: TcxGridDBColumn;
    cxGrid2DBTableView1Core: TcxGridDBColumn;
    cxGrid2DBTableView1Sisi: TcxGridDBColumn;
    cxGrid2DBTableView1Register: TcxGridDBColumn;
    cxGrid2DBTableView1Warna: TcxGridDBColumn;
    cxGrid2DBTableView1Kiri: TcxGridDBColumn;
    cxGrid2DBTableView1Kanan: TcxGridDBColumn;
    cxGrid2DBTableView1Atas: TcxGridDBColumn;
    cxGrid2DBTableView1Bawah: TcxGridDBColumn;
    cxGrid2DBTableView1Lebar: TcxGridDBColumn;
    cxGrid2DBTableView1Panjang: TcxGridDBColumn;
    cxGrid2DBTableView1Toleransi: TcxGridDBColumn;
    cxGrid2DBTableView1Gulungan: TcxGridDBColumn;
    cxGrid2DBTableView1ArahFilm: TcxGridDBColumn;
    cxGrid2DBTableView1Jml_DesianMD: TcxGridDBColumn;
    cxGrid2DBTableView1MD: TcxGridDBColumn;
    cxGrid2DBTableView1Jml_DesianTD: TcxGridDBColumn;
    cxGrid2DBTableView1TD: TcxGridDBColumn;
    cxGrid2DBTableView1Jml_Cylinder: TcxGridDBColumn;
    cxGrid2DBTableView1Circum: TcxGridDBColumn;
    cxGrid2DBTableView1CDiameter: TcxGridDBColumn;
    cxGrid2DBTableView1CPanjang: TcxGridDBColumn;
    cxGrid2DBTableView1JarakLas: TcxGridDBColumn;
    cxGrid2DBTableView1PanjangLas: TcxGridDBColumn;
    cxGrid2DBTableView1LasAtas: TcxGridDBColumn;
    cxGrid2DBTableView1LasBawah: TcxGridDBColumn;
    cxGrid2DBTableView1Cylinder: TcxGridDBColumn;
    cxGrid2DBTableView1Remark: TcxGridDBColumn;
    cxGrid2DBTableView1Id: TcxGridDBColumn;
    procedure KunciForm;
    procedure NewForm;
    procedure FormShow(Sender: TObject);
    procedure cxbBaruClick(Sender: TObject);
    procedure cxbBatalClick(Sender: TObject);
    procedure cxbSimpanClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxbHapusClick(Sender: TObject);
    procedure cxbEditClick(Sender: TObject);
    procedure cxbRoutingClick(Sender: TObject);
    function CekTabOpen(sCaption: string): Boolean;
    procedure cxGrid2DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMasterItem: TFrmTplMaster2;

implementation

uses unDm, unTools, unFrmRouting, unFrmUtama;

{$R *.dfm}

{ TFrmTplMaster2 }


{ TFrmTplMaster2 }

function TFrmTplMaster2.CekTabOpen(sCaption: string): Boolean;
var
  i: Integer;
  f: boolean;
  ts: TcxTabSheet ;
begin
  f := False;
  for i := 0 to frmUtama.pgMain.TabCount - 1 do begin
    if sCaption = frmUtama.pgMain.Tabs[i].Caption then begin
      ts := frmUtama.pgMain.Pages[i];
      f := True;
      Break;
    end;
  end;

  if f then begin
    frmUtama.pgMain.ActivePage := ts;
  end;

  Result := f;

end;

procedure TFrmTplMaster2.KunciForm;
var
  i : Integer;
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
      if Components[i] is TcxMemo then
        (Components[i] as TcxMemo).Text := '';
 end;

 cxbBaru.Enabled := True;
 cxbSimpan.Enabled := False;
 cxbEdit.Enabled := True;
 cxbHapus.Enabled := True;
 cxbBatal.Enabled := False;

end;

procedure TFrmTplMaster2.FormShow(Sender: TObject);
begin
  KunciForm ;
end;

procedure TFrmTplMaster2.cxbBaruClick(Sender: TObject);
begin
   NewForm;
   cxtStat.Caption := 'Tambah Baru'
end;

procedure TFrmTplMaster2.NewForm;
var
  i : Integer;
begin

 for i:= 0 to ComponentCount-1 do
 begin
   if Components[i] is TcxGroupBox then
        (Components[i] as TcxGroupBox).Enabled := True;
      if Components[i] is TcxTextEdit then
        (Components[i] as TcxTextEdit).Text := '';
      if Components[i] is TcxSpinEdit then
        (Components[i] as TcxSpinEdit).Value := 0;
        if Components[i] is TcxLookupComboBox then
        (Components[i] as TcxLookupComboBox).Text := '';
         if Components[i] is TcxMemo then
        (Components[i] as TcxMemo).Text := '';
 end;

 cxtKode.SetFocus;
 cxbBaru.Enabled := False;
 cxbSimpan.Enabled := True;
 cxbEdit.Enabled := false;
 cxbHapus.Enabled := False;
 cxbBatal.Enabled := True;

 end;
 
procedure TFrmTplMaster2.cxbBatalClick(Sender: TObject);
begin
   KunciForm ;
   cxtStat.Caption := '';
end;



procedure TFrmTplMaster2.cxbSimpanClick(Sender: TObject);
var
  q : TZQuery ;
Begin
  if cxtKode.Text = '' then begin
  MsgBox('Kode Harus Diisi.');
  cxtKode.SetFocus ;
  end
  else begin
  if cxtStat.Caption = 'Tambah Baru' then begin

    q := OpenRS('SELECT * FROM tbl_item WHERE Id_Item =''%s''',
    [cxtKode.Text] );
    if not q.IsEmpty then begin
    MsgBox('Kode Ini Sudah Ada');
    cxtKode.SetFocus ;
   end
   else
    q.Insert;
    with q do begin
      Insert;
      FieldByName('Id_Item').AsString       := cxtKode.Text ;
      FieldByName('Description').AsString   := cxtDescription.Text ;
      FieldByName('Id_Customer').AsString   := cxlCustomer.EditValue;
      FieldByName('Fungsi').AsString        := cxtFungsi.Text ;
      FieldByName('BaseMaterial').AsString  := cxcmbBase.Text ;
      FieldByName('Sheet_Tube').AsString    := cxtSheet.Text ;
      FieldByName('BeratJenis').AsFloat     := cxsBerat.Value ;
      FieldByName('Tebal').AsFloat          := cxsTebal.Value ;
      FieldByName('BeratKotor').AsFloat     := cxsBeratKotor.Value ;
      FieldByName('BeratBersih').AsFloat    := cxsBeratBersih.Value;
      FieldByName('Berat_Meter').AsFloat    := cxsBeratMeter.Value ;
      FieldByName('BeratFG').AsFloat        := cxsBeratJadi.Value;
      FieldByName('LebarBuka').AsFloat      := cxsLebarBuka.Value;
      FieldByName('LebarJadi').AsFloat      := cxsLebarJadi.value;
      FieldByName('Panjang').AsFloat        := cxsPanjang.Value;
      FieldByName('PanjangJadi').AsFloat    := cxsPanjangJadi.Value;
      FieldByName('LebarTube').AsFloat      := cxsLebarTube.Value;
      FieldByName('PanjangPlong').AsFloat   := cxsPanjangPlong.Value;
      FieldByName('LebarPlong').asFloat     := cxsLebarPlong.Value;
      FieldByName('TopFold').AsFloat        := cxsTopFlod.Value;
      FieldByName('Gusset').AsFloat         := cxsGusset.Value;
      FieldByName('LebarHandle').AsFloat    := cxsLebarHandle.Value;
      FieldByName('Aksesoris').AsString     := cxtAksesoris.Text;
      FieldByName('BeratAksesoris').AsFloat := cxsBeratAks.Value;
      FieldByName('T_Aksesoris').AsFloat    := cxsTebalAks.Value;
      FieldByName('L_Aksesoris').AsFloat    := cxsLebarAks.Value;
      FieldByName('P_Aksesoris').AsFloat    := cxsPanjangAks.Value;
      FieldByName('AirHole').AsFloat        := cxsAirHole.Value;
      FieldByName('Cut').AsFloat            := cxsCut.Value ;
      FieldByName('BentukProduk').asString  := cxtBentukProduk.Text;
      FieldByName('DesainPrinting').AsString:= cxtDesainPrinting.Text ;
      FieldByName('WarnaFilm').AsString     := cxtWarnaFilm.Text;
      FieldByName('Visual').AsString        := cxtVisualProperty.Text ;
      FieldByName('Surface').AsString       := cxtSurfaceProperty.Text ;
      FieldByName('Min_STD').AsFloat        := cxsMinTSTD.Value;
      FieldByName('Max_STD').asFloat        := cxsMaxTSTD.Value;
      FieldByName('Min_SMD').AsFloat        := cxsMinTSMD.Value;
      FieldByName('Max_SMD').AsFloat        := cxsMaxTSMD.Value;
      FieldByName('Min_ETD').AsFloat        := cxsMinTETD.Value;
      FieldByName('Max_ETD').AsFloat        := cxsMaxTETD.Value;
      FieldByName('Min_EMD').asFloat        := cxsMinTEMD.Value;
      FieldByName('Max_EMD').asFloat        := cxsMaxTEMD.Value;
      FieldByName('Min_TearTD').AsFloat     := cxsMinTearTD.Value;
      FieldByName('Max_TearTD').AsFloat     := cxsMaxTearTD.Value;
      FieldByName('Min_TearMD').asFloat     := cxsMinTearMD.Value;
      FieldByName('Max_TearMD').asFloat     := cxsMaxTearMD.Value;
      FieldByName('Min_Resistance').asFloat := cxsMinPuncture.Value;
      FieldByName('Max_Resistance').asFloat := cxsMaxPuncture.Value;
      FieldByName('Min_Impact').asFloat     := cxsMinDrat.Value;
      FieldByName('Max_Impact').AsFloat     := cxsMaxDrat.Value;
      FieldByName('Min_Opasitas').asFloat   := cxsMinOpasitas.Value;
      FieldByName('Max_Opasitas').asFloat   := cxsMaxOpasitas.Value;
      FieldByName('Std_WarnaFilm').AsString := cxtWarnaFilm.Text;
      FieldByName('CriticalPoint').AsString := cxtCritical.Text;
      Post;
    end;
    q.Close;
    MsgBox('Data Sudah Disimpan');
    ds1.DataSet.Refresh;
    KunciForm;
    end
    else begin
   if cxtStat.Caption = 'Edit' then begin
    try
       q := OpenRS('SELECT * FROM tbl_item WHERE Id_Item = ''%s''',[cxTKode.Text]);
       q.Edit;
       with q do begin
        Edit;
        FieldByName('Description').AsString   := cxtDescription.Text ;
        FieldByName('Id_Customer').AsString   := cxlCustomer.EditValue;
        FieldByName('Fungsi').AsString        := cxtFungsi.Text ;
        FieldByName('BaseMaterial').AsString  := cxcmbBase.Text ;
        FieldByName('Sheet_Tube').AsString    := cxtSheet.Text ;
        FieldByName('BeratJenis').AsFloat     := cxsBerat.Value ;
        FieldByName('Tebal').AsFloat          := cxsTebal.Value ;
        FieldByName('BeratKotor').AsFloat     := cxsBeratKotor.Value ;
        FieldByName('BeratBersih').AsFloat    := cxsBeratBersih.Value;
        FieldByName('Berat_Meter').AsFloat    := cxsBeratMeter.Value ;
        FieldByName('BeratFG').AsFloat        := cxsBeratJadi.Value;
        FieldByName('LebarBuka').AsFloat      := cxsLebarBuka.Value;
        FieldByName('LebarJadi').AsFloat      := cxsLebarJadi.value;
        FieldByName('Panjang').AsFloat        := cxsPanjang.Value;
        FieldByName('PanjangJadi').AsFloat    := cxsPanjangJadi.Value;
        FieldByName('LebarTube').AsFloat      := cxsLebarTube.Value;
        FieldByName('PanjangPlong').AsFloat   := cxsPanjangPlong.Value;
        FieldByName('LebarPlong').asFloat     := cxsLebarPlong.Value;
        FieldByName('TopFold').AsFloat        := cxsTopFlod.Value;
        FieldByName('Gusset').AsFloat         := cxsGusset.Value;
        FieldByName('LebarHandle').AsFloat    := cxsLebarHandle.Value;
        FieldByName('Aksesoris').AsString     := cxtAksesoris.Text;
        FieldByName('BeratAksesoris').AsFloat := cxsBeratAks.Value;
        FieldByName('T_Aksesoris').AsFloat    := cxsTebalAks.Value;
        FieldByName('L_Aksesoris').AsFloat    := cxsLebarAks.Value;
        FieldByName('P_Aksesoris').AsFloat    := cxsPanjangAks.Value;
        FieldByName('AirHole').AsFloat        := cxsAirHole.Value;
        FieldByName('Cut').AsFloat            := cxsCut.Value ;
        FieldByName('BentukProduk').asString  := cxtBentukProduk.Text;
        FieldByName('DesainPrinting').AsString:= cxtDesainPrinting.Text ;
        FieldByName('WarnaFilm').AsString     := cxtWarnaFilm.Text;
        FieldByName('Visual').AsString        := cxtVisualProperty.Text ;
        FieldByName('Surface').AsString       := cxtSurfaceProperty.Text ;
        FieldByName('Min_STD').AsFloat        := cxsMinTSTD.Value;
        FieldByName('Max_STD').asFloat        := cxsMaxTSTD.Value;
        FieldByName('Min_SMD').AsFloat        := cxsMinTSMD.Value;
        FieldByName('Max_SMD').AsFloat        := cxsMaxTSMD.Value;
        FieldByName('Min_ETD').AsFloat        := cxsMinTETD.Value;
        FieldByName('Max_ETD').AsFloat        := cxsMaxTETD.Value;
        FieldByName('Min_EMD').asFloat        := cxsMinTEMD.Value;
        FieldByName('Max_EMD').asFloat        := cxsMaxTEMD.Value;
        FieldByName('Min_TearTD').AsFloat     := cxsMinTearTD.Value;
        FieldByName('Max_TearTD').AsFloat     := cxsMaxTearTD.Value;
        FieldByName('Min_TearMD').asFloat     := cxsMinTearMD.Value;
        FieldByName('Max_TearMD').asFloat     := cxsMaxTearMD.Value;
        FieldByName('Min_Resistance').asFloat := cxsMinPuncture.Value;
        FieldByName('Max_Resistance').asFloat := cxsMaxPuncture.Value;
        FieldByName('Min_Impact').asFloat     := cxsMinDrat.Value;
        FieldByName('Max_Impact').AsFloat     := cxsMaxDrat.Value;
        FieldByName('Min_Opasitas').asFloat   := cxsMinOpasitas.Value;
        FieldByName('Max_Opasitas').asFloat   := cxsMaxOpasitas.Value;
        FieldByName('Std_WarnaFilm').AsString := cxtWarnaFilm.Text;
        FieldByName('CriticalPoint').AsString := cxtCritical.Text ;
        Post;
       end;
       q.Close;
       MsgBox('Pengeditan Item berhasil.');
       ds1.DataSet.Refresh;
       KunciForm;
       except
       on E: Exception do begin
       MsgBox('Error: ' + E.Message);
       dm.zConn.Rollback;
       end;
    end;
    end
    end
  end
end;



procedure TFrmTplMaster2.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q : TZQuery ;
begin
    cxtKode.Text := zGrid.FieldByName('Kode').AsString;

    q := OpenRS('SELECT * FROM tbl_item WHERE Id_Item =''%s''',
    [cxtKode.Text] );

    with q do begin
    cxtDescription.Text       := FieldByName('Description').AsString;
    cxlCustomer.EditValue     := FieldByName('Id_Customer').AsString;
    cxtFungsi.Text            := FieldByName('Fungsi').AsString;
    cxcmbBase.Text            := FieldByName('BaseMaterial').AsString ;
    cxtSheet.Text             := FieldByName('Sheet_Tube').AsString;
    cxsBerat.Value            := FieldByName('BeratJenis').AsFloat;
    cxsTebal.Value            := FieldByName('Tebal').AsFloat;
    cxsBeratKotor.Value       := FieldByName('BeratKotor').AsFloat ;
    cxsBeratBersih.Value      := FieldByName('BeratBersih').AsFloat;
    cxsBeratMeter.Value       := FieldByName('Berat_Meter').AsFloat;
    cxsBeratJadi.Value        := FieldByName('BeratFG').AsFloat ;
    cxsLebarBuka.Value        := FieldByName('LebarBuka').AsFloat;
    cxsLebarJadi.value        := FieldByName('LebarJadi').AsFloat;
    cxsPanjang.Value          := FieldByName('Panjang').AsFloat;
    cxsPanjangJadi.Value      := FieldByName('PanjangJadi').AsFloat;
    cxsLebarTube.Value        := FieldByName('LebarTube').AsFloat;
    cxsPanjangPlong.Value     := FieldByName('PanjangPlong').AsFloat;
    cxsLebarPlong.Value       := FieldByName('LebarPlong').asFloat;
    cxsTopFlod.Value          := FieldByName('TopFold').AsFloat;
    cxsGusset.Value           := FieldByName('Gusset').AsFloat;
    cxsLebarHandle.Value      := FieldByName('LebarHandle').AsFloat;
    cxtAksesoris.Text         := FieldByName('Aksesoris').AsString ;
    cxsBeratAks.Value         := FieldByName('BeratAksesoris').AsFloat;
    cxsTebalAks.Value         := FieldByName('T_Aksesoris').AsFloat;
    cxsLebarAks.Value         := FieldByName('L_Aksesoris').AsFloat ;
    cxsPanjangAks.Value       := FieldByName('P_Aksesoris').AsFloat;
    cxsAirHole.Value          := FieldByName('AirHole').AsFloat;
    cxsCut.Value              := FieldByName('Cut').AsFloat;
    cxtBentukProduk.Text      := FieldByName('BentukProduk').asString;
    cxtDesainPrinting.Text    := FieldByName('DesainPrinting').AsString;
    cxtWarnaFilm.Text         := FieldByName('WarnaFilm').AsString;
    cxtVisualProperty.Text    := FieldByName('Visual').AsString;
    cxtSurfaceProperty.Text   := FieldByName('Surface').AsString;
    cxsMinTSTD.Value          := FieldByName('Min_STD').asFloat;
    cxsMaxTSTD.Value          := FieldByName('Max_STD').asFloat;
    cxsMinTSMD.Value          := FieldByName('Min_SMD').AsFloat;
    cxsMaxTSMD.Value          := FieldByName('Max_SMD').AsFloat;
    cxsMinTETD.Value          := FieldByName('Min_ETD').AsFloat;
    cxsMaxTETD.Value          := FieldByName('Max_ETD').AsFloat;
    cxsMinTEMD.Value          := FieldByName('Min_EMD').asFloat;
    cxsMaxTEMD.Value          := FieldByName('Max_EMD').asFloat;
    cxsMinTearTD.Value        := FieldByName('Min_TearTD').AsFloat;
    cxsMaxTearTD.Value        := FieldByName('Max_TearTD').AsFloat;
    cxsMinTearMD.Value        := FieldByName('Min_TearMD').asFloat;
    cxsMaxTearMD.Value        := FieldByName('Max_TearMD').asFloat;
    cxsMinPuncture.Value      := FieldByName('Min_Resistance').asFloat;
    cxsMaxPuncture.Value      := FieldByName('Max_Resistance').asFloat;
    cxsMinDrat.Value          := FieldByName('Min_Impact').asFloat;
    cxsMaxDrat.Value          := FieldByName('Max_Impact').AsFloat;
    cxsMinOpasitas.Value      := FieldByName('Min_Opasitas').asFloat;
    cxsMaxOpasitas.Value      := FieldByName('Max_Opasitas').asFloat;
    cxtWarnaFilm.Text         := FieldByName('Std_WarnaFilm').AsString;
    cxtCritical.Text          := FieldByName('CriticalPoint').AsString;
    end;
  if zqrRouting.Active then zqrRouting.Close;
    zqrRouting.ParamByName('Item').AsString := cxtKode.Text ;
    zqrRouting.Open ;

end;

procedure TFrmTplMaster2.cxbHapusClick(Sender: TObject);
var
  i : Integer;
begin

    i := QBox(Self, 'Hapus Item: ' + cxtKode.Text,'Hapus Item') ;
     if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_item WHERE Id_Item = ''' + cxtKode.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Item berhasil.');
            ds1.DataSet.Refresh;
            KunciForm;
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;


end;

procedure TFrmTplMaster2.cxbEditClick(Sender: TObject);
var
  i : Integer;
begin
  if cxtKode.Text ='' then MsgBox('Pilih Item yang akan diedit terlebih dahulu')
  else begin
    cxtStat.Caption := 'Edit';
   for i:= 0 to ComponentCount-1 do
    begin
      if Components[i] is TcxGroupBox then
        (Components[i] as TcxGroupBox).Enabled := True;
    cxbBaru.Enabled := False;
    cxbSimpan.Enabled := True;
    cxbEdit.Enabled := false;
    cxbHapus.Enabled := False;
    cxbBatal.Enabled := True;
    end
 end;

end;

procedure TFrmTplMaster2.cxbRoutingClick(Sender: TObject);
var
  f: TfrmRouting;
  ts : TcxTabSheet ;
begin
  f := TfrmRouting.Create(self);

  if cxtKode.Text ='' then
  MsgBox('Pilih Item Terlebih Dahulu')
  else begin
  if not CekTabOpen('Routing') then begin
  f := TfrmRouting.Create(Self);
  ts := TcxTabSheet.Create(self);
  ts.PageControl := frmUtama.pgMain;
  ts.Caption :='Routing';
  frmUtama.pgMain.ActivePage := ts;
  f.Parent := ts;
  f.Show;
  f.cxtItem.Caption:= cxtKode.Text ;
  f.cxtStat.Caption :='Tambah Baru';
  f.btnHapus.Visible := False;
end;
end;
end;

procedure TFrmTplMaster2.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  f: TfrmRouting;
  ts : TcxTabSheet ;
  i : Integer;
  q : TZQuery ;
begin
  f := TfrmRouting.Create(self);

  if not CekTabOpen('Routing') then begin
  f := TfrmRouting.Create(Self);
  ts := TcxTabSheet.Create(self);
  ts.PageControl := frmUtama.pgMain;
  ts.Caption :='Routing';
  frmUtama.pgMain.ActivePage := ts;
  f.Parent := ts;
  f.Show;
  f.cxtItem.Caption:= cxtKode.Text ;
  f.cxtStat.Caption :='Edit Routing';
  f.btnHapus.Visible := True;
  f.Id.Caption            := IntToStr(zqrRouting.fieldbyname('Id').AsInteger );

  q := OpenRS('SELECT * FROM tbl_routing WHERE Id_Item='''+ cxtKode.Text +''' and Id =''%s''',
    [f.Id.Caption] );

    with q do begin
    f.cxcmbRouting.Text     := FieldByName('Kode_Routing').AsString ;
    f.cxtDescription.Text   := FieldByName('Description').AsString;
    f.cxsLebarTube.Value    := FieldByName('LebarTube').AsFloat ;
   end;

end;
end;

procedure TFrmTplMaster2.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    {cxSpinEdit1.Value  := zqrRouting.FieldByName('Id').AsInteger; }
end;

end.
