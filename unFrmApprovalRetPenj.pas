unit unFrmApprovalRetPenj;

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
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, IdMessage, IdText,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP,
  cxMaskEdit, cxSpinEdit, cxTextEdit, cxMemo, ExtCtrls,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, IdAttachmentFile,
  kbmMemTable;

type
  TfrmApprovalRetPenj = class(TForm)
    zqrKorHead: TZReadOnlyQuery;
    dsKorHead: TDataSource;
    nxGrd: TNextGrid;
    nxDC: TNxDataCellSource;
    TNxTextColumn1: TNxTextColumn;
    TNxDateColumn1: TNxDateColumn;
    nxColUser: TNxTextColumn;
    TNxTextColumn3: TNxTextColumn;
    nxColApproval: TNxCheckBoxColumn;
    btnApproval: TButton;
    NextDBGrid1: TNextDBGrid;
    zqrDetKor: TZReadOnlyQuery;
    dsDetKor: TDataSource;
    NxDBTextColumn1: TNxDBTextColumn;
    NxDBTextColumn2: TNxDBTextColumn;
    NxDBNumberColumn1: TNxDBNumberColumn;
    NxDBTextColumn5: TNxDBTextColumn;
    btnBatal: TButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    nxColNotApproval: TNxCheckBoxColumn;
    NxDBTextColumn6: TNxDBTextColumn;
    NxDBTextColumn7: TNxDBTextColumn;
    NxDBTextColumn4: TNxDBTextColumn;
    NxDBTextColumn3: TNxDBTextColumn;
    nxColJenisRetur: TNxTextColumn;
    idSMTP: TIdSMTP;
    nxColJenisRetur2: TNxTextColumn;
    NxDBTextColumn8: TNxDBTextColumn;
    nxColGdg: TNxDBComboBoxColumn;
    nxGrdDet: TNextGrid;
    nxColKodeBrg: TNxTextColumn;
    nxColDesk: TNxTextColumn;
    nxColNmCust: TNxTextColumn;
    nxColNoSJ: TNxTextColumn;
    nxColNoSPMB: TNxTextColumn;
    nxColQtyRetur: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    nxColKet: TNxTextColumn;
    nxColGudang: TNxComboBoxColumn;
    nxColJenis: TNxTextColumn;
    nxColNoSO: TNxTextColumn;
    nxColBuatLKM: TNxCheckBoxColumn;
    tmpTbl: TkbmMemTable;
    tmpTblno_so: TStringField;
    tmpTbldeskripsi_ks: TStringField;
    pnlLKM: TPanel;
    cxLabel3: TcxLabel;
    cxmDeskLKM: TcxMemo;
    tmpTblkode_brg: TStringField;
    tmpTblqty: TFloatField;
    cxLabel4: TcxLabel;
    cxsQtyLKM: TcxSpinEdit;
    btnSimpanLKM: TButton;
    btnBatalLKM: TButton;
    cxLabel5: TcxLabel;
    zqrBagian: TZReadOnlyQuery;
    dsBagian: TDataSource;
    cxlDept: TcxLookupComboBox;
    tmpTbldept: TStringField;
    tmpTblmgr: TStringField;
    tmpTblemail: TStringField;
    tmpTbldeskripsi: TStringField;
    btnTambahFoto: TButton;
    lblJmlImage: TcxLabel;
    NxTextColumn1: TNxTextColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure nxGrdCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure btnApprovalClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure nxGrdAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure FormShow(Sender: TObject);
    procedure idSMTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure FormCreate(Sender: TObject);
    procedure pnlLKMExit(Sender: TObject);
    procedure nxGrdDetAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnBatalLKMClick(Sender: TObject);
    procedure btnSimpanLKMClick(Sender: TObject);
    procedure btnTambahFotoClick(Sender: TObject);
  private
    lstG03, lstImage: TStringList;
    procedure SendEMail(lstEmail, lstNoBukti, lstApp: TStringList);
    procedure ProsesLKM;
  public
    procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  frmApprovalRetPenj: TfrmApprovalRetPenj;

implementation

uses unDm, unTools, unAplikasi, NxCells, unFrmUploadImageRK;

{$R *.dfm}

procedure TfrmApprovalRetPenj.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
end;

