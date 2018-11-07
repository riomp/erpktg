unit unFrmTimeline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxScheduler3Painter, cxSchedulerDBStorage, StdCtrls, ExtCtrls,
  dxSkinscxPCPainter, DB, ZAbstractRODataset, ZDataset, cxPC, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, TeEngine, Series, GanttCh, TeeProcs, Chart,
  DbChart, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  cxMemo, cxCalendar, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmProjectRND = class(TfrmTransBaru)
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    pg: TcxPageControl;
    AllProject: TcxTabSheet;
    cxScheduler1: TcxScheduler;
    zProject: TZReadOnlyQuery;
    dsProject: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    zqrProject: TZReadOnlyQuery;
    dsProj: TDataSource;
    zDetail: TZReadOnlyQuery;
    dsDetail: TDataSource;
    cxGridDBTableView1no_project: TcxGridDBColumn;
    cxGridDBTableView1no_is: TcxGridDBColumn;
    cxGridDBTableView1judul: TcxGridDBColumn;
    cxGridDBTableView1detail: TcxGridDBColumn;
    cxGridDBTableView1start_date: TcxGridDBColumn;
    cxGridDBTableView1finish_date: TcxGridDBColumn;
    cxGridDBTableView1dibuat_oleh: TcxGridDBColumn;
    cxGridDBTableView1tgl_input: TcxGridDBColumn;
    cxGrid2DBTableView1no: TcxGridDBColumn;
    cxGrid2DBTableView1pic: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid2DBTableView1start_date: TcxGridDBColumn;
    cxGrid2DBTableView1finish_date: TcxGridDBColumn;
    cxTabSheet1: TcxTabSheet;
    cxScheduler2: TcxScheduler;
    cxSchedulerDBStorage2: TcxSchedulerDBStorage;
    zResource: TZReadOnlyQuery;
    dsResource: TDataSource;
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1no_project: TcxGridDBColumn;
    cxGrid1DBTableView1judul: TcxGridDBColumn;
    cxSchedulerDBStorage3: TcxSchedulerDBStorage;
    cxScheduler3: TcxScheduler;
    cxTabSheet2: TcxTabSheet;
    DBChart1: TDBChart;
    Series1: TGanttSeries;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    DataSource1: TDataSource;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxLabel1: TcxLabel;
    zDetail1: TZReadOnlyQuery;
    dsDetail1: TDataSource;
    cxGrid3DBTableView1no: TcxGridDBColumn;
    cxGrid3DBTableView1no_project: TcxGridDBColumn;
    cxGrid3DBTableView1pic: TcxGridDBColumn;
    cxGrid3DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid3DBTableView1start_date: TcxGridDBColumn;
    cxGrid3DBTableView1finish_date: TcxGridDBColumn;
    cxGrid3DBTableView1judul: TcxGridDBColumn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    btnSimpanApp: TButton;
    btnBatalApp: TButton;
    cxmHasil: TcxMemo;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbl_noproject: TLabel;
    lbl_pic: TLabel;
    lbl_no: TLabel;
    lbl_deskripsi: TLabel;
    Button2: TButton;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView3: TcxGridDBTableView;
    cxGrid3DBTableView1start_act_1: TcxGridDBColumn;
    cxGrid3DBTableView1finish_act_1: TcxGridDBColumn;
    cxGrid3DBTableView1hasil_1: TcxGridDBColumn;
    cxdTgl1: TcxDateEdit;
    cxdTgl2: TcxDateEdit;
    Series2: TGanttSeries;
    cbbmember: TcxLookupComboBox;
    zqrMember: TZReadOnlyQuery;
    dsMember: TDataSource;
    ComboBox1: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnBatalAppClick(Sender: TObject);
    procedure btnSimpanAppClick(Sender: TObject);
    procedure cbbMemberChange(Sender: TObject);
    procedure cbbmemberPropertiesEditValueChanged(Sender: TObject);
    procedure ComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure cbbmemberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProjectRND: TfrmProjectRND;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmProjectRND.FormCreate(Sender: TObject);
begin
  inherited;
  zProject.Open ;
  zqrProject.Open ;
  zDetail.Open ;
  zDetail1.Close ;
  zqrMember.Open;

  cxScheduler1.GoToDate(cxScheduler1.SelectedDays[0],vmMonth);


  RadioButton1.Checked :=True ;
  Panel2.Visible := False ;
end;

