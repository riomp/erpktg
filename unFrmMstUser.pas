unit unFrmMstUser;

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
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxLabel, cxTextEdit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, ExtCtrls, cxCheckBox, cxMaskEdit,
  cxSpinEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmMstUser = class(TfrmTplMaster)
    cxtNamaUser: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxtPass: TcxTextEdit;
    cxGrdDBTableView1namauser: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxtKonf: TcxTextEdit;
    chkAktif: TcxCheckBox;
    cxLabel4: TcxLabel;
    cxCmbDept: TcxComboBox;
    cxLabel5: TcxLabel;
    cxtEmail: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxCmbJabatan: TcxComboBox;
    cxLabel8: TcxLabel;
    cxtNamaLengkap: TcxTextEdit;
    chkGames: TcxCheckBox;
    cxLabel7: TcxLabel;
    cxCmbDivisi: TcxComboBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxlAtasan1: TcxLookupComboBox;
    cxlAtasan2: TcxLookupComboBox;
    zqrAtasan2: TZQuery;
    dsAtasan2: TDataSource;
    zqrAtasan1: TZQuery;
    dsAtasan1: TDataSource;
    procedure btnSimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
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
  frmMstUser: TfrmMstUser;

implementation

uses unDm, unTools;

{$R *.dfm}

procedure TfrmMstUser.btnSimpanClick(Sender: TObject);
var
  f: boolean;
  i: Integer;
  q: TZQuery;
  stmp: string;
begin
  if pg.ActivePageIndex <> 0 then pg.ActivePageIndex := 0;

  if Trim(cxtNamaUser.Text) = '' then begin
    MsgBox('Nama User harus diisi.');
    cxtNamaUser.SetFocus;
  end
  {
  else if Trim(cxtPass.Text) = '' then begin
    MsgBox('Password harus diisi.');
    cxtPass.SetFocus;
  end
  else if Trim(cxtKonf.Text) = '' then begin
    MsgBox('Konfirmasi Password harus diisi.');
    cxtKonf.SetFocus;
  end
  }
  else if Trim(cxCmbDept.Text) = '' then begin
    MsgBox('Departemen harus diisi.');
    cxtKonf.SetFocus;
  end
  else begin

    if Self.Jenis = 'tambah' then begin
      if Trim(cxtPass.Text) = '' then begin
        MsgBox('Password harus diisi.');
        cxtPass.SetFocus;
        Abort;
      end
      else if Trim(cxtKonf.Text) = '' then begin
        MsgBox('Konfirmasi Password harus diisi.');
        cxtKonf.SetFocus;
        Abort;
      end;

      if Length(Trim(cxtPass.Text)) < 6 then begin
        MsgBox('Panjang password minimal 6 karakter.');
        cxtPass.SelectAll;
        cxtPass.SetFocus;
        Abort;
      end
      else if Trim(cxtPass.Text) <> Trim(cxtKonf.Text) then begin
        MsgBox('Password dan konfirmasi password harus sama.');
        cxtKonf.SelectAll;
        cxtKonf.SetFocus;
        Abort;
      end

    end;

    if Pos(' ', Trim(cxtNamaUser.Text)) > 0 then begin
      MsgBox('Nama user tidak boleh ada spasi.');
      cxtNamaUser.SetFocus;
    end
    else begin
      f := True;
      if self.Jenis = 'tambah' then begin
        if CheckKey('tbl_user','nama', QuotedStr(Trim(cxtNamaUser.Text))) then begin
          MsgBox('Nama user sudah ada.');
          cxtNamaUser.SelectAll;
          cxtNamaUser.SetFocus;
          f := False;
        end
        else
          tbl.Insert;
      end
      else begin
        if not CheckKey('tbl_user','nama',QuotedStr(Trim(cxtNamaUser.Text))) then begin
          MsgBox('Nama user belum ada.');
          cxtNamaUser.SelectAll;
          cxtNamaUser.SetFocus;
          f := False;
        end
        else begin
          tbl.Locate('nama',Trim(cxtNamaUser.Text),[loCaseInsensitive]);
          tbl.Edit;
        end;
      end;

      if f then begin
        tbl.FieldByName('nama').AsString := cxtNamaUser.Text;
        tbl.FieldByName('nama_lengkap').AsString := cxtNamaLengkap.Text;

        if Self.Jenis = 'tambah' then
          tbl.FieldByName('password').AsString := unTools.MySQLPassword(cxtPass.Text)
        else begin
          if (Trim(cxtPass.Text) <> '') then begin
            tbl.FieldByName('password').AsString := unTools.MySQLPassword(cxtPass.Text)
          end;
        end;

        if chkAktif.Checked then
          i := 1
        else
          i := 0;

        tbl.FieldByName('f_aktif').AsInteger := i;
        tbl.FieldByName('user_dept').AsString := cxCmbDept.Text;
        tbl.FieldByName('jabatan').AsString := cxCmbJabatan.Text;
        tbl.FieldByName('email').AsString := Trim(cxtEmail.Text);
        tbl.FieldByName('divisi').AsString := Trim(cxCmbDivisi.Text);
        tbl.FieldByName('atasan1').AsString := cxlAtasan1.Text;
        tbl.FieldByName('atasan2').AsString := cxlAtasan2.Text;

        if chkGames.Checked then
          i := 1
        else
          i := 0;
          
        tbl.FieldByName('f_games').AsInteger := i;
        tbl.Post;

        MsgBox('Data user sudah disimpan.');
        ClearAll;
        zQry.Close;
        zQry.Open;

        btnBatalClick(nil);
      end;
    end;
  end;
