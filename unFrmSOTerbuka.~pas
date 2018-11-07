unit unFrmSOTerbuka;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxCheckBox, cxTextEdit, cxContainer,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, ZAbstractRODataset, ZDataset, StdCtrls, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, ExtCtrls, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox,scExcelExport, cxGridExportLink, ShellAPI;

type
  TfrmSOTerbuka = class(TForm)
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    zqrSOTerbuka: TZReadOnlyQuery;
    dsSOTerbuka: TDataSource;
    cxGridDBTableView1no_bukti: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1kode_customer: TcxGridDBColumn;
    cxGridDBTableView1f_completed: TcxGridDBColumn;
    cxGridDBTableView1tgl_required: TcxGridDBColumn;
    cxGridDBTableView1notes: TcxGridDBColumn;
    cxGridDBTableView1user: TcxGridDBColumn;
    cxGridDBTableView1user_dept: TcxGridDBColumn;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1notes_detail: TcxGridDBColumn;
    cxGridDBTableView1ket_harga: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGridDBTableView1kontak: TcxGridDBColumn;
    cxGridDBTableView1alamat: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxGridDBTableView1kategori: TcxGridDBColumn;
    cxGridDBTableView1subkategori: TcxGridDBColumn;
    cxGridDBTableView1qty_kirim: TcxGridDBColumn;
    cxGridDBTableView1qty_g02: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    Panel2: TPanel;
    btnCetak: TButton;
    btnBatal: TButton;
    Button1: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1payment: TcxGridDBColumn;
    cxGrid1DBTableView1f_complete: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGrid1DBTableView1user_dept: TcxGridDBColumn;
    cxGrid1DBTableView1f_email: TcxGridDBColumn;
    cxGrid1DBTableView1kontak: TcxGridDBColumn;
    cxGrid1DBTableView1fax: TcxGridDBColumn;
    cxGrid1DBTableView1notes: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    nxGrdSODet: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    Panel3: TPanel;
    nxGrd: TNextGrid;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxNumberColumn5: TNxNumberColumn;
    zqrSJDet: TZReadOnlyQuery;
    dsSJDet: TDataSource;
    NxDateColumn1: TNxDateColumn;
    Panel4: TPanel;
    cxChkCustomer: TcxCheckBox;
    cxChkKategori: TcxCheckBox;
    zqrCust: TZReadOnlyQuery;
    dsCust: TDataSource;
    zqrKategori: TZReadOnlyQuery;
    dsKategori: TDataSource;
    btnCetak2: TButton;
    btnBatalCetak: TButton;
    cxlCustomer: TcxLookupComboBox;
    cxlKategori: TcxLookupComboBox;
    cxChkKelPerCust: TcxCheckBox;
    cxChkJmlHari: TcxCheckBox;
    cxLabel19: TcxLabel;
    cxCmbUrut: TcxComboBox;
    Button2: TButton;
    chk: TcxCheckBox;
    Memo1: TMemo;
    Memo2: TMemo;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCetakClick(Sender: TObject);
    procedure cxGridDBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Panel4Exit(Sender: TObject);
    procedure btnBatalCetakClick(Sender: TObject);
    procedure btnCetak2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmSOTerbuka: TfrmSOTerbuka;

implementation

uses unTools, unFrmLapUmum, unAplikasi, unDm;

{$R *.dfm}

procedure TfrmSOTerbuka.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmSOTerbuka.btnProsesClick(Sender: TObject);
begin

  try
    Screen.Cursor := crSQLWait;

    with zqrSOTerbuka do begin
      Close;
      if chk.Checked then
        SQL.Text := Memo1.Lines.Text
      else
        SQL.Text := Memo2.Lines.Text;
        
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    end;

    Screen.Cursor := crDefault;
  except
    Screen.Cursor := crDefault;
  end;
end;

procedure TfrmSOTerbuka.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
  //btnProsesClick(nil);

  cxCmbUrut.Properties.Items.Add('UMUR SO');
  cxCmbUrut.Properties.Items.Add('UMUR SO - DIKELOMPOKKAN PER CUSTOMER');
  cxCmbUrut.Properties.Items.Add('UMUR SO - DIKELOMPOKKAN PER KATEGORI');
  cxCmbUrut.ItemIndex := 0;
end;

procedure TfrmSOTerbuka.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSOTerbuka.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmSOTerbuka.btnCetakClick(Sender: TObject);
var
  f: TfrmLapUmum;
begin
  Panel4.Visible := True;
  Panel4.SetFocus;
  zqrCust.Open;
  zqrKategori.Open;
end;

procedure TfrmSOTerbuka.cxGridDBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  i: Integer;
  q: TZQuery;
  sNoSO: string;
