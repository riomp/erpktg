object frmWait: TfrmWait
  Left = 405
  Top = 285
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Harap Tunggu'
  ClientHeight = 105
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 69
    Width = 223
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = 'Harap Tunggu...'
  end
  object prgBar: TProgressBar
    Left = 17
    Top = 33
    Width = 221
    Height = 31
    Max = 50
    TabOrder = 0
  end
  object tmr: TTimer
    Enabled = False
    OnTimer = tmrTimer
    Left = 10
    Top = 55
  end
end
