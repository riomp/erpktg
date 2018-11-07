unit unFrmOtorisasiMutasiCFT;

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
  dxSkinXmas2008Blue, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  ZAbstractRODataset, ZDataset, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, StdCtrls;

type
  TfrmOtorisasiMutasiCFT = class(TForm)
    cxLabel1: TcxLabel;
    cxCmbNamaUser: TcxComboBox;
    cxLabel2: TcxLabel;
    zqrNoSO: TZReadOnlyQuery;
    dsNoSO: TDataSource;
    cxlNoSO: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxtNamaCust: TcxTextEdit;
    btnSimpan: TButton;
    btnBatal: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxlNoSOPropertiesChange(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOtorisasiMutasiCFT: TfrmOtorisasiMutasiCFT;

implementation

uses unAplikasi, unDm, unThreadKirimEmail, unTools;

{$R *.dfm}

procedure TfrmOtorisasiMutasiCFT.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT nama FROM tbl_user WHERE user_dept = ''CFT''');
  while not q.Eof do begin
    cxCmbNamaUser.Properties.Items.Add(q.FieldByName('nama').AsString);
    q.Next;
  end;
  q.Close;
end;

procedure TfrmOtorisasiMutasiCFT.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmOtorisasiMutasiCFT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmOtorisasiMutasiCFT.cxlNoSOPropertiesChange(Sender: TObject);
var
  q: TZQuery;
begin
  try
    q := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',
      [zqrNoSO.FieldByName('no_bukti').AsString]);
    cxtNamaCust.Text := q.FieldByName('nama').AsString;  
    q.Close;
  except
  end;
end;

procedure TfrmOtorisasiMutasiCFT.btnSimpanClick(Sender: TObject);
var
  tbl: TZTable;
  q: TZQuery;
begin
  if cxCmbNamaUser.Text = '' then
    cxCmbNamaUser.SetFocus
  else if cxlNoSO.Text = '' then
    cxlNoSO.SetFocus
  else begin

    q := OpenRS('SELECT * FROM tbl_oto_mutasi WHERE user = ''%s'' ' +
      'AND tanggal = ''%s'' AND no_so = ''%s''',
      [cxCmbNamaUser.Text, aplikasi.TanggalString, cxlNoSO.Text]);
    if not q.IsEmpty then begin
      MsgBox('Pemberian wewenang mutasi untuk user dan No. SO ini sudah ada.');
      q.Close;
      q := nil;
      Abort;
    end;
    q.Close;
    q := nil;

    try

      dm.zConn.StartTransaction;
      tbl := OpenTbl('tbl_oto_mutasi');
      with tbl do begin
        Insert;
        FieldByName('user').AsString := cxCmbNamaUser.Text;
        FieldByName('user_dept').AsString := 'CFT';
        FieldByName('no_so').AsString := cxlNoSO.Text;
        FieldByName('tanggal').AsDateTime := Aplikasi.TanggalServer;
        FieldByName('user_giver').AsString := aplikasi.NamaUser;
      end;
      tbl.Post;
      dm.zConn.Commit;

      MsgBox('Otorisasi mutasi sudah disimpan.');
      Close;

    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;
end;

end.