procedure TfrmProjectRND.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  i: Integer;
begin
   i := cxGridDBTableView1.DataController.FocusedRecordIndex;
   zProject.Close;
   zProject.SQL.Strings[2] := 'WHERE no_project = ''' +
   cxGridDBTableView1.DataController.Values[i, cxGridDBTableView1no_project.Index]  + '''';
   zProject.Open;
end;

procedure TfrmProjectRND.Button1Click(Sender: TObject);
begin
   zProject.Close;
   zProject.SQL.Strings[2] := ' ';
   zProject.Open;
end;

procedure TfrmProjectRND.RadioButton1Click(Sender: TObject);
begin
  if RadioButton1.Checked = True then begin
    cbbMember.Enabled:= True;
    cbbMember.Text := '';
    cxGrid1.Enabled := False;
    cxScheduler2.Visible := False ;
    cxScheduler3.Visible := True ;
    cxScheduler3.GoToDate(cxScheduler3.SelectedDays[0],vmMonth);
  end;

end;

procedure TfrmProjectRND.RadioButton2Click(Sender: TObject);
begin
  if RadioButton2.Checked = True then begin
    cbbMember.Enabled:= False;
    cbbMember.Text := '';
    cxGrid1.Enabled := True;
    cxScheduler2.Visible := True ;
    cxScheduler3.Visible := False ;
  end;
end;

procedure TfrmProjectRND.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  i: Integer;
begin
   i := cxGridDBTableView1.DataController.FocusedRecordIndex;
   zDetail.Close;
   zDetail.SQL.Strings[1] := 'WHERE a.no_project = ''' +
   cxGridDBTableView1.DataController.Values[i, cxGridDBTableView1no_project.Index]  + '''';
   zDetail.Open;
   zResource.Close;
   zResource.SQL.Strings[2] := '';
   zResource.Open;
end;

procedure TfrmProjectRND.ComboBox1Change(Sender: TObject);
begin
      ZReadOnlyQuery1.Close;
   ZReadOnlyQuery1.SQL.Strings[6] := 'WHERE a.pic = ''' +
   ComboBox1.Text   + '''';
   ZReadOnlyQuery1.Open;

    zDetail1.Close;
   zDetail1.SQL.Strings[1] := 'WHERE a.pic = ''' +
   ComboBox1.Text   + '''';
   zDetail1.Open;

end;

procedure TfrmProjectRND.Button2Click(Sender: TObject);
begin
  Panel2.Visible := True ;
  lbl_noproject.Caption := zDetail1.FieldByName('no_project').AsString;
  lbl_pic.Caption := zDetail1.FieldByName('pic').AsString;
  lbl_no.Caption := zDetail1.FieldByName('no').AsString;
  lbl_deskripsi.Caption :=  zDetail1.FieldByName('deskripsi').AsString;

end;

procedure TfrmProjectRND.btnBatalAppClick(Sender: TObject);
begin
  inherited;
  Panel2.Visible := False ;
  cxdTgl1.Date := Now ;
  cxdTgl2.Date := Now;
end;

procedure TfrmProjectRND.btnSimpanAppClick(Sender: TObject);
begin
    dm.zConn.StartTransaction;
     dm.zConn.ExecuteDirect('DELETE FROM tbl_project_detail_act WHERE no = ''' + lbl_no.Caption  + ''' ' +
      ' and no_project = '''+ lbl_noproject.Caption  +''' ' +
      ' and pic = '''+ lbl_pic.Caption  +''' ');
      dm.zConn.ExecuteDirect('INSERT INTO tbl_project_detail_act SET no = ''' + lbl_no.Caption  + ''' ' +
      ' ,no_project=''' + lbl_noproject.Caption  + ''',pic = ''' + lbl_pic.Caption  + ''',start_act = '''+ FormatDateTime('yyyy-mm-dd',cxdTgl1.EditValue) +''' ' +
      ' ,finish_act = '''+ FormatDateTime('yyyy-mm-dd',cxdTgl2.EditValue) +''',hasil = '''+ cxmHasil.Text  +''' ');
      dm.zConn.Commit;

      dsDetail.DataSet.Refresh ;
      dsDetail1.DataSet.Refresh ;
       Panel2.Visible := False ;

end;

procedure TfrmProjectRND.cbbMemberChange(Sender: TObject);
begin
   zResource.Close;
   zResource.SQL.Strings[2] := 'WHERE pic = ''' +
   cbbMember.Text   + '''';
   zResource.Open;

   zDetail.Close;
   zDetail.SQL.Strings[1] := 'WHERE a.pic = ''' +
   cbbMember.Text   + '''';
   zDetail.Open;
   cxScheduler3.GoToDate(cxScheduler3.SelectedDays[0],vmMonth);
end;

procedure TfrmProjectRND.cbbmemberPropertiesEditValueChanged(
  Sender: TObject);
begin
  zResource.Close;
   zResource.SQL.Strings[2] := 'WHERE pic = ''' +
   cbbMember.Text   + '''';
   zResource.Open;

   zDetail.Close;
   zDetail.SQL.Strings[1] := 'WHERE a.pic = ''' +
   cbbMember.Text   + '''';
   zDetail.Open;
   cxScheduler3.GoToDate(cxScheduler3.SelectedDays[0],vmMonth);

end;

procedure TfrmProjectRND.ComboBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
   ZReadOnlyQuery1.Close;
   ZReadOnlyQuery1.SQL.Strings[6] := 'WHERE a.pic = ''' +
   ComboBox1.Text   + '''';
   ZReadOnlyQuery1.Open;

    zDetail1.Close;
   zDetail1.SQL.Strings[1] := 'WHERE a.pic = ''' +
   ComboBox1.Text   + '''';
   zDetail1.Open;
end;

procedure TfrmProjectRND.ComboBox1Click(Sender: TObject);
begin
  inherited;
  zqrMember.Close ;
  zqrMember.Open ;
end;

procedure TfrmProjectRND.cbbmemberClick(Sender: TObject);
begin
  inherited;
  zqrMember.Close ;
  zqrMember.Open ;
end;

end.
