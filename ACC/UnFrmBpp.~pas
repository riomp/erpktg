unit UnfrmBpp;

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
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit;

type
  TfrmBPP = class(TfrmTplMaster)
    pnl1: TPanel;
    cxTblGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvl1Grid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxLuLCustomer: TcxLookupComboBox;
    cxlbl1: TcxLabel;
    zqrCustomer: TZReadOnlyQuery;
    dsCustomer: TDataSource;
    btn1: TButton;
    zqrBPP: TZReadOnlyQuery;
    dsBPP: TDataSource;
    cxTblGrid1DBTableView1akun: TcxGridDBColumn;
    cxTblGrid1DBTableView1nama: TcxGridDBColumn;
    cxTblGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxTblGrid1DBTableView1no_jurnal: TcxGridDBColumn;
    cxTblGrid1DBTableView1keterangan: TcxGridDBColumn;
    cxTblGrid1DBTableView1debet: TcxGridDBColumn;
    cxTblGrid1DBTableView1kredit: TcxGridDBColumn;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBPP: TfrmBPP;

implementation

uses
  unTools, unDm;

{$R *.dfm}

procedure TfrmBPP.btn1Click(Sender: TObject);
begin
  inherited;
  zqrBPP.Close;
  zqrBPP.ParamByName('kode_cust').AsString := cxLuLCustomer.EditValue;
  zqrBPP.Open;
end;

procedure TfrmBPP.FormCreate(Sender: TObject);
begin
  inherited;
  zqrCustomer.Open;
end;

end.
