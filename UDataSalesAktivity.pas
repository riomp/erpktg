unit UDataSalesAktivity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzButton, ExtCtrls, RzPanel,cxPC, jpeg;

type
  TFrm_DataAktivitas = class(TForm)
    RzPanel1: TRzPanel;
    BtnUpdate: TRzToolButton;
    BtnFilter: TRzToolButton;
    RzPanel2: TRzPanel;
    BtnSelesai: TRzBitBtn;
    BtnBaru: TRzBitBtn;
    BtnEdit: TRzBitBtn;
    BtnHapus: TRzBitBtn;
    dbgdata: TcxGrid;
    dbgdataDBTableView1: TcxGridDBTableView;
    dbgdataLevel1: TcxGridLevel;
    QData: TZQuery;
    DSData: TDataSource;
    dbgdataDBTableView1id: TcxGridDBColumn;
    dbgdataDBTableView1kategori: TcxGridDBColumn;
    dbgdataDBTableView1pic: TcxGridDBColumn;
    dbgdataDBTableView1tujuan: TcxGridDBColumn;
    dbgdataDBTableView1keterangan: TcxGridDBColumn;
    dbgdataDBTableView1tgl: TcxGridDBColumn;
    dbgdataDBTableView1nama: TcxGridDBColumn;
    dbgdataDBTableView1target: TcxGridDBColumn;
    dbgdataDBTableView1tlp: TcxGridDBColumn;
    dbgdataDBTableView1area: TcxGridDBColumn;
    dbgdataDBTableView1info_produk: TcxGridDBColumn;
    dbgdataDBTableView1info_kompetitor: TcxGridDBColumn;
    Timer1: TTimer;
    procedure BtnBaruClick(Sender: TObject);
    procedure BtnSelesaiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnUpdateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      procedure RefreshQ;
  end;

var
  Frm_DataAktivitas: TFrm_DataAktivitas;

implementation

uses UDM, UMain, UFFoto, UFotoAktivitas;

{$R *.dfm}

procedure TFrm_DataAktivitas.BtnBaruClick(Sender: TObject);
var
  f: TFrm_FotoAktivity;
  Stream : TMemoryStream;
  jpg : TJPEGImage;
begin
  //Application.CreateForm(TFrm_FotoAktivity,Frm_FotoAktivity);
  f := TFrm_FotoAktivity.Create(self);

  with TZQuery.Create(Self)do begin
       Connection := DM.Con;
        Close;
        SQL.Text := 'select b.foto from tbl_salesactivity as a left join tbl_salesactivity_det as b on a.id=b.id_activity where a.id=:na';
        ParamByName('na').Value := QData.FieldValues['id'];
        Open;
      if not QData.FieldByName('foto').IsNull then begin
          Stream := TMemoryStream.Create;
          TBlobField(QData.FieldByName('foto')).SaveToStream(stream);
          Stream.Position := 0;

        jpg := TJPEGImage.Create;
        jpg.LoadFromStream(Stream);

        f.Image1.Picture.Assign(jpg);

        Stream.Free;
        jpg.Free;
      end;
     end;

      f.ShowModal ;
  end;


procedure TFrm_DataAktivitas.RefreshQ;
begin
   with QData do begin
    Close;
      SQL.Clear;
      SQL.Text := 'select a.* ,b.foto from tbl_salesactivity as a left join tbl_salesactivity_det as b on a.id=b.id_activity order by date(a.tgl) desc';
      Open;
    end;
end;

procedure TFrm_DataAktivitas.BtnSelesaiClick(Sender: TObject);
var
  ts: TcxTabSheet;
begin
   ts := (Self.parent as TcxTabSheet);
  Frm_Main.CloseTab(Self, ts);
end;

procedure TFrm_DataAktivitas.FormShow(Sender: TObject);
begin
RefreshQ;
end;

procedure TFrm_DataAktivitas.BtnUpdateClick(Sender: TObject);
begin
RefreshQ
end;

end.
