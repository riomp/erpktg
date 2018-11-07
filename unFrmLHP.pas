unit unFrmLHP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
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
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset, StdCtrls,
  ExtCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxPC, cxSpinEdit, cxCheckBox;

type
  TfrmLHP = class(TfrmTransBaru)
    zqrHslPrd: TZReadOnlyQuery;
    dsHslPrd: TDataSource;
    dsAfal: TDataSource;
    zqrAfal: TZReadOnlyQuery;
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    tblLHP: TcxGridDBTableView;
    tblLHPid: TcxGridDBColumn;
    tblLHPno_spk: TcxGridDBColumn;
    tblLHPno_bukti: TcxGridDBColumn;
    tblLHPtanggal: TcxGridDBColumn;
    tblLHPjam1: TcxGridDBColumn;
    tblLHPjam2: TcxGridDBColumn;
    tblLHPshift: TcxGridDBColumn;
    tblLHPsatuan: TcxGridDBColumn;
    tblLHPqty_prod: TcxGridDBColumn;
    tblLHPqty_prod_kg: TcxGridDBColumn;
    tblLHPqty_reject: TcxGridDBColumn;
    tblLHPmesin: TcxGridDBColumn;
    tblLHPkode_brg: TcxGridDBColumn;
    tblLHPdeskripsi: TcxGridDBColumn;
    tblLHProuting: TcxGridDBColumn;
    tblLHPtgl_input: TcxGridDBColumn;
    tblAfal: TcxGridDBTableView;
    tblAfalid: TcxGridDBColumn;
    tblAfalno_spk: TcxGridDBColumn;
    tblAfalno_bukti: TcxGridDBColumn;
    tblAfaltanggal: TcxGridDBColumn;
    tblAfalkategori: TcxGridDBColumn;
    tblAfaljenis: TcxGridDBColumn;
    tblAfalketerangan: TcxGridDBColumn;
    tblAfalqty: TcxGridDBColumn;
    tblAfalsatuan: TcxGridDBColumn;
    tblAfalf_id: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    dsKarantina: TDataSource;
    zqrKarantina: TZReadOnlyQuery;
    cxGrid2: TcxGrid;
    tblKarantina: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tblKarantinano_bukti: TcxGridDBColumn;
    tblKarantinano_spk: TcxGridDBColumn;
    tblKarantinatanggal: TcxGridDBColumn;
    tblKarantinashift: TcxGridDBColumn;
    tblKarantinaqty_hasil: TcxGridDBColumn;
    tblKarantinasatuan: TcxGridDBColumn;
    tblKarantinaqty_kg: TcxGridDBColumn;
    btnRework: TButton;
    tblLHPbahan: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    tblLHPkarantina: TcxGridDBColumn;
    Panel2: TPanel;
    tblLHPf_posted: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnReworkClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLHP: TfrmLHP;

implementation

uses unDm, unTools, unAplikasi, unFrmInputLHP, unFrmRework;

{$R *.dfm}

procedure TfrmLHP.btnProsesClick(Sender: TObject);
begin
  inherited;
    Screen.Cursor := crSQLWait;
  with zqrHslPrd do begin
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
  end;
  zqrAfal.Close;
  zqrAfal.Open;
    Screen.Cursor := crDefault;
end;

procedure TfrmLHP.FormCreate(Sender: TObject);
begin
  inherited;
   cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  zqrKarantina.Open ;
  pg.ActivePageIndex := 0 ;
end;

procedure TfrmLHP.btnSimpanClick(Sender: TObject);
var
  f :TfrmInputLHP;
begin
  f := TfrmInputLHP.Create(self);
  f.Jenis:= 'tambah';
  f.ShowModal ;

  zqrHslPrd.Close ;
  zqrHslPrd.Open;
end;

procedure TfrmLHP.btnReworkClick(Sender: TObject);
var
  f : TfrmRework ;
begin
  inherited;
    f := TfrmRework.Create(self);
    f.NoHPR:= zqrKarantina.FieldByName('no_bukti').AsString;
    f.cxSpinEdit1.Value :=   zqrKarantina.FieldByName('qty_hasil').AsFloat;
    f.cxSpinEdit2.Value :=   zqrKarantina.FieldByName('qty_kg').AsFloat;
    f.Label12.Caption := zqrKarantina.FieldByName('satuan').AsString;
    f.Jenis:= 'tambah';
    f.ShowModal;
    zqrKarantina.Close;
    zqrKarantina.Open;
end;

procedure TfrmLHP.btnEditClick(Sender: TObject);
var
  f :TfrmInputLHP;
begin
  f := TfrmInputLHP.Create(self);
  f.Jenis:= 'edit';
  f.NoLHP:= zqrHslPrd.FieldByName('no_bukti').AsString;
  f.ShowModal ;

  zqrHslPrd.Close ;
  zqrHslPrd.Open;
end;

procedure TfrmLHP.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if zqrHslPrd.FieldByName('f_posted').AsInteger = 0 then begin
    i := unTools.QBox(Self, 'Hapus LHP ini ?','Hapus');
    if i = IDYES then begin
       dm.zConn.ExecuteDirect('DELETE FROM tbl_hsl_prd WHERE no_bukti = ''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_hsl_prd_lhp WHERE no_bukti = ''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_karantina_dtl WHERE no_bukti =''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_karantina_hdr WHERE no_bukti = ''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_hsl_prd_operator WHERE no_bukti =''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_hsl_prd_afvaldt WHERE no_bukti =''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_pemakaian_bahan WHERE no_bukti = ''' + zqrHslPrd.FieldByName('no_bukti').AsString + '''');
      MsgBox('Laporan Hasil Produksi sudah dihapus.');
      zqrHslPrd.Close;
      zqrHslPrd.Open;
    end;
  end
  else begin
     MsgBox('Laporan Hasil Produksi sudah di Posting');
     Abort ;
  end;
end;

end.
