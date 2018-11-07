unit unFrmVerifikasiMasterBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, StdCtrls, ExtCtrls, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ZAbstractRODataset, ZDataset, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox,
  cxDropDownEdit, cxDBLookupComboBox, ZAbstractDataset;

type
  TFrmVerifikasiMasterBarang = class(TfrmTransBaru)
    pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dsVerifikasi: TDataSource;
    zqrJenis: TZReadOnlyQuery;
    dsJenis: TDataSource;
    zqrVerifikasi: TZQuery;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    ds1: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxTblVerifikasi: TcxGridTableView;
    cxColKode: TcxGridColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxColNama: TcxGridColumn;
    cxColAkun: TcxGridColumn;
    cxColNoAkun: TcxGridColumn;
    zqrCoa: TZQuery;
    dsCoa: TDataSource;
    Button1: TButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2: TcxGrid;
    cxGrid2Level1: TcxGridLevel;
    cxTblSupplier: TcxGridTableView;
    cxColKode1: TcxGridColumn;
    cxColNama1: TcxGridColumn;
    cxColAkun1: TcxGridColumn;
    cxColNoAkun1: TcxGridColumn;
    zqrCoa1: TZQuery;
    dsCoa1: TDataSource;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblVerifikasiDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure Button1Click(Sender: TObject);
    procedure cxTblSupplierDataControllerRecordChanged(
      ADataController: TcxCustomDataController; ARecordIndex,
      AItemIndex: Integer);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVerifikasiMasterBarang: TFrmVerifikasiMasterBarang;

implementation

uses unDm, unTools, unAplikasi;

{$R *.dfm}

procedure TFrmVerifikasiMasterBarang.FormCreate(Sender: TObject);
var
  q,z : TZQuery ;
   aCol,aCol1 : TcxGridColumn;
   i,j: integer;
begin
  inherited;
  //zqrVerifikasi.Open ;
  //zqrJenis.Open;
  zqrCoa.Open;
  zqrCoa1.Open;

   aCol := cxTblVerifikasi.CreateColumn;
  with aCol do begin
    Name := 'colUnbound';
    Caption := 'Check';
  end;
  aCol.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol.PropertiesClass := TcxCheckBoxProperties;
  with aCol.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol.Index := 0;

  aCol1 := cxTblSupplier.CreateColumn;
  with aCol1 do begin
    Name := 'colUnbound1';
    Caption := 'Check';
  end;
  aCol1.DataBinding.ValueTypeClass := TcxStringValueType;
  aCol1.PropertiesClass := TcxCheckBoxProperties;
  with aCol1.Properties as TcxCheckBoxProperties do begin
    AllowGrayed := false;
    ValueChecked := 'T';
    ValueUnchecked := 'F';
    NullStyle := nssUnchecked;
    ImmediatePost := True;
  end;
  aCol1.Index := 0;


   z := OpenRS('select kode,nama,akun_piutang from tbl_customer WHERE f_aktif=1 and f_approval=0') ;
    while not z.Eof do begin
      cxGrid1.BeginUpdate;
      with cxTblVerifikasi.DataController do begin
        i := AppendRecord ;
        Values[i, cxColKode.Index] := z.FieldByName('kode').AsString ;
        Values[i, cxColNama.index] := z.FieldByName('nama').AsString;
        Values[i, cxColAkun.index] := z.FieldByName('akun_piutang').AsString;
        Values[i, cxColNoAkun.Index] := z.FieldByName('akun_piutang').AsString;
      end;
      cxGrid1.EndUpdate;
      z.Next;
    end;
    z.Close;

    q := OpenRS('select kode,nama,akun_hutang from tbl_supplier WHERE f_aktif=1 and f_approval=0') ;
    while not q.Eof do begin
      cxGrid2.BeginUpdate;
      with cxTblSupplier.DataController do begin
        j := AppendRecord ;
        Values[j, cxColKode1.Index] := q.FieldByName('kode').AsString ;
        Values[j, cxColNama1.index] := q.FieldByName('nama').AsString;
        Values[j, cxColAkun1.index] := q.FieldByName('akun_hutang').AsString;
        Values[j, cxColNoAkun1.Index] := q.FieldByName('akun_hutang').AsString;
      end;
      cxGrid2.EndUpdate;
      q.Next;
    end;
    q.Close;

   { q := OpenRS('SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1 ' +
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 ' +
      'ORDER BY a.noakun');
    TcxComboBoxProperties(cxColjenis.Properties).Items.Clear;
     while not q.Eof do begin
      TcxComboBoxProperties(cxColjenis.Properties).Items.Add(q.FieldByName('jenis').AsString);
      q.Next;
    end;
      q.Close;  }
end;

procedure TFrmVerifikasiMasterBarang.btnSimpanClick(Sender: TObject);

