object frmMstKtgr: TfrmMstKtgr
  Left = 477
  Top = 231
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Master Tipe dan Kategori'
  ClientHeight = 410
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 500
    Height = 66
    Align = alTop
    TabOrder = 0
    object lblJudul: TLabel
      Left = 15
      Top = 21
      Width = 207
      Height = 19
      Caption = 'Master Tipe dan Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 370
    Width = 500
    Height = 40
    Align = alBottom
    TabOrder = 1
    object btnKeluar: TButton
      Left = 10
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 66
    Width = 500
    Height = 304
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Tipe Barang'
      object cxGrid1: TcxGrid
        Left = 5
        Top = 5
        Width = 396
        Height = 226
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsTipe
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.DeletingConfirmation = False
          object cxGrid1DBTableView1tipe: TcxGridDBColumn
            Caption = 'Tipe Barang'
            DataBinding.FieldName = 'tipe'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object cxNavigator1: TcxNavigator
        Left = 5
        Top = 235
        Width = 345
        Height = 25
        Control = cxGrid1
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Kategori Barang'
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 5
        Top = 5
        Width = 396
        Height = 226
        TabOrder = 0
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsKtgr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.DeletingConfirmation = False
          object cxGridDBTableView1kategori: TcxGridDBColumn
            Caption = 'Kategori Barang'
            DataBinding.FieldName = 'kategori'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxNavigator2: TcxNavigator
        Left = 5
        Top = 235
        Width = 345
        Height = 25
        Control = cxGrid2
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        TabOrder = 1
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Sub Kategori Barang'
      ImageIndex = 2
      object cxGrid3: TcxGrid
        Left = 5
        Top = 5
        Width = 396
        Height = 226
        TabOrder = 0
        object cxGridDBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsSubKtgr
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsData.DeletingConfirmation = False
          object cxGridDBTableView2subkategori: TcxGridDBColumn
            Caption = 'Sub Kategori Barang'
            DataBinding.FieldName = 'subkategori'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object cxNavigator3: TcxNavigator
        Left = 5
        Top = 235
        Width = 345
        Height = 25
        Control = cxGrid3
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        TabOrder = 1
      end
    end
  end
  object zTblTipe: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_tipe_brg'
    Left = 190
    Top = 20
  end
  object dsTipe: TDataSource
    DataSet = zTblTipe
    Left = 220
    Top = 20
  end
  object ztblKtgr: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_kategori_brg'
    Left = 250
    Top = 20
  end
  object dsKtgr: TDataSource
    DataSet = ztblKtgr
    Left = 280
    Top = 20
  end
  object ztblSubKtgr: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_subkategori_brg'
    Left = 310
    Top = 20
  end
  object dsSubKtgr: TDataSource
    DataSet = ztblSubKtgr
    Left = 340
    Top = 20
  end
end