procedure TfrmApprovalRetPenj.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmApprovalRetPenj.nxGrdCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  i: integer;
begin
  zqrDetKor.Close;
  zqrDetKor.ParamByName('no_trans').AsString := nxGrd.Cell[0,ARow].AsString;
  zqrDetKor.Open;

  nxGrdDet.ClearRows;
  while not zqrDetKor.Eof do begin
    i := nxGrdDet.AddRow();
    nxGrdDet.Cell[nxColKodeBrg.Index,i].AsString := zqrDetKor.FieldByName('kode_brg').AsString;
    nxGrdDet.Cell[nxColDesk.Index,i].AsString := zqrDetKor.FieldByName('deskripsi').AsString;
    nxGrdDet.Cell[nxColGudang.Index,i].AsString := '';
    nxGrdDet.Cell[nxColNmCust.Index,i].AsString := zqrDetKor.FieldByName('nama').AsString;
    nxGrdDet.Cell[nxColNoSJ.Index,i].AsString := zqrDetKor.FieldByName('no_sj').AsString;
    nxGrdDet.Cell[nxColNoSPMB.Index,i].AsString := zqrDetKor.FieldByName('no_spmb').AsString;
    nxGrdDet.Cell[nxColQtyRetur.Index,i].AsFloat := zqrDetKor.FieldByName('qty').AsFloat;
    nxGrdDet.Cell[nxColSatuan.Index,i].AsString := zqrDetKor.FieldByName('satuan').AsString;
    nxGrdDet.Cell[nxColKet.Index,i].AsString := zqrDetKor.FieldByName('keterangan').AsString;
    nxGrdDet.Cell[nxColJenis.Index,i].AsString := zqrDetKor.FieldByName('jenis_retur').AsString;
    nxGrdDet.Cell[nxColNoSO.Index,i].AsString := zqrDetKor.FieldByName('no_so').AsString;
    zqrDetKor.Next;
  end;
  
end;

procedure TfrmApprovalRetPenj.btnApprovalClick(Sender: TObject);
var
  i,j: Integer;
  q, q2, qsj_det, qu, qb, qrd, tbl, tbl_barang: TZQuery;
  tbl_kor_head, tbl_barang_det : TZTable;

  b,b1,b2: boolean;
  lstEmail, lstNoBukti, lstApp: TStringList;
