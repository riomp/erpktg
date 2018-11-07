unit unFrmTutupSOTerbuka;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, ZAbstractRODataset,
  ZDataset, StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,cxCheckComboBox,
  cxCheckBox, cxMemo;

type
  TfrmTutupSOTerbuka = class(TForm)
    cxGrid2: TcxGrid;
    cxgTblHead: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
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
    zqrSOHead: TZReadOnlyQuery;
    dsHead: TDataSource;
    cxGrid1: TcxGrid;
    cxgTblDet: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    zqrSODet: TZReadOnlyQuery;
    dsDet: TDataSource;
    cxgTblHeadno_bukti: TcxGridDBColumn;
    cxgTblHeadtanggal: TcxGridDBColumn;
    cxgTblHeadkode_customer: TcxGridDBColumn;
    cxgTblHeadf_completed: TcxGridDBColumn;
    cxgTblHeaduser: TcxGridDBColumn;
    cxgTblHeaduser_dept: TcxGridDBColumn;
    cxgTblHeadnama: TcxGridDBColumn;
    cxgTblHeadalamat: TcxGridDBColumn;
    cxgTblHeadnotes: TcxGridDBColumn;
    cxgTblHeadpo: TcxGridDBColumn;
    cxgTblHeadsc: TcxGridDBColumn;
    cxgTblDetno_bukti: TcxGridDBColumn;
    cxgTblDetkode_brg: TcxGridDBColumn;
    cxgTblDetqty: TcxGridDBColumn;
    cxgTblDetsatuan: TcxGridDBColumn;
    cxgTblDetf_completed: TcxGridDBColumn;
    cxgTblDetnotes: TcxGridDBColumn;
    cxgTblDetdeskripsi: TcxGridDBColumn;
    cxgTblDetqty_g02: TcxGridDBColumn;
    cxgTblHeadColumn1: TcxGridDBColumn;
    cxgTblHeadColumn2: TcxGridDBColumn;
    cxMemo1: TcxMemo;
    Memo1: TMemo;
    btnProses2: TButton;
    Memo2: TMemo;
    zqrSODet2: TZReadOnlyQuery;
    dsSODet2: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProses2Click(Sender: TObject);
    procedure cxgTblHeadFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    mJenis: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property Jenis: string read mJenis write mJenis;
  end;

var
  frmTutupSOTerbuka: TfrmTutupSOTerbuka;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmTutupSoTerbuka.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmTutupSOTerbuka.FormCreate(Sender: TObject);
begin
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  if aplikasi.UserDept = 'PPIC' then begin
    zqrSOHead.SQL.Text := Memo1.Text;
  end;
end;

procedure TfrmTutupSOTerbuka.btnProsesClick(Sender: TObject);
begin
  try
    with zqrSOHead do begin
      if Active then Close;
      if zqrSODet.Active then zqrSODet.Close;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
      //zqrSODet.Open;
    end;
  except
  end;
end;

procedure TfrmTutupSOTerbuka.FormShow(Sender: TObject);
var
  aCol, aCol2: TcxGridDBColumn;
  i : integer;
begin

  if mJenis = 'peletan' then begin
    btnProses.Visible := False;
    btnProses2.Top := btnProses.Top;
    btnProses2.Left := btnProses.Left;
    btnProses2.Visible := True;
    cxgTblDet.DataController.DataSource := dsSODet2;
  end
  else begin
    btnProses2.Visible := False;
  end;

  aCol := cxgTblHead.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;

  aCol2 := cxgTblHead.CreateColumn;
  with aCol2 do begin
    Name := 'colAlasan';
    Caption := 'Keterangan';
  end;
  aCol2.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol2.PropertiesClass := TcxTextEditProperties;
  with aCol2.Properties as TcxTextEditProperties do begin
    CharCase := ecUpperCase;
    ImmediatePost := True;
  end;
  aCol2.Width := 150;
  aCol2.Index := 1;

  if mJenis <> '' then begin
    zqrSOHead.SQL.Text := cxMemo1.Text;
  end;
end;

procedure TfrmTutupSOTerbuka.btnCetakClick(Sender: TObject);
var
  i: Integer;
  lstSJ, lstKet: TStringList;
  chk: string;
  qr, qh, qb, qbd, qhp, qa : TZQuery;
  st, sa: real;
