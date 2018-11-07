unit unFrmTplTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmTplTrans = class(TForm)
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
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    sJenis: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read sJenis write sJenis;
  end;

var
  frmTplTrans: TfrmTplTrans;

implementation

{$R *.dfm}

procedure TFrmTplTrans.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmTplTrans.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTplTrans.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmTplTrans.FormCreate(Sender: TObject);
begin
  {
  pnlTengah.Enabled := False;
  btnSimpan.Enabled := False;
  btnBatal.Enabled := False;
  btnHapus.Enabled := False;}
  
end;

procedure TfrmTplTrans.btnBaruClick(Sender: TObject);
begin
  {
  btnBaru.Enabled := False;
  btnEdit.Enabled := False;
  btnHapus.Enabled := False;

  btnSimpan.Enabled := True;
  btnBatal.Enabled := True;

  pnlTengah.Enabled := True;

  self.Jenis := 'tambah';  }

end;

procedure TfrmTplTrans.btnBatalClick(Sender: TObject);
begin
  {
  btnSimpan.Enabled := False;
  btnEdit.Enabled := True;
  btnHapus.Enabled := False;
  pnlTengah.Enabled := False;
  btnBaru.Enabled := True;
                                }
end;

procedure TfrmTplTrans.btnEditClick(Sender: TObject);
begin
    {
  btnEdit.Enabled := False;
  btnBaru.Enabled := False;
  btnHapus.Enabled := True;

  btnSimpan.Enabled := True;
  btnBatal.Enabled := True;

  pnlTengah.Enabled := True;
  self.Jenis := 'edit';       }

end;

procedure TfrmTplTrans.btnSimpanClick(Sender: TObject);
begin
   {
  btnEdit.Enabled := False;
  btnHapus.Enabled := False;
  btnBatal.Enabled := False;
  btnSimpan.Enabled := False;   }

end;

end.
