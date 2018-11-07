unit unFrmUtama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DB, ADODB, ZConnection, IniFiles,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset;

const
c1 = 52845;
c2 = 22719;

type
  TfrmUtama = class(TForm)
    prgBar: TProgressBar;
    btnMulai: TButton;
    btnKeluar: TButton;
    adoConn: TADOConnection;
    Label1: TLabel;
    zConn: TZConnection;
    ZTable1: TZTable;
    btnHapusSemua: TButton;
    Button1: TButton;
    Button2: TButton;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnMulaiClick(Sender: TObject);
    procedure btnHapusSemuaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function AppPath: string;
    function Decrypt (const s: string; Key: Word) : string;
    function MySQLPassword(sPassword: string): string;
  public
    { Public declarations }
  end;

var
  frmUtama: TfrmUtama;

implementation

uses unDm, LbCipher, LbString;

var
  Key128: TKey128;

{$R *.dfm}
{$R windowsxp.RES}

function TFrmUtama.Decrypt (const s: string; Key: Word) : string;
var
  i : byte;
begin
  {Result[0] := s[0];}
  Result:=s;
  for i := 0 to (length (s)) do
  begin
    Result[i] := Char (byte (s[i]) xor (Key shr 8));
    Key := (byte (s[i]) + Key) * c1 + c2
  end
end;

function TFrmUtama.AppPath: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

procedure TfrmUtama.btnKeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmUtama.FormCreate(Sender: TObject);
var
  FileIni,
  db, host, user, password: string;
  Ini: TIniFile;
begin
  adoConn.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
    'Data Source=' + AppPath + '\import2.xls;' +
    'Extended Properties="Excel 8.0;HDR=Yes;IMEX=1"';
  adoConn.Connected := true;

  FileIni := AppPath + 'setting.ini';
  Ini := TIniFile.Create(FileIni);

  db := Ini.ReadString('database','db','');
  host := Ini.ReadString('database','host','');
  user := Ini.ReadString('database','user','');
  password := Ini.ReadString('database','password','');

  try
    zConn.Catalog := db;
    zConn.Database := db;
    zConn.HostName := host;
    zConn.User := user;
    zConn.Password := password;
    zConn.Connect;
    except
      on E:Exception do begin
        MessageDlg('MySQL Service down.', mtInformation, [mbOk], 0);
        Application.Terminate;
        Abort;
      end;
    end;
    
  Label1.Caption := '';

  self.Caption := self.Caption + ' [03.05.2011]';
end;

procedure TfrmUtama.btnMulaiClick(Sender: TObject);
var
  lstTable, lstTable2: TStringList;
  i,j,recNo: integer;
  q: TAdoQuery;
  tbl: TZTable;
