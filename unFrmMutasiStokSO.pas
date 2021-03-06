unit unFrmMutasiStokSO;

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
  dxSkinXmas2008Blue, DB, ZAbstractRODataset, ZDataset, StdCtrls,
  cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel;

type
  TfrmMutasiStokSO = class(TForm)
    cxLabel1: TcxLabel;
    cxlNoSO: TcxLookupComboBox;
    cxLabel2: TcxLabel;
    cxlKodeBrg: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxlSOTujuan: TcxLookupComboBox;
    cxsQtyMutasi: TcxSpinEdit;
    cxLabel5: TcxLabel;
    btnSimpan: TButton;
    btnBatal: TButton;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    zqrKodeBrg: TZReadOnlyQuery;
    dsKodeBrg: TDataSource;
    cxLabel3: TcxLabel;
    cxsStokG02: TcxSpinEdit;
    procedure cxlNoSOPropertiesChange(Sender: TObject);
    procedure cxlKodeBrgPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmMutasiStokSO: TfrmMutasiStokSO;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmMutasiStokSO.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmMutasiStokSO.cxlNoSOPropertiesChange(Sender: TObject);
begin
  try
    with zqrKodeBrg do begin
      if Active then Close;
      ParamByName('no_bukti').AsString := zqrNoSO.FieldByName('no_bukti').AsString;
      Open;
    end;
  except
  end;
end;

procedure TfrmMutasiStokSO.cxlKodeBrgPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  try
    q := OpenRS('SELECT v_stok_so WHERE no_bukti = ''%s'' ' +
      'AND kode_brg = %s',
      [cxlNoSO.Text, cxlKodeBrg.Text]);
    cxsStokG02.Value := q.FieldByName('qty_g02').AsFloat;
    q.Close;
  except
  end;
end;

procedure TfrmMutasiStokSO.btnSimpanClick(Sender: TObject);
begin
  if cxlNoSO.Text = '' then
    cxlNoSO.SetFocus
  else if cxsStokG02.Value = 0 then begin
    MsgBox('Stok G02 masih kosong.');
    cxlKodeBrg.SetFocus;
  end
  else if cxlSOTujuan.Text = '' then
    cxlSOTujuan.SetFocus
  else if cxsQtyMutasi.Value > cxsStokG02.Value then begin
    MsgBox('Qty. Mutasi tidak boleh melebihi stok G02.');
    cxsQtyMutasi.Value := 0;
    cxsQtyMutasi.SetFocus;
  end
  else begin
    try
      dm.zConn.StartTransaction;

      dm.zConn.Commit;
    except
      on E: Exception do begin

      end;
    end;
  end;

end;

end.
