unit unFrmSetWwn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLabel,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  NxColumnClasses, NxColumns, ZDataset, StdCtrls;

type
  TfrmSetWwn = class(TForm)
    cxLabel1: TcxLabel;
    cxcNamaUser: TcxComboBox;
    cxLabel2: TcxLabel;
    cxtDept: TcxTextEdit;
    nxGrd: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn2: TNxCheckBoxColumn;
    NxTextColumn1: TNxTreeColumn;
    btnSimpan: TButton;
    btnBatal: TButton;
    NxTextColumn4: TNxTextColumn;
    btnUnCheckSemua: TButton;
    btnCheckSemua: TButton;
    btnProses: TButton;
    nxGrdGudang: TNextGrid;
    nxColGudang: TNxTextColumn;
    nxColWwn: TNxCheckBoxColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxcNamaUserPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnCheckSemuaClick(Sender: TObject);
    procedure btnUnCheckSemuaClick(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    procedure ProsesTree(sKode: string);
    function FindRow(sKode: string): Integer;
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmSetWwn: TfrmSetWwn;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TFrmSetWwn.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmSetWwn.FormCreate(Sender: TObject);
var
  q: TZQuery;
  i: integer;
begin
  q := OpenRS('SELECT * FROM tbl_user ORDER BY nama');
  cxcNamaUser.Properties.Items.Add('');
  while not q.Eof do begin
    cxcNamaUser.Properties.Items.Add(q.FieldByName('nama').AsString);
    q.Next;
  end;
  q.Close;

  q := OpenRS('SELECT * FROM tbl_gudang WHERE f_aktif = 1 ORDER BY kode');
  while not q.Eof do begin
    i := nxGrdGudang.AddRow();
    nxGrdGudang.Cell[nxColGudang.Index, i].AsString := q.FieldByName('kode').AsString;
    q.Next;
  end;

  ProsesTree('0');
end;

procedure TfrmSetWwn.ProsesTree(sKode: string);
var
  q: TZQuery;
  i: Integer;
begin
  q := OpenRS('SELECT * FROM tbl_tpl_wewenang ' +
    'WHERE parent = ''' + sKode + ''' AND f_aktif = 1 ORDER BY kode');
  while not q.Eof do begin
    if sKode = '0' then
      nxGrd.AddRow()
    else begin
      i := FindRow(q.FieldByName('parent').AsString);
      nxGrd.AddChildRow(i, crLast);
    end;

    nxGrd.Cell[3,nxGrd.LastAddedRow].AsString := q.FieldByName('kode').AsString;
    nxGrd.Cell[1,nxGrd.LastAddedRow].AsString := q.FieldByName('keterangan').AsString;
    nxGrd.Cell[4,nxGrd.LastAddedRow].AsString := q.FieldByName('nm_comp').AsString;
    
    ProsesTree(q.FieldByName('kode').AsString);

    q.Next;
  end;
  q.Close;
end;

function TfrmSetWwn.FindRow(sKode: string): Integer;
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[3,i].AsString = sKode then begin
      Break;
    end;
  end;
  Result := i;
end;

procedure TfrmSetWwn.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSetWwn.cxcNamaUserPropertiesChange(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin
  {
  if cxcNamaUser.Text = '' then begin
    btnUnCheckSemuaClick(nil);
    Abort;
  end;

  q := OpenRS('SELECT * FROM tbl_user WHERE nama = ''%s''', [cxcNamaUser.Text]);
  cxtDept.Text := q.FieldByName('user_dept').AsString;
  q.Close;

  // bersihkan dulu semua
  btnUnCheckSemuaClick(nil);

  // ambil wewenang
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s''',
    [cxcNamaUser.Text]);
  while not q.Eof do begin
    if q.FieldByName('wwn').AsInteger = 1 then begin
      if nxGrd.FindText(4, q.FieldByName('nm_comp').AsString,[soContinueFromTop,soExactMatch]) then begin
        i := nxGrd.SelectedRow;
        nxGrd.Cell[2,i].AsBoolean := True;
      end;
    end
    else begin
      if nxGrd.FindText(4, q.FieldByName('nm_comp').AsString,[soContinueFromTop]) then begin
        i := nxGrd.SelectedRow;
        nxGrd.Cell[2,i].AsBoolean := False;
      end;
    end;
    q.Next;
  end;
  q.Close;
  nxGrd.SelectCell(1,0);
  //nxGrd.SetFocus;
  nxGrd.ScrollToRow(0);
  }
end;

procedure TfrmSetWwn.btnSimpanClick(Sender: TObject);
var
  tbl: TZTable;
  q, qwg: TZQuery;
  i: Integer;
begin
  if Trim(cxcNamaUser.Text) = '' then begin
    MsgBox('Pilih nama user.');
    cxcNamaUser.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_wewenang WHERE nama = ' +
        QuotedStr(Trim(cxcNamaUser.Text)));
      tbl := OpenTbl('tbl_wewenang');
      for i := 0 to nxGrd.RowCount - 1 do begin
        tbl.Insert;
        tbl.FieldByName('nama').AsString := Trim(cxcNamaUser.Text);
        tbl.FieldByName('nm_comp').AsString := nxGrd.Cell[4,i].AsString;
        if nxGrd.Cell[2,i].AsBoolean then
          tbl.FieldByName('wwn').AsString := '1'
        else
          tbl.FieldByName('wwn').AsString := '0';
        tbl.Post;
      end;
      tbl.Close;

      dm.zConn.ExecuteDirect('DELETE FROM tbl_wewenang_gdg WHERE nama = ''' + cxcNamaUser.Text + '''');
      qwg := OpenRS('SELECT * FROM tbl_wewenang_gdg WHERE nama = ''%s''',[cxcNamaUser.Text]);
      for i := 0 to nxGrdGudang.RowCount - 1 do begin
        qwg.Insert;
        qwg.FieldByName('nama').AsString := cxcNamaUser.Text;
        qwg.FieldByName('gudang').AsString := nxGrdGudang.Cell[nxColGudang.Index, i].AsString;
        if nxGrdGudang.Cell[nxColWwn.Index, i].AsBoolean then
          qwg.FieldByName('wwn').AsInteger := 1
        else
          qwg.FieldByName('wwn').AsInteger := 0;
        qwg.Post;
      end;
      qwg.Close;
      
      dm.zConn.Commit;
      MsgBox('Wewenang untuk user: ' + cxcNamaUser.Text + ' sudah disimpan.');

      //for i := 0 to nxGrdGudang.RowCount - 1 do
      //  nxGrdGudang.Cell[nxColWwn.Index, i].AsBoolean := False;
    except
      on E: Exception do begin
        dm.zConn.Rollback;
        ShowError(E.Message);
      end;
    end;
  end;
