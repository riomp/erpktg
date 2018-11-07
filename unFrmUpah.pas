unit unFrmUpah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, StdCtrls, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmUpah = class(TfrmTplTrans)
    ds: TDataSource;
    Label1: TLabel;
    cxDateEdit1: TcxDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    cxsBiaya: TcxSpinEdit;
    cxGrd: TcxGrid;
    cxTblView: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    zQry: TZQuery;
    cxTblViewid: TcxGridDBColumn;
    cxTblViewtgl: TcxGridDBColumn;
    cxTblViewupah: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpah: TfrmUpah;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmUpah.FormCreate(Sender: TObject);
begin
  inherited;
  cxDateEdit1.Date := Aplikasi.TanggalServer;
  cxsBiaya.Value := 0;
end;

procedure TfrmUpah.btnSimpanClick(Sender: TObject);
var
  q : TZQuery;
begin
 q := OpenRS('SELECT * FROM tbl_upah where tgl = ''s''',
            [cxDateEdit1.Date]);
     with q do begin
     Insert;
     FieldByName('tgl').AsDateTime          := cxDateEdit1.Date  ;
     FieldByName('upah').AsFloat           := cxsBiaya.Value;
     Post ;
     Close ;
     ds.DataSet.Refresh ;
     MsgBox('Data Sudah Disimpan');
     cxDateEdit1.Date := Aplikasi.TanggalServer;
     cxsBiaya.value := 0;
   end;
end;

procedure TfrmUpah.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
   q: TZQuery;
begin
   label3.Caption :=  zQry.FieldByName('id').AsString ;
  cxDateEdit1.Date := zQry.FieldByName('tgl').AsDateTime  ;
   cxsBiaya.Value :=  zQry.FieldByName('upah').AsFloat ;
   btnSimpan.Enabled := False;
   btnHapus.Visible := True ;

end;

procedure TfrmUpah.btnHapusClick(Sender: TObject);
begin
  inherited;
try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_upah WHERE id = ''' + label3.Caption  + '''');
        dm.zConn.Commit;
        MsgBox('Berhasil dihapus.');
        zQry.Close;
        zQry.Open;
        ds.DataSet.Refresh ;
        btnSimpan.Enabled := True;
        btnHapus.Visible := False ;
        cxDateEdit1.Date := Aplikasi.TanggalServer;
        cxsBiaya.Value := 0;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
end;
end;

end.