begin
  //sNoSO := zqrSOTerbuka.FieldByName('no_bukti').AsString;
  //sNoSO := AFocusedRecord.Values[

  //q := OpenRS('SELECT a.*, b.tanggal FROM ' +
  //  'v_sj_det a INNER JOIN v_sj_head b on a.no_bukti = b.no_bukti ' +
  //  'WHERE a.no_so = ''%s''',
  //  [sNoSO]);

  //MsgBox(q.SQL.Text);

  try
    zqrSJDet.Close;
    zqrSJDet.ParamByName('no_so').AsString := zqrSOTerbuka.FieldByName('no_bukti').AsString;
    zqrSJDet.Open;
    //MsgBox(zqrSJDet.FieldByName('no_bukti').AsString);

    nxGrd.ClearRows();
    if not q.IsEmpty then begin
      while not zqrSJDet.Eof do begin
        i := nxGrd.AddRow();
        nxGrd.Cell[0,i].AsString := zqrSJDet.FieldByName('no_bukti').AsString;
        nxGrd.Cell[1,i].AsDateTime := zqrSJDet.FieldByName('tanggal').AsDateTime;
        nxGrd.Cell[2,i].AsString := zqrSJDet.FieldByName('kode_brg').AsString;
        nxGrd.Cell[3,i].AsString := zqrSJDet.FieldByName('deskripsi').AsString;
        nxGrd.Cell[4,i].AsString := zqrSJDet.FieldByName('satuan').AsString;
        nxGrd.Cell[5,i].AsFloat := zqrSJDet.FieldByName('qty').AsFloat;
        zqrSJDet.Next;
      end;
    end;
  except
  end;

end;

procedure TfrmSOTerbuka.Panel4Exit(Sender: TObject);
begin
  Panel4.Visible := False;
end;

procedure TfrmSOTerbuka.btnBatalCetakClick(Sender: TObject);
begin
  Panel4.Visible := False;
end;

procedure TfrmSOTerbuka.btnCetak2Click(Sender: TObject);
var
  f: TfrmLapUmum;
  sTmp: string;
begin
  f := TfrmLapUmum.Create(Self);

  if cxChkCustomer.Checked then begin
    if cxlCustomer.Text = '' then begin
      cxlCustomer.SetFocus;
      Abort;
    end
    else begin
      f.zqrSOTerbuka.SQL.Strings[1] :=
        'WHERE kode_customer = ''' + zqrCust.FieldByName('kode').AsString + '''';
    end;
  end;

  if cxChkKategori.Checked then begin
    if cxlKategori.Text = '' then begin
      cxlKategori.SetFocus;
      Abort;
    end
    else begin
      sTmp := '';

      if Pos('WHERE', f.zqrSOTerbuka.SQL.Text) > 0 then
        sTmp := 'AND '
      else
        sTmp := 'WHERE ';

      f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] +
        sTmp + ' kategori = ''' + cxlKategori.Text + '''';

    end;
  end;

  if Pos('WHERE', f.zqrSOTerbuka.SQL.Text) > 0 then
    sTmp := ' AND f_completed = 0'
  else
    sTmp := ' WHERE f_completed = 0';

  if cxCmbUrut.SelectedItem = 0 then
    f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY selisih_hari DESC'
  else if cxCmbUrut.SelectedItem = 1 then
    f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY kode_customer, selisih_hari DESC'
  else if cxCmbUrut.SelectedItem = 2 then
    f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY kategori, selisih_hari DESC';

  f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] + sTmp;

  //MsgBox(f.zqrSOTerbuka.SQL.Text);

  f.zqrSOTerbuka.Open;
  f.rptSOTerbuka.ShowReport(True);
  f.Release;
  {
  f := TfrmLapUmum.Create(Self);

  if cxChkCustomer.Checked then begin
    if cxlCustomer.Text = '' then begin
      cxlCustomer.SetFocus;
      Abort;
    end
    else begin
      f.zqrSOTerbuka.SQL.Strings[1] :=
        'WHERE kode_customer = ''' + zqrCust.FieldByName('kode').AsString + '''';
    end;
  end;

  if cxChkKategori.Checked then begin
    if cxlKategori.Text = '' then begin
      cxlKategori.SetFocus;
      Abort;
    end
    else begin
      sTmp := '';

      if Pos('WHERE', f.zqrSOTerbuka.SQL.Text) > 0 then
        sTmp := 'AND '
      else
        sTmp := 'WHERE ';

      f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] +
        sTmp + ' kategori = ''' + cxlKategori.Text + '''';

    end;
  end;

  if Pos('WHERE', f.zqrSOTerbuka.SQL.Text) > 0 then
    sTmp := ' AND '
  else
    sTmp := ' WHERE ';

  sTmp := sTmp + ' f_completed = 0';

  if cxChkJmlHari.Checked then
    f.zqrSOTerbuka.SQL.Strings[3] := 'ORDER BY selisih_hari DESC, kode_customer';

  f.zqrSOTerbuka.SQL.Strings[1] := f.zqrSOTerbuka.SQL.Strings[1] + sTmp;
  Screen.Cursor := crSQLWait;
  f.zqrSOTerbuka.Open;
  Screen.Cursor := crDefault;

  if cxChkKelPerCust.Checked then
    f.rptSOTPerCust.ShowReport(True)
  else
    f.rptSOTerbuka.ShowReport(True);

  f.Release;
  }
end;

procedure TfrmSOTerbuka.Button2Click(Sender: TObject);
begin
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmp.xls', cxGrid2);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmp.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
