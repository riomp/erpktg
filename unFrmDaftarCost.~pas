unit unFrmDaftarCost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls;

type
  TfrmDaftarCost = class(TfrmTplTrans)
    cxGrd2: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxGrd2Level1: TcxGridLevel;
    zqrDaftarCost: TZReadOnlyQuery;
    dsDaftarCost: TDataSource;
    cxTblno_cost: TcxGridDBColumn;
    cxTbltgl_cost: TcxGridDBColumn;
    cxTblkode_brg: TcxGridDBColumn;
    cxTbldeskripsi: TcxGridDBColumn;
    procedure btnBaruClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarCost: TfrmDaftarCost;

implementation

uses unCostCalculation, unTools, unDm, unAplikasi, unFrmLaporan1;

{$R *.dfm}

procedure TfrmDaftarCost.btnBaruClick(Sender: TObject);
var
  f : TfrmCostCalculation ;
begin
  inherited;
  f := TfrmCostCalculation.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
    zqrDaftarCost.Close;
  zqrDaftarCost.Open;
end;

procedure TfrmDaftarCost.btnHapusClick(Sender: TObject);
begin
  inherited;
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_head WHERE no_cost = ''' + zqrDaftarCost.FieldByName('no_cost').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_mat WHERE no_cost = ''' + zqrDaftarCost.FieldByName('no_cost').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_mat1 WHERE no_cost = ''' + zqrDaftarCost.FieldByName('no_cost').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_routing WHERE no_cost = ''' + zqrDaftarCost.FieldByName('no_cost').AsString + '''');
      dm.zConn.ExecuteDirect('DELETE FROM tbl_cost_routing1 WHERE no_cost = ''' + zqrDaftarCost.FieldByName('no_cost').AsString + '''');
      dm.zConn.Commit;
      MsgBox('Cost Calculation sudah berhasil di Hapus.');
      dsDaftarCost.DataSet.Refresh ;

    except
      on E: Exception do begin
        dm.zConn.Rollback;
        MsgBox('Error: ' + E.Message);
      end;
    end;

end;

procedure TfrmDaftarCost.btnBatalClick(Sender: TObject);
var
  f : TfrmCostCalculation;
begin
  inherited;
  f := TfrmCostCalculation.Create(Self);
  f.NoCost := zqrDaftarCost.FieldByName('no_cost').AsString;
   f.Jenis := 'edit';

  f.ShowModal;

end;

procedure TfrmDaftarCost.btnSimpanClick(Sender: TObject);
var
  f : TFrm_LaporanUmum1;
begin
  inherited;
   f := TFrm_LaporanUmum1.Create(Self);
    with f do begin
      zqrCost.Close;
     zqrUpahCost.Close;
     zqrListrikCost.Close ;
     zqrMat.Close;
     zqrMat1.Close;
     zqrCost.ParamByName('no').AsString := zqrDaftarCost.FieldByName('no_cost').AsString;
     zqrUpahCost.ParamByName('no').AsString := zqrDaftarCost.FieldByName('no_cost').AsString;
     zqrListrikCost.ParamByName('no').AsString := zqrDaftarCost.FieldByName('no_cost').AsString;
     zqrMat.ParamByName('no').AsString := zqrDaftarCost.FieldByName('no_cost').AsString;
     zqrMat1.ParamByName('no').AsString := zqrDaftarCost.FieldByName('no_cost').AsString;
      zqrCost.Open;
     zqrUpahCost.Open;
     zqrListrikCost.Open;
     zqrMat.Open;
     zqrMat1.Open;
      rpCost.ShowReport(True);
    end;
    f.Release;
end;

end.
