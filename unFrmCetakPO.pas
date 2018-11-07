unit unFrmCetakPO;

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
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, ExtCtrls, cxContainer,
  cxCheckBox, cxRadioGroup, frxClass, cxSpinEdit;

type
  TfrmCetakPO = class(TForm)
    btnCetak: TButton;
    btnKeluar: TButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrSPKPHead: TZReadOnlyQuery;
    dsSPKPHead: TDataSource;
    zqrSPKPDet: TZReadOnlyQuery;
    dsSPKPDet: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1no_fobj: TcxGridDBColumn;
    cxGridDBTableView1no_po_pajak: TcxGridDBColumn;
    cxGridDBTableView1nama_supplier: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1tgl_required: TcxGridDBColumn;
    cxGridDBTableView1jenis_po: TcxGridDBColumn;
    cxGridDBTableView1pembayaran: TcxGridDBColumn;
    cxGridDBTableView1ppn: TcxGridDBColumn;
    cxGridDBTableView1kode_alamat_kirim: TcxGridDBColumn;
    cxGridDBTableView1nama_pengiriman: TcxGridDBColumn;
    cxGridDBTableView1alamat: TcxGridDBColumn;
    cxGridDBTableView1kota: TcxGridDBColumn;
    cxGridDBTableView1jam: TcxGridDBColumn;
    cxGridDBTableView1keterangan: TcxGridDBColumn;
    cxGridDBTableView1f_revisi: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1user_edit: TcxGridDBColumn;
    cxGridDBTableView1tgl_edit: TcxGridDBColumn;
    cxGridDBTableView1tgl_input: TcxGridDBColumn;
    cxGridDBTableView1f_completed: TcxGridDBColumn;
    cxGridDBTableView1currency: TcxGridDBColumn;
    cxGridDBTableView1f_approval: TcxGridDBColumn;
    cxGridDBTableView1host: TcxGridDBColumn;
    cxGridDBTableView1divisi: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1kode_brg: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1harga: TcxGridDBColumn;
    cxGrid2DBTableView1keterangan: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    cxGrid2DBTableView1satuan: TcxGridDBColumn;
    cxGrid2DBTableView1mata_uang: TcxGridDBColumn;
    cxGrid2DBTableView1nilai_tukar: TcxGridDBColumn;
    pnlPilihan: TPanel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxCheckBox1: TcxCheckBox;
    btnCetak2: TButton;
    btnBatal: TButton;
    btnCetakPOInternal: TButton;
    btnCetakPOEvie: TButton;
    cxGrdJenisPO: TcxGridDBColumn;
    cxChkEng: TcxCheckBox;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlPilihanExit(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnCetakPOInternalClick(Sender: TObject);
    procedure btnCetakPOEvieClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    mJenisPO: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property JenisPO: string read mJenisPO write mJenisPO;
  end;

var
  frmCetakPO: TfrmCetakPO;

implementation

uses unFrmLapUmum, unAplikasi, unDm;

{$R *.dfm}

procedure TFrmCetakPO.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmCetakPO.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCetakPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmCetakPO.FormCreate(Sender: TObject);
begin
  {
  Screen.Cursor := crSQLWait;
  pnlPilihan.Visible := False;
  zqrSPKPHead.Open;
  zqrSPKPDet.Open;
  Screen.Cursor := crDefault;
  }
  pnlPilihan.Visible := False;
end;

procedure TfrmCetakPO.pnlPilihanExit(Sender: TObject);
begin
  pnlPilihan.Visible := False;
end;

procedure TfrmCetakPO.btnCetakClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
  Memo: TfrxMemoView;
  sNoPO: string;
begin

  if zqrSPKPHead.FieldByName('f_approval').AsInteger = 0 then Abort;

  f := TFrmLapUmum.Create(Self);

  with f do begin
    sNoPO := zqrSPKPHead.FieldByName('no_bukti').AsString;

    if Copy(sNoPO,1,3) = 'POP' then begin
      zqrPOPeletan.Close;
      zqrPOPeletan.ParamByName('no_bukti').AsString := sNoPO;
      zqrPOPeletan.Open;

      rptPOPeletan.ShowReport(True);
    end
    else if Copy(sNoPO,1,3) = 'POJ' then begin
      zqrPOJ.Close;
      zqrPOJ.ParamByName('no_bukti').AsString := zqrSPKPHead.FieldByName('no_bukti').AsString;
      zqrPOJ.Open;

      if zqrSPKPHead.FieldByName('jenis_po').AsString = 'st' then begin
        rptPOJ.ShowReport(True);
      end
      else begin
        rptPOJNonPajak.ShowReport(True);
      end;
    end
    else begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := zqrSPKPHead.FieldByName('no_bukti').AsString;
      zqrPO.Open;

      if zqrSPKPHead.FieldByName('jenis_po').AsString = 'np' then begin
        if cxChkEng.Checked then
          rptPONonPajakEng.ShowReport(True)
        else
          rptPONonPajak.ShowReport(True);
      end
      else if zqrSPKPHead.FieldByName('jenis_po').AsString = 'st' then begin
        if cxChkEng.Checked then
          rptPOEng.ShowReport(True)
        else begin
          if Aplikasi.POTmp = '1' then
            rptPOAbal2.ShowReport(True)
          else
            rptPO.ShowReport(True);
        end;
      end;
    end;

  end;
  f.Release;

end;

procedure TfrmCetakPO.btnBatalClick(Sender: TObject);
begin
  pnlPilihan.Visible := False;
end;

procedure TfrmCetakPO.btnCetakPOInternalClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
  Memo: TfrxMemoView;
  sNoPO: string;
begin

  if zqrSPKPHead.FieldByName('f_approval').AsInteger = 0 then Abort;

  if (zqrSPKPHead.FieldByName('jenis_po').AsString <> 'st') and
    (zqrSPKPHead.FieldByName('jenis_po').AsString <> 'im') then Abort;

  f := TFrmLapUmum.Create(Self);
  sNoPO := zqrSPKPHead.FieldByName('no_bukti').AsString;

  with f do begin


    if Copy(sNoPO,1,3) = 'POJ' then begin
      zqrPOJ.Close;
      zqrPOJ.ParamByName('no_bukti').AsString := zqrSPKPHead.FieldByName('no_bukti').AsString;
      zqrPOJ.Open;
      Memo := rptPOJ.FindObject('NOPOInternal') as TfrxMemoView;
      Memo.Visible := True;
      rptPOJ.ShowReport(True);
    end
    else begin
      zqrPO.Close;
      zqrPO.ParamByName('no_bukti').AsString := zqrSPKPHead.FieldByName('no_bukti').AsString;
      zqrPO.Open;
      Memo := rptPO.FindObject('NOPOInternal') as TfrxMemoView;
      Memo.Visible := True;
      rptPO.ShowReport(True);
    end;
  end;
  f.Release;

end;

procedure TfrmCetakPO.btnCetakPOEvieClick(Sender: TObject);
var
  f: TFrmLapUmum;
  q: TZQuery;
  Memo: TfrxMemoView;
begin
  if zqrSPKPHead.FieldByName('f_approval').AsInteger = 0 then Abort;

  f := TFrmLapUmum.Create(Self);
          
  with f do begin
    zqrPOE.Close;
    zqrPOE.ParamByName('no_bukti').AsString := zqrSPKPHead.FieldByName('no_bukti').AsString;
    zqrPOE.Open;
    rptPOEvie.ShowReport(True);
  end;
  f.Release;

end;

procedure TfrmCetakPO.FormShow(Sender: TObject);
var
  sSQL1, sSQL2: string;
begin
  Screen.Cursor := crSQLWait;
  if mJenisPO = '' then begin
    sSQL1 := 'SELECT * FROM v_po_head';
    sSQL2 := 'SELECT * FROM v_po_det';
    zqrSPKPHead.SQL.Text := sSQL1;
    zqrSPKPDet.SQL.Text := sSQL2;
    zqrSPKPHead.Open;
    zqrSPKPDet.Open;
  end
  else begin
    sSQL1 := 'SELECT * FROM v_poj_head';
    sSQL2 := 'SELECT * FROM v_poj_det';
    zqrSPKPHead.SQL.Text := sSQL1;
    zqrSPKPDet.SQL.Text := sSQL2;
    zqrSPKPHead.Open;
    zqrSPKPDet.Open;
  end;
  Screen.Cursor := crDefault;
end;

end.
