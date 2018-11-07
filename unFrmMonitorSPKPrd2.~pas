unit unFrmMonitorSPKPrd2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
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
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls, ExtCtrls,
  scExcelExport, cxGridExportLink, ShellAPI, cxCheckBox;

type
  TfrmMonitorSPKPrd2 = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    zqrMonSPK: TZReadOnlyQuery;
    dsMonSPK: TDataSource;
    btnProses: TButton;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxTblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnCetakExcel: TButton;
    btnKeluar2: TButton;
    cxTblViewtanggal: TcxGridDBColumn;
    cxTblViewno_spk: TcxGridDBColumn;
    cxTblViewkode_brg: TcxGridDBColumn;
    cxTblViewdeskripsi: TcxGridDBColumn;
    cxTblViewqty_spk: TcxGridDBColumn;
    cxTblViewkode_brg_1: TcxGridDBColumn;
    cxTblViewdeskripsi_1: TcxGridDBColumn;
    cxTblViewqty: TcxGridDBColumn;
    cxTblViewsatuan: TcxGridDBColumn;
    cxTblViewhsl_prd: TcxGridDBColumn;
    cxTblViewqty_serah_terima: TcxGridDBColumn;
    cxTblViewColumn1: TcxGridDBColumn;
    cxTblViewColumn2: TcxGridDBColumn;
    cxTblViewColumn3: TcxGridDBColumn;
    cxTblViewColumn4: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnCetakExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitorSPKPrd2: TfrmMonitorSPKPrd2;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMonitorSPKPrd2.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := unTools.FDOM(aplikasi.TanggalServer);
  cxdTgl2.Date := unTools.LDOM(aplikasi.TanggalServer);
end;

procedure TfrmMonitorSPKPrd2.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMonitorSPKPrd2.btnProsesClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if zqrMonSPK.Active then zqrMonSPK.Close;
  with zqrMonSPK do begin
    ParamByName('tgl1').AsDate := cxdTgl1.Date;
    ParamByName('tgl2').AsDate := cxdTgl2.Date;
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmMonitorSPKPrd2.btnCetakExcelClick(Sender: TObject);
begin
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
