unit unFrmCariSPMB;

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
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, StdCtrls,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, unFrmSJ, NxCellSource;

type
  TfrmCariSPMB = class(TForm)
    zqrSOhead: TZReadOnlyQuery;
    dsSOHead: TDataSource;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Button1: TButton;
    btnBatal: TButton;
    cxGrid1DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1no_dokumen: TcxGridDBColumn;
    cxGrid1DBTableView1nopol: TcxGridDBColumn;
    cxGrid1DBTableView1driver: TcxGridDBColumn;
    cxGrid1DBTableView1no_so: TcxGridDBColumn;
    cxGrid1DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid1DBTableView1qty_so: TcxGridDBColumn;
    cxGrid1DBTableView1qty: TcxGridDBColumn;
    cxGrid1DBTableView1satuan: TcxGridDBColumn;
    cxGrid1DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal_so: TcxGridDBColumn;
    cxGrid1DBTableView1kode_customer: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_required: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1alamat: TcxGridDBColumn;
    cxGrid1DBTableView1kota: TcxGridDBColumn;
    cxGrid1DBTableView1provinsi: TcxGridDBColumn;
    cxGrid1DBTableView1negara: TcxGridDBColumn;
    cxGrid1DBTableView1f_completed: TcxGridDBColumn;
    NextGrid1: TNextGrid;
    NxDataCellSource1: TNxDataCellSource;
    TNxTextColumn1: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    TNxTextColumn4: TNxTextColumn;
    TNxTextColumn5: TNxTextColumn;
    TNxNumberColumn1: TNxNumberColumn;
    TNxNumberColumn2: TNxNumberColumn;
    TNxNumberColumn3: TNxNumberColumn;
    TNxTextColumn6: TNxTextColumn;
    TNxTextColumn7: TNxTextColumn;
    TNxDateColumn2: TNxDateColumn;
    TNxTextColumn8: TNxTextColumn;
    TNxDateColumn3: TNxDateColumn;
    TNxTextColumn9: TNxTextColumn;
    TNxTextColumn10: TNxTextColumn;
    TNxTextColumn11: TNxTextColumn;
    TNxTextColumn12: TNxTextColumn;
    TNxTextColumn13: TNxTextColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure nxGrdSODetCellDblClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormShow(Sender: TObject);
  private
    mNoSO: string;
    mKodeBrg: string;
    mKodeCust: string;
    mfSJ: TFrmSJ;
  public
    property NoSO: string read mNoSO;
    property KodeBrg: string read mKodeBrg;
    property fSJ: TfrmSJ write mfSJ;
    property KodeCust: string write mKodeCust;
  end;

var
  frmCariSPMB: TfrmCariSPMB;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmCariSPMB.btnProsesClick(Sender: TObject);
begin
  with zqrSOhead do begin
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    ParamByName('kode_customer').AsString := mKodeCust;
    Open;
  end;
end;

procedure TfrmCariSPMB.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  
end;

procedure TfrmCariSPMB.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  {
  for i := 0 to nxGrdSODet.RowCount - 1 do begin
    if nxGrdSODet.Cell[0,i].AsBoolean then
      mfSPMB.AddRow(
        zqrSOhead.FieldByName('no_bukti').AsString,
        nxGrdSODet.Cell[1,i].AsString
      );
  end;

  {
  try
    mNoSO := zqrSOhead.FieldByName('no_bukti').AsString;
    mKodeBrg := zqrSODet.FieldByName('kode_brg').AsString;
    ModalResult := mrOk;
  except
  end;
  }
end;

procedure TfrmCariSPMB.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariSPMB.cxGridDBTableView1DblClick(Sender: TObject);
begin
  btnProsesClick(nil);
end;

procedure TfrmCariSPMB.nxGrdSODetCellDblClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  Abort;
  {
  if ACol = 0 then begin
    mfSPMB.AddRow(
      zqrSOhead.FieldByName('no_bukti').AsString,
      nxGrdSODet.Cell[0,ARow].AsString
    );
  end;
  }
end;

procedure TfrmCariSPMB.FormShow(Sender: TObject);
begin
  btnProsesClick(nil);
end;

end.
