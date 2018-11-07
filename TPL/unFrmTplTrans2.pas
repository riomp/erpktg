unit unFrmTplTrans2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmTplTrans2 = class(TForm)
    pnlAtas: TPanel;
    lblJudul: TLabel;
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    btnBaru: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    btnSimpan: TButton;
    cxlCari: TcxLookupComboBox;
    btnProsesEdit: TButton;
    btnPrint: TButton;
    btnCariEdit: TButton;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    sJenis: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read sJenis write sJenis;
  end;

var
  frmTplTrans2: TFrmTplTrans2;

implementation

{$R *.dfm}

procedure TFrmTplTrans2.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmTplTrans2.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmTplTrans2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TFrmTplTrans2.FormCreate(Sender: TObject);
begin
  pnlTengah.Enabled := False;
  btnSimpan.Enabled := False;
  btnBatal.Enabled := False;
  btnHapus.Enabled := False;
  cxlCari.Visible := False;
  btnBatal.Visible := False;
  btnHapus.Visible := False;
  btnPrint.Visible := False;
  btnCariEdit.Visible := False;
end;

procedure TFrmTplTrans2.btnBaruClick(Sender: TObject);
begin
  btnBaru.Enabled := False;
  btnEdit.Enabled := False;
  btnHapus.Enabled := False;

  btnSimpan.Enabled := True;
  btnBatal.Enabled := True;

  pnlTengah.Enabled := True;

  self.Jenis := 'tambah';

  btnBatal.Visible := True;
end;

procedure TFrmTplTrans2.btnBatalClick(Sender: TObject);
begin
  btnSimpan.Enabled := False;
  btnEdit.Enabled := True;
  btnHapus.Enabled := False;
  pnlTengah.Enabled := False;
  btnBaru.Enabled := True;

  cxlCari.Visible := False;
  btnProsesEdit.Visible := False;

  btnBatal.Visible := False;
  btnHapus.Visible := False;
  btnPrint.Visible := False;
  btnCariEdit.Visible := False;
end;

procedure TFrmTplTrans2.btnEditClick(Sender: TObject);
begin
  btnEdit.Enabled := False;
  btnBaru.Enabled := False;
  btnHapus.Enabled := True;

  btnSimpan.Enabled := True;
  btnBatal.Enabled := True;

  pnlTengah.Enabled := True;
  self.Jenis := 'edit';

  cxlCari.Visible := True;
  btnProsesEdit.Visible := True;
  cxlCari.SetFocus;

  btnBatal.Visible := True;
  btnHapus.Visible := True;
  btnPrint.Visible := True;

  btnCariEdit.Visible := True;
end;

procedure TFrmTplTrans2.btnSimpanClick(Sender: TObject);
begin
  // 
end;

end.
