unit unFrmMonitorInputHasilProduksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, scExcelExport,cxGridExportLink, ShellAPI, cxCheckBox;

type
  TfrmMonitorInputHasilProduksi = class(TfrmTplTrans)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxTbl: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrHP: TZReadOnlyQuery;
    dsHP: TDataSource;
    cxTblno_spk: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTblqty_prod: TcxGridDBColumn;
    cxTblqty_reject: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTbluser_dept: TcxGridDBColumn;
    cxTbltgl_input: TcxGridDBColumn;
    cxTblshift2: TcxGridDBColumn;
    cxTbljam1: TcxGridDBColumn;
    cxTbljam2: TcxGridDBColumn;
    cxTblmesin: TcxGridDBColumn;
    cxTblket_reject: TcxGridDBColumn;
    cxTblket_mesin: TcxGridDBColumn;
    btnKeluar2: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    btnExcel: TButton;
    zqrRej: TZReadOnlyQuery;
    dsRej: TDataSource;
    Button1: TButton;
    cxTblColumn1: TcxGridDBColumn;
    cxTblColumn2: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    zqrOpr: TZReadOnlyQuery;
    dsOpr: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    cxTblOpr: TcxGridDBTableView;
    cxTblOprnik: TcxGridDBColumn;
    cxTblOprnama: TcxGridDBColumn;
    cxTblColumn3: TcxGridDBColumn;
    cxTblColumn4: TcxGridDBColumn;
    cxTblColumn5: TcxGridDBColumn;
    cxTblColumn6: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMonitorInputHasilProduksi: TfrmMonitorInputHasilProduksi;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMonitorInputHasilProduksi.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := unTools.FDOM(Aplikasi.TanggalServer);
  cxdTgl2.Date := unTools.LDOM(APlikasi.TanggalServer);
end;

procedure TfrmMonitorInputHasilProduksi.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMonitorInputHasilProduksi.btnExcelClick(Sender: TObject);
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

procedure TfrmMonitorInputHasilProduksi.btnProsesClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;

  zqrHP.Close;
  zqrHP.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrHP.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrHP.Open;

  zqrOpr.Close;
  zqrOpr.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrOpr.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrOpr.Open;

  zqrRej.Close;
  zqrRej.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrRej.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrRej.Open;

  Screen.Cursor := crDefault;
end;

procedure TfrmMonitorInputHasilProduksi.Button1Click(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
