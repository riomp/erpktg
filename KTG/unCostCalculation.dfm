inherited frmCostCalculation: TfrmCostCalculation
  Left = 613
  Top = 140
  Width = 854
  Height = 752
  Caption = 'Cost Calculation'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 838
    inherited lblJudul: TLabel
      Width = 132
      Caption = 'Cost Calculation'
    end
  end
  inherited pnlTengah: TPanel
    Width = 838
    Height = 570
    object cxPageControl1: TcxPageControl
      Left = 1
      Top = 1
      Width = 836
      Height = 568
      ActivePage = cxTabSheet1
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 568
      ClientRectRight = 836
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Main'
        ImageIndex = 0
        object Label1: TLabel
          Left = 464
          Top = 72
          Width = 3
          Height = 13
          Visible = False
        end
        object Label3: TLabel
          Left = 16
          Top = 274
          Width = 97
          Height = 13
          Caption = 'Deskripsi Produk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label4: TLabel
          Left = 211
          Top = 274
          Width = 10
          Height = 13
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label5: TLabel
          Left = 286
          Top = 274
          Width = 116
          Height = 13
          Caption = 'HPP/Roll (Exc.PPN)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label6: TLabel
          Left = 411
          Top = 274
          Width = 113
          Height = 13
          Caption = 'HPP/Roll (Inc.PPN)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label7: TLabel
          Left = 541
          Top = 274
          Width = 109
          Height = 13
          Caption = 'HPP/Kg (Exc.PPN)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label9: TLabel
          Left = 671
          Top = 274
          Width = 102
          Height = 13
          Caption = 'HPP/Kg(Inc.PPN)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label13: TLabel
          Left = 16
          Top = 305
          Width = 83
          Height = 13
          Caption = 'RAW MATERIAL'
        end
        object Label17: TLabel
          Left = 16
          Top = 330
          Width = 109
          Height = 13
          Caption = 'SUPPORT MATERIAL'
        end
        object Label18: TLabel
          Left = 16
          Top = 355
          Width = 30
          Height = 13
          Caption = 'UPAH'
        end
        object Label19: TLabel
          Left = 16
          Top = 380
          Width = 41
          Height = 13
          Caption = 'LISTRIK'
        end
        object Label20: TLabel
          Left = 16
          Top = 405
          Width = 137
          Height = 13
          Caption = 'HARGA POKOK PRODUKSI'
        end
        object Label21: TLabel
          Left = 16
          Top = 430
          Width = 22
          Height = 13
          Caption = 'BOP'
        end
        object Label22: TLabel
          Left = 16
          Top = 455
          Width = 67
          Height = 13
          Caption = 'TRANSPORT'
        end
        object Label23: TLabel
          Left = 16
          Top = 480
          Width = 43
          Height = 13
          Caption = 'MARGIN'
        end
        object Label24: TLabel
          Left = 16
          Top = 509
          Width = 105
          Height = 13
          Caption = 'Harga Jual Bottom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object cxGroupBox1: TcxGroupBox
          Left = 10
          Top = 15
          Caption = 'DetaiL '
          TabOrder = 0
          Height = 241
          Width = 806
          object Label14: TLabel
            Left = 15
            Top = 144
            Width = 78
            Height = 13
            Caption = 'Lebar Buka (cm)'
          end
          object Label15: TLabel
            Left = 15
            Top = 168
            Width = 72
            Height = 13
            Caption = 'Lebar Jadi (cm)'
          end
          object Label16: TLabel
            Left = 15
            Top = 192
            Width = 89
            Height = 13
            Caption = 'Panjang Total (cm)'
          end
          object Label10: TLabel
            Left = 256
            Top = 113
            Width = 74
            Height = 13
            Caption = 'Berat Kotor (kg)'
          end
          object Label12: TLabel
            Left = 256
            Top = 137
            Width = 78
            Height = 13
            Caption = 'Berat Bersih (kg)'
          end
          object Label11: TLabel
            Left = 256
            Top = 161
            Width = 84
            Height = 13
            Caption = 'Berat / Meter (kg)'
          end
          object Label8: TLabel
            Left = 255
            Top = 191
            Width = 52
            Height = 13
            Caption = 'Berat Jenis'
          end
          object Label2: TLabel
            Left = 16
            Top = 119
            Width = 42
            Height = 13
            Caption = 'Tebal ('#181')'
          end
          object cxLabel1: TcxLabel
            Left = 15
            Top = 18
            Caption = 'No. Calculation'
          end
          object cxtNoTrans: TcxTextEdit
            Tag = 1
            Left = 102
            Top = 16
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 121
          end
          object cxLabel6: TcxLabel
            Left = 231
            Top = 19
            Caption = 'Tgl. Calculation'
          end
          object cxdTglTrs: TcxDateEdit
            Left = 310
            Top = 17
            Properties.ReadOnly = False
            TabOrder = 3
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 15
            Top = 47
            Caption = 'Nama Barang'
          end
          object cxLUBrg: TcxLookupComboBox
            Left = 98
            Top = 44
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'deskripsi'
              end
              item
                FieldName = 'kode'
              end>
            Properties.ListOptions.ColumnSorting = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsBrg
            Properties.OnChange = cxLUBrgPropertiesChange
            Properties.OnEditValueChanged = cxLUBrgPropertiesEditValueChanged
            TabOrder = 5
            Width = 471
          end
          object cxLabel2: TcxLabel
            Left = 17
            Top = 73
            Caption = '% Reject'
          end
          object cxsReject: TcxSpinEdit
            Left = 101
            Top = 70
            Properties.ValueType = vtFloat
            Properties.OnEditValueChanged = cxsRejectPropertiesEditValueChanged
            TabOrder = 7
            Width = 78
          end
          object Button1: TButton
            Left = 599
            Top = 17
            Width = 182
            Height = 59
            Caption = 'Calculation'
            TabOrder = 8
            OnClick = Button1Click
          end
          object cxsTebal: TcxSpinEdit
            Left = 109
            Top = 114
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 9
            Width = 129
          end
          object cxsLebarBuka: TcxSpinEdit
            Left = 111
            Top = 144
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 10
            Width = 129
          end
          object cxsLebarJadi: TcxSpinEdit
            Left = 111
            Top = 168
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 11
            Width = 129
          end
          object cxsPanjang: TcxSpinEdit
            Left = 111
            Top = 192
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 12
            Width = 129
          end
          object cxsBeratKotor: TcxSpinEdit
            Left = 344
            Top = 108
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 13
            Width = 129
          end
          object cxsBeratBersih: TcxSpinEdit
            Left = 344
            Top = 132
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 14
            Width = 129
          end
          object cxsBeratMeter: TcxSpinEdit
            Left = 344
            Top = 161
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 15
            Width = 129
          end
          object cxsBeratJenis: TcxSpinEdit
            Left = 345
            Top = 186
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 16
            Width = 131
          end
        end
        object cxsRaw1: TcxSpinEdit
          Left = 210
          Top = 299
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 61
        end
        object cxsRaw2: TcxSpinEdit
          Left = 284
          Top = 299
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 2
          Width = 122
        end
        object cxsRaw3: TcxSpinEdit
          Left = 409
          Top = 299
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 3
          Width = 129
        end
        object cxsRaw4: TcxSpinEdit
          Left = 539
          Top = 299
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 4
          Width = 129
        end
        object cxsRaw5: TcxSpinEdit
          Left = 669
          Top = 299
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 5
          Width = 129
        end
        object cxsSupport1: TcxSpinEdit
          Left = 210
          Top = 324
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 6
          Width = 61
        end
        object cxsSupport2: TcxSpinEdit
          Left = 284
          Top = 324
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 7
          Width = 122
        end
        object cxsSupport3: TcxSpinEdit
          Left = 409
          Top = 324
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 8
          Width = 129
        end
        object cxsSupport4: TcxSpinEdit
          Left = 539
          Top = 324
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 9
          Width = 129
        end
        object cxsSupport5: TcxSpinEdit
          Left = 669
          Top = 324
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 10
          Width = 129
        end
        object cxsUpah1: TcxSpinEdit
          Left = 210
          Top = 349
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 11
          Width = 61
        end
        object cxsUpah2: TcxSpinEdit
          Left = 284
          Top = 349
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 12
          Width = 122
        end
        object cxsUpah3: TcxSpinEdit
          Left = 409
          Top = 349
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 13
          Width = 129
        end
        object cxsUpah4: TcxSpinEdit
          Left = 539
          Top = 349
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 14
          Width = 129
        end
        object cxsUpah5: TcxSpinEdit
          Left = 669
          Top = 349
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 15
          Width = 129
        end
        object cxsListrik1: TcxSpinEdit
          Left = 210
          Top = 374
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 16
          Width = 61
        end
        object cxsListrik2: TcxSpinEdit
          Left = 284
          Top = 374
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 17
          Width = 122
        end
        object cxsListrik3: TcxSpinEdit
          Left = 409
          Top = 374
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 18
          Width = 129
        end
        object cxsListrik4: TcxSpinEdit
          Left = 539
          Top = 374
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 19
          Width = 129
        end
        object cxsListrik5: TcxSpinEdit
          Left = 669
          Top = 374
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 20
          Width = 129
        end
        object cxsHPP1: TcxSpinEdit
          Left = 210
          Top = 399
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 21
          Width = 61
        end
        object cxsHPP2: TcxSpinEdit
          Left = 284
          Top = 399
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 22
          Width = 122
        end
        object cxsHPP3: TcxSpinEdit
          Left = 409
          Top = 399
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 23
          Width = 129
        end
        object cxsHPP4: TcxSpinEdit
          Left = 539
          Top = 399
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 24
          Width = 129
        end
        object cxsHPP5: TcxSpinEdit
          Left = 669
          Top = 399
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 25
          Width = 129
        end
        object cxsBop1: TcxSpinEdit
          Left = 210
          Top = 424
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = cxsBop1PropertiesEditValueChanged
          TabOrder = 26
          Width = 61
        end
        object cxsBop2: TcxSpinEdit
          Left = 284
          Top = 424
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 27
          Width = 122
        end
        object cxsBop3: TcxSpinEdit
          Left = 409
          Top = 424
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 28
          Width = 129
        end
        object cxsBop4: TcxSpinEdit
          Left = 539
          Top = 424
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 29
          Width = 129
        end
        object cxsBop5: TcxSpinEdit
          Left = 669
          Top = 424
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 30
          Width = 129
        end
        object cxsTrans1: TcxSpinEdit
          Left = 210
          Top = 449
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = cxsTrans1PropertiesEditValueChanged
          TabOrder = 31
          Width = 61
        end
        object cxsTrans2: TcxSpinEdit
          Left = 284
          Top = 449
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 32
          Width = 122
        end
        object cxsTrans3: TcxSpinEdit
          Left = 409
          Top = 449
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 33
          Width = 129
        end
        object cxsTrans4: TcxSpinEdit
          Left = 539
          Top = 449
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 34
          Width = 129
        end
        object cxsTrans5: TcxSpinEdit
          Left = 669
          Top = 449
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 35
          Width = 129
        end
        object cxsMargin1: TcxSpinEdit
          Left = 210
          Top = 474
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = cxsMargin1PropertiesEditValueChanged
          TabOrder = 36
          Width = 61
        end
        object cxsMargin2: TcxSpinEdit
          Left = 284
          Top = 474
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 37
          Width = 122
        end
        object cxsMargin3: TcxSpinEdit
          Left = 409
          Top = 474
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 38
          Width = 129
        end
        object cxsMargin4: TcxSpinEdit
          Left = 539
          Top = 474
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 39
          Width = 129
        end
        object cxsMargin5: TcxSpinEdit
          Left = 669
          Top = 474
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 40
          Width = 129
        end
        object cxsHarga1: TcxSpinEdit
          Left = 284
          Top = 504
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 41
          Width = 122
        end
        object cxsHarga2: TcxSpinEdit
          Left = 409
          Top = 504
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 42
          Width = 129
        end
        object cxsHarga3: TcxSpinEdit
          Left = 539
          Top = 504
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 43
          Width = 129
        end
        object cxsHarga4: TcxSpinEdit
          Left = 669
          Top = 504
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 44
          Width = 129
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Material Cost'
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 8
          Top = 30
          Width = 905
          Height = 203
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxTblBOM: TcxGridTableView
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
                Format = '#,##0.00'
                Kind = skSum
                DisplayText = 'Total'
              end
              item
                Format = '#,##0.00'
                Kind = skSum
                Column = cxColTotal1
                DisplayText = 'Total'
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblBOMDataControllerRecordChanged
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object cxColBomKode: TcxGridColumn
              Caption = 'Kode'
              Options.Editing = False
              Width = 101
            end
            object cxColDesc2: TcxGridColumn
              Caption = 'Deskripsi'
              Width = 239
            end
            object cxColPersen: TcxGridColumn
              Caption = 'Persen'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColPrice: TcxGridColumn
              Caption = 'Harga Actual'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Visible = False
              Width = 82
            end
            object cxColpasar: TcxGridColumn
              Caption = 'Harga Pasaran'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 87
            end
            object cxColTotal1: TcxGridColumn
              Caption = 'Total Pasaran'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 85
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxTblBOM
          end
        end
        object cxLabel17: TcxLabel
          Left = 6
          Top = 9
          Caption = 'Room Material'
        end
        object cxLabel18: TcxLabel
          Left = 6
          Top = 241
          Caption = 'Bahan Pembantu'
        end
        object cxGrid3: TcxGrid
          Left = 8
          Top = 262
          Width = 905
          Height = 203
          TabOrder = 3
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxTblBom1: TcxGridTableView
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
                Column = cxGridColumn11
                DisplayText = 'Total'
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblBom1DataControllerRecordChanged
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object cxGridColumn1: TcxGridColumn
              Caption = 'Kode'
              Options.Editing = False
              Width = 101
            end
            object cxGridColumn3: TcxGridColumn
              Caption = 'Deskripsi'
              Width = 239
            end
            object cxGridColumn4: TcxGridColumn
              Caption = 'Qty.'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Width = 76
            end
            object cxGridColumn5: TcxGridColumn
              Caption = 'Satuan'
            end
            object cxGridColumn8: TcxGridColumn
              Caption = 'Harga Actual'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Visible = False
              Width = 82
            end
            object cxGridColumn9: TcxGridColumn
              Caption = 'Harga Pasaran'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 87
            end
            object cxGridColumn11: TcxGridColumn
              Caption = 'Total Pasaran'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Width = 85
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxTblBom1
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Routing'
        ImageIndex = 2
        object cxGroupBox5: TcxGroupBox
          Left = 12
          Top = 7
          Caption = 'Routing'
          TabOrder = 0
          Height = 458
          Width = 909
          object cxGrid1: TcxGrid
            Left = 8
            Top = 40
            Width = 881
            Height = 185
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxTblRouting: TcxGridTableView
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
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxColTotalBiaya
                  DisplayText = 'Total'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxColBiayaUpah
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
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
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 51
              end
              object cxColRouting: TcxGridColumn
                Caption = 'Jenis Routing'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'MIXING'
                  'PRINTING'
                  'EXTRUTION'
                  'LAMINATION'
                  'CONVERTING'
                  'RECYCLE'
                  'CUTTING'
                  'BAG MAKING'
                  'SEAMING'
                  'CUTTING'
                  'PACKING')
                HeaderAlignmentHorz = taCenter
                Width = 164
              end
              object cxColMesin: TcxGridColumn
                Caption = 'Mesin'
              end
              object cxColUpah: TcxGridColumn
                Caption = 'UMK (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                GroupSummaryAlignment = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxColWaktu: TcxGridColumn
                Caption = 'Waktu(Jam)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.000'
                Properties.ValueType = vtFloat
                Visible = False
                Width = 88
              end
              object cxColOperator: TcxGridColumn
                Caption = 'Operator Run'
                GroupSummaryAlignment = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 79
              end
              object cxColOperatorSet: TcxGridColumn
                Caption = 'Operator Setup'
                Visible = False
                Width = 84
              end
              object cxColDayaMotor: TcxGridColumn
                Caption = 'Daya Motor (KWH)'
                DataBinding.ValueType = 'Float'
                Visible = False
                Width = 100
              end
              object cxColDayaHeater: TcxGridColumn
                Caption = 'Daya Heater (KWH)'
                DataBinding.ValueType = 'Float'
                Visible = False
                Width = 102
              end
              object cxColTotalOperator: TcxGridColumn
                Caption = 'Total Operator'
                DataBinding.ValueType = 'Float'
                Visible = False
                Width = 82
              end
              object cxColListrik: TcxGridColumn
                Caption = 'Listrik (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Visible = False
              end
              object cxColBiayaListrik: TcxGridColumn
                Caption = 'Biaya Listrik (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                Visible = False
                Width = 87
              end
              object cxColOutput: TcxGridColumn
                Caption = 'Output/Jam'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.ValueType = vtFloat
                GroupSummaryAlignment = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 75
              end
              object cxColBiayaUpah: TcxGridColumn
                Caption = 'Biaya Upah (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                GroupSummaryAlignment = taRightJustify
                HeaderAlignmentHorz = taCenter
                Width = 97
              end
              object cxColTotalBiaya: TcxGridColumn
                Caption = 'Total Biaya (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                Visible = False
                Width = 87
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxTblRouting
            end
          end
          object cxLabel19: TcxLabel
            Left = 6
            Top = 17
            Caption = 'Detail Upah'
          end
          object cxLabel20: TcxLabel
            Left = 14
            Top = 241
            Caption = 'Detail Listrik'
          end
          object cxGrid4: TcxGrid
            Left = 8
            Top = 264
            Width = 881
            Height = 185
            TabOrder = 3
            object cxGridDBTableView3: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
            end
            object cxTblRouting1: TcxGridTableView
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
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridColumn25
                  DisplayText = 'Total'
                end
                item
                  Format = '#,##0.00'
                  Kind = skSum
                  Column = cxGridColumn23
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Appending = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupFooterMultiSummaries = True
              object cxGridColumn12: TcxGridColumn
                Caption = 'No.'
                DataBinding.ValueType = 'Integer'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.MaxValue = 100.000000000000000000
                Properties.MinValue = 1.000000000000000000
                Properties.UseCtrlIncrement = True
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 51
              end
              object cxGridColumn13: TcxGridColumn
                Caption = 'Jenis Routing'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.Items.Strings = (
                  'MIXING'
                  'PRINTING'
                  'EXTRUTION'
                  'LAMINATION'
                  'CONVERTING'
                  'RECYCLE'
                  'CUTTING'
                  'BAG MAKING'
                  'SEAMING'
                  'CUTTING'
                  'PACKING')
                HeaderAlignmentHorz = taCenter
                Width = 177
              end
              object cxGridColumn14: TcxGridColumn
                Caption = 'Mesin'
              end
              object cxGridColumn15: TcxGridColumn
                Caption = 'Operator Run'
                Visible = False
                Width = 79
              end
              object cxGridColumn16: TcxGridColumn
                Caption = 'Operator Setup'
                Visible = False
                Width = 84
              end
              object cxGridColumn22: TcxGridColumn
                Caption = 'Listrik (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Width = 104
              end
              object cxGridColumn21: TcxGridColumn
                Caption = 'Waktu(Jam)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.000'
                Properties.ValueType = vtFloat
                Visible = False
                Width = 101
              end
              object cxGridColumn17: TcxGridColumn
                Caption = 'Daya Motor (KWH)'
                DataBinding.ValueType = 'Float'
                Width = 97
              end
              object cxGridColumn18: TcxGridColumn
                Caption = 'Daya Heater (KWH)'
                DataBinding.ValueType = 'Float'
                Visible = False
                Width = 105
              end
              object cxGridColumn19: TcxGridColumn
                Caption = 'Total Operator'
                DataBinding.ValueType = 'Float'
                Visible = False
                Width = 82
              end
              object cxGridColumn20: TcxGridColumn
                Caption = 'UMK (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                Visible = False
              end
              object cxGridColumn23: TcxGridColumn
                Caption = 'Biaya Listrik (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                Width = 125
              end
              object cxGridColumn24: TcxGridColumn
                Caption = 'Biaya Upah (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                Visible = False
                Width = 97
              end
              object cxGridColumn25: TcxGridColumn
                Caption = 'Total Biaya (Rp)'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.Alignment.Horz = taRightJustify
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                Visible = False
                Width = 87
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxTblRouting1
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 636
    Width = 838
  end
  object zqrBrg: TZReadOnlyQuery
    Tag = 12
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT DISTINCT a.* FROM tbl_barang a join tbl_routing  b on a.k' +
        'ode=b.kode '
      'WHERE left(a.kode,1)='#39'A'#39'  ORDER BY a.deskripsi')
    Params = <>
    Left = 372
    Top = 24
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 402
    Top = 27
  end
end