begin
  Screen.Cursor := crSQLWait;
  lstSJ := TStringList.Create;
  lstKet := TStringList.Create;

  for i := 0 to cxgTblHead.DataController.RecordCount - 1 do begin

    if VarIsNull(cxgTblHead.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxgTblHead.DataController.Values[i,0];

    if chk = 'T' then begin
      lstSJ.Add(cxgTblHead.DataController.Values[i,2]);
      if not VarIsNull(cxgTblHead.DataController.Values[i,1]) then
        lstKet.Add(cxgTblHead.DataController.Values[i,1])
      else
        lstKet.Add('');
    end;
  end;

  if lstSJ.Count > 0 then begin
    try
      dm.zConn.StartTransaction;

      for i := 0 to lstSJ.Count - 1 do begin
        dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 1, ' +
          'keterangan_tutup = ''' + lstKet.Strings[i] + ''', f_tutupmanual = 1 WHERE no_bukti = ''' +
          lstSJ.Strings[i] + '''');
        dm.zConn.ExecuteDirect('UPDATE tbl_mo SET f_tutupmanual = 1 WHERE no_so = ''' +
          lstSJ.Strings[i] + '''');
      end;

      if mJenis = 'peletan' then begin
        for i := 0 to lstSJ.Count - 1 do begin
          qr := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s'' AND gudang = ''G01'' AND tipe = ''IN_''',
            [lstSJ.Strings[i]]);
          if not qr.IsEmpty then begin
            while not qr.Eof do begin

              // ambil stok akhir barang di G01
              //qa := OpenRS('SELECT IFNULL(sf_get_stok2(%s,''G01''),0) sa',[qr.FieldByName('kode_brg').AsString]);
              //sa := qa.FieldByName('sa').AsFloat;
              //qa.Close;

              qh := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[lstSJ.Strings[i]]);
              qh.Insert;
              qh.FieldByName('no_bukti').AsString := qr.FieldByName('no_bukti').AsString;
              qh.FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
              qh.FieldByName('jam').AsDateTime := Aplikasi.ServerTime;
              qh.FieldByName('kode_brg').AsInteger := qr.FieldbyName('kode_brg').AsInteger;
              qh.FieldByName('tipe').AsString := 'OUT_';

              qhp := OpenRS('SELECT SUM(qty) AS hsl_prd FROM tbl_history WHERE kode_brg = %s AND no_so = ''%s'' AND tipe = ''OUT_'' AND left(no_bukti,3) = ''HPR''',
                [qr.FieldByName('kode_brg').AsString, lstSJ.Strings[i]]);
              qh.FieldByName('qty').AsFloat :=
                qr.FieldByName('qty').AsFloat - qhp.FieldByName('hsl_prd').AsFloat;
              st := qr.FieldByName('qty').AsFloat - qhp.FieldByName('hsl_prd').AsFloat;
              qhp.Close;

              qh.FieldByName('no_so').AsString := lstSJ.Strings[i];
              qh.FieldByName('satuan').AsString := 'KG';
              qh.FieldByName('gudang').AsString := 'G01';
              qh.FieldByName('user').AsString := Aplikasi.NamaUser;
              qh.FieldByName('user_dept').AsString := Aplikasi.UserDept;
              qh.FieldByName('tgl_input').AsFloat := aplikasi.NowServer;
              qh.FieldByName('keterangan').AsString := 'PENUTUPAN SO MANUAL';
              qh.Post;
              qh.Free;

              qb := OpenRS('SELECT stok FROM tbl_barang WHERE kode = ''%s''', [qr.FieldByName('kode_brg').AsString]);
              qb.Edit;
              qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat - st;
              qb.Post;
              qb.Close;
              qb.Free;

              qbd := OpenRS('SELECT stok FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
                [qr.FieldByName('kode_brg').AsString, qr.FieldByName('gudang').AsString]);
              qbd.Edit;
              qbd.FieldByName('stok').AsFloat := qbd.FieldByName('stok').AsFloat - st;
              qbd.Post;
              qbd.Close;
              qbd.Free;

              st := 0;

              qr.Next;
            end;
          end;
          qr.Close;
          qr.Free;
        end;
      end;
      
      dm.zConn.Commit;
      zqrSOHead.Close;
      zqrSOHead.Open;
      
      Screen.Cursor := crDefault;
      MsgBox('Penutupan SO sudah berhasil.');
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        Screen.Cursor := crDefault;
        dm.zConn.Rollback;
      end;
    end;
  end;
end;

procedure TfrmTutupSOTerbuka.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTutupSOTerbuka.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmTutupSOTerbuka.btnProses2Click(Sender: TObject);
begin
  try
    with zqrSOHead do begin
      if Active then Close;
      if zqrSODet.Active then zqrSODet.Close;
      SQL.Text := Memo2.Lines.Text;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
      //zqrSODet.Open;
    end;
  except
  end;
end;

procedure TfrmTutupSOTerbuka.cxgTblHeadFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  //if mJenis = 'peletan' then begin
    zqrSODet2.Close;
    zqrSODet2.ParamByName('no_bukti').AsString := zqrSOHead.FieldByName('no_bukti').AsString;
    zqrSODet2.Open;
  //end;
end;

procedure TfrmTutupSOTerbuka.Button2Click(Sender: TObject);
begin
  SHowMessage(cxgTblHead.DataController.Values[1,2]);
end;

end.
