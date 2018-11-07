inherited frmTaxGroup: TfrmTaxGroup
  Left = 844
  Top = 265
  Height = 465
  Caption = 'Tax Group'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 85
      Caption = 'Tax Group'
    end
  end
  inherited pnlTengah: TPanel
    Height = 280
    object cxGrid1: TcxGrid
      Left = 8
      Top = 7
      Width = 348
      Height = 226
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
        DataController.DataSource = dsTax
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.DeletingConfirmation = False
        object cxGrid1DBTableView1id_group: TcxGridDBColumn
          Caption = 'ID Group'
          DataBinding.FieldName = 'id_group'
        end
        object cxGrid1DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
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
    object GroupBox1: TGroupBox
      Left = 365
      Top = 5
      Width = 431
      Height = 256
      Caption = 'Tax Detail'
      TabOrder = 2
      object Label73: TLabel
        Left = 7
        Top = 23
        Width = 50
        Height = 13
        Caption = 'Tax Group'
      end
      object cxtAlt: TcxTextEdit
        Left = 65
        Top = 20
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 126
      end
      object btnSimpanAlt: TButton
        Left = 200
        Top = 16
        Width = 151
        Height = 25
        Caption = 'Simpan Tax Detail'
        TabOrder = 1
        OnClick = btnSimpanAltClick
      end
      object cxGrid2: TcxGrid
        Left = 10
        Top = 55
        Width = 401
        Height = 186
        TabOrder = 2
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object cxtDet: TcxGridTableView
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
            end
            item
              Format = '#,###'
              Kind = skSum
              VisibleForCustomization = False
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = cxtDetDataControllerRecordChanged
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxColRate: TcxGridColumn
            Caption = 'Rate'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,##0'
            Properties.ValueType = vtFloat
            HeaderAlignmentHorz = taCenter
            Width = 108
          end
          object cxColDeskrpsi: TcxGridColumn
            Caption = 'Deskripsi'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'id_tax'
            Properties.ListColumns = <
              item
                FieldName = 'ID_Tax'
              end
              item
                FieldName = 'Deskripsi'
              end>
            Properties.ListSource = dsDetAkun
            HeaderAlignmentHorz = taCenter
            Width = 193
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxtDet
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 346
    inherited btnKeluar: TButton
      Left = 17
    end
    inherited btnSimpan: TButton
      Left = 95
      Visible = False
    end
  end
  object zTblTax: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_taxgroup_head'
    Left = 206
    Top = 12
  end
  object dsTax: TDataSource
    DataSet = zTblTax
    Left = 236
    Top = 12
  end
  object zqrDetAkun: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT id_tax,deskripsi FROM tbl_tax_type')
    Params = <>
    Left = 276
    Top = 15
  end
  object dsDetAkun: TDataSource
    DataSet = zqrDetAkun
    Left = 306
    Top = 15
  end
end
