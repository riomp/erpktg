unit unFrmApprovalPengQAC;

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
  TfrmApprovalPengQAC = class(TForm)
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
    NxDBTextColumn4: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    nxColNotApproval: TNxCheckBoxColumn;
    NxDateColumn1: TNxDateColumn;
    NxDBNumberColumn1: TNxDBTextColumn;
    NxDBNumberColumn2: TNxDBTextColumn;
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
  frmApprovalPengQACSO: TfrmApprovalPengQAC;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TFrmApprovalPengQAC.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TFrmApprovalPengQAC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TFrmApprovalPengQAC.FormCreate(Sender: TObject);
begin
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TFrmApprovalPengQAC.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;
end;

procedure TFrmApprovalPengQAC.btnApprovalClick(Sender: TObject);
var
  i: Integer;
  q, q2: TZQuery;
  tbl, tbl_kor_head,
  tbl_barang, tbl_barang_det : TZQuery;
  b1,b2: boolean;
begin
  if nxGrd.RowCount = 0 then Abort;

  b1 := false;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then b1 := True;
  end;
  if (b1 = False) then begin
    MsgBox('Lakukan pilihan untuk nomer transaksi yang akan di Approval.');
    Abort;
  end;

  try
    dm.zConn.StartTransaction;

    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trspengeluaranbb_head ' +
          'SET f_app_whl = 1, ' +
          'tgl_app_whl = CURDATE(), ' +
          'user_app_whl = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        //tbl := OpenTbl('tbl_history');
        //tbl_kor_head := OpenTbl('tbl_trskoreksi_head');
        //tbl_barang := OpenTbl('tbl_barang');
        //tbl_barang_det := OpenTbl('tbl_barang_det');

        {
        if tbl_kor_head.Locate('no_bukti', nxGrd.Cell[0,i].AsString, []) then begin
          tbl_kor_head.Edit;
          tbl_kor_head.FieldByName('tgl_adjust').AsDateTime := aplikasi.TanggalServer;
          tbl_kor_head.FieldByName('jam_adjust').AsDateTime := aplikasi.ServerTime;
          tbl_kor_head.Post;
        end;
        tbl_kor_head.Close;
        }

        q := OpenRS('SELECT a.*, b.user, b.user_dept FROM ' +
          'tbl_trspengeluaranbb_det a, tbl_trspengeluaranbb_head b WHERE ' +
          'a.no_bukti = b.no_bukti AND a.no_bukti = ''%s''',
          [nxGrd.Cell[0,i].AsString]);

        while not q.Eof do begin
          tbl_barang_det := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''%s''',
            [q.FieldByName('kode_brg').AsString, q.FieldByName('kode_gdg').AsString]);

          if tbl_barang_det.Locate('kode_brg;kode_gdg',
          VarArrayOf([q.FieldByName('kode_brg').AsInteger,
              q.FieldByName('kode_gdg').AsString]),[]) then
            tbl_barang_det.Edit
          else begin
            tbl_barang_det.Insert;
            tbl_barang_det.FieldByName('kode_gdg').AsString := q.FieldByName('kode_gdg').AsString;
          end;

          tbl_barang_det.FieldByName('stok').AsFloat :=
            tbl_barang_det.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
          tbl_barang_det.Post;
          tbl_barang_det.Close;
          tbl_barang_det.Free;

          tbl_barang := OpenRS('SELECT kode, stok FROM tbl_barang WHERE kode = %s',[q.FieldByName('kode_brg').AsString]);
          if tbl_barang.Locate('kode', q.FieldByName('kode_brg').AsInteger,[]) then begin
            tbl_barang.Edit;
            tbl_barang.FieldByName('stok').AsFloat :=
              tbl_barang.FieldByName('stok').AsFloat - q.FieldByName('qty').AsFloat;
            tbl_barang.Post;
          end;
          tbl_barang.Close;
          tbl_barang.Free;

          tbl := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [q.FieldByName('no_bukti').AsString]);
          tbl.Insert;
          tbl.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
          tbl.FieldByName('tanggal').AsDateTime := nxGrd.Cell[1,i].AsDateTime;
          tbl.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
          tbl.FieldByName('tipe').AsString := 'IN_';
          tbl.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
          tbl.FieldByName('gudang').AsString := q.FieldByName('kode_gdg').AsString;
          tbl.FieldByName('referensi').AsString := '';
          tbl.FieldByName('keterangan').AsString := '';
          tbl.FieldByName('user').AsString := q.FieldByName('user').AsString;
          tbl.FieldByName('user_dept').AsString := q.FieldByName('user_dept').AsString;
          tbl.FieldByName('no_so').AsString := q.FieldByName('no_so').AsString;
          tbl.FieldByName('no_spk').AsString := q.FieldByName('no_spk').AsString;
          tbl.Post;
          tbl.Close;
          tbl.Free;

          q.Next;
        end;
        q.Close;
      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        // do nothing
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

procedure TFrmApprovalPengQAC.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmApprovalPengQAC.nxGrdAfterEdit(Sender: TObject; ACol,
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
