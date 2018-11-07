unit unFrmImprovement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, DB, ZAbstractRODataset, ZDataset, cxSpinEdit,
  cxMemo, cxLabel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, StdCtrls,
  ExtCtrls;

type
  TfrmOpr_Improvement = class(TfrmTransBaru)
    Label1: TLabel;
    cxtNoTrans: TcxTextEdit;
    Label2: TLabel;
    cxdTglTrans: TcxDateEdit;
    Label3: TLabel;
    cxlDiberikan: TcxLookupComboBox;
    cxLabel10: TcxLabel;
    cxmUsulan: TcxMemo;
    cxLabel1: TcxLabel;
    cxsNilai: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxdDueDate1: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxtPIC1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxmAlasan: TcxMemo;
    zrq: TZReadOnlyQuery;
    dsUserApp: TDataSource;
    Label6: TLabel;
    cxeDibuatOleh: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpr_Improvement: TfrmOpr_Improvement;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmOpr_Improvement.FormCreate(Sender: TObject);
begin
  zrq.Open;

  cxdTglTrans.Date  := Aplikasi.TanggalServer ;
  cxtNoTrans.Text := GetLastFak('improvement');
  cxeDibuatOleh.Text := aplikasi.NamaUser;

end;

procedure TfrmOpr_Improvement.btnSimpanClick(Sender: TObject);
var
   q : TZQuery ;
   no: string;
begin

    no := GetLastFak('improvement');
    UpdateFaktur(Copy(no,1,8));
    try
      q := OpenRS('SELECT * FROM tbl_improvement where kode =''%s''',[cxtNoTrans.Text]) ;

      q.Insert ;
      with q do begin
        FieldByName('kode').AsString := cxtNoTrans.Text;
        FieldByName('nama').AsString := cxeDibuatOleh.Text;
        FieldByName('departemen').AsString := cxlDiberikan.Text;
        FieldByName('alasan').AsString := cxmAlasan.Text ;
        FieldByName('usulan').AsString := cxmUsulan.Text ;
        FieldByName('tanggal').AsDateTime := cxdTglTrans.Date ;
        FieldByName('pic').AsString := cxtPIC1.Text  ;
        FieldByName('due_date').AsDateTime := cxdDueDate1.Date;
        FieldByName('nilai').AsFloat:= cxsNilai.EditValue  ;
        Post ;
        Close;
      end;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

    MsgBox('Pengajuan Improvement sudah disimpan dengan nomer: ' + cxtNoTrans.Text);
    btnKeluarClick(nil);

end;

end.