begin
  if nxGrd.RowCount = 0 then Abort;

  {$DEFINE NOTOLD}
  {$IFDEF OLD}
  // cek apakah masih ada gudang yang kosong
  b := True;
  for i := 0 to nxGrdDet.RowCount - 1 do begin
    if Trim(nxGrdDet.Cell[nxColGudang.Index,i].AsString) = '' then begin
      b := False;
      Break;
    end;
  end;
  if not b then begin
    MsgBox('Pilihan gudang masih ada yang kosong.');
    Abort;
  end;
  {$ENDIF}

  b1 := false;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then b1 := True;
  end;
  b2 := False;
  for i := 0 to nxGrd.RowCount - 1 do begin
    if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then b2 := True;
  end;
  if (b1 = False) and (b2 = False) then begin
    MsgBox('Lakukan pilihan untuk nomer retur yang akan di Approval atau tidak Approval.');
    lstImage.Clear;
    Abort;
  end;

  try
    dm.zConn.StartTransaction;

    lstEmail := TStringList.Create;
    lstNoBukti := TStringList.Create;
    lstApp := TStringList.Create;

    {$DEFINE NOTOLD}
    {$IFDEF OLD}
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trsreturpenj_head ' +
          'SET f_approval = 1, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
        lstNoBukti.Add(nxGrd.Cell[TNxTextColumn1.Index,i].AsString);
        lstEmail.Add(qu.FieldByName('email').AsString);
        lstApp.Add('APPROVED');
        qu.Close;

        //tbl := OpenTbl('tbl_history');
        tbl := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s''', [nxGrd.Cell[0,i].AsString]);
        //tbl_barang := OpenTbl('tbl_barang');
        tbl_barang := OpenRS('SELECT kode, stok FROM tbl_barang');
        tbl_barang_det := OpenTbl('tbl_barang_det');

        //q := OpenRS('SELECT a.*, b.user, b.user_dept, b.jenis_retur FROM ' +
        //  'tbl_trsreturpenj_det a, tbl_trsreturpenj_head b WHERE ' +
        //  'a.no_bukti = b.no_bukti AND a.no_bukti = ''%s''',
        //  [nxGrd.Cell[0,i].AsString]);

        qrd := OpenRS('SELECT * FROM tbl_trsreturpenj_det WHERE no_bukti = ''%s''',
          [nxGrd.Cell[TNxTextColumn1.Index,i].AsString]);

        //while not q.Eof do begin
        for j := 0 to nxGrdDet.RowCount - 1 do begin

          if tbl_barang_det.Locate('kode_brg;kode_gdg',
            VarArrayOf([nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger,
            //VarArrayOf([q.FieldByName('kode_brg').AsInteger,
            //  q.FieldByName('kode_gdg').AsString]),[]) then
              nxGrdDet.Cell[nxColGudang.Index,j].AsString]),[]) then
            tbl_barang_det.Edit
          else begin
            tbl_barang_det.Insert;
            //tbl_barang_det.FieldByName('kode_gdg').AsString := q.FieldByName('kode_gdg').AsString;
            tbl_barang_det.FieldByName('kode_gdg').AsString := nxGrdDet.Cell[nxColGudang.Index,j].AsString;
          end;
          tbl_barang_det.FieldByName('stok').AsFloat :=
            //tbl_barang.FieldByName('stok').AsFloat + q.FieldByName('qty').AsFloat;
            tbl_barang.FieldByName('stok').AsFloat + nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
          tbl_barang_det.Post;

          //if tbl_barang.Locate('kode', q.FieldByName('kode_brg').AsInteger,[]) then begin
          if tbl_barang.Locate('kode', nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger,[]) then begin
            q2 := OpenRS('SELECT sf_get_stok(%s) AS stok',
              //[q.FieldByName('kode_brg').AsString]);
              [nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);
            tbl_barang.Edit;
            tbl_barang.FieldByName('stok').AsFloat := q2.FieldByName('stok').AsFloat;
            q2.Close;
            tbl_barang.Post;
          end;

          // update gudang di table detail retur
          if qrd.Locate('no_bukti;kode_brg',
            VarArrayOf([nxGrd.Cell[TNxTextColumn1.Index,i].AsString, nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger]),[]) then begin
            qrd.Edit;
            qrd.FieldByName('kode_gdg').AsString := nxGrdDet.Cell[nxColGdg.Index,j].AsString;
            qrd.Post;
          end;

          tbl.Insert;
          //tbl.FieldByName('no_bukti').AsString := q.FieldByName('no_bukti').AsString;
          tbl.FieldByName('no_bukti').AsString := nxGrd.Cell[0,i].AsString;
          tbl.FieldByName('tanggal').AsDateTime := nxGrd.Cell[1,i].AsDateTime;
          tbl.FieldByName('jam').AsDateTime := aplikasi.ServerTime;
          //tbl.FieldByName('kode_brg').AsInteger := q.FieldByName('kode_brg').AsInteger;
          tbl.FieldByName('kode_brg').AsInteger := nxGrdDet.Cell[nxColKodeBrg.Index,j].AsInteger;
          tbl.FieldByName('tipe').AsString := 'IN_';
          //tbl.FieldByName('qty').AsFloat := q.FieldByName('qty').AsFloat;
          tbl.FieldByName('qty').AsFloat := nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
          //tbl.FieldByName('gudang').AsString := q.FieldByName('kode_gdg').AsString;
          tbl.FieldByName('gudang').AsString := nxGrdDet.Cell[nxColGudang.Index,j].AsString;
          //tbl.FieldByName('no_sj').AsString := q.FieldByName('no_sj').AsString;
          tbl.FieldByName('no_sj').AsString := nxGrdDet.Cell[nxColNoSJ.Index,j].AsString;
          tbl.FieldByName('no_so').AsString := nxGrdDet.Cell[nxColNoSO.Index,j].AsString;
          tbl.FieldByName('referensi').AsString := '';
          //tbl.FieldByName('keterangan').AsString := q.FieldByName('keterangan').AsString;
          tbl.FieldByName('keterangan').AsString := nxGrdDet.Cell[nxColKet.Index,j].AsString;
          tbl.FieldByName('user').AsString := Aplikasi.NamaUser; //q.FieldByName('user').AsString;
          tbl.FieldByName('user_dept').AsString := aplikasi.UserDept; //q.FieldByName('user_dept').AsString;
          tbl.FieldByName('tgl_input').AsDateTime := aplikasi.NowServer;
          tbl.Post;

          // jika gudang adalah G03 maka
          if nxGrdDet.Cell[nxColGudang.Index, j].AsString = 'G03' then begin
            lstG03.Add(nxGrd.Cell[0,i].AsString + ';' +
              nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString + ';' +
              nxGrdDet.Cell[nxColDesk.Index,j].AsString + ';' +
              nxGrdDet.Cell[nxColQtyRetur.Index,j].AsString);
          end;

          // jika jenis retur adalah retur administrasi maka
          // update qty sj
          // so dibuka kembali
          //  if q.FieldByName('jenis_retur').AsString = 'RETUR ADMINISTRASI' then begin

          //if q.FieldByName('jenis_retur').AsString = '0' then begin
          // SO Terbuka
          if nxGrd.Cell[nxColJenisRetur2.Index, i].AsString = '0' then begin

            {
            qsj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s'' ' +
              'AND kode_brg = %s',
              //[q.FieldByName('no_sj').AsString, q.FieldByName('kode_brg').AsString]);
              [nxGrdDet.Cell[nxColNoSJ.Index, j].AsString,nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);

            if not qsj_det.IsEmpty then begin
              qsj_det.Edit;
              qsj_det.FieldByName('qty').AsFloat :=
                //qsj_det.FieldByName('qty').AsFloat - q.FieldByName('qty').AsFloat;
                qsj_det.FieldByName('qty').AsFloat - nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
              qsj_det.Post;


              dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 0 ' +
                //'WHERE no_bukti = ''' + q.FieldByName('no_so').AsString + '''');
                'WHERE no_bukti = ''' + nxGrdDet.Cell[nxColNoSO.Index,j].AsString + '''');
            end;
            qsj_det.Close;
            }

            // 11-11-2014 08:59
            // * QTY HISTORY TIDAK PERLU DI UPDATE
            // update qty history
            //qsj_det := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s'' ' +
            //  'AND kode_brg = %s',
            //  [nxGrdDet.Cell[nxColNoSJ.Index, j].AsString, nxGrdDet.Cell[nxColKodeBrg.Index, j].AsString]);
            //if not qsj_det.IsEmpty then begin
            //  qsj_det.Edit;
            //  qsj_det.FieldByName('qty').AsFloat :=
            //    qsj_det.FieldByName('qty').AsFloat - nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
            //  qsj_det.Post;

              {
              qb := OpenRS('SELECT * FROM tbl_barang WHERE kode = %s',[nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);
              qb.Edit;
              qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat + nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
              qb.Post;
              qb.Close;

              qb := OpenRS('SELECT * FROM tbl_barang_det WHERE kode_brg = %s AND kode_gdg = ''G02''',[nxGrdDet.Cell[nxColKodeBrg.Index,j].AsString]);
              qb.Edit;
              qb.FieldByName('stok').AsFloat := qb.FieldByName('stok').AsFloat + nxGrdDet.Cell[nxColQtyRetur.Index,j].AsFloat;
              qb.Post;
              qb.Close;
              }

            //end;
            //qsj_det.Close;

            // UPDATE status komplit SO
            dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 0 ' +
              'WHERE no_bukti = ''' + nxGrdDet.Cell[nxColNoSO.Index,j].AsString + '''');

          end
          // else if q.FieldByName('jenis_retur').AsString = '1' then begin
          // SO Tertutup
          else if nxGrd.Cell[nxColJenisRetur2.Index, i].AsString = '1' then begin

            {
            qsj_det := OpenRS('SELECT * FROM tbl_sj_det WHERE no_bukti = ''%s'' ' +
              'AND kode_brg = %s',
              [q.FieldByName('no_sj').AsString, q.FieldByName('kode_brg').AsString]);

            if not qsj_det.IsEmpty then begin
              qsj_det.Edit;
              qsj_det.FieldByName('qty').AsFloat :=
                qsj_det.FieldByName('qty').AsFloat - q.FieldByName('qty').AsFloat;
              qsj_det.Post;

              dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 0 ' +
                'WHERE no_bukti = ''' + q.FieldByName('no_so').AsString + '''');
            end;
            qsj_det.Close;

            // update qty history
            qsj_det := OpenRS('SELECT * FROM tbl_history WHERE no_bukti = ''%s'' ' +
              'AND kode_brg = %s',
              [q.FieldByName('no_sj').AsString, q.FieldByName('kode_brg').AsString]);
            if not qsj_det.IsEmpty then begin
              qsj_det.Edit;
              qsj_det.FieldByName('qty').AsFloat :=
                qsj_det.FieldByName('qty').AsFloat - q.FieldByName('qty').AsFloat;
              qsj_det.Post;
            end;
            qsj_det.Close;
            }

          end
          else if nxGrd.Cell[nxColJenisRetur2.Index, i].AsString = '2' then begin
            dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 0 ' +
                'WHERE no_bukti = ''' + nxGrdDet.Cell[nxColNoSO.Index,j].AsString + '''');
          end;

          //q.Next;

          //insert ke tabel lkm
          //sNoLKM := GetLastFak('lkm');
          //UpdateFaktur(Copy(sNoLKM,1,8));

          
        end;
        //q.Close;
        tbl.Close;
        tbl_barang.Close;
        tbl_barang_det.Close;
        nxGrdDet.ClearRows;
      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_trskoreksi_head ' +
          'SET f_approval = 2, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
          lstNoBukti.Add(nxGrd.Cell[TNxTextColumn1.Index,i].AsString);
          lstEmail.Add(qu.FieldByName('email').AsString);
          lstApp.Add('APPROVED');
        qu.Close;

      end;
    end;
    {$ELSE}
    for i := 0 to nxGrd.RowCount - 1 do begin
      if nxGrd.Cell[nxColApproval.Index,i].AsBoolean then begin

        dm.zConn.ExecuteDirect('UPDATE tbl_trsreturpenj_head ' +
          'SET f_approval = 1, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        // jika SO terbuka, maka update f_completed = 0
        if Pos('SO TERBUKA',nxGrd.Cell[nxColJenisRetur.Index, i].AsString) > 0 then begin
          qu := OpenRS('SELECT * FROM tbl_trsreturpenj_det WHERE no_bukti = ''%s''',
            [nxGrd.Cell[TNxTextColumn1.Index, i].AsString]);
          while not qu.Eof do begin
            dm.zConn.ExecuteDirect('UPDATE tbl_so_head SET f_completed = 0 WHERE no_bukti = ''' +
              qu.FieldByName('no_so').AsString + '''');
            qu.Next;  
          end;
          qu.Close;
        end;

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
        lstNoBukti.Add(nxGrd.Cell[TNxTextColumn1.Index,i].AsString);
        lstEmail.Add(qu.FieldByName('email').AsString);
        lstApp.Add('APPROVED');
        qu.Close;

      end
      else if nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean then begin
        dm.zConn.ExecuteDirect('UPDATE tbl_trskoreksi_head ' +
          'SET f_approval = 2, ' +
          'tgl_app = NOW(), ' +
          'user_app = ''' + aplikasi.NamaUser + ''' ' +
          'WHERE no_bukti = ''' +
          nxGrd.Cell[TNxTextColumn1.Index,i].AsString + '''');

        qu := OpenRS('SELECT email FROM tbl_user WHERE nama = ''%s''',
          [nxGrd.Cell[nxColUser.Index,i].AsString]);
          lstNoBukti.Add(nxGrd.Cell[TNxTextColumn1.Index,i].AsString);
          lstEmail.Add(qu.FieldByName('email').AsString);
          lstApp.Add('TIDAK APPROVED');
        qu.Close;

      end;
    end;
    {$ENDIF}

    dm.zConn.Commit;

    ProsesLKM;

    MsgBox('Approval Transaksi Retur Penjualan sudah disimpan.');

    SendEMail(lstEmail, lstNoBukti, lstApp);

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
  nxGrdDet.ClearRows;
