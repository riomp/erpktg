unit unFrmUbahPassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxTextEdit, ZDataset;

type
  TfrmUbahPassword = class(TForm)
    Label1: TLabel;
    cxtPassLama: TcxTextEdit;
    Label2: TLabel;
    cxtPassBaru: TcxTextEdit;
    cxtKonfirm: TcxTextEdit;
    Label3: TLabel;
    btnSimpan: TButton;
    btnBatal: TButton;
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUbahPassword: TfrmUbahPassword;

implementation

uses unTools, unDm, unAplikasi;

{$R *.dfm}

procedure TfrmUbahPassword.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUbahPassword.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmUbahPassword.btnSimpanClick(Sender: TObject);
var
  q: TZQuery;
  sPass: string;
begin
  if Trim(cxtPassLama.Text) = '' then
    cxtPassLama.SetFocus
  else if Trim(cxtPassBaru.Text) = '' then
    cxtPassBaru.SetFocus
  else if Trim(cxtKonfirm.Text) = '' then
    cxtKonfirm.SetFocus
  else begin
    sPass := unTools.MySQLPassword(Trim(cxtPassLama.Text));
    q := OpenRS('SELECT * FROM tbl_user WHERE nama = ''%s'' AND ' +
      'password = ''%s''',
      [Aplikasi.NamaUser, sPass]);
    if q.IsEmpty then begin
      MsgBox('Password lama salah.');
      cxtPassLama.SetFocus;
    end
    else begin
      try
        dm.zConn.StartTransaction;
        sPass := unTools.MySQLPassword(Trim(cxtPassBaru.Text));
        dm.zConn.ExecuteDirect(Format('UPDATE tbl_user SET `password` = ''%s'' ' +
          'WHERE nama = ''%s''',
          [sPass, Aplikasi.NamaUser]));
        dm.zConn.Commit;
        MsgBox('Password berhasil di ubah.');
        Close;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;
end;

end.
