unit unFrmKalkulasiStokPerKode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmKalkulasiStok, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, DB, ZAbstractRODataset, ZDataset, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, StdCtrls, ComCtrls;

type
  TfrmKalkulasiUlangPerKode = class(TfrmKalkulasiStok)
    cxLabel1: TcxLabel;
    cxlDesk: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxtKode: TcxTextEdit;
    zqr: TZReadOnlyQuery;
    ds: TDataSource;
    btnProses2: TButton;
    btnCari: TButton;
    procedure cxlDeskPropertiesChange(Sender: TObject);
    procedure btnProses2Click(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKalkulasiUlangPerKode: TfrmKalkulasiUlangPerKode;

implementation

uses unAplikasi, unDm, unTools, unFrmCari;

{$R *.dfm}

procedure TfrmKalkulasiUlangPerKode.cxlDeskPropertiesChange(
  Sender: TObject);
begin
  inherited;
  try
  cxtKode.Text := zqr.FieldByName('kode').AsString;
  except
  end;
end;

procedure TfrmKalkulasiUlangPerKode.btnProses2Click(Sender: TObject);
var
  q, q2: TZQuery;
  iStok: real;
  sql, sGdg: string;
  stok: Extended;
begin
  q2 := OpenRS('SELECT * FROM tbl_gudang WHERE f_aktif = 1 ORDER BY kode');

  Label1.Caption := '';
  Label1.Visible := True;

  Self.Refresh;

  while not q2.Eof do begin
    Application.ProcessMessages;
    sGdg := q2.FieldByName('kode').AsString;
    Label1.Caption := 'Update Detail Stok... (' + sGdg + ')';
    Self.Refresh;

    dm.zConn.ExecuteDirect('DROP TABLE IF EXISTS _tmp_hist0');
    dm.zConn.ExecuteDirect('create temporary table _tmp_hist0 ' +
       'select kode_brg, ' +
       'sum(IN_) IN_, ' +
       'sum(OUT_) OUT_ ' +
       'from v_history_brg ' +
       'WHERE gudang = ''' + sGdg + ''' AND kode_brg = ''' + cxtKode.Text + ''' ' + 
       'group by kode_brg');
    dm.zConn.ExecuteDirect('ALTER TABLE _tmp_hist0 add index idxkodebrg (kode_brg)');
    sql := 'SELECT b.kode AS kode_brg, IFNULL(IN_,0) IN_, IFNULL(OUT_,0) OUT_ ' +
      'from _tmp_hist0 a ' +
      'RIGHT JOIN tbl_barang b ON a.kode_brg = b.kode WHERE b.f_aktif = 1 AND a.kode_brg = ' + cxtKode.Text;

    q := OpenRS(sql);

    if q.IsEmpty then
      //MsgBox('Data masih kosong.')
      dm.zConn.ExecuteDirect('UPDATE tbl_barang_det SET stok = 0 ' +
        'WHERE kode_gdg = ''' + sGdg + '''')
    else begin
      btnProses.Enabled := False;
      btnBatal.Enabled := False;

      dm.zConn.StartTransaction;

      Screen.Cursor := crSQLWait;

      try
        prgBar.Position := 0;
        prgBar.Refresh;
        prgBar.Max := q.RecordCount;

        while not q.Eof do begin
          //iStok := q.FieldByName('sawal').AsFloat +
          //  q.FieldByName('IN_').AsFloat -
          //  q.FieldByName('OUT_').AsFloat;

          iStok := q.FieldByName('IN_').AsFloat -
            q.FieldByName('OUT_').AsFloat;

          dm.zConn.ExecuteDirect('DELETE FROM tbl_barang_det WHERE kode_gdg = ''' +
            sGdg + ''' AND kode_brg = ''' +
            q.FieldByName('kode_brg').AsString + '''');

          dm.zConn.ExecuteDirect('INSERT INTO tbl_barang_det ' +
            'SET kode_brg = ' + q.FieldByName('kode_brg').AsString + ', ' +
            'kode_gdg = ''' + sGdg + ''', ' +
            'stok = ' + StringReplace(FloatToStr(iStok),',','.',[rfReplaceAll]));

          prgBar.Position := prgBar.Position + 1;
          q.Next;
        end;
        dm.zConn.Commit;
      except
        on E: Exception do begin
          MsgBox('Terjadi error: ' + E.Message);
          dm.zConn.Rollback;
          btnProses.Enabled := True;
          btnBatal.Enabled := True;
        end;
      end;

      Screen.Cursor := crDefault;

    end;
    q.Close;
    q := nil;

    q2.Next;
  end;
  q2.Close;

  try
  label1.Caption := 'Update Stok Barang...';
  Self.Refresh;
  dm.zConn.StartTransaction;
  q2 := OpenRS('SELECT kode FROM tbl_barang WHERE kode = ''' + cxtKode.Text + '''');
  prgBar.Position := 0;
  prgBar.Max := q2.RecordCount;
  Screen.Cursor := crSQLWait;
  while not q2.Eof do begin
    prgBar.Position := prgBar.Position + 1;
    dm.zConn.ExecuteDirect('UPDATE tbl_barang SET stok = sf_get_stok(''' +
      q2.FieldByName('kode').AsString + ''') WHERE kode = ''' +
      q2.FieldByName('kode').AsString + '''');
    q2.Next;
  end;
  q2.Close;
  dm.zConn.Commit;
  Screen.Cursor := crDefault;
  except
  end;
  
  btnProses.Enabled := True;
  btnBatal.Enabled := True;

  MsgBox('Proses kalkulasi stok selesai.');

  Close;
end;

procedure TfrmKalkulasiUlangPerKode.btnCariClick(Sender: TObject);
var
  f: TFrmCari;
  s: TStringList;
  fKode: TField;
  q: TZQuery;
begin

  f := TFrmCari.Create(self);
  f.jenis := 'barang';
  f.ShowModal;
  if f.ModalResult = idOk then begin
    s := f.Result;
    fKode := s.Objects[0] as TField;
    cxlDesk.EditValue := fKode.AsInteger;
    cxtKode.Text := fKode.AsString;
  end;

end;

end.
