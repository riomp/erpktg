object frmSales: TfrmSales
  Left = 405
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sales'
  ClientHeight = 381
  ClientWidth = 365
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 365
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 163
      Height = 24
      Caption = 'MASTER SALES '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 365
    Height = 276
    Align = alTop
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 8
      Top = 7
      Width = 348
      Height = 226
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSales
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.DeletingConfirmation = False
        object cxGrid1DBTableView1kode_sales: TcxGridDBColumn
          Caption = 'Kode'
          DataBinding.FieldName = 'kode_sales'
          Width = 72
        end
        object cxGrid1DBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Sales'
          DataBinding.FieldName = 'nama'
          Width = 260
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxNavigator1: TcxNavigator
      Left = 8
      Top = 238
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
  object Panel3: TPanel
    Left = 0
    Top = 340
    Width = 365
    Height = 41
    Align = alBottom
    TabOrder = 2
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
  object zTblSales: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_sales'
    Left = 206
    Top = 12
  end
  object dsSales: TDataSource
    DataSet = zTblSales
    Left = 236
    Top = 12
  end
end
