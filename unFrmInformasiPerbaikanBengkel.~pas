unit unFrmInformasiPerbaikanBengkel;

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
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxTrackBar, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCalendar, cxSpinEdit,
  ZAbstractRODataset, ZDataset, cxCheckBox, ComCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, NxColumnClasses, NxColumns;

type
  TfrmInformasiPerbaikanBengkel = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxCmbBengkel: TcxComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxMemoKet: TcxMemo;
    cxLabel5: TcxLabel;
    cxMemoKet2: TcxMemo;
    cxtrProgress: TcxTrackBar;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxtMesin: TcxMaskEdit;
    cxdTarget: TcxDateEdit;
    cxtPIC: TcxMaskEdit;
    cxLabel8: TcxLabel;
    cxsNomer: TcxSpinEdit;
    Button1: TButton;
    zqr: TZReadOnlyQuery;
    ds: TDataSource;
    btnUp: TButton;
    btnDown: TButton;
    lblProg: TcxLabel;
    cxChkStatus: TcxCheckBox;
    pg: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrd: TcxGrid;
    cxTbl: TcxGridDBTableView;
    cxTblid: TcxGridDBColumn;
    cxTblnomer: TcxGridDBColumn;
    cxTblbengkel: TcxGridDBColumn;
    cxTblmesin: TcxGridDBColumn;
    cxTbltgl_terima: TcxGridDBColumn;
    cxTbltgl_target: TcxGridDBColumn;
    cxTblketerangan: TcxGridDBColumn;
    cxTblprogress: TcxGridDBColumn;
    cxTblketerangan_lain: TcxGridDBColumn;
    cxTblpic: TcxGridDBColumn;
    cxTbluser: TcxGridDBColumn;
    cxTbluser_dept: TcxGridDBColumn;
    cxGrdLevel1: TcxGridLevel;
    cxGrd2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zqr2: TZReadOnlyQuery;
    ds2: TDataSource;
    cxsProgress: TcxSpinEdit;
    cxlMesin: TcxLookupComboBox;
    zqrMesin: TZReadOnlyQuery;
    dsMesin: TDataSource;
    Button2: TButton;
    Button3: TButton;
    cxLabel9: TcxLabel;
    cxCmbFilter: TcxComboBox;
    btnCetak: TButton;
    cxtID: TcxTextEdit;
    btnUbahUrutan: TButton;
    Panel1: TPanel;
    nxColUrutan: TNxIncrementColumn;
    nxColMesin: TNxTextColumn;
    nxColKeterangan: TNxTextColumn;
    nxColID: TNxTextColumn;
    btnUp2: TButton;
    btnDown2: TButton;
    nxGrdUrutan: TNextGrid;
    Button4: TButton;
    Button5: TButton;
    cxLabel10: TcxLabel;
    btnHapus2: TButton;
    cxlbl1: TcxLabel;
    cxdTgl: TcxDateEdit;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxTblColumn1: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxTblCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnUpClick(Sender: TObject);
    procedure cxtrProgressPropertiesChange(Sender: TObject);
    procedure cxsProgressPropertiesChange(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxCmbBengkelPropertiesChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cxCmbFilterPropertiesChange(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnUbahUrutanClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnUp2Click(Sender: TObject);
    procedure btnDown2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnHapus2Click(Sender: TObject);
  private
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmInformasiPerbaikanBengkel: TfrmInformasiPerbaikanBengkel;

implementation

uses unAplikasi, unDm, unTools, unFrmLapUmum;

{$R *.dfm}

procedure TfrmInformasiPerbaikanBengkel.FormCreate(Sender: TObject);
begin
  inherited;

  cxdTgl.Date := Date;
  cxCmbBengkel.Properties.Items.Add('DEPAN');
  cxCmbBengkel.Properties.Items.Add('BELAKANG');
  cxCmbBengkel.ItemIndex := 0;

  pnlTengah.Enabled := True;
  
  zqr.Open;
  zqr2.Open;
  zqrMesin.Open;

  cxCmbFilter.Text := 'BLM. SELESAI';
end;

procedure TfrmInformasiPerbaikanBengkel.Button1Click(Sender: TObject);
var
  q: TZQuery;
  id: Integer;
begin
  inherited;
  if Self.Jenis = '' then Self.Jenis := 'tambah';

  if cxCmbBengkel.Text = '' then begin
    MsgBox('Pilih bengkel.');
    Abort;
  end;

  if Trim(cxMemoKet.Text) = '' then begin
    MsgBox('Keterangan pekerjaan bengkel harus diisi.');
    Abort;
  end;

  if cxsNomer.Value = 0 then begin
    MsgBox('Nomer harus diisi.');
    Abort;
  end;

  if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM tbl_info_bengkel WHERE id = %s', [cxtID.Text]);
    q.Edit;
  end
  else begin
    q := OpenRS('SELECT * FROM tbl_info_bengkel');
    q.Insert;
  end;

  q.FieldByName('nomer').AsInteger := cxsNomer.Value;
  q.FieldByName('bengkel').AsString := cxCmbBengkel.Text;
  q.FieldByName('tgl_input').AsDateTime  := cxdTgl.Date;
  q.FieldByName('mesin').AsString := cxlMesin.Text;
  q.FieldByName('tgl_target').AsDateTime := cxdTarget.Date;
  q.FieldByName('keterangan').AsString := cxMemoKet.Lines.Text;
  q.FieldByName('keterangan_lain').AsString := cxMemoKet2.Lines.Text;
  q.FieldByName('pic').AsString := cxtPIC.Text;
  q.FieldByName('progress').AsInteger := cxtrProgress.EditValue;
  if cxChkStatus.Checked then begin
    q.FieldByName('f_status').AsInteger := 1;
    q.FieldByName('nomer').AsInteger := -1;
  end
  else
    q.FieldByName('f_status').AsInteger := 0;
  q.Post;
  q.Close;

  // update nomer
  if Self.Jenis <> 'edit' then begin
    q := OpenRS('SELECT last_insert_id() as _id');
    id := q.FieldByName('_id').AsInteger;
    q.Close;

    dm.zConn.ExecuteDirect('UPDATE tbl_info_bengkel SET nomer = nomer + 1 ' +
      'WHERE bengkel = ''' + cxCmbBengkel.Text + ''' ' +
      'AND nomer >= ' + cxsNomer.Text + ' ' +
      'AND id <> ' + IntToStr(id) + ' ORDER BY nomer');
  end;

  zqr.Close;
  zqr.Open;
  zqr2.Close;
  zqr2.Open;

  ClearAll;
  Self.Jenis := 'tambah';

  if cxCmbBengkel.Text = 'DEPAN' then
    pg.ActivePageIndex := 0
  else
    pg.ActivePageIndex := 1;

end;

procedure TfrmInformasiPerbaikanBengkel.cxTblCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  try
    Self.Jenis := 'edit';
    cxtID.Text := zqr.FieldByName('id').AsString;
    cxCmbBengkel.Text := zqr.FieldByName('bengkel').AsString;
    cxlMesin.Text := zqr.FieldByName('mesin').AsString;
    cxdTarget.Date := zqr.FieldByName('tgl_target').AsDateTime;
    cxMemoKet.Lines.Text := zqr.FieldByName('keterangan').AsString;
    cxMemoKet2.Lines.Text := zqr.FieldByName('keterangan_lain').AsString;
    cxtrProgress.EditValue := zqr.FieldByName('progress').AsInteger;
    cxsProgress.Value := zqr.FieldByName('progress').AsInteger;
    cxtPIC.Text := zqr.FieldByName('pic').AsString;
    cxsNomer.EditValue := zqr.FieldByName('nomer').AsInteger;
  except
    //
  end;
end;

procedure TfrmInformasiPerbaikanBengkel.ClearAll;
begin
  cxtMesin.Text := '';
  cxtrProgress.EditValue := 0;
  cxMemoKet.Lines.Text := '';
  cxMemoKet2.Lines.Text := '';
  cxtPIC.Text := '';
  cxsNomer.Value := 0;
  cxlMesin.Text := '';
  cxsProgress.Value := 0;
  cxdTgl.Text := '';
end;

procedure TfrmInformasiPerbaikanBengkel.btnUpClick(Sender: TObject);
var
  q: TZQuery;
  sId, bengkel, nomer, sIdSebelum: string;
  bm: Variant;
begin
  try

    if pg.ActivePageIndex = 0 then begin
      sId := zqr.FieldByName('id').AsString;

      if zqr.FieldByName('nomer').AsInteger = 1 then
        Abort
      else
        nomer := IntToStr(zqr.FieldByName('nomer').AsInteger - 1);

      dm.zConn.ExecuteDirect('UPDATE tbl_info_bengkel SET nomer = nomer - 1 WHERE id = ' + sId + ' AND bengkel = ''DEPAN''');
      dm.zConn.ExecuteDirect(
        format('CALL sp_urutan_info_bengkel(%s, %s, ''%s'')',[sId, nomer, 'DEPAN'])
      );
      zqr.Close;
      zqr.Open;
      try
        zqr.First;
        zqr.Locate('id;bengkel',VarArrayOf([StrToInt(sId),'DEPAN']),[]);
        cxGrd.SetFocus;
      except
      end;
    end
    else if pg.ActivePageIndex = 1 then begin
      sId := zqr2.FieldByName('id').AsString;

      if zqr2.FieldByName('nomer').AsInteger = 1 then
        Abort
      else
        nomer := IntToStr(zqr2.FieldByName('nomer').AsInteger - 1);

      dm.zConn.ExecuteDirect('UPDATE tbl_info_bengkel SET nomer = nomer - 1 WHERE id = ' + sId + ' AND bengkel = ''BELAKANG''');
      dm.zConn.ExecuteDirect(
        format('CALL sp_urutan_info_bengkel(%s, %s, ''%s'')',[sId, nomer, 'BELAKANG'])
      );
      zqr2.Close;
      zqr2.Open;
      try
        zqr2.First;
        zqr2.Locate('id;bengkel',VarArrayOf([StrToInt(sId),'BELAKANG']),[]);
        cxGrd2.SetFocus;
      except
      end;
    end;
  except
  end;
end;

procedure TfrmInformasiPerbaikanBengkel.cxtrProgressPropertiesChange(
  Sender: TObject);
begin
  inherited;
  lblProg.Caption := IntToStr(cxtrProgress.EditValue);
  cxsProgress.Value := cxtrProgress.EditValue;
end;

procedure TfrmInformasiPerbaikanBengkel.cxsProgressPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxtrProgress.EditValue := cxsProgress.Value;
end;

procedure TfrmInformasiPerbaikanBengkel.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  inherited;
  try
    Self.Jenis := 'edit';
    cxtID.Text := zqr2.FieldByName('id').AsString;
    cxCmbBengkel.Text := zqr2.FieldByName('bengkel').AsString;
    cxlMesin.Text := zqr2.FieldByName('mesin').AsString;
    cxdTarget.Date := zqr2.FieldByName('tgl_target').AsDateTime;
    cxMemoKet.Lines.Text := zqr2.FieldByName('keterangan').AsString;
    cxMemoKet2.Lines.Text := zqr2.FieldByName('keterangan_lain').AsString;
    cxtrProgress.EditValue := zqr2.FieldByName('progress').AsInteger;
    cxsProgress.Value := zqr2.FieldByName('progress').AsInteger;
    cxtPIC.Text := zqr2.FieldByName('pic').AsString;
    cxsNomer.EditValue := zqr2.FieldByName('nomer').AsInteger;
    cxdTgl.Date := zqr2.FieldByName('tgl_input').AsDateTime;
  except
    //
  end;
end;

procedure TfrmInformasiPerbaikanBengkel.cxCmbBengkelPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cxCmbBengkel.Text = 'DEPAN' then
    pg.ActivePageIndex := 0
  else
    pg.ActivePageIndex := 1;
end;

procedure TfrmInformasiPerbaikanBengkel.Button2Click(Sender: TObject);
begin
  inherited;
  cxCmbBengkel.Text := '';
  cxlMesin.Text := '';
  cxtrProgress.EditValue := 0;
  cxsProgress.Value := 0;
  cxMemoKet.Text := '';
  cxMemoKet2.Text := '';
  cxtPIC.Text := '';
  cxsNomer.Value := 0;
  cxCmbBengkel.SetFocus;
  pg.ActivePageIndex := 0;
end;

procedure TfrmInformasiPerbaikanBengkel.Button3Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmInformasiPerbaikanBengkel.cxCmbFilterPropertiesChange(
  Sender: TObject);
begin
  inherited;
  zqr.Close; zqr2.Close;
  if cxCmbFilter.Text = 'SEMUA' then begin
    zqr.SQL.Strings[2] := '-- ';
    zqr2.SQL.Strings[2] := '-- ';
  end
  else if cxCmbFilter.Text = 'BLM. SELESAI' then begin
    zqr.SQL.Strings[2] := 'AND f_status = 0 ';
    zqr2.SQL.Strings[2] := 'AND f_status = 0 ';
  end
  else if cxCmbFilter.Text = 'SELESAI' then begin
    zqr.SQL.Strings[2] := 'AND f_status = 1 ';
    zqr2.SQL.Strings[2] := 'AND f_status = 1 ';
  end;
  zqr.Open; zqr2.Open;
end;

procedure TfrmInformasiPerbaikanBengkel.btnDownClick(Sender: TObject);
var
  q: TZQuery;
  sId, bengkel, nomer, sIdSebelum: string;
  bm: Variant;
begin
  try

    if pg.ActivePageIndex = 0 then begin
      sId := zqr.FieldByName('id').AsString;

      if zqr.FieldByName('nomer').AsInteger = 1 then
        Abort
      else
        nomer := IntToStr(zqr.FieldByName('nomer').AsInteger - 1);

      dm.zConn.ExecuteDirect('UPDATE tbl_info_bengkel SET nomer = nomer + 1 WHERE id = ' + sId + ' AND bengkel = ''DEPAN''');
      dm.zConn.ExecuteDirect(
        format('CALL sp_urutan_info_bengkel(%s, %s, ''%s'')',[sId, nomer, 'DEPAN'])
      );
      zqr.Close;
      zqr.Open;
      try
        zqr.First;
        zqr.Locate('id;bengkel',VarArrayOf([StrToInt(sId),'DEPAN']),[]);
        cxGrd.SetFocus;
      except
      end;
    end
    else if pg.ActivePageIndex = 1 then begin
      sId := zqr2.FieldByName('id').AsString;

      if zqr2.FieldByName('nomer').AsInteger = 1 then
        Abort
      else
        nomer := IntToStr(zqr2.FieldByName('nomer').AsInteger - 1);

      dm.zConn.ExecuteDirect('UPDATE tbl_info_bengkel SET nomer = nomer + 1 WHERE id = ' + sId + ' AND bengkel = ''BELAKANG''');
      dm.zConn.ExecuteDirect(
        format('CALL sp_urutan_info_bengkel(%s, %s, ''%s'')',[sId, nomer, 'BELAKANG'])
      );
      zqr2.Close;
      zqr2.Open;
      try
        zqr2.First;
        zqr2.Locate('id;bengkel',VarArrayOf([StrToInt(sId),'BELAKANG']),[]);
        cxGrd2.SetFocus;
      except
      end;
    end;
  except
  end;
end;

procedure TfrmInformasiPerbaikanBengkel.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
  sBengkel: string;
begin

  f := TfrmLapUmum.Create(Self);
  if pg.ActivePageIndex = 0 then
    sBengkel := 'DEPAN'
  else
    sBengkel := 'BELAKANG';

  f.zqrInfoBengkel.SQL.Strings[2] := 'AND bengkel = ''' + sBengkel + '''';
  f.zqrInfoBengkel.Open;
  f.rptInfoBengkel.ShowReport(True);
  f.Release;
  
end;

procedure TfrmInformasiPerbaikanBengkel.btnUbahUrutanClick(
  Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  inherited;
  nxGrdUrutan.ClearRows;
  if pg.ActivePageIndex = 0 then begin
    q := OpenRS('SELECT * FROM tbl_info_bengkel WHERE bengkel = ''DEPAN'' AND f_status = 0 ORDER BY nomer');
    cxLabel10.Caption := 'BENGKEL DEPAN';
  end
  else begin
    q := OpenRS('SELECT * FROM tbl_info_bengkel WHERE bengkel = ''BELAKANG'' AND f_status = 0 ORDER BY nomer');
    cxLabel10.Caption := 'BENGKEL BELAKANG';
  end;
  while not q.Eof do begin
    i := nxGrdUrutan.AddRow();
    nxGrdUrutan.Cell[nxColMesin.Index, i].AsString := q.FieldByName('mesin').AsString;
    nxGrdUrutan.Cell[nxColKeterangan.Index, i].AsString := q.FieldByName('keterangan').AsString;
    nxGrdUrutan.Cell[nxColID.Index, i].AsString := q.FieldByName('id').AsString;
    q.Next;
  end;
  Panel1.Top := 140;
  Panel1.Left := 95;
  Panel1.Visible := True;
end;

procedure TfrmInformasiPerbaikanBengkel.Button5Click(Sender: TObject);
begin
  inherited;
  nxGrdUrutan.ClearRows;
  Panel1.Visible := False;
end;

procedure TfrmInformasiPerbaikanBengkel.btnUp2Click(Sender: TObject);
var
  r: Integer;
begin
  inherited;
  try
    r := nxGrdUrutan.SelectedRow;
    nxGrdUrutan.SwapRows(r, r-1);
    nxGrdUrutan.SelectedRow := r-1;
  except
  end;
end;

procedure TfrmInformasiPerbaikanBengkel.btnDown2Click(Sender: TObject);
var
  r: Integer;
begin
  inherited;
  try
    r := nxGrdUrutan.SelectedRow;
    nxGrdUrutan.SwapRows(r, r+1);
    nxGrdUrutan.SelectedRow := r+1;
  except
  end;
end;

procedure TfrmInformasiPerbaikanBengkel.Button4Click(Sender: TObject);
var
  i: integer;
begin
  inherited;
  Screen.Cursor := crSQLWait;
  for i := 0 to nxGrdUrutan.RowCount - 1 do begin
    dm.zConn.ExecuteDirect('UPDATE tbl_info_bengkel SET nomer = ' +
      nxGrdUrutan.Cell[nxColUrutan.Index, i].AsString + ' WHERE id = ' +
      nxGrdUrutan.Cell[nxColID.Index,i].AsString);
  end;
  nxGrdUrutan.ClearRows;
  zqr.Close; zqr.Open;
  zqr2.Close; zqr2.Open;
  Panel1.Visible := False;
  Screen.Cursor := crDefault;
end;

procedure TfrmInformasiPerbaikanBengkel.btnHapus2Click(Sender: TObject);
var
  i: integer;
  zq: TZReadOnlyQuery;
begin
  if pg.ActivePageIndex = 0 then
    zq := zqr
  else
    zq := zqr2;

  i := QBox(Self, 'Hapus informasi bengkel ini nomer urut : ' +
    zq.FieldByName('nomer').AsString + ' ?','Hapus');
  if i = IDYES then
    dm.zConn.ExecuteDirect('DELETE FROM tbl_info_bengkel WHERE id = ' +
      zq.FieldByName('id').AsString);

  zq.Close;
  zq.Open;

end;

end.
