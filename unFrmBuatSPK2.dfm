inherited frmBuatSPK2: TfrmBuatSPK2
  Left = 380
  Top = 219
  Width = 977
  Height = 579
  Caption = 'Proses SPK'
  OldCreateOrder = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 961
    Height = 34
    inherited lblJudul: TLabel
      Left = 10
      Top = 7
      Width = 91
      Caption = 'Proses SPK'
    end
  end
  inherited pnlTengah: TPanel
    Top = 232
    Width = 961
    Height = 268
    Align = alClient
    TabOrder = 2
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 959
      Height = 266
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 7
      TabOrder = 0
      ClientRectBottom = 265
      ClientRectLeft = 1
      ClientRectRight = 958
      ClientRectTop = 21
      object cxTabSheet1: TcxTabSheet
        Caption = 'Daftar SPK'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 10
          Top = 10
          Width = 596
          Height = 196
          TabOrder = 0
          object cxTblKetSPK: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            object cxColNo: TcxGridColumn
              Caption = 'No.'
              OnGetDisplayText = cxColNoGetDisplayText
              Options.Editing = False
              Width = 38
            end
            object cxColJenisSPK: TcxGridColumn
              Caption = 'Jenis SPK'
              Options.Editing = False
              Width = 107
            end
            object cxColNoSPK: TcxGridColumn
              Caption = 'No. SPK'
              Options.Editing = False
              Width = 112
            end
            object cxColTglSPK: TcxGridColumn
              Caption = 'Tanggal'
              DataBinding.ValueType = 'DateTime'
              Options.Editing = False
              Width = 88
            end
            object cxColQtySPK: TcxGridColumn
              Caption = 'Qty. SPK'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Options.Editing = False
              Width = 93
            end
            object cxColHslProd: TcxGridColumn
              Caption = 'Hasil Prod'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Options.Editing = False
              Width = 102
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxTblKetSPK
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 500
    Width = 961
    Height = 40
    Align = alBottom
    TabOrder = 3
    inherited btnKeluar: TButton
      Left = 88
      Top = 6
    end
    inherited btnSimpan: TButton
      Left = 11
      Top = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 961
    Height = 162
    Align = alTop
    TabOrder = 1
    object cxLabel7: TcxLabel
      Left = 10
      Top = 10
      Caption = 'No. SO / Tgl.'
    end
    object cxtNoSO: TcxTextEdit
      Left = 102
      Top = 7
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 127
    end
    object cxLabel8: TcxLabel
      Left = 10
      Top = 35
      Caption = 'Customer'
    end
    object cxtCustomer: TcxTextEdit
      Left = 102
      Top = 32
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 419
    end
    object cxdTglSO: TcxDateEdit
      Left = 234
      Top = 7
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 60
      Caption = 'Kode Brg.'
    end
    object cxtKodeBrg: TcxTextEdit
      Left = 102
      Top = 57
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 204
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 85
      Caption = 'Deskripsi'
    end
    object cxtDeskripsi: TcxTextEdit
      Left = 102
      Top = 82
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 489
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 110
      Caption = 'Qty. SO'
    end
    object cxsQtySO: TcxSpinEdit
      Left = 102
      Top = 107
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 121
    end
    object cxtSatuan: TcxTextEdit
      Left = 227
      Top = 107
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 84
    end
    object cxsQty1: TcxSpinEdit
      Left = 318
      Top = 107
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 12
      Width = 121
    end
    object cxtSatuan1: TcxTextEdit
      Left = 443
      Top = 107
      Properties.ReadOnly = True
      TabOrder = 13
      Text = 'KG'
      Width = 84
    end
    object cxGrid2: TcxGrid
      Left = 658
      Top = 5
      Width = 233
      Height = 141
      TabOrder = 14
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTblConversi: TcxGridTableView
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
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object cxColNoNo: TcxGridColumn
          Caption = 'No'
          DataBinding.ValueType = 'Integer'
          Width = 47
        end
        object cxColKonversi: TcxGridColumn
          Caption = 'Qty Konvesi'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00  '
          Properties.EditFormat = '#,##0.00  '
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Width = 85
        end
        object cxColSatuan: TcxGridColumn
          Caption = 'Satuan'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = False
          Width = 75
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxTblConversi
      end
    end
    object cxsPCS: TcxSpinEdit
      Left = 525
      Top = 5
      TabOrder = 15
      Visible = False
      Width = 121
    end
    object cxsRoll: TcxSpinEdit
      Left = 525
      Top = 55
      TabOrder = 16
      Visible = False
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 10
      Top = 135
      Caption = 'Keterangan SO'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 102
      Top = 132
      Properties.ReadOnly = True
      TabOrder = 18
      Width = 539
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 196
    Width = 961
    Height = 36
    Align = alTop
    TabOrder = 4
    object cxLabel4: TcxLabel
      Left = 10
      Top = 10
      Caption = 'Qty. SPK'
    end
    object cxsQtySPK: TcxSpinEdit
      Left = 102
      Top = 7
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,#0.00'
      Properties.ValueType = vtFloat
      Properties.OnChange = cxsQtySPKPropertiesChange
      TabOrder = 1
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 228
      Top = 10
      Caption = 'Toleransi'
    end
    object cxsToleransi: TcxSpinEdit
      Left = 282
      Top = 7
      Properties.DisplayFormat = '#,#0.00'
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      TabOrder = 3
      Width = 62
    end
    object btnProsesSPK: TButton
      Left = 791
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesSPKClick
    end
    object cxLabel6: TcxLabel
      Left = 575
      Top = 10
      Caption = 'Target Tgl. Kirim'
    end
    object cxdTargetKirim: TcxDateEdit
      Left = 664
      Top = 7
      TabOrder = 6
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 358
      Top = 10
      Caption = 'Pemanasan (kg)'
    end
    object cxsPemanasan: TcxSpinEdit
      Left = 447
      Top = 7
      Properties.DisplayFormat = '#,#0.00'
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      TabOrder = 8
      Width = 114
    end
  end
end
