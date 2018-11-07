unit unListPiutangCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, ExtCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  cxGridCustomTableView, cxGridTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridDBTableView, cxGrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmListPiutangCustomer = class(TfrmTransBaru)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1Level1: TcxGridLevel;
    cxColCustomer: TcxGridColumn;
    cxColNoInvoice: TcxGridColumn;
    cxColDateInvoice: TcxGridColumn;
    cxColTop: TcxGridColumn;
    cxColAmount: TcxGridColumn;
    ZQuery1: TZQuery;
    ds: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxColDueDate: TcxGridColumn;
    cxStyle2: TcxStyle;
    cxdTanggal: TcxDateEdit;
    cxStyle3: TcxStyle;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1TableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListPiutangCustomer: TfrmListPiutangCustomer;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmListPiutangCustomer.FormCreate(Sender: TObject);
var
  z : TZQuery ;
  i : Integer;
begin
 cxdTanggal.EditValue := Aplikasi.TanggalServer ;
  z := OpenRS('SELECT * FROM tbl_piutang_cust where payment<>invoice_amount order by due_date asc') ;
    while not z.Eof do begin
      with cxGrid1TableView1.DataController do begin
       i := AppendRecord ;
       Values[i, cxColCustomer.Index] := z.FieldByName('customer').AsString ;
       Values[i, cxColNoInvoice.index] := z.FieldByName('invoice_no').AsString;
       Values[i, cxColDateInvoice.index] := z.FieldByName('invoice_date').AsDateTime ;
       Values[i, cxColTop.index] := z.FieldByName('top').AsString;
       Values[i, cxColDueDate.index] := z.FieldByName('due_date').AsString;
       Values[i, cxColAmount.index] := z.FieldByName('invoice_amount').AsFloat ;
      end;
      z.Next;
    end;
    z.Close;

end;

procedure TfrmListPiutangCustomer.cxGrid1TableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);

begin
   if (cxdTanggal.Date - ARecord.Values[cxColDueDate.Index]  >= -7) then
   AStyle := cxStyle1
   else
     if  (cxdTanggal.Date - ARecord.Values[cxColDueDate.Index] >= -14) then
   AStyle := cxStyle2
   else
  if (cxdTanggal.Date - ARecord.Values[cxColDueDate.Index] < -14) then
   AStyle := cxStyle3
   else
   AStyle := cxStyle1 ;

end;

end.
