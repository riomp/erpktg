unit unFrmApprovalSPK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckComboBox,cxCheckBox;

type
  TfrmApprovalSPK = class(TForm)
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    GridView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    zqrSPK: TZReadOnlyQuery;
    dsSJHead: TDataSource;
    GridView1no_mo: TcxGridDBColumn;
    GridView1no_spk: TcxGridDBColumn;
    GridView1jenis_spk: TcxGridDBColumn;
    GridView1tanggal: TcxGridDBColumn;
    GridView1jam: TcxGridDBColumn;
    GridView1qty: TcxGridDBColumn;
    GridView1kode_mesin: TcxGridDBColumn;
    GridView1nama: TcxGridDBColumn;
    GridView1no_so: TcxGridDBColumn;
    GridView1tanggal_so: TcxGridDBColumn;
    GridView1keterangan: TcxGridDBColumn;
    GridView1f_app_prd: TcxGridDBColumn;
    GridView1Column1: TcxGridDBColumn;
    btnApprove: TButton;
    btnKeluar: TButton;
    GridView1Column2: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnApproveClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmApprovalSPK: TfrmApprovalSPK;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmApprovalSPK.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalSPK.FormShow(Sender: TObject);
var
aCol: TcxGridDBColumn;
i : integer;
begin
  aCol := GridView1.CreateColumn;
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

procedure TfrmApprovalSPK.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalSPK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalSPK.btnApproveClick(Sender: TObject);
var
  i: Integer;
  lstSPK: TStringList;
  chk: string;
begin

  lstSPK := TStringList.Create;
  for i := 0 to GridView1.DataController.RecordCount - 1 do begin

    if VarIsNull(GridView1.DataController.Values[i,0]) then
      chk := ''
    else
      chk := GridView1.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSPK.Add(GridView1.DataController.Values[i,1]);
    end;
  end;

  if lstSPK.Count > 0 then begin
    try
      dm.zConn.StartTransaction;
      for i := 0 to lstSPK.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_spk SET f_app_prd = 1, ' +
          'tgl_prd_check = NOW(), ' + 
          'WHERE no_spk = ''' + lstSPK.Strings[i] + '''');
      end;
      dm.zConn.Commit;
      MsgBox('Approval SPK sudah selesai.');
      zqrSPK.Close;
      zqrSPK.Open;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;
  
end;

end.
