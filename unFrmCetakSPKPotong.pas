unit unFrmCetakSPKPotong;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, ZAbstractRODataset, ZDataset;

type
  TfrmCetakSPKPotong = class(TForm)
    tblView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrSPKPHead: TZReadOnlyQuery;
    dsSPKPHead: TDataSource;
    tblViewno_bukti: TcxGridDBColumn;
    tblViewtanggal: TcxGridDBColumn;
    tblViewjam: TcxGridDBColumn;
    tblViewuser: TcxGridDBColumn;
    tblViewuser_dept: TcxGridDBColumn;
    btnCetak: TButton;
    btnKeluar: TButton;
    zqrSPKPDet: TZReadOnlyQuery;
    dsSPKPDet: TDataSource;
    cxGrid1Level2: TcxGridLevel;
    tblViewDet: TcxGridDBTableView;
    tblViewDetno_spk: TcxGridDBColumn;
    tblViewDetno_so: TcxGridDBColumn;
    tblViewDetkode_brg: TcxGridDBColumn;
    tblViewDetqty: TcxGridDBColumn;
    tblViewDetsatuan: TcxGridDBColumn;
    tblViewDetkode_gdg: TcxGridDBColumn;
    tblViewDetjenis: TcxGridDBColumn;
    tblViewDetdeskripsi: TcxGridDBColumn;
    cxGrid1Level3: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    cxGridLevel3: TcxGridLevel;
    zqrAssemHead: TZReadOnlyQuery;
    zqrAssemDet: TZReadOnlyQuery;
    dsAssemDet: TDataSource;
    dsAssemHead: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1jam: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1tgl_input: TcxGridDBColumn;
    cxGridDBTableView1f_approval: TcxGridDBColumn;
    cxGridDBTableView1no_so: TcxGridDBColumn;
    cxGridDBTableView1f_receipt: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCetakClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mJenis: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read mJenis write mJenis;
  end;

var
  frmCetakSPKPotong: TfrmCetakSPKPotong;

implementation

uses unAplikasi, unDm, unThreadKirimEmail, unTools, unFrmLapUmum;

{$R *.dfm}

procedure TFrmCetakSPKPotong.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmCetakSPKPotong.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCetakSPKPotong.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmCetakSPKPotong.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
  nob: string;
begin
  if mJenis = 'spk-potong' then begin
    nob := zqrSPKPHead.FieldByName('no_bukti').AsString;

    f := TfrmLapUmum.Create(self);
    f.zqrSPKPotong.SQL.Text := 'SELECT * FROM v_lap_spk_potong ' +
      'WHERE no_bukti = ''' + nob + '''';
    f.zqrSPKPotong.Open;
    f.zqrSPKPotongDet.SQL.Text := 'SELECT * FROM v_lap_spk_potong_det ' +
      'WHERE no_bukti = ''' + nob + '''';
    f.zqrSPKPotongDet.Open;
    f.zqrSPKPotongDet2.SQL.Text := 'SELECT * FROM v_lap_spk_potong_det2 ' +
      'WHERE no_bukti = ''' + nob + '''';
    f.zqrSPKPotongDet2.Open;

    f.rptSPKPotong.ShowReport(True);
    f.Release;
  end
  else begin
    nob := zqrAssemHead.FieldByName('no_bukti').AsString;

    f := TfrmLapUmum.Create(self);
    f.zqrSPKAssemHead.SQL.Text := 'SELECT * FROM v_lap_spk_assembly_head ' +
      'WHERE no_bukti = ''' + nob + '''';
    f.zqrSPKAssemHead.Open;
    f.zqrSPKAssemDet1.SQL.Text := 'SELECT * FROM v_lap_spk_assembly_det1 ' +
      'WHERE no_bukti = ''' + nob + '''';
    f.zqrSPKAssemDet1.Open;
    f.zqrSPKAssemDet2.SQL.Text := 'SELECT * FROM v_lap_spk_assembly_det2 ' +
      'WHERE no_bukti = ''' + nob + '''';
    f.zqrSPKAssemDet2.Open;

    f.rptSPKAssem.ShowReport(True);
    f.Release;
  end;

end;

procedure TfrmCetakSPKPotong.FormCreate(Sender: TObject);
begin
  cxGrid2.Top := cxGrid1.Top;
  cxGrid2.Left := cxGrid1.Left;
end;

procedure TfrmCetakSPKPotong.FormShow(Sender: TObject);
begin
  if mJenis = 'spk-potong' then
    cxGrid2.Visible := False
  else
    cxGrid1.Visible := False;
end;

end.
