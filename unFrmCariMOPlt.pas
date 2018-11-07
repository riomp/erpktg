unit unFrmCariMOPlt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmCariMOPlt = class(TForm)
    cxGrd: TcxGrid;
    cxTblView: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    Label2: TLabel;
    zq: TZQuery;
    dsDetail: TDataSource;
    cxTblViewno_penerimaan: TcxGridDBColumn;
    cxTblViewtgl_penerimaan: TcxGridDBColumn;
    cxTblViewnama_customer: TcxGridDBColumn;
    cxTblViewnama_barang: TcxGridDBColumn;
    cxTblViewjumlah: TcxGridDBColumn;
    btnOK: TButton;
    btnBatal: TButton;
    procedure FormCreate(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    mNoSO: string;
  public
    property NoSO: string read mNoSO write mNoSO;
  end;

var
  frmCariMOPlt: TfrmCariMOPlt;

implementation

{$R *.dfm}

procedure TfrmCariMOPlt.FormCreate(Sender: TObject);
begin
  //
end;

procedure TfrmCariMOPlt.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  try
    mNoSO := zq.FieldByName('no_penerimaan').AsString;
    Close;
  except
  end;
end;

procedure TfrmCariMOPlt.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariMOPlt.btnOKClick(Sender: TObject);
begin
  try
    mNoSO := zq.FieldByName('no_penerimaan').AsString;
    Close;
  except
  end;
end;

end.
