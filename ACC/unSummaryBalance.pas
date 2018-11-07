unit unSummaryBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, StdCtrls, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSummaryBalance = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxTblSummary: TcxGridDBTableView;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn42: TcxGridDBColumn;
    cxGridDBColumn43: TcxGridDBColumn;
    cxGridDBColumn44: TcxGridDBColumn;
    cxGridDBColumn45: TcxGridDBColumn;
    cxGridDBColumn46: TcxGridDBColumn;
    cxGridDBColumn47: TcxGridDBColumn;
    cxGridDBColumn48: TcxGridDBColumn;
    cxGridDBColumn49: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    zqrSummary: TZReadOnlyQuery;
    dsSummary: TDataSource;
    cxTblSummarynoakun: TcxGridDBColumn;
    cxTblSummarynama: TcxGridDBColumn;
    cxTblSummarydebet: TcxGridDBColumn;
    cxTblSummarykredit: TcxGridDBColumn;
    cxTblSummarysawal: TcxGridDBColumn;
    cxTblSummarysakhir: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSummaryBalance: TfrmSummaryBalance;

implementation

uses
  unDm, unTools, unAplikasi, unFrmSubsidiaryLedger, UnFrmBpp;

{$R *.dfm}

procedure TfrmSummaryBalance.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmSummaryBalance.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrSummary do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSummaryBalance.btnSimpanClick(Sender: TObject);
var
  f : TfrmSubsidiaryLedger ;
begin
  inherited;
  f :=  TfrmSubsidiaryLedger.Create(self);
  f.lblJudul.Caption := 'Subsidairy Ledger' +' '+ '['+ zqrSummary.FieldByName('noakun').AsString + '-' + zqrSummary.FieldByName('nama').AsString + ']';

  with f.zqrSL do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    ParamByName('akun').AsString := zqrSummary.FieldByName('noakun').AsString ;
    Open;
    Screen.Cursor := crDefault;
  end;

  f.ShowModal;
end;

procedure TfrmSummaryBalance.btnBaruClick(Sender: TObject);
var
  f : TfrmBPP ;
begin
  inherited;
  f := TfrmBPP.Create(self);
  f.Show ;
end;

end.
