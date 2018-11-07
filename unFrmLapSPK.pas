unit unFrmLapSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractDataset, ZDataset, frxClass, frxDBSet, DB,
  ZAbstractRODataset, StdCtrls, frxCross, frxExportPDF;

type
  TfrmLapSPK = class(TForm)
    zqrSpkDet: TZReadOnlyQuery;
    dsSpkDet: TDataSource;
    fdbSpkDet: TfrxDBDataset;
    rptSPK2: TfrxReport;
    rptSPK: TfrxReport;
    fdbSPK: TfrxDBDataset;
    zqrSPK: TZReadOnlyQuery;
    zqSPK: TZQuery;
    rptSPKTmbh: TfrxReport;
    dsSPK: TDataSource;
    rptSPK_NEW: TfrxReport;
    rptSPK_A5: TfrxReport;
    rptBom_fIXED: TfrxReport;
    rptST_A5: TfrxReport;
    zqrSPKBom: TZReadOnlyQuery;
    fdbSpkBOM: TfrxDBDataset;
    rptSPK_BOM: TfrxReport;
    rptSPK_PEL: TfrxReport;
    rptBOM_REF_OLD: TfrxReport;
    rptSPK_MIXCOMP: TfrxReport;
    rptBom: TfrxReport;
    rptSPK_PEL_OLD: TfrxReport;
    rptBom_FixedBackup: TfrxReport;
    rptSPK_Giling_old: TfrxReport;
    rptSPK_Giling: TfrxReport;
    rptSPKRopeOld: TfrxReport;
    Label1: TLabel;
    rptSPKRope: TfrxReport;
    rptSPKAssem: TfrxReport;
    Label2: TLabel;
    rptSPKRouter: TfrxReport;
    Label3: TLabel;
    zqrSPKR: TZReadOnlyQuery;
    fdbSPKR: TfrxDBDataset;
    rptSPK_Trial: TfrxReport;
    rptSPK_CB2: TfrxReport;
    rptSPK_A5_Backup: TfrxReport;
    Label4: TLabel;
    rptSPKRope_Backup: TfrxReport;
    rptSPK_Giling_backup: TfrxReport;
    Label5: TLabel;
    Label6: TLabel;
    rptSPK_A5_12052016: TfrxReport;
    rptSPKRope_12052016: TfrxReport;
    zqrSPKBom_CB: TZReadOnlyQuery;
    fdbSPKBom_CB: TfrxDBDataset;
    rptSPK_CB_BAK: TfrxReport;
    rptSPK_CB: TfrxReport;
    rptSPK_Trial_Old: TfrxReport;
    rptSPKAssem_Old: TfrxReport;
    rptSPK_CB_OLD: TfrxReport;
    Label7: TLabel;
    Label8: TLabel;
    rptSPK_Giling_3: TfrxReport;
    zqrSpkKtgH: TZReadOnlyQuery;
    fdbSpkKtgH: TfrxDBDataset;
    rptSpkKtg: TfrxReport;
    dsSpkKtgH: TDataSource;
    zqrSpkKtgD: TZReadOnlyQuery;
    dsSpkKtgD: TDataSource;
    fdbKtgSpkD: TfrxDBDataset;
    DataSource1: TDataSource;
    zqrBomDet: TZReadOnlyQuery;
    fdbBomDet: TfrxDBDataset;
    dsMatSaran: TDataSource;
    zqrMatSaran: TZReadOnlyQuery;
    fdbMatSaran: TfrxDBDataset;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    dsCP: TDataSource;
    zqrCP: TZReadOnlyQuery;
    fdbCP: TfrxDBDataset;
    rptCP: TfrxReport;
    dsMatSaran2: TDataSource;
    zqrMatSaran2: TZReadOnlyQuery;
    fdbMatSaran2: TfrxDBDataset;
    dsRouting: TDataSource;
    zqrRouting: TZReadOnlyQuery;
    fdbRouting: TfrxDBDataset;
    frxCrossObject1: TfrxCrossObject;
    zqrMain: TZReadOnlyQuery;
    dsMain: TDataSource;
    fdbMain: TfrxDBDataset;
    dsKonversi: TDataSource;
    zqrKonversi: TZReadOnlyQuery;
    fdbKonversi: TfrxDBDataset;
    dsBJ: TDataSource;
    zqrBJ: TZReadOnlyQuery;
    fdbBJ: TfrxDBDataset;
    dsBomFG: TDataSource;
    zqrBomFG: TZReadOnlyQuery;
    fdbBomFG: TfrxDBDataset;
    dsExt: TDataSource;
    zqrExt: TZReadOnlyQuery;
    fdbExt: TfrxDBDataset;
    dsPrint: TDataSource;
    zqrPrint: TZReadOnlyQuery;
    fdbPrint: TfrxDBDataset;
    dsConv: TDataSource;
    zqrConv: TZReadOnlyQuery;
    fdbConv: TfrxDBDataset;
    dsGusset: TDataSource;
    zqrGusset: TZReadOnlyQuery;
    fdbGusset: TfrxDBDataset;
    dsGambar: TDataSource;
    zqrGambar: TZReadOnlyQuery;
    fdbGambar: TfrxDBDataset;
    dsExt1: TDataSource;
    zqrExt1: TZReadOnlyQuery;
    fdbExt1: TfrxDBDataset;
    dsBomDet1: TDataSource;
    zqrBomDet1: TZReadOnlyQuery;
    fdbBomDet1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    dsKOnversiSatuan: TDataSource;
    zqrKonversiSatuan: TZReadOnlyQuery;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLapSPK: TfrmLapSPK;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

end.
