inherited frmNilaiTukar: TfrmNilaiTukar
  Left = 792
  Top = 275
  Width = 649
  Height = 526
  Caption = 'Nilai Tukar'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 633
    inherited lblJudul: TLabel
      Width = 183
      Caption = 'Nilai Tukar Mata Uang'
    end
  end
  inherited pnlTengah: TPanel
    Width = 633
    Height = 345
    object cxGrid1: TcxGrid
      Left = 10
      Top = 7
      Width = 281
      Height = 294
      TabOrder = 0
      object cxTblRate: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblRateFocusedRecordChanged
        DataController.DataSource = dsRate
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.DeletingConfirmation = False
        object cxTblRateid: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'id_rate'
          Width = 47
        end
        object cxTblRatekode_brg: TcxGridDBColumn
          Caption = 'Mulai Tanggal'
          DataBinding.FieldName = 'mulai_tanggal'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 108
        end
        object cxTblRatedeskripsi: TcxGridDBColumn
          Caption = 'Sampai Tanggal'
          DataBinding.FieldName = 'sampai_tanggal'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 117
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTblRate
      end
    end
    object cxNavigator1: TcxNavigator
      Left = 10
      Top = 309
      Width = 270
      Height = 25
      Control = cxGrid1
      InfoPanel.Font.Charset = DEFAULT_CHARSET
      InfoPanel.Font.Color = clDefault
      InfoPanel.Font.Height = -11
      InfoPanel.Font.Name = 'MS Sans Serif'
      InfoPanel.Font.Style = []
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 675
      Top = 0
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'Edit1'
    end
    object cxGrid2: TcxGrid
      Left = 295
      Top = 8
      Width = 321
      Height = 293
      TabOrder = 3
      object cxGrid2TableView1: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTblRateDet: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnNewRecord = cxTblRateDetDataControllerNewRecord
        OptionsView.Navigator = True
        object cxColID: TcxGridColumn
          Caption = 'ID'
          DataBinding.ValueType = 'Integer'
          Visible = False
          Width = 40
        end
        object cxColCurr1: TcxGridColumn
          Caption = 'Dari Mata Uang'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'IDR')
          Properties.ReadOnly = True
          Width = 86
        end
        object cxColCurr2: TcxGridColumn
          Caption = 'Ke Mata Uang'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'IDR'
            'USD'
            'EUR')
          Width = 83
        end
        object cxColRate: TcxGridColumn
          Caption = 'Rate'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Width = 98
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxTblRateDet
      end
    end
    object Button1: TButton
      Left = 295
      Top = 310
      Width = 101
      Height = 25
      Caption = '&Simpan Detail'
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  inherited pnlBawah: TPanel
    Top = 411
    Width = 633
    inherited btnKeluar: TButton
      Left = 17
      Top = 30
    end
    inherited btnSimpan: TButton
      Left = 95
      Top = 30
      Visible = False
    end
  end
  object zTblRate: TZTable
    Connection = dm.zConn
    Active = True
    TableName = 'tbl_rate_head'
    Left = 221
    Top = 17
  end
  object dsRate: TDataSource
    DataSet = zTblRate
    Left = 251
    Top = 12
  end
end
