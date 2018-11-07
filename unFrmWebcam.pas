unit unFrmWebcam;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, VidGrab;

type
  TfrmWebcam = class(TForm)
    vg: TVideoGrabber;
    btnSimpan: TButton;
    btnBatal: TButton;
    procedure btnBatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure vgFrameCaptureCompleted(Sender: TObject;
      FrameBitmap: TBitmap; BitmapWidth, BitmapHeight: Integer;
      FrameNumber: Cardinal; FrameTime: Int64; DestType: TFrameCaptureDest;
      FileName: String; Success: Boolean; FrameId: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWebcam: TfrmWebcam;

implementation

uses unAplikasi, unDm;

{$R *.dfm}

procedure TfrmWebcam.btnBatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmWebcam.FormCreate(Sender: TObject);
begin
  try
    vg.FrameGrabber := fg_CaptureStream;
    vg.StartPreview;
  except
  end;
end;

procedure TfrmWebcam.btnSimpanClick(Sender: TObject);
begin
  vg.CaptureFrameTo(fc_JpegFile, Aplikasi.AppPath + '\~t.jpg');
end;

procedure TfrmWebcam.vgFrameCaptureCompleted(Sender: TObject;
  FrameBitmap: TBitmap; BitmapWidth, BitmapHeight: Integer;
  FrameNumber: Cardinal; FrameTime: Int64; DestType: TFrameCaptureDest;
  FileName: String; Success: Boolean; FrameId: Integer);
begin
  ModalResult := mrOk;
end;

end.