end;

procedure TfrmMstUser.FormCreate(Sender: TObject);
var
  q: TZQuery;
begin
  inherited;
  tbl := OpenTbl('tbl_user');

  q := OpenRS('SELECT * FROM tbl_bagian ORDER BY bagian');
  while not q.Eof do begin
    cxCmbDept.Properties.Items.Add(q.fieldByName('bagian').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbDept.ItemIndex := 0;

  q := OpenRS('SELECT * FROM tbl_jabatan ORDER BY jabatan');
  while not q.Eof do begin
    cxCmbJabatan.Properties.Items.Add(q.FieldByName('jabatan').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbJabatan.ItemIndex := 0;

  q := OpenRS('SELECT * FROM tbl_divisi ORDER BY divisi');
  while not q.Eof do begin
    cxCmbDivisi.Properties.Items.Add(q.FieldByName('divisi').AsString);
    q.Next;
  end;
  q.Close;
  cxCmbDivisi.ItemIndex := 0;
  
  zQry.Open;
  zqrAtasan1.Open;
  zqrAtasan2.Open;
end;

procedure TfrmMstUser.btnTambahClick(Sender: TObject);
begin
  inherited;
  chkAktif.Checked := True;
  cxtNamaUser.SetFocus;
end;

procedure TfrmMstUser.cxTblViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  q: TZQuery;
begin
  inherited;
  if Self.Jenis = 'edit' then begin
    q := OpenRS('SELECT * FROM tbl_user WHERE nama = ''%s''',
      [zQry.FieldByName('nama').AsString]);
    cxtNamaUser.Text := q.FieldByName('nama').AsString;
    cxtNamaLengkap.Text := q.FieldByName('nama_lengkap').AsString;
    cxCmbDept.Text := q.FieldByName('user_dept').AsString;
    cxCmbJabatan.Text := q.FieldByName('jabatan').AsString;
    cxtEmail.Text := q.FieldByName('email').AsString;
    cxCmbDivisi.Text := q.FieldByName('divisi').AsString;
    cxlAtasan1.Text := q.FieldByName('atasan1').AsString;
    cxlAtasan2.Text := q.FieldByName('atasan2').AsString;

    if q.FieldByName('f_aktif').AsInteger = 1 then
      chkAktif.Checked := True
    else
      chkAktif.Checked := False;

    if q.FieldByName('f_games').AsInteger = 1 then
      chkGames.Checked := True
    else
      chkGames.Checked := False;
      
    pg.ActivePageIndex := 0;
    cxtNamaUser.SetFocus;
    q.Close;
  end;
end;

procedure TfrmMstUser.ClearAll;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do begin
    if Components[i].Tag = 1 then
      (Components[i] as TcxTextEdit).Text := '';
  end;
  chkAktif.Checked := False;
  chkGames.Checked := False;
  cxlAtasan1.Text := '';
  cxlAtasan2.Text := '';
end;

procedure TfrmMstUser.btnBatalClick(Sender: TObject);
begin
  inherited;
  ClearAll;
end;

procedure TfrmMstUser.btnHapusClick(Sender: TObject);
var
  i: Integer;
begin
  if Trim(cxtNamaUser.Text) <> '' then begin
  
    if Trim(cxtNamaUser.Text) = 'ADMIN' then 
      MsgBox('User ADMIN tidak bisa dihapus.')
    else begin
      i := unTools.QBox(Self, 'Hapus user ini ?','Hapus User');
      if i = IDYES then begin
        if tbl.Locate('nama',Trim(cxtNamaUser.Text),[loCaseInsensitive]) then begin
          tbl.Edit;
          tbl.FieldByName('f_aktif').AsInteger := 0;
          tbl.Post;
        end;
        zQry.Close;
        zQry.Open;
        MsgBox('User berhasil dihapus.');
        ClearAll;
      end;
    end;
  end;

end;

end.
