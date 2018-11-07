unit unFrmSettingSA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ComCtrls, ZDataset, ExtCtrls,
  DB, ZAbstractRODataset, ZAbstractDataset, ADODB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox;

type
  TfrmSettingSA = class(TForm)
    nxGrd: TNextGrid;
    NxIncrementColumn1: TNxIncrementColumn;
    nxcNama: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    btnSimpan: TButton;
    btnBatal: TButton;
    Label1: TLabel;
    dtTgl: TDateTimePicker;
    tmr: TTimer;
    q: TZQuery;
    Label2: TLabel;
    NxNumberColumn2: TNxNumberColumn;
    prgBar: TProgressBar;
    btnImportExcel: TButton;
    cxLUNamaBrg: TcxLookupComboBox;
    zqKodeBrg: TZQuery;
    dsKodeBrg: TDataSource;
    Label3: TLabel;
    cxCmbGdg: TcxComboBox;
    btnSimpan2: TButton;
    nxColDept: TNxTextColumn;
    nxColDivisi: TNxTextColumn;
    cxChkSAConsumable: TcxCheckBox;
    nxcKode: TNxTextColumn;
    nxColUnit: TNxTextColumn;
    nxColHPP: TNxNumberColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnImportExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLUNamaBrgKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpan2Click(Sender: TObject);
  private
    counter: integer;
    sPath: string;
  public
    { Public declarations }
  end;

var
  frmSettingSA: TfrmSettingSA;

implementation

uses unDM, unTools, unAplikasi;

{$R *.dfm}

procedure TfrmSettingSA.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  dtTgl.Date := Date;

  q := OpenRS('SELECT tanggal FROM tbl_stkawal LIMIT 1');
  if not q.IsEmpty then 
    if not q.FieldByName('tanggal').IsNull then
      dtTgl.Date := q.FieldByName('tanggal').AsDateTime;

  counter := 0;

  sPath := Aplikasi.AppPath;

  cxCmbGdg.Properties.Items.Add('');
  q.Close;
  q := OpenRS('SELECT * FROM tbl_gudang ORDER BY kode');
  while not q.Eof do begin
    cxCmbGdg.Properties.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;
end;

procedure TfrmSettingSA.FormActivate(Sender: TObject);
begin
  if nxGrd.RowCount > 0 then begin
    tmr.Enabled := True;
  end;
end;

procedure TfrmSettingSA.tmrTimer(Sender: TObject);
var
  q2: TZQuery;
  i: integer;
  sJenis: string;
begin
  {
  if counter = 1 then begin
    Screen.Cursor := crSQLWait;

    q.Connection := dm.zConn;
    q.SQL.Text := 'SELECT COUNT(*) jml FROM tbl_barang';
    q.Open;

    q2 := OpenRS('SELECT COUNT(*) jml FROM tbl_stkawal');

    //sJenis := '2';
    //if q2.FieldByName('jml').AsInteger = q.FieldByName('jml').AsInteger  then begin
      q.Close;
      q.SQL.Text := 'SELECT b.kode, deskripsi, IFNULL(stokawal,0) stokawal ' +
        'FROM tbl_barang b LEFT JOIN tbl_stkawal s ' +
        'ON b.kode = s.kode ORDER BY b.deskripsi';
      q.Open;
      sJenis := '1';
    //end
    //else begin
    //  q.Close;
    //  q.SQL.Text := 'SELECT * FROM tbl_barang ORDER BY deskripsi';
    //  q.Open;
    //end;

    q2.Close;

    nxGrd.RowCount := q.RecordCount;

    nxGrd.BeginUpdate;

    i := 0;
    while not q.Eof do begin
      nxGrd.Cell[1,i].AsString := q.FieldByName('kode').AsString;
      nxGrd.Cell[2,i].AsString := q.FieldByName('deskripsi').AsString;
      //if sJenis = '2' then
      //  nxGrd.Cell[3,i].AsInteger := 0
      //else
      nxGrd.Cell[3,i].AsFloat := q.FieldByName('stokawal').AsFloat;

      q.Next;
      inc(i);
    end;

    nxGrd.EndUpdate;

    Screen.Cursor := crDefault;
  end;
  inc(counter);
  }
end;

procedure TfrmSettingSA.btnSimpanClick(Sender: TObject);
var
  i: integer;
  sSQl: WideString;
  sTgl: string;
