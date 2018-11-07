unit unFrmPembatalan;

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
  dxSkinXmas2008Blue, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ZAbstractRODataset,
  ZDataset,cxLookupDBGrid,cxCheckComboBox,cxCheckBox;

type
  TfrmPembatalan = class(TForm)
    cxLabel1: TcxLabel;
    cxl: TcxLookupComboBox;
    tblView: TcxGridDBTableView;
    cxgLevel1: TcxGridLevel;
    cxg: TcxGrid;
    Button1: TButton;
    Button2: TButton;
    zqrd: TZReadOnlyQuery;
    dsd: TDataSource;
    zqrh: TZReadOnlyQuery;
    dsh: TDataSource;
    cxtKeterangan: TcxTextEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    mJenis: string;
  public
    property Jenis: string read mJenis write mJenis;
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmPembatalan: TfrmPembatalan;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmPembatalan.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmPembatalan.FormShow(Sender: TObject);
var
  sql, sqld, tblh, tbld: string;
  lstField, lstCap: TStringList;
  col: TcxLookupDBGridColumn;
  i: Integer;
begin
  if mJenis = 'IN' then
    Caption := 'Pembatalan Transaksi Barang Masuk'
  else if mJenis = 'OUT' then
    Caption := 'Pembatalan Transaksi Barang Keluar'
  else if mJenis = 'KS' then
    Caption := 'Pembatalan Transaksi Koreksi';

  lstField := TStringList.Create;
  lstCap := TStringList.Create;

  sql := 'SELECT no_bukti, tanggal, user, user_dept FROM %s ORDER BY no_bukti';

  if mJenis = 'IN' then begin
    lstField.CommaText := 'no_bukti,tanggal,user,user_dept';
    lstCap.CommaText := '"No. Trans.",Tanggal,User,Dept';
    tblh := 'tbl_trsmasuk_head';
    tbld := 'tbl_tramasuk_det';
    sqld := 'SELECT ' +
      'a.kode_brg "Kode Brg", b.deskripsi "Deskripsi", ' +
      'a.qty "Qty", kode_gdg "Gudang" ' +
      'FROM ' +
      'tbl_trsmasuk_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_bukti = :no_bukti'; 
  end
  else if mJenis = 'OUT' then begin
    lstField.CommaText := 'no_bukti,tanggal,user,user_dept';
    lstCap.CommaText := '"No. Trans.",Tanggal,User,Dept';
    tblh := 'tbl_trskeluar_head';
    tbld := 'tbl_trakeluar_det';
    sqld := 'SELECT ' +
      'a.kode_brg "Kode Brg", b.deskripsi "Deskripsi", ' +
      'a.qty "Qty", kode_gdg "Gudang" ' +
      'FROM ' +
      'tbl_trskeluar_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_bukti = :no_bukti';
  end
  else if mJenis = 'SJ' then begin
    lstField.CommaText := 'no_bukti,tanggal,user,user_dept';
    lstCap.CommaText := '"No. Trans.",Tanggal,User,Dept';
    tblh := 'tbl_sj_head';
    tbld := 'tbl_sj_det';
    sqld := 'SELECT ' +
      'a.kode_brg "Kode Brg", b.deskripsi "Deskripsi", ' +
      'a.qty "Qty", kode_gdg "Gudang" ' +
      'FROM ' +
      'tbl_trskeluar_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_bukti = :no_bukti';
  end
  else if mJenis = 'KS' then begin
    lstField.CommaText := 'no_bukti,tanggal,user,user_dept';
    lstCap.CommaText := '"No. Trans.",Tanggal,User,Dept';
    tblh := 'tbl_trskoreksi_head';
    tbld := 'tbl_trskoreksi_det';
    sqld := 'SELECT ' +
      'a.kode_brg "Kode Brg", b.deskripsi "Deskripsi", ' +
      'a.stok_koreksi "Stok Koreksi", gudang "Gudang" ' +
      'FROM ' +
      'tbl_trskoreksi_det a LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_bukti = :no_bukti';
  end;

  sql := Format(sql, [tblh]);

  zqrh.SQL.Text := sql;
  zqrh.Open;
  cxl.Properties.KeyFieldNames := lstField.Strings[0];

  for i := 0 to lstField.Count - 1 do begin
    col := cxl.Properties.ListColumns.Add;
    col.FieldName := lstField.Strings[i];
    col.Caption := lstCap.Strings[i];
    //cxl.Properties.ListColumns.Items[i].Caption := lstCap.Strings[i];
  end;

  zqrd.SQL.Text := sqld;

end;

procedure TfrmPembatalan.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPembatalan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmPembatalan.Button1Click(Sender: TObject);
var
  i: Integer;
  lst, lstGdg, lstNoBtl: TStringList;
  ArrQty : array of real;
  sNoTrs: string;
  tbl_hist, tbl_b, tbl_bd: TZTable;
  chk : string;
  q: TZQuery;
