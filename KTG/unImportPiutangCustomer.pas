unit unImportPiutangCustomer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ADODB, ComCtrls, ZAbstractConnection,
  ZConnection;

type
  TfrmImportPiutangCustomer = class(TForm)
    prgBar: TProgressBar;
    btnMulai: TButton;
    btnKeluar: TButton;
    Label1: TLabel;
    adoConn: TADOConnection;
    btnLoad: TButton;
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
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
  frmImportPiutangCustomer: TfrmImportPiutangCustomer;

implementation

uses unDm;

{$R *.dfm}

procedure TfrmImportPiutangCustomer.btnLoadClick(Sender: TObject);
var
  openDialog : TOpenDialog ;
begin
  openDialog := TOpenDialog.Create(self);
  openDialog.InitialDir := GetCurrentDir;
  openDialog.Filter :=
 'Excel files|*.xls';
  if openDialog.Execute then Edit1.Text := openDialog.FileName;
end;

procedure TfrmImportPiutangCustomer.btnMulaiClick(Sender: TObject);
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

  lstTable.Add('[tbl_piutang_cust$]');
  lstTable2.Add('tbl_piutang_cust');

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
        if lstTable.Strings[i] = '[tbl_piutang_cust$]' then begin


          if tbl.Locate('invoice_no',q.FieldByName('invoice_no').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('invoice_no').AsString := q.FieldByName('invoice_no').AsString;
          tbl.FieldByName('customer').AsString := UpperCase(Trim(q.FieldByName('customer').AsString));
          tbl.FieldByName('invoice_date').AsDateTime := q.FieldByName('invoice_date').AsDateTime;
          tbl.FieldByName('top').AsString := q.FieldByName('top').AsString;
          tbl.FieldByName('due_date').AsDateTime := q.FieldByName('due_date').AsDateTime;
          tbl.FieldByName('invoice_amount').AsFloat:= q.FieldByName('invoice_amount').AsFloat;
          tbl.FieldByName('payment').AsFloat:= q.FieldByName('payment').AsFloat;
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

procedure TfrmImportPiutangCustomer.btnKeluarClick(Sender: TObject);
begin
 Application.Terminate;
end;


end.
