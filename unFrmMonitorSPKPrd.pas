unit unFrmMonitorSPKPrd;

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
  scExcelExport,cxGridExportLink, ShellAPI, cxCheckBox;

type
  TfrmMonitorSPKPrd = class(TfrmTplTrans)
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
    cxTblViewno_spk: TcxGridDBColumn;
    cxTblViewtgl_spk: TcxGridDBColumn;
    cxTblViewno_so: TcxGridDBColumn;
    cxTblViewnama_customer: TcxGridDBColumn;
    cxTblViewkode_brg: TcxGridDBColumn;
    cxTblViewdeskripsi: TcxGridDBColumn;
    cxTblViewqty_spk: TcxGridDBColumn;
    cxTblViewColumn1: TcxGridDBColumn;
    cxTblViewhsl_prd: TcxGridDBColumn;
    cxTblViewqty_serah_terima: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btnCetakExcel: TButton;
    btnKeluar2: TButton;
    cxTblViewColumn2: TcxGridDBColumn;
    cxCmbStatus: TcxComboBox;
    cxLabel3: TcxLabel;
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
  frmMonitorSPKPrd: TfrmMonitorSPKPrd;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMonitorSPKPrd.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := unTools.FDOM(Aplikasi.TanggalServer);
  cxdTgl2.Date := unTools.LDOM(aplikasi.TanggalServer);
  
  cxCmbStatus.Properties.Items.Add('-');
  cxCmbStatus.Properties.Items.Add('OPEN');
  cxCmbStatus.Properties.Items.Add('KOMPLIT / SELESAI');
  cxCmbStatus.ItemIndex := 0;
end;

procedure TfrmMonitorSPKPrd.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMonitorSPKPrd.btnProsesClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if zqrMonSPK.Active then zqrMonSPK.Close;
  with zqrMonSPK do begin
    if cxCmbStatus.Text = 'OPEN' then
      SQL.Strings[12] := ' AND a.f_completed = 0 ';
    if cxCmbStatus.Text = 'KOMPLIT / SELESAI' then
      SQL.Strings[12] := ' AND a.f_completed = 1';
    if cxCmbStatus.Text = '-' then
      SQL.Strings[12] := '-- ';
    ParamByName('tgl1').AsDate := cxdTgl1.Date;
    ParamByName('tgl2').AsDate := cxdTgl2.Date;
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmMonitorSPKPrd.btnCetakExcelClick(Sender: TObject);
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
