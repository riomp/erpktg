unit unFrmCariSO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset, ZDataset,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxContainer, StdCtrls,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCheckBox,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, unFrmSPMB, unFrmTrsMasuk, unFrmCCR,
  ZAbstractDataset, ZStoredProcedure, unFrmSPMB_NEW;

type
  TfrmCariSO = class(TForm)
    zqrSOhead: TZReadOnlyQuery;
    dsSOHead: TDataSource;
    zqrSODet: TZReadOnlyQuery;
    dsSODet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1kode_brg: TcxGridDBColumn;
    cxGridDBTableView1qty: TcxGridDBColumn;
    cxGridDBTableView1satuan: TcxGridDBColumn;
    cxGridDBTableView1f_complete: TcxGridDBColumn;
    cxGridDBTableView1notes: TcxGridDBColumn;
    cxGridDBTableView1deskripsi: TcxGridDBColumn;
    cxdTgl1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxdTgl2: TcxDateEdit;
    cxLabel2: TcxLabel;
    btnProses: TButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1no_bukti: TcxGridDBColumn;
    cxGrid1DBTableView1tanggal: TcxGridDBColumn;
    cxGrid1DBTableView1nama: TcxGridDBColumn;
    cxGrid1DBTableView1payment: TcxGridDBColumn;
    cxGrid1DBTableView1f_complete: TcxGridDBColumn;
    cxGrid1DBTableView1user: TcxGridDBColumn;
    cxGrid1DBTableView1user_dept: TcxGridDBColumn;
    cxGrid1DBTableView1f_email: TcxGridDBColumn;
    cxGrid1DBTableView1notes: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Button1: TButton;
    btnBatal: TButton;
    nxGrdSODet: TNextGrid;
    nxColKdBrg: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    nxColDipesan: TNxNumberColumn;
    nxColSatuan: TNxTextColumn;
    nxColCheck: TNxCheckBoxColumn;
    nxColStokG02: TNxNumberColumn;
    nxColTerkirim: TNxNumberColumn;
    nxColSPMB: TNxNumberColumn;
    nxColSisa: TNxNumberColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    nxGrdSODetPel: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    nxColSPMB2: TNxNumberColumn;
    nxColSatuan2: TNxTextColumn;
    nxColBaik: TNxNumberColumn;
    nxColAfkir: TNxNumberColumn;
    nxColRetur: TNxNumberColumn;
    btnPilihSemua: TButton;
    procedure btnProsesClick(Sender: TObject);
    procedure zqrSOheadAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure nxGrdSODetAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure btnPilihSemuaClick(Sender: TObject);
  private
    mNoSO: string;
    mKodeCust: string;
    mKodeBrg: string;
    mfSPMB: TFrmSPMB;
    mfSPMB_NEW: TfrmSPMB_NEW;
    mfTrsMasuk: TFrmTrsMasuk;
    mfCCR: TFrmCCR;
    mJenis: string;
  public
    property NoSO: string read mNoSO;
    property KodeCust: string write mKodeCust;
    property KodeBrg: string read mKodeBrg;
    property fSPMB: TfrmSPMB write mfSPMB;
    property fSPMB_NEW: TFrmSPMB_NEW write mfSPMB_NEW; 
    property fTrsMasuk: TfrmTrsMasuk write mfTrsMasuk;
    property fCCR: TfrmCCR write mfCCR;
    property Jenis: string write mJenis;
  end;