begin
  inherited;
 { lst := TStringList.Create;
  lstJenis := TStringList.Create;

   for i := 0 to cxTblVerifikasi.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblVerifikasi.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblVerifikasi.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblVerifikasi.DataController.Values[i,cxColKode.Index]);
      lstJenis.Add(cxTblVerifikasi.DataController.Values[i,cxCol.Index]);
    end;
    end;

     if lst.Count > 0 then begin
         try
          dm.zConn.StartTransaction;

          for i := 0 to lst.Count - 1 do begin
              dm.zConn.ExecuteDirect('UPDATE tbl_barang SET f_approval = 1,jenis='''+ lstJenis.Strings[i] +''',user_approval='''+ Aplikasi.NamaUser +''' WHERE kode = ''' + lst.Strings[i] + '''');
          end;
          MsgBox('Barang Sudah Berhasil Diverifikasi') ;
          except
          on E: Exception do begin
            dm.zConn.Rollback;
            MsgBox('Error: ' + E.Message);
          end;
        end;
     end;   }
  end;

procedure TFrmVerifikasiMasterBarang.cxTblVerifikasiDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
  if AItemIndex = cxColAkun.Index then begin
     try
        cxGrid1.BeginUpdate;
        ADataController.Values[ARecordIndex, cxColNoAKun.Index] :=
          ADataController.Values[ARecordIndex, cxColAkun.Index];
      finally
        cxGrid1.EndUpdate;
      end;
    end
  end;

procedure TFrmVerifikasiMasterBarang.Button1Click(Sender: TObject);
var
  lst : TStringList;
  i: Integer;
  chk: string;
  z : TZQuery ;
begin
  inherited;
  lst := TStringList.Create;

   for i := 0 to cxTblVerifikasi.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblVerifikasi.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblVerifikasi.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblVerifikasi.DataController.Values[i,cxColKode.Index]);
    end;
    end;

    if lst.Count > 0 then begin
         try
          dm.zConn.StartTransaction;

          for i := 0 to lst.Count - 1 do begin
              dm.zConn.ExecuteDirect('UPDATE tbl_customer SET f_approval = 1 WHERE kode = ''' + lst.Strings[i] + '''');
          end;
          MsgBox('Customer Sudah Berhasil Diverifikasi') ;
          cxTblVerifikasi.DataController.RecordCount := 0 ;
          z := OpenRS('select kode,nama,akun_piutang from tbl_customer WHERE f_aktif=1 and f_approval=0') ;
            while not z.Eof do begin
              cxGrid1.BeginUpdate;
              with cxTblVerifikasi.DataController do begin
                i := AppendRecord ;
                Values[i, cxColKode.Index] := z.FieldByName('kode').AsString ;
                Values[i, cxColNama.index] := z.FieldByName('nama').AsString;
                Values[i, cxColAkun.index] := z.FieldByName('akun_piutang').AsString;
                Values[i, cxColNoAkun.Index] := z.FieldByName('akun_piutang').AsString;
              end;
              cxGrid1.EndUpdate;
              z.Next;
            end;
            z.Close;
          except
          on E: Exception do begin
            dm.zConn.Rollback;
            MsgBox('Error: ' + E.Message);
          end;
        end;
     end;

end;

procedure TFrmVerifikasiMasterBarang.cxTblSupplierDataControllerRecordChanged(
  ADataController: TcxCustomDataController; ARecordIndex,
  AItemIndex: Integer);
begin
  inherited;
   if AItemIndex = cxColAkun1.Index then begin
     try
        cxGrid2.BeginUpdate;
        ADataController.Values[ARecordIndex, cxColNoAKun1.Index] :=
          ADataController.Values[ARecordIndex, cxColAkun1.Index];
      finally
        cxGrid2.EndUpdate;
      end;
    end
  end;

procedure TFrmVerifikasiMasterBarang.Button2Click(Sender: TObject);
var
  lst : TStringList;
  i,j: Integer;
  chk: string;
  q : TZQuery ;
begin
  inherited;
  lst := TStringList.Create;

   for i := 0 to cxTblSupplier.DataController.RecordCount - 1 do begin
    if VarIsNull(cxTblSupplier.DataController.Values[i,0]) then
      chk := ''
    else
      chk := cxTblSupplier.DataController.Values[i,0];

    if chk = 'T' then begin
      lst.Add(cxTblSupplier.DataController.Values[i,cxColKode1.Index]);
    end;
    end;

    if lst.Count > 0 then begin
         try
          dm.zConn.StartTransaction;

          for i := 0 to lst.Count - 1 do begin
              dm.zConn.ExecuteDirect('UPDATE tbl_supplier SET f_approval = 1 WHERE kode = ''' + lst.Strings[i] + '''');
          end;
          MsgBox('Supplier Sudah Berhasil Diverifikasi') ;
          cxTblSupplier.DataController.RecordCount := 0 ;
          q := OpenRS('select kode,nama,akun_hutang from tbl_supplier WHERE f_aktif=1 and f_approval=0') ;
          while not q.Eof do begin
            cxGrid2.BeginUpdate;
            with cxTblSupplier.DataController do begin
              j := AppendRecord ;
              Values[j, cxColKode1.Index] := q.FieldByName('kode').AsString ;
              Values[j, cxColNama1.index] := q.FieldByName('nama').AsString;
              Values[j, cxColAkun1.index] := q.FieldByName('akun_hutang').AsString;
              Values[j, cxColNoAkun1.Index] := q.FieldByName('akun_hutang').AsString;
            end;
            cxGrid2.EndUpdate;
            q.Next;
          end;
          q.Close;
          except
          on E: Exception do begin
            dm.zConn.Rollback;
            MsgBox('Error: ' + E.Message);
          end;
        end;
     end;
end;

end.