end;

procedure TfrmApprovalRetPenj.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmApprovalRetPenj.nxGrdAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  i: integer;
  q: TZQuery;
begin
  if ACol = nxColApproval.Index then begin
    if nxGrd.Cell[nxColApproval.Index, ARow].AsBoolean then begin
      q := OpenRS('SELECT no_spbb FROM tbl_trsreturpenj_head WHERE no_bukti = ''%s''',
        [nxGrd.Cell[TNxTextColumn1.Index, ARow].AsString]);
      if q.FieldByName('no_spbb').IsNull then begin
        MsgBox('Retur ini belum dibuatkan SPBB.');
        nxGrd.Cell[nxColApproval.Index, ARow].AsBoolean := False;
        nxGrd.Cell[nxColNotApproval.Index, ARow].AsBoolean := False;
      end
      else begin
        nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean := False;
      end;
    end;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if i <> ARow then begin
        nxGrd.Cell[nxColApproval.Index,i].AsBoolean := False;
      end;
    end;
  end;
  if ACol = nxColNotApproval.Index then begin
    if nxGrd.Cell[nxColNotApproval.Index,ARow].AsBoolean then
      nxGrd.Cell[nxColApproval.Index,ARow].AsBoolean := False;
    for i := 0 to nxGrd.RowCount - 1 do begin
      if i <> ARow then begin
        nxGrd.Cell[nxColNotApproval.Index,i].AsBoolean := False;
      end;
    end;
  end;
