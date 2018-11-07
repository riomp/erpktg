unit unFrmMonitoringKaryawan;

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
  cxGridDBTableView, cxGrid, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTimeEdit, ZAbstractRODataset, ZDataset,
  scExcelExport,cxGridExportLink, ShellAPI, cxHyperLinkEdit, jpeg, ComCtrls;

type
  TfrmMonitoringKaryawan = class(TfrmTplTrans)
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrCIO: TZReadOnlyQuery;
    dsCIO: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    btnClosePanel: TButton;
    cxLabel3: TcxLabel;
    cxtNama: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxtDivisi: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxtJabatan: TcxTextEdit;
    imgFoto: TImage;
    btnTutup3: TButton;
    btnDetKary: TButton;
    cxLabel6: TcxLabel;
    cxtDept: TcxTextEdit;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrd: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTbltanggal: TcxGridDBColumn;
    cxTblnik: TcxGridDBColumn;
    cxTblnama: TcxGridDBColumn;
    cxTbldivisi: TcxGridDBColumn;
    cxTbljabatan: TcxGridDBColumn;
    cxTbljenis: TcxGridDBColumn;
    cxTbl_in: TcxGridDBColumn;
    cxTbl_out: TcxGridDBColumn;
    cxTblketerangan: TcxGridDBColumn;
    cxTblkegiatan: TcxGridDBColumn;
    cxTbljammasuk: TcxGridDBColumn;
    cxTbljampulang: TcxGridDBColumn;
    cxTblflag: TcxGridDBColumn;
    cxTbllokasi: TcxGridDBColumn;
    cxTblnik_sl: TcxGridDBColumn;
    cxTblnama_sl: TcxGridDBColumn;
    cxTblnik_sl_k: TcxGridDBColumn;
    cxTblf_lokasi: TcxGridDBColumn;
    cxTblip: TcxGridDBColumn;
    cxTblmesin: TcxGridDBColumn;
    cxTblalokasi: TcxGridDBColumn;
    cxTbljam_mulai: TcxGridDBColumn;
    cxTblalokasi_mesin: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    cxTblRekap: TcxGridDBTableView;
    cxGrdRekapLevel1: TcxGridLevel;
    cxGrdRekap: TcxGrid;
    zqrRekap: TZReadOnlyQuery;
    dsRekap: TDataSource;
    cxTblRekaptanggal: TcxGridDBColumn;
    cxTblRekapnik: TcxGridDBColumn;
    cxTblRekapnama: TcxGridDBColumn;
    cxTblRekapdivisi: TcxGridDBColumn;
    cxTblRekapjabatan: TcxGridDBColumn;
    cxTblRekapmasuk: TcxGridDBColumn;
    cxTblRekappenugasan: TcxGridDBColumn;
    cxTblRekapmutasi: TcxGridDBColumn;
    cxTblRekappulang: TcxGridDBColumn;
    cxTblRekapjam_masuk: TcxGridDBColumn;
    cxTblRekapjam_pulang: TcxGridDBColumn;
    cxTblRekapalokasi: TcxGridDBColumn;
    cxTblDet: TcxGridDBTableView;
    cxGrdDetLevel1: TcxGridLevel;
    cxGrdDet: TcxGrid;
    zqrDet: TZReadOnlyQuery;
    dsDet: TDataSource;
    cxTblDettanggal: TcxGridDBColumn;
    cxTblDetjenis: TcxGridDBColumn;
    cxTblDetjam: TcxGridDBColumn;
    cxTblColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnClosePanelClick(Sender: TObject);
    procedure btnTutup3Click(Sender: TObject);
    procedure btnDetKaryClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMonitoringKaryawan: TfrmMonitoringKaryawan;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMonitoringKaryawan.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  cxdTgl1.Date := Aplikasi.TanggalServer;
  cxdTgl2.Date := aplikasi.TanggalServer;
  pg.ActivePageIndex := 0;
end;

procedure TfrmMonitoringKaryawan.Button2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMonitoringKaryawan.btnProsesClick(Sender: TObject);
begin
  inherited;
  if pg.ActivePageIndex = 0 then begin
    zqrCIO.Close;
    zqrCIO.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrCIO.ParamByName('tgl2').AsDate := cxdTgl2.Date;
    zqrCIO.Open;
  end
  else begin
    zqrRekap.Close;
    zqrRekap.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrRekap.ParamByName('tgl2').AsDate := cxdTgl2.Date;
    zqrRekap.Open;
  end;
end;

procedure TfrmMonitoringKaryawan.Button1Click(Sender: TObject);
begin
  if pg.ActivePageIndex = 0 then begin
    try
    ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrd);
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
      ,nil,SW_SHOWNORMAL);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end
  else begin
    try
    ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrdRekap);
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
      ,nil,SW_SHOWNORMAL);
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
end;

procedure TfrmMonitoringKaryawan.btnClosePanelClick(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
end;

procedure TfrmMonitoringKaryawan.btnTutup3Click(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
end;

procedure TfrmMonitoringKaryawan.btnDetKaryClick(Sender: TObject);
var
  q: TZQuery;
  jpeg: TJPEGImage;
  stream: TMemoryStream;
  sNik: string;
begin
  inherited;
  if pg.ActivePageIndex = 0 then begin
    q := OpenRS('SELECT * FROM tbl_karyawan WHERE nik = ''%s''',
      [Copy(zqrCIO.FieldByName('nik').AsString,1,5)]);
    sNik := zqrCIO.FieldByName('nik').AsString;
  end
  else begin
    q := OpenRS('SELECT * FROM tbl_karyawan WHERE nik = ''%s''',
      [Copy(zqrRekap.FieldByName('nik').AsString,1,5)]);
    sNik := zqrRekap.FieldByName('nik').AsString;
  end;

  if not q.IsEmpty then begin
    cxtNama.Text := q.FieldByName('nama').AsString;
    cxtDivisi.Text := q.FieldByName('divisi').AsString;
    cxtJabatan.Text := q.FieldByName('jabatan').AsString;
    cxtDept.Text := q.FieldByName('departemen').AsString;

    if not q.FieldByName('foto').IsNull then begin
      jpeg := TJPEGImage.Create;
      stream := TMemoryStream.Create;
      TBlobField(q.FieldByName('foto')).SaveToStream(stream);
      stream.Position := 0;
      jpeg.LoadFromStream(stream);
      imgFoto.Picture.Assign(jpeg);
    end;

    zqrDet.Close;
    zqrDet.ParamByName('nik').AsString := sNik;
    zqrDet.ParamByName('tgl1').AsDate := cxdTgl1.Date;
    zqrDet.ParamByName('tgl2').AsDate := cxdTgl2.Date;
    zqrDet.Open;
    
  end;
  q.Close;

  Panel1.Visible := True;
end;

procedure TfrmMonitoringKaryawan.ClearAll;
begin
  cxtNama.Text := '';
  cxtJabatan.Text := '';
  cxtDivisi.Text := '';
  imgFoto.Picture := nil;
  cxtDept.Text := '';
  zqrDet.Close;
end;

procedure TfrmMonitoringKaryawan.Panel1Exit(Sender: TObject);
begin
  inherited;
  Panel1.Visible := False;
  ClearAll;
end;

end.
