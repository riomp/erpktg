unit unFrmKonfirmKetSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls;

type
  TfrmKonfirmKetSO = class(TForm)
    cxTbl: TcxGridDBTableView;
    cxrGrdLevel1: TcxGridLevel;
    cxrGrd: TcxGrid;
    zqrKetSO: TZReadOnlyQuery;
    ds: TDataSource;
    cxTblColumn1: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    Button1: TButton;
    Button2: TButton;
    cxTblColumn4: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKonfirmKetSO: TfrmKonfirmKetSO;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmKonfirmKetSO.FormShow(Sender: TObject);
begin
  zqrKetSO.Open;
end;

end.