end;

procedure TfrmApprovalRetPenj.FormShow(Sender: TObject);
begin
  zqrKorHead.Open;
  nxDC.Execute;
end;

procedure TfrmApprovalRetPenj.idSMTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
  MsgBox('Email Approval Transaksi Retur Penjualan sudah dikirim.');
end;

procedure TfrmApprovalRetPenj.SendEMail(lstEmail, lstNoBukti, lstApp: TStringList);
var
  email : TIdMessage;
  lst, lstTmp: TStringList;
  bdy: TIdText;
  i: Integer;
  sNoRetur, sKode, sQty: string;
  qq, qqq: TZQuery;
begin

  idSMTP.AuthType := satNone;
  idSMTP.Host := Aplikasi.ServerSMTP;
  idSMTP.Port     := 25;
  idSMTP.UserName := aplikasi.EmailUser;
  idSMTP.Password := '';

  email := TIdMessage.Create(nil);
  try
    email.ContentType := 'multipart/mixed';
    email.From.Address := 'mda@sdp.mail';
    email.From.Name := 'MDA';

    if aplikasi.debug then begin
      email.Recipients.EMailAddresses := 'yosef@sdp.mail';
    end
    else begin

      qqq := OpenRS('SELECT b.email email FROM tbl_trsreturpenj_head a ' +
        'LEFT JOIN tbl_user b ON a.user = b.nama');
      if not qqq.IsEmpty then
        lstEmail.Add(qqq.FieldByName('email').AsString);
      qqq.Close;
      qqq.Free;

      lstEmail.Add('enny@sdp.mail');
      lstEmail.Add('eko@sdp.mail');
      lstEmail.Add('andri@sdp.mail');
      lstEmail.Add('sunanto@sdp.mail');
      lstEmail.Add('tiwi@sdp.mail');
      lstEmail.Add('dwiharjo@sdp.mail');
      lstEmail.Add('yosef.servianto@sdp.mail');
      lstEmail.Add('marion@sdp.mail');
      lstEmail.Add('ferry@sdp.mail');
      lstEmail.Add('saiful@sdp.mail');
      lstEmail.Add('rio@sdp.mail');
      lstEmail.Add('dwiharjo@sdp.mail');
      lstEmail.Add('vivi@sdp.mail');
      
      email.Recipients.EMailAddresses := lstEmail.CommaText;
    end;

    email.Subject := 'Konfirmasi Approval Retur Penjualan No. Transaksi : ' + lstNoBukti.CommaText;

    lst := TStringList.Create;
    lst.Add('<html>');
    lst.Add('<head>');
    lst.Add('</head>');
    lst.Add('<body>');
    lst.Add('<br>');

    lst.Add('Transaksi Retur Penjualan dengan nomor :');
    lst.Add('<br>');

    for i := 0 to lstNoBukti.Count - 1 do begin
      lst.Add('<br>');
      lst.Add('<b>' + lstNoBukti.Strings[i] + ' : ' + lstApp.Strings[i] + '</b>');
      lst.Add('<br>');
    end;

    lst.Add('<br>');
    lst.Add('<br>');
    lst.Add('</body>');
    lst.Add('</html>');

    bdy := TIdText.Create(email.MessageParts, lst);
    bdy.ContentType := 'text/html';

    idSMTP.Connect;
    try
      idSMTP.Send(email);
    finally
      idSMTP.Disconnect;
    end;
  finally
    email.Free;
  end;

  if lstG03.Count > 0 then begin
    email := TIdMessage.Create(nil);
    try
      email.ContentType := 'multipart/mixed';
      email.From.Address := 'mda@sdp.mail';
      email.From.Name := 'MDA';

      if aplikasi.debug then begin
        email.Recipients.EMailAddresses := 'yosef@sdp.mail';
      end
      else begin
        lstEmail.Clear;
        lstEmail.Add('enny@sdp.mail');
        lstEmail.Add('eko@sdp.mail');
        lstEmail.Add('andri@sdp.mail');
        lstEmail.Add('sunanto@sdp.mail');
        lstEmail.Add('dwiharjo@sdp.mail');
        lstEmail.Add('yosef.servianto@sdp.mail');
        lstEmail.Add('marion@sdp.mail');
        lstEmail.Add('ferry@sdp.mail');
        lstEmail.Add('saiful@sdp.mail');
        lstEmail.Add('rio@sdp.mail');
        lstEmail.Add('dwiharjo@sdp.mail');
        lstEmail.Add('vivi@sdp.mail');
        email.Recipients.EMailAddresses := lstEmail.CommaText;
      end;

      email.Subject := 'Mutasi Masuk G-KAR (G. Karantina)';

      lst := TStringList.Create;
      lst.Add('<html>');
      lst.Add('<head>');
      lst.Add('</head>');
      lst.Add('<body>');
      lst.Add('<br>');
      //lst.Add('<pre>');

      lst.Add('Terdapat barang retur di G-KAR (Gudang Karantina) sebagai berikut : ');
      lst.Add('<br>');

      lstTmp := TStringList.Create;
      for i := 0 to lstG03.Count - 1 do begin
        SplitStr(lstG03.Strings[i], ';', lstTmp);
        lst.Add('<br>');
        lst.Add('<b>No. Retur       : ' + lstTmp.Strings[0] + '</b>');
        lst.Add('<br>');
        lst.Add('<b>Kode Brg.       : ' + lstTmp.Strings[1] + '</b>');
        lst.Add('<br>');
        lst.Add('<b>Deskripsi       : ' + lstTmp.Strings[2] + '</b>');
        lst.Add('<br>');
        lst.Add('<b>Qty.            : ' + lstTmp.Strings[3] + '</b>');
        lst.Add('<br>');
        lstTmp.Clear;
      end;

      lst.Add('<br>');
      lst.Add('Mohon untuk segera di tindak lanjuti hari ini.');
      lst.Add('<br>');
      lst.Add('<br>');
      //lst.Add('</pre>');
      lst.Add('</body>');
      lst.Add('</html>');

      bdy := TIdText.Create(email.MessageParts, lst);
      bdy.ContentType := 'text/html';

      idSMTP.Connect;
      try
        idSMTP.Send(email);
      finally
        idSMTP.Disconnect;
      end;
    finally
      email.Free;
    end;
  end;

