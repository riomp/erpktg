unit unMasterItem;

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
  TFrmMasterItem = class(TForm)
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
    procedure cxBtnBatalClick(Sender: TObject);
    procedure cxBtnTambahClick(Sender: TObject);
    procedure cxBtnEditClick(Sender: TObject);
    procedure cxBtnHapusClick(Sender: TObject);
    procedure cxBtnSimpanClick(Sender: TObject);
  private
    mJenis: string;
  public
    { Public declarations }
  end;

var
  FrmMasterItem: TFrmMasterItem;

implementation

uses unDm, unTools, unFrmRouting, unFrmUtama;

{$R *.dfm}

{ TFrmMasterItem }


{ TFrmMasterItem }

procedure TFrmMasterItem.cxBtnBatalClick(Sender: TObject);
begin
  mJenis := '';
  cxBtnTambah.Enabled := True;
  cxBtnEdit.Enabled := True;
  cxBtnHapus.Enabled := False;
  cxBtnSimpan.Enabled := False;
end;

procedure TFrmMasterItem.cxBtnTambahClick(Sender: TObject);
begin
  mJenis := 'tambah';
  cxtStat.Caption := 'Tambah';
  cxBtnEdit.Enabled := False;
  cxBtnHapus.Enabled := False;
  cxBtnSimpan.Enabled := True;
end;

procedure TFrmMasterItem.cxBtnEditClick(Sender: TObject);
begin
  mJenis := 'edit';
  cxtStat.Caption := 'Edit';
  cxBtnEdit.Enabled := False;
  cxBtnHapus.Enabled := True;
  cxBtnSimpan.Enabled := True;
end;

procedure TFrmMasterItem.cxBtnHapusClick(Sender: TObject);
begin
  cxBtnBatalClick(nil);
end;

procedure TFrmMasterItem.cxBtnSimpanClick(Sender: TObject);
begin
  cxBtnBatalClick(nil);
end;

end.
