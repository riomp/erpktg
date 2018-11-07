inherited frmApprovalIS: TfrmApprovalIS
  Left = 247
  Top = 133
  Width = 1098
  Height = 579
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Approval Inquiry Sheet'
  OldCreateOrder = True
  WindowState = wsMaximized
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1082
    inherited lblJudul: TLabel
      Width = 188
      Caption = 'Approval Inquiry Sheet'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 1082
    Height = 399
    Align = alClient
    inherited pg: TPageControl
      Left = 806
      Top = 46
      Width = 460
      Height = 115
      Align = alNone
      Visible = False
    end
    object cxPg: TcxPageControl
      Left = 1
      Top = 1
      Width = 1080
      Height = 397
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 7
      TabOrder = 1
      OnPageChanging = cxPgPageChanging
      ClientRectBottom = 396
      ClientRectLeft = 1
      ClientRectRight = 1079
      ClientRectTop = 21
      object cxTabSheet1: TcxTabSheet
        Caption = 'Inquiry Sheet'
        ImageIndex = 0
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 1078
          Height = 375
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          TabOrder = 0
          DesignSize = (
            1061
            375)
          object cxGrdIS: TcxGrid
            Left = 10
            Top = 10
            Width = 1040
            Height = 151
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            object cxTblIS: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnFocusedRecordChanged = cxTblISFocusedRecordChanged
              DataController.DataSource = dsIS
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              FilterRow.Visible = True
              OptionsView.GroupByBox = False
              object cxTblISid: TcxGridDBColumn
                DataBinding.FieldName = 'id'
                Visible = False
                Width = 29
              end
              object cxTblISno_is: TcxGridDBColumn
                Caption = 'No. Iquiry Sheet'
                DataBinding.FieldName = 'no_is'
                Width = 100
              end
              object cxTblIStgl_issue: TcxGridDBColumn
                Caption = 'Issue Date'
                DataBinding.FieldName = 'issue_date'
              end
              object cxTblISnama_produk: TcxGridDBColumn
                Caption = 'Deskripsi'
                DataBinding.FieldName = 'desc_of_bags'
                Width = 223
              end
              object cxTblISColumn5: TcxGridDBColumn
                Caption = 'Unit '
                DataBinding.FieldName = 'unit_ktg'
                Width = 73
              end
              object cxTblISpossible_qty_order: TcxGridDBColumn
                Caption = 'Qty. Order'
                DataBinding.FieldName = 'possible_qty_order'
                Width = 76
              end
              object cxTblISColumn1: TcxGridDBColumn
                Caption = 'Customer'
                DataBinding.FieldName = 'nama_customer'
                Width = 250
              end
              object cxTblISColumn2: TcxGridDBColumn
                Caption = 'Revisi'
                DataBinding.FieldName = 'jml_rev'
              end
              object cxTblISColumn3: TcxGridDBColumn
                Caption = 'Approval RND'
                DataBinding.FieldName = 'app_rnd'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 79
              end
              object cxTblISColumn4: TcxGridDBColumn
                Caption = 'Approval BD'
                DataBinding.FieldName = 'app_pm'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                Width = 81
              end
            end
            object cxGrdISLevel1: TcxGridLevel
              GridView = cxTblIS
            end
          end
          object Button1: TButton
            Left = 955
            Top = 195
            Width = 75
            Height = 25
            Caption = 'Lihat Detail'
            TabOrder = 2
            Visible = False
          end
          object Button2: TButton
            Left = 957
            Top = 165
            Width = 94
            Height = 25
            Caption = 'Lihat Foto'
            TabOrder = 1
            OnClick = Button2Click
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 171
            Caption = 'No. IS'
          end
          object cxtNoIS: TcxTextEdit
            Tag = 11
            Left = 136
            Top = 168
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 155
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 197
            Caption = 'Issue Date'
          end
          object cxdIssueDate: TcxDateEdit
            Tag = 11
            Left = 136
            Top = 194
            TabOrder = 6
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 10
            Top = 223
            Caption = 'End Customer'
          end
          object cxlCustomer: TcxLookupComboBox
            Tag = 11
            Left = 136
            Top = 220
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Nama Customer'
                FieldName = 'nama'
              end
              item
                Caption = 'Kode'
                FieldName = 'kode'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCust
            TabOrder = 8
            Width = 382
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 249
            Caption = 'Description of Bags'
          end
          object cxtDescOfBag: TcxTextEdit
            Left = 136
            Top = 246
            TabOrder = 10
            Width = 382
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 275
            Caption = 'Function of Bags'
          end
          object cxtFuncOfBags: TcxTextEdit
            Left = 136
            Top = 272
            TabOrder = 12
            Width = 382
          end
          object cxLabel7: TcxLabel
            Left = 10
            Top = 301
            Caption = 'Expected Shipment Date'
          end
          object cxLabel8: TcxLabel
            Left = 10
            Top = 327
            Caption = 'Destination'
          end
          object cxtDestination: TcxTextEdit
            Left = 136
            Top = 324
            TabOrder = 16
            Width = 382
          end
          object cxLabel9: TcxLabel
            Left = 10
            Top = 348
            Caption = 'Type of Bag'
          end
          object cxLabel10: TcxLabel
            Left = 10
            Top = 369
            Caption = 'Group'
          end
          object cxtTobGroup: TcxTextEdit
            Left = 136
            Top = 366
            TabOrder = 19
            Width = 135
          end
          object cxLabel11: TcxLabel
            Left = 278
            Top = 369
            Caption = 'Sub Group'
          end
          object cxtTobSubGroup: TcxTextEdit
            Left = 340
            Top = 366
            TabOrder = 20
            Width = 135
          end
          object cxLabel12: TcxLabel
            Left = 10
            Top = 390
            Caption = 'Base Material'
          end
          object cxLabel13: TcxLabel
            Left = 10
            Top = 411
            Caption = 'Bag'
          end
          object cxtBMBag: TcxTextEdit
            Left = 136
            Top = 408
            TabOrder = 24
            Width = 135
          end
          object cxLabel14: TcxLabel
            Left = 278
            Top = 411
            Caption = 'Handle / Tape'
          end
          object cxtBMHandleTape: TcxTextEdit
            Left = 357
            Top = 408
            TabOrder = 25
            Width = 135
          end
          object cxLabel15: TcxLabel
            Left = 10
            Top = 432
            Caption = 'BAG'
          end
          object cxLabel16: TcxLabel
            Left = 10
            Top = 453
            Caption = 'Thickness (u)'
          end
          object cxsThicknessOL: TcxSpinEdit
            Left = 136
            Top = 450
            TabOrder = 32
            Width = 115
          end
          object cxLabel17: TcxLabel
            Left = 136
            Top = 434
            Caption = 'Outer Layer'
          end
          object cxLabel18: TcxLabel
            Left = 253
            Top = 434
            Caption = 'Middle'
          end
          object cxsThicknessMiddle: TcxSpinEdit
            Left = 253
            Top = 450
            TabOrder = 34
            Width = 115
          end
          object cxLabel19: TcxLabel
            Left = 370
            Top = 434
            Caption = 'Inner'
          end
          object cxsThicknessInner: TcxSpinEdit
            Left = 370
            Top = 450
            TabOrder = 35
            Width = 115
          end
          object cxsThicknessTotal: TcxSpinEdit
            Left = 487
            Top = 450
            TabOrder = 36
            Width = 115
          end
          object cxLabel20: TcxLabel
            Left = 487
            Top = 434
            Caption = 'u Total'
          end
          object cxLabel21: TcxLabel
            Left = 10
            Top = 479
            Caption = 'Open Width (cm)'
          end
          object cxsOpenWidth: TcxSpinEdit
            Left = 136
            Top = 476
            TabOrder = 38
            Width = 115
          end
          object cxLabel22: TcxLabel
            Left = 370
            Top = 479
            Caption = 'Total Height (cm)'
          end
          object cxsTotalHeight: TcxSpinEdit
            Left = 487
            Top = 476
            TabOrder = 39
            Width = 115
          end
          object cxLabel23: TcxLabel
            Left = 10
            Top = 505
            Caption = 'Face Width (cm)'
          end
          object cxsFaceWidth: TcxSpinEdit
            Left = 136
            Top = 502
            TabOrder = 42
            Width = 115
          end
          object cxLabel24: TcxLabel
            Left = 370
            Top = 505
            Caption = 'Face Height (cm)'
          end
          object cxsFaceHeight: TcxSpinEdit
            Left = 487
            Top = 502
            TabOrder = 43
            Width = 115
          end
          object cxLabel25: TcxLabel
            Left = 10
            Top = 531
            Caption = 'Side Gusset (cm)'
          end
          object cxsSideGusset: TcxSpinEdit
            Left = 136
            Top = 528
            TabOrder = 46
            Width = 115
          end
          object cxLabel26: TcxLabel
            Left = 370
            Top = 531
            Caption = 'Bottom Gusset (cm)'
          end
          object cxsBottomGusset: TcxSpinEdit
            Left = 487
            Top = 528
            TabOrder = 47
            Width = 115
          end
          object cxLabel27: TcxLabel
            Left = 10
            Top = 557
            Caption = 'Bag Colour'
          end
          object cxLabel28: TcxLabel
            Left = 135
            Top = 575
            Caption = '(Pantone No / Sample)'
          end
          object cxLabel29: TcxLabel
            Left = 370
            Top = 557
            Caption = 'Top Fold (cm)'
          end
          object cxsTopFold: TcxSpinEdit
            Left = 487
            Top = 554
            TabOrder = 51
            Width = 115
          end
          object cxLabel30: TcxLabel
            Left = 10
            Top = 599
            Caption = 'Print Type'
          end
          object cxdExpectShipDate: TcxDateEdit
            Left = 136
            Top = 298
            TabOrder = 14
            Width = 121
          end
          object cxtBagColour: TcxTextEdit
            Left = 136
            Top = 554
            TabOrder = 50
            Width = 135
          end
          object cxtPrintType: TcxTextEdit
            Left = 136
            Top = 596
            TabOrder = 55
            Width = 135
          end
          object cxLabel31: TcxLabel
            Left = 135
            Top = 617
            Caption = '(Random / Register)'
          end
          object cxLabel32: TcxLabel
            Left = 10
            Top = 640
            Caption = 'Image Type'
          end
          object cxtImageType: TcxTextEdit
            Left = 136
            Top = 637
            TabOrder = 58
            Width = 135
          end
          object cxLabel33: TcxLabel
            Left = 135
            Top = 658
            Caption = '(Line Art / Process)'
          end
          object cxLabel34: TcxLabel
            Left = 10
            Top = 680
            Caption = 'Side 1 Colour 1'
          end
          object cxLabel35: TcxLabel
            Left = 10
            Top = 706
            Caption = 'Side 1 Colour 2'
          end
          object cxLabel37: TcxLabel
            Left = 10
            Top = 732
            Caption = 'Side 1 Colour 3'
          end
          object cxLabel39: TcxLabel
            Left = 10
            Top = 758
            Caption = 'Side 1 Colour 4'
          end
          object cxLabel41: TcxLabel
            Left = 10
            Top = 784
            Caption = 'Side 1 Colour 5'
          end
          object cxLabel43: TcxLabel
            Left = 10
            Top = 810
            Caption = 'Side 1 Colour 6'
          end
          object cxLabel45: TcxLabel
            Left = 10
            Top = 836
            Caption = 'Side 1 Colour 7'
          end
          object cxLabel47: TcxLabel
            Left = 10
            Top = 862
            Caption = 'Side 1 Colour 8'
          end
          object cxtSide1Colour8: TcxTextEdit
            Left = 136
            Top = 859
            TabOrder = 89
            Width = 115
          end
          object cxtSide1Colour7: TcxTextEdit
            Left = 136
            Top = 833
            TabOrder = 81
            Width = 115
          end
          object cxtSide1Colour6: TcxTextEdit
            Left = 136
            Top = 807
            TabOrder = 79
            Width = 115
          end
          object cxtSide1Colour5: TcxTextEdit
            Left = 136
            Top = 781
            TabOrder = 77
            Width = 115
          end
          object cxtSide1Colour4: TcxTextEdit
            Left = 136
            Top = 755
            TabOrder = 73
            Width = 115
          end
          object cxtSide1Colour3: TcxTextEdit
            Left = 136
            Top = 729
            TabOrder = 69
            Width = 115
          end
          object cxtSide1Colour2: TcxTextEdit
            Left = 136
            Top = 703
            TabOrder = 65
            Width = 115
          end
          object cxtSide1Colour1: TcxTextEdit
            Left = 136
            Top = 677
            TabOrder = 61
            Width = 115
          end
          object cxLabel36: TcxLabel
            Left = 255
            Top = 680
            Caption = 'Side 2 Colour 1'
          end
          object cxLabel38: TcxLabel
            Left = 255
            Top = 706
            Caption = 'Side 2 Colour 2'
          end
          object cxLabel40: TcxLabel
            Left = 255
            Top = 732
            Caption = 'Side 2 Colour 3'
          end
          object cxLabel42: TcxLabel
            Left = 255
            Top = 758
            Caption = 'Side 2 Colour 4'
          end
          object cxLabel44: TcxLabel
            Left = 255
            Top = 784
            Caption = 'Side 2 Colour 5'
          end
          object cxLabel46: TcxLabel
            Left = 255
            Top = 810
            Caption = 'Side 2 Colour 6'
          end
          object cxLabel48: TcxLabel
            Left = 255
            Top = 836
            Caption = 'Side 2 Colour 7'
          end
          object cxLabel49: TcxLabel
            Left = 255
            Top = 862
            Caption = 'Side 2 Colour 8'
          end
          object cxtSide2Colour8: TcxTextEdit
            Left = 334
            Top = 859
            TabOrder = 90
            Width = 115
          end
          object cxtSide2Colour7: TcxTextEdit
            Left = 334
            Top = 833
            TabOrder = 82
            Width = 115
          end
          object cxtSide2Colour6: TcxTextEdit
            Left = 334
            Top = 807
            TabOrder = 80
            Width = 115
          end
          object cxtSide2Colour5: TcxTextEdit
            Left = 334
            Top = 781
            TabOrder = 78
            Width = 115
          end
          object cxtSide2Colour4: TcxTextEdit
            Left = 334
            Top = 755
            TabOrder = 74
            Width = 115
          end
          object cxtSide2Colour3: TcxTextEdit
            Left = 334
            Top = 729
            TabOrder = 70
            Width = 115
          end
          object cxtSide2Colour2: TcxTextEdit
            Left = 334
            Top = 703
            TabOrder = 66
            Width = 115
          end
          object cxtSide2Colour1: TcxTextEdit
            Left = 334
            Top = 677
            TabOrder = 62
            Width = 115
          end
          object cxLabel50: TcxLabel
            Left = 10
            Top = 888
            Caption = 'Cut Out'
          end
          object cxtCutOut: TcxTextEdit
            Left = 136
            Top = 885
            TabOrder = 93
            Width = 220
          end
          object cxLabel51: TcxLabel
            Left = 135
            Top = 906
            Caption = 
              '(Choose one : T-Shirt, Race Track, Circle, Half Moon, Kidney Pun' +
              'ch, Kidney Punch Attached)'
          end
          object cxLabel52: TcxLabel
            Left = 135
            Top = 927
            Caption = 'Width'
          end
          object cxsCoWidth: TcxSpinEdit
            Left = 173
            Top = 925
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 96
            Width = 115
          end
          object cxLabel53: TcxLabel
            Left = 294
            Top = 927
            Caption = 'Height'
          end
          object cxsCoHeight: TcxSpinEdit
            Left = 332
            Top = 925
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 97
            Width = 115
          end
          object cxmAHNotes: TcxMemo
            Left = 310
            Top = 951
            Lines.Strings = (
              '')
            TabOrder = 101
            Height = 64
            Width = 316
          end
          object cxLabel57: TcxLabel
            Left = 274
            Top = 954
            Caption = 'Notes'
          end
          object cxsAHSize: TcxSpinEdit
            Left = 136
            Top = 951
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 100
            Width = 115
          end
          object cxsAHPercentCut: TcxSpinEdit
            Left = 136
            Top = 977
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 103
            Width = 115
          end
          object cxsAHRow: TcxSpinEdit
            Left = 136
            Top = 1003
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 104
            Width = 115
          end
          object cxsAHColumn: TcxSpinEdit
            Left = 136
            Top = 1029
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 109
            Width = 115
          end
          object cxLabel56: TcxLabel
            Left = 85
            Top = 1032
            Caption = 'Column'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 124
          end
          object cxLabel55: TcxLabel
            Left = 104
            Top = 1006
            Caption = 'Row'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 129
          end
          object cxLabel54: TcxLabel
            Left = 94
            Top = 980
            Caption = '% Cut'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 129
          end
          object cxLabel105: TcxLabel
            Left = 79
            Top = 953
            Caption = 'Size (mm)'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 129
          end
          object cxLabel58: TcxLabel
            Left = 10
            Top = 953
            Caption = 'Air Hole'
          end
          object cxLabel59: TcxLabel
            Left = 10
            Top = 1061
            Caption = 'Handle / Tape'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel60: TcxLabel
            Left = 10
            Top = 1084
            Caption = 'Thickness (u)'
          end
          object cxLabel61: TcxLabel
            Left = 10
            Top = 1110
            Caption = 'Width (cm)'
          end
          object cxLabel62: TcxLabel
            Left = 10
            Top = 1136
            Caption = 'Length Width (cm)'
          end
          object cxLabel65: TcxLabel
            Left = 10
            Top = 1166
            Caption = 'Packaging'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxsHLengthWidth: TcxSpinEdit
            Left = 136
            Top = 1133
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 120
            Width = 115
          end
          object cxsHWidth: TcxSpinEdit
            Left = 136
            Top = 1107
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 116
            Width = 115
          end
          object cxsHThickness: TcxSpinEdit
            Left = 136
            Top = 1081
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 112
            Width = 115
          end
          object cxLabel64: TcxLabel
            Left = 305
            Top = 1084
            Caption = 'Print'
          end
          object cxLabel63: TcxLabel
            Left = 305
            Top = 1110
            Caption = 'Colours'
          end
          object cxLabel66: TcxLabel
            Left = 305
            Top = 1136
            Caption = 'Sides'
          end
          object cxsHSides: TcxSpinEdit
            Left = 354
            Top = 1133
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 121
            Width = 115
          end
          object cxsHColours: TcxSpinEdit
            Left = 354
            Top = 1107
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 117
            Width = 115
          end
          object cxtHPrint: TcxTextEdit
            Left = 354
            Top = 1081
            TabOrder = 113
            Width = 220
          end
          object cxLabel106: TcxLabel
            Left = 135
            Top = 1171
            Caption = 'Unit 1'
          end
          object cxLabel107: TcxLabel
            Left = 210
            Top = 1171
            Caption = 'Unit 2'
          end
          object cxLabel108: TcxLabel
            Left = 285
            Top = 1171
            Caption = 'Unit 3'
          end
          object cxLabel109: TcxLabel
            Left = 360
            Top = 1171
            Caption = 'Unit 4'
          end
          object cxLabel110: TcxLabel
            Left = 435
            Top = 1171
            Caption = 'Unit 5'
          end
          object cxsPackQty5: TcxSpinEdit
            Left = 436
            Top = 1188
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 134
            Width = 70
          end
          object cxsPackQty4: TcxSpinEdit
            Left = 361
            Top = 1188
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 133
            Width = 70
          end
          object cxsPackQty3: TcxSpinEdit
            Left = 286
            Top = 1188
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 132
            Width = 70
          end
          object cxsPackQty2: TcxSpinEdit
            Left = 211
            Top = 1188
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 131
            Width = 70
          end
          object cxsPackQty1: TcxSpinEdit
            Left = 136
            Top = 1188
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 130
            Width = 70
          end
          object cxLabel67: TcxLabel
            Left = 87
            Top = 1191
            Caption = 'Quantity'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 133
          end
          object cxLabel68: TcxLabel
            Left = 110
            Top = 1217
            Caption = 'Unit'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 133
          end
          object cxCmbPackUnit1: TcxComboBox
            Left = 136
            Top = 1214
            TabOrder = 136
            Text = 'cxCmbPackUnit1'
            Width = 70
          end
          object cxCmbPackUnit2: TcxComboBox
            Left = 211
            Top = 1214
            TabOrder = 137
            Text = 'cxComboBox1'
            Width = 70
          end
          object cxCmbPackUnit3: TcxComboBox
            Left = 286
            Top = 1214
            TabOrder = 138
            Text = 'cxComboBox1'
            Width = 70
          end
          object cxCmbPackUnit4: TcxComboBox
            Left = 361
            Top = 1214
            TabOrder = 139
            Text = 'cxComboBox1'
            Width = 70
          end
          object cxCmbPackunit5: TcxComboBox
            Left = 436
            Top = 1214
            TabOrder = 140
            Text = 'cxComboBox1'
            Width = 70
          end
          object cxLabel69: TcxLabel
            Left = 10
            Top = 1243
            Caption = 'Folding'
          end
          object cxCmbFolding1: TcxComboBox
            Left = 135
            Top = 1241
            TabOrder = 142
            Text = 'cxCmbFolding1'
            Width = 121
          end
          object cxCmbFolding2: TcxComboBox
            Left = 135
            Top = 1267
            TabOrder = 144
            Text = 'cxComboBox6'
            Width = 121
          end
          object cxLabel70: TcxLabel
            Left = 10
            Top = 1295
            Caption = 'Packing Accesories'
          end
          object cxCmbPackAcc: TcxComboBox
            Left = 135
            Top = 1293
            TabOrder = 148
            Text = 'cxComboBox6'
            Width = 121
          end
          object cxLabel71: TcxLabel
            Left = 260
            Top = 1295
            Caption = 'CORE :'
          end
          object cxLabel74: TcxLabel
            Left = 260
            Top = 1318
            Caption = 'Other (pls describe) '
          end
          object cxsPackAccCore: TcxSpinEdit
            Left = 303
            Top = 1293
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 149
            Width = 80
          end
          object cxsPackAccInner: TcxSpinEdit
            Left = 388
            Top = 1293
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 150
            Width = 80
          end
          object cxLabel72: TcxLabel
            Left = 387
            Top = 1275
            Caption = 'Inner o (cm)'
          end
          object cxLabel73: TcxLabel
            Left = 472
            Top = 1275
            Caption = 'Thickness (mm)'
          end
          object cxsPackAccThickness: TcxSpinEdit
            Left = 473
            Top = 1293
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 151
            Width = 80
          end
          object cxLabel75: TcxLabel
            Left = 557
            Top = 1275
            Caption = 'Length (cm)'
          end
          object cxsPackAccLength: TcxSpinEdit
            Left = 558
            Top = 1293
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 152
            Width = 80
          end
          object cxmPackAccNotes: TcxMemo
            Left = 360
            Top = 1320
            TabOrder = 156
            Height = 51
            Width = 278
          end
          object cxLabel76: TcxLabel
            Left = 132
            Top = 1385
            Caption = 'Inner Outer :'
          end
          object cxLabel77: TcxLabel
            Left = 217
            Top = 1385
            Caption = 'Label/paper band'
          end
          object cxLabel78: TcxLabel
            Left = 315
            Top = 1385
            Caption = 'Outer'
          end
          object cxLabel79: TcxLabel
            Left = 400
            Top = 1385
            Caption = 'Dispenser'
          end
          object cxsGSMDispenser: TcxSpinEdit
            Left = 401
            Top = 1455
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 164
            Width = 80
          end
          object cxsGSMOuter: TcxSpinEdit
            Left = 316
            Top = 1455
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 163
            Width = 80
          end
          object cxsGsmLabelPB: TcxSpinEdit
            Left = 220
            Top = 1455
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 162
            Width = 91
          end
          object cxsGsmIO: TcxSpinEdit
            Left = 135
            Top = 1455
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 161
            Width = 80
          end
          object cxsWidthIO: TcxSpinEdit
            Left = 135
            Top = 1481
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 165
            Width = 80
          end
          object cxsWidthLabelPB: TcxSpinEdit
            Left = 220
            Top = 1481
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 166
            Width = 91
          end
          object cxsWidthOuter: TcxSpinEdit
            Left = 316
            Top = 1481
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 167
            Width = 80
          end
          object cxsWidthDispenser: TcxSpinEdit
            Left = 401
            Top = 1481
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 168
            Width = 80
          end
          object cxsLengthDispenser: TcxSpinEdit
            Left = 401
            Top = 1507
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 177
            Width = 80
          end
          object cxsLengthOuter: TcxSpinEdit
            Left = 316
            Top = 1507
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 171
            Width = 80
          end
          object cxsLengthLabelPB: TcxSpinEdit
            Left = 220
            Top = 1507
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 170
            Width = 91
          end
          object cxsLengthIO: TcxSpinEdit
            Left = 135
            Top = 1507
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 169
            Width = 80
          end
          object cxLabel83: TcxLabel
            Left = 60
            Top = 1507
            Caption = 'Length (cm) :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel82: TcxLabel
            Left = 62
            Top = 1485
            Caption = 'Width (cm) : '
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel81: TcxLabel
            Left = 79
            Top = 1457
            Caption = 'u / gsm : '
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel80: TcxLabel
            Left = 78
            Top = 1432
            Caption = 'Colours : '
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel84: TcxLabel
            Left = 79
            Top = 1405
            Caption = 'Material :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel85: TcxLabel
            Left = 65
            Top = 1529
            Caption = 'Print Detail :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel86: TcxLabel
            Left = 81
            Top = 1551
            Caption = 'Colours :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel87: TcxLabel
            Left = 92
            Top = 1574
            Caption = 'Sides :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxsPDColoursIO: TcxSpinEdit
            Left = 135
            Top = 1546
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 179
            Width = 80
          end
          object cxsPDSidesIO: TcxSpinEdit
            Left = 135
            Top = 1572
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 184
            Width = 80
          end
          object cxsPDColoursLabelPB: TcxSpinEdit
            Left = 220
            Top = 1546
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 180
            Width = 91
          end
          object cxsPDSidesLabelPB: TcxSpinEdit
            Left = 220
            Top = 1572
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 185
            Width = 91
          end
          object cxsPDColoursOuter: TcxSpinEdit
            Left = 316
            Top = 1546
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 181
            Width = 80
          end
          object cxsPDSidesOuter: TcxSpinEdit
            Left = 316
            Top = 1572
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 186
            Width = 80
          end
          object cxsPDColoursDispenser: TcxSpinEdit
            Left = 401
            Top = 1546
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 182
            Width = 80
          end
          object cxsPDSidesDispenser: TcxSpinEdit
            Left = 401
            Top = 1572
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 187
            Width = 80
          end
          object cxLabel88: TcxLabel
            Left = 10
            Top = 1602
            Caption = 'Final Packaging'
          end
          object cxLabel90: TcxLabel
            Left = 79
            Top = 1622
            Caption = 'Material :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel89: TcxLabel
            Left = 132
            Top = 1602
            Caption = 'Inner Size :'
          end
          object cxsFPMaterialInnerSize: TcxSpinEdit
            Left = 135
            Top = 1620
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 192
            Width = 80
          end
          object cxLabel91: TcxLabel
            Left = 217
            Top = 1602
            Caption = 'Outer Size'
          end
          object cxsFPMaterialOuterSize: TcxSpinEdit
            Left = 220
            Top = 1620
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 193
            Width = 86
          end
          object cxLabel94: TcxLabel
            Left = 350
            Top = 1622
            Caption = 'gsm :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 380
          end
          object cxsFPGsm: TcxSpinEdit
            Left = 392
            Top = 1620
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 194
            Width = 80
          end
          object cxsFPLengthColours: TcxSpinEdit
            Left = 393
            Top = 1672
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 203
            Width = 80
          end
          object cxLabel95: TcxLabel
            Left = 335
            Top = 1648
            Caption = 'Printed :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 380
          end
          object cxLabel96: TcxLabel
            Left = 333
            Top = 1674
            Caption = 'Colours :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 380
          end
          object cxLabel97: TcxLabel
            Left = 344
            Top = 1700
            Caption = 'Sides :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 380
          end
          object cxsFPHeightSides: TcxSpinEdit
            Left = 393
            Top = 1698
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 208
            Width = 80
          end
          object cxsFPHeightOuterSize: TcxSpinEdit
            Left = 220
            Top = 1698
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 206
            Width = 86
          end
          object cxsFPLengthOuterSize: TcxSpinEdit
            Left = 220
            Top = 1672
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 200
            Width = 86
          end
          object cxsFPWidthOuterSize: TcxSpinEdit
            Left = 220
            Top = 1646
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 198
            Width = 86
          end
          object cxsFPWidthInnerSize: TcxSpinEdit
            Left = 135
            Top = 1646
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 197
            Width = 80
          end
          object cxsFPLengthInnerSize: TcxSpinEdit
            Left = 135
            Top = 1672
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 199
            Width = 80
          end
          object cxsFPHeightInnerSize: TcxSpinEdit
            Left = 135
            Top = 1698
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 205
            Width = 80
          end
          object cxLabel93: TcxLabel
            Left = 62
            Top = 1700
            Caption = 'Height (cm) :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel92: TcxLabel
            Left = 60
            Top = 1674
            Caption = 'Length (cm) :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel98: TcxLabel
            Left = 65
            Top = 1648
            Caption = 'Width (cm) :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel99: TcxLabel
            Left = 10
            Top = 1727
            Caption = 'Pallet'
          end
          object cxLabel100: TcxLabel
            Left = 72
            Top = 1745
            Caption = 'Width (cm)'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxLabel101: TcxLabel
            Left = 98
            Top = 1771
            Caption = 'Entry'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 128
          end
          object cxsPalletWidth: TcxSpinEdit
            Left = 135
            Top = 1743
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 212
            Width = 80
          end
          object cxsPalletEntry: TcxSpinEdit
            Left = 135
            Top = 1769
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 218
            Width = 80
          end
          object cxLabel102: TcxLabel
            Left = 219
            Top = 1745
            Caption = 'Length (cm) :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 287
          end
          object cxLabel103: TcxLabel
            Left = 215
            Top = 1771
            Caption = 'Requirement :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 287
          end
          object cxsPalletLength: TcxSpinEdit
            Left = 292
            Top = 1743
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 213
            Width = 80
          end
          object cxsPalletRequirement: TcxSpinEdit
            Left = 292
            Top = 1769
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 219
            Width = 80
          end
          object cxLabel104: TcxLabel
            Left = 384
            Top = 1745
            Caption = 'Height (cm) :'
            Properties.Alignment.Horz = taRightJustify
            AnchorX = 450
          end
          object cxsPalletHeight: TcxSpinEdit
            Left = 460
            Top = 1743
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            TabOrder = 214
            Width = 80
          end
          object cxLabel111: TcxLabel
            Left = 10
            Top = 1802
            Caption = 'Compiling Packaging'
          end
          object cxmCompilingPackaging: TcxMemo
            Left = 10
            Top = 1821
            TabOrder = 223
            Height = 57
            Width = 566
          end
          object cxLabel112: TcxLabel
            Left = 10
            Top = 1884
            Caption = 'Very Important :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel113: TcxLabel
            Left = 138
            Top = 1884
            Caption = 
              'STATE ALL INFORMATIONS ON ANY TESTINGS ON THE PRODUCT AT CUSTOME' +
              'R SITES'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel114: TcxLabel
            Left = 185
            Top = 1899
            Caption = 'OR ATTACH ANY SPECIFICATION FROM CUSTOMER WHEN AVAILABLE'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxtMechanicalProperties: TcxTextEdit
            Left = 248
            Top = 1942
            TabOrder = 229
            Width = 121
          end
          object cxLabel117: TcxLabel
            Left = 395
            Top = 1943
            Caption = 'Visual Propeties ** :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel118: TcxLabel
            Left = 395
            Top = 1958
            Caption = '** Gloss, Opacity'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxtVisualProp: TcxTextEdit
            Left = 524
            Top = 1942
            TabOrder = 230
            Width = 121
          end
          object cxLabel115: TcxLabel
            Left = 10
            Top = 1943
            Caption = 'Mechanical Properties ** :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel116: TcxLabel
            Left = 10
            Top = 1928
            Caption = 'Testing points :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel119: TcxLabel
            Left = 10
            Top = 1958
            Caption = '** Tensile, Elongation, Tear, Dart Impact, Probe'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxtCertification: TcxTextEdit
            Left = 170
            Top = 1981
            TabOrder = 235
            Width = 276
          end
          object cxLabel120: TcxLabel
            Left = 10
            Top = 1983
            Caption = 'Certification Requirement : '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel121: TcxLabel
            Left = 10
            Top = 2013
            Caption = 'Others :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxmOthers: TcxMemo
            Left = 61
            Top = 2009
            TabOrder = 237
            Height = 48
            Width = 566
          end
          object Sample: TcxLabel
            Left = 10
            Top = 2064
            Caption = 'Sample :'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxCmbSample: TcxComboBox
            Left = 65
            Top = 2063
            TabOrder = 239
            Width = 295
          end
          object Panel2: TPanel
            Left = 970
            Top = 1841
            Width = 36
            Height = 283
            BevelOuter = bvNone
            TabOrder = 224
          end
          object Panel1: TPanel
            Left = 191
            Top = 83
            Width = 526
            Height = 206
            TabOrder = 3
            Visible = False
            object Button3: TButton
              Left = 505
              Top = 4
              Width = 17
              Height = 18
              Caption = 'X'
              TabOrder = 0
              Visible = False
              OnClick = Button3Click
            end
            object cxMemoKetTidakApp: TcxMemo
              Left = 10
              Top = 32
              TabOrder = 2
              Height = 136
              Width = 506
            end
            object cxLabel1: TcxLabel
              Left = 10
              Top = 12
              Caption = 'Keterangan Tidak Approval '
            end
            object btnSimpanTidakApp: TButton
              Left = 10
              Top = 172
              Width = 75
              Height = 25
              Caption = 'Simpan'
              TabOrder = 3
              OnClick = btnSimpanTidakAppClick
            end
            object Button4: TButton
              Left = 90
              Top = 172
              Width = 75
              Height = 25
              Caption = 'Batal'
              TabOrder = 4
              OnClick = Button4Click
            end
          end
          object cxtMaterialIO: TcxTextEdit
            Left = 135
            Top = 1403
            TabOrder = 241
            Width = 80
          end
          object cxtMaterialLblPB: TcxTextEdit
            Left = 220
            Top = 1403
            TabOrder = 242
            Width = 91
          end
          object cxtMaterialOuter: TcxTextEdit
            Left = 316
            Top = 1403
            TabOrder = 243
            Width = 80
          end
          object cxtMaterialDispenser: TcxTextEdit
            Left = 401
            Top = 1403
            TabOrder = 244
            Width = 80
          end
          object cxtColourDispenser: TcxTextEdit
            Left = 401
            Top = 1429
            TabOrder = 245
            Width = 80
          end
          object cxtColoursOuter: TcxTextEdit
            Left = 316
            Top = 1429
            TabOrder = 246
            Width = 80
          end
          object cxtColoursLblPB: TcxTextEdit
            Left = 220
            Top = 1429
            TabOrder = 247
            Width = 91
          end
          object cxtColoursIO: TcxTextEdit
            Left = 135
            Top = 1429
            TabOrder = 248
            Width = 80
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Control Plan'
        ImageIndex = 1
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 1078
          Height = 108
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object cxLabel122: TcxLabel
            Left = 10
            Top = 8
            Caption = 'No. IS'
          end
          object cxtNoIS2: TcxTextEdit
            Tag = 11
            Left = 136
            Top = 5
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 155
          end
          object cxLabel123: TcxLabel
            Left = 10
            Top = 32
            Caption = 'Issue Date'
          end
          object cxdIssueDate2: TcxDateEdit
            Tag = 11
            Left = 136
            Top = 29
            TabOrder = 3
            Width = 121
          end
          object cxLabel124: TcxLabel
            Left = 10
            Top = 56
            Caption = 'End Customer'
          end
          object btnControlPlan: TButton
            Left = 136
            Top = 77
            Width = 100
            Height = 25
            Caption = 'Edit Control Plan'
            TabOrder = 6
            OnClick = btnControlPlanClick
          end
          object btnSubmitCP: TButton
            Left = 240
            Top = 77
            Width = 111
            Height = 25
            Caption = 'Submit Control Plan'
            TabOrder = 7
            OnClick = btnSubmitCPClick
          end
          object Panel4: TPanel
            Left = 354
            Top = 68
            Width = 452
            Height = 46
            BevelOuter = bvNone
            TabOrder = 8
            Visible = False
            object cxLabel125: TcxLabel
              Left = 12
              Top = 13
              Caption = 'Kode Brg.'
            end
            object cxtKodeBrgSubmit: TcxTextEdit
              Tag = 11
              Left = 71
              Top = 11
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = False
              TabOrder = 1
              Width = 245
            end
            object Button5: TButton
              Left = 320
              Top = 8
              Width = 91
              Height = 25
              Caption = 'Generate'
              TabOrder = 2
              OnClick = Button5Click
            end
          end
          object cxlCustomer2: TcxLookupComboBox
            Tag = 11
            Left = 136
            Top = 53
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Nama Customer'
                FieldName = 'nama'
              end
              item
                Caption = 'Kode'
                FieldName = 'kode'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCust
            TabOrder = 5
            Width = 382
          end
        end
        object cxPg2: TcxPageControl
          Left = 0
          Top = 108
          Width = 1078
          Height = 267
          Align = alClient
          Style = 7
          TabOrder = 1
          ClientRectBottom = 266
          ClientRectLeft = 1
          ClientRectRight = 1077
          ClientRectTop = 1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 465
    Width = 1082
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 960
      Top = 20
      TabOrder = 8
      Visible = False
    end
    inherited btnTambah: TButton
      Left = 505
      Top = 20
      TabOrder = 3
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 580
      Top = 20
      TabOrder = 4
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 655
      Top = 20
      TabOrder = 5
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 885
      Top = 20
      TabOrder = 7
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 810
      Top = 20
      TabOrder = 6
      Visible = False
    end
    object btnApprove: TButton
      Left = 12
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Approve'
      TabOrder = 0
      OnClick = btnApproveClick
    end
    object btnTidakApprove: TButton
      Left = 92
      Top = 25
      Width = 81
      Height = 25
      Caption = 'Tidak Approve'
      TabOrder = 1
      OnClick = btnTidakApproveClick
    end
    object btnKeluar2: TButton
      Left = 177
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluar2Click
    end
  end
  inherited zQry: TZQuery
    SQL.Strings = (
      'SELECT * FROM tbl_is '
      'WHERE f_app_pm = 0')
  end
  object zqrIS: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.nama nama_customer '
      'FROM tbl_is2 a'
      'LEFT JOIN tbl_customer b '
      'ON a.kode_customer = b.kode order by a.no_is desc'
      '-- ')
    Params = <>
    Left = 465
    Top = 25
  end
  object dsIS: TDataSource
    DataSet = zqrIS
    Left = 495
    Top = 25
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 530
    Top = 30
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama '
      'FROM tbl_customer'
      'WHERE f_aktif = 1')
    Params = <>
    Left = 570
    Top = 25
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 600
    Top = 25
  end
end