end;

procedure TfrmApprovalRetPenj.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  q := OpenRS('SELECT kode FROM tbl_gudang WHERE f_aktif = 1 ORDER BY kode');
  while not q.Eof do begin
    nxColGdg.Items.Add(q.FieldByName('kode').AsString);
    nxColGudang.Items.Add(q.FieldByName('kode').AsString);
    q.Next;
  end;
  q.Close;

  nxGrdDet.Top := NextDBGrid1.Top;
  nxGrdDet.Left := NextDBGrid1.Left;
  nxGrdDet.Width := NextDBGrid1.Width;
  //nxGrdDet.Height := NextDBGrid1.Height;

  lstG03 := TStringList.Create;
  {$DEFINE NEW}
  {$IFDEF NEW}
  nxGrdDet.Columns[nxColGudang.Index].visible := False;
  {$ELSE}
  nxGrdDet.Columns[nxColGudang.Index].visible := True;
  {$ENDIF}

  pnlLKM.Visible := False;
  zqrBagian.Open;
  tmpTbl.Open;
  lstImage := TStringList.Create;
end;

procedure TfrmApprovalRetPenj.pnlLKMExit(Sender: TObject);
begin
  pnlLKM.Visible := False;
end;

procedure TfrmApprovalRetPenj.nxGrdDetAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
begin
  if ACol = nxColBuatLKM.Index then begin
    if nxGrdDet.Cell[nxColBuatLKM.Index, ARow].AsBoolean then begin
      pnlLKM.Visible := True;
      cxmDeskLKM.SetFocus;
      cxsQtyLKM.Value := nxGrdDet.Cell[nxColQtyRetur.Index, ARow].AsFloat;
      cxsQtyLKM.Properties.MaxValue := nxGrdDet.Cell[nxColQtyRetur.Index, ARow].AsFloat;
      cxsQtyLKM.Properties.MinValue := 1;
    end
    else begin
      pnlLKM.Visible := False;
      if tmpTbl.Locate('no_so', nxGrdDet.Cell[nxColNoSO.Index, ARow].AsString,[]) then
        tmpTbl.Delete;
    end;
  end;
