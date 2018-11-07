unit unFrmViewMstSupplier;

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
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, ZAbstractRODataset,
  ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCheckBox, scExcelExport,cxGridExportLink, ShellAPI;

type
  TfrmViewMstSupplier = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrSupp: TZReadOnlyQuery;
    btnCetakExcel: TButton;
    btnKeluar: TButton;
    dsSupp: TDataSource;
    cxGrid1DBTableView1kode: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1kontak: TcxGridDBColumn;
    cxGrid1DBTableView1title: TcxGridDBColumn;
    cxGrid1DBTableView1alamat: TcxGridDBColumn;
    cxGrid1DBTableView1alamat2: TcxGridDBColumn;
    cxGrid1DBTableView1kota: TcxGridDBColumn;
    cxGrid1DBTableView1kodepos: TcxGridDBColumn;
    cxGrid1DBTableView1provinsi: TcxGridDBColumn;
    cxGrid1DBTableView1negara: TcxGridDBColumn;
    cxGrid1DBTableView1telpon: TcxGridDBColumn;
    cxGrid1DBTableView1fax: TcxGridDBColumn;
    cxGrid1DBTableView1hp: TcxGridDBColumn;
    cxGrid1DBTableView1direct: TcxGridDBColumn;
    cxGrid1DBTableView1pembayaran: TcxGridDBColumn;
    cxGrid1DBTableView1email: TcxGridDBColumn;
    cxGrid1DBTableView1f_aktif: TcxGridDBColumn;
    procedure btnCetakExcelClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmViewMstSupplier: TfrmViewMstSupplier;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmViewMstSupplier.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmViewMstSupplier.btnCetakExcelClick(Sender: TObject);
begin
  try
  //frxReport1.ShowReport(True);
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmViewMstSupplier.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmViewMstSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

end.
