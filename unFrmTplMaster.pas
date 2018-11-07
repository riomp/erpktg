unit unFrmTplMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, cxContainer, cxLabel;

type
  TfrmTplMaster = class(TForm)
    pnlAtas: TPanel;
    lblJudul: TLabel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    btnTambah: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    btnSimpan: TButton;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxTblView: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zQry: TZQuery;
    ds: TDataSource;
    Label1: TLabel;
    cxtStat: TcxLabel;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    sJenis: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read sJenis write sJenis;
  end;

var
  frmTplMaster: TfrmTplMaster;

implementation

uses unDm;

{$R *.dfm}

procedure TFrmTplMaster.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmTplMaster.btnBatalClick(Sender: TObject);
begin
  btnSimpan.Enabled := False;
  btnBatal.Enabled := False;

  btnTambah.Enabled := True;
  btnEdit.Enabled := True;
  btnHapus.Enabled := False;

  pnlTengah.Enabled := False;
  pg.ActivePageIndex := 0;

  self.Jenis := '';
  cxtStat.Caption := '';
  cxtStat.Visible := False;
end;

procedure TfrmTplMaster.btnEditClick(Sender: TObject);
begin
  btnEdit.Enabled := False;
  btnTambah.Enabled := False;
  btnHapus.Enabled := True;

  btnSimpan.Enabled := True;
  btnBatal.Enabled := True;

  pnlTengah.Enabled := True;
  self.Jenis := 'edit';
  cxtStat.Caption := 'EDIT';
  cxtStat.Visible := True;
  pg.ActivePageIndex := 1;
end;

procedure TfrmTplMaster.btnKeluarClick(Sender: TObject);
begin
  Close;
  Release;
end;

procedure TfrmTplMaster.btnTambahClick(Sender: TObject);
begin
  btnTambah.Enabled := False;
  btnEdit.Enabled := False;
  btnHapus.Enabled := False;

  btnSimpan.Enabled := True;
  btnBatal.Enabled := True;

  pnlTengah.Enabled := True;

  self.Jenis := 'tambah';
  cxtStat.Caption := 'TAMBAH';
  cxtStat.Visible := True;
end;

procedure TfrmTplMaster.FormCreate(Sender: TObject);
begin
  pnlTengah.Enabled := False;
  btnSimpan.Enabled := False;
  btnBatal.Enabled := False;
  btnHapus.Enabled := False;
  pg.ActivePageIndex := 0;
  cxtStat.Visible := False;
  cxtStat.Caption := '';
end;

end.
