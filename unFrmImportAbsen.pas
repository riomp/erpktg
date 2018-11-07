unit unFrmImportAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractTable, ZDataset, DB, ZAbstractRODataset,
  ZAbstractDataset, ADODB, StdCtrls, ComCtrls;

type
  TfrmImportDataAbsensi = class(TForm)
    btnLoad: TButton;
    Edit1: TEdit;
    prgBar: TProgressBar;
    Label1: TLabel;
    btnMulai: TButton;
    btnKeluar: TButton;
    OpenDialog1: TOpenDialog;
    adoConn: TADOConnection;
    ZQuery1: TZQuery;
    ZTable1: TZTable;
    procedure btnLoadClick(Sender: TObject);
    procedure btnMulaiClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportDataAbsensi: TfrmImportDataAbsensi;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmImportDataAbsensi.btnLoadClick(Sender: TObject);
var
  openDialog : TOpenDialog ;
begin
  openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := GetCurrentDir;
  openDialog.Filter :=
 'Excel files|*.xls';
  if openDialog.Execute then Edit1.Text := openDialog.FileName;
end;

procedure TfrmImportDataAbsensi.btnMulaiClick(Sender: TObject);
var
  lstTable, lstTable2: TStringList;
  i,j,recNo: integer;
  q: TAdoQuery;
  tbl: TZTable;
begin
  adoConn.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=' + Edit1.Text + ';' +
    'Extended Properties="Excel 8.0;HDR=Yes;IMEX=1"';
  adoConn.Connected := true;


  lstTable := TStringList.Create;
  lstTable2 := TStringList.Create;

  lstTable.Add('[tbl_karyawan_absensi$]');
  lstTable2.Add('tbl_scan_absen');

  q := TADOQuery.Create(nil);
  q.Connection := adoConn;

  tbl := TZTable.Create(nil);
  tbl.Connection := dm.zConn;

  btnMulai.Enabled := False;
  btnKeluar.Enabled := False;
  btnLoad.Enabled := False;

  Screen.Cursor := crSQLWait;
  for i := 0 to lstTable.Count - 1 do begin
    q.SQL.Text := 'SELECT * FROM ' + lstTable.Strings[i];
    q.Open;

    tbl.TableName := lstTable2.Strings[i];
    tbl.Open;

    recNo := 1;
    prgBar.Max := q.RecordCount;
    prgBar.Step := 1;
    while not q.Eof do begin
      label1.Caption := 'Table: ' + lstTable2.Strings[i] +
        ', Record: ' + IntToStr(recNo);
      label1.Refresh;

      try
        // worksheet piutang customer
        if lstTable.Strings[i] = '[tbl_karyawan_absensi$]' then begin


          if tbl.Locate('nip',q.FieldByName('nip').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('nip').AsString := q.FieldByName('nip').AsString;
          tbl.FieldByName('tanggal').AsDateTime := q.FieldByName('tanggal').AsDateTime;
          tbl.FieldByName('jam').AsDatetime := q.FieldByName('jam').AsDateTime;
          tbl.FieldByName('mode').AsString := q.FieldByName('mode').AsString;
        end ;
        tbl.Post;

      except
        on E: Exception do tbl.Cancel;
      end;

      inc(recNo);
      prgBar.StepIt;
      q.Next;
      prgBar.Update;
      Refresh;
      Application.ProcessMessages;
    end;
    tbl.Close;
    q.Close;
  end;
  q := nil;
  tbl := nil;
  Screen.Cursor := crDefault;
  MessageDlg('Proses import selesai.', mtInformation, [mbOk],0);
end;

procedure TfrmImportDataAbsensi.btnKeluarClick(Sender: TObject);
begin
 Application.Terminate;
end;

end.
