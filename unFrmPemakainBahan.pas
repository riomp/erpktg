unit unFrmPemakainBahan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxPC, StdCtrls, ExtCtrls, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxCustomPivotGrid, cxDBPivotGrid, cxSpinEdit, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,scExcelExport,cxExportPivotGridLink, ShellAPI, cxGridExportLink,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmPemakaianBahan = class(TfrmTransBaru)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid2: TcxGrid;
    cxTblG01: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrG01: TZReadOnlyQuery;
    dsG01: TDataSource;
    cxTblG01kode: TcxGridDBColumn;
    cxTblG01deskripsi: TcxGridDBColumn;
    cxTblG01saldo_awal: TcxGridDBColumn;
    cxTblG01stok_in: TcxGridDBColumn;
    cxTblG01stok_out: TcxGridDBColumn;
    cxTblG01stok_trans: TcxGridDBColumn;
    cxTblG01end_stok: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    cxLabel3: TcxLabel;
    cxdTgl3: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxdTgl4: TcxDateEdit;
    btnProses1: TButton;
    zqRekap: TZReadOnlyQuery;
    dsRekap: TDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1id: TcxDBPivotGridField;
    cxDBPivotGrid1no_bukti: TcxDBPivotGridField;
    cxDBPivotGrid1tanggal: TcxDBPivotGridField;
    cxDBPivotGrid1jam: TcxDBPivotGridField;
    cxDBPivotGrid1kode_brg: TcxDBPivotGridField;
    cxDBPivotGrid1tipe: TcxDBPivotGridField;
    cxDBPivotGrid1harga: TcxDBPivotGridField;
    cxDBPivotGrid1qty: TcxDBPivotGridField;
    cxDBPivotGrid1qty_baik: TcxDBPivotGridField;
    cxDBPivotGrid1qty_afkir: TcxDBPivotGridField;
    cxDBPivotGrid1qty_retur: TcxDBPivotGridField;
    cxDBPivotGrid1satuan: TcxDBPivotGridField;
    cxDBPivotGrid1gudang: TcxDBPivotGridField;
    cxDBPivotGrid1referensi: TcxDBPivotGridField;
    cxDBPivotGrid1keterangan: TcxDBPivotGridField;
    cxDBPivotGrid1user: TcxDBPivotGridField;
    cxDBPivotGrid1user_dept: TcxDBPivotGridField;
    cxDBPivotGrid1no_so: TcxDBPivotGridField;
    cxDBPivotGrid1no_spk: TcxDBPivotGridField;
    cxDBPivotGrid1no_spmb: TcxDBPivotGridField;
    cxDBPivotGrid1no_ccr: TcxDBPivotGridField;
    cxDBPivotGrid1no_lkm: TcxDBPivotGridField;
    cxDBPivotGrid1no_sj: TcxDBPivotGridField;
    cxDBPivotGrid1no_po: TcxDBPivotGridField;
    cxDBPivotGrid1no_trial: TcxDBPivotGridField;
    cxDBPivotGrid1tgl_input: TcxDBPivotGridField;
    cxDBPivotGrid1dept: TcxDBPivotGridField;
    cxDBPivotGrid1divisi: TcxDBPivotGridField;
    cxDBPivotGrid1f_poe: TcxDBPivotGridField;
    cxDBPivotGrid1hpp: TcxDBPivotGridField;
    cxDBPivotGrid1unit_ktg: TcxDBPivotGridField;
    cxDBPivotGrid1deskripsi: TcxDBPivotGridField;
    cxTblG01plot_spk: TcxGridDBColumn;
    cxTblG01end_stokplot: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGridField1: TcxDBPivotGridField;
    cxDBPivotGridField2: TcxDBPivotGridField;
    cxDBPivotGridField3: TcxDBPivotGridField;
    cxDBPivotGridField4: TcxDBPivotGridField;
    cxDBPivotGridField5: TcxDBPivotGridField;
    cxDBPivotGridField6: TcxDBPivotGridField;
    cxDBPivotGridField7: TcxDBPivotGridField;
    cxDBPivotGridField8: TcxDBPivotGridField;
    cxDBPivotGridField9: TcxDBPivotGridField;
    cxDBPivotGridField10: TcxDBPivotGridField;
    cxDBPivotGridField11: TcxDBPivotGridField;
    cxDBPivotGridField12: TcxDBPivotGridField;
    cxDBPivotGridField13: TcxDBPivotGridField;
    cxDBPivotGridField14: TcxDBPivotGridField;
    cxDBPivotGridField15: TcxDBPivotGridField;
    cxDBPivotGridField16: TcxDBPivotGridField;
    cxDBPivotGridField17: TcxDBPivotGridField;
    cxDBPivotGridField18: TcxDBPivotGridField;
    cxDBPivotGridField19: TcxDBPivotGridField;
    cxDBPivotGridField20: TcxDBPivotGridField;
    cxDBPivotGridField21: TcxDBPivotGridField;
    cxDBPivotGridField22: TcxDBPivotGridField;
    cxDBPivotGridField23: TcxDBPivotGridField;
    cxDBPivotGridField24: TcxDBPivotGridField;
    cxDBPivotGridField25: TcxDBPivotGridField;
    cxDBPivotGridField26: TcxDBPivotGridField;
    cxDBPivotGridField27: TcxDBPivotGridField;
    cxDBPivotGridField28: TcxDBPivotGridField;
    cxDBPivotGridField29: TcxDBPivotGridField;
    cxDBPivotGridField30: TcxDBPivotGridField;
    cxDBPivotGridField31: TcxDBPivotGridField;
    cxDBPivotGridField32: TcxDBPivotGridField;
    zqRinci: TZReadOnlyQuery;
    dsRinci: TDataSource;
    cxLabel5: TcxLabel;
    cxdTgl5: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxdTgl6: TcxDateEdit;
    btnProsesRinci: TButton;
    cxTabSheet4: TcxTabSheet;
    cxDBPivotGrid3: TcxDBPivotGrid;
    zqRMIn: TZReadOnlyQuery;
    dsRMIn: TDataSource;
    cxDBPivotGrid3id: TcxDBPivotGridField;
    cxDBPivotGrid3no_bukti: TcxDBPivotGridField;
    cxDBPivotGrid3tanggal: TcxDBPivotGridField;
    cxDBPivotGrid3jam: TcxDBPivotGridField;
    cxDBPivotGrid3kode_brg: TcxDBPivotGridField;
    cxDBPivotGrid3tipe: TcxDBPivotGridField;
    cxDBPivotGrid3harga: TcxDBPivotGridField;
    cxDBPivotGrid3qty: TcxDBPivotGridField;
    cxDBPivotGrid3qty_baik: TcxDBPivotGridField;
    cxDBPivotGrid3qty_afkir: TcxDBPivotGridField;
    cxDBPivotGrid3qty_retur: TcxDBPivotGridField;
    cxDBPivotGrid3satuan: TcxDBPivotGridField;
    cxDBPivotGrid3gudang: TcxDBPivotGridField;
    cxDBPivotGrid3referensi: TcxDBPivotGridField;
    cxDBPivotGrid3keterangan: TcxDBPivotGridField;
    cxDBPivotGrid3user: TcxDBPivotGridField;
    cxDBPivotGrid3user_dept: TcxDBPivotGridField;
    cxDBPivotGrid3no_so: TcxDBPivotGridField;
    cxDBPivotGrid3no_spk: TcxDBPivotGridField;
    cxDBPivotGrid3no_spmb: TcxDBPivotGridField;
    cxDBPivotGrid3no_ccr: TcxDBPivotGridField;
    cxDBPivotGrid3no_lkm: TcxDBPivotGridField;
    cxDBPivotGrid3no_sj: TcxDBPivotGridField;
    cxDBPivotGrid3no_po: TcxDBPivotGridField;
    cxDBPivotGrid3no_trial: TcxDBPivotGridField;
    cxDBPivotGrid3tgl_input: TcxDBPivotGridField;
    cxDBPivotGrid3dept: TcxDBPivotGridField;
    cxDBPivotGrid3divisi: TcxDBPivotGridField;
    cxDBPivotGrid3f_poe: TcxDBPivotGridField;
    cxDBPivotGrid3hpp: TcxDBPivotGridField;
    cxDBPivotGrid3unit_ktg: TcxDBPivotGridField;
    cxDBPivotGrid3deskripsi: TcxDBPivotGridField;
    cxLabel7: TcxLabel;
    cxdTgl7: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxdTgl8: TcxDateEdit;
    btnRMIn: TButton;
    cxTabSheet5: TcxTabSheet;
    cxDBPivotGrid4: TcxDBPivotGrid;
    cxDBPivotGridField33: TcxDBPivotGridField;
    cxDBPivotGridField34: TcxDBPivotGridField;
    cxDBPivotGridField35: TcxDBPivotGridField;
    cxDBPivotGridField36: TcxDBPivotGridField;
    cxDBPivotGridField37: TcxDBPivotGridField;
    cxDBPivotGridField38: TcxDBPivotGridField;
    cxDBPivotGridField39: TcxDBPivotGridField;
    cxDBPivotGridField40: TcxDBPivotGridField;
    cxDBPivotGridField41: TcxDBPivotGridField;
    cxDBPivotGridField42: TcxDBPivotGridField;
    cxDBPivotGridField43: TcxDBPivotGridField;
    cxDBPivotGridField44: TcxDBPivotGridField;
    cxDBPivotGridField45: TcxDBPivotGridField;
    cxDBPivotGridField46: TcxDBPivotGridField;
    cxDBPivotGridField47: TcxDBPivotGridField;
    cxDBPivotGridField48: TcxDBPivotGridField;
    cxDBPivotGridField49: TcxDBPivotGridField;
    cxDBPivotGridField50: TcxDBPivotGridField;
    cxDBPivotGridField51: TcxDBPivotGridField;
    cxDBPivotGridField52: TcxDBPivotGridField;
    cxDBPivotGridField53: TcxDBPivotGridField;
    cxDBPivotGridField54: TcxDBPivotGridField;
    cxDBPivotGridField55: TcxDBPivotGridField;
    cxDBPivotGridField56: TcxDBPivotGridField;
    cxDBPivotGridField57: TcxDBPivotGridField;
    cxDBPivotGridField58: TcxDBPivotGridField;
    cxDBPivotGridField59: TcxDBPivotGridField;
    cxDBPivotGridField60: TcxDBPivotGridField;
    cxDBPivotGridField61: TcxDBPivotGridField;
    cxDBPivotGridField62: TcxDBPivotGridField;
    cxDBPivotGridField63: TcxDBPivotGridField;
    cxDBPivotGridField64: TcxDBPivotGridField;
    cxLabel9: TcxLabel;
    cxdTgl9: TcxDateEdit;
    cxLabel10: TcxLabel;
    cxdTgl10: TcxDateEdit;
    btnRMTrans: TButton;
    zqRMTrans: TZReadOnlyQuery;
    dsRMTrans: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure btnProsesClick(Sender: TObject);
    procedure btnProses1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProsesRinciClick(Sender: TObject);
    procedure btnRMInClick(Sender: TObject);
    procedure btnRMTransClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPemakaianBahan: TfrmPemakaianBahan;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmPemakaianBahan.btnProsesClick(Sender: TObject);
