unit unFrmMasterCOA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans2, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ExtCtrls,
  dxSkinscxPCPainter, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ZAbstractRODataset, ZDataset, cxLabel, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData, ZAbstractDataset, cxSpinEdit,
  cxCheckBox;

type
  TfrmMasterCOA = class(TfrmTplTrans2)
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    zqrCOA: TZReadOnlyQuery;
    btnTambah: TButton;
    btnEdit2: TButton;
    btnHapus2: TButton;
    dsCOA: TDataSource;
    TreeCOA: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    zqrAkunHirarki: TZQuery;
    dsAkunHirarki: TDataSource;
    cxdbTreeCoacxDBTreeListColumn1: TcxDBTreeListColumn;
    zqrTipeAkun: TZQuery;
    dsTipeAkun: TDataSource;
    cxLabel1: TcxLabel;
    cxtNoAkun: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtNamaAKun: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxChkAktif: TcxCheckBox;
    cxlTipeAkun: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    cxsSaldoAwal: TcxSpinEdit;
    cxLabel3: TcxLabel;
    cxlIndukAkun: TcxLookupComboBox;
    cxLabel7: TcxLabel;
    cxCmbDK: TcxComboBox;
    cxtNoAkunInduk: TcxTextEdit;
    btnSimpan2: TButton;
    btnBatal2: TButton;
    Panel1: TPanel;
    btnKeluar2: TButton;
    zqrIndukAkun: TZQuery;
    dsIndukAkun: TDataSource;
    btnTambahSub: TButton;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    cxLabel6: TcxLabel;
    cxtFilter: TcxTextEdit;
    btnFilter: TButton;
    btnHapusFilter: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatal2Click(Sender: TObject);
    procedure btnKeluar2Click(Sender: TObject);
    procedure btnEdit2Click(Sender: TObject);
    procedure btnSimpan2Click(Sender: TObject);
    procedure cxlIndukAkunPropertiesChange(Sender: TObject);
    procedure btnTambahSubClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnHapusFilterClick(Sender: TObject);
  private
    mJenis: string;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMasterCOA: TfrmMasterCOA;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmMasterCOA.FormCreate(Sender: TObject);
begin
  inherited;
  pnlTengah.Enabled := True;
  zqrAkunHirarki.Open;
  pg.ActivePageIndex := 0;
  zqrIndukAkun.Open;
  zqrTipeAkun.Open;
end;

procedure TfrmMasterCOA.btnTambahClick(Sender: TObject);
begin
  inherited;
  pg.ActivePageIndex := 1;
  mJenis := 'tambah';
end;

procedure TfrmMasterCOA.btnBatal2Click(Sender: TObject);
begin
  inherited;
  ClearAll;
  pg.ActivePageIndex := 0;
end;

procedure TfrmMasterCOA.ClearAll;
begin
  cxlTipeAkun.Text := '';
  cxlIndukAkun.Text := '';
  cxtNoAkun.Text := '';
  cxtNamaAKun.Text := '';
  cxtNoAkun.Enabled := True;
  cxsSaldoAwal.Value := 0;
  cxtNoAkunInduk.Text := '';
end;

procedure TfrmMasterCOA.btnKeluar2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmMasterCOA.btnEdit2Click(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_coa WHERE noakun = ''%s''',[zqrAkunHirarki.FieldByname('noakun').AsString]);
  if not q.IsEmpty then begin
    cxtNoAkun.Text := q.FieldByName('noakun').AsString;
    cxtNoAkun.Enabled := False;
    cxtNamaAKun.Text := q.FieldByName('nama').AsString;
    pg.ActivePageIndex := 1;
    mJenis := 'edit';
  end;
  q.Close;
end;

procedure TfrmMasterCOA.btnSimpan2Click(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;

  if cxlTipeAkun.Text = '' then begin
    MsgBox('Tipe akun harus di isi.');
    cxlTipeAkun.SetFocus;
  end
  else if Trim(cxtNoAkun.Text) = '' then begin
    MsgBox('Nomor akun harus di isi.');
    cxtNoAkun.SetFocus;
  end
  else if Trim(cxtNamaAKun.Text) = '' then begin
    MsgBox('Nama akun harus di isi.');
    cxtNamaAKun.SetFocus;
  end
  else begin
    q := OpenRS('SELECT * FROM tbl_coa WHERE noakun = ''%s''',[Trim(cxtNoAkun.Text)]);
    if mJenis = 'tambah' then
      q.Insert
    else
      q.Edit;
    q.FieldByName('tipe').AsString := zqrTipeAkun.FieldByName('id').AsString;
    q.FieldByName('noakun').AsString := Trim(cxtNoAkun.Text);
    q.FieldByName('nama').AsString := Trim(cxtNamaAKun.Text);
    q.FieldByName('induk').AsString := cxtNoAkunInduk.Text;
    q.Post;
    ClearAll;
    pg.ActivePageIndex := 0;

    zqrAkunHirarki.Close;
    zqrAkunHirarki.Open;

    zqrIndukAkun.Close;
    zqrIndukAkun.Open;

  end;

end;

procedure TfrmMasterCOA.cxlIndukAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtNoAkunInduk.Text := zqrIndukAkun.FieldByName('noakun').AsString;
end;

procedure TfrmMasterCOA.btnTambahSubClick(Sender: TObject);
begin
  inherited;
  pg.ActivePageIndex := 1;
  cxlIndukAkun.EditValue := zqrAkunHirarki.FieldByName('noakun').AsString;
  mJenis := 'tambah';
end;


procedure TfrmMasterCOA.Button1Click(Sender: TObject);
begin
  inherited;
  TreeCOA.FullCollapse;
end;

procedure TfrmMasterCOA.Button2Click(Sender: TObject);
begin
  inherited;
  TreeCOA.FullExpand;
end;

procedure TfrmMasterCOA.btnFilterClick(Sender: TObject);
begin
  inherited;
  with zqrAkunHirarki do begin
    Close;
    SQL.Strings[4] := 'WHERE a.nama LIKE ''%' + Trim(cxtFilter.Text) + '%''';
    Open;
  end;
end;

procedure TfrmMasterCOA.btnHapusFilterClick(Sender: TObject);
begin
  inherited;
  with zqrAkunHirarki do begin
    Close;
    SQL.Strings[4] := '-- ';
    Open;
  end;
end;
end.
