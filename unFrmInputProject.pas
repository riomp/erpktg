unit unFrmInputProject;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  cxDropDownEdit, cxTextEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGridDBTableView, cxGrid, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxMaskEdit, StdCtrls, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxCheckBox;

type
  TfrmTransProject = class(TfrmTransBaru)
    Label3: TLabel;
    cxeNoFRK: TcxTextEdit;
    Label4: TLabel;
    cxeDibuatOleh: TcxTextEdit;
    Label6: TLabel;
    cxeTanggal: TcxTextEdit;
    Label2: TLabel;
    cxtJudul: TcxTextEdit;
    Label1: TLabel;
    cxdTgl2: TcxDateEdit;
    Label20: TLabel;
    cxmDeskProject: TcxMemo;
    Label5: TLabel;
    cxdTgl1: TcxDateEdit;
    Label7: TLabel;
    cbbIS: TcxLookupComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1TableView1: TcxGridTableView;
    cxColNo: TcxGridColumn;
    cxColPIC: TcxGridColumn;
    cxColDeskripsi: TcxGridColumn;
    cxColDue: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    zQuote: TZQuery;
    dsQuote: TDataSource;
    cxColStart: TcxGridColumn;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    cxChkAktif: TcxCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure cxColNoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: String);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransProject: TfrmTransProject;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmTransProject.FormCreate(Sender: TObject);
begin
  zQuote.Open ;
  cxeNoFRK.Text := GetLastFak('jurnal-kerja');
  cxeDibuatOleh.Text := aplikasi.NamaUser;
   cxeTanggal.Text := FormatDateTime('dd-MM-yyyy',
    aplikasi.TanggalServer);

  Self.Jenis :='tambah';
  zQuote.Open ;
  ZQuery1.Open ;
end;

procedure TfrmTransProject.cxColNoGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
var
  Row: Integer;
begin
  Row := Sender.GridView.DataController.GetRowIndexByRecordIndex(ARecord.RecordIndex, False);
  AText := IntToStr(Row+1);
end;

procedure TfrmTransProject.btnSimpanClick(Sender: TObject);
var
  q,z : TZQuery ;
  i,j : integer;
  sNoTrs : string;
begin

  if Self.Jenis = 'tambah' then begin
    sNoTrs := GetLastFak('jurnal-kerja');
    UpdateFaktur(Copy(sNoTrs,1,8));
  end
  else begin
    sNoTrs := cxeNoFRK.Text;
  end;

  q := OpenRS('SELECT * FROM tbl_project_head where no_project =''%s''',[sNoTrs]) ;
  q.Insert;
  with cxGrid1TableView1.DataController  do begin

          for i := 0 to RecordCount -1 do begin
            z := OpenRS('SELECT * FROM tbl_project_detail where no_project =''%s''',[sNoTrs]) ;
            z.Insert;
            z.FieldByName('no').AsInteger := i+1;
            z.FieldByName('no_project').AsString := sNoTrs;
            z.FieldByName('pic').AsString := Values[i, cxColPIC.index];
            z.FieldByName('deskripsi').AsString := Values[i, cxColDeskripsi.index];
            z.FieldByName('start_date').AsDateTime:= Values [i, cxColStart.Index];
            z.FieldByName('finish_date').AsDateTime := Values [i, cxColDue.Index];
            z.Post;
            z.Close;
          end;
        end;

   with q do begin
    FieldByName('no_project').AsString        := cxeNoFRK.Text ;
    FieldByName('dibuat_oleh').AsString       := cxeDibuatOleh.Text ;
    FieldByName('tgl_input').AsDateTime       := Aplikasi.TanggalServer;
    FieldByName('start_date').AsDateTime      := cxdTgl1.EditValue ;
    FieldByName('finish_date').AsDateTime     := cxdTgl2.EditValue ;
    if cbbIS.EditValue <> null then
    FieldByName('no_is').AsString             := cbbIS.EditValue  ;

    if cxChkAktif.Checked then
        FieldByName('f_engi').AsInteger := 1
      else
        FieldByName('f_engi').AsInteger := 0;
    
    FieldByName('judul').AsString             := cxtJudul.Text ;
    FieldByName('detail').AsString            := cxmDeskProject.Text ;
    FieldByName('status').AsString            := 'ON PROGRESS';
    Post ;
    Close;
  end;
      btnKeluarClick(nil);
end;

end.