end;

procedure TfrmApprovalRetPenj.btnBatalLKMClick(Sender: TObject);
var
  r,c: Integer;
begin
  r := nxGrdDet.SelectedRow;
  nxGrdDet.Cell[nxColBuatLKM.Index, r].AsBoolean := False;
  cxmDeskLKM.Lines.Text := '';
  cxsQtyLKM.Value := 0;
  cxlDept.Text := '';
  pnlLKM.Visible := False;
end;

procedure TfrmApprovalRetPenj.btnSimpanLKMClick(Sender: TObject);
var
  r: Integer;
begin
  r := nxGrdDet.SelectedRow;
  with tmpTbl do begin
    if Locate('no_so', nxGrdDet.Cell[nxColNoSO.Index, r].AsString, []) then begin
      Delete;
    end;
    Insert;
    FieldByName('no_so').AsString := nxGrdDet.Cell[nxColNoSO.Index, r].AsString;
    FieldByName('deskripsi_ks').AsString := cxmDeskLKM.Lines.Text;
    FieldByName('kode_brg').AsString := nxGrdDet.Cell[nxColKodeBrg.Index, r].AsString;
    FieldByName('deskripsi').AsString := nxGrdDet.Cell[nxColDesk.Index, r].AsString;
    FieldByName('qty').AsFloat := cxsQtyLKM.Value;
    FieldByName('dept').AsString := cxlDept.Text;
    FieldByName('mgr').AsString := zqrBagian.FieldByName('manager').AsString;
    FieldByName('email').AsString := zqrBagian.FieldByName('email').AsString;
    Post;
  end;
  cxmDeskLKM.Lines.Text := '';
  cxsQtyLKM.Value := 0;
  cxlDept.Text := '';
  pnlLKM.Visible := False;
end;

procedure TfrmApprovalRetPenj.ProsesLKM;
var
  q, qbrg, qemail, qcust, qimg: TZQuery;
  sNoTrs: string;
  email : TIdMessage;
  lstBody: TStringList;
  bdy: TIdText;
  aRow, i: Integer;
  img: TImage;
