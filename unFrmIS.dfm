inherited frmIS: TfrmIS
  Left = 469
  Top = 190
  Width = 829
  Height = 625
  VertScrollBar.Visible = False
  Caption = 'Inquiry Sheet'
  OldCreateOrder = True
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 813
    inherited lblJudul: TLabel
      Width = 110
      Caption = 'Inquiry Sheet'
    end
    object cxlCari: TcxLookupComboBox
      Left = 543
      Top = 22
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_is'
      Properties.ListColumns = <
        item
          Caption = 'No. IS'
          FieldName = 'no_is'
        end
        item
          Caption = 'Nama Produk'
          FieldName = 'nama_produk'
        end
        item
          Caption = 'Tgl. Issue'
          FieldName = 'tgl_issue'
        end
        item
          Caption = 'Nama Customer'
          FieldName = 'nama_customer'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCari
      TabOrder = 1
      Width = 251
    end
    object btnEdit2: TButton
      Left = 463
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
  end
  inherited pnlTengah: TPanel
    Width = 813
    Height = 444
    Align = alClient
    object frxScrollBox1: TfrxScrollBox
      Left = 1
      Top = 1
      Width = 811
      Height = 442
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 0
      OnMouseWheelDown = frxScrollBox1MouseWheelDown
      OnMouseWheelUp = frxScrollBox1MouseWheelUp
      object cxLabel1: TcxLabel
        Left = 15
        Top = 10
        Caption = 'No. IS'
      end
      object cxtNoIS: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 7
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 155
      end
      object cxLabel2: TcxLabel
        Left = 15
        Top = 36
        Caption = 'Issue Date'
      end
      object cxdIssueDate: TcxDateEdit
        Tag = 11
        Left = 141
        Top = 33
        Properties.ReadOnly = False
        TabOrder = 4
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 15
        Top = 62
        Caption = 'End Customer'
      end
      object Panel1: TPanel
        Left = 750
        Top = 1809
        Width = 36
        Height = 283
        BevelOuter = bvNone
        TabOrder = 237
      end
      object cxlCustomer: TcxLookupComboBox
        Tag = 11
        Left = 141
        Top = 59
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
        Properties.ListSource = dsCust
        TabOrder = 6
        Width = 382
      end
      object btnTambahPic: TButton
        Left = 14
        Top = 1976
        Width = 163
        Height = 25
        Caption = 'Tambah Image'
        TabOrder = 250
        OnClick = btnTambahPicClick
      end
      object cxLabel4: TcxLabel
        Left = 15
        Top = 88
        Caption = 'Description of Bags'
      end
      object cxtDescOfBag: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 85
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 382
      end
      object cxLabel5: TcxLabel
        Left = 15
        Top = 114
        Caption = 'Function of Bags'
      end
      object cxtFuncOfBags: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 111
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Width = 382
      end
      object cxLabel6: TcxLabel
        Left = 15
        Top = 140
        Caption = 'Expected Shipment Date'
      end
      object cxLabel7: TcxLabel
        Left = 15
        Top = 166
        Caption = 'Destination'
      end
      object cxtDestination: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 163
        Properties.CharCase = ecUpperCase
        TabOrder = 14
        Width = 382
      end
      object cxLabel8: TcxLabel
        Left = 15
        Top = 187
        Caption = 'Type of Bag'
      end
      object cxLabel9: TcxLabel
        Left = 15
        Top = 208
        Caption = 'Group'
      end
      object cxtTobGroup: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 205
        TabOrder = 18
        Width = 135
      end
      object cxLabel11: TcxLabel
        Left = 283
        Top = 208
        Caption = 'Sub Group'
      end
      object cxtTobSubGroup: TcxTextEdit
        Tag = 11
        Left = 345
        Top = 205
        TabOrder = 19
        Width = 135
      end
      object cxLabel10: TcxLabel
        Left = 15
        Top = 229
        Caption = 'Base Material'
      end
      object cxLabel12: TcxLabel
        Left = 15
        Top = 250
        Caption = 'Bag'
      end
      object cxLabel13: TcxLabel
        Left = 283
        Top = 250
        Caption = 'Handle / Tape'
      end
      object cxLabel14: TcxLabel
        Left = 15
        Top = 271
        Caption = 'BAG'
      end
      object cxLabel15: TcxLabel
        Left = 15
        Top = 292
        Caption = 'Thickness (u)'
      end
      object cxsThicknessOL: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 289
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        Properties.OnChange = cxsThicknessOLPropertiesChange
        TabOrder = 32
        Width = 115
      end
      object cxLabel16: TcxLabel
        Left = 141
        Top = 273
        Caption = 'Outer Layer'
      end
      object cxLabel17: TcxLabel
        Left = 258
        Top = 273
        Caption = 'Middle'
      end
      object cxsThicknessMiddle: TcxSpinEdit
        Tag = 11
        Left = 258
        Top = 289
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        Properties.OnChange = cxsThicknessOLPropertiesChange
        TabOrder = 33
        Width = 115
      end
      object cxLabel18: TcxLabel
        Left = 375
        Top = 273
        Caption = 'Inner'
      end
      object cxsThicknessInner: TcxSpinEdit
        Tag = 11
        Left = 375
        Top = 289
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        Properties.OnChange = cxsThicknessOLPropertiesChange
        TabOrder = 34
        Width = 115
      end
      object cxsThicknessTotal: TcxSpinEdit
        Tag = 11
        Left = 492
        Top = 289
        Properties.DisplayFormat = '#,#0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        Style.Color = clMoneyGreen
        TabOrder = 35
        Width = 115
      end
      object cxLabel19: TcxLabel
        Left = 492
        Top = 273
        Caption = 'u Total'
      end
      object cxLabel20: TcxLabel
        Left = 15
        Top = 318
        Caption = 'Open Width (cm)'
      end
      object cxsOpenWidth: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 315
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 37
        Width = 115
      end
      object lblJmlImage: TcxLabel
        Left = 186
        Top = 1980
        Caption = 'Jumlah Image : '
      end
      object cxLabel21: TcxLabel
        Left = 375
        Top = 318
        Caption = 'Total Height (cm)'
      end
      object cxsTotalHeight: TcxSpinEdit
        Tag = 11
        Left = 492
        Top = 315
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 38
        Width = 115
      end
      object cxLabel22: TcxLabel
        Left = 15
        Top = 344
        Caption = 'Face Width (cm)'
      end
      object cxsFaceWidth: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 341
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 41
        Width = 115
      end
      object cxLabel23: TcxLabel
        Left = 375
        Top = 344
        Caption = 'Face Height (cm)'
      end
      object cxsFaceHeight: TcxSpinEdit
        Tag = 11
        Left = 492
        Top = 341
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 42
        Width = 115
      end
      object cxLabel24: TcxLabel
        Left = 15
        Top = 370
        Caption = 'Side Gusset (cm)'
      end
      object cxsSideGusset: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 367
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 45
        Width = 115
      end
      object cxLabel25: TcxLabel
        Left = 375
        Top = 370
        Caption = 'Bottom Gusset (cm)'
      end
      object cxsBottomGusset: TcxSpinEdit
        Tag = 11
        Left = 492
        Top = 367
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 46
        Width = 115
      end
      object cxLabel26: TcxLabel
        Left = 15
        Top = 396
        Caption = 'Bag Colour'
      end
      object cxLabel27: TcxLabel
        Left = 140
        Top = 414
        Caption = '(Pantone No / Sample)'
      end
      object cxLabel28: TcxLabel
        Left = 375
        Top = 396
        Caption = 'Top Fold (cm)'
      end
      object cxsTopFold: TcxSpinEdit
        Tag = 11
        Left = 492
        Top = 393
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 50
        Width = 115
      end
      object cxLabel29: TcxLabel
        Left = 15
        Top = 438
        Caption = 'Print Type'
      end
      object cxLabel30: TcxLabel
        Left = 140
        Top = 456
        Caption = '(Random / Register)'
      end
      object cxLabel31: TcxLabel
        Left = 15
        Top = 479
        Caption = 'Image Type'
      end
      object cxLabel32: TcxLabel
        Left = 140
        Top = 497
        Caption = '(Line Art / Process)'
      end
      object cxLabel33: TcxLabel
        Left = 15
        Top = 519
        Caption = 'Side 1 Colour 1'
      end
      object cxLabel34: TcxLabel
        Left = 260
        Top = 519
        Caption = 'Side 2 Colour 1'
      end
      object cxtSide1Colour1: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 516
        TabOrder = 60
        Width = 115
      end
      object cxtSide2Colour1: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 516
        TabOrder = 61
        Width = 115
      end
      object cxLabel35: TcxLabel
        Left = 15
        Top = 545
        Caption = 'Side 1 Colour 2'
      end
      object cxtSide1Colour2: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 542
        TabOrder = 64
        Width = 115
      end
      object cxLabel36: TcxLabel
        Left = 260
        Top = 545
        Caption = 'Side 2 Colour 2'
      end
      object cxtSide2Colour2: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 542
        TabOrder = 65
        Width = 115
      end
      object cxLabel37: TcxLabel
        Left = 15
        Top = 571
        Caption = 'Side 1 Colour 3'
      end
      object cxtSide1Colour3: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 568
        TabOrder = 68
        Width = 115
      end
      object cxLabel38: TcxLabel
        Left = 260
        Top = 571
        Caption = 'Side 2 Colour 3'
      end
      object cxtSide2Colour3: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 568
        TabOrder = 69
        Width = 115
      end
      object cxLabel39: TcxLabel
        Left = 15
        Top = 597
        Caption = 'Side 1 Colour 4'
      end
      object cxtSide1Colour4: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 594
        TabOrder = 72
        Width = 115
      end
      object cxLabel40: TcxLabel
        Left = 260
        Top = 597
        Caption = 'Side 2 Colour 4'
      end
      object cxtSide2Colour4: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 594
        TabOrder = 73
        Width = 115
      end
      object cxLabel41: TcxLabel
        Left = 15
        Top = 623
        Caption = 'Side 1 Colour 5'
      end
      object cxtSide1Colour5: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 620
        TabOrder = 76
        Width = 115
      end
      object cxLabel42: TcxLabel
        Left = 260
        Top = 623
        Caption = 'Side 2 Colour 5'
      end
      object cxtSide2Colour5: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 620
        TabOrder = 77
        Width = 115
      end
      object cxLabel43: TcxLabel
        Left = 15
        Top = 649
        Caption = 'Side 1 Colour 6'
      end
      object cxtSide1Colour6: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 646
        TabOrder = 80
        Width = 115
      end
      object cxLabel44: TcxLabel
        Left = 260
        Top = 649
        Caption = 'Side 2 Colour 6'
      end
      object cxtSide2Colour6: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 646
        TabOrder = 81
        Width = 115
      end
      object cxLabel45: TcxLabel
        Left = 15
        Top = 675
        Caption = 'Side 1 Colour 7'
      end
      object cxtSide1Colour7: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 672
        TabOrder = 84
        Width = 115
      end
      object cxLabel46: TcxLabel
        Left = 260
        Top = 675
        Caption = 'Side 2 Colour 7'
      end
      object cxtSide2Colour7: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 672
        TabOrder = 85
        Width = 115
      end
      object cxLabel47: TcxLabel
        Left = 15
        Top = 701
        Caption = 'Side 1 Colour 8'
      end
      object cxtSide1Colour8: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 698
        TabOrder = 88
        Width = 115
      end
      object cxLabel48: TcxLabel
        Left = 260
        Top = 701
        Caption = 'Side 2 Colour 8'
      end
      object cxtSide2Colour8: TcxTextEdit
        Tag = 11
        Left = 339
        Top = 698
        TabOrder = 89
        Width = 115
      end
      object cxLabel49: TcxLabel
        Left = 15
        Top = 727
        Caption = 'Cut Out'
      end
      object cxtCutOut: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 724
        TabOrder = 92
        Width = 220
      end
      object cxLabel50: TcxLabel
        Left = 140
        Top = 745
        Caption = 
          '(Choose one : T-Shirt, Race Track, Circle, Half Moon, Kidney Pun' +
          'ch, Kidney Punch Attached)'
      end
      object cxsCoWidth: TcxSpinEdit
        Tag = 11
        Left = 178
        Top = 764
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 95
        Width = 115
      end
      object cxLabel51: TcxLabel
        Left = 140
        Top = 766
        Caption = 'Width'
      end
      object cxLabel52: TcxLabel
        Left = 299
        Top = 766
        Caption = 'Height'
      end
      object cxsCoHeight: TcxSpinEdit
        Tag = 11
        Left = 337
        Top = 764
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 96
        Width = 115
      end
      object cxLabel53: TcxLabel
        Left = 15
        Top = 792
        Caption = 'Air Hole'
      end
      object cxsAHSize: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 790
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 99
        Width = 115
      end
      object cxLabel54: TcxLabel
        Left = 103
        Top = 819
        Caption = '% Cut'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 134
      end
      object cxsAHPercentCut: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 816
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 104
        Width = 115
      end
      object cxLabel55: TcxLabel
        Left = 108
        Top = 845
        Caption = 'Row'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 134
      end
      object cxsAHRow: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 842
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 106
        Width = 115
      end
      object cxLabel56: TcxLabel
        Left = 90
        Top = 871
        Caption = 'Column'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 129
      end
      object cxsAHColumn: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 868
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 108
        Width = 115
      end
      object cxLabel57: TcxLabel
        Left = 279
        Top = 793
        Caption = 'Notes'
      end
      object cxmAHNotes: TcxMemo
        Tag = 11
        Left = 315
        Top = 790
        Lines.Strings = (
          '')
        TabOrder = 100
        Height = 64
        Width = 316
      end
      object cxLabel58: TcxLabel
        Left = 15
        Top = 900
        Caption = 'Handle / Tape'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel59: TcxLabel
        Left = 15
        Top = 923
        Caption = 'Thickness (u)'
      end
      object cxsHThickness: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 920
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 111
        Width = 115
      end
      object cxLabel60: TcxLabel
        Left = 15
        Top = 949
        Caption = 'Width (cm)'
      end
      object cxsHWidth: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 946
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 115
        Width = 115
      end
      object cxLabel61: TcxLabel
        Left = 15
        Top = 975
        Caption = 'Length Width (cm)'
      end
      object cxsHLengthWidth: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 972
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 119
        Width = 115
      end
      object cxLabel62: TcxLabel
        Left = 310
        Top = 949
        Caption = 'Colours'
      end
      object cxLabel63: TcxLabel
        Left = 310
        Top = 975
        Caption = 'Sides'
      end
      object cxsHColours: TcxSpinEdit
        Tag = 11
        Left = 359
        Top = 946
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 116
        Width = 115
      end
      object cxsHSides: TcxSpinEdit
        Tag = 11
        Left = 359
        Top = 972
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 120
        Width = 115
      end
      object cxLabel64: TcxLabel
        Left = 310
        Top = 923
        Caption = 'Print'
      end
      object cxLabel65: TcxLabel
        Left = 15
        Top = 1005
        Caption = 'Packaging'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxsPackQty1: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 1027
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 129
        Width = 70
      end
      object cxsPackQty2: TcxSpinEdit
        Tag = 11
        Left = 216
        Top = 1027
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 130
        Width = 70
      end
      object cxsPackQty3: TcxSpinEdit
        Tag = 11
        Left = 291
        Top = 1027
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 131
        Width = 70
      end
      object cxsPackQty4: TcxSpinEdit
        Tag = 11
        Left = 366
        Top = 1027
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 132
        Width = 70
      end
      object cxsPackQty5: TcxSpinEdit
        Tag = 11
        Left = 441
        Top = 1027
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 133
        Width = 70
      end
      object cxLabel66: TcxLabel
        Left = 95
        Top = 1030
        Caption = 'Quantity'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 138
      end
      object cxLabel67: TcxLabel
        Left = 115
        Top = 1056
        Caption = 'Unit'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 138
      end
      object cxCmbPackUnit1: TcxComboBox
        Tag = 11
        Left = 141
        Top = 1053
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 135
        Width = 70
      end
      object cxCmbPackUnit2: TcxComboBox
        Tag = 11
        Left = 216
        Top = 1053
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 136
        Width = 70
      end
      object cxCmbPackUnit3: TcxComboBox
        Tag = 11
        Left = 291
        Top = 1053
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 137
        Width = 70
      end
      object cxCmbPackUnit4: TcxComboBox
        Tag = 11
        Left = 366
        Top = 1053
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 138
        Width = 70
      end
      object cxCmbPackunit5: TcxComboBox
        Tag = 11
        Left = 441
        Top = 1053
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 139
        Width = 70
      end
      object cxLabel68: TcxLabel
        Left = 15
        Top = 1082
        Caption = 'Folding'
      end
      object cxCmbFolding1: TcxComboBox
        Tag = 11
        Left = 140
        Top = 1080
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 141
        Width = 121
      end
      object cxCmbFolding2: TcxComboBox
        Tag = 11
        Left = 140
        Top = 1106
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 143
        Width = 121
      end
      object cxLabel69: TcxLabel
        Left = 15
        Top = 1134
        Caption = 'Packing Accesories'
      end
      object cxCmbPackAcc: TcxComboBox
        Tag = 11
        Left = 140
        Top = 1132
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 147
        Width = 121
      end
      object cxsPackAccCore: TcxSpinEdit
        Tag = 11
        Left = 308
        Top = 1132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 148
        Width = 80
      end
      object cxLabel70: TcxLabel
        Left = 265
        Top = 1134
        Caption = 'CORE :'
      end
      object cxsPackAccInner: TcxSpinEdit
        Tag = 11
        Left = 393
        Top = 1132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 149
        Width = 80
      end
      object cxLabel71: TcxLabel
        Left = 392
        Top = 1114
        Caption = 'Inner o (cm)'
      end
      object cxsPackAccThickness: TcxSpinEdit
        Tag = 11
        Left = 478
        Top = 1132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 150
        Width = 80
      end
      object cxLabel72: TcxLabel
        Left = 477
        Top = 1114
        Caption = 'Thickness (mm)'
      end
      object cxLabel73: TcxLabel
        Left = 562
        Top = 1114
        Caption = 'Length (cm)'
      end
      object cxsPackAccLength: TcxSpinEdit
        Tag = 11
        Left = 563
        Top = 1132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 151
        Width = 80
      end
      object cxLabel74: TcxLabel
        Left = 265
        Top = 1157
        Caption = 'Other (pls describe) '
      end
      object cxmPackAccNotes: TcxMemo
        Tag = 11
        Left = 365
        Top = 1159
        TabOrder = 155
        Height = 51
        Width = 278
      end
      object cxLabel75: TcxLabel
        Left = 137
        Top = 1224
        Caption = 'Inner Outer :'
      end
      object cxLabel76: TcxLabel
        Left = 222
        Top = 1224
        Caption = 'Label/paper band'
      end
      object cxLabel77: TcxLabel
        Left = 320
        Top = 1224
        Caption = 'Outer'
      end
      object cxLabel78: TcxLabel
        Left = 405
        Top = 1224
        Caption = 'Dispenser'
      end
      object cxsGsmIO: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1294
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 170
        Width = 80
      end
      object cxsGsmLabelPB: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1294
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 171
        Width = 91
      end
      object cxsGSMOuter: TcxSpinEdit
        Tag = 11
        Left = 321
        Top = 1294
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 172
        Width = 80
      end
      object cxsGSMDispenser: TcxSpinEdit
        Tag = 11
        Left = 406
        Top = 1294
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 173
        Width = 80
      end
      object cxsWidthIO: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1320
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 175
        Width = 80
      end
      object cxsWidthLabelPB: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1320
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 176
        Width = 91
      end
      object cxsWidthOuter: TcxSpinEdit
        Tag = 11
        Left = 321
        Top = 1320
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 177
        Width = 80
      end
      object cxsWidthDispenser: TcxSpinEdit
        Tag = 11
        Left = 406
        Top = 1320
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 178
        Width = 80
      end
      object cxsLengthIO: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1346
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 181
        Width = 80
      end
      object cxsLengthLabelPB: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1346
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 182
        Width = 91
      end
      object cxsLengthOuter: TcxSpinEdit
        Tag = 11
        Left = 321
        Top = 1346
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 183
        Width = 80
      end
      object cxsLengthDispenser: TcxSpinEdit
        Tag = 11
        Left = 406
        Top = 1346
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 184
        Width = 80
      end
      object cxsPDColoursIO: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1385
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 186
        Width = 80
      end
      object cxsPDColoursLabelPB: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1385
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 187
        Width = 91
      end
      object cxsPDColoursOuter: TcxSpinEdit
        Tag = 11
        Left = 321
        Top = 1385
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 188
        Width = 80
      end
      object cxsPDColoursDispenser: TcxSpinEdit
        Tag = 11
        Left = 406
        Top = 1385
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 189
        Width = 80
      end
      object cxsPDSidesIO: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1411
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 191
        Width = 80
      end
      object cxsPDSidesLabelPB: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1411
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 192
        Width = 91
      end
      object cxsPDSidesOuter: TcxSpinEdit
        Tag = 11
        Left = 321
        Top = 1411
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 193
        Width = 80
      end
      object cxsPDSidesDispenser: TcxSpinEdit
        Tag = 11
        Left = 406
        Top = 1411
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 194
        Width = 80
      end
      object cxLabel79: TcxLabel
        Left = 86
        Top = 1244
        Caption = 'Material :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel80: TcxLabel
        Left = 85
        Top = 1271
        Caption = 'Colours : '
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel81: TcxLabel
        Left = 84
        Top = 1296
        Caption = 'u / gsm : '
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel82: TcxLabel
        Left = 69
        Top = 1324
        Caption = 'Width (cm) : '
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel83: TcxLabel
        Left = 67
        Top = 1346
        Caption = 'Length (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel84: TcxLabel
        Left = 72
        Top = 1368
        Caption = 'Print Detail :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel85: TcxLabel
        Left = 88
        Top = 1390
        Caption = 'Colours :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel86: TcxLabel
        Left = 97
        Top = 1413
        Caption = 'Sides :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel87: TcxLabel
        Left = 15
        Top = 1441
        Caption = 'Final Packaging'
      end
      object cxLabel88: TcxLabel
        Left = 137
        Top = 1441
        Caption = 'Inner Size :'
      end
      object cxLabel89: TcxLabel
        Left = 222
        Top = 1441
        Caption = 'Outer Size'
      end
      object cxsFPMaterialInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1459
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 199
        Width = 80
      end
      object cxsFPMaterialOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1459
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 200
        Width = 86
      end
      object cxLabel90: TcxLabel
        Left = 86
        Top = 1461
        Caption = 'Material :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel91: TcxLabel
        Left = 72
        Top = 1487
        Caption = 'Width (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxsFPWidthInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1485
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 204
        Width = 80
      end
      object cxsFPWidthOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1485
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 205
        Width = 86
      end
      object cxLabel92: TcxLabel
        Left = 67
        Top = 1513
        Caption = 'Length (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxsFPLengthInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1511
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 208
        Width = 80
      end
      object cxsFPLengthOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1511
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 209
        Width = 86
      end
      object cxLabel93: TcxLabel
        Left = 69
        Top = 1539
        Caption = 'Height (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxsFPHeightInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1537
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 213
        Width = 80
      end
      object cxsFPHeightOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 1537
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 214
        Width = 86
      end
      object cxLabel94: TcxLabel
        Left = 356
        Top = 1461
        Caption = 'gsm :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxsFPGsm: TcxSpinEdit
        Tag = 11
        Left = 397
        Top = 1459
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 201
        Width = 80
      end
      object cxLabel95: TcxLabel
        Left = 342
        Top = 1487
        Caption = 'Printed :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxLabel96: TcxLabel
        Left = 340
        Top = 1513
        Caption = 'Colours :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxsFPLengthColours: TcxSpinEdit
        Tag = 11
        Left = 398
        Top = 1511
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 210
        Width = 80
      end
      object cxLabel97: TcxLabel
        Left = 349
        Top = 1539
        Caption = 'Sides :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxsFPHeightSides: TcxSpinEdit
        Tag = 11
        Left = 398
        Top = 1537
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 215
        Width = 80
      end
      object cxLabel98: TcxLabel
        Left = 15
        Top = 1566
        Caption = 'Pallet'
      end
      object cxLabel99: TcxLabel
        Left = 78
        Top = 1584
        Caption = 'Width (cm)'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxsPalletWidth: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1582
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 219
        Width = 80
      end
      object cxLabel100: TcxLabel
        Left = 105
        Top = 1610
        Caption = 'Entry'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxsPalletEntry: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 1608
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 225
        Width = 80
      end
      object cxsPalletLength: TcxSpinEdit
        Tag = 11
        Left = 297
        Top = 1582
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 220
        Width = 80
      end
      object cxLabel101: TcxLabel
        Left = 226
        Top = 1584
        Caption = 'Length (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 292
      end
      object cxLabel102: TcxLabel
        Left = 222
        Top = 1610
        Caption = 'Requirement :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 292
      end
      object cxsPalletRequirement: TcxSpinEdit
        Tag = 11
        Left = 297
        Top = 1608
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 226
        Width = 80
      end
      object cxLabel103: TcxLabel
        Left = 391
        Top = 1584
        Caption = 'Height (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 455
      end
      object cxsPalletHeight: TcxSpinEdit
        Tag = 11
        Left = 465
        Top = 1582
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 221
        Width = 80
      end
      object cxLabel104: TcxLabel
        Left = 15
        Top = 1678
        Caption = 'Compiling Packaging'
      end
      object cxmCompilingPackaging: TcxMemo
        Tag = 11
        Left = 15
        Top = 1697
        TabOrder = 232
        Height = 57
        Width = 566
      end
      object cxdExpectShipDate: TcxDateEdit
        Tag = 11
        Left = 141
        Top = 137
        TabOrder = 12
        Width = 121
      end
      object cxtBagColour: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 393
        TabOrder = 49
        Width = 135
      end
      object cxtPrintType: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 435
        TabOrder = 54
        Width = 135
      end
      object cxtImageType: TcxTextEdit
        Tag = 11
        Left = 141
        Top = 476
        TabOrder = 57
        Width = 135
      end
      object cxLabel105: TcxLabel
        Left = 85
        Top = 792
        Caption = 'Size (mm)'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 134
      end
      object cxtHPrint: TcxTextEdit
        Tag = 11
        Left = 359
        Top = 920
        TabOrder = 112
        Width = 220
      end
      object cxLabel106: TcxLabel
        Left = 140
        Top = 1010
        Caption = 'Unit 1'
      end
      object cxLabel107: TcxLabel
        Left = 215
        Top = 1010
        Caption = 'Unit 2'
      end
      object cxLabel108: TcxLabel
        Left = 290
        Top = 1010
        Caption = 'Unit 3'
      end
      object cxLabel109: TcxLabel
        Left = 365
        Top = 1010
        Caption = 'Unit 4'
      end
      object cxLabel110: TcxLabel
        Left = 440
        Top = 1010
        Caption = 'Unit 5'
      end
      object cxLabel111: TcxLabel
        Left = 15
        Top = 1760
        Caption = 'Very Important :'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel112: TcxLabel
        Left = 143
        Top = 1760
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
      object cxLabel113: TcxLabel
        Left = 190
        Top = 1775
        Caption = 'OR ATTACH ANY SPECIFICATION FROM CUSTOMER WHEN AVAILABLE'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel114: TcxLabel
        Left = 15
        Top = 1804
        Caption = 'Testing points :'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel115: TcxLabel
        Left = 15
        Top = 1819
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
        Left = 15
        Top = 1834
        Caption = '** Tensile, Elongation, Tear, Dart Impact, Probe'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxtMechanicalProperties: TcxTextEdit
        Tag = 11
        Left = 253
        Top = 1818
        TabOrder = 238
        Width = 121
      end
      object cxLabel117: TcxLabel
        Left = 400
        Top = 1819
        Caption = 'Visual Propeties ** :'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxtVisualProp: TcxTextEdit
        Tag = 11
        Left = 529
        Top = 1818
        TabOrder = 239
        Width = 121
      end
      object cxLabel118: TcxLabel
        Left = 400
        Top = 1834
        Caption = '** Gloss, Opacity'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel119: TcxLabel
        Left = 15
        Top = 1859
        Caption = 'Certification Requirement : '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxtCertification: TcxTextEdit
        Tag = 11
        Left = 175
        Top = 1857
        TabOrder = 244
        Width = 261
      end
      object cxLabel120: TcxLabel
        Left = 15
        Top = 1889
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
        Tag = 11
        Left = 70
        Top = 1885
        TabOrder = 246
        Height = 48
        Width = 566
      end
      object Sample: TcxLabel
        Left = 15
        Top = 1940
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
        Tag = 11
        Left = 70
        Top = 1939
        TabOrder = 248
        Width = 426
      end
      object cxlBaseMaterial: TcxLookupComboBox
        Left = 141
        Top = 247
        Properties.KeyFieldNames = 'base_material'
        Properties.ListColumns = <
          item
            FieldName = 'base_material'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsBM
        TabOrder = 23
        Width = 135
      end
      object cxlBaseMaterialHandle: TcxLookupComboBox
        Left = 362
        Top = 247
        Properties.KeyFieldNames = 'base_material'
        Properties.ListColumns = <
          item
            Caption = 'base_material'
            FieldName = 'base_material'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsBM
        TabOrder = 24
        Width = 135
      end
      object cxlGroup: TcxLookupComboBox
        Left = 141
        Top = 205
        Properties.KeyFieldNames = 'groupis'
        Properties.ListColumns = <
          item
            Caption = 'Group IS'
            FieldName = 'groupis'
          end>
        Properties.ListSource = dsGroup
        TabOrder = 17
        Width = 135
      end
      object cxLabel121: TcxLabel
        Left = 305
        Top = 10
        Caption = 'Unit'
      end
      object cxlUnitKTG: TcxLookupComboBox
        Left = 332
        Top = 7
        Properties.KeyFieldNames = 'unit'
        Properties.ListColumns = <
          item
            Caption = 'Unit'
            FieldName = 'unit'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUnitKTG
        TabOrder = 1
        Width = 130
      end
      object btnLihatImage: TButton
        Left = 14
        Top = 2006
        Width = 163
        Height = 25
        Caption = 'Lihat Image'
        TabOrder = 252
        OnClick = btnLihatImageClick
      end
      object cxtMaterialIO: TcxTextEdit
        Left = 140
        Top = 1242
        TabOrder = 160
        Width = 80
      end
      object cxtMaterialLblPB: TcxTextEdit
        Left = 225
        Top = 1242
        TabOrder = 161
        Width = 91
      end
      object cxtMaterialOuter: TcxTextEdit
        Left = 320
        Top = 1242
        TabOrder = 162
        Width = 80
      end
      object cxtMaterialDispenser: TcxTextEdit
        Left = 406
        Top = 1242
        TabOrder = 163
        Width = 80
      end
      object cxtColoursIO: TcxTextEdit
        Left = 140
        Top = 1268
        TabOrder = 165
        Width = 80
      end
      object cxtColoursLblPB: TcxTextEdit
        Left = 225
        Top = 1268
        TabOrder = 166
        Width = 91
      end
      object cxtColoursOuter: TcxTextEdit
        Left = 320
        Top = 1268
        TabOrder = 167
        Width = 80
      end
      object cxtColourDispenser: TcxTextEdit
        Left = 406
        Top = 1268
        TabOrder = 168
        Width = 80
      end
      object cxLabel122: TcxLabel
        Left = 15
        Top = 1646
        Caption = 'Sales'
      end
      object cxlSales: TcxLookupComboBox
        Left = 56
        Top = 1643
        Properties.KeyFieldNames = 'kode_sales'
        Properties.ListColumns = <
          item
            Caption = 'Nama Sales'
            FieldName = 'nama'
          end
          item
            Caption = 'Kode'
            FieldName = 'kode_sales'
          end>
        Properties.ListSource = dsSales
        TabOrder = 229
        Width = 331
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 510
    Width = 813
    Align = alBottom
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer'
      'WHERE f_aktif = 1 '
      'ORDER BY nama')
    Params = <>
    Left = 330
    Top = 25
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 360
    Top = 25
  end
  object zqrCari: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_is, a.tgl_issue, a.desc_of_bags, b.nama  nama_custom' +
        'er'
      'FROM tbl_is2 a '
      'LEFT JOIN tbl_customer b ON a.kode_customer = b.kode'
      'ORDER BY tgl_issue')
    Params = <>
    Left = 390
    Top = 25
  end
  object dsCari: TDataSource
    DataSet = zqrCari
    Left = 420
    Top = 25
  end
  object zqrSales: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode_sales, nama FROM tbl_sales'
      'ORDER BY nama')
    Params = <>
    Left = 270
    Top = 25
  end
  object dsSales: TDataSource
    DataSet = zqrSales
    Left = 300
    Top = 25
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 240
    Top = 25
  end
  object zqrBM: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT base_material '
      'FROM tbl_base_material '
      'ORDER BY base_material')
    Params = <>
    Left = 665
    Top = 70
  end
  object dsBM: TDataSource
    DataSet = zqrBM
    Left = 695
    Top = 70
  end
  object zqrGroup: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_group_is'
      'ORDER BY groupis')
    Params = <>
    Left = 725
    Top = 70
  end
  object dsGroup: TDataSource
    DataSet = zqrGroup
    Left = 755
    Top = 70
  end
  object zqrUnitKTG: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT unit FROM tbl_unit_ktg')
    Params = <>
    Left = 665
    Top = 100
  end
  object dsUnitKTG: TDataSource
    DataSet = zqrUnitKTG
    Left = 695
    Top = 100
  end
end
