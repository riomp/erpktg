unit unFrmImportFinger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TfrmImportFinger = class(TForm)
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    btnProses: TButton;
    zFinger: TZQuery;
    dsFinger: TDataSource;
    cxTblAbsen: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTblAbsenTanggal: TcxGridDBColumn;
    cxTblAbsenJam: TcxGridDBColumn;
    cxTblAbsenMode: TcxGridDBColumn;
    cxTblAbsennik: TcxGridDBColumn;
    btnOpen: TButton;
    cxdTgl2: TcxDateEdit;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportFinger: TfrmImportFinger;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmImportFinger.btnProsesClick(Sender: TObject);
var
  q,z : TZQuery ;
  i : Integer ;
begin

  try

    btnProses.Enabled := False ;
    with cxTblAbsen.DataController do begin
      for i := 0 to RecordCount - 1 do begin
        dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_scan_absen WHERE tanggal = '''+ FormatDateTime('yyyy-mm-dd',Values[i, cxTblAbsenTanggal.index]) +''' ' +
            ' and nip=''' + Values[i, cxTblAbsennik.index] + ''' and mode=''' + Values[i, cxTblAbsenMode.index] + ''' ' );
            dm.zConn.Commit;

        q := OpenRS('SELECT * FROM tbl_scan_absen WHERE tanggal=%s and nip = ''%s'' and mode=''%s''',[Values[i, cxTblAbsenTanggal.index], Values[i, cxTblAbsennik.index],Values[i, cxTblAbsenMode.index]]) ;

        IF q.IsEmpty THEN BEGIN
            q.Insert;
            q.FieldByName('nip').AsString := Values[i, cxTblAbsennik.index];
            q.FieldByName('mode').AsString := Values[i, cxTblAbsenMode.index];
            q.FieldByName('tanggal').AsDateTime:= Values[i, cxTblAbsenTanggal.index];
            q.FieldByName('jam').AsDateTime:= Values[i, cxTblAbsenjam.index];
            q.FieldByName('log').AsInteger:= 0;
            q.Post;
            q.Close;
        end;
      end;
    end;

  except
      on E: Exception do begin
        //MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;


    Application.MessageBox('Data Sudah Disimpan','Informasi',MB_OK);
    btnProses.Enabled := True ;
end;

procedure TfrmImportFinger.FormCreate(Sender: TObject);
begin
  zFinger.Open ;
end;

procedure TfrmImportFinger.btnOpenClick(Sender: TObject);
begin
  with zFinger do begin
    Screen.Cursor := crSQLWait;
    Close;
    ParamByName('tgl1').AsDateTime := cxDateEdit1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
end;

end.