begin
     with zqrG01 do begin
     if Active then Close;
     ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
     ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    Screen.Cursor := crDefault;
   end;

end;

procedure TfrmPemakaianBahan.btnProses1Click(Sender: TObject);
begin
    with zqRekap do begin
     if Active then Close;
     ParamByName('tgl3').AsDateTime := cxdTgl3.Date;
     ParamByName('tgl4').AsDateTime := cxdTgl4.Date;
      Open;
    Screen.Cursor := crDefault;
   end;

end;

procedure TfrmPemakaianBahan.FormCreate(Sender: TObject);
begin
  inherited;

  cxPageControl1.ActivePageIndex := 0;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  cxdTgl3.Date := FDOM(Date);
  cxdTgl4.Date := LDOM(Date);
  cxdTgl5.Date := FDOM(Date);
  cxdTgl6.Date := LDOM(Date);
  cxdTgl7.Date := FDOM(Date);
  cxdTgl8.Date := LDOM(Date);
  cxdTgl9.Date := FDOM(Date);
  cxdTgl10.Date := LDOM(Date);
end;

procedure TfrmPemakaianBahan.btnProsesRinciClick(Sender: TObject);
begin
  inherited;
  with zqRinci do begin
       if Active then Close;
     ParamByName('tgl5').AsDateTime := cxdTgl5.Date;
     ParamByName('tgl6').AsDateTime := cxdTgl6.Date;
      Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPemakaianBahan.btnRMInClick(Sender: TObject);