end;

procedure TfrmSetWwn.nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
  Value: WideString);
var
  RowParent,i,
  iFirstChild : integer;
  bNoCheck: boolean;
begin

  //if ACol > 3 then
  //  if nxGrd.Cell[2,ARow].AsString = 'MENU' then
  //    nxGrd.Cell[ACol,ARow].AsBoolean := False;

  try
  RowParent := nxGrd.GetParent(ARow);
  if (ACol = 2 ) and (RowParent > -1) then begin
    bNoCheck := True;
    for i := RowParent+1 to nxGrd.GetLastChild(RowParent) do begin
      if nxGrd.Cell[2,i].AsBoolean then begin
        bNoCheck := False;
        nxGrd.Cell[2,RowParent].AsBoolean := True;
        Break;
      end;
    end;
    if bNoCheck then nxGrd.Cell[3,RowParent].AsBoolean := False;
  end;

  if (ACol = 2) and (RowParent = -1) then begin
    iFirstChild := nxGrd.GetFirstChild(ARow);
    if nxGrd.Cell[ACol,ARow].AsBoolean then begin
      //nxGrd.Cell[ACol,iFirstChild].AsBoolean := True
      for i := iFirstChild to nxGrd.GetLastChild(ARow) do
        nxGrd.Cell[2,i].AsBoolean := True;
    end
    else begin
      for i := iFirstChild to nxGrd.GetLastChild(ARow) do
        nxGrd.Cell[2,i].AsBoolean := False;
    end;
  end;

  except
  end;

end;

procedure TfrmSetWwn.btnCheckSemuaClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do
    nxGrd.Cell[2,i].AsBoolean := True;

end;

procedure TfrmSetWwn.btnUnCheckSemuaClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to nxGrd.RowCount - 1 do
    nxGrd.Cell[2,i].AsBoolean := False;
end;

procedure TfrmSetWwn.btnProsesClick(Sender: TObject);
var
  q: TZQuery;
  i: Integer;
begin

  if cxcNamaUser.Text = '' then begin
    btnUnCheckSemuaClick(nil);
    Abort;
  end;

  q := OpenRS('SELECT * FROM tbl_user WHERE nama = ''%s''', [cxcNamaUser.Text]);
  cxtDept.Text := q.FieldByName('user_dept').AsString;
  q.Close;

  // bersihkan dulu semua
  btnUnCheckSemuaClick(nil);

  // ambil wewenang
  q := OpenRS('SELECT * FROM tbl_wewenang WHERE nama = ''%s''',
    [cxcNamaUser.Text]);
  while not q.Eof do begin
    if q.FieldByName('wwn').AsInteger = 1 then begin
      if nxGrd.FindText(4, q.FieldByName('nm_comp').AsString,[soContinueFromTop,soExactMatch]) then begin
        i := nxGrd.SelectedRow;
        nxGrd.Cell[2,i].AsBoolean := True;
      end;
    end
    else begin
      if nxGrd.FindText(4, q.FieldByName('nm_comp').AsString,[soContinueFromTop]) then begin
        i := nxGrd.SelectedRow;
        nxGrd.Cell[2,i].AsBoolean := False;
      end;
    end;
    q.Next;
  end;
  q.Close;
  nxGrd.SelectCell(1,0);
  //nxGrd.SetFocus;
  nxGrd.ScrollToRow(0);

  // ambil wewenang gudang
  q := OpenRS('SELECT a.kode, ifnull(b.wwn,0) wwn FROM tbl_gudang a LEFT JOIN ' +
    'tbl_wewenang_gdg b ON a.kode = b.gudang AND b.nama = ''%s'' ORDER BY a.kode',[cxcNamaUser.text]);
  nxGrdGudang.ClearRows;
  while not q.Eof do begin
    i := nxGrdGudang.AddRow();
    nxGrdGudang.Cell[nxColGudang.Index, i].AsString := q.FieldByName('kode').AsString;
    if q.FieldByName('wwn').AsInteger = 1 then
      nxGrdGudang.Cell[nxColWwn.Index, i].AsBoolean := True
    else
      nxGrdGudang.Cell[nxColWwn.Index, i].AsBoolean := False;
    q.Next;
  end;
  q.Close;
  
end;

end.
