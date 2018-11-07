unit unFrmHargaPasaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, StdCtrls,
  ExtCtrls, cxCalendar, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxTimeEdit,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxNavigator, cxSpinEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmHargaPasaran = class(TfrmTransBaru)
    cxNavigator1: TcxNavigator;
    cxGrid1: TcxGrid;
    cxTblHarga: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    zTblSales: TZTable;
    dsSales: TDataSource;
    cxTblHargaid: TcxGridDBColumn;
    cxTblHargakode_brg: TcxGridDBColumn;
    cxTblHargadeskripsi: TcxGridDBColumn;
    cxTblHargastart: TcxGridDBColumn;
    cxTblHargaend: TcxGridDBColumn;
    cxTblHargajenis: TcxGridDBColumn;
    cxTblHargaharga_include: TcxGridDBColumn;
    cxTblHargaharga_exclude: TcxGridDBColumn;
    zqrBrgBom: TZQuery;
    dsBrgBom: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHargaPasaran: TfrmHargaPasaran;

implementation

{$R *.dfm}



procedure TfrmHargaPasaran.FormCreate(Sender: TObject);
begin
  inherited;
  zqrBrgBom.Open ;
end;

end.
