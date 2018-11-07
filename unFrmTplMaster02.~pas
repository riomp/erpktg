unit unFrmTplMaster02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, ImgList, ComCtrls, ToolWin,cxPC, cxContainer,
  Menus, StdCtrls, cxButtons, cxLabel, ExtCtrls, cxTextEdit, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxMemo, cxNavigator, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmTplMaster02 = class(TForm)
    zGrid: TZQuery;
    ds1: TDataSource;
    pnlAtas: TPanel;
    lblJudul: TLabel;
    cxtStat: TcxLabel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    cxBtnTambah: TcxButton;
    cxBtnEdit: TcxButton;
    cxBtnHapus: TcxButton;
    cxBtnSimpan: TcxButton;
    cxBtnBatal: TcxButton;
    zCust: TZQuery;
    ds2: TDataSource;
    zqrRouting: TZQuery;
    ds3: TDataSource;
    cxBtnKeluar: TcxButton;
    procedure cxBtnBatalClick(Sender: TObject);
    procedure cxBtnTambahClick(Sender: TObject);
    procedure cxBtnEditClick(Sender: TObject);
    procedure cxBtnHapusClick(Sender: TObject);
    procedure cxBtnSimpanClick(Sender: TObject);
    procedure cxBtnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    mJenis: string;
  public
    { Public declarations }
  end;

var
  FrmMasterItem: TFrmTplMaster02;

implementation

uses unDm, unTools, unFrmRouting, unFrmUtama;

{$R *.dfm}

{ TFrmTplMaster02 }


{ TFrmTplMaster02 }

procedure TFrmTplMaster02.cxBtnBatalClick(Sender: TObject);
begin
  mJenis := '';
  cxtStat.Caption := '';
  cxBtnTambah.Enabled := True;
  cxBtnEdit.Enabled := True;
  cxBtnHapus.Enabled := False;
  cxBtnSimpan.Enabled := False;
  cxBtnBatal.Enabled := False;
end;

procedure TFrmTplMaster02.cxBtnTambahClick(Sender: TObject);
begin
  mJenis := 'tambah';
  cxtStat.Caption := 'Tambah';
  cxBtnTambah.Enabled := False;
  cxBtnEdit.Enabled := False;
  cxBtnHapus.Enabled := False;
  cxBtnSimpan.Enabled := True;
  cxBtnBatal.Enabled := True;
end;

procedure TFrmTplMaster02.cxBtnEditClick(Sender: TObject);
begin
  mJenis := 'edit';
  cxtStat.Caption := 'Edit';
  cxBtnTambah.Enabled := False;
  cxBtnEdit.Enabled := False;
  cxBtnHapus.Enabled := True;
  cxBtnSimpan.Enabled := True;
  cxBtnBatal.Enabled := True;
end;

procedure TFrmTplMaster02.cxBtnHapusClick(Sender: TObject);
begin
  cxBtnBatalClick(nil);
end;

procedure TFrmTplMaster02.cxBtnSimpanClick(Sender: TObject);
begin
  cxBtnBatalClick(nil);
end;

procedure TFrmTplMaster02.cxBtnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTplMaster02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTplMaster02.FormCreate(Sender: TObject);
begin
  cxBtnBatalClick(nil);
end;

end.
