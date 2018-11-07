unit unFrmBarangSlowMoving;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
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
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, cxGridExportLink,
  ShellAPI;

type
  TfrmBarangSlowMoving = class(TfrmTplTrans)
    zqrSM: TZReadOnlyQuery;
    dsSM: TDataSource;
    cxTbl: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTblkode: TcxGridDBColumn;
    cxTbldeskripsi: TcxGridDBColumn;
    cxTblstok: TcxGridDBColumn;
    cxTbltgl_sj_terakhir: TcxGridDBColumn;
    btnCetakExcel: TButton;
    btnKeluar2: TButton;
    cxTblColumn1: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnCetakExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBarangSlowMoving: TfrmBarangSlowMoving;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmBarangSlowMoving.FormCreate(Sender: TObject);
begin
  inherited;
  zqrSM.Open;
  pnlTengah.Enabled := True;
end;

procedure TfrmBarangSlowMoving.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmBarangSlowMoving.btnCetakExcelClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
