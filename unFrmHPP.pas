unit unFrmHPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, ZAbstractRODataset, ZDataset,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, ExtCtrls, cxSpinEdit,scExcelExport,cxGridExportLink, ShellAPI,
  cxCheckBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmHPP = class(TfrmTransBaru)
    cxGrid2: TcxGrid;
    cxTblDataFinger: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrSPK: TZReadOnlyQuery;
    dsSPK: TDataSource;
    cxTblDataFingerno_mo: TcxGridDBColumn;
    cxTblDataFingerno_spk: TcxGridDBColumn;
    cxTblDataFingerno_so: TcxGridDBColumn;
    cxTblDataFingertanggal_so: TcxGridDBColumn;
    cxTblDataFingernama: TcxGridDBColumn;
    cxTblDataFingerkode: TcxGridDBColumn;
    cxTblDataFingerdeskripsi: TcxGridDBColumn;
    cxTblDataFingerqty: TcxGridDBColumn;
    cxTblDataFingersatuan: TcxGridDBColumn;
    zqrBahan: TZReadOnlyQuery;
    dsBahan: TDataSource;
    Label2: TLabel;
    cxGrid3: TcxGrid;
    cxTblUpah: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    zqrUpah: TZReadOnlyQuery;
    dsUpah: TDataSource;
    cxTblUpahno_mo: TcxGridDBColumn;
    cxTblUpahno_spk: TcxGridDBColumn;
    cxTblUpahno_bukti: TcxGridDBColumn;
    cxTblUpahtanggal: TcxGridDBColumn;
    cxTblUpahmulai: TcxGridDBColumn;
    cxTblUpahselesai: TcxGridDBColumn;
    cxTblUpahdurasi: TcxGridDBColumn;
    cxTblUpahmesin: TcxGridDBColumn;
    cxTblUpahoperator: TcxGridDBColumn;
    cxColUpah: TcxGridDBColumn;
    cxColListrik: TcxGridDBColumn;
    cxColBiayaUpah: TcxGridDBColumn;
    cxColBiayaListrik: TcxGridDBColumn;
    cxColTotal: TcxGridDBColumn;
    cxtMO: TcxTextEdit;
    cxTblDataFingerBB: TcxGridDBColumn;
    cxTblDataFingerbtkl: TcxGridDBColumn;
    cxTblDataFingerTotal: TcxGridDBColumn;
    cxMaterial: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1no_mo: TcxGridDBColumn;
    cxGrid2DBTableView1no_spk: TcxGridDBColumn;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGrid2DBTableView1hpp: TcxGridDBColumn;
    cxGrid2DBTableView1total: TcxGridDBColumn;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2no_mo: TcxGridDBColumn;
    cxGrid2DBTableView2no_spk: TcxGridDBColumn;
    cxGrid2DBTableView2no_bukti: TcxGridDBColumn;
    cxGrid2DBTableView2tanggal: TcxGridDBColumn;
    cxGrid2DBTableView2mulai: TcxGridDBColumn;
    cxGrid2DBTableView2selesai: TcxGridDBColumn;
    cxGrid2DBTableView2durasi: TcxGridDBColumn;
    cxGrid2DBTableView2mesin: TcxGridDBColumn;
    cxGrid2DBTableView2operator: TcxGridDBColumn;
    cxGrid2DBTableView2upah: TcxGridDBColumn;
    cxGrid2DBTableView2biaya: TcxGridDBColumn;
    cxGrid2DBTableView2biayaupah: TcxGridDBColumn;
    cxGrid2DBTableView2biayalistrik: TcxGridDBColumn;
    cxGrid2DBTableView2total: TcxGridDBColumn;
    cxComplate: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxsSpkSelesai: TcxStyle;
    procedure cxTblDataFingerFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHPP: TfrmHPP;

implementation

uses unDm, unTools, unFrmLapUmum, unFrmLaporan1;

{$R *.dfm}

procedure TfrmHPP.cxTblDataFingerFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  u,l : TZQuery ;
  i : Integer ;
begin
  //zqrBahan.Close;
  //zqrBahan.ParamByName('no_mo').AsString := zqrSPK.fieldbyname('no_mo').AsString ;
  //zqrBahan.Open;

  zqrUpah.Close;
  zqrUpah.ParamByName('no_mo').AsString := zqrSPK.fieldbyname('no_mo').AsString ;
  zqrUpah.Open;

  cxtMO.Text := zqrSPK.fieldbyname('no_mo').AsString ;

  { With cxTblUpah.DataController do begin
   i := AppendRecord ;
    u := OpenRS('select * from tbl_upah WHERE tgl=(select max(tgl) from tbl_upah)') ;
    Values[i, cxColUpah.Index] := u.FieldByName('upah').AsFloat;

    l := OpenRS('select * from tbl_listrik WHERE tgl=(select max(tgl) from tbl_listrik)') ;
    Values[i, cxColListrik.Index] := l.FieldByName('biaya').AsFloat;

  end;}
end;

procedure TfrmHPP.FormCreate(Sender: TObject);
begin
  inherited;
  zqrSPK.Open ;
  zqrBahan.Open ;
end;

procedure TfrmHPP.btnBaruClick(Sender: TObject);
var
  f : TFrm_LaporanUmum1 ;
begin
  f := TFrm_LaporanUmum1.Create(self);
  with f do begin
    zqrSPK.Close ;
    zqrBahan.Close ;
    zqrUpah.Close ;
    zqrSPK.ParamByName('no_mo').AsString := cxtMO.Text  ;
    zqrBahan.ParamByName('no_mo').AsString := cxtMO.Text  ;
    zqrUpah.ParamByName('no_mo').AsString := cxtMO.Text  ;
    zqrDetail.ParamByName('no_mo').AsString := cxtMO.Text  ;
    zqrDataBiaya.ParamByName('no_mo').AsString := cxtMO.Text  ;
    zqrSPK.Open ;
    zqrBahan.Open ;
    zqrUpah.Open ;

    rptHPP.ShowReport(true);
  end ;
  f.Release ;

end;

procedure TfrmHPP.btnSimpanClick(Sender: TObject);
begin
     try
      ExportGridToExcel(aplikasi.AppPath + '\tmp_hpp.xls', cxGrid2);
      ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp_hpp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;

end;

end.
