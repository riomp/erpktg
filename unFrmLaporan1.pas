unit unFrmLaporan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, DB, ZAbstractRODataset, ZDataset, StdCtrls, frxDBSet,
  frxExportPDF, frxExportXLS, frxExportXLSX;

type
  TFrm_LaporanUmum1 = class(TForm)
    Label37: TLabel;
    zqrQuote: TZReadOnlyQuery;
    dsQuote: TDataSource;
    rptQuote: TfrxReport;
    fdbQuote: TfrxDBDataset;
    Label1: TLabel;
    rptKPO: TfrxReport;
    zqrKPO: TZReadOnlyQuery;
    dsKPO: TDataSource;
    fdbKPO: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Label2: TLabel;
    zqrKeluhan: TZReadOnlyQuery;
    dsKeluhan: TDataSource;
    fdbKeluhan: TfrxDBDataset;
    rptKeluhan: TfrxReport;
    Label3: TLabel;
    rptSurvey: TfrxReport;
    zqrSurvey: TZReadOnlyQuery;
    dsSurvey: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    Label4: TLabel;
    rptHPP: TfrxReport;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    zqrBahan: TZReadOnlyQuery;
    dsBahan: TDataSource;
    zqrUpah: TZReadOnlyQuery;
    dsUpah: TDataSource;
    fdbBahan: TfrxDBDataset;
    fdbUpah: TfrxDBDataset;
    rptHPP1: TfrxReport;
    frxXLSXExport1: TfrxXLSXExport;
    Label5: TLabel;
    zqrCost: TZReadOnlyQuery;
    dsCost: TDataSource;
    fdbCost: TfrxDBDataset;
    rpCost: TfrxReport;
    zqrUpahCost: TZReadOnlyQuery;
    dsUpahCost: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    zqrListrikCost: TZReadOnlyQuery;
    fdbListrikCost: TfrxDBDataset;
    dsListrikCost: TDataSource;
    zqrMat: TZReadOnlyQuery;
    dsMat: TDataSource;
    fdbMat: TfrxDBDataset;
    zqrMat1: TZReadOnlyQuery;
    dsMat1: TDataSource;
    fdbMat1: TfrxDBDataset;
    fdbSPK1: TfrxDBDataset;
    zqrDetail: TZReadOnlyQuery;
    dsDetail: TDataSource;
    fdbDetail: TfrxDBDataset;
    zqrDataBiaya: TZReadOnlyQuery;
    dsDataBiaya: TDataSource;
    fdbDataBiaya: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_LaporanUmum1: TFrm_LaporanUmum1;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

end.
