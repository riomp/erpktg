unit unFrmSettingFotoBrg;

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
  cxData, cxDataStorage, DB, cxDBData, ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, cxTextEdit, cxCheckBox,Jpeg;

type
  TfrmSettingFotoBrg = class(TfrmTplMaster)
    cxTblViewBrg: TcxGridDBTableView;
    cxGrdBrgLevel1: TcxGridLevel;
    cxGrdBrg: TcxGrid;
    image: TImage;
    btnBrowse: TButton;
    btnWebcam: TButton;
    Shape1: TShape;
    btnLihatFoto: TButton;
    zqrBrg: TZQuery;
    dsBrg: TDataSource;
    OpenDlg: TOpenDialog;
    OpenDlg2: TOpenDialog;
    cxtNamaFile: TcxTextEdit;
    cxTblViewBrgkode: TcxGridDBColumn;
    cxTblViewBrgdeskripsi: TcxGridDBColumn;
    cxTblViewBrgtipe: TcxGridDBColumn;
    cxTblViewBrgkategori: TcxGridDBColumn;
    cxTblViewBrgsubkategori: TcxGridDBColumn;
    btnSimpanFoto: TButton;
    cxTblViewBrgColumn1: TcxGridDBColumn;
    procedure btnBrowseClick(Sender: TObject);
    procedure btnWebcamClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanFotoClick(Sender: TObject);
    procedure btnLihatFotoClick(Sender: TObject);
    procedure cxTblViewBrgFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettingFotoBrg: TfrmSettingFotoBrg;

implementation

uses unAplikasi, unDm, unTools, unFrmWebcam;

{$R *.dfm}

procedure TfrmSettingFotoBrg.btnBrowseClick(Sender: TObject);
begin
  try
    if OpenDlg.Execute then begin
      if ObtainFileSize(OpenDlg.FileName) > 550000 then
        MsgBox('Ukuran file tidak boleh lebih dari 500 Kb.')
      else begin
        image.Picture.LoadFromFile(OpenDlg.FileName);
        cxtNamaFile.Text := OpenDlg.FileName;
      end;
    end;
  finally
    Abort;
  end;
end;

procedure TfrmSettingFotoBrg.btnWebcamClick(Sender: TObject);
var
  fc: TfrmWebcam;
begin
  inherited;
  fc := TfrmWebcam.Create(Self);
  if fc.ShowModal = mrOk then begin
    try
    image.Picture.LoadFromFile(aplikasi.AppPath + '\~t.jpg');
    cxtNamaFile.Text := aplikasi.AppPath + '\~t.jpg';
    except
    end;
  end;
  fc.Release;
end;

procedure TfrmSettingFotoBrg.FormShow(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
end;

procedure TfrmSettingFotoBrg.btnSimpanFotoClick(Sender: TObject);
var
  q, q_sf: TZQuery;
begin

  q := OpenRS('SELECT kode, image FROM tbl_barang WHERE kode = %s',
    [zqrBrg.FieldByName('kode').AsString]);

  q.Edit;
  if Trim(cxtNamaFile.Text) <> '' then begin
    if q.FieldByName('image').IsNull then begin
      q_sf := OpenRS('SELECT * FROM tbl_barang_setfoto');
      q_sf.Insert;
      q_sf.FieldByName('kode').AsString := zqrBrg.FieldByName('kode').AsString;
      q_sf.FieldByName('tanggal').AsDateTime := aplikasi.NowServer;
      q_sf.FieldByName('user').AsString := Aplikasi.NamaUser;
      q_sf.FieldByName('user_dept').AsString := aplikasi.UserDept;
      q_sf.Post;
      q_sf.Close;
    end;
    TBlobField(q.FieldByName('image')).LoadFromFile(cxtNamaFile.Text);
  end;
  q.Post;

  zqrBrg.Close;
  zqrBrg.Open;

  cxtNamaFile.Text := '';
end;

procedure TfrmSettingFotoBrg.btnLihatFotoClick(Sender: TObject);
var
  q: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  q := OpenRS('SELECT kode, image FROM tbl_barang WHERE kode = %s',
    [zqrBrg.FieldByName('kode').AsString]);
    
  if not q.FieldByName('image').IsNull then begin
      Stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('image')).SaveToStream(Stream);
      Stream.Position := 0;

      jpg := TJPEGImage.Create;
      jpg.LoadFromStream(Stream);

      image.Picture.Assign(jpg);

      Stream.Free;
      jpg.Free;
    end;
    
  q.Close;

end;

procedure TfrmSettingFotoBrg.cxTblViewBrgFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  image.Picture := nil;
end;

end.
