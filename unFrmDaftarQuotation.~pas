unit unFrmDaftarQuotation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTplTrans, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxSpinEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ZAbstractRODataset, ZDataset,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, StdCtrls,cxPC,
  ExtCtrls;

type
  TfrmDaftarQuotation = class(TfrmTplTrans)
    cxLabel1: TcxLabel;
    cxdTgl1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxdTgl2: TcxDateEdit;
    btnProses: TButton;
    zqrDaftarQuotation: TZReadOnlyQuery;
    dsDaftarQuotation: TDataSource;
    zQuotationDet: TZReadOnlyQuery;
    dsQuotationDet: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGridDBTableView1no_quote: TcxGridDBColumn;
    cxGridDBTableView1tgl_trans: TcxGridDBColumn;
    cxGridDBTableView1kode_customer: TcxGridDBColumn;
    cxGridDBTableView1nama: TcxGridDBColumn;
    cxGrid2DBTableView1no: TcxGridDBColumn;
    cxGrid2DBTableView1kode_item: TcxGridDBColumn;
    cxGrid2DBTableView1qty: TcxGridDBColumn;
    cxGrid2DBTableView1unitid: TcxGridDBColumn;
    cxGrid2DBTableView1deskripsi: TcxGridDBColumn;
    btnCetak: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCetakClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDaftarQuotation: TfrmDaftarQuotation;

implementation

uses
  unDm, unTools, unAplikasi, unFrmQuotetion, unFrmLapUmum, unFrmLaporan1, unFrmUtama;

{$R *.dfm}

procedure TfrmDaftarQuotation.FormCreate(Sender: TObject);
begin
  inherited;
  cxdTgl1.Date := FDOM(Date);
  cxdTgl2.Date := LDOM(Date);
end;

procedure TfrmDaftarQuotation.btnProsesClick(Sender: TObject);
begin
  inherited;
  with zqrDaftarQuotation do begin
    if Active then Close;
    Screen.Cursor := crSQLWait;
    ParamByName('tgl1').AsDateTime := cxdTgl1.Date;
    ParamByName('tgl2').AsDateTime := cxdTgl2.Date;
    Open;
    Screen.Cursor := crDefault;
  end;
  zQuotationDet.Close ;
  zQuotationDet.Open ;
end;

procedure TfrmDaftarQuotation.btnBaruClick(Sender: TObject);
var
 f : TfrmQuotetion ;
begin
  inherited;
  f := TfrmQuotetion.Create(self);
  f.Jenis := 'tambah';
  f.ShowModal;
  zqrDaftarQuotation.Close;
  zqrDaftarQuotation.Open;
end;

procedure TfrmDaftarQuotation.btnEditClick(Sender: TObject);
var
  f :TfrmQuotetion ;
begin
  inherited;

    f :=TfrmQuotetion.Create(self);
    f.Jenis := 'edit';
    f.NoQuot:= zqrDaftarQuotation.FieldByName('no_quote').AsString;
    f.ShowModal;
    zqrDaftarQuotation.Close;
    zqrDaftarQuotation.Open;
end;

procedure TfrmDaftarQuotation.btnCetakClick(Sender: TObject);
var
  f: TFrm_LaporanUmum1 ;
begin

   f := TFrm_LaporanUmum1.Create(Self);
    with f do begin
      zqrQuote.Close;
      zqrQuote.ParamByName('no_quote').AsString := zqrDaftarQuotation.FieldByName('no_quote').AsString;
      zqrQuote.Open;
      rptQuote.ShowReport(True);
    end;
    f.Release;
end;

procedure TfrmDaftarQuotation.btnHapusClick(Sender: TObject);
var
  q : TZQuery;
  i : Integer;
begin
  inherited;
  q := OpenRS('SELECT * FROM tbl_kpo_head where no_quote =''%s''',[ zqrDaftarQuotation.FieldByName('no_quote').AsString]) ;

  if not q.IsEmpty then begin
     MsgBox('Quotetion ini sudah ada transaksi!');
     end
  else begin
        i := QBox(Self, 'Hapus Quotation Nomer: ' + zqrDaftarQuotation.FieldByName('no_quote').AsString,'Hapus Quotation');
        if i = IDYES then begin
          try
            dm.zConn.StartTransaction;
            dm.zConn.ExecuteDirect('DELETE FROM tbl_quote_head WHERE no_quote = ''' + zqrDaftarQuotation.FieldByName('no_quote').AsString + '''');
            dm.zConn.ExecuteDirect('DELETE FROM tbl_quote_det WHERE no_quote = ''' + zqrDaftarQuotation.FieldByName('no_quote').AsString + '''');
            dm.zConn.Commit;
            MsgBox('Penghapusan Quotation berhasil.');
            zqrDaftarQuotation.Close;
            zqrDaftarQuotation.Open;
          except
            on E: Exception do begin
              MsgBox('Error: ' + E.Message);
              dm.zConn.Rollback;
            end;
          end;
        end;
    end;

end;

procedure TfrmDaftarQuotation.btnKeluarClick(Sender: TObject);
var
  ts: TcxTabSheet;
begin
  inherited;
  Close;
  //ts := (Self.parent as TcxTabSheet);
  ts.Free;
end;

end.
