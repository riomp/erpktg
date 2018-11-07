unit unFrmTrial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, ZAbstractRODataset, ZDataset,
  cxCheckBox;

type
  TfrmTrial = class(TfrmTplTrans)
    cxTbl: TcxGridDBTableView;
    cxGrdLevel1: TcxGridLevel;
    cxGrd: TcxGrid;
    zqrTrial: TZReadOnlyQuery;
    dsTrial: TDataSource;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxTblid: TcxGridDBColumn;
    cxTblno_bukti: TcxGridDBColumn;
    cxTbltanggal: TcxGridDBColumn;
    cxTblcustomer: TcxGridDBColumn;
    cxTblf_contoh: TcxGridDBColumn;
    cxTblwarna: TcxGridDBColumn;
    cxTblpanjang: TcxGridDBColumn;
    cxTbllebar: TcxGridDBColumn;
    cxTblkekerasan: TcxGridDBColumn;
    cxTblkekenyalan: TcxGridDBColumn;
    cxTblf_status: TcxGridDBColumn;
    cxTblketerangan: TcxGridDBColumn;
    cxTblhasil_trial: TcxGridDBColumn;
    cxTblf_app: TcxGridDBColumn;
    pnlBtnQAC: TPanel;
    btnTambah: TButton;
    btnKeluar2: TButton;
    btnLihat: TButton;
    btnExcel: TButton;
    cxTblUser: TcxGridDBColumn;
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnLihatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTrial: TfrmTrial;

implementation

uses unAplikasi, unDm, unTools, unFrmProsesTrial;

{$R *.dfm}

procedure TfrmTrial.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTrial.btnTambahClick(Sender: TObject);
var
  f: TfrmProsesTrial;
begin
  f := TfrmProsesTrial.Create(Self);
  f.ShowModal;
end;

procedure TfrmTrial.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  zqrTrial.SQL.Text := 'SELECT * FROM tbl_trial order by tanggal desc';
  zqrTrial.Open;
end;

procedure TfrmTrial.btnProsesClick(Sender: TObject);
begin
  zqrTrial.Close;
  zqrTrial.SQL.Text := ('SELECT * FROM tbl_trial WHERE tanggal BETWEEN :tgl1 AND :tgl2 ' +
      ' order by no_bukti desc');

  zqrTrial.ParamByName('tgl1').AsDate := cxdTgl1.Date;
  zqrTrial.ParamByName('tgl2').AsDate := cxdTgl2.Date;
  zqrTrial.Open;
end;

procedure TfrmTrial.btnLihatClick(Sender: TObject);
var
  f: TfrmProsesTrial;
  q: TZQuery;
begin
  {
  f := TfrmProsesTrial.Create(Self);
  f.Jenis := 'lihat';

  q := OpenRS('SELECT * FROM tbl_trial WHERE no_bukti = ''%s''',
  [zqrTrial.FieldByName('no_bukti').AsString]);

    if zqrTrial.FieldByName('no_bukti').AsString = '' then begin
      f.Close;
      Abort;
  end
  else begin
        f.Show;
  end;
  if not q.IsEmpty then begin
    f.cxtNoTrial.Text := zqrTrial.FieldByName('no_bukti').AsString;
    f.lblJudul.Caption := 'Lihat Detail Trial';

    f.cxdTglTrial.Date := q.FieldByName('tanggal').AsDateTime;
    f.cxlCust.EditValue := q.FieldByName('customer').AsString;
    f.cxtFContoh.Text := q.FieldByName('f_contoh').AsString;
    f.cxtWarna.Text := q.FieldByName('warna').AsString;
    f.cxtPanjang.Text := q.FieldByName('panjang').AsString;
    f.cxtLebar.Text := q.FieldByName('lebar').AsString;
    f.cxtKekerasan.Text := q.FieldByName('kekerasan').AsString;
    f.cxtKekenyalan.Text := q.FieldByName('kekenyalan').AsString;

    if q.FieldByName('f_app').AsInteger = 1 then begin
      f.cxChkAppTrial.Checked := True;
    end;

    if not q.FieldByName('f_status').IsNull then begin
      if q.FieldByName('f_status').AsInteger = 0 then begin
          f.cxtStatus.Text := 'OPEN';
      end else begin
          f.cxtStatus.Text := 'CLOSE';
      end;
    end;

    f.cxmKetTrial.Text := q.FieldByName('keterangan').AsString;
    f.cxmHasilTrial.Text := q.FieldByName('hasil_trial').AsString;
    f.cxtDibuatOleh.Text := q.FieldByName('user').AsString;


    f.btnSimpanTrial.Enabled := False;
    f.btnTmbhImage.Caption := 'Lihat Image';

    f.cxtNoTrial.Properties.ReadOnly := True;
    f.cxdTglTrial.Properties.ReadOnly := True;
    f.cxtDibuatOleh.Properties.ReadOnly := True;
    f.cxtStatus.Properties.ReadOnly := True;
    f.cxlCust.Properties.ReadOnly := True;
    f.cxtPanjang.Properties.ReadOnly := True;
    f.cxtLebar.Properties.ReadOnly := True;
    f.cxtWarna.Properties.ReadOnly := True;
    f.cxtKekerasan.Properties.ReadOnly := True;
    f.cxtKekenyalan.Properties.ReadOnly := True;
    f.cxmKetTrial.Properties.ReadOnly := True;
    f.cxmHasilTrial.Properties.ReadOnly := True;
    f.cxChkAppTrial.Properties.ReadOnly := True;

    f.cxtNoTrial.Style.Color := clMoneyGreen;
    f.cxdTglTrial.Style.Color := clMoneyGreen;
    f.cxtDibuatOleh.Style.Color := clMoneyGreen;
    f.cxtFContoh.Style.Color := clMoneyGreen;
    f.cxtStatus.Style.Color := clMoneyGreen;
    f.cxlCust.Style.Color := clMoneyGreen;
    f.cxtPanjang.Style.Color := clMoneyGreen;
    f.cxtLebar.Style.Color := clMoneyGreen;
    f.cxtWarna.Style.Color := clMoneyGreen;
    f.cxtKekerasan.Style.Color := clMoneyGreen;
    f.cxChkAppTrial.Style.Color := clMoneyGreen;
    f.cxtKekenyalan.Style.Color := clMoneyGreen;
    f.cxmKetTrial.Style.Color := clMoneyGreen;
    f.cxmHasilTrial.Style.Color := clMoneyGreen;

  end;
  q.Close;
  }
end;

end.
