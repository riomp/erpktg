unit unFrmMstMesin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ExtCtrls, cxContainer, cxTextEdit,
  cxLabel, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCheckBox, Jpeg,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmMstMesin = class(TfrmTplMaster)
    cxLabel1: TcxLabel;
    cxLabel4: TcxLabel;
    cxTblViewkode: TcxGridDBColumn;
    cxTblViewnama: TcxGridDBColumn;
    chkAktif: TcxCheckBox;
    zqKategori: TZQuery;
    dsKategori: TDataSource;
    cxtNama: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxtKode: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxCmbGrupMesin: TcxComboBox;
    cxlLokasi: TcxLookupComboBox;
    zqrLokasi: TZQuery;
    dsLokasi: TDataSource;
    cxLabel3: TcxLabel;
    cxsJmlPersonil: TcxSpinEdit;
    cxTblViewColumn1: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxlSPV: TcxLookupComboBox;
    zqrSPV: TZQuery;
    dsSPV: TDataSource;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxsCycle: TcxSpinEdit;
    cxsSetup: TcxSpinEdit;
    cxsWait: TcxSpinEdit;
    cxsOutput: TcxSpinEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxsMotor: TcxSpinEdit;
    cxsHeater: TcxSpinEdit;
    cxLabel14: TcxLabel;
    cxsLine: TcxSpinEdit;
    cxLabel15: TcxLabel;
    cxlSatuan: TcxComboBox;
    cxsOperatorSet: TcxSpinEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxsDie: TcxSpinEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxsmesinmin: TcxSpinEdit;
    cxsmesinmax: TcxSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnBatalClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    tbl: TZTable;
    procedure ClearAll;
  public
    { Public declarations }
  end;

var
  frmMstCust: TfrmMstMesin;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmMstMesin.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  tbl := OpenTbl('tbl_mesin');
  pg.ActivePageIndex := 0;

  with cxCmbGrupMesin do begin
    Properties.Items.Add('MIXING');
    Properties.Items.Add('PRINTING');
    Properties.Items.Add('EXTRUSI');
    Properties.Items.Add('LAMINASI');
    Properties.Items.Add('CONVERTING');
    Properties.Items.Add('PELETAN');
    Properties.Items.Add('GEOMEMBRANE');
    Properties.Items.Add('SLITTING');
    Properties.Items.Add('SEAMING');
    Properties.Items.Add('CUTTING');
    Properties.Items.Add('RECYCLE');
    Properties.Items.Add('GUSET');
    Properties.Sorted := True;
    ItemIndex := 0;
  end;

  zqrLokasi.Open;
  zQry.Open;
  zqrSPV.Open;
  
end;

procedure TfrmMstMesin.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  tbl_sa: TZTable;
  q, qSA: TZQuery;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if (Trim(cxtKode.Text) = '') then begin
    MsgBox('Kode Mesin harus diisi.');
    cxtKode.SetFocus;
  end
  else if Trim(cxtNama.Text) = '' then begin
    MsgBox('Nama Mesin harus diisi.');
    cxtNama.SetFocus;
  end
  else begin

    f := True;
    if self.Jenis = 'tambah' then begin

      if CheckKey('tbl_mesin','kode', QuotedStr(Trim(cxtKode.Text))) then begin
        MsgBox('Kode Mesin sudah ada.');
        cxtKode.SelectAll;
        cxtKode.SetFocus;
        f := False;
      end
      else
        tbl.Insert;
    end
    else begin
      if not CheckKey('tbl_mesin','kode',QuotedStr(Trim(cxtKode.Text))) then begin
        MsgBox('Kode Mesin belum ada.');
        cxtKode.SelectAll;
        cxtKode.SetFocus;
        f := False;
      end
      else begin
        tbl.Locate('kode',cxtKode.Text,[loCaseInsensitive]);
        tbl.Edit;
      end;
    end;

    if f then begin
      tbl.FieldByName('kode').AsString := cxtKode.Text;
      tbl.FieldByName('nama').AsString := Trim(cxtNama.Text);
      tbl.FieldByName('lokasi').AsString := cxlLokasi.Text;
      tbl.FieldByName('jml_personil').AsInteger := cxsJmlPersonil.Value;
      tbl.FieldByName('jenis').AsString := cxCmbGrupMesin.Text;
      tbl.FieldByName('spv_prd').AsString := cxlSPV.Text;
      tbl.FieldByName('cycle_time').AsFloat := cxsCycle.Value;
      tbl.FieldByName('setup_time').AsFloat := cxsSetup.Value;
      tbl.FieldByName('wait_time').AsFloat := cxsWait.Value;
      tbl.FieldByName('output').AsFloat := cxsOutput.Value;
      tbl.FieldByName('daya_motor').AsFloat := cxsMotor.Value;
      tbl.FieldByName('daya_heater').AsFloat := cxsHeater.Value;
      tbl.FieldByName('line').AsFloat := cxsLine.Value;
      tbl.FieldByName('satuan').AsString := cxlSatuan.Text;
      tbl.FieldByName('die').AsFloat :=  cxsDie.Value;
      tbl.FieldByName('lebar_mesin_min').AsFloat :=  cxsmesinmin.Value;
      tbl.FieldByName('lebar_mesin_max').AsFloat :=  cxsmesinmax.Value;
      tbl.FieldByName('die').AsFloat :=  cxsDie.Value;
      tbl.FieldByName('operator_setup').AsString := cxsOperatorSet.Value;
      if chkAktif.Checked then
        i := 1
      else
        i := 0;

      tbl.FieldByName('f_aktif').AsInteger := i;

      tbl.Post;

      MsgBox('Data Mesin sudah disimpan.');

      ClearAll;
      zQry.Close;
      zQry.Open;

      btnBatalClick(nil);
    end;

  end;
