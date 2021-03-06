inherited frmSchedulePP: TfrmSchedulePP
  Left = 573
  Top = 232
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'frmSchedulePP'
  ClientHeight = 507
  ClientWidth = 582
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 582
    Height = 161
    inherited lblJudul: TLabel
      Width = 248
      Caption = 'Schedule Permintaan Kirim PP'
    end
    object Label2: TLabel
      Left = 15
      Top = 80
      Width = 43
      Height = 13
      Caption = 'No.Urut :'
    end
    object Label3: TLabel
      Left = 15
      Top = 105
      Width = 68
      Height = 13
      Caption = 'Kode Barang :'
    end
    object Label4: TLabel
      Left = 15
      Top = 125
      Width = 22
      Height = 13
      Caption = 'Qty :'
    end
    object Label1: TLabel
      Left = 100
      Top = 85
      Width = 43
      Height = 13
      Caption = 'No.Urut :'
    end
    object Label5: TLabel
      Left = 100
      Top = 105
      Width = 25
      Height = 13
      Caption = 'Kode'
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 55
      Caption = 'No. PP'
    end
    object cxtNoBukti: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 53
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxsQty: TcxSpinEdit
      Left = 100
      Top = 125
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 2
      Width = 121
    end
  end
  inherited pnlTengah: TPanel
    Top = 161
    Width = 582
    object cxgrdPP: TcxGrid
      Left = 1
      Top = 1
      Width = 580
      Height = 263
      Align = alClient
      TabOrder = 0
      object cxTblPP: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##.00'
            Kind = skSum
            Column = cxColQty
          end
          item
            Format = '#,##.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxColNo: TcxGridColumn
          Caption = 'No.'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.UseCtrlIncrement = True
          OnGetDisplayText = cxColNoGetDisplayText
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 42
        end
        object cxColTgl: TcxGridColumn
          Caption = 'Tgl.Permintaan'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 113
        end
        object cxColQty: TcxGridColumn
          Caption = 'Qty'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
        end
        object cxColKeterangan: TcxGridColumn
          Caption = 'Keterangan'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 306
        end
      end
      object cxgrdlvl1Grid1Level1: TcxGridLevel
        GridView = cxTblPP
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 426
    Width = 582
  end
end
