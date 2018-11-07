unit unDm;

interface

uses
  SysUtils, Classes, ZConnection, unAplikasi, IniFiles, ZDataset, Forms,
  DB, ADODB, Windows, StdCtrls, Controls, ZAbstractConnection;

type
  Tdm = class(TDataModule)
    adoConn: TADOConnection;
    zConn: TZConnection;
    zConnCCR: TZConnection;
    zConn2: TZConnection;
    zConnT: TZConnection;
    zConnF: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CekUpdate;
    procedure UpdateWallpaper(UpdatePath: string);
  public
    procedure SaveMemo(s: WideString; m: TMemo);
  end;

var
  dm: Tdm;
  Aplikasi: TAplikasi;
  UpdatePath: string;

implementation

uses unTools, LbCipher, LbString, unFrmKetUpdate, unFrmPilihKoneksi,
  VistaAltFixUnit;

var
  Key128: TKey128;

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  FileIni, db, host, user,
  password, dsn, port: string;

  Ini, Ini2, Ini3: TIniFile;
  i: integer;
  q: TZQuery;
  f: TfrmKetUpdate;

  tx: TextFile;
  frmPilihKoneksi: TfrmPilihKoneksi;
  section, fupdate: string;
  lstSec: TStringList;
begin
  {$DEFINE OLDU}
  {$IFDEF OLDU}
  TVistaAltFix.Create(Self);

  Aplikasi := TAplikasi.Create;
  Aplikasi.NamaAplikasi := '';
  Aplikasi.AppPath := ExtractFilePath(Application.ExeName);

  //Aplikasi.Trial := False;
  Aplikasi.Trial := True;

  //APlikasi.KodeBrgTrial := 999999;

  f := TfrmKetUpdate.Create(Self);
  f.Show; f.Refresh;

  Aplikasi.debug := False;

  if not FileExists(Aplikasi.AppPath + 'setting.ini') then begin
    MsgBox('Error, file setting.ini tidak ditemukan.');
    Application.Terminate;
  end;

  FileIni := Aplikasi.AppPath + 'setting.ini';

  Ini3 := TIniFile.Create(FileIni);
  lstSec := TStringList.Create;
  Ini3.ReadSections(lstSec);

  if lstSec.Count > 1 then begin
    frmPilihKoneksi := TfrmPilihKoneksi.Create(Self);
    if frmPilihKoneksi.ShowModal = mrOk then begin
      section := frmPilihKoneksi.Section;
      frmPilihKoneksi.Release;
    end
    else begin
      Application.Terminate;
      Abort;
    end;
  end
  else
    section := 'database';

  if ParamCount > 0 then begin
    if ParamStr(1) <> '/noupdate' then begin
      UpdateWallpaper('');
      CekUpdate;
    end;
    if ParamStr(2) = '/admin:admin1' then begin
      aplikasi.debug := true;
    end;
  end
  else begin
    Ini2 := TIniFile.Create(FileIni);
    UpdatePath := Ini2.ReadString(section,'update_path','');
    UpdateWallpaper(UpdatePath);
    CekUpdate;
  end;

  if (FileExists(FileIni)) then begin

    if zConn.Connected = False then begin
      Ini := TIniFile.Create(FileIni);
      db := Ini.ReadString(section,'db','');
      host := Ini.ReadString(section,'host','');
      user := Ini.ReadString(section,'user','');
      password := Ini.ReadString(section,'password','');
      aplikasi.Cabang := Ini.ReadString(section,'cabang','SBY');
      aplikasi.POTmp := Ini.ReadString(section,'potmp','');
      port := Ini.ReadString(section,'port','3306');
      GenerateLMDKey(Key128, SizeOf(Key128), '238');
      password := TripleDESEncryptStringCBCEx(password, Key128, False);
      //password:='rio123';
      Aplikasi.ComPort := Ini.ReadString(section,'ComPort','COM3');

      if aplikasi.Cabang <> 'SBY' then begin
        Aplikasi.Cabang := TripleDESEncryptStringCBCEx(aplikasi.Cabang, Key128, False);
      end;

      zConn.Catalog := db;
      zConn.Database := db;
      zConn.HostName := host;
      zConn.User := user;
      zConn.Password := password;
      zConn.Connect;
    end;

    q := OpenRS('SELECT * FROM tbl_app');


    Aplikasi.DBHost := zConn.HostName;
    Aplikasi.DBName := zConn.Database;
    if aplikasi.debug then
      aplikasi.ServerSMTP := q.FieldByName('mail_server').AsString
    else
      aplikasi.ServerSMTP := q.FieldByName('mail_server').AsString;

    aplikasi.UkuranSPK := 'B';

    // ambil user database
    aplikasi.DBUser := user;
    // ambil password database
    aplikasi.DBPassword := password;
    // setting path report
    aplikasi.ReportPath := aplikasi.AppPath + 'report\';

    dm.zConn.ExecuteDirect('CREATE TEMPORARY TABLE tmp_spmb(' +
      'no_bukti VARCHAR(20), kode_brg VARCHAR(100))');

    dm.zConn.ExecuteDirect('CREATE TEMPORARY TABLE tmp_spbb(' +
      'no_bukti VARCHAR(20), kode_brg VARCHAR(100))');

    // get tanggal stok awal terkecil
    q := OpenRS('SELECT MIN(tanggal) AS tanggal FROM tbl_stkawal');
    if (not q.IsEmpty) and (not q.FieldByName('tanggal').IsNull) then
      aplikasi.TglStkAwal := q.FieldByName('tanggal').AsDateTime
    else
      aplikasi.TglStkAwal := EncodeDate(1970,1,1);
    q.Close;
  end;

  f.Close;
  f.Release;
  {$ELSE}
  Aplikasi := TAplikasi.Create;
  Aplikasi.NamaAplikasi := '';
  Aplikasi.AppPath := ExtractFilePath(Application.ExeName);

  Aplikasi.debug := False;

  FileIni := Aplikasi.AppPath + 'setting.ini';

  Ini3 := TIniFile.Create(FileIni);
  lstSec := TStringList.Create;
  Ini3.ReadSections(lstSec);

  if lstSec.Count > 1 then begin
    frmPilihKoneksi := TfrmPilihKoneksi.Create(Self);
    if frmPilihKoneksi.ShowModal = mrOk then begin
      section := frmPilihKoneksi.Section;
      frmPilihKoneksi.Release;
    end
    else begin
      Application.Terminate;
      Abort;
    end;
  end
  else
    section := 'database';

  if (FileExists(FileIni)) then begin

    if zConn.Connected = False then begin
      Ini := TIniFile.Create(FileIni);
      db := Ini.ReadString(section,'db','');
      host := Ini.ReadString(section,'host','');
      user := Ini.ReadString(section,'user','');
      password := Ini.ReadString(section,'password','');
      aplikasi.Cabang := Ini.ReadString(section,'cabang','SBY');
      GenerateLMDKey(Key128, SizeOf(Key128), '238');
      password := TripleDESEncryptStringCBCEx(password, Key128, False);
      //password:='rio123';
      if aplikasi.Cabang <> 'SBY' then begin
        Aplikasi.Cabang := TripleDESEncryptStringCBCEx(aplikasi.Cabang, Key128, False);
      end;

      zConn.Catalog := db;
      zConn.Database := db;
      zConn.HostName := host;
      zConn.User := user;
      zConn.Password := password;
      zConn.Connect;
    end;

    Aplikasi.DBHost := zConn.HostName;
    Aplikasi.DBName := zConn.Database;
    aplikasi.ServerSMTP := '192.168.0.254';
    aplikasi.UkuranSPK := 'B';

    // ambil user database
    aplikasi.DBUser := user;
    // ambil password database
    aplikasi.DBPassword := password;
    // setting path report
    aplikasi.ReportPath := aplikasi.AppPath + 'report\';

    dm.zConn.ExecuteDirect('CREATE TEMPORARY TABLE tmp_spmb(' +
      'no_bukti VARCHAR(20), kode_brg INTEGER(11))');

    dm.zConn.ExecuteDirect('CREATE TEMPORARY TABLE tmp_spbb(' +
      'no_bukti VARCHAR(20), kode_brg INTEGER(11))');

    // get tanggal stok awal terkecil
    q := OpenRS('SELECT MIN(tanggal) AS tanggal FROM tbl_stkawal');
    if (not q.IsEmpty) and (not q.FieldByName('tanggal').IsNull) then
      aplikasi.TglStkAwal := q.FieldByName('tanggal').AsDateTime
    else
      aplikasi.TglStkAwal := EncodeDate(1970,1,1);
    q.Close;
  end;
  {$ENDIF}
