unit unFrmUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, cxLabel, ExtCtrls, cxTextEdit,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmUnit = class(TfrmTplMaster)
    cxTblViewunitid: TcxGridDBColumn;
    cxTblViewdescription: TcxGridDBColumn;
    Label2: TLabel;
    cxtKode: TcxTextEdit;
    Label3: TLabel;
    cxtDescription: TcxTextEdit;
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnHapusClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUnit: TfrmUnit;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmUnit.btnTambahClick(Sender: TObject);
begin
  inherited;
  cxtKode.SetFocus;
end;

procedure TfrmUnit.btnSimpanClick(Sender: TObject);
var
  f : Boolean ;
  i : Integer ;
  q : TZQuery ;
begin
  if pg.ActivePageIndex<>0 then pg.ActivePageIndex := 0;

  if cxtKode.Text = '' then begin
     MsgBox('Kode Harus Diisi.');
     cxtKode.SetFocus ;
     end
     else begin
        q := OpenRS('SELECT * FROM tbl_unit WHERE unitid =''%s''',
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
              MsgBox('Kode Barang Belum Ada');
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
              FieldByName('unitid').AsString          := cxtKode.Text ;
              FieldByName('description').AsString     := cxtDescription.Text ;
              Post;
              Close;
              ds.DataSet.Refresh ;
            end;
            MsgBox('Data Sudah Disimpan');
            cxtKode.Text :='';
            cxtDescription.Text :='';
            btnBatalClick(nil);
          end;
        end;

procedure TfrmUnit.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
    q : TZQuery ;
begin
  inherited;
  cxtKode.Text := zQry.fieldbyname('unitid').AsString ;
  pg.ActivePageIndex := 0;
  cxtKode.SetFocus;

   q := OpenRS('SELECT * FROM tbl_unit WHERE unitid =''%s''',
    [cxtKode.Text] );

    with q do begin
      cxtKode.Text        := FieldByName('unitid').AsString;
      cxtDescription.Text := FieldByName('description').AsString;
    end;
end;

procedure TfrmUnit.btnHapusClick(Sender: TObject);
var
  i : Integer ;
begin
  inherited;
   i := QBox(Self, 'Hapus Unit: ' + cxtKode.Text,'Hapus Unit') ;
     if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_unit WHERE unitid = ''' + cxtKode.Text + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Unit berhasil.');
            ds.DataSet.Refresh;
            btnBatalClick(nil);
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
end;

procedure TfrmUnit.btnBatalClick(Sender: TObject);
begin
  inherited;
  cxtKode.Text :='';
  cxtDescription.Text :='';
end;

end.
