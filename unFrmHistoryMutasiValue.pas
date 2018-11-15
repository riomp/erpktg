unit unFrmHistoryMutasiValue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  ZAbstractDataset, ZDataset, ZAbstractRODataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, cxLabel,
  StdCtrls, ExtCtrls, cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmHistoryMutasiValue = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxlGudang: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxsSA: TcxSpinEdit;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    zqrKS: TZReadOnlyQuery;
    dsKS: TDataSource;
    zGudang: TZQuery;
    dsGudang: TDataSource;
    cxtbKS: TcxGridDBBandedTableView;
    cxtbKSColumn1: TcxGridDBBandedColumn;
    cxtbKSColumn2: TcxGridDBBandedColumn;
    cxtbKSColumn3: TcxGridDBBandedColumn;
    cxtbKSColumn4: TcxGridDBBandedColumn;
    cxtbKSColumn5: TcxGridDBBandedColumn;
    cxtbKSColumn6: TcxGridDBBandedColumn;
    cxtbKSColumn7: TcxGridDBBandedColumn;
    cxtbKSColumn8: TcxGridDBBandedColumn;
    cxtbKSColumn9: TcxGridDBBandedColumn;
    cxtbKSColumn10: TcxGridDBBandedColumn;
    cxtbKSColumn11: TcxGridDBBandedColumn;
    cxtbKSColumn12: TcxGridDBBandedColumn;
    cxtbKSColumn13: TcxGridDBBandedColumn;
    cxLabel5: TcxLabel;
    cxSAV: TcxSpinEdit;
    cxLabel6: TcxLabel;
    cxsTSAV: TcxSpinEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    mIdBrg: String;
  public
    { Public declarations }
    property IdBrg: String read mIdBrg write mIdBrg;
  end;

var
  frmHistoryMutasiValue: TfrmHistoryMutasiValue;

implementation

uses
  unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmHistoryMutasiValue.FormShow(Sender: TObject);
var
  s,s1,s2: string;
  q: TZQuery;
begin
  inherited;
   s := FormatFloat('#,#0.00', cxsSA.Value);
  if DecimalSeparator = '.' then
    s := StringReplace(s,',','.',[rfReplaceall])
  else if DecimalSeparator = ',' then begin
    s := StringReplace(s,'.','',[rfReplaceAll]);
    s := StringReplace(s,',','.',[rfReplaceAll]);
  end;

 {  s1 := FormatFloat('#,##0.00', cxSAV.Value);
  if DecimalSeparator = '.' then
    s1 := StringReplace(s1,',','',[rfReplaceall])
  else if DecimalSeparator = ',' then begin
    s1 := StringReplace(s1,'.','',[rfReplaceAll]);
    s1 := StringReplace(s1,',','',[rfReplaceAll]);
  end;   }

     s2 := FormatFloat('#,##0.00', cxsTSAV.Value);
  if DecimalSeparator = '.' then
    s2 := StringReplace(s2,',','',[rfReplaceall])
  else if DecimalSeparator = ',' then begin
    s2 := StringReplace(s2,'.','',[rfReplaceAll]);
    s2 := StringReplace(s2,',','',[rfReplaceAll]);
  end;

  dm.zConn.ExecuteDirect('call sp_kartustokdetailvalue(''' + mIdBrg + ''',''' + cxlGudang.EditValue + ''','''+ s +''',''' + FormatDateTime('yyyy-mm-dd', cxdTgl1.Date) + ''',''' +  FormatDateTime('yyyy-mm-dd', cxdTgl2.Date) +''','''+ s2  +''')');

  zqrKS.SQL.Text := 'SELECT * FROM _ks2';
  zqrKS.Open;
end;

end.
