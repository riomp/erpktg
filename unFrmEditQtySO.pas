unit unFrmEditQtySO;

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
  dxSkinXmas2008Blue, StdCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, cxTextEdit,
  cxLabel, ZDataset;

type
  TfrmEditQtySO = class(TForm)
    cxLabel1: TcxLabel;
    cxtNoSO: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxtCustomer: TcxTextEdit;
    nxGrd: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxNumberColumn;
    NxTextColumn4: TNxNumberColumn;
    btnSimpan: TButton;
    btnKeluar: TButton;
    NxNumberColumn1: TNxNumberColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nxGrdBeforeEdit(Sender: TObject; ACol, ARow: Integer;
      var Accept: Boolean);
  private
    mNoSO: string;
    mKodeBrg: string;
  public
    property NoSO: string write mNoSO;
    property KodeBrg: string write mKodeBrg;
  end;

var
  frmEditQtySO: TfrmEditQtySO;

implementation

uses unAplikasi, unDm, unTools;

{$R *.dfm}

procedure TfrmEditQtySO.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditQtySO.FormShow(Sender: TObject);
var
  q, q2: TZQuery;
  i: Integer;
begin
  q := OpenRS('SELECT * FROM v_so_head WHERE no_bukti = ''%s''',
    [mNoSO]);
  cxtNoSO.Text := mNoSO;
  cxtCustomer.Text := q.FieldByName('nama').AsString;
  q.Close;

  q := OpenRS('SELECT * FROM v_so_det WHERE no_bukti = ''%s'' AND kode_brg = %s',
    [mNoSO, mKodeBrg]);
  while not q.Eof do begin
    with nxGrd do begin
      i := AddRow();
      Cell[0,i].AsString := q.FieldByName('kode_brg').AsString;
      Cell[1,i].AsString := q.FieldByName('deskripsi').AsString;
      Cell[2,i].AsFloat := q.FieldByName('qty_g02').AsFloat;
      Cell[3,i].AsFloat := q.FieldByName('qty').AsFloat;
      if Cell[2,i].AsFloat > Cell[3,i].AsFloat then
        Cell[3,i].Color := clRed;
      Cell[4,i].AsFloat := q.FieldByName('qty_g02').AsFloat;
    end;
    q.Next;
  end;
  q.Close;
end;

procedure TfrmEditQtySO.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = 3 then begin
    with nxGrd do begin
      if Cell[3,ARow].AsFloat > Cell[2,ARow].AsFloat then
        Cell[3,ARow].AsFloat := Cell[2,ARow].AsFloat;
    end;
  end;
end;

procedure TfrmEditQtySO.btnSimpanClick(Sender: TObject);
var
  q: TZQuery;
  i: integer;
  tbl: TZTable;
begin
  try
    dm.zConn.StartTransaction;
    tbl := OpenTbl('tbl_so_det');
    for i := 0 to nxGrd.RowCount - 1 do begin

      if tbl.Locate('no_bukti,kode_brg,qty',
        VarArrayOf([cxtNoSO.Text, nxGrd.Cell[0,i].AsInteger, nxGrd.Cell[3,i].AsFloat]),[]) then begin
        tbl.Edit;
        tbl.FieldByName('qty_lama').AsFloat := tbl.FieldByName('qty').AsFloat;
        tbl.FieldByName('qty').AsFloat := nxGrd.Cell[4,i].AsFloat;
        tbl.FieldByName('user_edit').AsString := Aplikasi.NamaUser;
        tbl.FieldByName('tgl_jam_edit').AsDateTime := Aplikasi.NowServer;
        tbl.FieldByName('jenis_edit').AsString := 'SPMB';
        tbl.Post;
      end;

      //dm.zConn.ExecuteDirect(
      //  Format('UPDATE tbl_so_det SET qty = %s WHERE no_bukti = ''%s'' ' +
      //    'AND kode_brg = %s',
      //    [nxGrd.Cell[3,i].AsString, cxtNoSO.Text, nxGrd.Cell[0,i].AsString]
      //  )
      //);
      
    end;
    tbl.Close;
    dm.zConn.Commit;
    MsgBox('Update jumlah pesanan SO berhasil.');
    Close;
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
      dm.zConn.Rollback;
    end;
  end;
end;

procedure TfrmEditQtySO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmEditQtySO.nxGrdBeforeEdit(Sender: TObject; ACol,
  ARow: Integer; var Accept: Boolean);
begin
  if nxGrd.Cell[3,ARow].AsFloat >= nxGrd.Cell[2,ARow].AsFloat then
    Abort;
end;

end.