begin

  if Trim(cxtKeterangan.Text) = '' then begin
    MsgBox('Keterangan Pembatalan harus diisi.');
    cxtKeterangan.SetFocus;
    Abort;
  end;

  lst := TStringList.Create;
  lstGdg := TStringList.Create;
  lstNoBtl := TStringList.Create;

  for i := 0 to tblView.DataController.RecordCount - 1 do begin
    if VarIsNull(tblView.DataController.Values[i,0]) then
      chk := ''
    else
      chk := tblView.DataController.Values[i,0];
    if chk = 'T' then begin
      lst.Add(tblView.DataController.Values[i,1]);
      SetLength(ArrQty, lst.Count);
      ArrQty[lst.Count-1] := tblView.DataController.Values[i,3];
      lstGdg.Add(tblView.DataController.Values[i,4]);
    end;
  end;

  if lst.Count > 0 then begin

    // cek apakah ada item yang sudah pernah dibatalkan
    for i := 0 to lst.Count - 1 do begin
      // cek apakah nomer ini sudah pernah dibatalkan
      q := OpenRS('SELECT * FROM tbl_history WHERE LEFT(no_bukti,3) = ''BTL'' ' +
        'AND referensi = ''%s'' AND kode_brg = %s',
        [cxl.Text, lst.Strings[i]]);
      if not q.IsEmpty then begin
        MsgBox('Kode barang: ' + lst.Strings[i] + ' sudah pernah dibatalkan.' + #10#13 +
          'No. Pembatalan: ' + q.FieldByName('no_bukti').AsString);
        q.Close;
        Abort;
      end;
      q.Close;
    end;

    try
      dm.zConn.StartTransaction;

      tbl_hist := OpenTbl('tbl_history');
      tbl_b := OpenTbl('tbl_barang');
      tbl_bd := OpenTbl('tbl_barang_det');

      for i := 0 to lst.Count - 1 do begin

        sNoTrs := GetLastFak('pembatalan');
        lstNoBtl.Add(sNoTrs);

        with tbl_hist do begin
          Insert;
          FieldByName('no_bukti').AsString := sNoTrs;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          FieldByName('kode_brg').AsString := lst.Strings[i];

          if mJenis = 'IN' then
            FieldByName('tipe').AsString := 'OUT_'
          else if mJenis = 'OUT' then
            FieldByName('tipe').AsString := 'IN_'
          else if mJenis = 'SJ' then
            FieldByName('tipe').AsString := 'IN_'
          else if mJenis = 'KS' then
            FieldByName('tipe').AsString := 'OUT_';

          FieldByName('qty').AsFloat := ArrQty[i];
          FieldByName('gudang').AsString := lstGdg.Strings[i];
          FieldByName('referensi').AsString := cxl.Text;
          FieldByName('keterangan').AsString := cxtKeterangan.Text;
          FieldByName('user').AsString := aplikasi.NamaUser;
          FieldByName('user_dept').AsString := Aplikasi.UserDept;
          FieldByName('tgl_input').AsDateTime := Aplikasi.NowServer;
          Post;
        end;

        with tbl_b do begin
          if Locate('kode', lst.Strings[i],[]) then begin
            Edit;
            if mJenis = 'IN' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat - ArrQty[i]
            else if mJenis = 'OUT' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat + ArrQty[i]
            else if mJenis = 'SJ' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat + ArrQty[i]
            else if mJenis = 'KS' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat - ArrQty[i];
            Post;
          end;
        end;

        with tbl_bd do begin
          if Locate('kode_brg;kode_gdg',
              VarArrayOf([lst.Strings[i],lstGdg.Strings[i]]) ,[]) then begin
            Edit;
            if mJenis = 'IN' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat - ArrQty[i]
            else if mJenis = 'OUT' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat + ArrQty[i]
            else if mJenis = 'SJ' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat + ArrQty[i]
            else if mJenis = 'KS' then
              FieldByName('stok').AsFloat := FieldByName('stok').AsFloat - ArrQty[i];
            Post;
          end;
        end;

        UpdateFaktur(Copy(sNoTrs,1,8));
      end;

      tbl_hist.Close;
      tbl_b.Close;
      tbl_bd.Close;

      if mJenis = 'SJ' then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_sj_head SET f_batal = 1 ' +
          'WHERE no_bukti = ''' + cxl.Text + '''');
      end;

      dm.zConn.Commit;
      MsgBox('Pembatalan berhasil dilakukan.' + #10#13 +
        'No. Pembatalan: ' + StringReplace(lstNoBtl.CommaText,',',#10#13,[rfReplaceAll]));
      Close;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;
  end;
end;

procedure TfrmPembatalan.btnProsesClick(Sender: TObject);
var
  i: Integer;
  cl: TcxGridDBColumn;
  q: TZQuery;
begin

  if cxl.Text = '' then begin
    MsgBox('Pilih nomer transaksi yang akan dibatalkan.');
    cxl.SetFocus;
    Abort;
  end;

  try
    with zqrd do begin
    
      if zqrd.Active then Close;
      ParamByName('no_bukti').AsString := cxl.EditValue;
      Open;

      if tblView.ColumnCount > 0 then begin
        while tblView.ColumnCount > 0 do begin
          tblView.Columns[0].Free;
        end;
      end;
      
      for i := 0 to Fields.Count - 1 do begin
        cl := tblView.CreateColumn;
        cl.DataBinding.FieldName := Fields[i].DisplayName;
        //cl.Caption := ColCaption.Strings[i];
        //cl.Width := StrToInt(ColWidth.Strings[i]);
        cl.Options.Editing := False;
      end;

      // create check box column
      cl := tblView.CreateColumn;
      with cl do begin
        Name := 'chk';
        Caption := 'Batal';
        DataBinding.ValueTypeClass := TcxStringValueType;
        PropertiesClass := TcxCheckBoxProperties;
        with Properties as TcxCheckBoxProperties do begin
          AllowGrayed := False;
          ValueChecked := 'T';
          ValueUnchecked := 'F';
          NullStyle := nssUnchecked;
          ImmediatePost := True;
        end;
        Index := 0;
      end;
      
    end;
  except
  end;
end;

end.
