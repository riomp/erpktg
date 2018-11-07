unit unFrmRouting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, StdCtrls, ExtCtrls,cxPC, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLabel, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset ;

type
  TfrmRouting = class(TfrmTplTrans)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    cxcmbRouting: TcxComboBox;
    cxtDescription: TcxTextEdit;
    cxsLebarTube: TcxSpinEdit;
    cxsMeterRoll: TcxSpinEdit;
    cxsTreatLuar: TcxSpinEdit;
    cxsTreatDalam: TcxSpinEdit;
    cxtPola1: TcxTextEdit;
    cxtPola2: TcxTextEdit;
    cxtCoreType: TcxTextEdit;
    cxsBobin: TcxSpinEdit;
    cxsCore: TcxSpinEdit;
    cxsSisi: TcxSpinEdit;
    cxtRegister: TcxTextEdit;
    Label37: TLabel;
    cxtCylinder: TcxTextEdit;
    cxsTepiKiri: TcxSpinEdit;
    cxsTepiKanan: TcxSpinEdit;
    cxsTepiAtas: TcxSpinEdit;
    cxsTepiBawah: TcxSpinEdit;
    cxtUrutanWarna: TcxTextEdit;
    cxsLebar: TcxSpinEdit;
    cxsPanjang: TcxSpinEdit;
    cxsToleransi: TcxSpinEdit;
    cxcmbGulungan: TcxComboBox;
    cxsJmlMD: TcxSpinEdit;
    cxsCMMD: TcxSpinEdit;
    cxsJmlTD: TcxSpinEdit;
    cxsCMTD: TcxSpinEdit;
    cxsJmlCylinder: TcxSpinEdit;
    cxsCircum: TcxSpinEdit;
    cxsDiameter: TcxSpinEdit;
    Label32: TLabel;
    cxsPCylinder: TcxSpinEdit;
    cxtArahFilm: TcxTextEdit;
    cxsJarakLas: TcxSpinEdit;
    cxsPanjangLas: TcxSpinEdit;
    cxsLasAtas: TcxSpinEdit;
    cxsLasBawah: TcxSpinEdit;
    cxtStat: TcxLabel;
    cxtItem: TcxLabel;
    zqrRouting: TZQuery;
    Id: TLabel;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRouting: TfrmRouting;

implementation

uses unMasterItem, unDm, unTools, unFrmUtama;

{$R *.dfm}

procedure TfrmRouting.btnSimpanClick(Sender: TObject);
var
  q : TZQuery ;
   t: TcxTabSheet;
begin
  inherited;
  if cxcmbRouting.Text = '' then begin
  MsgBox('Pilih Type Routing');
  cxcmbRouting.SetFocus ;
  end
  else begin
  if cxtStat.Caption = 'Tambah Baru' then begin
    q := OpenRS('SELECT * FROM tbl_routing WHERE Id_Item =''%s''',
    [cxtItem.Caption] );
    q.Insert;
    with q do begin
      Insert;
      FieldByName('Id_Item').AsString       := cxtItem.Caption;
      FieldByName('Kode_Routing').AsString  := cxcmbRouting.Text;
      FieldByName('Description').AsString   := cxtDescription.Text;
      FieldByName('LebarTube').AsFloat      := cxsLebarTube.Value;

      Post;
    end ;
    q.Close;
    MsgBox('Data Sudah Disimpan');
     btnKeluarClick(btnKeluar);
  end
  else begin
   if cxtStat.Caption = 'Edit Routing' then begin
    q := OpenRS('SELECT * FROM tbl_routing WHERE Id_Item ='''+ cxtItem.Caption + ''' and Id =''%s''',
    [Id.Caption] );
    q.Edit;
    with q do begin
      Edit;
      FieldByName('Id_Item').AsString       := cxtItem.Caption;
      FieldByName('Kode_Routing').AsString  := cxcmbRouting.Text;
      FieldByName('Description').AsString   := cxtDescription.Text;
      FieldByName('LebarTube').AsFloat      := cxsLebarTube.Value;
      Post;
    end ;
    q.Close;
    MsgBox('Data Sudah Disimpan');
     btnKeluarClick(btnKeluar);
   end;
  end;
  end

  end;

procedure TfrmRouting.btnKeluarClick(Sender: TObject);
var
   t: TcxTabSheet;
begin
  inherited;
   t := (Self.Parent as TcxTabSheet);
   t.Free;
end;

procedure TfrmRouting.btnHapusClick(Sender: TObject);
var i : Integer ;
begin
  inherited;
 i := QBox(Self, 'Hapus Routing : ' + cxcmbRouting.EditValue ,'Hapus Item') ;
     if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_routing WHERE Id_Item = ''' + cxtItem.Caption  + ''' and Id='''+ Id.Caption  +'''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Routing berhasil.');
            {ds1.DataSet.Refresh;
            KunciForm;  }
                    btnKeluarClick(btnKeluar);
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;

end;

end.
