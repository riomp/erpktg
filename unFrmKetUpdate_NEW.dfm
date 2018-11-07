object frmKetUpdate_NEW: TfrmKetUpdate_NEW
  Left = 443
  Top = 280
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Harap Tunggu...'
  ClientHeight = 127
  ClientWidth = 391
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 17
    Top = 41
    Width = 356
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'HARAP TUNGGU...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 17
    Top = 59
    Width = 356
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'UPDATE PROGRAM...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPercent: TLabel
    Left = 15
    Top = 100
    Width = 360
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblPercent'
    Visible = False
  end
  object Label3: TLabel
    Left = 80
    Top = 15
    Width = 32
    Height = 13
    Caption = 'Label3'
    Visible = False
  end
  object prgBar: TProgressBar
    Left = 15
    Top = 80
    Width = 360
    Height = 17
    TabOrder = 0
  end
  object cxPrgBar: TcxProgressBar
    Left = 15
    Top = 79
    TabOrder = 1
    Width = 360
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 310
    Top = 25
  end
end
