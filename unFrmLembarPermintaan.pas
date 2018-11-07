unit unFrmLembarPermintaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unFrmTransBaru, StdCtrls, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxMemo, cxDropDownEdit, cxCalendar, cxMaskEdit,
  cxTextEdit,ZDataset;

type
  TfrmLembarPermintaan = class(TfrmTransBaru)
    Label3: TLabel;
    cxeNoFRK: TcxTextEdit;
    Label4: TLabel;
    cxeDibuatOleh: TcxTextEdit;
    Label6: TLabel;
    cxeTanggal: TcxTextEdit;
    Label8: TLabel;
    cxCmbKategori: TcxComboBox;
    Label1: TLabel;
    cxdTanggal: TcxDateEdit;
    Label20: TLabel;
    cxmDeskProject: TcxMemo;
    Label2: TLabel;
    cxtJudul: TcxTextEdit;
    Label5: TLabel;
    cxtTujuan: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLembarPermintaan: TfrmLembarPermintaan;

implementation

uses unDm, unAplikasi, unTools;

{$R *.dfm}

procedure TfrmLembarPermintaan.FormCreate(Sender: TObject);
begin
  cxeNoFRK.Text := GetLastFak('jurnal-kerja');
  cxeDibuatOleh.Text := aplikasi.NamaUser;

  cxeTanggal.Text := FormatDateTime('dd-MM-yyyy',
    aplikasi.TanggalServer);

  cxCmbKategori.Properties.Items.Add('SAMPLE');
  cxCmbKategori.Properties.Items.Add('SERTIFIKAT/FILE PENDUKUNG');
  cxCmbKategori.Properties.Items.Add('CEK PROPERTIES');
  cxCmbKategori.Properties.Items.Add('KATALOG');


end;

procedure TfrmLembarPermintaan.btnSimpanClick(Sender: TObject);
var
  no : string ;
  tbl : TZTable ;
begin
  if Trim(cxCmbKategori.Text) = '' then
    cxCmbKategori.SetFocus
  else if (Trim(cxmDeskProject.Text) = '') then
    MsgBox('Deskripsi Project tidak boleh kosong.')
  else begin

    no := GetLastFak('jurnal-kerja');
    UpdateFaktur(Copy(no,1,8));

    try
      dm.zConn.StartTransaction;

      tbl := OpenTbl('tbl_jurnal_rnd');

      tbl.Insert;
      tbl.FieldByName('no_jurnal').AsString := no;
      tbl.FieldByName('dibuat_oleh').AsString := cxeDibuatOleh.Text;
      tbl.FieldByName('tgl_jurnal').AsDateTime := Aplikasi.TanggalServer;
      tbl.FieldByName('status').AsString := 'OPEN';
      tbl.FieldByName('kategori').AsString := cxCmbKategori.Text;
      tbl.FieldByName('project').AsString := cxmDeskProject.Text;
      tbl.FieldByName('judul').AsString := cxtJudul.Text;
      tbl.FieldByName('tujuan').AsString := cxtTujuan.Text;
      tbl.FieldByName('tgl_permintaan_selesai').AsDateTime := cxdTanggal.EditValue;
      tbl.Post;
      tbl.Close;
         dm.zConn.Commit;
    except
      on E: Exception do begin
        MsgBox('Error: ' + E.Message);
        dm.zConn.Rollback;
      end;
    end;

  end;

  btnKeluarClick(nil);

end;

end.
