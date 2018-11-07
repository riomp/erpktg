unit unFrmHPPReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxPC, ExtCtrls, cxContainer, cxEdit, cxTextEdit,
  cxLabel, ZDataset, cxMaskEdit, cxDropDownEdit, cxSpinEdit;

type
  TfrmHPPReport = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxtNoIS: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtNamaProduk: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxtBahanDasar: TcxTextEdit;
    Panel2: TPanel;
    ScrollBox1: TScrollBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxCmbJenisBentuk: TcxComboBox;
    cxLabel7: TcxLabel;
    cxsLebarBuka: TcxSpinEdit;
    cxLabel8: TcxLabel;
    cxsLebarJadi: TcxSpinEdit;
    cxLabel9: TcxLabel;
    cxsLebarGusset: TcxSpinEdit;
    cxLabel10: TcxLabel;
    cxsLebarCutout: TcxSpinEdit;
    cxLabel11: TcxLabel;
    cxsTinggiTotal: TcxSpinEdit;
    cxLabel12: TcxLabel;
    cxsTinggiJadi: TcxSpinEdit;
    cxLabel13: TcxLabel;
    cxsTopFold: TcxSpinEdit;
    cxLabel14: TcxLabel;
    cxsBottomGusset: TcxSpinEdit;
    cxLabel15: TcxLabel;
    cxsTinggiCutout: TcxSpinEdit;
    cxLabel16: TcxLabel;
    cxsTebalMic: TcxSpinEdit;
    cxLabel17: TcxLabel;
    cxsLebarPlong: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxsPanjangPlong: TcxSpinEdit;
    cxLabel19: TcxLabel;
    cxsPersenPlong: TcxSpinEdit;
    Panel3: TPanel;
    cxLabel20: TcxLabel;
    cxSpinEdit1: TcxSpinEdit;
    cxLabel21: TcxLabel;
    cxSpinEdit2: TcxSpinEdit;
    cxLabel22: TcxLabel;
    cxSpinEdit3: TcxSpinEdit;
    cxLabel23: TcxLabel;
    cxsKonstanta: TcxSpinEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    mNoIS: string;
  public
    property NoIS: string read mNoIS write mNoIS; 
  end;

var
  frmHPPReport: TfrmHPPReport;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmHPPReport.FormShow(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT a.*, b.* ' +
    'FROM tbl_barang a ' +
    'LEFT JOIN tbl_is2 b ON a.no_is = b.no_is ' +
    'WHERE b.no_is = ''%s''',[mNoIS]);

  cxtNoIS.Text := mNoIS;
  cxtNamaProduk.Text := q.FieldByName('deskripsi').AsString;
  cxtBahanDasar.Text := q.FieldByName('base_material').AsString;
  cxsLebarBuka.Value := q.FieldByName('open_width').Value;
  cxsTinggiTotal.Value := q.FieldByName('total_height').Value;

  q.Close;

  q := OpenRS('SELECT * FROM tbl_base_material WHERE base_material = ''%s''',[cxtBahanDasar.Text]);
  cxsKonstanta.Value := q.FieldByName('std').AsFloat;
  q.Close;
  
end;

procedure TfrmHPPReport.FormCreate(Sender: TObject);
begin
  with cxCmbJenisBentuk.Properties do begin
    Items.Add('Bottom Seal');
    Items.Add('Side Seal');
    Items.Add('Sheet');
    Items.Add('NonRectangle');
  end;
  cxCmbJenisBentuk.ItemIndex := 0;
  
end;

end.
