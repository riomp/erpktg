unit unFrmApprovalSO;

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
  TfrmApprovalSO = class(TForm)
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
    nxGrdDet2: TNextDBGrid;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBNumberColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBNumberColumn2: TNxDBNumberColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    nxColNotApproval: TNxCheckBoxColumn;
    NxDBNumberColumn3: TNxDBNumberColumn;
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
  frmApprovalSO: TfrmApprovalSO;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TFrmApprovalSO.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalSO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalSO.FormCreate(Sender: TObject);
begin
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalSO.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;

procedure TfrmApprovalSO.btnApprovalClick(Sender: TObject);
var
  i: Integer;
  q, q2, qhist, qkor_head, qbrg, qbrg_det: TZQuery;
  tbl, tbl_kor_head,
  tbl_barang, tbl_barang_det : TZTable;
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
    MsgBox('Lakukan pilihan untuk nomer koreksi yang akan di Approval atau tidak Approval.');
    Abort;
  end;

  try
    dm.zConn.StartTransaction;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trskoreksi_head ' +
          'SET f_approval = 1, ' +
          'tgl_app = CURDATE(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' + 
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        //tbl := OpenTbl('tbl_history');
        //tbl_kor_head := OpenTbl('tbl_trskoreksi_head');
        qkor_head := OpenRS('SELECT * FROM tbl_trskoreksi_head WHERE no_bukti = ''%s''', [nxGrd.Cell[0,i].AsString]);
        //tbl_barang := OpenTbl('tbl_barang');
        //tbl_barang_det := OpenTbl('tbl_barang_det');

        //if tbl_kor_head.Locate('no_bukti', nxGrd.Cell[0,i].AsString, []) then begin
        //tbl_kor_head.Edit;
        //tbl_kor_head.FieldByName('tgl_adjust').AsDateTime := aplikasi.TanggalServer;
        //tbl_kor_head.FieldByName('jam_adjust').AsDateTime := aplikasi.ServerTime;
        //tbl_kor_head.Post;
        //end;
        //tbl_kor_head.Close;

        qkor_head.Edit;
        qkor_head.FieldByName('tgl_adjust').AsDateTime := aplikasi.TanggalServer;
        qkor_head.FieldByName('jam_adjust').AsDateTime := aplikasi.ServerTime;
        qkor_head.Post;
        qkor_head.Close;

        q := OpenRS('SELECT a.*, b.user, b.user_dept FROM ' +
          'tbl_trskoreksi_det a, tbl_trskoreksi_head b WHERE ' +
          'a.no_bukti = b.no_bukti AND a.no_bukti = ''%s''',
          [nxGrd.Cell[0,i].AsString]);

        while not q.Eof do begin
          //if tbl_barang_det.Locate('kode_brg;kode_gdg',
          //VarArrayOf([q.FieldByName('kode_brg').AsInteger, [q.FieldByName('kode_brg').AsString, ]);

          qbrg_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = ''%s'' AND kode_gdg = ''%s''',
            [q.FieldByName('kode_brg').AsString ,q.FieldByName('gudang').AsString]); 
          if not qbrg_det.IsEmpty then
            qbrg_det.Edit
          else begin
            qbrg_det.Insert;
            qbrg_det.FieldByName('kode_gdg').AsString := q.FieldByName('gudang').AsString;
          end;

          // 02-10-2014
          //tbl_barang_det.FieldByName('stok').AsFloat :=
          //  q.FieldByName('stok_baru').AsFloat;

          qbrg_det.FieldByName('stok').AsFloat :=
            qbrg_det.FieldByName('stok').AsFloat + q.FieldByName('stok_koreksi').AsFloat;
          qbrg_det.Post;
          qbrg_det.Close;

          qbrg := OpenRS('SELECT * FROM tbl_barang WHERE kode = ''%s''',[q.FieldByName('kode_brg').AsString]);
          if qbrg.Locate('kode', q.FieldByName('kode_brg').AsString,[]) then begin

            q2 := OpenRS('SELECT sf_get_stok(''%s'') AS stok',[q.FieldByName('kode_brg').AsString]);
            qbrg.Edit;

            // 02-10-2014
            //tbl_barang.FieldByName('stok').AsFloat := q2.FieldByName('stok').AsFloat;
            qbrg.FieldByName('stok').AsFloat := q.FieldByName('stok_koreksi').AsFloat;

            q2.Close;
            qbrg.Post;
          end;
          qbrg.Close;

          qhist := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''',[q.FieldByName('no_bukti').AsString]);

          qhist.Insert;
          qhist.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
          qhist.FieldByName('tanggal').AsDateTime := nxGrd.Cell[1,i].AsDateTime;
          qhist.FieldByName('kode_brg').AsString := q.FieldByName('kode_brg').AsString;
          qhist.FieldByName('tipe').AsString := 'IN_';
          qhist.FieldByName('qty').AsFloat := q.FieldByName('stok_koreksi').AsFloat;
          qhist.FieldByName('gudang').AsString := q.FieldByName('gudang').AsString;
          qhist.FieldByName('referensi').AsString := '';
          qhist.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
          qhist.FieldByName('user').AsString := q.FieldByName('user').AsString;
          qhist.FieldByName('user_dept').AsString := q.FieldByName('user_dept').AsString;
          qhist.FieldByName('hpp').AsFloat := q.FieldByname('hpp').AsFloat;
          qhist.FieldByName('unit_ktg').AsString := GetUnitKTG(q.FieldByname('kode_brg').AsString);
          qhist.Post;
          qhist.Close;
          q.Next;
        end;
        q.Close;
        //tbl.Close;
        //tbl_kor_head.Close;
        //tbl_barang.Close;
        //tbl_barang_det.Close;
      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_trskoreksi_head ' +
          'SET f_approval = 2, ' +
          'tgl_app = CURDATE() ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');
      end;
    end;

    dm.zConn.Commit;

    MsgBox('Approval Transaksi koreksi stok sudah disimpan.');

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

procedure TfrmApprovalSO.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalSO.nxGrdAfterEdit(Sender: TObject; ACol,
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
