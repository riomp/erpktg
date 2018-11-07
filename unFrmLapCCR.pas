unit unFrmLapCCR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxExportXLS, frxClass, frxExportPDF, frxChBox, frxDBSet, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmLapCCR = class(TForm)
    zqRK: TZQuery;
    dsRK: TDataSource;
    rptRK: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    rptDaftarRK: TfrxReport;
    rptRekapRK: TfrxReport;
    zqRekapRK: TZQuery;
    fdbRekapRK: TfrxDBDataset;
    dsRekapRK: TDataSource;
    fdkRK: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLapCCR: TfrmLapCCR;

implementation

{$R *.dfm}

end.
