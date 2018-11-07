unit unFrmSerahTerimaSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, ZAbstractRODataset, ZDataset,cxCheckComboBox,cxCheckBox,
  kbmMemTable, scExcelExport,cxGridExportLink, ShellAPI;

type
  TfrmSerahTerimaSPK = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    zqrMonSPK: TZReadOnlyQuery;
    dsMonSPK: TDataSource;
    cxGrd: TcxGrid;
    cxTblView: TcxGridDBTableView;
    cxTblViewno_spk: TcxGridDBColumn;
    cxTblViewtgl_spk: TcxGridDBColumn;
    cxTblViewno_so: TcxGridDBColumn;
    cxTblViewnama_customer: TcxGridDBColumn;
    cxTblViewkode_brg: TcxGridDBColumn;
    cxTblViewdeskripsi: TcxGridDBColumn;
    cxTblViewqty_spk: TcxGridDBColumn;
    cxTblViewColumn1: TcxGridDBColumn;
    cxTblViewhsl_prd: TcxGridDBColumn;
    cxTblViewqty_serah_terima: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    tblTmp: TkbmMemTable;
    tblTmpNoSPK: TStringField;
    DataSource1: TDataSource;
    cxTblViewColumn2: TcxGridDBColumn;
    btnExcel: TButton;
    cxTblViewColumn3: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewEditValueChanged(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSerahTerimaSPK: TfrmSerahTerimaSPK;

implementation

uses unTools, unDm;

{$R *.dfm}

procedure TfrmSerahTerimaSPK.btnProsesClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crSQLWait;
  if zqrMonSPK.Active then zqrMonSPK.Close;
  with zqrMonSPK do begin
    ParamByName('tgl1').AsDate := cxdTgl1.Date;
    ParamByName('tgl2').AsDate := cxdTgl2.Date;
    Open;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmSerahTerimaSPK.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := Date;
  cxdTgl2.Date := Date;
  zqrMonSPK.Open;
end;

procedure TfrmSerahTerimaSPK.btnKeluarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmSerahTerimaSPK.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxTblView.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType;
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

procedure TfrmSerahTerimaSPK.btnSimpanClick(Sender: TObject);
Var
  q, qspk : TZQuery;
begin
  inherited;

  if not tblTmp.IsEmpty then begin
    tblTmp.First;
    while not tblTmp.Eof do begin
      q := OpenRS('select * from tbl_spk where no_spk=''' + tblTmp.FieldByName('NoSPK').AsString + '''');
      if tblTmp.Locate('NoSPK',q.FieldByName('no_spk').AsString,[]) then begin
        //q := OpenRS('select * from tbl_spk where no_spk=''' + tblTmp.FieldByName('NoSPK').AsString + '''');
        q.Edit;
        q.FieldByName('f_prd_check').AsInteger := 1;
        q.FieldByName('tgl_prd_check').AsDateTime := Aplikasi.NowServer;
        q.Post;
        tblTmp.Next;
      end;
    end;
    MsgBox('Data sudah disimpan');
    btnProsesClick(Self);
  end;

end;

procedure TfrmSerahTerimaSPK.cxTblViewEditValueChanged(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  inherited;
  if AItem.Index = 0 then begin
    if AItem.EditValue = 'T' then begin
      if not tblTmp.Locate('NoSPK', zqrMonSPK.FieldByName('no_spk').AsString,[]) then begin
        tblTmp.Insert;
        tblTmp.FieldByName('NoSPK').AsString := zqrMonSPK.FieldByName('no_spk').AsString;
        tblTmp.Post;
      end;
    end
    else begin
      if tblTmp.Locate('NoSPK', zqrMonSPK.FieldByName('no_spk').AsString,[]) then begin
        tblTmp.Delete;
      end;
    end;


  end;
end;

procedure TfrmSerahTerimaSPK.btnExcelClick(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrd);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
