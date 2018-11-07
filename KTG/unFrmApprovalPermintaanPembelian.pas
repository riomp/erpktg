unit unFrmApprovalPermintaanPembelian;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, ExtCtrls;

type
  TfrmApprovalPermintaanPembelian = class(TForm)
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxDC: TNxDataCellSource;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    Panel1: TPanel;
    cxLabel2: TcxLabel;
    Panel2: TPanel;
    btnApproval: TButton;
    btnBatal: TButton;
    btnEdit: TButton;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    nxGrd: TNextGrid;
    TNxTextColumn1: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    nxColNotApproval: TNxCheckBoxColumn;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBNumberColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnApprovalClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    mJenisPO: string;
    mJenisApp: string;
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property JenisPO: string read mJenisPO write mJenisPO;
    property JenisApp: string read mJenisApp write mJenisApp;
  end;

var
  frmApprovalPermintaanPembelian: TfrmApprovalPermintaanPembelian;

implementation

uses unDm, unTools, unFrmTrsPermintaanPembelian;

{$R *.dfm}

procedure TfrmApprovalPermintaanPembelian.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalPermintaanPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalPermintaanPembelian.FormCreate(Sender: TObject);
var
  sSQL: string;
begin
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalPermintaanPembelian.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;

procedure TfrmApprovalPermintaanPembelian.btnApprovalClick(Sender: TObject);
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

        if mJenisApp = 'atasan' then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head ' +
            'SET f_app = 1, f_app_gm = 1,  ' +
            'tgl_app = NOW(), tgl_app_gm = now(), user_app_gm = ''' + Aplikasi.NamaUser + ''', ' +
            'user_app = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');
        end
        else begin
          dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head ' +
            'SET f_app_gm = 1, ' +
            'tgl_app_gm = NOW(), ' +
            'user_app_gm = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');
        end;

      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin

        if mJenisApp = 'atasan' then begin
          dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head ' +
            'SET f_app = 2, ' +
            'tgl_app = NOW(), ' +
            'user_app = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''')
        end
        else begin
          dm.zConn.ExecuteDirect('UPDATE tbl_fobj_head ' +
            'SET f_app_gm = 2, ' +
            'tgl_app_gm = NOW(), ' +
            'user_app_gm = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''')
        end;

      end;
    end;

    dm.zConn.Commit;

    MsgBox('Approval Permintaan Pembelian sudah disimpan.');

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

procedure TfrmApprovalPermintaanPembelian.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalPermintaanPembelian.nxGrdAfterEdit(Sender: TObject; ACol,
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

procedure TfrmApprovalPermintaanPembelian.FormShow(Sender: TObject);
begin
  if JenisApp = 'gm' then begin
    zqrKorHead.Close;
    zqrKorHead.SQL.Text := 'SELECT no_bukti, tanggal, diajukan_oleh, diajukan_dept ' +
      'FROM tbl_fobj_head ' +
      'WHERE f_app = 1 AND f_app_gm = 0 AND f_void=0';
    zqrKorHead.Open;
  end
  else begin
    zqrKorHead.Close;
    zqrKorHead.SQL.Text := 'SELECT no_bukti, tanggal, diajukan_oleh, diajukan_dept ' +
      'FROM tbl_fobj_head ' +
      'WHERE f_app = 0 AND f_void=0';
    zqrKorHead.Open;
  end;
  nxDC.Execute;
end;

procedure TfrmApprovalPermintaanPembelian.btnEditClick(Sender: TObject);
var
  f : TfrmTrsPermintaanPembelian ;
begin
  inherited;

    f := TfrmTrsPermintaanPembelian.Create(self);
    f.Jenis := 'V';
    f.NoPP:= zqrKorHead.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrKorHead.Close;
    zqrKorHead.Open;
end;

end.
