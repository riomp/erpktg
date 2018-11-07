unit unFrmApprovalJurnal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxCheckBox, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls, cxContainer,
  cxTextEdit, cxMemo, cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmApprovalJurnalKerja = class(TfrmTransBaru)
    cxGrdIS: TcxGrid;
    cxTblJurnal: TcxGridDBTableView;
    cxTblJurnalColumn3: TcxGridDBColumn;
    cxGrdISLevel1: TcxGridLevel;
    zqrJurnal: TZReadOnlyQuery;
    dsJurnal: TDataSource;
    cxTblJurnalno_jurnal: TcxGridDBColumn;
    cxTblJurnaltgl_jurnal: TcxGridDBColumn;
    cxTblJurnaldibuat_oleh: TcxGridDBColumn;
    cxTblJurnalkategori: TcxGridDBColumn;
    cxTblJurnaltgl_permintaan_selesai: TcxGridDBColumn;
    cxTblJurnalstatus: TcxGridDBColumn;
    btnApprove: TButton;
    btnTidakApprove: TButton;
    cxmDeskProject: TcxMemo;
    Label20: TLabel;
    Panel1: TPanel;
    Button3: TButton;
    cxMemoKetTidakApp: TcxMemo;
    cxLabel1: TcxLabel;
    btnSimpanTidakApp: TButton;
    Button4: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnSimpanApp: TButton;
    btnBatalApp: TButton;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    cmbRND: TComboBox;
    Label4: TLabel;
    cxtJudul: TcxTextEdit;
    Label5: TLabel;
    cxtTujuan: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cxTblJurnalFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure btnApproveClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnBatalAppClick(Sender: TObject);
    procedure btnSimpanAppClick(Sender: TObject);
    procedure btnTidakApproveClick(Sender: TObject);
    procedure btnSimpanTidakAppClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmApprovalJurnalKerja: TfrmApprovalJurnalKerja;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmApprovalJurnalKerja.FormCreate(Sender: TObject);
begin
  zqrJurnal.Open;
  Panel1.Visible := False ;
  Panel2.Visible := False ;
end;

procedure TfrmApprovalJurnalKerja.cxTblJurnalFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  cxmDeskProject.Text := '';
  cxtJudul.Text :='';
  cxtTujuan.Text :='' ;
  cxmDeskProject.Text := zqrJurnal.FieldByName('project').AsString;
  cxtJudul.Text := zqrJurnal.FieldByName('judul').AsString;
  cxtTujuan.Text := zqrJurnal.FieldByName('tujuan').AsString;

end;

procedure TfrmApprovalJurnalKerja.btnApproveClick(Sender: TObject);
begin
  Panel2.Visible := True ;
  //pnlTengah.Visible := False ;
end;


procedure TfrmApprovalJurnalKerja.Button4Click(Sender: TObject);
begin
  inherited ;
  Panel1.Visible := False;
  //pnlTengah.Visible := True;
end;

procedure TfrmApprovalJurnalKerja.btnBatalAppClick(Sender: TObject);
begin
  inherited;
  Panel2.Visible := False;
  //pnlTengah.Visible := True;
end;

procedure TfrmApprovalJurnalKerja.btnSimpanAppClick(Sender: TObject);
var
  q: TZQuery;
  bm: TBookmark;
begin
  q := OpenRS('SELECT * FROM tbl_jurnal_rnd WHERE no_jurnal = ''%s''',
    [zqrJurnal.FieldByName('no_jurnal').AsString]);
  if not q.IsEmpty then begin
    try
      dm.zConn.StartTransaction;
      q.Edit;

      q.FieldByName('f_approve').AsInteger := 1;
      q.FieldByName('tgl_app').AsDateTime := Aplikasi.TanggalServer;
      q.FieldByName('pic').AsString  := cmbRND.Text ;
      q.FieldByName('estimasi_start').AsDateTime := cxdTgl1.EditValue;
      q.FieldByName('estimasi_finish').AsDateTime := cxdTgl2.EditValue;

      q.Post;
      q.Close;

      dm.zConn.Commit;
      MsgBox('Permintaan sudah berhasil di Approve.');

      try
        bm := zqrJurnal.GetBookmark;
        zqrJurnal.Close;
        zqrJurnal.Open;
        zqrJurnal.GotoBookmark(bm);
      except
      end;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
   Panel2.Visible := False ;
   cmbRND.Text := '';
   cxdTgl1.Text := '' ;
   cxdTgl2.Text :='' ;

   dsJurnal.DataSet.Refresh ;
end;

procedure TfrmApprovalJurnalKerja.btnTidakApproveClick(Sender: TObject);
begin
  Panel1.Visible := True ;
end;

procedure TfrmApprovalJurnalKerja.btnSimpanTidakAppClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  if Trim(cxMemoKetTidakApp.Text) = '' then begin
    MsgBox('Keterangan tidak approval harus di isi.');
    cxMemoKetTidakApp.SetFocus;
    Abort;
  end;

  try
    dm.zConn.StartTransaction;
    q := OpenRS('SELECT * FROM tbl_jurnal_rnd WHERE no_jurnal = ''%s''',
      [zqrJurnal.FieldByName('no_jurnal').AsString]);
    if not q.IsEmpty then begin
      q.Edit;
      q.FieldByName('f_approve').AsInteger := 2;
      q.FieldByName('note').AsString := cxMemoKetTidakApp.Text;
      q.FieldByName('status').AsString := 'DEPART';
      q.Post;
    end;
    q.Close;
    dm.zConn.Commit;

    MsgBox('Permintaan Ditolak');
    zqrJurnal.Close;
    zqrJurnal.Open;

    Panel1.Visible := False;
    cxMemoKetTidakApp.Lines.Text := '';
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