begin
  inherited;
    with zqRMIn do begin
       if Active then Close;
     ParamByName('tgl7').AsDateTime := cxdTgl7.Date;
     ParamByName('tgl8').AsDateTime := cxdTgl8.Date;
      Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPemakaianBahan.btnRMTransClick(Sender: TObject);
begin
  inherited;
      with zqRMTrans do begin
       if Active then Close;
     ParamByName('tgl9').AsDateTime := cxdTgl9.Date;
     ParamByName('tgl10').AsDateTime := cxdTgl10.Date;
      Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmPemakaianBahan.Button1Click(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpInventoryCard.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpInventoryCard.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmPemakaianBahan.Button2Click(Sender: TObject);
begin
  inherited;
   try
     cxExportPivotGridToExcel(aplikasi.AppPath + '\tmpRincianPemakaianBahan.xls',cxDBPivotGrid1);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpRincianPemakaianBahan.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmPemakaianBahan.Button3Click(Sender: TObject);
begin
  inherited;
   try
     cxExportPivotGridToExcel(aplikasi.AppPath + '\tmpRekapPemakaianBahan.xls',cxDBPivotGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpRekapPemakaianBahan.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmPemakaianBahan.Button4Click(Sender: TObject);
begin
  inherited;
   try
     cxExportPivotGridToExcel(aplikasi.AppPath + '\tmpRMIn.xls',cxDBPivotGrid3);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpRMIn.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

procedure TfrmPemakaianBahan.Button5Click(Sender: TObject);
begin
  inherited;
 try
     cxExportPivotGridToExcel(aplikasi.AppPath + '\tmpRMTransfer.xls',cxDBPivotGrid4);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpRMTransfer.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
