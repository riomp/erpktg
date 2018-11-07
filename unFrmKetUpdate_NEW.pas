unit unFrmKetUpdate_NEW;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, IdHTTP, IdComponent, IniFiles,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxProgressBar, ShellAPI;

type
  TfrmKetUpdate_NEW = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    prgBar: TProgressBar;
    Timer1: TTimer;
    lblPercent: TLabel;
    Label3: TLabel;
    cxPrgBar: TcxProgressBar;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function CekUpdateWeb: Boolean;
    procedure HttpWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
  public
    { Public declarations }
  end;

var
  frmKetUpdate_NEW: TfrmKetUpdate_NEW;

implementation

uses unAplikasi, unDm;

{$R *.dfm}

procedure TfrmKetUpdate_NEW.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if CekUpdateWeb then begin
    ModalResult := mrOk;
    ShellExecute(Handle,'open', PChar(aplikasi.AppPath + '\D.exe'),'',nil,SW_HIDE);
  end
  else begin
    ModalResult := mrCancel;
  end;
end;

function TfrmKetUpdate_NEW.CekUpdateWeb: boolean;
var
  Http: TIdHTTP;
  MS: TMemoryStream;
  Ini: TIniFile;
  url, appPath, version: string;
  FileList: TStringList;
  i: Integer;
  bResult: Boolean;
  FS: TFileStream;
begin
  bResult := False;
  appPath := Aplikasi.AppPath;
  Ini := TIniFile.Create(aplikasi.AppPath + '\setting.ini');
  FileList := TStringList.Create;

  url := Ini.ReadString('updater','url','');
  FileList.CommaText := Ini.ReadString('updater','files','');
  Ini.Free;

  Http := TIdHTTP.Create(nil);

  try
    //ambil file ver.ini di server
    if FileExists(appPath + '\ver.ini') then
      DeleteFile(PChar(appPath + '\ver.ini'));
    MS := TMemoryStream.Create;
    Http.Get(url + '/ver.ini', MS);
    MS.SaveToFile(appPath + '\ver.ini');
    Ini := TIniFile.Create(appPath + '\ver.ini');
    version := Ini.ReadString('version','version','');
    MS.Free;

    if version <> aplikasi.Ver then begin
      try
        try
          Http.OnWork:= HttpWork;

          for i := 0 to FileList.Count - 1 do begin
            if FileExists(appPath + FileList.Strings[i] + '.old') then
              DeleteFile(PChar(appPath + FileList.Strings[i] + '.old'));
            RenameFile(appPath + FileList.Strings[i], appPath + FileList.Strings[i] + '.old');
            MS := TMemoryStream.Create;
            Http.Get(url + '/' + FileList.Strings[i], MS);
            MS.SaveToFile(appPath + FileList.Strings[i] + '.xxx');
            RenameFile(appPath + FileList.Strings[i] + '.xxx', appPath + FileList.Strings[i]);
            MS.Free;
          end;

          bResult := True;
        except
          on E: Exception do begin
            bResult := False;
          end;
        end;
      except
        on E: Exception do begin
          Http.Free;
          bResult := False;
        end;
      end;
    end;

    Result := bResult;

  except
    on E: Exception do begin
      Result := False;
      //Abort;
    end;
  end;

end;

procedure TfrmKetUpdate_NEW.HttpWork(ASender: TObject; AWorkMode: TWorkMode; AWorkCount: Int64);
var
  Http: TIdHTTP;
  ContentLength: Int64;
  Percent: Integer;
begin
  Http := TIdHTTP(ASender);
  ContentLength := Http.Response.ContentLength;
  
  if (Pos('chunked', LowerCase(Http.Response.TransferEncoding)) = 0) and
     (ContentLength > 0) then
  begin
    Percent := 100*AWorkCount div ContentLength;
    prgBar.Position := Percent;
    cxPrgBar.Position := Percent;
    cxPrgBar.Refresh;
    Label3.Caption := IntToStr(prgBar.Max);
    lblPercent.Caption := IntToStr(Percent) + '%';
    prgBar.Refresh;
    lblPercent.Refresh;
    Application.ProcessMessages;
  end;
end;

procedure TfrmKetUpdate_NEW.FormCreate(Sender: TObject);
begin
  prgBar.Max := 100;
  cxPrgBar.Properties.Max := 100;
  lblPercent.Caption := '';
end;

end.
