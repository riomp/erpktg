unit unFrmApprovalPO;

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
  TfrmApprovalPO = class(TForm)
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxDC: TNxDataCellSource;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    btnApproval: TButton;
    btnBatal: TButton;
    btnEdit: TButton;
    cxLabel2: TcxLabel;
    Panel3: TPanel;
    nxGrd: TNextGrid;
    TNxTextColumn1: TNxTextColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    TNxDateColumn1: TNxDateColumn;
    TNxTextColumn2: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    nxColNotApproval: TNxCheckBoxColumn;
    cxLabel1: TcxLabel;
    NextDBGrid1: TNextDBGrid;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBNumberColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
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
  public
    procedure CreateParams(var Params: TCreateParams); override;
    property JenisPO: string read mJenisPO write mJenisPO;
  end;

var
  frmApprovalPO: TfrmApprovalPO;

implementation

uses unDm, unTools, unFrmPurchaseOrderKTG;

{$R *.dfm}

procedure TfrmApprovalPO.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalPO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalPO.FormCreate(Sender: TObject);
var
  sSQL: string;
begin
  {
  mJenisPO := '';

  sSQL := 'select a.no_bukti, s.nama nama_supplier, sum(floor(b.qty * b.harga) * b.nilai_tukar) total_po, ' +
        'tanggal, user, user_dept ' +
        ' from tbl_po_head a, tbl_po_det b, tbl_supplier s ' +
        'where a.no_bukti = b.no_bukti and ' +
        'a.kode_supp = s.kode and f_approval = 0 ' +
        'group by a.no_bukti, tanggal, user, user_dept ' +
        'having sum(floor(b.qty * b.harga) * b.nilai_tukar) %s';

  with zqrKorHead do begin
    Close;
    if aplikasi.Jabatan = 'STAFF' then
      SQL.Text := StringReplace(sSQL, '%s', ' < 15000000',[rfReplaceAll])
    else if aplikasi.Jabatan = 'SUPERVISOR' then
      SQL.Text := StringReplace(sSQL, '%s', ' < 100000000',[rfReplaceAll])
    else if aplikasi.Jabatan = 'MANAGER' then
      SQL.Text := StringReplace(sSQL, '%s', ' < 300000000',[rfReplaceAll])
    else if aplikasi.Jabatan = 'DIREKTUR' then
      SQL.Text := StringReplace(sSQL, '%s', ' > 300000000', [rfReplaceAll]);
    Open;
  end;

  nxDC.Execute;
  }
end;

procedure TfrmApprovalPO.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;

procedure TfrmApprovalPO.btnApprovalClick(Sender: TObject);
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

        if mJenisPO = 'jasa' then
          dm.zConn.ExecuteDirect('UPDATE tbl_poj_head ' +
            'SET f_approval = 1, ' +
            'tgl_app = NOW(), ' +
            'user_app = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''')
        else
          dm.zConn.ExecuteDirect('UPDATE tbl_po_head ' +
            'SET f_approval = 1, ' +
            'tgl_app = NOW(), ' +
            'user_app = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''')

      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        if mJenisPO = 'jasa' then
          dm.zConn.ExecuteDirect('UPDATE tbl_poj_head ' +
            'SET f_approval = 2, ' +
            'tgl_app = NOW(), ' +
            'user_app = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''')
        else
          dm.zConn.ExecuteDirect('UPDATE tbl_po_head ' +
            'SET f_approval = 2, ' +
            'tgl_app = NOW(), ' +
            'user_app = ''' + aplikasi.NamaUser + ''' ' +
            'WHERE no_bukti = ''' +
            nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');
      end;
    end;

    dm.zConn.Commit;

    if mJenisPO = 'jasa' then
      MsgBox('Approval Purchase Order Jasa sudah disimpan.')
    else
      MsgBox('Approval Purchase Order sudah disimpan.');

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

procedure TfrmApprovalPO.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalPO.nxGrdAfterEdit(Sender: TObject; ACol,
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

procedure TfrmApprovalPO.FormShow(Sender: TObject);
var
  sSQL: string;
begin
  if mJenisPO = 'jasa' then begin
    sSQL := 'select a.no_bukti, s.nama nama_supplier, sum(b.harga * b.qty) total_po, ' +
          'tanggal, user, user_dept ' +
          ' from tbl_poj_head a, tbl_poj_det b, tbl_supplier s ' +
          'where a.no_bukti = b.no_bukti and ' +
          'a.kode_supp = s.kode and f_approval = 0 ' +
          'group by a.no_bukti, tanggal, user, user_dept ' +
          'having sum(b.harga * b.qty) %s';

    zqrDetKor.SQL.Text := 'SELECT * FROM tbl_poj_det a ' +
      'WHERE a.no_bukti = :no_trans';
  end
  else begin
    sSQL := 'select a.no_bukti, s.nama nama_supplier, sum(floor(b.qty * b.harga) * 1) total_po, ' +
          'tanggal, user, user_dept ' +
          ' from tbl_po_head a, tbl_po_det b, tbl_supplier s ' +
          'where a.f_void=0 and a.no_bukti = b.no_bukti and ' +
          'a.kode_supp = s.kode and a.f_approval = 0 ' +
          'group by a.no_bukti, tanggal, user, user_dept ' +
          'having sum(floor(b.qty * b.harga) * 1) %s';

     zqrDetKor.SQL.Text := 'SELECT a.*, b.deskripsi FROM tbl_po_det a ' +
      'LEFT JOIN tbl_barang b ON a.kode_brg = b.kode ' +
      'WHERE a.no_bukti = :no_trans';

  end;

  with zqrKorHead do begin
    Close;
   { if aplikasi.Jabatan = 'STAFF' then
      SQL.Text := StringReplace(sSQL, '%s', ' < 15000000',[rfReplaceAll])
    else if aplikasi.Jabatan = 'SUPERVISOR' then
      SQL.Text := StringReplace(sSQL, '%s', ' < 100000000',[rfReplaceAll])
    else if aplikasi.Jabatan = 'MANAGER' then
      SQL.Text := StringReplace(sSQL, '%s', ' < 300000000',[rfReplaceAll])
    else if aplikasi.Jabatan = 'DIREKTUR' then
      SQL.Text := StringReplace(sSQL, '%s', ' >= 300000000', [rfReplaceAll]);  }
       SQL.Text := StringReplace(sSQL, '%s', ' >= 0', [rfReplaceAll]);
    Open;
  end;

  nxDC.Execute;
end;

procedure TfrmApprovalPO.btnEditClick(Sender: TObject);
var
  f : TfrmPurchaseOrderKTG ;
begin
 
    f := TfrmPurchaseOrderKTG.Create(self);
    f.Jenis := 'view';
    f.NoPO:= zqrKorHead.FieldByName('no_bukti').AsString;
    f.ShowModal;
    zqrKorHead.Close;
    zqrKorHead.Open;

end;

end.
