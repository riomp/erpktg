unit unFrmTindakLanjutLKM;

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
  dxSkinXmas2008Blue, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, DB, ZAbstractRODataset, ZDataset, StdCtrls, cxCheckBox,
  cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxSpinEdit, cxMemo, cxTextEdit, cxLabel,
  ExtCtrls;

type
  TfrmTindakLanjutLKM = class(TForm)
    pnlAtas: TPanel;
    lblJudul: TLabel;
    pnlTengah: TPanel;
    ScrollBox1: TScrollBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel9: TcxLabel;
    cxtDibuatOleh: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxtNoSPK: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxtTglInput: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxtJamInput: TcxTextEdit;
    cxtUserInput: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxtKodeBrg: TcxTextEdit;
    cxtDeskripsi: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxtSatuan: TcxTextEdit;
    cxmDeskKS: TcxMemo;
    cxsQty: TcxSpinEdit;
    cxLabel8: TcxLabel;
    cxtStatus: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxtShift: TcxTextEdit;
    cxtNoMesin: TcxTextEdit;
    cxLabel19: TcxLabel;
    cxtKodeProduksi: TcxTextEdit;
    cxLabel20: TcxLabel;
    cxtTagProduksi: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxtAlokasiBarang: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxLabel3: TcxLabel;
    cxtNoLKM: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxdTglLKM: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxmAkarMasalah: TcxMemo;
    cxLabel23: TcxLabel;
    cxCmbJenis: TcxComboBox;
    cxtJenisLainnya: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxLabel26: TcxLabel;
    Panel1: TPanel;
    cxChkAppLKM: TcxCheckBox;
    cxlUser: TcxLookupComboBox;
    cxtDept: TcxTextEdit;
    cxtNoSO: TcxTextEdit;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    btnBaru: TButton;
    btnEdit: TButton;
    btnHapus: TButton;
    btnBatal: TButton;
    btnSimpan: TButton;
    btnSimpanLKM: TButton;
    btnKeluarLKM: TButton;
    zqrSupp: TZReadOnlyQuery;
    zqrCust: TZReadOnlyQuery;
    dsSupp: TDataSource;
    dsCust: TDataSource;
    zqrBagian: TZReadOnlyQuery;
    dsBagian: TDataSource;
    idSMTP: TIdSMTP;
    zqrUser: TZReadOnlyQuery;
    dsUser: TDataSource;
    cxtSupplier: TcxTextEdit;
    cxtCustomer: TcxTextEdit;
    procedure FormShow(Sender: TObject);
  private
    mNoLKM: string;
  public
    property NoLKM : string read mNoLKM write mNoLKM;
  end;

var
  frmTindakLanjutLKM: TfrmTindakLanjutLKM;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmTindakLanjutLKM.FormShow(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT * FROM v_lkm WHERE no_bukti = ''%s''',
    [mNoLKM]);

  cxtNoLKM.Text := mNoLKM;
  cxdTglLKM.Date := q.FieldByName('tanggal').AsDateTime;
  cxtNoSPK.Text := q.FieldByName('no_spk').AsString;

  cxtKodeBrg.Text := q.FieldByName('kode_brg').AsString;
  cxtDeskripsi.Text := q.FieldByName('deskripsi').AsString;  

  q.Close;
end;

end.
