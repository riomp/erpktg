unit unFrmUploadImageRK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxListBox, StdCtrls, cxTextEdit, ExtCtrls,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmUploadImageRK = class(TForm)
    Label1: TLabel;
    cxtNamaFile: TcxTextEdit;
    btnBrowse: TButton;
    btnTambah: TButton;
    cxLstBox: TcxListBox;
    Button1: TButton;
    btnBatal: TButton;
    OpenDlg: TOpenDialog;
    Panel1: TPanel;
    image: TImage;
    btnHapus: TButton;
    procedure btnBatalClick(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    lstImage: TStringList;
    mJenis: string;
  public
    property ListImage: TStringList read lstImage write lstImage;
    property Jenis: string read mJenis write mJenis;
  end;

var
  frmUploadImageRK: TfrmUploadImageRK;

implementation

uses unTools;

{$R *.dfm}

procedure TfrmUploadImageRK.btnBatalClick(Sender: TObject);
begin
  lstImage.Clear;
  cxLstBox.Clear;
  Close;
end;

procedure TfrmUploadImageRK.btnBrowseClick(Sender: TObject);
begin

  if mJenis = 'IS' then begin
    if cxLstBox.Items.Count = 2 then begin
      MsgBox('Jumlah foto yang bisa dimasukkan maksimal 2 foto.');
      Abort;
    end;
  end
  else begin
    if cxLstBox.Items.Count = 5 then begin
      MsgBox('Jumlah foto yang bisa dimasukkan maksimal 5 foto.');
      Abort;
    end;
  end;

  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 550000 then
        MsgBox('Ukuran file tidak boleh lebih dari 500KB.')
      else begin
        image.Picture.LoadFromFile(OpenDlg.FileName);
        cxtNamaFile.Text := OpenDlg.FileName;
      end;
    end;
  finally
    Abort;
  end;
end;

procedure TfrmUploadImageRK.btnTambahClick(Sender: TObject);
begin
  if cxtNamaFile.Text <> '' then begin
    cxLstBox.Items.Add(cxtNamaFile.Text);
    lstImage.Add(cxtNamaFile.Text);
    cxtNamaFile.Text := '';
    image.Picture := nil;
  end;
end;

procedure TfrmUploadImageRK.FormCreate(Sender: TObject);
begin
  lstImage := TStringList.Create;
  OpenDlg.Filter := 'JPG files (*.jpg)|*.JPG';
end;

procedure TfrmUploadImageRK.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmUploadImageRK.btnHapusClick(Sender: TObject);
var
  s: string;
begin
  if cxLstBox.ItemIndex > -1 then begin
    s := cxLstBox.Items.Strings[cxLstBox.ItemIndex];
    lstImage.Delete(lstImage.IndexOf(s));
    cxLstBox.DeleteSelected;
  end;
end;

procedure TfrmUploadImageRK.FormShow(Sender: TObject);
var
  i: Integer;
begin
  if lstImage.Count > 0 then begin
    for i := 0 to lstImage.Count - 1 do begin
      cxLstBox.Items.Add(lstImage.Strings[i]);
    end;
  end;
end;

end.
