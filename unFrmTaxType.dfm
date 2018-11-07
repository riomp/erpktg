inherited frmTaxType: TfrmTaxType
  Left = 597
  Top = 264
  Height = 459
  Caption = 'Tax Type'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 76
      Caption = 'Tax Type'
    end
  end
  inherited pnlTengah: TPanel
    Height = 275
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
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 7
      Width = 348
      Height = 226
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
        DataController.DataSource = dsTax
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.DeletingConfirmation = False
        object cxGrid1DBTableView1id_tax: TcxGridDBColumn
          Caption = 'Type Tax'
          DataBinding.FieldName = 'id_tax'
          Width = 101
        end
        object cxGrid1DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
        end
        object cxGrid1DBTableView1rate: TcxGridDBColumn
          Caption = 'Rate'
          DataBinding.FieldName = 'rate'
          PropertiesClassName = 'TcxSpinEditProperties'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object GroupBox1: TGroupBox
      Left = 365
      Top = 5
      Width = 431
      Height = 256
      Caption = 'Tax Account'
      TabOrder = 2
      object Label73: TLabel
        Left = 7
        Top = 23
        Width = 45
        Height = 13
        Caption = 'Type Tax'
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
        Caption = 'Simpan Tax Account'
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
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxColNo: TcxGridColumn
            Caption = 'No.'
            DataBinding.ValueType = 'Integer'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MaxValue = 100.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Properties.UseCtrlIncrement = True
            OnGetDisplayText = cxColNoGetDisplayText
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 51
          end
          object cxColIN: TcxGridColumn
            Caption = 'IN Tax'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListSource = dsDetAkun
            HeaderAlignmentHorz = taCenter
            Width = 174
          end
          object cxColOUT: TcxGridColumn
            Caption = 'OUT Tax'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListSource = dsDetAkun
            HeaderAlignmentHorz = taCenter
            Width = 167
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxtDet
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 341
    inherited btnKeluar: TButton
      Left = 12
    end
    inherited btnSimpan: TButton
      Left = 90
      Visible = False
    end
  end
  object zTblTax: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_tax_type'
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
      'SELECT noakun, nama, '
      
        '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_a' +
        'nak '
      'FROM tbl_coa a'
      
        'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun)' +
        ' = 0;')
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
