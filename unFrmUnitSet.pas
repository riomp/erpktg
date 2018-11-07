unit unFrmUnitSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxSpinEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TFrmUnitSet1 = class(TfrmTplMaster)
    Label2: TLabel;
    cxtKode: TcxTextEdit;
    Label3: TLabel;
    cxtDescription: TcxTextEdit;
    Label5: TLabel;
    cxlBase: TcxLookupComboBox;
    Label6: TLabel;
    cxsQty: TcxSpinEdit;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxlUnit: TcxLookupComboBox;
    cxsConvert: TcxSpinEdit;
    cxsNo: TcxSpinEdit;
    btnTmbhDet: TButton;
    btHapus: TButton;
    cxtStat1: TcxTextEdit;
    zBase: TZQuery;
    ds1: TDataSource;
    zqry1: TZQuery;
    ds2: TDataSource;
    cxTblViewunitsetid: TcxGridDBColumn;
    cxTblViewdescription: TcxGridDBColumn;
    cxTblViewunitid: TcxGridDBColumn;
    cxTblViewqty: TcxGridDBColumn;
    cxGridDBTableView1no: TcxGridDBColumn;
    cxGridDBTableView1unitid: TcxGridDBColumn;
    cxGridDBTableView1convert: TcxGridDBColumn;
    cxGridDBTableView1unitsetid: TcxGridDBColumn;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnTmbhDetClick(Sender: TObject);
    procedure cxGridDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btHapusClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUnitSet1: TFrmUnitSet1;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TFrmUnitSet1.btnSimpanClick(Sender: TObject);
var
  f : Boolean ;
  q,z : TZQuery ;
begin
  if pg.ActivePageIndex<>0 then pg.ActivePageIndex := 0;

  if cxtKode.Text = '' then begin
     MsgBox('Kode Harus Diisi.');
     cxtKode.SetFocus ;
     end
     else begin
        q := OpenRS('SELECT * FROM tbl_unitset_head WHERE unitsetid =''%s''',
              [cxtKode.Text] );
        f:= True ;
        if Self.Jenis ='tambah' then begin
          if not q.IsEmpty then begin
            MsgBox('Kode Ini Sudah Ada');
            cxtKode.SelectAll ;
            cxtKode.SetFocus ;
            f:= False ;
            end
            else begin
              q.Insert;
            end;
          end
          else begin
            if q.IsEmpty then begin
              MsgBox('Kode Belum Ada');
              cxtKode.SelectAll ;
              cxtKode.SetFocus ;
              f:= False ;
              end
              else begin
                q.Edit ;
              end;
            end;
          end;

          if f then begin
            with q do begin
              FieldByName('unitsetid').AsString         := cxtKode.Text ;
              FieldByName('description').AsString       := cxtDescription.Text ;
              FieldByName('unitid').AsString            := cxlBase.EditValue ;
              FieldByName('qty').AsFloat                := cxsQty.Value  ;
              Post;
              Close;
              ds.DataSet.Refresh ;
            end;
            MsgBox('Data Sudah Disimpan');
            cxtKode.Text :='';
            cxtDescription.Text :='';
            cxlBase.Text :='';
            cxsQty.Value :=0;
            btnBatalClick(nil);
          end;

end;

procedure TFrmUnitSet1.btnBatalClick(Sender: TObject);
begin
  inherited;
  cxtKode.Text :='';
  cxtDescription.Text :='';
  cxlBase.Text :='';
  cxsQty.Value :=0;
  cxsNo.Value := 0;
  cxlUnit.Text :='';
  cxsConvert.Value :=0;
  zqry1.Close;
end;

procedure TFrmUnitSet1.cxTblViewCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  cxtKode.Text := zQry.fieldbyname('unitsetid').AsString ;
  cxtDescription.Text := zQry.fieldbyname('description').AsString;
  cxlBase.EditValue := zQry.fieldbyname('unitid').AsString;
  cxsQty.Value := zQry.fieldbyname('qty').AsFloat;
  pg.ActivePageIndex := 0;
  cxtDescription.SetFocus;
  PageControl1.Enabled :=True ;
  btHapus.Enabled := False ;
  cxtStat1.Text :='TAMBAH' ;
  
  if zqry1.Active then zqry1.Close;
    zqry1.ParamByName('Unit').AsString := cxtKode.Text ;
    zqry1.Open ;

end;

procedure TFrmUnitSet1.btnTmbhDetClick(Sender: TObject);
var
  q : TZQuery ;
begin
  if cxtKode.Text ='' then begin
  MsgBox('Kode Tidak Boleh Kosong') ;
  cxtKode.SetFocus ;
  end
  else begin
    if cxtStat1.Text  ='TAMBAH' then begin
      q := OpenRS('SELECT * FROM tbl_unitset_det WHERE no =''%s''',
      [cxsNo.Value] );
          if q.IsEmpty then begin
      MsgBox('No Ini Sudah Ada');
      cxsNo.SetFocus ;
     end
     else
        q.Insert;
        with q do begin
          Insert;
          FieldByName('no').AsInteger               := cxsNo.Value ;
          FieldByName('unitsetid').AsString         := cxtKode.Text  ;
          FieldByName('unitid').AsString            := cxlUnit.EditValue ;
          FieldByName('convert').AsFloat            := cxsConvert.Value  ;
          Post;
        end;
          q.Close;
          ds2.DataSet.Refresh;
          cxsNo.Value := 0;
          cxlUnit.Text :='';
          cxsConvert.Value :=0;
        end
    else begin
      if cxtStat1.Text ='EDIT' then begin
       q := OpenRS('SELECT * FROM tbl_unitset_det WHERE no=%s and unitsetid =''%s''',
      [cxsNo.Value,cxtKode.Text] );
        q.Edit;
      with q do begin
        Edit;
        FieldByName('no').AsInteger               := cxsNo.Value ;
        FieldByName('unitsetid').AsString         := cxtKode.Text  ;
        FieldByName('unitid').AsString            := cxlUnit.EditValue ;
        FieldByName('convert').AsFloat            := cxsConvert.Value  ;
        Post;
      end;
      q.Close;
      ds2.DataSet.Refresh;
      cxsNo.Value := 0;
      cxlUnit.Text :='';
      cxsConvert.Value :=0;
    end;
    end;
  end;

end;

procedure TFrmUnitSet1.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
   cxsNo.Value := zqry1.FieldByName('no').AsInteger ;
   cxtKode.Text:= zqry1.FieldByName('unitsetid').AsString ;
   cxlUnit.EditValue :=  zqry1.FieldByName('unitid').AsString  ;
   cxsConvert.Value :=  zqry1.FieldByName('convert').AsFloat ;
   btHapus.Enabled := True ;
   cxtStat1.Text :='EDIT' ;
end;


procedure TFrmUnitSet1.btHapusClick(Sender: TObject);
begin
  inherited;
   try
        dm.zConn.StartTransaction;
        dm.zConn.ExecuteDirect('DELETE FROM tbl_unitset_det WHERE no=''' + cxsNo.Text +''' and unitsetid  = ''' + cxtKode.Text + '''');
        dm.zConn.Commit;
        zQry1.Close;
        zQry1.Open;
        ds2.DataSet.Refresh ;
        cxsNo.Value := 0;
        cxlUnit.Text :='';
        cxsConvert.Value :=0;
      except
        on E: Exception do begin
          MsgBox('Error: ' + E.Message);
          dm.zConn.Rollback;
        end;
      end;

end;

procedure TFrmUnitSet1.btnTambahClick(Sender: TObject);
begin
  inherited;
  cxtStat1.Text :='TAMBAH';
end;

end.