end;

procedure TfrmMstMesin.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
       if Components[i] is TcxSpinEdit then
        (Components[i] as TcxSpinEdit).Value := 0;
  end;

  chkAktif.Checked := False;
end;

procedure TfrmMstMesin.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q, qstok: TZQuery;
  Stream: TMemoryStream;
  jpg: TJPEGImage;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM tbl_mesin WHERE kode = ''%s''',
      [zQry.FieldByName('kode').AsString]);
    cxtKode.Text := q.FieldByName('kode').AsString;
    cxtNama.Text := q.FieldByName('nama').AsString;

    if q.FieldByName('f_aktif').AsInteger = 1 then
      chkAktif.Checked := True
    else
      chkAktif.Checked := False;

    cxlLokasi.Text := q.FieldByName('lokasi').AsString;
    cxsJmlPersonil.Value := q.FieldByName('jml_personil').AsInteger;
    cxCmbGrupMesin.Text := q.FieldByName('jenis').AsString;
    cxlSPV.EditValue := q.FieldByName('spv_prd').AsString;
    cxsCycle.Value := q.FieldByName('cycle_time').AsFloat;
    cxsSetup.Value := q.FieldByName('setup_time').AsFloat;
    cxsWait.Value  := q.FieldByName('wait_time').AsFloat;
    cxsOutput.Value := q.FieldByName('output').AsFloat;
    cxsMotor.Value := q.FieldByName('daya_motor').AsFloat;
    cxsHeater.Value :=q.FieldByName('daya_heater').AsFloat;
    cxsLine.Value := q.FieldByName('line').AsFloat;
    cxsDie.Value :=  q.FieldByName('die').AsFloat ;
    cxsmesinmin.Value := q.FieldByName('lebar_mesin_min').AsFloat;
    cxsmesinmax.Value := q.FieldByName('lebar_mesin_max').AsFloat;
    cxsOperatorSet.Value := q.FieldByName('operator_setup').AsFloat;
    cxlSatuan.Text :=  tbl.FieldByName('satuan').AsString;

    pg.ActivePageIndex := 0;
    cxtKode.SetFocus;
    q.Close;
  end;
end;

procedure TfrmMstMesin.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmMstMesin.btnHapusClick(Sender: TObject);
var
  q: TZQuery;
begin
  {
  if Trim(cxtKode.Text) <> '' then begin
    q := OpenRS('SELECT * FROM tbl_so_head WHERE kode = %s',
      [cxtKode.Text]);
    if not q.IsEmpty then begin
      MsgBox('Kode Customer ini masih memiliki transaksi.');
    end
    else begin
      try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('UPDATE tbl_customer SET f_aktif = 0 WHERE kode = ' +
          cxtKode.Text);
        dm.zConn.Commit;
        MsgBox('Kode barang: ' + cxtKode.Text + ' sudah berhasil di non aktifkan.');
        zQry.Close;
        zQry.Open;
        btnBatalClick(nil);
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;
    end;
    q.Close;
  end;
  }
end;

end.