begin
  if not tmpTbl.IsEmpty then begin
    try
      dm.zConn.StartTransaction;
      aRow := nxGrd.SelectedRow;
      tmpTbl.First;
      while not tmpTbl.Eof do begin
        sNoTrs := GetLastFak('lkm');
        UpdateFaktur(Copy(sNoTrs,1,8));
        q := OpenRS('SELECT * from tbl_lkm WHERE no_bukti = ''%s''',[sNoTrs]);
        with q do begin
          Insert;
          FieldByName('no_bukti').AsSTring := sNoTrs;
          FieldByName('no_so').AsString := tmpTbl.FieldByName('no_so').AsString;

          //qcust := OpenRS('select * from tbl_so_head where no_bukti='%s'',[trim(tmpTbl.FieldByName('no_so').AsString)]);
          //FieldByName('kode_cust').AsString := qcust.FieldByName('kode_customer').AsString;
          //qcust.Close;

          FieldByName('kode_brg').AsString := tmpTbl.FieldByName('kode_brg').AsString;
          FieldByName('tanggal').AsDateTime := aplikasi.TanggalServer;
          qbrg := OpenRS('select deskripsi,satuan,kategori from tbl_barang where kode = ''%s''',[tmpTbl.FieldByName('kode_brg').AsString]);
          FieldByName('kategori_barang').AsString := qbrg.FieldByName('kategori').AsString;
          FieldByName('satuan').AsString := qbrg.FieldByName('satuan').AsString;

          FieldByName('deskripsi_ks').AsString := tmpTbl.FieldByName('deskripsi_ks').AsString;
          FieldByName('jenis_ks').AsString := 'PRODUK TIDAK SESUAI';
          FieldByName('jenis_ket').AsString := 'LAINNYA';
          FieldByName('jenis_input').AsString := 'NON-POE';
          FieldByName('status').AsString := 'OPEN';
          FieldByName('qty').AsFloat := tmpTbl.FieldByName('qty').AsFloat;
          FieldByName('dept_terkait').AsString := tmpTbl.FieldByName('dept').AsString;
          qemail :=  OpenRS('SELECT nama,user_dept,jabatan,email FROM tbl_user ' +
                            ' WHERE jabatan=''MANAGER'' AND nama <>''MARION'' AND nama<>''NATALIA'' and user_dept=''%s''',[tmpTbl.FieldByName('dept').AsString]);

          FieldByName('user_terkait').AsString := qemail.FieldByName('nama').AsString;
          FieldByName('manager_dept').AsString := qemail.FieldByName('nama').AsString;
          FieldByName('manager_email').AsString := qemail.FieldByName('email').AsString;
          qemail.Close;

          FieldByName('app1').AsString := '0';
          FieldByName('app2').AsString := '0';
          FieldByName('user').AsString := Aplikasi.NamaUser;
          FieldByName('user_dept').AsString := aplikasi.UserDept;
          FieldByName('no_retur').AsString := nxGrd.Cell[NxDBTextColumn1.Index,aRow].AsString;
          Post;

          if lstImage.Count > 0 then begin
            qimg := OpenRS('SELECT * FROM tbl_img_lkm WHERE no_lkm = ''%s''',[sNoTrs]);
            img := TImage.Create(Self);
            for i := 0 to lstImage.Count - 1 do begin
              qimg.Insert;
              qimg.FieldByName('no_lkm').AsString := sNoTrs;
              TBlobField(qimg.FieldByName('img')).LoadFromFile(lstImage.Strings[i]);
              qimg.Post;
            end; 
          end;

          idSMTP.AuthType := satNone;
          idSMTP.Host := Aplikasi.ServerSMTP;
          idSMTP.Port     := 25;
          idSMTP.UserName := aplikasi.EmailUser;
          idSMTP.Password := '';

          email := TIdMessage.Create(nil);
          try
            email.ContentType := 'multipart/mixed';
            email.From.Address := 'mda@sdp.mail';
            email.From.Name := 'MDA';

            if aplikasi.debug then begin
              email.Recipients.EMailAddresses := 'yosef@sdp.mail';
            end
            else begin
              email.Recipients.EMailAddresses := tmpTbl.FieldByName('email').AsString +
                ',boby@sdp.mail,vivi@sdp.mail,ferry@sdp.mail,eva@sdp.mail,rio@sdp.mail,amin@sdp.mail,elia@sdp.mail,eko@sdp.mail';
            end;

            if lstImage.Count > 0 then begin
              for i := 0 to lstImage.Count - 1 do begin
                TIdAttachmentFile.Create(email.MessageParts, lstImage.Strings[i]);
              end;
            end;

            email.Subject := 'LKM Baru No#: ' + sNoTrs;

            lstBody := TStringList.Create;
            lstBody.Add('<html>');
            lstBody.Add('<head>');
            lstBody.Add('</head>');
            lstBody.Add('<body>');
            lstBody.Add('<h3>LAPORAN KETIDAKSESUAIAN MUTU</h3></br></br>');
            lstBody.Add('<pre>');
            lstBody.Add('Nomer LKM    : ' + sNoTrs);
            lstBody.Add('Tgl.Terbit   : ' + aplikasi.TanggalString);
            lstBody.Add('Kode Brg.    : ' + tmpTbl.FieldByName('kode_brg').AsString);
            lstBody.Add('Deskripsi    : ' + qbrg.FieldByName('deskripsi').AsString);
            lstBody.Add('Qty          : ' + tmpTbl.FieldByName('qty').AsString);
            lstBody.Add('Satuan       : ' + qbrg.FieldByName('satuan').AsString);
            lstBody.Add('Dept.Tujuan  : ' + tmpTbl.FieldByName('dept').AsString);
            lstBody.Add('Jenis LKM    : RETUR PENJUALAN');
            lstBody.Add('Deskripsi Ketidaksesuaian : ');
            lstBody.Add(tmpTbl.FieldByName('deskripsi_ks').AsString);

            bdy := TIdText.Create(email.MessageParts, lstBody);
            bdy.ContentType := 'text/html';
            qbrg.close;
            idSMTP.Connect;
            try
              idSMTP.Send(email);
            finally
              idSMTP.Disconnect;
            end;
          finally
            email.Free;
          end;

        end;
        q.Close;
        tmpTbl.Next;
      end;

      dm.zConn.Commit;
      lstImage.Clear;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
      end;
    end;
  end;
end;

procedure TfrmApprovalRetPenj.btnTambahFotoClick(Sender: TObject);
  var
  f: TfrmUploadImageRK;
begin
  f := TfrmUploadImageRK.Create(Self);

  if lstImage.Count > 0 then
    f.ListImage := lstImage;

  f.ShowModal;
  lblJmlImage.Caption := 'Jumlah Image : ' + IntToStr(f.ListImage.Count);
  lstImage := f.ListImage;
end;

end.
