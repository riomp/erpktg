unit unFrmApprovalSJU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxDBGrid,
  NxDBColumns, NxColumns, DB, ZAbstractRODataset, ZDataset,
  NxColumnClasses, NxCellSource, NxGrid, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel;

type
  TfrmApprovalSJU = class(TForm)
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxGrd: TNextGrid;
    nxDC: TNxDataCellSource;
    TNxTextColumn1: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    btnApproval: TButton;
    NextDBGrid1: TNextDBGrid;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    NxDBTextColumn2: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    nxColNotApproval: TNxCheckBoxColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    NxDBTextColumn1: TNxDBNumberColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnApprovalClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    { Private declarations }
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmApprovalSJU: TfrmApprovalSJU;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmApprovalSJU.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalSJU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalSJU.FormCreate(Sender: TObject);
var
  sSQL: string;
begin
  sSQL := 'SELECT no_bukti, tanggal, kepada, alamat, kota, pengirim ' +
    'FROM tbl_trssju_head WHERE f_app = 0 ' +
    'ORDER BY tanggal DESC';

  with zqrKorHead do begin
    SQL.Text := sSQL;
    Open;
  end;

  nxDC.Execute;
end;

procedure TfrmApprovalSJU.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin

  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_bukti').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;

end;

procedure TfrmApprovalSJU.btnApprovalClick(Sender: TObject);
var
  i: Integer;
  q, q2: TZQuery;
  tbl: TZTable;
  b1,b2: boolean;
begin
  if nxGrd.RowCount = 0 then Abort;

  b1 := false;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then b1 := True;
  end;
  b2 := False;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then b2 := True;
  end;
  if (b1 = False) and (b2 = False) then begin
    MsgBox('Lakukan pilihan nomer PO yang akan di Approval atau tidak Approval.');
    Abort;
  end;

  try
    dm.zConn.StartTransaction;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trssju_head ' +
          'SET f_app = 1, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_po_head ' +
          'SET f_approval = 2, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Approval Surat Jalan Umum sudah disimpan.');

  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
      Abort;
    end;
  end;

  zqrKorHead.Close;
  zqrDetKor.Close;
  nxDC.Active := False;
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalSJU.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalSJU.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = nxColApproval.Index then begin
    if nxGrd.Cell[nxColApproval.Index, ARow].AsBoolean then
      nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean := False;
  end;
  if ACol = nxColNotApproval.Index then begin
    if nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean then
      nxGrd.Cell[nxColApproval.Index,ARow].AsBoolean := False;
  end;
end;

end.
