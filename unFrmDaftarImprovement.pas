unit unFrmDaftarImprovement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxSpinEdit, cxMemo, cxLabel, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, StdCtrls, ExtCtrls;

type
  TfrmDaftarImprovement = class(TfrmTransBaru)
    Label1: TLabel;
    cxtNoTrans: TcxTextEdit;
    Label2: TLabel;
    cxdTglTrans: TcxDateEdit;
    Label3: TLabel;
    cxlDiberikan: TcxLookupComboBox;
    Label6: TLabel;
    cxeDibuatOleh: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxmUsulan: TcxMemo;
    cxLabel2: TcxLabel;
    cxmAlasan: TcxMemo;
    cxLabel1: TcxLabel;
    cxsNilai: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxdDueDate1: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxtPIC1: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarImprovement: TfrmDaftarImprovement;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

end.
