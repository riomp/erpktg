unit unFrmMstKtgr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxNavigator;

type
  TfrmMstKtgr = class(TForm)
    pnlAtas: TPanel;
    lblJudul: TLabel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zTblTipe: TZTable;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    dsTipe: TDataSource;
    cxGrid1DBTableView1tipe: TcxGridDBColumn;
    ztblKtgr: TZTable;
    dsKtgr: TDataSource;
    cxGridDBTableView1kategori: TcxGridDBColumn;
    ztblSubKtgr: TZTable;
    dsSubKtgr: TDataSource;
    cxGridDBTableView2subkategori: TcxGridDBColumn;
    cxNavigator1: TcxNavigator;
    cxNavigator2: TcxNavigator;
    cxNavigator3: TcxNavigator;
    btnKeluar: TButton;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMstKtgr: TfrmMstKtgr;

implementation

uses unAplikasi, unDm;

{$R *.dfm}

procedure TfrmMstKtgr.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMstKtgr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

end.
