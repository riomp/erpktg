object frmPembatalan: TfrmPembatalan
  Left = 229
  Top = 223
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pembatalan Transaksi'
  ClientHeight = 459
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 15
    Top = 20
    Caption = 'No. Transaksi'
  end
  object cxl: TcxLookupComboBox
    Left = 104
    Top = 18
    Properties.DropDownAutoSize = True
    Properties.DropDownSizeable = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsh
    TabOrder = 1
    Width = 226
  end
  object cxg: TcxGrid
    Left = 16
    Top = 106
    Width = 955
    Height = 306
    TabOrder = 2
    object tblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsd
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
    end
    object cxgLevel1: TcxGridLevel
      GridView = tblView
    end
  end
  object Button1: TButton
    Left = 16
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Batalkan'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 421
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object cxtKeterangan: TcxTextEdit
    Left = 104
    Top = 45
    Properties.CharCase = ecUpperCase
    Properties.MaxLength = 50
    TabOrder = 5
    Width = 526
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 47
    Caption = 'Ket. Pembatalan'
  end
  object btnProses: TButton
    Left = 104
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 7
    OnClick = btnProsesClick
  end
  object zqrd: TZReadOnlyQuery
    Connection = dm.zConn
    Params = <>
    Left = 330
    Top = 171
  end
  object dsd: TDataSource
    DataSet = zqrd
    Left = 360
    Top = 171
  end
  object zqrh: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_trsmasuk_det')
    Params = <>
    Left = 395
    Top = 10
  end
  object dsh: TDataSource
    DataSet = zqrh
    Left = 425
    Top = 10
  end
end
