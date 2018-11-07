unit unFrmSettingLokasiBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxSpinEdit,
  cxTextEdit, ADODB;

type
  TfrmSettingLokasiBarang = class(TfrmTplMaster)
    cxGrdBrg: TcxGrid;
    cxTblBrg: TcxGridDBTableView;
    cxTblBrgkode: TcxGridDBColumn;
    cxTblBrgdeskripsi: TcxGridDBColumn;
    cxTblBrgkategori: TcxGridDBColumn;
    cxTblBrgstok: TcxGridDBColumn;
    cxTblBrglokasi: TcxGridDBColumn;
    cxTblBrglokasi_grid: TcxGridDBColumn;
    cxGrdBrgLevel1: TcxGridLevel;
    btnImport: TButton;
    prgBar: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettingLokasiBarang: TfrmSettingLokasiBarang;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmSettingLokasiBarang.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
end;

procedure TfrmSettingLokasiBarang.btnImportClick(Sender: TObject);
var
  q: TADOQuery;
  i: integer;
  adoConn: TADOConnection;
begin

  try
    Screen.Cursor := crSQLWait;
    adoConn := TADOConnection.Create(Self);
    adoConn.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
      'Data Source=' + aplikasi.AppPath + '\lokasi.xls;' +
      'Extended Properties="Excel 8.0;HDR=Yes;IMEX=1"';
    adoConn.LoginPrompt := False;
    adoConn.Connected := true;

    q := TADOQuery.Create(nil);
    q.Connection := adoConn;
    q.SQL.Text := 'SELECT * FROM [lokasi$]';
    q.Open;

    prgBar.Visible := True;
    prgBar.Max := q.RecordCount;
    while not q.Eof do begin
      dm.zConn.ExecuteDirect(
        'UPDATE tbl_barang SET lokasi = ' + QuotedStr(q.FieldByName('lokasi').AsString) +
          ',lokasi_grid = ' + QuotedStr(q.FieldByName('grid').AsString) + ' WHERE kode = ' +
          q.FieldByName('kode').AsString);
      q.Next;
      prgBar.Position := prgBar.Position + 1;
      prgBar.Refresh;
    end;
    q.Close;
    adoConn.Close;
    adoConn.Free;
    prgBar.Visible := False;

    zQry.Close;
    zQry.Open;
    MsgBox('Proses import selesai.');
    Screen.Cursor := crDefault;
  except
    on E:exception do begin
      Screen.Cursor := crDefault;
      MsgBox('Error: ' + E.Message);
      Abort;
    end;
  end;

end;

end.
