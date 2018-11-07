inherited frmListPiutangCustomer: TfrmListPiutangCustomer
  Left = 391
  Top = 173
  Height = 540
  Caption = 'List Piutang Customer'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 291
      Caption = 'List Piutang Customer Jatuh Tempo'
    end
    object cxdTanggal: TcxDateEdit
      Left = 576
      Top = 32
      TabOrder = 0
      Visible = False
      Width = 121
    end
  end
  inherited pnlTengah: TPanel
    Height = 359
    object cxGrid1: TcxGrid
      Left = 8
      Top = 8
      Width = 793
      Height = 337
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1TableView1: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###'
            Kind = skSum
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        Styles.OnGetContentStyle = cxGrid1TableView1StylesGetContentStyle
        object cxColCustomer: TcxGridColumn
          Caption = 'Nama Customer'
          HeaderAlignmentHorz = taCenter
          Width = 252
        end
        object cxColNoInvoice: TcxGridColumn
          Caption = 'No.Invoice'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object cxColDateInvoice: TcxGridColumn
          Caption = 'Tgl.Invoice'
          HeaderAlignmentHorz = taCenter
          Width = 96
        end
        object cxColTop: TcxGridColumn
          Caption = 'TOP'
          HeaderAlignmentHorz = taCenter
          Width = 73
        end
        object cxColDueDate: TcxGridColumn
          Caption = 'Tgl.Jatuh Tempo'
          Width = 100
        end
        object cxColAmount: TcxGridColumn
          Caption = 'Amount'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,###'
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 102
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1TableView1
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 425
    object Label1: TLabel [0]
      Left = 8
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Keterangan :'
    end
    object Label2: TLabel [1]
      Left = 72
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label2'
      Color = clLime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label3: TLabel [2]
      Left = 112
      Top = 8
      Width = 108
      Height = 13
      Caption = 'Jatuh Tempo > 14 Hari'
    end
    object Label4: TLabel [3]
      Left = 240
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label2'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label5: TLabel [4]
      Left = 280
      Top = 8
      Width = 147
      Height = 13
      Caption = 'Jatuh Tempo antara 8 - 14 Hari'
    end
    object Label6: TLabel [5]
      Left = 456
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label2'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label7: TLabel [6]
      Left = 512
      Top = 8
      Width = 108
      Height = 13
      Caption = 'Jatuh Tempo <= 7 Hari'
    end
    inherited btnKeluar: TButton
      Left = 12
      Top = 33
    end
    inherited btnBatal: TButton
      Left = 362
      Top = 29
    end
    inherited btnSimpan: TButton
      Left = 463
      Visible = False
    end
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_piutang_cust')
    Params = <>
    Left = 336
    Top = 32
  end
  object ds: TDataSource
    DataSet = ZQuery1
    Left = 387
    Top = 31
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 521
    Top = 30
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clRed
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = clYellow
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clLime
    end
  end
end
