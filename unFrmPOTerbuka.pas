unit unFrmPOTerbuka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox, cxContainer,
  ZAbstractRODataset, ZDataset, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, StdCtrls,
  cxMaskEdit, cxCalendar, cxLabel, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxSpinEdit, scExcelExport, cxGridExportLink, ShellAPI,
  cxCheckComboBox;

type
  TfrmPOTerbuka = class(TForm)
    cxGrid2: TcxGrid;
    cxg: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel2: TPanel;
    btnCetak: TButton;
    btnBatal: TButton;
    Button1: TButton;
    Button2: TButton;
    Panel3: TPanel;
    nxGrd: TNextGrid;
    NxTextColumn4: TNxTextColumn;
    NxDateColumn1: TNxDateColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxNumberColumn5: TNxNumberColumn;
    Panel4: TPanel;
    cxChkCustomer: TcxCheckBox;
    cxChkKategori: TcxCheckBox;
    btnCetak2: TButton;
    btnBatalCetak: TButton;
    cxlCustomer: TcxLookupComboBox;
    cxlKategori: TcxLookupComboBox;
    cxChkKelPerCust: TcxCheckBox;
    cxChkJmlHari: TcxCheckBox;
    cxLabel19: TcxLabel;
    cxCmbUrut: TcxComboBox;
    zqrPOTerbuka: TZReadOnlyQuery;
    dsSOTerbuka: TDataSource;
    zqrSJDet: TZReadOnlyQuery;
    dsSJDet: TDataSource;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    zqrKategori: TZReadOnlyQuery;
    dsKategori: TDataSource;
    cxgno_bukti: TcxGridDBColumn;
    cxgtanggal: TcxGridDBColumn;
    cxgkode_supp: TcxGridDBColumn;
    cxgf_completed: TcxGridDBColumn;
    cxgtgl_required: TcxGridDBColumn;
    cxgketerangan: TcxGridDBColumn;
    cxguser: TcxGridDBColumn;
    cxguser_dept: TcxGridDBColumn;
    cxgkode_brg: TcxGridDBColumn;
    cxgqty: TcxGridDBColumn;
    cxgnama: TcxGridDBColumn;
    cxgkontak: TcxGridDBColumn;
    cxgalamat: TcxGridDBColumn;
    cxgdeskripsi: TcxGridDBColumn;
    cxgkategori: TcxGridDBColumn;
    cxgsubkategori: TcxGridDBColumn;
    cxgselisih_hari: TcxGridDBColumn;
    cxgalamat2: TcxGridDBColumn;
    cxgkota: TcxGridDBColumn;
    cxgqty_kirim: TcxGridDBColumn;
    btnTutupPO: TButton;
    cxgqty_sisa: TcxGridDBColumn;
    cxgColumn1: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnTutupPOClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPOTerbuka: TfrmPOTerbuka;

implementation

uses unTools, unAplikasi, unDm;

{$R *.dfm}

procedure TFrmPOTerbuka.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmPOTerbuka.btnProsesClick(Sender: TObject);
begin
  try
    with zqrPOTerbuka do begin
      if Active then Close;
      //if zqrSODet.Active then zqrSODet.Close;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    end;
  except
  end;
end;

procedure TfrmPOTerbuka.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmPOTerbuka.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPOTerbuka.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmPOTerbuka.Button2Click(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmPOTerbuka.FormShow(Sender: TObject);
var
  aCol: TcxGridDBColumn;
  i : integer;
begin
  aCol := cxg.CreateColumn;
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

  //if mJenis <> '' then begin
  //  zqrSOHead.SQL.Text := cxMemo1.Text;
  //end;
end;

procedure TfrmPOTerbuka.btnTutupPOClick(Sender: TObject);
var
  i: Integer;
  lstSJ: TStringList;
  chk: string;
begin
  lstSJ := TStringList.Create;

  for i := 0 to cxg.DataController.RecordCount - 1 do begin

    if VarIsNull(cxg.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxg.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSJ.Add(cxg.DataController.Values[i,1]);
    end;
  end;

  if lstSJ.Count > 0 then begin
    try
      dm.zConn.StartTransaction;
      for i := 0 to lstSJ.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_po_head SET f_completed = 1 WHERE no_bukti = ''' +
          lstSJ.Strings[i] + '''');
      end;
      dm.zConn.Commit;
      zqrPOTerbuka.Close;
      zqrPOTerbuka.Open;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;
  
end;

end.