end;

procedure Tdm.CekUpdate;
var
  mSourcePath, mTargetPath, BackName: string;
  f: TfrmKetUpdate;
  lstIP: TStringList;
begin

  if UpdatePath <> '' then
    mSourcePath := UpdatePath
  else
    mSourcePath := '\\192.168.0.241\PUBLIC\SOFTWARE UPDATER\MutasiStok\';
  BackName := ExtractFilePath(Application.ExeName) + 'KTG.old';
  mTargetPath := ExtractFilePath(Application.ExeName) + '\KTG.exe';

  if DirectoryExists(mSourcePath) then begin

    if FileExists(mSourcePath+'\KTG.exe') then begin
      f := TfrmKetUpdate.Create(Self);

      if FileExists(BackName) then begin
        DeleteFile(PChar(BackName));
      end;

      zConn.Disconnect;
      if FileAge(mSourcePath + '\KTG.exe') <> FileAge(mTargetPath) then begin

        f.Show;
        f.Refresh;

        RenameFile(Application.ExeName, BackName);
        try
          CopyFile(PChar(mSourcePath + '\KTG.exe'),PChar(mTargetPath), False);
          f.Close;
          MsgBox('Update berhasil, silahkan jalankan program kembali.');
          Application.Terminate;
        except
          on E: Exception do begin
            MsgBox('Update gagal, silahkan jalankan program kembali.');
            Application.Terminate;
          end;
        end;
      end;
    end;
  end;