var
  frmCariSO: TfrmCariSO;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmCariSO.btnProsesClick(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;
  if Assigned(mfSPMB) then begin
    with zqrSOhead do begin
      Close;
      //if mJenis = 'peletan' then begin
      //  dm.zConn.ExecuteDirect(Format('CALL sp_so_head(''%s'',''%s'',''%s'')',
      //    [DateToMySqlDate(cxdTgl1.Date), DateToMySqlDate(cxdTgl2.Date), mKodeCust]));
      //  SQL.Text := 'SELECT * FROM _so_head';
      //end
      //else begin
        ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
        ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
        ParamByName('kode_customer').AsString := mKodeCust;
      //end;
      Open;
    end;
  end
  else if Assigned(mfSPMB_NEW) then begin
    with zqrSOhead do begin
      Close;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      ParamByName('kode_customer').AsString := mKodeCust;
      Open;
    end;
  end
  else if Assigned(mfTrsMasuk) then begin
    with zqrSOhead do begin
      Close;
      SQL.Text := 'SELECT * FROM v_so_head ' +
        'WHERE tanggal BETWEEN :tgl1 AND :tgl2 AND f_completed = 0';
      ParamCheck;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    end;
  end
  else if Assigned(mfCCR) then begin
    with zqrSOhead do begin
      Close;
      SQL.Text := 'SELECT * FROM v_so_head ' +
        'WHERE tanggal BETWEEN :tgl1 AND :tgl2';
      ParamCheck;
      ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    end;
  end;
  Screen.Cursor := crDefault;
end;

procedure TfrmCariSO.zqrSOheadAfterScroll(DataSet: TDataSet);
var
  no_bukti: string;
  i: Integer;
begin
  {
  try
    no_bukti := zqrSOhead.FieldByName('no_bukti').AsString;
    if zqrSODet.Active then zqrSODet.Close;
    zqrSODet.ParamByName('no_bukti').AsString := no_bukti;
    zqrSODet.Open;

    with nxGrdSODet do begin
      ClearRows;
      while not zqrSODet.Eof do begin
        i := AddRow();
        Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
        Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
        Cell[3,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
        Cell[4,i].AsString := zqrSODet.FieldByName('satuan').AsString;
        zqrSODet.Next;
      end;
    end;

  except
  end;
  }
end;

procedure TfrmCariSO.FormCreate(Sender: TObject);
begin
  //cxdTgl1.Date := EncodeDate(2013,1,1);

  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);

  nxGrdSODetPel.Top := nxGrdSODet.Top;
  nxGrdSODetPel.Left := nxGrdSODet.Left;
end;

procedure TfrmCariSO.Button1Click(Sender: TObject);
var
  i: Integer;
  q: TZQuery;
begin

  if Assigned(mfCCR) then begin
    if nxGrdSODet.SelectedRow = -1 then Abort;
    mfCCR.KodeBrg := nxGrdSODet.Cell[nxColKdBrg.Index, nxGrdSODet.SelectedROw].AsString;
    mfCCR.NoSO := zqrSOhead.FieldByName('no_bukti').AsString;
    Close;
  end
  else begin
    if mJenis = 'peletan' then begin

      for i := 0 to nxGrdSODetPel.RowCount - 1 do begin
        if nxGrdSODetPel.Cell[0,i].AsBoolean then begin

          mfSPMB.AddRow(
            zqrSOhead.FieldByName('no_bukti').AsString,
            nxGrdSODetPel.Cell[nxColKdBrg.Index,i].AsString,
            nxGrdSoDetPel.Cell[nxColTerkirim.Index,i].AsFloat,
            nxGrdSoDetPel.Cell[nxColStokG02.Index,i].AsFloat,
            nxGrdSoDetPel.Cell[nxColBaik.Index,i].AsFloat,
            nxGrdSoDetPel.Cell[nxColAfkir.Index,i].AsFloat,
            nxGrdSoDetPel.Cell[nxColRetur.Index,i].AsFloat
          );

        end;
      end;
      
    end
    else begin
      for i := 0 to nxGrdSODet.RowCount - 1 do begin

        if nxGrdSODet.Cell[0,i].AsBoolean then begin

          { 31-03-2016
          if nxGrdSODet.Cell[nxColSPMB.Index,i].AsFloat > 0 then begin
            q := OpenRS('SELECT no_bukti FROM tbl_spmb_det ' +
              'WHERE no_so = ''%s'' AND kode_brg = %s',
              [zqrSOhead.FieldByName('no_bukti').AsString,
               nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString]
            );

            MsgBox('Kode barang : ' + nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString + #10#13 +
              'Sudah dibuatkan SPMB dengan nomor : ' + q.FieldByName('no_bukti').AsString);
            q.Close; q := nil;

            Abort;
          end;
          }

          if Assigned(mfSPMB) then begin
            if mJenis = 'peletan' then begin
              mfSPMB.AddRow(
                zqrSOhead.FieldByName('no_bukti').AsString,
                nxGrdSODetPel.Cell[nxColKdBrg.Index,i].AsString,
                nxGrdSoDetPel.Cell[nxColTerkirim.Index,i].AsFloat,
                nxGrdSoDetPel.Cell[nxColStokG02.Index,i].AsFloat
              );
            end
            else begin
              mfSPMB.AddRow(
                zqrSOhead.FieldByName('no_bukti').AsString,
                nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString,
                nxGrdSoDet.Cell[nxColTerkirim.Index,i].AsFloat,
                nxGrdSoDet.Cell[nxColStokG02.Index,i].AsFloat
              );
            end;
          end
          else if Assigned(mfTrsMasuk) then begin
            mfTrsMasuk.AddRow(
              zqrSOhead.FieldByName('no_bukti').AsString,
              nxGrdSODet.Cell[1,i].AsString,
              nxGrdSoDet.Cell[4,i].AsFloat,
              nxGrdSoDet.Cell[5,i].AsFloat
            );
          end
          else if Assigned(mfSPMB_NEW) then begin
            mfSPMB_NEW.AddRow(
                zqrSOhead.FieldByName('no_bukti').AsString,
                nxGrdSODet.Cell[nxColKdBrg.Index,i].AsString,
                nxGrdSoDet.Cell[nxColTerkirim.Index,i].AsFloat,
                nxGrdSoDet.Cell[nxColStokG02.Index,i].AsFloat,
                'SPMB-WHL'
              );
          end;
        end;
      end;
    end;

    {
    try
      mNoSO := zqrSOhead.FieldByName('no_bukti').AsString;
      mKodeBrg := zqrSODet.FieldByName('kode_brg').AsString;
      ModalResult := mrOk;
    except
    end;
    }
  end;

end;

procedure TfrmCariSO.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCariSO.cxGridDBTableView1DblClick(Sender: TObject);
begin
  btnProsesClick(nil);
end;

procedure TfrmCariSO.FormShow(Sender: TObject);
begin
  Screen.Cursor := crSQLWait;

  if mJenis = 'peletan' then begin
    nxGrdSODetPel.Visible := True;
    nxGrdSODet.Visible := False;
    zqrSOhead.SQL.Text := 'SELECT * FROM v_so_head WHERE tanggal BETWEEN :tgl1 AND :tgl2 AND f_completed = 0 ' +
      'AND LEFT(no_bukti,3) <> ''MTS'' AND LEFT(no_bukti,3) = ''SPL'' ' +
      'AND kode_customer = :kode_customer';
    //zqrSOhead.SQL.Text := 'CALL sp_so_head(:tgl1, :tgl2, :kode_customer)';
    
  end
  else begin
    nxGrdSODet.Visible := True;
    nxGrdSODetPel.Visible := False;
  end;

  btnProsesClick(nil);
  if Assigned(mfCCR) then begin
    nxColCheck.Visible := False;
  end;
  Screen.Cursor := crDefault;

end;

procedure TfrmCariSO.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  no_bukti: string;
  i: Integer;
  q, q2, qRet, qSPMB, qPM: TZQuery;
begin
  try
    no_bukti := zqrSOhead.FieldByName('no_bukti').AsString;
    if zqrSODet.Active then zqrSODet.Close;
    zqrSODet.ParamByName('no_bukti').AsString := no_bukti;
    zqrSODet.Open;

    if mJenis = 'peletan' then begin
      with nxGrdSODetPel do begin
        ClearRows;
        while not zqrSODet.Eof do begin
          i := AddRow();
          Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
          Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
          Cell[nxColDipesan.Index,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
          Cell[nxColSatuan2.Index,i].AsString := zqrSODet.FieldByName('satuan').AsString;

          // qty gudang G02
          q2 := OpenRS('SELECT * FROM v_stok_so WHERE no_bukti = ''%s'' ' +
            'AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);
          Cell[nxColStokG02.Index,i].AsFloat := q2.FieldByName('qty_g02').AsFloat;
          if Cell[nxColStokG02.Index,i].AsFloat > Cell[nxColDipesan.Index,i].AsFloat then
            Cell[nxColStokG02.Index,i].Color := clRed;
          if Cell[nxColStokG02.Index,i].AsFloat = 0 then
            Cell[nxColStokG02.Index,i].Color := clRed;
          q2.Close;

          // qty_baik, afkir, retur
          { 26-06-2018
          dm.zConn.ExecuteDirect(
            Format('CALL sp_stok_pel(''%s'', %s)',
              [no_bukti, Cell[1,i].AsString])
          );

          q2 := OpenRS('SELECT * FROM _stok_pel');
          Cell[nxColBaik.Index,i].AsFloat := q2.FieldByName('stok_baik').AsFloat;
          Cell[nxColAfkir.Index,i].AsFloat := q2.FieldByName('stok_afkir').AsFloat;
          Cell[nxColRetur.Index,i].AsFloat := q2.FieldByName('stok_retur').AsFloat;
          q2.Close;
          }

          // qty yang sudah terkirim
          //q2 := OpenRS('SELECT * FROM v_so_vs_sj WHERE no_so = ''%s'' ' +
          //  'AND kode_brg = %s',
          //  [no_bukti, Cell[1,i].AsString]);

          q2 := OpenRS('SELECT SUM(qty) qty_kirim FROM tbl_sj_det WHERE no_so = ''%s'' ' +
            'AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);
          Cell[nxColTerkirim.Index,i].AsFloat := q2.FieldByName('qty_kirim').AsFloat;
          q2.Close;

          // transaksi keluar
          q2 := OpenRS('SELECT IFNULL(SUM(qty),0) qty_kirim FROM tbl_trskeluar_det WHERE no_so = ''%s'' ' +
            'AND kode_brg = ''%s'' AND kode_gdg = ''G02''',
            [no_bukti, Cell[1,i].AsString]);
          if q2.FieldByName('qty_kirim').AsFloat > 0 then begin
            Cell[nxColTerkirim.Index,i].AsFloat :=
              Cell[nxColTerkirim.Index,i].AsFloat + q2.FieldByName('qty_kirim').AsFloat;
          end;
          q2.Close;

          // qty SPMB
          qSPMB := OpenRS('SELECT SUM(qty) AS qty FROM tbl_spmb_det WHERE no_so = ''%s'' ' +
            ' AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);
          Cell[nxColSPMB2.Index,i].AsFloat := qSPMB.FieldByName('qty').AsFloat;
          Cell[nxColSPMB2.Index,i].Color := clAqua;
          qSPMB.Close;

          Cell[nxColSisa.Index,i].AsFloat :=
            Cell[nxColDipesan.Index,i].AsFloat - Cell[nxColTerkirim.Index,i].AsFloat;

          zqrSODet.Next;
        end;
      end;
    end
    else begin
      with nxGrdSODet do begin
        ClearRows;
        while not zqrSODet.Eof do begin
          i := AddRow();
          Cell[1,i].AsString := zqrSODet.FieldByName('kode_brg').AsString;
          Cell[2,i].AsString := zqrSODet.FieldByName('deskripsi').AsString;
          Cell[nxColDipesan.Index,i].AsFloat := zqrSODet.FieldByName('qty').AsFloat;
          Cell[nxColSatuan.Index,i].AsString := zqrSODet.FieldByName('satuan').AsString;

          // qty gudang G02
          q2 := OpenRS('SELECT * FROM v_stok_so WHERE no_bukti = ''%s'' ' +
            'AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);

          Cell[nxColStokG02.Index,i].AsFloat := q2.FieldByName('qty_g02').AsFloat; // + qRet.FieldByName('qty_ret').AsFloat;
          if Cell[nxColStokG02.Index,i].AsFloat > Cell[nxColDipesan.Index,i].AsFloat then
            Cell[nxColStokG02.Index,i].Color := clRed;
          if Cell[nxColStokG02.Index,i].AsFloat = 0 then
            Cell[nxColStokG02.Index,i].Color := clRed;
          q2.Close;

          // qty yang sudah terkirim
          //q2 := OpenRS('SELECT * FROM v_so_vs_sj WHERE no_so = ''%s'' ' +
          //  'AND kode_brg = %s',
          //  [no_bukti, Cell[1,i].AsString]);

          //09-06-2016
          //qRet := OpenRS('SELECT IFNULL(SUM(qty),0) AS qty_ret FROM tbl_history WHERE LEFT(no_bukti,2) = ''RP'' ' +
          //  'AND kode_brg = %s AND no_so = ''%s''',
          //  [Cell[1,i].AsString, no_bukti]);
          qRet := OpenRS('SELECT SUM(qty) qty_ret FROM tbl_trsreturpenj_det WHERE no_so = ''%s'' AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);

          q2 := OpenRS('SELECT SUM(qty) qty_kirim FROM tbl_sj_det WHERE no_so = ''%s'' ' +
            'AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);
          Cell[nxColTerkirim.Index,i].AsFloat := q2.FieldByName('qty_kirim').AsFloat -
            qRet.FieldByName('qty_ret').AsFloat;
          q2.Close;
          qRet.Close;

          // transaksi keluar
          // 09-11-2015 -> tidak perlu karena membuat transaksi kirim
          // seakan-akan bertambah
          //q2 := OpenRS('SELECT IFNULL(SUM(qty),0) qty_kirim FROM tbl_trskeluar_det WHERE no_so = ''%s'' ' +
          //  'AND kode_brg = %s AND kode_gdg = ''G02''',
          //  [no_bukti, Cell[1,i].AsString]);
          //if q2.FieldByName('qty_kirim').AsFloat > 0 then begin
          //  Cell[nxColTerkirim.Index,i].AsFloat :=
          //    Cell[nxColTerkirim.Index,i].AsFloat + q2.FieldByName('qty_kirim').AsFloat;
          //end;
          //q2.Close;
          // end of 09-11-2015

          // qty SPMB
          qSPMB := OpenRS('SELECT SUM(qty) AS qty FROM tbl_spmb_det WHERE no_so = ''%s'' ' +
            ' AND kode_brg = ''%s''',
            [no_bukti, Cell[1,i].AsString]);
          Cell[nxColSPMB.Index,i].AsFloat := qSPMB.FieldByName('qty').AsFloat;
          Cell[nxColSPMB.Index,i].Color := clAqua;
          qSPMB.Close;

          Cell[nxColSisa.Index,i].AsFloat :=
            Cell[nxColDipesan.Index,i].AsFloat - Cell[nxColTerkirim.Index,i].AsFloat;

          zqrSODet.Next;
        end;
      end;
    end;
  except
  end;
end;

procedure TfrmCariSO.nxGrdSODetAfterEdit(Sender: TObject; ACol,
  ARow: Integer; Value: WideString);
var
  grd: TNextGrid;
begin
  grd := (Sender as TNextGrid);
  if Assigned(mfSPMB) then begin
    if ACol = 0 then begin
      if grd.Name = 'nxGrdSODet' then begin
        if nxGrdSODet.Cell[5,ARow].AsFloat = 0 then
          nxGrdSODet.Cell[0,ARow].AsBoolean := False;
      end
      else begin
        if nxGrdSODetPel.Cell[5,ARow].AsFloat = 0 then
          nxGrdSODetPel.Cell[0,ARow].AsBoolean := False;
      end;
    end;
  end;
end;

procedure TfrmCariSO.btnPilihSemuaClick(Sender: TObject);
var
  i: integer;
begin
  if nxGrdSODet.Visible then begin
    for i := 0 to nxGrdSODet.RowCount - 1 do begin
      nxGrdSODet.Cell[nxColCheck.Index,i].AsBoolean := True;
    end;
  end
  else if nxGrdSODetPel.Visible then begin
    for i := 0 to nxGrdSODetPel.RowCount - 1 do begin
      nxGrdSODetPel.Cell[nxColCheck.Index,i].AsBoolean := True;
    end;
  end;

end;

end.


uses unFrmCCR;
