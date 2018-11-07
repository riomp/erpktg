unit unFrmDataAbsen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxContainer, cxEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZDataset, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxPC, StdCtrls, ExtCtrls,
  cxGroupBox, cxSpinEdit, cxTimeEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, DateUtils, cxCustomPivotGrid, cxDBPivotGrid,
  cxGridBandedTableView, cxGridDBBandedTableView, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, ShellAPI, cxGridExportLink,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmDataAbsensi = class(TfrmTransBaru)
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    cxGrid2: TcxGrid;
    cxTblDataFinger: TcxGridDBTableView;
    cxTblDataFingernip: TcxGridDBColumn;
    cxTblDataFingernama: TcxGridDBColumn;
    cxTblDataFingerdepartemen: TcxGridDBColumn;
    cxTblDataFingerjabatan: TcxGridDBColumn;
    cxTblDataFingerstatus: TcxGridDBColumn;
    cxTblDataFingertanggal: TcxGridDBColumn;
    cxTblDataFingermode: TcxGridDBColumn;
    cxTblDataFingerjam: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    zqrAbsen: TZReadOnlyQuery;
    dsAbsen: TDataSource;
    cxTabSheet2: TcxTabSheet;
    zKaryawan: TZReadOnlyQuery;
    dsKaryawan: TDataSource;
    Panel1: TPanel;
    btnFailed: TButton;
    Label1: TLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxlKaryawan: TcxLookupComboBox;
    cmbMode: TComboBox;
    cxdTanggal: TcxDateEdit;
    cxTimeEdit1: TcxTimeEdit;
    Button1: TButton;
    Button2: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxTblDataFingerlog: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxlNip: TcxLookupComboBox;
    cmbIjin: TComboBox;
    cxdTgl5: TcxDateEdit;
    cxLabel9: TcxLabel;
    cxdTgl6: TcxDateEdit;
    cxLabel10: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel11: TcxLabel;
    cxdTgl3: TcxDateEdit;
    cxLabel12: TcxLabel;
    cxdTgl4: TcxDateEdit;
    btnProsesAbsen: TButton;
    zqrDataAbsen: TZReadOnlyQuery;
    dsDataAbsen: TDataSource;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxTblAbsen: TcxGridDBBandedTableView;
    cxTblAbsennip: TcxGridDBBandedColumn;
    cxTblAbsennama: TcxGridDBBandedColumn;
    cxTblAbsendepartemen: TcxGridDBBandedColumn;
    cxTblAbsenjabatan: TcxGridDBBandedColumn;
    cxTblAbsenstatus: TcxGridDBBandedColumn;
    cxTblAbsentanggal: TcxGridDBBandedColumn;
    cxTblAbsenmasuk: TcxGridDBBandedColumn;
    cxTblAbsenkeluar: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    btnSimpanIjin: TButton;
    zqrIjin: TZReadOnlyQuery;
    dsIjin: TDataSource;
    cxTblIjin: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxTblIjinid: TcxGridDBColumn;
    cxTblIjinnip: TcxGridDBColumn;
    cxTblIjinnama: TcxGridDBColumn;
    cxTblIjinjenis: TcxGridDBColumn;
    cxTblIjinstart_date: TcxGridDBColumn;
    cxTblIjinfinish_date: TcxGridDBColumn;
    cxTblIjinketerangan: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    btnInputLembur: TButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    zqrLemburHead: TZReadOnlyQuery;
    dsLemburHead: TDataSource;
    zLemburDetail: TZReadOnlyQuery;
    dsLemburDetail: TDataSource;
    cxGrid2DBTableView1id: TcxGridDBColumn;
    cxGrid2DBTableView1nomer: TcxGridDBColumn;
    cxGrid2DBTableView1no: TcxGridDBColumn;
    cxGrid2DBTableView1nip: TcxGridDBColumn;
    cxGrid2DBTableView1mulai: TcxGridDBColumn;
    cxGrid2DBTableView1akhir: TcxGridDBColumn;
    cxGrid2DBTableView1keterangan: TcxGridDBColumn;
    cxGridDBTableView1no: TcxGridDBColumn;
    cxGridDBTableView1tanggal: TcxGridDBColumn;
    cxGridDBTableView1jenis_lembur: TcxGridDBColumn;
    cxGridDBTableView1tgl_lembur: TcxGridDBColumn;
    cxGridDBTableView1diajukan_oleh: TcxGridDBColumn;
    cxGridDBTableView1uraian: TcxGridDBColumn;
    cxGridDBTableView1user_input: TcxGridDBColumn;
    cxGridDBTableView1tgl_input: TcxGridDBColumn;
    cxGridDBTableView1user_edit: TcxGridDBColumn;
    cxGridDBTableView1tgl_edit: TcxGridDBColumn;
    cxGrid2DBTableView1nama: TcxGridDBColumn;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1id: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nomer: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1no: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nip: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1mulai: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1akhir: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1keterangan: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1nama: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1Jabatan: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    cxLabel13: TcxLabel;
    cxdTgl7: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxdTgl8: TcxDateEdit;
    btnPRosesRekap: TButton;
    cxGrid5: TcxGrid;
    cxTblKaryawan: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxTblKaryawannip: TcxGridDBColumn;
    cxTblKaryawannama: TcxGridDBColumn;
    cxTblKaryawanColumn1: TcxGridDBColumn;
    cxTblKaryawanColumn2: TcxGridDBColumn;
    cxTblKaryawanColumn3: TcxGridDBColumn;
    cxTblKaryawanColumn4: TcxGridDBColumn;
    cxTblKaryawanColumn5: TcxGridDBColumn;
    cxTblKaryawanColumn6: TcxGridDBColumn;
    cxTblKaryawanColumn7: TcxGridDBColumn;
    cxTblKaryawanColumn8: TcxGridDBColumn;
    cxTblKaryawanColumn9: TcxGridDBColumn;
    cxTblKaryawanColumn10: TcxGridDBColumn;
    cxTblKaryawanColumn11: TcxGridDBColumn;
    cxTblKaryawanColumn12: TcxGridDBColumn;
    cxTblKaryawanColumn13: TcxGridDBColumn;
    cxTblKaryawanColumn14: TcxGridDBColumn;
    cxTblKaryawanColumn15: TcxGridDBColumn;
    cxTblKaryawanColumn16: TcxGridDBColumn;
    cxTblKaryawanColumn17: TcxGridDBColumn;
    cxTblKaryawanColumn18: TcxGridDBColumn;
    cxTblKaryawanColumn19: TcxGridDBColumn;
    cxTblKaryawanColumn20: TcxGridDBColumn;
    cxTblKaryawanColumn21: TcxGridDBColumn;
    cxTblKaryawanColumn22: TcxGridDBColumn;
    cxTblKaryawanColumn23: TcxGridDBColumn;
    cxTblKaryawanColumn24: TcxGridDBColumn;
    cxTblKaryawanColumn25: TcxGridDBColumn;
    cxTblKaryawanColumn26: TcxGridDBColumn;
    cxTblKaryawanColumn27: TcxGridDBColumn;
    cxTblKaryawanColumn28: TcxGridDBColumn;
    cxTblKaryawanColumn29: TcxGridDBColumn;
    cxTblKaryawanColumn30: TcxGridDBColumn;
    cxTblKaryawanColumn31: TcxGridDBColumn;
    cxTblKaryawanColumn32: TcxGridDBColumn;
    zKaryawan1: TZReadOnlyQuery;
    dskaryawan1: TDataSource;
    cxTblKaryawanColumn33: TcxGridDBColumn;
    cxTblKaryawanColumn34: TcxGridDBColumn;
    cxTblKaryawanColumn35: TcxGridDBColumn;
    cxTblKaryawanColumn36: TcxGridDBColumn;
    cxTblKaryawanColumn37: TcxGridDBColumn;
    cxTblKaryawanColumn38: TcxGridDBColumn;
    cxTblKaryawanColumn39: TcxGridDBColumn;
    cxTblKaryawanColumn40: TcxGridDBColumn;
    cxTblKaryawanColumn41: TcxGridDBColumn;
    btnExcelBrg: TButton;
    procedure btnProsesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFailedClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxTblDataFingerStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure cxTblDataFingerCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnProsesAbsenClick(Sender: TObject);
    procedure btnSimpanIjinClick(Sender: TObject);
    procedure cxTblIjinCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnInputLemburClick(Sender: TObject);
    procedure btnPRosesRekapClick(Sender: TObject);
    Function BusinessDaysBetween(const StartDate, EndDate: TDateTime): Integer;
    procedure btnExcelBrgClick(Sender: TObject);
  private
    { Private declarations }
     function HitungAbsen: Integer;
  public
    { Public declarations }
  end;

