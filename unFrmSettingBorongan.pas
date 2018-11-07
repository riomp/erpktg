unit unFrmSettingBorongan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
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
  cxData, cxDataStorage, DB, cxDBData, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ComCtrls, cxLabel, ExtCtrls, cxNavigator, cxSpinEdit, cxTextEdit,
  cxMaskEdit;

type
  TfrmSettingBorongan = class(TfrmTplMaster)
    cxGrdBoronganDBTableView1: TcxGridDBTableView;
    cxGrdBoronganLevel1: TcxGridLevel;
    cxGrdBorongan: TcxGrid;
    dsBorongan: TDataSource;
    zqrBorongan: TZQuery;
    cxGrdBoronganDBTableView1kode: TcxGridDBColumn;
    cxGrdBoronganDBTableView1deskripsi: TcxGridDBColumn;
    cxGrdBoronganDBTableView1isi_pak: TcxGridDBColumn;
    cxGrdBoronganDBTableView1targetbal_7jam: TcxGridDBColumn;
    cxGrdBoronganDBTableView1targetbal_perjam: TcxGridDBColumn;
    cxGrdBoronganDBTableView1targetrp_perbal: TcxGridDBColumn;
    zqrBorongan2: TZQuery;
    dsBorongan2: TDataSource;
    zqrBorongan2kode: TIntegerField;
    zqrBorongan2deskripsi: TStringField;
    zqrBorongan2isi_pak: TFloatField;
    zqrBorongan2targetbal_perjam: TFloatField;
    zqrBorongan2targetrp_perbal: TFloatField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zqrBorongan2total: TFloatField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxsGajiPerHari: TcxSpinEdit;
    zqrBorongan2targetbal_7jam: TFloatField;
    zqrBorongan2kap_rol_per_shift: TIntegerField;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure zqrBorongan2CalcFields(DataSet: TDataSet);
  private

  public
    { Public declarations }
  end;

var
  frmSettingBorongan: TfrmSettingBorongan;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmSettingBorongan.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxsGajiPerHari.Value := aplikasi.ConstGajiPerHari;
end;

procedure TfrmSettingBorongan.zqrBorongan2CalcFields(DataSet: TDataSet);
begin
  inherited;
  zqrBorongan2.FieldByName('targetbal_perjam').AsFloat :=
    zqrBorongan2.FieldByName('targetbal_7jam').AsFloat / 7;
  if zqrBorongan2.FieldByName('targetbal_7jam').AsFloat > 0 then begin
    zqrBorongan2.FieldByName('targetrp_perbal').AsFloat :=
      aplikasi.ConstGajiPerHari / zqrBorongan2.FieldByName('targetbal_7jam').AsFloat;
    zqrBorongan2.FieldByName('total').AsFloat :=
      (aplikasi.ConstGajiPerHari / zqrBorongan2.FieldByName('targetbal_7jam').AsFloat) *
      zqrBorongan2.FieldByName('targetbal_7jam').AsFloat;
  end;
end;

end.
