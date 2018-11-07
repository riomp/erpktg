object Frm_Map: TFrm_Map
  Left = 398
  Top = 260
  Width = 1305
  Height = 675
  BorderIcons = [biSystemMenu]
  Caption = 'MAP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 1289
    Height = 636
    Align = alClient
    TabOrder = 0
    ControlData = {
      4C00000039850000BC4100000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object GMMap1: TGMMap
    APIKey = 'AIzaSyD6UOEjQUHNwm-PurBv-O4jA3_84BJLH-E'
    Active = True
    RequiredProp.Center.Lat = -7.883155000000000000
    RequiredProp.Center.Lng = 112.673327000000000000
    RequiredProp.MapType = mtHYBRID
    RequiredProp.Zoom = 18
    NonVisualProp.MapMaker = True
    StreetView.Visible = True
    AfterPageLoaded = GMMap1AfterPageLoaded
    WebBrowser = WebBrowser1
    Left = 285
    Top = 20
  end
  object GMMarker1: TGMMarker
    Map = GMMap1
    VisualObjects = <
      item
        MarkerType = mtColored
        Title = 'TMarker'
      end>
    Left = 335
    Top = 15
  end
  object GMInfoWindow1: TGMInfoWindow
    Map = GMMap1
    VisualObjects = <>
    Left = 375
    Top = 20
  end
end
