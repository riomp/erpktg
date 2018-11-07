unit unFrmScheduleKirimPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxTextEdit, cxDBLookupComboBox, cxSpinEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGrid, cxMaskEdit, StdCtrls, cxCalendar;

type
  TfrmScheduleKriripPP = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxsReject: TcxSpinEdit;
    cxgrdPP: TcxGrid;
    cxGrdTblPP: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColQty: TcxGridColumn;
    cxColKeterangan: TcxGridColumn;
    cxgrdlvl1Grid1Level1: TcxGridLevel;
    cxGrdTblPPColumn1: TcxGridColumn;
    Button1: TButton;
    Button2: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmScheduleKriripPP: TfrmScheduleKriripPP;

implementation

uses
  unDm, unTools, unAplikasi, unFrmTrsPermintaanPembelian;

{$R *.dfm}

end.
