unit unFrmMstOperator;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, ADODB;

type
  TfrmMstOperator = class(TfrmTplMaster)
    Nik: TcxLabel;
    cxLuNik: TcxLookupComboBox;
    cxlbl1: TcxLabel;
    cxtNama: TcxTextEdit;
    cxlbl2: TcxLabel;
    cxtDivisi: TcxTextEdit;
    cxlbl3: TcxLabel;
    cxtMesin: TcxTextEdit;
    cxlbl4: TcxLabel;
    cxLuLokasi: TcxLookupComboBox;
    cxlbl5: TcxLabel;
    cxtKeterangan: TcxTextEdit;
    QryLokasi: TZReadOnlyQuery;
    dsLokasi: TDataSource;
    zqrOperator: TZReadOnlyQuery;
    dsOperator: TDataSource;
    cxTblViewid: TcxGridDBColumn;
    cxTblViewnik: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    cxTblViewmesin: TcxGridDBColumn;
    cxTblViewlokasi: TcxGridDBColumn;
    cxTblViewdivisi: TcxGridDBColumn;
    cxTblViewketerangan: TcxGridDBColumn;
    procedure cxLuNikClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMstOperator: TfrmMstOperator;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmMstOperator.cxLuNikClick(Sender: TObject);
var
  q : TZQuery;
begin
  inherited;
  q := OpenRS('select nama, divisi from tbl_karyawan where nik = ''' + cxLuNik.Text + '''');
  if not q.Eof then begin
    cxtNama.Text := q.fieldbyname('nama').AsString;
    cxtDivisi.Text := q.fieldbyname('divisi').AsString;
  end;
  q.Close;
end;

procedure TfrmMstOperator.btnSimpanClick(Sender: TObject);
var
  q : TZQuery;
begin
  inherited;
  if cxLuNik.Text = '' then begin
    MsgBox('Nik masih kosong');
    cxLuNik.SetFocus;
    Abort;
  end;

  if Self.Jenis = 'tambah' then begin
    q := OpenRS('select * from tbl_operator where nik = ''' + cxLuNik.Text + '''');
    q.Insert;
    q.FieldByName('nik').AsString := cxLuNik.Text;
    q.FieldByName('nama').AsString := cxtNama.Text;
    q.FieldByName('divisi').AsString := cxtDivisi.Text;
    q.FieldByName('mesin').AsString := cxtMesin.Text;
    q.FieldByName('lokasi').AsString := cxLuLokasi.Text;
    q.FieldByName('keterangan').AsString := cxtKeterangan.Text;
    q.Post;
    q.Close;
    MsgBox('Data sudah disimpan');
    cxtNama.Text := '';
    cxtDivisi.Text := '';
    cxtKeterangan.Text := '';
    cxtMesin.Text := '';
    btnBatalClick(nil);
    zqrOperator.Close;
    zqrOperator.Open;
  end else begin
    q := OpenRS('select * from tbl_operator where nik = ''' + cxLuNik.Text + '''');
    q.Edit;
    cxLuNik.Enabled := False;
    cxtNama.Enabled := False;
    cxtDivisi.Enabled := False;
    q.FieldByName('mesin').AsString := cxtMesin.Text;
    q.FieldByName('lokasi').AsString := cxLuLokasi.Text;
    q.FieldByName('keterangan').AsString := cxtKeterangan.Text;
    q.Post;
    q.Close;
    MsgBox('Data sudah diupdate');
    cxtNama.Text := '';
    cxtDivisi.Text := '';
    cxtKeterangan.Text := '';
    cxtMesin.Text := '';
    btnBatalClick(nil);
    zqrOperator.Close;
    zqrOperator.Open;

  end;

end;

procedure TfrmMstOperator.FormCreate(Sender: TObject);
begin
  inherited;
  zQry.Open;
  zqrOperator.Open;
  QryLokasi.Open;

end;

procedure TfrmMstOperator.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
  var
    q : TZQuery;
begin
  inherited;
  //q := OpenRS('select * from tbl_operator where nik = %s',[zqrOperator.FieldByName('nik').AsString]);
  cxLuNik.Text := zqrOperator.fieldbyname('nik').AsString;
  cxLuNik.Enabled := False;
  cxtDivisi.Text := zqrOperator.fieldbyname('divisi').AsString;
  cxtDivisi.Enabled := false;
  cxtNama.Enabled := False;
  cxtMesin.Text := zqrOperator.fieldbyname('mesin').AsString;
  cxLuLokasi.Text := zqrOperator.fieldbyname('lokasi').AsString;
  pg.ActivePageIndex  := 0;
end;

procedure TfrmMstOperator.btnBatalClick(Sender: TObject);
begin
  inherited;
  cxtNama.Text := '';
  cxtDivisi.Text := '';
  cxtKeterangan.Text := '';
  cxtMesin.Text := '';
  cxLuNik.Enabled := True;
  cxLuNik.Text := '';
  cxtDivisi.Enabled := True;
  cxLuLokasi.Text := '';
end;

procedure TfrmMstOperator.btnHapusClick(Sender: TObject);
  var
    i : Integer;
begin
  inherited;
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_operator WHERE nik = ' + cxLuNik.Text);
      dm.zConn.Commit;
      MsgBox('NIK : ' + cxLuNik.Text + ' sudah berhasil dihapus.');
      btnBatalClick(nil);
      cxLuNik.Text := '';
      cxtNama.Text := '';
      cxtDivisi.Text := '';
      cxtMesin.Text := '';
      cxLuLokasi.Text := '';
    except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
    end;
end;

end.
