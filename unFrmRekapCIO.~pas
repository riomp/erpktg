unit unFrmRekapCIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ZAbstractRODataset, ZDataset;

type
  TfrmRekapCIO = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    Button1: TButton;
    cxTbl: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    zqrH: TZReadOnlyQuery;
    dsH: TDataSource;
    cxTbllokasi: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTblmesin: TcxGridDBColumn;
    cxTblkegiatan: TcxGridDBColumn;
    cxTblmasuk: TcxGridDBColumn;
    cxTblpulang: TcxGridDBColumn;
    cxTblshift: TcxGridDBColumn;
    cxTbljml_tk: TcxGridDBColumn;
    cxTbldivisi: TcxGridDBColumn;
    cxTbl2: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    zqrD: TZReadOnlyQuery;
    dsD: TDataSource;
    cxTbl2nik: TcxGridDBColumn;
    cxTbl2nama: TcxGridDBColumn;
    cxTbl2jabatan: TcxGridDBColumn;
    cxTbl2_in: TcxGridDBColumn;
    cxTbl2_out: TcxGridDBColumn;
    btnKeluar2: TButton;
    cxLabel3: TcxLabel;
    cxTbl2Column1: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    cxCmbJenis: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxTblFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnKeluar2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRekapCIO: TfrmRekapCIO;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmRekapCIO.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxCmbJenis.Properties.Items.CommaText := 'MASUK,PENUGASAN,MUTASI,ALOKASI,PULANG';
  cxCmbJenis.ItemIndex := 0;
end;

procedure TfrmRekapCIO.Button1Click(Sender: TObject);
begin
  inherited;
  zqrH.Close;
  zqrH.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrH.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrH.ParamByName('jenis').AsString := cxCmbJenis.Text;
  zqrH.Open;
end;

procedure TfrmRekapCIO.cxTblFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  try
    zqrD.Close;
    zqrD.ParamByName('tanggal').AsDate := zqrH.FieldByName('tanggal').AsDateTime;
    zqrD.ParamByName('lokasi').AsString := zqrH.FieldByName('lokasi').AsString;
    zqrD.ParamByName('shift').AsString := zqrH.FieldByName('shift').AsString;
    zqrD.ParamByName('divisi').AsString := zqrH.FieldByName('divisi').AsString;

    if zqrH.FieldByName('kegiatan').AsString = '' then
      zqrD.SQL.Strings[6] := 'IFNULL(kegiatan,'''') = '''' AND '
    else
      zqrD.SQL.Strings[6] := 'kegiatan = ''' + zqrH.FieldByName('kegiatan').AsString + ''' AND ';

    if zqrH.FieldByName('mesin').AsString = '' then
      zqrD.SQL.Strings[7] := 'IFNULL(mesin,'''') = '''' AND '
    else
      zqrD.SQL.Strings[7] := 'mesin = ''' + zqrH.FieldByName('mesin').AsString + ''' AND ';

    zqrD.ParamByName('jenis').AsString := cxCmbJenis.Text;
    zqrD.Open;
  except
  end;
end;

procedure TfrmRekapCIO.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
