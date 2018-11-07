unit UDataPengeluaranSales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, RzButton, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, RzPanel,cxPC;

type
  TFrm_DataPengeluaran = class(TForm)
    RzPanel1: TRzPanel;
    BtnUpdate: TRzToolButton;
    BtnFilter: TRzToolButton;
    dbgdata: TcxGrid;
    dbgdataDBTableView1: TcxGridDBTableView;
    dbgdataLevel1: TcxGridLevel;
    RzPanel2: TRzPanel;
    BtnSelesai: TRzBitBtn;
    BtnBaru: TRzBitBtn;
    BtnEdit: TRzBitBtn;
    BtnHapus: TRzBitBtn;
    QData: TZQuery;
    DSData: TDataSource;
    dbgdataDBTableView1id: TcxGridDBColumn;
    dbgdataDBTableView1nama: TcxGridDBColumn;
    dbgdataDBTableView1tgl: TcxGridDBColumn;
    dbgdataDBTableView1bbm: TcxGridDBColumn;
    dbgdataDBTableView1km_awal: TcxGridDBColumn;
    dbgdataDBTableView1km_akhir: TcxGridDBColumn;
    dbgdataDBTableView1daerah: TcxGridDBColumn;
    dbgdataDBTableView1entertaint_dinas: TcxGridDBColumn;
    dbgdataDBTableView1transportasi: TcxGridDBColumn;
    dbgdataDBTableView1paket_data: TcxGridDBColumn;
    dbgdataDBTableView1retribusi: TcxGridDBColumn;
    dbgdataDBTableView1tol: TcxGridDBColumn;
    dbgdataDBTableView1uang_makan: TcxGridDBColumn;
    dbgdataDBTableView1sewa_mobil: TcxGridDBColumn;
    dbgdataDBTableView1penginapan: TcxGridDBColumn;
    dbgdataDBTableView1expedisi: TcxGridDBColumn;
    dbgdataDBTableView1lainnya: TcxGridDBColumn;
    dbgdataDBTableView1total: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnSelesaiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshQ;
  end;

var
  Frm_DataPengeluaran: TFrm_DataPengeluaran;

implementation

uses UDM, UMain;

{$R *.dfm}

procedure TFrm_DataPengeluaran.FormShow(Sender: TObject);
begin
   RefreshQ;
end;

procedure TFrm_DataPengeluaran.RefreshQ;
begin
with QData do begin
    Close;
      SQL.Clear;
      SQL.Text := 'select * FROM tbl_costoperational order by date(tgl) desc';
      Open;
    end;
end;

procedure TFrm_DataPengeluaran.BtnSelesaiClick(Sender: TObject);
var
  ts: TcxTabSheet;
begin
  ts := (Self.parent as TcxTabSheet);
  Frm_Main.CloseTab(Self, ts);
end;

end.
