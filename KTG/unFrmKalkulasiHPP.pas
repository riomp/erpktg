unit unFrmKalkulasiHPP;

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
  TfrmKalkulasiHPP = class(TfrmKalkulasiStok)
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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmKalkulasiHPP: TfrmKalkulasiHPP;

implementation

uses unAplikasi, unDm, unTools, unFrmCari;

{$R *.dfm}

procedure TfrmKalkulasiHPP.cxlDeskPropertiesChange(
  Sender: TObject);
begin
  inherited;
  try
  cxtKode.Text := zqr.FieldByName('kode').AsString;
  except
  end;
end;

procedure TfrmKalkulasiHPP.btnProses2Click(Sender: TObject);
var
  q, q2: TZQuery;
  iStok: real;
  sql, sGdg: string;
  stok: Extended;
  lHPP: real;
begin
  q2 := OpenRS('SELECT * FROM tbl_gudang WHERE f_aktif = 1 ORDER BY kode');

  Label1.Caption := '';
  Label1.Visible := True;

  Self.Refresh;

  Screen.Cursor := crSQLWait;

  try
    dm.zConn.StartTransaction;

    while not q2.Eof do begin
      Application.ProcessMessages;
      sGdg := q2.FieldByName('kode').AsString;
      Label1.Caption := 'Update Detail Stok... (' + sGdg + ')';
      Self.Refresh;

      dm.zConn.ExecuteDirect(
        Format('CALL sp_hitung_hpp(''%s'',''%s'')',
          [cxlDesk.EditValue, sGdg])
      );

      {
      q := OpenRS('SELECT IFNULL(hpp,0) hpp ' +
        'FROM tbl_history WHERE kode_brg = ''%s'' AND ' +
        'gudang = ''%s'' AND ' +
        'id = (SELECT MAX(id) FROM tbl_history WHERE kode_brg = ''%s'' AND gudang = ''%s'')',
        [cxlDesk.EditValue, sGdg, cxlDesk.EditValue, sGdg]);
      if not q.IsEmpty then begin
        lHPP := q.FieldByname('hpp').AsFloat;
        q.Close;
        q := OpenRS('SELECT * FROM tbl_barang_det WHERE kode = ''%s'' AND kode_gdg = ''%s''',
          [cxlDesk.EditValue, sGdg]);
        q.Edit;
        q.FieldByName('hpp').AsFloat := lHPP;
        q.Post;
      end;
      q.Close;
      }
      
      q2.Next;
    end;
    q2.Close;

    dm.zConn.Commit;

    btnProses.Enabled := True;
    btnBatal.Enabled := True;

    MsgBox('Proses kalkulasi HPP selesai.');

    Close;
  except
    on E: Exception do begin
      dm.zConn.Rollback;
      Screen.Cursor := crDefault;
      MsgBox('Error: ' + E.Message);
    end;
  end;

end;

procedure TfrmKalkulasiHPP.btnCariClick(Sender: TObject);
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
    cxlDesk.EditValue := fKode.AsString;
    cxtKode.Text := fKode.AsString;
  end;

end;

procedure TfrmKalkulasiHPP.FormCreate(Sender: TObject);
begin
  inherited;
  zqr.Open;
end;

end.
