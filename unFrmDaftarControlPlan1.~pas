unit unFrmDaftarControlPlan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ZDataset, ZAbstractRODataset, ZAbstractDataset, StdCtrls, ExtCtrls,cxCheckComboBox,
  cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, scExcelExport, cxGridExportLink, ShellAPI;

type
  TfrmDaftarControlPlan1 = class(TfrmTransBaru)
    zQry: TZQuery;
    ds: TDataSource;
    zqrDaftarCP: TZReadOnlyQuery;
    dsDaftarCP: TDataSource;
    cxGrd2: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTblno_cp: TcxGridDBColumn;
    cxTblno_is: TcxGridDBColumn;
    cxTblnama: TcxGridDBColumn;
    cxTblkode: TcxGridDBColumn;
    cxTbldeskripsi: TcxGridDBColumn;
    cxGrd2Level1: TcxGridLevel;
    zqrDaftarCP2: TZReadOnlyQuery;
    dsDaftarCP2: TDataSource;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarControlPlan1: TfrmDaftarControlPlan1;

implementation

uses unFrmLapSPK, unTools, unAplikasi, unDm, unFrmCP;

{$R *.dfm}

procedure TfrmDaftarControlPlan1.btnSimpanClick(Sender: TObject);
var
  f: TfrmLapSPK;
  i: Integer;
  lstSJ: TStringList;
  chk, sNoSO: string;
  qCek, qCekPel: TZQuery;
  s: string;
begin
   lstSJ := TStringList.Create;
  for i := 0 to cxTbl.DataController.RecordCount - 1 do begin

    if VarIsNull(cxTbl.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTbl.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSJ.Add('''' + cxTbl.DataController.Values[i,1] + '''');
    end;
  end;

  if lstSJ.Count > 0 then begin
    f := TfrmLapSPK.Create(Self);
    with f do begin
      zqrRouting.Close;
      s := zqrRouting.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrRouting.SQL.Text := s;
      zqrRouting.Open;

      zqrMatSaran2.Close;
      s := zqrMatSaran2.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrMatSaran2.SQL.Text := s;
      zqrMatSaran2.Open;

      zqrExt.Close;
      s := zqrExt.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrExt.SQL.Text := s;
      zqrExt.Open;

      zqrPrint.Close;
      s := zqrPrint.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrPrint.SQL.Text := s;
      zqrPrint.Open;

       zqrConv.Close;
      s := zqrConv.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrConv.SQL.Text := s;
      zqrConv.Open;

      zqrGusset.Close;
      s := zqrGusset.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrGusset.SQL.Text := s;
      zqrGusset.Open;

      zqrGambar.Close;
      s := zqrGambar.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrGambar.SQL.Text := s;
      zqrGambar.Open;

      zqrCP.Close;
      s := zqrCP.SQL.Text;
      s := StringReplace(s,'xxx',lstSJ.CommaText,[rfReplaceAll]);
      zqrCP.SQL.Text := s;
      zqrCP.Open;

      zqrCP.Open;
      rptCP.ShowReport(True);

       zqrCP.Close;
      s := zqrCP.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrCP.SQL.Text := s;

         zqrExt.Close;
      s := zqrExt.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrExt.SQL.Text := s;

         zqrPrint.Close;
      s := zqrPrint.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrPrint.SQL.Text := s;

      zqrGusset.Close;
      s := zqrGusset.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrGusset.SQL.Text := s;

       zqrGambar.Close;
      s :=  zqrGambar.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
       zqrGambar.SQL.Text := s;

         zqrConv.Close;
      s := zqrConv.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrConv.SQL.Text := s;

     zqrMatSaran2.Close;
      s := zqrMatSaran2.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrMatSaran2.SQL.Text := s;

      zqrrouting.Close;
      s := zqrRouting.SQL.Text;
      s := StringReplace(s,lstSJ.CommaText,'xxx',[rfReplaceAll]);
      zqrRouting.SQL.Text := s;
    end;
  end;

end;

procedure TfrmDaftarControlPlan1.btnKeluarClick(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TfrmDaftarControlPlan1.FormCreate(Sender: TObject);
begin
  inherited;
   pnlTengah.Enabled := True;
   zqrDaftarCP.Open ;
end;

procedure TfrmDaftarControlPlan1.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  inherited;
  aCol := cxTbl.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType; //TcxBooleanValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;
end;

procedure TfrmDaftarControlPlan1.btnBaruClick(Sender: TObject);
var
  f : TfrmCP ;
begin
  inherited;
  f := TfrmCP.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarCP.Close;
  zqrDaftarCP.Open;
end;

procedure TfrmDaftarControlPlan1.btnEditClick(Sender: TObject);
var
  f : TfrmCP ;
begin
  inherited;
  f := TfrmCP.Create(self);
  f.NoCP:= zqrDaftarCP.FieldByName('no_cp').AsString;
  f.Jenis := 'edit';
  f.ShowModal;
  zqrDaftarCP.Close;
  zqrDaftarCP.Open;
end;

procedure TfrmDaftarControlPlan1.btnHapusClick(Sender: TObject);
begin
  inherited;
inherited;
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_cp WHERE no_cp = ''' + zqrDaftarCP.FieldByName('no_cp').AsString + '''');
      dm.zConn.Commit;
      MsgBox('Control Plan sudah berhasil di Hapus.');
      dsDaftarCP.DataSet.Refresh ;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;
end;

procedure TfrmDaftarControlPlan1.btnBatalClick(Sender: TObject);
begin
  inherited;
  try
  //frxReport1.ShowReport(True);
  ExportGridToExcel(aplikasi.AppPath + '\tmp_listcp.xls', cxGrd2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_listcp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