begin

  lstTable := TStringList.Create;
  lstTable2 := TStringList.Create;

  //lstTable.Add('[tbl_kategori$]');
  lstTable.Add('[tbl_barang$]');
  //lstTable.Add('[tbl_user$]');
  //lstTable.Add('[tbl_mesin$]');
  //lstTable.Add('[tbl_customer$]');
  //lstTable.Add('[tbl_supplier$]');
  //lstTable.Add('[tbl_alamat_kirim$]');

  //lstTable2.Add('tbl_kategori');
  lstTable2.Add('tbl_barang');
  //lstTable2.Add('tbl_user');
  //lstTable2.Add('tbl_mesin');
  //lstTable2.Add('tbl_customer');
  //lstTable2.Add('tbl_supplier');
  //lstTable2.Add('tbl_alamat_kirim');

  q := TAdoQuery.Create(nil);
  q.Connection := adoConn;

  tbl := TZTable.Create(nil);
  tbl.Connection := zConn;

  btnHapusSemua.Enabled := False;
  btnMulai.Enabled := False;
  btnKeluar.Enabled := False;

  Screen.Cursor := crSQLWait;
  for i := 0 to lstTable.Count - 1 do begin
    q.SQL.Text := 'SELECT * FROM ' + lstTable.Strings[i];
    q.Open;

    tbl.TableName := lstTable2.Strings[i];
    tbl.Open;

    recNo := 1;
    prgBar.Max := q.RecordCount;
    prgBar.Step := 1;
    while not q.Eof do begin
      label1.Caption := 'Table: ' + lstTable2.Strings[i] +
        ', Record: ' + IntToStr(recNo);
      label1.Refresh;

      try
        // worksheet barang
        if lstTable.Strings[i] = '[tbl_barang$]' then begin

          if q.FieldByName('skip').AsString = 'x' then begin
            q.Next;
            Continue;
          end;

          if tbl.Locate('kode',q.FieldByName('kode').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('kode').AsString := q.FieldByName('kode').AsString;
          tbl.FieldByName('deskripsi').AsString := UpperCase(Trim(q.FieldByName('deskripsi').AsString));

          if Trim(q.FieldByName('b_stok').AsString) <> '' then
            tbl.FieldByName('b_stok').AsString := q.FieldByName('b_stok').AsString;

          if Trim(q.FieldByName('satuan').AsString) <> '' then
            tbl.FieldByName('satuan').AsString := q.FieldByName('satuan').AsString;

          if Trim(q.FieldByName('tipe').AsString) <> '' then
            tbl.FieldByName('tipe').AsString := q.FieldByName('tipe').AsString;

          if Trim(q.FieldByName('kategori').AsString) <> '' then
            tbl.FieldByName('kategori').AsString := q.FieldByName('kategori').AsString;

          if Trim(q.FieldByName('subkategori').AsString) <> '' then
            tbl.FieldByName('subkategori').AsString := q.FieldByName('subkategori').AsString;

          if Trim(q.FieldByName('divisi').AsString) <> '' then
            tbl.FieldByName('divisi').AsString := q.FieldByName('divisi').AsString;

          if Trim(q.FieldByName('packinfo').AsString) <> '' then
            tbl.FieldByName('packinfo').AsString := q.FieldByName('packinfo').AsString;

          if Trim(q.FieldByName('f_aktif').AsString) <> '' then
            tbl.FieldByName('f_aktif').AsString := q.FieldByName('f_aktif').AsString;

          if Trim(q.FieldByName('warna').AsString) <> '' then
            tbl.FieldByName('warna').AsString := q.FieldByName('warna').AsString;

          if Trim(q.FieldByName('panjang').AsString) <> '' then
            tbl.FieldByName('panjang').AsString := q.FieldByName('panjang').AsString;

          if Trim(q.FieldByName('s_panjang').AsString) <> '' then
            tbl.FieldByName('s_panjang').AsString := q.FieldByName('s_panjang').AsString;

          if Trim(q.FieldByName('lebar').AsString) <> '' then
            tbl.FieldByName('lebar').AsString := q.FieldByName('lebar').AsString;

          if Trim(q.FieldByName('s_lebar').AsString) <> '' then
            tbl.FieldByName('s_lebar').AsString := q.FieldByName('s_lebar').AsString;

          if Trim(q.FieldByName('tebal').AsString) <> '' then
            tbl.FieldByName('tebal').AsString := q.FieldByName('tebal').AsString;

          if Trim(q.FieldByName('s_tebal').AsString) <> '' then
            tbl.FieldByName('s_tebal').AsString := q.FieldByName('s_tebal').AsString;

          if Trim(q.FieldByName('diameter').AsString) <> '' then
            tbl.FieldByName('diameter').AsString := q.FieldByName('diameter').AsString;

          if Trim(q.FieldByName('s_diameter').AsString) <> '' then
            tbl.FieldByName('s_diameter').AsString := q.FieldByName('s_diameter').AsString;

          if Trim(q.FieldByName('diameter_dalam').AsString) <> '' then
            tbl.FieldByName('diameter_dalam').AsString := q.FieldByName('diameter_dalam').AsString;

          if Trim(q.FieldByName('s_diameter_dalam').AsString) <> '' then
            tbl.FieldByName('s_diameter_dalam').AsString := q.FieldByName('s_diameter_dalam').AsString;

          if Trim(q.FieldByName('diameter_luar').AsString) <> '' then
            tbl.FieldByName('diameter_luar').AsString := q.FieldByName('diameter_luar').AsString;

          if Trim(q.FieldByName('s_diameter_luar').AsString) <> '' then
            tbl.FieldByName('s_diameter_luar').AsString := q.FieldByName('s_diameter_luar').AsString;

          if Trim(q.FieldByName('panjang_lurus').AsString) <> '' then
            tbl.FieldByName('panjang_lurus').AsString := q.FieldByName('panjang_lurus').AsString;

          if Trim(q.FieldByName('packing').AsString) <> '' then
            tbl.FieldByName('packing').AsString := q.FieldByName('packing').AsString;

          if Trim(q.FieldByName('berat_per_unit').AsString) <> '' then
            tbl.FieldByName('berat_per_unit').AsString := q.FieldByName('berat_per_unit').AsString;

          if Trim(q.FieldByName('s_berat').AsString) <> '' then
            tbl.FieldByName('s_berat').AsString := q.FieldByName('s_berat').AsString;

          if Trim(q.FieldByName('isi_pak').AsString) <> '' then
            tbl.FieldByName('isi_pak').AsString := q.FieldByName('isi_pak').AsString;

          if Trim(q.FieldByName('berat_per_unit_b').AsString) <> '' then
            tbl.FieldByName('berat_per_unit_b').AsString := q.FieldByName('berat_per_unit_b').AsString;

          if Trim(q.FieldByName('s_berat_per_unit_b').AsString) <> '' then
            tbl.FieldByName('s_berat_per_unit_b').AsString := q.FieldByName('s_berat_per_unit_b').AsString;

          if Trim(q.FieldByName('flow_process').AsString) <> '' then
            tbl.FieldByName('flow_process').AsString := q.FieldByName('flow_process').AsString;

          if Trim(q.FieldByName('f_aktif').AsString) <> '' then
            tbl.FieldByName('f_aktif').AsString := q.FieldByName('f_aktif').AsString;

          if Trim(q.FieldByName('f_ed').AsString) <> '' then
            tbl.FieldByName('f_ed').AsString := q.FieldByName('f_ed').AsString;

          if Trim(q.FieldByName('f_tds').AsString) <> '' then
            tbl.FieldByName('f_tds').AsString := q.FieldByName('f_tds').AsString;

          if Trim(q.FieldByName('hrg_kel1').AsString) <> '' then
            tbl.FieldByName('hrg_kel1').AsString := q.FieldByName('hrg_kel1').AsString;

          if Trim(q.FieldByName('hrg_kel2').AsString) <> '' then
            tbl.FieldByName('hrg_kel2').AsString := q.FieldByName('hrg_kel2').AsString;

          if Trim(q.FieldByName('lokasi').AsString) <> '' then
            tbl.FieldByName('lokasi').AsString := q.FieldByName('lokasi').AsString;
        end
        // worksheet customer
        else if lstTable.Strings[i] = '[tbl_customer$]' then begin

          if q.FieldByName('skip').AsString = 'x' then begin
            q.Next;
            Continue;
          end;

          if tbl.Locate('kode',q.FieldByName('kode').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('kode').AsString := UpperCase(Trim(q.FieldByName('kode').AsString));
          tbl.FieldByName('nama').AsString := UpperCase(Trim(q.FieldByName('nama').AsString));
          tbl.FieldByName('kontak').AsString := UpperCase(Trim(q.FieldByName('kontak').AsString));
          tbl.FieldByName('alamat').AsString := UpperCase(Trim(q.FieldByName('alamat').AsString));
          tbl.FieldByName('kota').AsString := UpperCase(Trim(q.FieldByName('kota').AsString));
          tbl.FieldByName('provinsi').AsString := UpperCase(Trim(q.FieldByName('provinsi').AsString));
          tbl.FieldByName('negara').AsString := UpperCase(Trim(q.FieldByName('negara').AsString));
          tbl.FieldByName('telpon').AsString := UpperCase(Trim(q.FieldByName('telpon').AsString));
          tbl.FieldByName('fax').AsString := UpperCase(Trim(q.FieldByName('fax').AsString));
          tbl.FieldByName('hp').AsString := UpperCase(Trim(q.FieldByName('hp').AsString));
          tbl.FieldByName('direct').AsString := UpperCase(Trim(q.FieldByName('direct').AsString));
          tbl.FieldByName('jenis').AsString := UpperCase(Trim(q.FieldByName('jenis').ASString));
          tbl.FieldByName('kelompok').AsString := UpperCase(Trim(q.FieldByName('kelompok').ASString));
          tbl.FieldByName('f_aktif').AsString := UpperCase(Trim(q.FieldByName('f_aktif').AsString));
        end
        else if lstTable.Strings[i] = '[tbl_supplier$]' then begin
        
          if q.FieldByName('skip').AsString = 'x' then begin
            q.Next;
            Continue;
          end;

          if tbl.Locate('nama',q.FieldByName('nama').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('nama').AsString := UpperCase(Trim(q.FieldByName('nama').AsString));
          tbl.FieldByName('kontak').AsString := UpperCase(Trim(q.FieldByName('kontak').AsString));
          tbl.FieldByName('title').AsString := UpperCase(Trim(q.FieldByName('title').AsString));
          tbl.FieldByName('alamat').AsString := UpperCase(Trim(q.FieldByName('alamat').AsString));
          tbl.FieldByName('kota').AsString := UpperCase(Trim(q.FieldByName('kota').AsString));
          tbl.FieldByName('kodepos').AsString := UpperCase(Trim(q.FieldByName('kodepos').AsString));
          tbl.FieldByName('provinsi').AsString := UpperCase(Trim(q.FieldByName('provinsi').AsString));
          tbl.FieldByName('negara').AsString := UpperCase(Trim(q.FieldByName('negara').AsString));
          tbl.FieldByName('telpon').AsString := UpperCase(Trim(q.FieldByName('telpon').AsString));
          tbl.FieldByName('fax').AsString := UpperCase(Trim(q.FieldByName('fax').AsString));
          tbl.FieldByName('hp').AsString := UpperCase(Trim(q.FieldByName('hp').AsString));
          tbl.FieldByName('direct').AsString := UpperCase(Trim(q.FieldByName('direct').AsString));
          tbl.FieldByName('payment').AsString := UpperCase(Trim(q.FieldByName('payment').AsString));
          tbl.FieldByName('email').AsString := UpperCase(Trim(q.FieldByName('email').AsString));
          tbl.FieldByName('f_aktif').AsString := UpperCase(Trim(q.FieldByName('f_aktif').AsString));
        end

        // tbl_user
        else if lstTable.Strings[i] = '[tbl_user$]' then begin

          if q.FieldByName('skip').AsString = 'x' then begin
            q.Next;
            Continue;
          end;

          if tbl.Locate('nama',q.FieldByName('nama').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('nama').AsString := UpperCase(Trim(q.FieldByName('nama').AsString));
          tbl.FieldByName('nama_lengkap').AsString := UpperCase(Trim(q.FieldByName('nama_lengkap').ASString));
          //tbl.FieldByName('password').AsString := MySQLPassword(Trim(q.FieldByName('password').AsString));
          tbl.FieldByName('password').AsString := Trim(q.FieldByName('password').AsString);
          tbl.FieldByName('user_dept').AsString := UpperCase(Trim(q.FieldByName('user_dept').AsString));
          tbl.FieldByName('divisi').AsString := UpperCase(Trim(q.FieldByName('divisi').AsString));
          tbl.FieldByName('jabatan').AsString := UpperCase(Trim(q.FieldByName('jabatan').AsString));
          tbl.FieldByName('f_aktif').AsString := UpperCase(Trim(q.FieldByName('f_aktif').AsString));
          tbl.FieldByName('f_games').AsString := q.FieldByName('f_games').AsString;
          tbl.FieldByName('email').AsString := UpperCase(Trim(q.FieldByName('email').AsString));

        end
        // tbl_mesin
        else if lstTable.Strings[i] = '[tbl_mesin$]' then begin

          if q.FieldByName('skip').AsString = 'x' then begin
            q.Next;
            Continue;
          end;

          if tbl.Locate('kode',q.FieldByName('kode').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('kode').AsString := UpperCase(Trim(q.FieldByName('kode').AsString));
          tbl.FieldByName('nama').AsString := Trim(q.FieldByName('nama').AsString);
          tbl.FieldByName('lokasi').AsString := UpperCase(Trim(q.FieldByName('lokasi').AsString));
          tbl.FieldByName('jenis').AsString := UpperCase(Trim(q.FieldByName('jenis').AsString));
          tbl.FieldByName('group_mesin').AsString := UpperCase(Trim(q.FieldByName('group_mesin').AsString));
          tbl.FieldByName('f_aktif').AsString := UpperCase(Trim(q.FieldByName('f_aktif').AsString));

        end
        // alamat kirim
        else if lstTable.Strings[i] = '[tbl_alamat_kirim$]' then begin

          if tbl.Locate('kode',q.FieldByName('kode').AsString, []) then
            tbl.Edit
          else
            tbl.Insert;

          tbl.FieldByName('nama').AsString := UpperCase(Trim(q.FieldByName('nama').AsString));
          tbl.FieldByName('alamat').AsString := UpperCase(Trim(q.FieldByName('alamat').AsString));
          tbl.FieldByName('kota').AsString := UpperCase(Trim(q.FieldByName('kota').AsString));
          tbl.FieldByName('kode_pos').AsString := UpperCase(Trim(q.FieldByName('kode_pos').AsString));
          tbl.FieldByName('negara').AsString := UpperCase(Trim(q.FieldByName('negara').AsString));
        end

        // worksheet yang lain
        else begin
          tbl.Insert;
          for j := 0 to q.FieldCount - 1 do
            tbl.Fields[j].AsString := q.Fields[j].AsString;
        end;

        tbl.Post;

      except
        on E: Exception do tbl.Cancel;
      end;

      inc(recNo);
      prgBar.StepIt;
      q.Next;
      prgBar.Update;
      Refresh;
      Application.ProcessMessages;
    end;
    tbl.Close;
    q.Close;
  end;
  q := nil;
  tbl := nil;
  Screen.Cursor := crDefault;
  MessageDlg('Proses import selesai.', mtInformation, [mbOk],0);
  Application.Terminate;
end;

procedure TfrmUtama.btnHapusSemuaClick(Sender: TObject);
var
  lstTblHapus: TStringList;
  i: integer;
begin
  Abort;
  lstTblHapus := TStringList.Create;
  lstTblHapus.CommaText :=
    'tbl_barang,tbl_barang_det';

  Screen.Cursor := crSQLWait;
  try
    for i := 0 to lstTblHapus.Count - 1 do
      zConn.ExecuteDirect('DELETE FROM ' + lstTblHapus.Strings[i]);

    MessageDlg('Proses penghapusan table selesai.', mtInformation, [mbOk],0);
  except
    on E: Exception do
      MessageDlg('Proses penghapusan isi table gagal.', mtInformation, [mbOk],0);
  end;

  //zConn.ExecuteDirect('DELETE FROM userapp WHERE namauser <> ''ADMIN''');
  //zConn.ExecuteDirect('UPDATE userapp SET password = ''#þE8E'', otority = ''#þE8E'' ' +
  //  'clerek_kasir = ''T'', ''retur_kasir = ''T''');

  //zConn.ExecuteDirect('UPDATE userapp SET password = ''*6D45FD76D5E9C6A404E39C25106A7F032659ACB8'', ' +
  //  'otority = ''*6D45FD76D5E9C6A404E39C25106A7F032659ACB8'', ' +
  //  'password_kasir = ''#þE8E'', ' +
  //  'otority_kasir = ''#þE8E'', ' +
  //  'clerek_kasir = ''T'', ' +
  //  'retur_kasir = ''T''');

  //zConn.ExecuteDirect('DELETE FROM wenang WHERE kduser <> ''001''');
  //zConn.ExecuteDirect('DELETE FROM wenang WHERE kduser <> ''001''');
  //zConn.ExecuteDirect('UPDATE wenang SET aktif = ''T'', tambah = ''T'', ' +
  //  'ubah = ''T'', hapus = ''T''');

  Screen.Cursor := crDefault;

end;

procedure TfrmUtama.Button1Click(Sender: TObject);
var
  q: TAdoQuery;
begin
  q := TAdoQuery.Create(nil);
  q.Connection := adoConn;
  q.SQL.Text := 'SELECT COUNT(*) AS jum FROM [barang$]';
  q.Open;

  ShowMessage(IntToStr(q.FieldValues['jum']));

end;

function TfrmUtama.MySQLPassword(sPassword: string): string;
var
  q: TZQuery;
begin
  q := TZQuery.Create(Self);
  q.Connection := zConn;
  q.SQL.Text := Format('SELECT PASSWORD(''%s'') AS pass', [sPassword]);
  q.Open;
  Result := q.FieldByName('pass').AsString;
  q.Close;
end;

procedure TfrmUtama.Button2Click(Sender: TObject);
var
  q: TADOQuery;
begin
  q := TADOQuery.Create(Self);
  q.Connection := adoConn;

  q.SQL.Text := 'SELECT * FROM [harga_pel$]';
  q.Open;

  while not q.Eof do begin
    zConn.ExecuteDirect('UPDATE tbl_barang SET hrg_kel1 = ' +
      q.FieldByName('Hrg1').AsString + ', hrg_kel2 = ' +
      q.FieldByName('Hrg2').AsString + ' WHERE kode = ' +
      q.FieldByName('Kode').AsString);
    q.Next;
  end;
  q.Close;

end;

end.
