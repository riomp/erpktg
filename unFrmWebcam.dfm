object frmWebcam: TfrmWebcam
  Left = 505
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Webcam'
  ClientHeight = 357
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object vg: TVideoGrabber
    Left = 10
    Top = 10
    Width = 458
    Height = 311
    Caption = 'vg'
    Color = clBlack
    ASFVideoWidth = -1
    AspectRatioToUse = -1.000000000000000000
    AudioCompressor = 0
    AutoFilePrefix = 'vg'
    Cropping_Zoom = 1.000000000000000000
    LicenseString = 'N/A'
    MotionDetector_Grid = 
      '5555555555 5555555555 5555555555 5555555555 5555555555 555555555' +
      '5 5555555555 5555555555 5555555555 5555555555'
    PlayerSpeedRatio = 1.000000000000000000
    Reencoding_StartTime = -1
    Reencoding_StartFrame = -1
    Reencoding_StopTime = -1
    Reencoding_StopFrame = -1
    TextOverlay_Font.Charset = DEFAULT_CHARSET
    TextOverlay_Font.Color = clAqua
    TextOverlay_Font.Height = -16
    TextOverlay_Font.Name = 'MS Sans Serif'
    TextOverlay_Font.Style = []
    TextOverlay_String = 
      'Note: the date/time formats '#13#10'can be easily modified.'#13#10#13#10'system ' +
      'date/time: %sys_time[dd/mm/yy hh:nn:ss]%'#13#10'DV time code: %time_co' +
      'de%'#13#10'DV date/time: %dv_time[dd/mm/yy hh:nn:ss]%'#13#10'frame number: %' +
      'frame_count%'#13#10'time (full): %time_full%'#13#10'time (sec): %time_sec%'#13#10 +
      'time (ns): %time_100ns%'
    VideoCompression_Quality = 1.000000000000000000
    VideoCompressor = 0
    VideoFromImages_TemporaryFile = 'SetOfBitmaps01.dat'
    VideoProcessing_RotationCustomAngle = 45.500000000000000000
    VideoSource_FileOrURL_StartTime = -1
    VideoSource_FileOrURL_StopTime = -1
    OnFrameCaptureCompleted = vgFrameCaptureCompleted
  end
  object btnSimpan: TButton
    Left = 10
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 89
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Batal'
    ModalResult = 2
    TabOrder = 2
    OnClick = btnBatalClick
  end
end