var
  frmDataAbsensi: TfrmDataAbsensi;

implementation

uses unDm, unAplikasi, unTools, unFrmLembur;

{$R *.dfm}

procedure TfrmDataAbsensi.btnProsesClick(Sender: TObject);
begin
    with zqrAbsen do begin
     if Active then Close;
     ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
      ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
      Open;
    Screen.Cursor := crDefault;
   end;

end;

procedure TfrmDataAbsensi.FormCreate(Sender: TObject);
begin
  zqrAbsen.Open ;
  zKaryawan1.Open ;
  zqrIjin.Open ;

  Panel1.Visible := False ;

end;

procedure TfrmDataAbsensi.btnFailedClick(Sender: TObject);
begin
  Panel1.Visible := True ;

end;

procedure TfrmDataAbsensi.Button2Click(Sender: TObject);
var
  i : Integer ;
begin
  Panel1.Visible := False ;

   for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
  end;

end;

procedure TfrmDataAbsensi.Button1Click(Sender: TObject);
var
  tbl : TZTable;
  i : Integer ;
begin
   try
      {dm.zConn.StartTransaction;

      tbl := OpenTbl('tbl_scan_absen');

      tbl.Insert;
      tbl.FieldByName('nip').AsString := cxlKaryawan.EditValue ;
      tbl.FieldByName('tanggal').AsDateTime := cxdTanggal.EditValue;
      tbl.FieldByName('mode').AsString := cmbMode.Text ;
      tbl.FieldByName('jam').AsDateTime := cxTimeEdit1.EditValue  ;
      tbl.FieldByName('log').AsInteger := 1 ;

      tbl.Post;
      tbl.Close; }

        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('INSERT INTO tbl_scan_absen SET nip =''' + cxlKaryawan.EditValue +''' ' +
        ',tanggal ='''+ FormatDateTime('yyyy-mm-dd',cxdTanggal.EditValue) +''' ' +
        ',mode='''+ cmbMode.Text +''',jam='''+ FormatDateTime('HH:mm:ss',cxTimeEdit1.EditValue) +''' ,log=1');
        dm.zConn.Commit;
      
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

     for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
  end;

  Panel1.Visible := False ;
  dsAbsen.DataSet.Refresh ;

end;

procedure TfrmDataAbsensi.cxTblDataFingerStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  //if (ARecord.Values[cxTblDataFingerlog.Index] = 0) then begin
  //  AStyle := cxStyle1 ;
  //end;

end;

procedure TfrmDataAbsensi.cxTblDataFingerCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if  cxTblDataFingerlog.EditValue = 0 then begin
      MsgBox('Data Tidak Bisa Dihapus')
      end
  else begin
      dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_scan_absen WHERE nip = ''' + zqrAbsen.fieldbyname('nip').AsString + ''' ' +
      ' and tanggal = '''+ FormatDateTime('yyyy-mm-dd',zqrAbsen.fieldbyname('tanggal').AsDateTime) +''' ' +
      ' and jam = '''+ FormatDateTime('HH:mm:ss',zqrAbsen.fieldbyname('jam').AsDateTime) +''' ');
      dm.zConn.Commit;

      dsAbsen.DataSet.Refresh ;
      end;
end;

procedure TfrmDataAbsensi.btnProsesAbsenClick(Sender: TObject);
var
  q,z,r : TZQuery ;
  i,j,a : integer;
begin
  zqrDataAbsen.Open ;
  j := DaysBetween(cxdTgl3.Date,cxdTgl4.date);

   try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM _tmp_tanggal');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;

  for i := 0 to j do begin
     q := OpenRS('SELECT * FROM _tmp_tanggal') ;
     q.Insert;
     q.FieldByName('tanggal').AsDateTime := cxdTgl3.Date + i;
     q.Post;
     q.Close;
  end;

  {for i := 0 to j do begin
    cxGrid3DBBandedTableView1.Bands.Add ;
    cxGrid3DBBandedTableView1.Bands[i+2].Caption := DateToStr(cxdTgl3.Date + i)
  end;  }

  dsDataAbsen.DataSet.Refresh ;

 { if cxTblAbsen.DataController.RecordCount <> 0 then begin
     with cxTblAbsen.DataController  do begin

          for a := 0 to RecordCount -1 do begin
            r := OpenRS('SELECT * FROM _tmp_rekap') ;
            r.Insert;
            r.FieldByName('nip').AsString := Values[a, cxTblAbsennip.index];
            r.FieldByName('tanggal').AsDateTime := Values[a, cxTblAbsentanggal.index];
            r.FieldByName('f_absen').AsInteger :=1;
            r.Post;
            r.Close;
          end;
        end;
  end; }

  
end;

procedure TfrmDataAbsensi.btnSimpanIjinClick(Sender: TObject);
var
  tbl: TZTable;
  q : TZQuery ;
  i,j : Integer ;
begin
   j := DaysBetween(cxdTgl5.Date,cxdTgl6.date);
  try
      dm.zConn.StartTransaction;

      tbl := OpenTbl('tbl_exabsen');

      tbl.Insert;
      tbl.FieldByName('nip').AsString := cxlNip.EditValue;
      tbl.FieldByName('jenis').AsString := cmbIjin.Text;
      tbl.FieldByName('start_date').AsDatetime := cxdTgl5.Date ;
      tbl.FieldByName('finish_date').AsDatetime := cxdTgl6.Date ;
      tbl.FieldByName('day').AsInteger := (DaysBetween(cxdTgl5.Date,cxdTgl6.date)+1);
      tbl.FieldByName('keterangan').AsString := cxMemo1.Text;

      tbl.Post;
      tbl.Close;
      dm.zConn.Commit;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

    for i := 0 to j do begin
     q := OpenRS('SELECT * FROM tbl_exabsen_det') ;
     q.Insert;
     q.FieldByName('nip').AsString := cxlNip.EditValue;
     q.FieldByName('tanggal').AsDateTime := cxdTgl5.Date + i;
     if cmbIjin.Text = 'IJIN' then
      q.FieldByName('f_jenis').AsInteger := 1
     else if cmbIjin.Text = 'SAKIT' then
      q.FieldByName('f_jenis').AsInteger := 2
     else if cmbIjin.Text = 'DINAS' then
      q.FieldByName('f_jenis').AsInteger := 3
      else if cmbIjin.Text = 'CUTI PRIBADI' then
     q.FieldByName('f_jenis').AsInteger := 4
     else if cmbIjin.Text = 'CUTI KHUSUS' then
     q.FieldByName('f_jenis').AsInteger := 5 ;
     q.FieldByName('day').AsInteger := 1;
     q.Post;
     q.Close;
  end;

  for i:= 0 to ComponentCount-1 do
  begin
    if Components[i] is TcxLookupComboBox then
      (Components[i] as TcxLookupComboBox).Text := '';
      if Components[i] is TcxMemo then
      (Components[i] as TcxMemo).Text := '';
  end;

  dsIjin.DataSet.Refresh ;

end;

procedure TfrmDataAbsensi.cxTblIjinCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   dm.zConn.StartTransaction;
      dm.zConn.ExecuteDirect('DELETE FROM tbl_exabsen WHERE id = ''' + zqrIjin.fieldbyname('id').AsString + '''');
       dm.zConn.ExecuteDirect('DELETE FROM tbl_exabsen_det WHERE nip = ''' + zqrIjin.fieldbyname('nip').AsString + ''' and tanggal <= '''+ FormatDateTime('yyyy-mm-dd',zqrIjin.fieldbyname('finish_date').AsDateTime) +'''');
      dm.zConn.Commit;

      dsIjin.DataSet.Refresh ;
end;

procedure TfrmDataAbsensi.btnInputLemburClick(Sender: TObject);
var
  f : TfrmLembur ;
begin
  f := TfrmLembur.Create(self);
  //f.Jenis := 'tambah' ;
  f.ShowModal ;
end;

procedure TfrmDataAbsensi.btnPRosesRekapClick(Sender: TObject);
var
  i,j : integer;
  a,q : TZQuery ;
begin
 j := DaysBetween(cxdTgl7.Date,cxdTgl8.date);

   try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM _tmp_tanggal');
                dm.zConn.ExecuteDirect('DELETE FROM _tmp_rekap');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;

  for i := 0 to j do begin
     q := OpenRS('SELECT * FROM _tmp_tanggal') ;
     q.Insert;
     q.FieldByName('tanggal').AsDateTime := cxdTgl7.Date + i;
     q.Post;
     q.Close;
  end;

 try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('INSERT INTO _tmp_rekap SELECT a.nip,a.tanggal,1 ' +
        ' FROM (SELECT a.nip,a.nama,a.departemen,a.jabatan,a.status,b.tanggal,b.`jam`,b.mode,b.log  ' +
        ' FROM tbl_karyawan_ktg as a join `tbl_scan_absen` as b on a.nip=b.nip ' +
         ' right join _tmp_tanggal as c on b.tanggal=c.tanggal ' +
        ' WHERE a.f_aktif=1 and b.mode="SCAN MASUK") as a join ' +
        ' (SELECT a.nip,a.nama,a.departemen,a.jabatan,a.status,b.tanggal,b.`jam`,b.mode,b.log  ' +
        ' FROM tbl_karyawan_ktg as a join `tbl_scan_absen` as b on a.nip=b.nip  ' +
         ' right join _tmp_tanggal as c on b.tanggal=c.tanggal ' +
        ' WHERE a.f_aktif=1 and b.mode="SCAN KELUAR") as b on  ' +
        ' a.nip=b.nip and a.tanggal=b.tanggal ORDER BY a.tanggal ');
        dm.zConn.Commit;
        except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;



  with zKaryawan do begin
    Screen.Cursor := crSQLWait;
    Close;
    ParamByName('tgl1').AsDateTime := cxdTgl7.Date;
    ParamByName('tgl2').AsDateTime := (cxdTgl7.Date + 1);
    ParamByName('tgl3').AsDateTime := (cxdTgl7.Date + 2);
    ParamByName('tgl4').AsDateTime := (cxdTgl7.Date + 3);
    ParamByName('tgl5').AsDateTime := (cxdTgl7.Date + 4);
    ParamByName('tgl6').AsDateTime := (cxdTgl7.Date + 5);
    ParamByName('tgl7').AsDateTime := (cxdTgl7.Date + 6);
    ParamByName('tgl8').AsDateTime := (cxdTgl7.Date + 7);
    ParamByName('tgl9').AsDateTime := (cxdTgl7.Date + 8);
    ParamByName('tgl10').AsDateTime := (cxdTgl7.Date + 9);
    ParamByName('tgl11').AsDateTime := (cxdTgl7.Date + 10);
    ParamByName('tgl12').AsDateTime := (cxdTgl7.Date + 11);
    ParamByName('tgl13').AsDateTime := (cxdTgl7.Date + 12);
    ParamByName('tgl14').AsDateTime := (cxdTgl7.Date + 13);
    ParamByName('tgl15').AsDateTime := (cxdTgl7.Date + 14);
    ParamByName('tgl16').AsDateTime := (cxdTgl7.Date + 15);
    ParamByName('tgl17').AsDateTime := (cxdTgl7.Date + 16);
    ParamByName('tgl18').AsDateTime := (cxdTgl7.Date + 17);
    ParamByName('tgl19').AsDateTime := (cxdTgl7.Date + 18);
    ParamByName('tgl20').AsDateTime := (cxdTgl7.Date + 19);
    ParamByName('tgl21').AsDateTime := (cxdTgl7.Date + 20);
    ParamByName('tgl22').AsDateTime := (cxdTgl7.Date + 21);
    ParamByName('tgl23').AsDateTime := (cxdTgl7.Date + 22);
    ParamByName('tgl24').AsDateTime := (cxdTgl7.Date + 23);
    ParamByName('tgl25').AsDateTime := (cxdTgl7.Date + 24);
    ParamByName('tgl26').AsDateTime := (cxdTgl7.Date + 25);
    ParamByName('tgl27').AsDateTime := (cxdTgl7.Date + 26);
    ParamByName('tgl28').AsDateTime := (cxdTgl7.Date + 27);
    ParamByName('tgl29').AsDateTime := (cxdTgl7.Date + 28);
    ParamByName('tgl30').AsDateTime := (cxdTgl7.Date + 29);
    ParamByName('tgl31').AsDateTime := (cxdTgl7.Date + 30);
    ParamByName('tgl32').AsDateTime := cxdTgl8.Date;
    Open;
    Screen.Cursor := crDefault;
  end;

  { j := (DaysBetween(cxdTgl7.Date,cxdTgl8.Date)+1);

  for i := 0 to j do begin
    with cxTblKaryawan.CreateColumn do
    begin
      if i=j then Caption := 'TOTAL'
      else
      Caption := DateToStr(cxdTgl7.Date + i) ;
    end;
  end;   }
  cxTblKaryawanColumn1.Caption := DateToStr(cxdTgl7.Date) ;
  cxTblKaryawanColumn2.Caption := DateToStr(cxdTgl7.Date+1) ;
  cxTblKaryawanColumn3.Caption := DateToStr(cxdTgl7.Date+2) ;
  cxTblKaryawanColumn4.Caption := DateToStr(cxdTgl7.Date+3) ;
  cxTblKaryawanColumn5.Caption := DateToStr(cxdTgl7.Date+4) ;
  cxTblKaryawanColumn6.Caption := DateToStr(cxdTgl7.Date+5) ;
  cxTblKaryawanColumn7.Caption := DateToStr(cxdTgl7.Date+6) ;
  cxTblKaryawanColumn8.Caption := DateToStr(cxdTgl7.Date+7) ;
  cxTblKaryawanColumn9.Caption := DateToStr(cxdTgl7.Date+8) ;
  cxTblKaryawanColumn10.Caption := DateToStr(cxdTgl7.Date+9) ;
  cxTblKaryawanColumn11.Caption := DateToStr(cxdTgl7.Date+10) ;
  cxTblKaryawanColumn12.Caption := DateToStr(cxdTgl7.Date+11) ;
  cxTblKaryawanColumn13.Caption := DateToStr(cxdTgl7.Date+12) ;
  cxTblKaryawanColumn14.Caption := DateToStr(cxdTgl7.Date+13) ;
  cxTblKaryawanColumn15.Caption := DateToStr(cxdTgl7.Date+14) ;
  cxTblKaryawanColumn16.Caption := DateToStr(cxdTgl7.Date+15) ;
  cxTblKaryawanColumn17.Caption := DateToStr(cxdTgl7.Date+16) ;
  cxTblKaryawanColumn18.Caption := DateToStr(cxdTgl7.Date+17) ;
  cxTblKaryawanColumn19.Caption := DateToStr(cxdTgl7.Date+18) ;
  cxTblKaryawanColumn20.Caption := DateToStr(cxdTgl7.Date+19) ;
  cxTblKaryawanColumn21.Caption := DateToStr(cxdTgl7.Date+20) ;
  cxTblKaryawanColumn22.Caption := DateToStr(cxdTgl7.Date+21) ;
  cxTblKaryawanColumn23.Caption := DateToStr(cxdTgl7.Date+22) ;
  cxTblKaryawanColumn24.Caption := DateToStr(cxdTgl7.Date+23) ;
  cxTblKaryawanColumn25.Caption := DateToStr(cxdTgl7.Date+24) ;
  cxTblKaryawanColumn26.Caption := DateToStr(cxdTgl7.Date+25) ;
  cxTblKaryawanColumn27.Caption := DateToStr(cxdTgl7.Date+26) ;
  cxTblKaryawanColumn28.Caption := DateToStr(cxdTgl7.Date+27) ;
  cxTblKaryawanColumn29.Caption := DateToStr(cxdTgl7.Date+28) ;
  cxTblKaryawanColumn30.Caption := DateToStr(cxdTgl7.Date+29) ;
  if ((cxdTgl7.Date+30)> cxdTgl8.date) then
  cxTblKaryawanColumn31.Visible := False
  else
  cxTblKaryawanColumn31.Visible := True ;
  cxTblKaryawanColumn31.Caption := DateToStr(cxdTgl7.Date+30) ;
  cxTblKaryawanColumn32.Caption := 'ABSENSI' ;
  cxTblKaryawanColumn33.Caption := 'IJIN' ;
  cxTblKaryawanColumn34.Caption := 'SAKIT' ;
  cxTblKaryawanColumn35.Caption := 'DINAS' ;
  cxTblKaryawanColumn36.Caption := 'CUTI PRIBADI' ;
  cxTblKaryawanColumn37.Caption := 'CUTI KHUSUS' ;
  cxTblKaryawanColumn38.Caption := 'L1' ;
  cxTblKaryawanColumn39.Caption := 'L2' ;
  //cxTblKaryawanColumn40.Caption := DateToStr(BusinessDaysBetween(cxdTgl7.Date,cxdTgl8.Date)) ;



end;

function TfrmDataAbsensi.HitungAbsen: Integer;
var
  hasil : Integer ;
begin

end;

function TfrmDataAbsensi.BusinessDaysBetween(const StartDate,
  EndDate: TDateTime): Integer;
var
  CurrDate : TDateTime;
begin
  CurrDate := StartDate;
  Result := 0;
  while (CurrDate <= EndDate) do
  begin
    // DayOfTheWeek returns 1-5 for Mon-Fri, so 6 and 7 are weekends
    if DayOfTheWeek(CurrDate) < 6 then
      Inc(Result);
    CurrDate := CurrDate + 1;
  end;
end;

procedure TfrmDataAbsensi.btnExcelBrgClick(Sender: TObject);
begin
  inherited;
  try
  ExportGridToExcel(aplikasi.AppPath + '\tmpAbsensi.xls', cxGrid5);
  ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\tmpAbsensi.xls'),''
    ,nil,SW_SHOWNORMAL);
  except
    on E: Exception do begin
      MsgBox('Error: ' + E.Message);
    end;
  end;
end;

end.