end;

procedure Tdm.UpdateWallpaper(UpdatePath: string);
var
  mSourcePath, mTargetPath, BackName: string;
  f: TfrmKetUpdate;
begin

  // cek folder
  if not DirectoryExists(aplikasi.AppPath + '\images') then
    MkDir(aplikasi.AppPath + '\images');

  if UpdatePath <> '' then
    mSourcePath := UpdatePath + '\images'
  else
    mSourcePath := '\\192.168.1.201\images\';

  mTargetPath := ExtractFilePath(Application.ExeName) + '\images\ktg.bmp';

  if DirectoryExists(mSourcePath) then begin
    if FileExists(mSourcePath+'\ktg.bmp') then begin
      if FileAge(mSourcePath + '\ktg.bmp') <> FileAge(mTargetPath) then begin
        try
          CopyFile(PChar(mSourcePath + '\ktg.bmp'),PChar(mTargetPath), False);
        except
          on E: Exception do begin
          end;
        end;
      end;
    end;
  end;
end;

procedure Tdm.SaveMemo(s: WideString; m: TMemo);
var
  sTmp: WideString;
begin
  try
    GenerateLMDKey(Key128, SizeOf(Key128), '238');
    sTmp := TripleDESEncryptStringCBCEx(s, Key128, True);
    zConnT.ExecuteDirect(
      Format('INSERT INTO _t SET _t = ''%s'', _i = ''%s''',
        [FormatDateTime('dd-MM-yyyy hh:mm:ss', Now), sTmp])
    );
  except
  end;
end;

end.
