unit unFrmHistoryPengBB;

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
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox, scExcelExport,cxGridExportLink,
  ShellAPI;

type
  TfrmHistoryPengBB = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxTblBB: TcxGridDBTableView;
    cxGrdBBLevel1: TcxGridLevel;
    cxGrdBB: TcxGrid;
    cxTblBBno_bukti: TcxGridDBColumn;
    cxTblBBno_spk: TcxGridDBColumn;
    cxTblBBtanggal: TcxGridDBColumn;
    cxTblBBjam: TcxGridDBColumn;
    cxTblBBuser: TcxGridDBColumn;
    cxTblBBuser_dept: TcxGridDBColumn;
    cxTblBBno_so: TcxGridDBColumn;
    cxTblBBkode_brg: TcxGridDBColumn;
    cxTblBBdeskripsi: TcxGridDBColumn;
    cxTblBBqty: TcxGridDBColumn;
    cxTblBBfterima: TcxGridDBColumn;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistoryPengBB: TfrmHistoryPengBB;

implementation

uses unTools, unDm;

{$R *.dfm}

procedure TfrmHistoryPengBB.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  pnlTengah.Enabled := True;
end;

procedure TfrmHistoryPengBB.btnProsesClick(Sender: TObject);
begin
  inherited;
  zQry.Close;
  zQry.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zQry.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zQry.Open;
end;

procedure TfrmHistoryPengBB.Button1Click(Sender: TObject);
begin
  inherited;
  try
    ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrdBB);
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
      ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
