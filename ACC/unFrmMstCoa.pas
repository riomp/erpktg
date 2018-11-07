unit unFrmMstCoa;

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
  cxDBLookupComboBox, cxCheckBox, cxSpinEdit, cxTL, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxTLData, cxDBTL;

type
  TfrmMstCoa = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxtNoAkun: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtNamaAKun: TcxTextEdit;
    cxTblAkun: TcxGridDBTableView;
    cxGrdAkunLevel1: TcxGridLevel;
    cxGrdAkun: TcxGrid;
    zqrAkun: TZQuery;
    dsCoa: TDataSource;
    cxTblAkunkode: TcxGridDBColumn;
    cxTblAkunnama: TcxGridDBColumn;
    cxTblAkuninduk: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    cxChkAktif: TcxCheckBox;
    cxlTipeAkun: TcxLookupComboBox;
    zqrTipeAkun: TZQuery;
    dsTipeAkun: TDataSource;
    cxTblAkunColumn1: TcxGridDBColumn;
    zqrIndukAkun: TZQuery;
    dsIndukAkun: TDataSource;
    cxTblViewnoakun: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    cxTblViewf_aktif: TcxGridDBColumn;
    cxTblViewnama_induk: TcxGridDBColumn;
    cxTblViewtipe_1: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cxsSaldoAwal: TcxSpinEdit;
    cxLabel3: TcxLabel;
    cxlIndukAkun: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxCmbDK: TcxComboBox;
    cxtNoAkunInduk: TcxTextEdit;
    cxdbTreeCoa: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    zqrAkunHirarki: TZQuery;
    dsAkunHirarki: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxlIndukAkunExit(Sender: TObject);
    procedure cxlTipeAkunPropertiesChange(Sender: TObject);
    procedure cxlIndukAkunPropertiesChange(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    tbl: TZTable;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMstCoa: TfrmMstCoa;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMstCoa.FormCreate(Sender: TObject);
begin
  inherited;
  tbl := OpenTbl('tbl_coa');
  zQry.Open;
  zqrIndukAkun.Open;
  zqrTipeAkun.Open;
  zqrAkunHirarki.Open;

  cxCmbDK.Properties.Items.Add('DEBET');
  cxCmbDK.Properties.Items.Add('KREDIT');
end;

procedure TfrmMstCoa.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  q: TZQuery;
  stmp: string;
begin
  inherited;
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if Trim(cxlTipeAkun.Text) = '' then begin
    MsgBox('Tipe Akun harus diisi.');
    cxlTipeAkun.SetFocus;
  end
  else if Trim(cxtNoAkun.Text) = '' then begin
    MsgBox('No. Akun harus diisi.');
    cxtNoAkun.SetFocus;
  end
  else if Trim(cxtNamaAkun.Text) = '' then begin
    MsgBox('Nama Akun harus diisi.');
    cxtNamaAKun.SetFocus;
  end
  else begin

    if Self.Jenis = 'tambah' then begin
      if Pos(Trim(cxtNoAkun.Text),' ') > 0 then begin
        MsgBox('No. Akun tidak boleh ada spasi.');
        cxtNoAkun.SetFocus;
        cxtNoAkun.SelectAll;
        Abort;
      end
    end;

    f := True;
    if self.Jenis = 'tambah' then begin
      if CheckKey('tbl_coa','noakun', QuotedStr(Trim(cxtNoAkun.Text))) then begin
        MsgBox('No. Akun sudah ada.');
        cxtNoAkun.SelectAll;
        cxtNoAkun.SetFocus;
        f := False;
      end
      else
        tbl.Insert;
    end
    else begin
      if not CheckKey('tbl_coa','noakun',QuotedStr(Trim(cxtNoAkun.Text))) then begin
        MsgBox('No. Akun belum ada.');
        cxtNoAkun.SelectAll;
        cxtNoAkun.SetFocus;
        f := False;
      end
      else begin
        tbl.Locate('noakun',Trim(cxtNoAkun.Text),[loCaseInsensitive]);
        tbl.Edit;
      end;
    end;

    if f then begin
      tbl.FieldByName('noakun').AsString := Trim(cxtNoAkun.Text);
      tbl.FieldByName('tipe').AsInteger := zqrTipeAkun.FieldByName('id').AsInteger;
      tbl.FieldByName('nama').AsString := Trim(cxtNamaAKun.Text);
      
      if cxlIndukAkun.Text <> '' then begin
        tbl.FieldByName('induk').AsString :=
          zqrIndukAkun.FieldByName('noakun').AsString;
        tbl.FieldByName('f_subakun').AsInteger := 1;
      end
      else begin
        tbl.FieldByName('induk').AsString := '0';
        tbl.FieldByName('f_subakun').AsInteger := 0;
      end;

      if cxChkAktif.Checked then
        i := 1
      else
        i := 0;

      tbl.FieldByName('f_aktif').AsInteger := i;
      tbl.FieldByName('sawal').AsFloat := cxsSaldoAwal.Value;

      if cxCmbDK.Text = 'DEBET' then
        tbl.FieldByName('dfl').AsString := 'D'
      else if cxCmbDK.Text = 'KREDIT' then
        tbl.FieldByName('dfl').AsString := 'K';

      tbl.Post;

      MsgBox('Data Akun sudah disimpan.');
      ClearAll;

      zQry.Close;
      zQry.Open;
      zqrAkun.Close;
      zqrAkun.Open;

      btnBatalClick(nil);
    end;

  end;
end;

procedure TfrmMstCoa.ClearAll;
begin
  cxlTipeAkun.Text := '';
  cxtNamaAKun.Text := '';
  cxlIndukAkun.Text := '';

  zqrIndukAkun.Close;
  zqrIndukAkun.Open;
  cxChkAktif.Checked := False;
  cxtNoAkun.Text := '';
  cxCmbDK.Text := '';
  cxtNoAkunInduk.Text := '';

  zqrAkunHirarki.Close;
  zqrAkunHirarki.Open;
  cxdbTreeCoa.FullCollapse;
end;

procedure TfrmMstCoa.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q: TZQuery;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM tbl_coa WHERE noakun = ''%s''',
      [zQry.FieldByName('noakun').AsString]);

    cxtNoAkun.Text := q.FieldByName('noakun').AsString;
    cxtNamaAKun.Text := q.FieldByName('nama').AsString;
    cxlTipeAkun.EditValue := q.FieldByName('tipe').AsInteger;

    if q.FieldByName('induk').AsString <> '0' then
      cxlIndukAkun.EditValue := q.FieldByName('induk').AsString
    else
      cxlIndukAkun.Text := '';

    if q.FieldByName('f_aktif').AsInteger = 1 then
      cxChkAktif.Checked := True
    else
      cxChkAktif.Checked := False;

    cxsSaldoAwal.Value := q.FieldByName('sawal').AsFloat;
    if not q.FieldByName('dfl').IsNull then begin
      if q.FieldByName('dfl').AsString = 'D' then
        cxCmbDK.Text := 'DEBET'
      else
        cxCmbDK.Text := 'KREDIT';
    end;

    pg.ActivePageIndex := 0;
    cxtNoAkun.SetFocus;

    if zqrAkun.Active then zqrAkun.Close;
    zqrAkun.SQL.Strings[2] := 'WHERE a.tipe = ' + q.FieldByName('tipe').AsString;
    zqrAkun.Open;

    zqrAkunHirarki.Locate('noakun', q.FieldByName('noakun').AsString,[]);

    q.Close;
  end;
end;

procedure TfrmMstCoa.btnTambahClick(Sender: TObject);
begin
  inherited;
  cxChkAktif.Checked := True;
end;

procedure TfrmMstCoa.btnBatalClick(Sender: TObject);
begin
  inherited;
  zqrAkun.Close;
  ClearAll;
end;

procedure TfrmMstCoa.cxlIndukAkunExit(Sender: TObject);
begin
  inherited;
  try
    if Trim(cxtNoAkun.Text) = '' then
      cxtNoAkun.Text := cxlIndukAkun.EditValue;
  except
  end;
end;

procedure TfrmMstCoa.cxlTipeAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  try
    if cxlTipeAkun.Text = '' then Abort;
    if zqrAkun.Active then zqrAkun.Close;
    zqrAkun.SQL.Strings[2] := 'WHERE a.tipe = ' + zqrTipeAkun.FieldByName('id').AsString;
    zqrAkun.Open;
  except
  end;
end;

procedure TfrmMstCoa.cxlIndukAkunPropertiesChange(Sender: TObject);
begin
  inherited;
  cxtNoAkunInduk.Text := zqrIndukAkun.FieldByName('noakun').AsString;
end;

procedure TfrmMstCoa.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_jurnal_det WHERE akun = ''%s''',
    [Trim(cxtNoAkun.Text)]);
  if not q.IsEmpty then begin
    MsgBox('No. Akun ini masih ada transaksi. Tidak bisa dihapus.');
  end
  else begin
    dm.zConn.ExecuteDirect('DELETE FROM tbl_coa WHERE noakun = ''' +
      cxtNoAkun.Text + '''');
    MsgBox('Akun sudah berhasil dihapus.');  
    zQry.Close;
    zQry.Open;
    btnBatalClick(nil);
  end;
  q.Close;
end;

end.