begin
  if cxCmbGdg.Text = '' then begin
    MsgBox('Pilih kode gudang.');
    cxCmbGdg.SetFocus;
    Abort;
  end;

  Screen.Cursor := crSQLWait;

  dm.zConn.ExecuteDirect('DELETE FROM tbl_stkawal WHERE kode_gdg = ''' +
    cxCmbGdg.Text + '''');
  sSQL := 'INSERT INTO tbl_stkawal VALUES';
  sTgl := FormatDateTime('yyyy-mm-dd', dtTgl.Date);

  prgBar.Visible := True;
  prgBar.Max := nxGrd.RowCount;

  for i := 0 to nxGrd.RowCount - 1 do begin
    self.Refresh;

    sSQL := sSQL + Format('(''%s'', %s, %s, ''%s''),',
      [ sTgl,
        nxGrd.Cell[1,i].AsString,
        StringReplace(FloatToStr(nxGrd.Cell[3,i].AsFloat),',','.',[rfReplaceAll]),
        cxCmbGdg.Text
      ]);

    //dm.zConn.ExecuteDirect(
    //  Format('UPDATE tbl_barang SET hpp = %d WHERE kode = ''%s''',
    //  [nxGrd.Cell[4,i].AsInteger, nxGrd.Cell[1,i].AsString]));

    if i = 8000 then begin
      sSQL := Copy(sSQL,1,Length(sSQL)-1) + ';';
      try
        dm.zConn.ExecuteDirect(sSQL);
      except
      end;
      sSQL := 'INSERT INTO tbl_stkawal VALUES';
    end;

    prgBar.Position := prgBar.Position + 1;
  end;

  sSQL := Copy(sSQL,1,Length(sSQL)-1) + ';';
  try
    dm.zConn.ExecuteDirect(sSQL);
  except
    on E:Exception do begin
      MsgBox(E.Message);
      Application.Terminate;
    end;
  end;
  Screen.Cursor := crDefault;

  MsgBox('Stok awal sudah disimpan.');
  Close;
end;

procedure TfrmSettingSA.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSettingSA.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if (ACol >= 3) and (ACol <= 4) then begin
    try
      nxGrd.SelectCell(ACol, ARow+1);
    except
    end;
  end;
end;

procedure TfrmSettingSA.btnImportExcelClick(Sender: TObject);
var
  adoConn: TAdoConnection;
  adoQ: TAdoQuery;
  i,ra: integer;
  q: TZQuery;
begin
  adoConn := TAdoConnection.Create(nil);
  adoConn.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=' + sPath + '\import-stok-awal-ktg.xls;' +
    'Extended Properties="Excel 8.0;HDR=Yes;IMEX=1"';
  adoConn.CursorLocation := clUseServer;
  adoConn.LoginPrompt := False;
  adoConn.Open;

  adoQ := TAdoQuery.Create(nil);
  adoQ.Connection := adoConn;
  adoQ.SQL.Text := 'SELECT * FROM [import$]';
  adoQ.Open;

  nxGrd.SortColumn(nxcKode, True);

  //if not adoQ.IsEmpty then begin
  //  while not adoQ.Eof do begin
  //    if nxGrd.FindText(1, adoQ.FieldByName('kode_brg').AsString,[soContinueFromTop,soExactMatch]) then begin
  //      nxGrd.Cell[3,nxGrd.SelectedRow].AsFloat := StrToFloat(adoQ.FieldByName('G01').AsString);
  //      //nxGrd.Cell[4,nxGrd.SelectedRow].AsInteger := StrToInt(adoQ.FieldByName('hrg_beli').AsString);
  //    end;
  //    adoQ.Next;
  //  end;
  //end;

  nxGrd.ClearRows;

  if not adoQ.IsEmpty then begin
    while not adoQ.Eof do begin
      q := OpenRS('SELECT kode, deskripsi FROM tbl_barang WHERE kode = ''%s''',
        [adoQ.FieldByName('kode_brg').AsString]);
      if not q.IsEmpty then begin
        i := nxGrd.AddRow();
        nxGrd.Cell[1,i].AsString := adoQ.FieldByName('kode_brg').AsString;
        nxGrd.Cell[2,i].AsString := q.FieldByName('deskripsi').AsString;

        try
          nxGrd.Cell[nxColHPP.Index,i].AsString := adoQ.FieldByName('hpp').AsString;
        except
          nxGrd.Cell[nxColHPP.Index,i].AsFloat := 0;  
        end;

        try
          nxGrd.Cell[nxColUnit.Index,i].AsString := adoQ.FieldByname('unit').AsString;
        except
          nxGrd.Cell[nxColUnit.Index,i].AsString := adoQ.FieldByname('unit').AsString;  
        end;
        
        if cxChkSAConsumable.Checked then begin
          nxGrd.Cell[3,i].AsFloat := StrToFloat(adoQ.FieldByName('G04').AsString);
          nxGrd.Cell[nxColDept.Index, i].AsString := adoQ.FieldByName('DEPT').AsString;
          nxGrd.Cell[nxColDivisi.Index, i].AsString := adoQ.FieldByName('DIVISI').AsString;
        end
        else
          nxGrd.Cell[3,i].AsFloat := StrToFloat(adoQ.FieldByName('G01').AsString);
      end;
      q.Close;
      adoQ.Next;
    end;
  end;

  adoQ.Close;
  adoConn.Close;
end;

procedure TfrmSettingSA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmSettingSA.cxLUNamaBrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    if nxGrd.FindText(2, zqKodeBrg.FieldByName('nama').AsString,[soContinueFromTop]) then begin
      nxGrd.SetFocus;
    end;
  end;
end;

procedure TfrmSettingSA.btnSimpan2Click(Sender: TObject);
var
  tblSA, tblH: TZTable;
  i: Integer;
  sNoBukti: string;
begin
  if nxGrd.RowCount = 0 then begin
    MsgBox('Detail data masih kosong.');
    Abort;
  end;

  if cxCmbGdg.Text = '' then begin
    MsgBox('Mohon Pilih gudang.');
    cxCmbGdg.SetFocus;
    Abort;
  end;

  i := QBox(self, 'Hapus Data Semua Stok ?','Stok Awal');
  if i = IDYES then begin
    try
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_history');
      dm.zConn.Commit;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        Abort;
      end;
    end;
  end;

  try
    dm.zConn.StartTransaction;

    tblSA := OpenTbl('tbl_stkawal');
    tblH := OpenTbl('tbl_history');

    prgBar.Visible := True;
    prgBar.Max := nxGrd.RowCount;

    for i := 0 to nxGrd.RowCount - 1 do begin

      if cxChkSAConsumable.Checked then
        if Trim(nxGrd.Cell[nxColDivisi.Index,i].AsString) = '' then continue;

      sNoBukti := GetLastFak('stok_awal');
      tblSA.Insert;
      tblSA.FieldByName('tanggal').AsDateTime := dtTgl.Date;
      tblSA.FieldByName('kode').AsString := nxGrd.Cell[1,i].AsString;
      tblSA.FieldByName('stokawal').AsFloat := nxGrd.Cell[3,i].AsFloat;
      tblSA.FieldByName('kode_gdg').AsString := cxCmbGdg.Text;
      tblSA.FieldByName('no_bukti').AsString := sNoBukti;
      tblSA.FieldByName('dept').AsString := nxGrd.Cell[nxColDept.Index,i].AsString;
      tblSA.FieldByName('divisi').AsString := nxGrd.Cell[nxColDivisi.Index,i].AsString;
      tblSA.FieldByName('hpp').AsFloat := nxGrd.Cell[nxColHPP.Index, i].AsFloat;
      tblSA.Post;

      tblH.Insert;
      tblH.FieldByName('no_bukti').AsString := sNoBukti;
      tblH.FieldByName('tanggal').AsDateTime := dtTgl.Date;
      tblH.FieldByName('kode_brg').AsString := nxGrd.Cell[1,i].AsString;
      tblH.FieldByName('tipe').AsString := 'IN_';
      tblH.FieldByName('qty').AsFloat := nxGrd.Cell[3,i].AsFloat;
      tblH.FieldByName('gudang').AsString := cxCmbGdg.Text;
      tblH.FieldByName('user').AsString := Aplikasi.NamaUser;
      tblH.FieldByName('user_dept').AsString := Aplikasi.UserDept;
      tblH.FieldByName('keterangan').AsString := 'STOK AWAL';
      tblH.FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
      tblH.FieldByName('dept').AsString := nxGrd.Cell[nxColDept.Index,i].AsString;
      tblH.FieldByName('divisi').AsString := nxGrd.Cell[nxColDivisi.Index, i].AsString;
      tblH.FieldByName('hpp').AsFloat := nxGrd.Cell[nxColHPP.Index, i].AsFloat;
      tblH.FieldByname('unit_ktg').AsString := nxGrd.Cell[nxColUnit.Index, i].AsString;
      tblH.Post;

      prgBar.Position := prgBar.Position + 1;

      UpdateFaktur(Copy(sNoBukti,1,7));
    end;

    tblSA.Close;
    tblH.Close;

    dm.zConn.Commit;

    MsgBox('Stok awal sudah disimpan.');
    Close;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

end.
