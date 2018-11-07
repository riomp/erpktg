object FrmTplMaster2: TFrmTplMaster2
  Left = 137
  Top = 48
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Master Item'
  ClientHeight = 637
  ClientWidth = 1086
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTengah: TPanel
    Left = 0
    Top = 49
    Width = 1086
    Height = 561
    Align = alTop
    TabOrder = 2
    object cxPageControl1: TcxPageControl
      Left = 472
      Top = 8
      Width = 881
      Height = 545
      ActivePage = cxTabSheet3
      Style = 9
      TabOrder = 0
      ClientRectBottom = 545
      ClientRectRight = 881
      ClientRectTop = 20
      object cxTabSheet1: TcxTabSheet
        Caption = 'Detail dan Dimensi'
        ImageIndex = 0
        object cxGroupBox1: TcxGroupBox
          Left = 8
          Top = 8
          Caption = 'Detail'
          TabOrder = 0
          Height = 129
          Width = 865
          object Label2: TLabel
            Left = 17
            Top = 26
            Width = 62
            Height = 13
            Caption = 'Kode Barang'
          end
          object Label3: TLabel
            Left = 16
            Top = 48
            Width = 65
            Height = 13
            Caption = 'Nama Barang'
          end
          object Label4: TLabel
            Left = 16
            Top = 96
            Width = 68
            Height = 13
            Caption = 'Fungsi Produk'
          end
          object Label5: TLabel
            Left = 16
            Top = 72
            Width = 44
            Height = 13
            Caption = 'Customer'
          end
          object Label6: TLabel
            Left = 520
            Top = 48
            Width = 64
            Height = 13
            Caption = 'Base Material'
          end
          object Label7: TLabel
            Left = 520
            Top = 72
            Width = 64
            Height = 13
            Caption = 'Sheet / Tube'
          end
          object Label8: TLabel
            Left = 520
            Top = 96
            Width = 52
            Height = 13
            Caption = 'Berat Jenis'
          end
          object cxtKode: TcxTextEdit
            Left = 104
            Top = 24
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 169
          end
          object cxtDescription: TcxTextEdit
            Left = 104
            Top = 48
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 401
          end
          object cxlCustomer: TcxLookupComboBox
            Left = 104
            Top = 72
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'kode'
              end
              item
                FieldName = 'alamat'
              end>
            Properties.ListSource = ds2
            TabOrder = 2
            Width = 401
          end
          object cxtFungsi: TcxTextEdit
            Left = 104
            Top = 96
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 401
          end
          object cxcmbBase: TcxComboBox
            Left = 600
            Top = 48
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'LLDPH'
              'HDPE')
            TabOrder = 4
            Text = 'LLDPE'
            Width = 185
          end
          object cxtSheet: TcxComboBox
            Left = 600
            Top = 72
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'SHEET'
              'TUBE')
            TabOrder = 5
            Width = 185
          end
          object cxsBerat: TcxSpinEdit
            Left = 600
            Top = 96
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 185
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 8
          Top = 144
          Caption = 'Dimensi'
          TabOrder = 1
          Height = 241
          Width = 865
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 42
            Height = 13
            Caption = 'Tebal ('#181')'
          end
          object Label9: TLabel
            Left = 16
            Top = 48
            Width = 71
            Height = 13
            Caption = 'Berat Kotor (gr)'
          end
          object Label10: TLabel
            Left = 16
            Top = 96
            Width = 81
            Height = 13
            Caption = 'Berat / Meter (gr)'
          end
          object Label11: TLabel
            Left = 16
            Top = 72
            Width = 75
            Height = 13
            Caption = 'Berat Bersih (gr)'
          end
          object Label12: TLabel
            Left = 16
            Top = 120
            Width = 159
            Height = 13
            Caption = 'Berat Produk Jadi + Aksesoris (gr)'
          end
          object Label13: TLabel
            Left = 320
            Top = 24
            Width = 78
            Height = 13
            Caption = 'Lebar Buka (cm)'
          end
          object Label14: TLabel
            Left = 320
            Top = 48
            Width = 72
            Height = 13
            Caption = 'Lebar Jadi (cm)'
          end
          object Label15: TLabel
            Left = 320
            Top = 72
            Width = 62
            Height = 13
            Caption = 'Panjang (cm)'
          end
          object Label16: TLabel
            Left = 320
            Top = 96
            Width = 84
            Height = 13
            Caption = 'Panjang Jadi (cm)'
          end
          object Label17: TLabel
            Left = 320
            Top = 120
            Width = 78
            Height = 13
            Caption = 'Lebar Tube (cm)'
          end
          object Label18: TLabel
            Left = 560
            Top = 24
            Width = 92
            Height = 13
            Caption = 'Panjang Plong (cm)'
          end
          object Label19: TLabel
            Left = 560
            Top = 48
            Width = 80
            Height = 13
            Caption = 'Lebar Plong (cm)'
          end
          object Label20: TLabel
            Left = 560
            Top = 72
            Width = 65
            Height = 13
            Caption = 'Top Flod (cm)'
          end
          object Label21: TLabel
            Left = 560
            Top = 96
            Width = 56
            Height = 13
            Caption = 'Gusset (cm)'
          end
          object Label22: TLabel
            Left = 560
            Top = 120
            Width = 95
            Height = 13
            Caption = 'Lembar Handle (cm)'
          end
          object Label23: TLabel
            Left = 8
            Top = 144
            Width = 828
            Height = 13
            Caption = 
              '----------------------------------------------------------------' +
              '----------------------------------------------------- Aksesoris ' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '--------------'
          end
          object Label24: TLabel
            Left = 16
            Top = 160
            Width = 82
            Height = 13
            Caption = 'Aksesoris Berupa'
          end
          object Label25: TLabel
            Left = 560
            Top = 160
            Width = 100
            Height = 13
            Caption = 'Berat Aksesoris Total'
          end
          object Label26: TLabel
            Left = 16
            Top = 184
            Width = 93
            Height = 13
            Caption = 'Tebal Aksesoris ('#181') '
          end
          object Label27: TLabel
            Left = 280
            Top = 184
            Width = 98
            Height = 13
            Caption = 'Lebar Aksesoris (cm)'
          end
          object Label28: TLabel
            Left = 560
            Top = 184
            Width = 110
            Height = 13
            Caption = 'Panjang Aksesoris (cm)'
          end
          object Label29: TLabel
            Left = 16
            Top = 208
            Width = 98
            Height = 13
            Caption = 'AIR HOLE Size (mm)'
          end
          object Label30: TLabel
            Left = 280
            Top = 208
            Width = 30
            Height = 13
            Caption = '%  Cut'
          end
          object cxtAksesoris: TcxTextEdit
            Left = 160
            Top = 160
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 377
          end
          object cxsTebal: TcxSpinEdit
            Left = 184
            Top = 24
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 1
            Width = 129
          end
          object cxsBeratKotor: TcxSpinEdit
            Left = 184
            Top = 48
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 2
            Width = 129
          end
          object cxsBeratBersih: TcxSpinEdit
            Left = 184
            Top = 72
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 3
            Width = 129
          end
          object cxsBeratMeter: TcxSpinEdit
            Left = 184
            Top = 96
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 4
            Width = 129
          end
          object cxsBeratJadi: TcxSpinEdit
            Left = 184
            Top = 120
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 5
            Width = 129
          end
          object cxsLebarBuka: TcxSpinEdit
            Left = 416
            Top = 24
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 129
          end
          object cxsLebarJadi: TcxSpinEdit
            Left = 416
            Top = 48
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 7
            Width = 129
          end
          object cxsPanjang: TcxSpinEdit
            Left = 416
            Top = 72
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 8
            Width = 129
          end
          object cxsPanjangJadi: TcxSpinEdit
            Left = 416
            Top = 96
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 9
            Width = 129
          end
          object cxsLebarTube: TcxSpinEdit
            Left = 416
            Top = 120
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 10
            Width = 129
          end
          object cxsPanjangPlong: TcxSpinEdit
            Left = 664
            Top = 24
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 11
            Width = 129
          end
          object cxsLebarPlong: TcxSpinEdit
            Left = 664
            Top = 48
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 12
            Width = 129
          end
          object cxsTopFlod: TcxSpinEdit
            Left = 664
            Top = 72
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 13
            Width = 129
          end
          object cxsGusset: TcxSpinEdit
            Left = 664
            Top = 96
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 14
            Width = 129
          end
          object cxsLebarHandle: TcxSpinEdit
            Left = 664
            Top = 120
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 15
            Width = 129
          end
          object cxsBeratAks: TcxSpinEdit
            Left = 680
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 16
            Width = 113
          end
          object cxsPanjangAks: TcxSpinEdit
            Left = 680
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 17
            Width = 113
          end
          object cxsTebalAks: TcxSpinEdit
            Left = 160
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 18
            Width = 113
          end
          object cxsAirHole: TcxSpinEdit
            Left = 160
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 19
            Width = 113
          end
          object cxsLebarAks: TcxSpinEdit
            Left = 384
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 20
            Width = 113
          end
          object cxsCut: TcxSpinEdit
            Left = 384
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 21
            Width = 113
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 8
          Top = 392
          Caption = 'Visual Produk'
          TabOrder = 2
          Height = 129
          Width = 865
          object Label31: TLabel
            Left = 16
            Top = 24
            Width = 71
            Height = 13
            Caption = 'Bentuk Produk'
          end
          object Label32: TLabel
            Left = 16
            Top = 48
            Width = 71
            Height = 13
            Caption = 'Desian Printing'
          end
          object Label34: TLabel
            Left = 16
            Top = 72
            Width = 53
            Height = 13
            Caption = 'Warna Film'
          end
          object Label35: TLabel
            Left = 520
            Top = 24
            Width = 70
            Height = 13
            Caption = 'Visual Property'
          end
          object Label36: TLabel
            Left = 520
            Top = 48
            Width = 79
            Height = 13
            Caption = 'Surface Property'
          end
          object cxtBentukProduk: TcxTextEdit
            Left = 104
            Top = 24
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 169
          end
          object cxtDesainPrinting: TcxTextEdit
            Left = 104
            Top = 48
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 401
          end
          object cxtWarnaFilm: TcxTextEdit
            Left = 104
            Top = 72
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 177
          end
          object cxtVisualProperty: TcxTextEdit
            Left = 608
            Top = 16
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 169
          end
          object cxtSurfaceProperty: TcxTextEdit
            Left = 608
            Top = 40
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 169
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Property'
        ImageIndex = 1
        object cxGroupBox4: TcxGroupBox
          Left = 8
          Top = 8
          Caption = 'Property Produk'
          TabOrder = 0
          Height = 513
          Width = 865
          object Label33: TLabel
            Left = 16
            Top = 40
            Width = 167
            Height = 13
            Caption = 'Tensile / Strength / Break / TD (N)'
          end
          object Label37: TLabel
            Left = 16
            Top = 64
            Width = 169
            Height = 13
            Caption = 'Tensile / Strength / Break / MD (N)'
          end
          object Label38: TLabel
            Left = 16
            Top = 88
            Width = 177
            Height = 13
            Caption = 'Tensile / Elongation / Break / TD (%)'
          end
          object Label39: TLabel
            Left = 16
            Top = 112
            Width = 179
            Height = 13
            Caption = 'Tensile / Elongation / Break / MD (%)'
          end
          object Label40: TLabel
            Left = 16
            Top = 136
            Width = 129
            Height = 13
            Caption = 'Tear Resistance / TD (mN)'
          end
          object Label41: TLabel
            Left = 16
            Top = 160
            Width = 131
            Height = 13
            Caption = 'Tear Resistance / MD (mN)'
          end
          object Label42: TLabel
            Left = 16
            Top = 24
            Width = 64
            Height = 13
            Caption = 'PROPERTI'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 224
            Top = 24
            Width = 87
            Height = 13
            Caption = 'STANDAR MIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 424
            Top = 24
            Width = 90
            Height = 13
            Caption = 'STANDAR MAX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label45: TLabel
            Left = 16
            Top = 184
            Width = 116
            Height = 13
            Caption = 'Puncture Resistance (N)'
          end
          object Label46: TLabel
            Left = 16
            Top = 208
            Width = 162
            Height = 13
            Caption = 'Dart Drop Impact (g F 50% Failure)'
          end
          object Label47: TLabel
            Left = 16
            Top = 232
            Width = 58
            Height = 13
            Caption = 'Opasitas (%)'
          end
          object Label48: TLabel
            Left = 16
            Top = 256
            Width = 127
            Height = 13
            Caption = 'Acuan Standar Warna Film'
          end
          object Label52: TLabel
            Left = 16
            Top = 280
            Width = 58
            Height = 13
            Caption = 'Critical Point'
          end
          object cxsMinTSTD: TcxSpinEdit
            Left = 224
            Top = 40
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 0
            Width = 193
          end
          object cxsMaxTSTD: TcxSpinEdit
            Left = 424
            Top = 40
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 1
            Width = 193
          end
          object cxsMinTSMD: TcxSpinEdit
            Left = 224
            Top = 64
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 2
            Width = 193
          end
          object cxsMaxTSMD: TcxSpinEdit
            Left = 424
            Top = 64
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 3
            Width = 193
          end
          object cxsMinTETD: TcxSpinEdit
            Left = 224
            Top = 88
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 4
            Width = 193
          end
          object cxsMaxTETD: TcxSpinEdit
            Left = 424
            Top = 88
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 5
            Width = 193
          end
          object cxsMinTEMD: TcxSpinEdit
            Left = 224
            Top = 112
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 193
          end
          object cxsMaxTEMD: TcxSpinEdit
            Left = 424
            Top = 112
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 7
            Width = 193
          end
          object cxsMinTearTD: TcxSpinEdit
            Left = 224
            Top = 136
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 8
            Width = 193
          end
          object cxsMaxTearTD: TcxSpinEdit
            Left = 424
            Top = 136
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 9
            Width = 193
          end
          object cxsMinTearMD: TcxSpinEdit
            Left = 224
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 10
            Width = 193
          end
          object cxsMaxTearMD: TcxSpinEdit
            Left = 424
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 11
            Width = 193
          end
          object cxsMinPuncture: TcxSpinEdit
            Left = 224
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 12
            Width = 193
          end
          object cxsMaxPuncture: TcxSpinEdit
            Left = 424
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 13
            Width = 193
          end
          object cxsMinOpasitas: TcxSpinEdit
            Left = 224
            Top = 232
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 14
            Width = 193
          end
          object cxsMaxOpasitas: TcxSpinEdit
            Left = 424
            Top = 232
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 15
            Width = 193
          end
          object cxsMinDrat: TcxSpinEdit
            Left = 224
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 16
            Width = 193
          end
          object cxsMaxDrat: TcxSpinEdit
            Left = 424
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 17
            Width = 193
          end
          object cxtAcuan: TcxTextEdit
            Left = 224
            Top = 256
            Properties.CharCase = ecUpperCase
            TabOrder = 18
            Width = 393
          end
          object cxtCritical: TcxMemo
            Left = 16
            Top = 296
            Lines.Strings = (
              'cxtCritical')
            TabOrder = 19
            Height = 201
            Width = 833
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Routing'
        ImageIndex = 2
        object Label49: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 13
          Caption = 'Routing'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxGrid2: TcxGrid
          Left = 8
          Top = 32
          Width = 857
          Height = 200
          TabOrder = 0
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellClick = cxGrid2DBTableView1CellClick
            OnCellDblClick = cxGrid2DBTableView1CellDblClick
            DataController.DataSource = ds3
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            object cxGrid2DBTableView1Id: TcxGridDBColumn
              DataBinding.FieldName = 'Id'
              Width = 29
            end
            object cxGrid2DBTableView1Kode_Routing: TcxGridDBColumn
              DataBinding.FieldName = 'Kode_Routing'
              Visible = False
              GroupIndex = 0
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGrid2DBTableView1Description: TcxGridDBColumn
              DataBinding.FieldName = 'Description'
            end
            object cxGrid2DBTableView1LebarTube: TcxGridDBColumn
              DataBinding.FieldName = 'LebarTube'
            end
            object cxGrid2DBTableView1MeterRoll: TcxGridDBColumn
              DataBinding.FieldName = 'MeterRoll'
            end
            object cxGrid2DBTableView1TreatLuar: TcxGridDBColumn
              DataBinding.FieldName = 'TreatLuar'
            end
            object cxGrid2DBTableView1TreatDalam: TcxGridDBColumn
              DataBinding.FieldName = 'TreatDalam'
            end
            object cxGrid2DBTableView1PolaTreat1: TcxGridDBColumn
              DataBinding.FieldName = 'PolaTreat1'
            end
            object cxGrid2DBTableView1PolaTreat2: TcxGridDBColumn
              DataBinding.FieldName = 'PolaTreat2'
            end
            object cxGrid2DBTableView1CoreType: TcxGridDBColumn
              DataBinding.FieldName = 'CoreType'
            end
            object cxGrid2DBTableView1ShiftingBobin: TcxGridDBColumn
              DataBinding.FieldName = 'ShiftingBobin'
            end
            object cxGrid2DBTableView1Core: TcxGridDBColumn
              DataBinding.FieldName = 'Core'
            end
            object cxGrid2DBTableView1Sisi: TcxGridDBColumn
              DataBinding.FieldName = 'Sisi'
            end
            object cxGrid2DBTableView1Register: TcxGridDBColumn
              DataBinding.FieldName = 'Register'
            end
            object cxGrid2DBTableView1Warna: TcxGridDBColumn
              DataBinding.FieldName = 'Warna'
            end
            object cxGrid2DBTableView1Kiri: TcxGridDBColumn
              DataBinding.FieldName = 'Kiri'
            end
            object cxGrid2DBTableView1Kanan: TcxGridDBColumn
              DataBinding.FieldName = 'Kanan'
            end
            object cxGrid2DBTableView1Atas: TcxGridDBColumn
              DataBinding.FieldName = 'Atas'
            end
            object cxGrid2DBTableView1Bawah: TcxGridDBColumn
              DataBinding.FieldName = 'Bawah'
            end
            object cxGrid2DBTableView1Lebar: TcxGridDBColumn
              DataBinding.FieldName = 'Lebar'
            end
            object cxGrid2DBTableView1Panjang: TcxGridDBColumn
              DataBinding.FieldName = 'Panjang'
            end
            object cxGrid2DBTableView1Toleransi: TcxGridDBColumn
              DataBinding.FieldName = 'Toleransi'
            end
            object cxGrid2DBTableView1Gulungan: TcxGridDBColumn
              DataBinding.FieldName = 'Gulungan'
            end
            object cxGrid2DBTableView1ArahFilm: TcxGridDBColumn
              DataBinding.FieldName = 'ArahFilm'
            end
            object cxGrid2DBTableView1Jml_DesianMD: TcxGridDBColumn
              DataBinding.FieldName = 'Jml_DesianMD'
            end
            object cxGrid2DBTableView1MD: TcxGridDBColumn
              DataBinding.FieldName = 'MD'
            end
            object cxGrid2DBTableView1Jml_DesianTD: TcxGridDBColumn
              DataBinding.FieldName = 'Jml_DesianTD'
            end
            object cxGrid2DBTableView1TD: TcxGridDBColumn
              DataBinding.FieldName = 'TD'
            end
            object cxGrid2DBTableView1Jml_Cylinder: TcxGridDBColumn
              DataBinding.FieldName = 'Jml_Cylinder'
            end
            object cxGrid2DBTableView1Circum: TcxGridDBColumn
              DataBinding.FieldName = 'Circum'
            end
            object cxGrid2DBTableView1CDiameter: TcxGridDBColumn
              DataBinding.FieldName = 'CDiameter'
            end
            object cxGrid2DBTableView1CPanjang: TcxGridDBColumn
              DataBinding.FieldName = 'CPanjang'
            end
            object cxGrid2DBTableView1JarakLas: TcxGridDBColumn
              DataBinding.FieldName = 'JarakLas'
            end
            object cxGrid2DBTableView1PanjangLas: TcxGridDBColumn
              DataBinding.FieldName = 'PanjangLas'
            end
            object cxGrid2DBTableView1LasAtas: TcxGridDBColumn
              DataBinding.FieldName = 'LasAtas'
            end
            object cxGrid2DBTableView1LasBawah: TcxGridDBColumn
              DataBinding.FieldName = 'LasBawah'
            end
            object cxGrid2DBTableView1Cylinder: TcxGridDBColumn
              DataBinding.FieldName = 'Cylinder'
            end
            object cxGrid2DBTableView1Remark: TcxGridDBColumn
              DataBinding.FieldName = 'Remark'
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 8
    Top = 64
    Width = 449
    Height = 537
    TabOrder = 0
    LookAndFeel.SkinName = ''
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = cxGrid1DBTableView1CellClick
      DataController.DataSource = ds1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      object cxGrid1DBTableView1Kode: TcxGridDBColumn
        DataBinding.FieldName = 'Kode'
      end
      object cxGrid1DBTableView1NamaBarang: TcxGridDBColumn
        DataBinding.FieldName = 'Nama Barang'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object pnlAtas: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 49
    Align = alTop
    TabOrder = 1
    object lblJudul: TLabel
      Left = 15
      Top = 5
      Width = 119
      Height = 19
      Caption = 'Master Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxtStat: TcxLabel
      Left = 14
      Top = 30
      Caption = 'xxx'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
    end
  end
  object pnlBawah: TPanel
    Left = 0
    Top = 610
    Width = 1086
    Height = 76
    Align = alTop
    TabOrder = 3
    object cxbBaru: TcxButton
      Left = 16
      Top = 8
      Width = 57
      Height = 57
      Caption = '&Tambah'
      TabOrder = 0
      OnClick = cxbBaruClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000050000000E00000013000000130000
        0013000000130000001300000013000000130000001300000013000000130000
        0013000000130000001300000013000000130000001300000013000000130000
        001300000013000000130000000E000000050000000000000000000000000000
        00000000000000000000000000000000000E0000002B0000003A0000003A0000
        003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
        003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
        003A0000003A0000003A0000002B0000000E0000000000000000000000000000
        00000000000000000000000000009B9B9BFF898989FF878787FF878787FF8787
        87FF878787FF878787FF878787FF878787FF878787FF878787FF878787FF8787
        87FF878787FF878787FF878787FF878787FF878787FF878787FF878787FF8787
        87FF878787FF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFBFB
        FBFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFF8F8F8FFF8F8F8FFF8F8
        F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
        F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFFAFA
        FAFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFFAFA
        FAFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFAFAFAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFBFB
        FBFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFBFBFBFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFC
        FCFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFBFBFBFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFC
        FCFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFD
        FDFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFE
        FEFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF878787FF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8F8F8FFF0000003A000000130000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA7A7A7FF00000038000000120000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFE9E9
        E9FFE4E4E4FFB5B5B5FF0000002C0000000D0000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6FFEAEAEAFFE3E3E3FFDADADAFFD2D2
        D2FFCDCDCDFF939393D800000016000000050000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBFFFFFFFFFFFFFFFFFFFCFCFCFFDADA
        DAFF939393D90B0B0B2600000005000000000000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACAFFFFFFFFFFFCFCFCFFDEDEDEFF9F9F
        9FE60B0B0B290000000700000000000000000000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDFFFCFCFCFFDEDEDEFFABABABF22222
        2247000000080000000100000000000000000000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEEEEEFFD5D5D5FFE7E7E7FFABABABF2222222470000
        0008000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFDCDCDCFFCECECEFFB0B0B0F222222246000000080000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
        B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
        B4FFB4B4B4FFB4B4B4FFB4B4B4FFAFAFAFF02222223C00000006000000010000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
    end
    object cxbEdit: TcxButton
      Left = 80
      Top = 8
      Width = 57
      Height = 57
      Caption = '&Edit'
      TabOrder = 1
      OnClick = cxbEditClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000030000
        0007000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000080000
        0016000000180000000C00000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000131313A10505
        05450000002C0000002800000016000000090000000200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000A0A0A512B30
        32FF224455A20307094800000035000000230000001100000005000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006691
        A0C068AECEFF377495F31226318C0000003F0000002F0000001C0000000C0000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000131B
        1E218FCDE3F063ACCCFF3B7A9CFF23485CD20810146A0000003B000000270000
        0010000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000416A788197DAF2FF5EAACCFF3B7A9CFF23615AFF13461AB0000000400000
        002A000000110000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006BB4CCE096DAF2FF4CBB4CFF57B05DFF117611FF155715BB0000
        00410000002A0000001100000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001930374186D1B5FF85D185FF4CBB4CFF5BB55BFF117611FF1557
        15BB000000410000002A00000011000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003E703E908ED58EFF85D185FF4CBB4CFF5BB55BFF1176
        11FF155715BB000000410000002A000000110000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000457C45A08ED58EFF85D185FF4CBB4CFF5BB5
        5BFF117611FF155715BB000000410000002A0000001100000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000457C45A08ED58EFF85D185FF4CBB
        4CFF5BB55BFF117611FF155715BB000000410000002A00000011000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000457C45A08ED58EFF85D1
        85FF4CBB4CFF5BB55BFF117611FF155715BB000000410000002A000000110000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000457C45A08ED5
        8EFF85D185FF4CBB4CFF5BB55BFF117611FF155715BB000000410000002A0000
        0011000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000457C
        45A08ED58EFF85D185FF4CBB4CFF5BB55BFF117611FF155715BB000000410000
        002A000000110000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000457C45A08ED58EFF85D185FF4CBB4CFF5BB55BFF117611FF155715BB0000
        00410000002A0000001100000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000457C45A08ED58EFF85D185FF4CBB4CFF5BB55BFF117611FF1557
        15BB000000410000002A00000011000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000457C45A08ED58EFF85D185FF4CBB4CFF5BB55BFF1176
        11FF155715BB000000410000002A000000110000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000457C45A08ED58EFF85D185FF4CBB4CFF5BB5
        5BFF117611FF155715BB000000410000002A0000001100000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000457C45A08ED58EFF85D185FF4CBB
        4CFF5BB55BFF117611FF155715BB000000410000002A00000011000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000457C45A08ED58EFF85D1
        85FF4CBB4CFF5BB55BFF117611FF155715BB000000410000002A000000110000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000457C45A08ED5
        8EFF85D185FF4CBB4CFF5BB55BFF117611FF155715BB000000410000002A0000
        0011000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000457C
        45A08ED58EFF85D185FF4CBB4CFF5BB55BFF117611FF155715BB000000410000
        002A000000110000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000457C45A08ED58EFF85D185FF4CBB4CFF5BB55BFF117611FF1D591EBB0000
        00410000002A0000001100000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000457C45A08ED58EFF85D185FF4CBB4CFF5AB05BFF627563FF4F50
        51BB000000410000002A00000011000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000457C45A08ED58EFF89D289FFABC2AFFFAAABAEFF6E6E
        6EFF5A5C5DBB000000410000002A000000110000000300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004A7C4AA0D7E4D7FFF2F2F3FFBABBBCFF8585
        87FF7A7B7CFF49494ABB000000410000002A0000001000000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000787878A0D9D9D9FFEBECEDFFCFD0
        D3FF9B9C9EFF6D6E76FF383B75BB00000040000000260000000A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000787878A0E8E8E8FFE8E8
        E8FFB2B4BDFF595DBAFF373BB8FF2B2D6EAF000000310000000F000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000777777A0DADA
        DFFFB8BCECFF8C90DDFF555AC7FF3D41BBFF000000250000000A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000666B
        8FA0A3ABEDFFAAAFE8FF6B70D2FF2022689F0000000F00000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000052568390767DDBFF2F3267870000000A0000000200000000}
      Layout = blGlyphTop
    end
    object cxbHapus: TcxButton
      Left = 144
      Top = 8
      Width = 57
      Height = 57
      Caption = 'Hapus'
      TabOrder = 2
      OnClick = cxbHapusClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000030000000A0000000F0000000A000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000A0000000F0000000A0000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000300000010000000260000003100000026000000100000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000003000000100000002600000031000000260000
        0010000000030000000000000000000000000000000000000000000000000000
        000000000003000000110F0F61A11A1AAEFF0E0E61AF000000400000002A0000
        0011000000030000000000000000000000000000000000000000000000000000
        000000000000000000030000001111115FA11E1EA9FF10105FAF000000400000
        002A000000110000000300000000000000000000000000000000000000000000
        00030000001110106CAF2525B7FF3939C6FF2E2EBEFF11116CBB000000410000
        002A000000110000000300000000000000000000000000000000000000000000
        0000000000030000001113136AAF4646D6FF6161F3FF3939C6FF131369BB0000
        00410000002A0000001100000003000000000000000000000000000000020000
        001010106CAE2525B6FF3838C5FF2020BFFF3737C7FF2F2FBFFF11116CBB0000
        00410000002A0000001100000003000000000000000000000000000000000000
        00030000001113136AAF4545D4FF5D5DF1FF4F4FF4FF6666F9FF3B3BC8FF1313
        69BB000000410000002900000010000000020000000000000000000000081010
        6DAC2424B6FF3737C4FF1919BCFF0707B8FF1212BDFF3838C8FF3030C0FF1111
        6CBB000000410000002A00000011000000030000000000000000000000030000
        001112126AAF4242D2FF5959EDFF3F3FEEFF3C3CF2FF4F4FF8FF6969FCFF3A3A
        C7FF131369BB0000003F000000220000000800000000000000000D0D58854646
        C3FF5656CFFF1818BBFF0606B7FF0707B8FF0909BAFF1414BEFF3A3ACAFF3131
        C0FF11116BBB000000410000002A000000110000000300000003000000111212
        6AAF4040CFFF5555E8FF3939E8FF3636ECFF3A3AF0FF3D3DF4FF4D4DF7FF6565
        F7FF3838C5FF0F0F54A20000002A0000000B0000000000000000131383C18181
        DEFF8282E1FF1B1BBDFF0606B6FF0707B8FF0909BAFF0A0ABCFF1515C0FF3B3B
        CCFF3232C1FF11116BBB000000410000002A000000140000001412126BAF3D3D
        CCFF5151E3FF3434E2FF3030E5FF3333E9FF3737EDFF3939F0FF3B3BF1FF5252
        F2FF5C5CEDFF17177ECE0000001F0000000700000000000000000A0A42613E3E
        BFFF8787E1FF7D7DE0FF1C1CBEFF0707B8FF0808B9FF0A0ABBFF0C0CBDFF1717
        C2FF3D3DCDFF3333C2FF12126BBB000000410000003211116BB23B3BCAFF4D4D
        DFFF2F2FDCFF2A2ADFFF2E2EE3FF3131E6FF3333E9FF3535EBFF4545EEFF5E5E
        EFFF3636C3FF0B0B3F760000000C000000020000000000000000000000000A0A
        42613F3FC0FF8888E1FF7E7EE0FF0E0EBAFF0808B9FF0A0ABBFF0B0BBDFF0D0D
        BFFF1818C3FF3E3ECFFF3434C3FF12126BBB12126ABA3838C8FF4949DBFF2A2A
        D7FF2525D9FF2828DCFF2B2BDFFF2D2DE2FF3030E5FF4040E8FF5B5BECFF3535
        C3FF0B0B3F760000000C00000002000000000000000000000000000000000000
        00000A0A42613F3FBFFF8888E2FF6F6FDCFF0F0FBBFF0909BAFF0B0BBCFF0D0D
        BEFF0F0FC0FF1A1AC5FF3F3FD0FF3535C4FF3636C6FF4646D7FF2626D2FF2020
        D3FF2323D6FF2525D9FF2828DCFF2A2ADEFF3C3CE3FF5757E8FF3333C2FF0B0B
        40760000000C0000000200000000000000000000000000000000000000000000
        0000000000000A0A41613F3FBFFF8888E2FF7070DCFF1010BCFF0A0ABBFF0C0C
        BDFF0E0EBFFF1010C2FF1B1BC6FF4040D1FF4242D3FF2121CDFF1B1BCEFF1E1E
        D1FF2020D4FF2222D6FF2525D9FF3636DDFF5353E3FF3232C0FF0B0B40760000
        000C000000020000000000000000000000000000000000000000000000000000
        000000000000000000000A0A41613F3FBFFF8989E2FF7070DDFF1111BDFF0B0B
        BCFF0D0DBEFF0F0FC0FF1111C3FF1C1CC7FF1E1EC9FF1717CAFF1919CCFF1B1B
        CEFF1E1ED1FF2020D3FF3232D8FF4F4FDFFF3030BFFF0B0B40760000000C0000
        0002000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A41614040BFFF8989E2FF7070DDFF1212
        BEFF0C0CBDFF0E0EBFFF0F0FC1FF1111C3FF1313C5FF1515C8FF1717CAFF1919
        CCFF1B1BCEFF2E2ED4FF4B4BDBFF2F2FBEFF0B0B40760000000C000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A41614040BFFF8989E3FF7171
        DDFF1212BFFF0C0CBEFF0E0EC0FF1010C2FF1212C4FF1414C6FF1515C8FF1717
        CAFF2A2ACFFF4848D7FF2D2DBCFF0B0B407B0000000F00000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000030A0A426C4040C0FF7A7A
        DEFF2424C3FF0B0BBDFF0D0DBEFF0E0EC0FF1010C2FF1111C3FF1313C5FF2626
        CBFF4545D4FF2C2CBBFF0A0A408C0000002F0000001300000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000001110106CAF2D2DBDFF3939
        C7FF1B1BBFFF0A0ABBFF0C0CBDFF0D0DBEFF0E0EC0FF1010C2FF1111C3FF2424
        C9FF4343D1FF3535C4FF12126BBB000000410000002A00000011000000030000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000030000001110106CAF4141C3FF4949CBFF1C1C
        BEFF0808B9FF0909BAFF0A0ABBFF0C0CBDFF0D0DBEFF0E0EC0FF0F0FC1FF1111
        C2FF2323C8FF4242D1FF3434C3FF12126BBB000000410000002A000000110000
        0003000000000000000000000000000000000000000000000000000000000000
        000000000000000000030000001110106DAF4343C4FF5C5CD0FF4343C9FF3232
        C4FF2222C0FF1515BDFF0909BAFF0A0ABBFF0B0BBDFF0C0CBEFF0D0DBFFF0F0F
        C0FF1010C1FF2222C7FF4141CFFF3333C2FF11116BBB000000410000002A0000
        0011000000030000000000000000000000000000000000000000000000000000
        0000000000030000001110106DAF4646C4FF5E5ED0FF4444C8FF3535C4FF3434
        C4FF3232C4FF3232C5FF2E2EC5FF3434C6FF3E3ECBFF1A1AC1FF1010BEFF0D0D
        BEFF0D0DBFFF0E0EC0FF2121C5FF4040CEFF3232C1FF11116BBB000000410000
        002A000000110000000300000000000000000000000000000000000000000000
        0003000000110F0F6EAF4444C2FF6161D0FF4848C9FF3737C4FF3636C4FF3535
        C4FF3434C4FF3333C5FF4141C9FF5C5CD2FF9696E6FF8585E3FF3636C8FF2F2F
        C7FF2F2FC7FF2828C6FF2626C6FF3737CBFF5454D3FF3D3DC2FF11116CBB0000
        00410000002A0000001100000003000000000000000000000000000000020000
        00100F0F6EAE4343C2FF6363D1FF4A4AC9FF3A3AC4FF3939C5FF3838C4FF3636
        C4FF3535C4FF4343C9FF5F5FD0FF3E3EBDFF4747C2FF9B9BE8FF8686E3FF3636
        C8FF3030C6FF2F2FC7FF2F2FC7FF2F2FC7FF3E3ECBFF5858D2FF3A3ABEFF1111
        6CBB000000410000002900000010000000020000000000000000000000080F0F
        6EAC4545C2FF6666D1FF4E4ECAFF3E3EC5FF3C3CC5FF3A3AC4FF3939C4FF3838
        C4FF4545C9FF5C5CD0FF3535BBFF10106CAF10106DA74747C2FF9B9BE8FF8686
        E2FF3636C8FF3030C6FF3030C6FF3030C6FF3030C6FF3F3FCBFF5959D2FF3B3B
        BEFF10106CBB0000003F000000220000000800000000000000000B0B59855D5D
        CCFF7171D5FF5050CBFF4141C6FF3F3FC6FF3E3EC5FF3C3CC5FF3A3AC4FF4848
        C9FF5E5ED0FF3333BBFF10106CAF000000110000000310106DA04848C2FF9B9B
        E8FF8787E2FF3737C7FF3131C5FF3131C6FF3030C6FF3030C6FF4040CAFF5959
        D1FF3B3BBEFF0D0D56A20000002A0000000B0000000000000000111184C1A8A8
        ECFF9E9EE7FF5050CBFF4242C6FF4141C6FF3F3FC6FF3E3EC5FF4A4AC9FF6161
        D0FF3434BBFF10106DAF0000001100000003000000000000000010106DA04747
        C2FF9C9CE8FF8787E3FF3838C7FF3232C5FF3232C5FF3232C5FF3232C5FF5050
        CEFF5959CFFF131382CE0000001E000000070000000000000000070738515151
        C7FFA8A8ECFF9C9CE7FF5050CBFF4242C6FF4141C6FF4E4ECAFF6464D1FF3434
        BCFF10106DAF0000001100000003000000000000000000000000000000001010
        6DA04747C2FF9C9CE8FF8888E2FF3939C7FF3333C5FF3333C5FF4C4CCCFF5959
        CFFF3838BBFF080837680000000B000000020000000000000000000000000909
        43616060CEFFAEAEEEFF9C9CE7FF5050CBFF5050CBFF6666D2FF3535BDFF0F0F
        6EAF000000110000000300000000000000000000000000000000000000000000
        000010106DA04747C2FF9D9DE7FF8989E2FF3B3BC7FF4D4DCCFF5C5CD0FF3D3D
        BFFF0A0A41760000000C00000002000000000000000000000000000000000000
        0000090943616060CEFFAEAEEEFF9E9EE8FF7171D5FF3636BDFF0F0F6EAE0000
        0011000000030000000000000000000000000000000000000000000000000000
        00000000000010106DA04B4BC4FF9D9DE7FF9292E5FF7676D9FF3E3EC0FF0909
        41760000000C0000000200000000000000000000000000000000000000000000
        000000000000090943616060CEFFA9A9ECFF5D5DCCFF0F0F6EAC000000100000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000010106DA05454C7FF9999E5FF5A5ACAFF090942730000
        000B000000020000000000000000000000000000000000000000000000000000
        0000000000000000000009094361111184C10B0B598500000008000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000D0D5881131383C108083758000000070000
        0002000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
    end
    object cxbSimpan: TcxButton
      Left = 208
      Top = 8
      Width = 57
      Height = 57
      Caption = '&Simpan'
      TabOrder = 3
      OnClick = cxbSimpanClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000050000000D00000012000000130000001300000013000000130000
        0013000000130000001300000013000000130000001300000013000000130000
        0013000000130000001300000013000000130000001300000013000000130000
        0013000000130000001300000013000000120000000B00000003000000000000
        0005000000160000002C000000380000003A0000003A0000003A0000003A0000
        003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
        003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
        003A0000003A0000003A0000003A00000036000000240000000B000000050906
        04256F533BD8886548FF866347FF846246FF836045FF815F44FF7F5E43FFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFB2AEABFF635347FF614834FF6046
        33FF5E4532FF5C4431FF5A4230FF37281DBB00000036000000120907051C7153
        3CD7A1846CFFC9B6A6FFC8B6A5FFC8B6A5FFC7B5A4FFC7B5A4FF635347FFF2F2
        F2FFEDEDEDFFE0E0E0FFD2D2D2FFD5D5D5FFDEDEDEFFE7E7E7FFEFEFEFFFEEEE
        EEFFE8E8E8FFE2E2E2FFE3E3E3FFE9E9E9FFCBC7C4FF635347FF8F7966FF9E88
        74FFC9B59FFFBEAC9BFFBEAC9BFF58412FFF0000003A0000001372543DD2A386
        6DFFC9B7A6FFBBA796FFA38D7AFFA28C79FFA18C78FFA08B77FF635347FFFFFF
        FFFFFAFAFAFF635347FF8F7966FF8F7966FFE3E3E3FFEEEEEEFFFAFAFAFFFBFB
        FBFFF2F2F2FFEAEAEAFFEAEAEAFFF1F1F1FFD2CECBFF635347FF8F7966FF9E88
        74FFC9B59FFF917B68FFBEAC9BFF58412FFF0000003A000000138E694BFFCAB8
        A7FFBCA997FFA48F7BFFA38E7AFFA38D7AFFA28C79FFA18C78FF635347FFFFFF
        FFFFFCFCFCFF635347FF8F7966FF8F7966FFE1E1E1FFECECECFFF8F8F8FFFCFC
        FCFFF3F3F3FFEBEBEBFFE9E9E9FFF0F0F0FFD1CDCAFF635347FF8F7966FF9E88
        74FFC9B59FFF927C69FFBFAD9CFF58412FFF0000003A000000138E694BFFCAB8
        A7FFA6907DFFA5907CFFA48F7BFFA38E7AFFA38D7AFFA28C79FF635347FFFFFF
        FFFFFDFDFDFF635347FF8F7966FF8F7966FFDFDFDFFFEBEBEBFFF6F6F6FFFCFC
        FCFFF5F5F5FFECECECFFE8E8E8FFEFEFEFFFD1CDCAFF635347FF8F7966FF9E88
        74FFC9B59FFF937D6AFFBFAD9CFF58412FFF0000003A000000138E694BFFCBB9
        A8FFA6917DFFA6907DFFA5907CFFA48F7BFFA38E7AFFA38D7AFF635347FFFFFF
        FFFFFEFEFEFF635347FF8F7966FF8F7966FFDEDEDEFFE9E9E9FFF5F5F5FFFDFD
        FDFFF6F6F6FFEDEDEDFFE8E8E8FFEEEEEEFFD0CCC9FF635347FF8F7966FF9E88
        74FFC9B59FFF937E6AFFC0AE9DFF58412FFF0000003A000000138E694BFFCBBA
        A8FFA7927EFFA6917DFFA6907DFFA5907CFFA48F7BFFA38E7AFF635347FFFFFF
        FFFFFFFFFFFF635347FF84705EFF84705EFFDCDCDCFFE8E8E8FFF3F3F3FFFCFC
        FCFFF7F7F7FFEEEEEEFFE8E8E8FFEDEDEDFFCFCBC8FF635347FF8F7966FF9E88
        74FFC9B59FFF947E6BFFC0AE9DFF58412FFF0000003A000000138E694BFFCCBA
        A9FFA8937FFFA7927EFFA6917DFFA6907DFFA5907CFFA48F7BFF635347FFFFFF
        FFFFFFFFFFFF635347FF635347FF635347FFDBDBDBFFE6E6E6FFF1F1F1FFFCFC
        FCFFF8F8F8FFF0F0F0FFE8E8E8FFECECECFFCECAC7FF635347FF8F7966FF9E88
        74FFC9B59FFF957F6CFFC1AE9DFF58412FFF0000003A000000138E694BFFCCBA
        A9FFA99380FFA8937FFFA7927EFFA6917DFFA6907DFFA5907CFF635347FFF5F4
        F4FFFFFFFFFFF8F8F8FFE6E6E6FFD4D4D4FFD9D9D9FFE4E4E4FFF0F0F0FFFBFB
        FBFFF9F9F9FFF1F1F1FFE9E9E9FFEBEBEBFFAAA29CFF665549FF8F7966FF9E88
        74FFC9B59FFF96806DFFC1AF9EFF58412FFF0000003A000000138E694BFFCCBB
        A9FFAA9481FFA99380FFA8937FFFA7927EFFA6917DFFA6907DFF67574AFF6353
        47FF635347FF635347FF635347FF635347FF635347FF635347FF635347FF6353
        47FF635347FF635347FF635347FF635347FF635347FF635347FF635347FF6959
        4DFFC6B29CFF97816EFFC2AF9FFF58412FFF0000003A000000138E694BFFCDBB
        AAFFAC9683FFAA9481FFA99380FFA8937FFFA7927EFFA6917DFFA28D79FF9481
        6FFF94806EFF947F6EFF937F6DFF927E6DFF927E6CFF917D6BFF917C6BFF907C
        6AFF8F7B6AFF8F7B69FF8E7A69FF8E7968FF8D7967FF8C7867FF8C7866FF9580
        6DFF98826FFF97816EFFC2B09FFF58412FFF0000003A000000138E694BFFCDBC
        AAFFB29C89FFAD9884FFAA9481FFA99380FFA8937FFFA7927EFFA6917DFFA690
        7DFFA5907CFFA48F7BFFA48E7BFFA38D7AFFA28C79FFA18C78FFA08B77FFA08A
        77FF9F8976FF9E8875FF9D8874FF9D8774FF9C8673FF9B8572FF9A8571FF9984
        71FF998370FF98826FFFC2B09FFF58412FFF0000003A000000138E694BFFCEBC
        ABFFB49E8BFFB29D8AFFAF9A87FFAA9582FFC7B39DFFC9B59FFFC9B59FFFC9B5
        9FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B5
        9FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC9B59FFFC6B2
        9CFF998471FF998370FFC3B0A0FF58412FFF0000003A000000138E694BFFCEBC
        ABFFB5A08DFFB49E8BFFB29D8AFF68584BFF908073FFBBAA9CFFBAAA9CFFBAA9
        9BFFB9A99AFFB8A89AFFB8A799FFB7A799FFB7A698FFB6A598FFB5A597FFB5A4
        97FFB4A496FFB3A395FFB3A395FFB2A294FFB1A194FFA59281FFB19C87FFC9B5
        9FFF9A8571FF998471FFC3B1A0FF58412FFF0000003A000000138E694BFFCFBD
        ACFFB7A18EFFB5A08DFFB49E8BFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF998370FFC9B5
        9FFF9B8572FF9A8571FFC3B1A1FF58412FFF0000003A000000138E694BFFCFBD
        ACFFB8A390FFB7A18EFFB5A08DFF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF998470FFC9B5
        9FFF9C8673FF9B8572FFC4B2A1FF58412FFF0000003A000000138E694BFFD0BD
        ADFFBAA491FFB8A390FFB7A18EFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF9A8471FFC9B5
        9FFF9D8774FF9C8673FFC4B2A1FF58412FFF0000003A000000138E694BFFD0BE
        ADFFBBA693FFBAA491FFB8A390FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF9B8572FFC9B5
        9FFF9D8874FF9D8774FFC5B3A2FF58412FFF0000003A000000138E694BFFD0BE
        ADFFBDA794FFBBA693FFBAA491FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF9C8673FFC9B5
        9FFF9E8875FF9D8874FFC5B3A2FF58412FFF0000003A000000138E694BFFD1BF
        AEFFBEA996FFBDA794FFBBA693FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF9C8773FFC9B5
        9FFF9F8976FF9E8875FFC5B4A2FF58412FFF0000003A000000138E694BFFD1BF
        AEFFC0AA97FFBEA996FFBDA794FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFF9E8874FFC9B5
        9FFFA08A77FF9F8976FFC6B4A3FF58412FFF0000003A000000138E694BFFD1BF
        AEFFC1AC99FFC0AA97FFBEA996FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFF9F8875FFC9B5
        9FFFA08B77FFA08A77FFC6B4A3FF58412FFF0000003A000000138E694BFFD2C0
        AFFFC3AD9AFFC1AC99FFC0AA97FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFA08976FFC9B5
        9FFFA18C78FFA08B77FFC7B5A4FF58412FFF0000003A000000138E694BFFD2C1
        AFFFC4AF9CFFC3AD9AFFC1AC99FF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFA18A77FFC9B5
        9FFFA28C79FFA18C78FFC7B5A4FF58412FFF0000003A000000138E694BFFD3C1
        B0FFC9B4A2FFC7B3A1FFC6B29FFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFA28B78FFC9B5
        9FFFA38D7AFFA28C79FFC8B6A5FF58412FFF0000003A000000138E694BFFD3C1
        B0FFD3C1B0FFD2C1AFFFD2C0AFFF635347FFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFB
        FEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFFAFBFEFFA38D7AFFC9B5
        9FFFA48E7BFFA38D7AFFC8B6A5FF58412FFF0000003A000000138E694BFFD3C2
        B0FF5C4D41FF5C4D41FFD2C1AFFF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFA58E7BFFC9B5
        9FFF5C4D41FF5C4D41FFC9B6A6FF58412FFF0000003A000000138E694BFFD4C2
        B1FF5C4D41FF5C4D41FFD3C1B0FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFAE9986FFC9B5
        9FFF5C4D41FF5C4D41FFC9B7A6FF58412FFF00000036000000128E694BFFD0BD
        ABFFD4C2B1FFD3C2B0FFD3C1B0FF635347FFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4
        FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC6D4FAFFC7B4A3FFC9B5
        9FFFCAB8A7FFCAB8A7FFC2B09FFF58412FFF000000240000000B58412EA08C67
        4AFF8A6649FF886548FF866347FF7C5E46FF836045FF815F44FF7F5E43FF7D5C
        42FF7B5B41FF795A40FF78583FFF76573EFF74553DFF72543CFF70533BFF6E51
        3AFF6C5039FF6B4F38FF694D37FF674C36FF654B35FF634934FF614834FF6046
        33FF5E4532FF5C4431FF5A4230FF37281DA60000000B00000003}
      Layout = blGlyphTop
    end
    object cxbBatal: TcxButton
      Left = 272
      Top = 8
      Width = 57
      Height = 57
      Caption = '&Batal'
      TabOrder = 4
      OnClick = cxbBatalClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001000000050000000A0000000E0000001000000012000000120000
        00100000000E0000000900000004000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000030000
        0009000000120000001C000000270000002E0000003400000038000000380000
        00340000002E000000260000001B000000120000000900000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000007000000150000
        002507072B670E0E579E141481D016168CDC1C1CACFF1C1CABFF17178BDD1515
        80D20F0F55A3060620660000003D000000330000002500000015000000070000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000C02020B2C0D0D57991818
        97E71717ABFF1212ABFF0F0FAEFF1010B3FF1010B7FF1212BAFF1616BCFF1717
        B9FF1A1AB4FF1C1CAEFF1A1A95E90F0F56A402020A4E000000330000001E0000
        000C000000020000000000000000000000000000000000000000000000000000
        00000000000000000000000000030000001006062C5C171798E61212A9FF0A0A
        AAFF0B0BB5FF0E0EBEFF1212C4FF1414C7FF1717CAFF1A1ACDFF1E1ED1FF2020
        D3FF2222D3FF2121D0FF1F1FC8FF1D1DB5FF1A1A94E907072A760000003B0000
        0026000000100000000300000000000000000000000000000000000000000000
        00000000000000000002000000100D0D58941717ACFF0B0BA9FF0808B5FF0B0B
        BCFF0D0DBFFF0F0FC1FF1F1FC8FF3737D1FF4545D6FF4949D9FF4444DAFF3737
        D9FF2A2AD9FF2727DDFF2D2DE2FF2B2BDDFF2323C9FF1E1EAEFF101054A50000
        0040000000290000001000000002000000000000000000000000000000000000
        0000000000010000000C10106DAD2323B2FF0606ACFF0707B8FF0909BAFF0B0B
        BCFF2626C6FF5F5FD7FF7575DBFF6868D3FF5454C9FF5555C9FF6C6CD6FF7D7D
        E2FF7D7DE8FF5C5CE3FF3737E0FF2F2FE7FF3636EBFF2C2CDCFF2121B1FF1313
        69BB00000040000000260000000C000000010000000000000000000000000000
        0000000000070C0C578F2B2BB7FF2222BBFF0606B7FF0808B9FF0909BAFF4F4F
        D0FF6060CEFF2A2AB3FF1A1AA2F1151580C41010609510106094161680C21B1B
        9FF03636B7FF6B6BD5FF8989EEFF4848E7FF3A3AF1FF3D3DF4FF3131E3FF2121
        B1FF101054A50000003B0000001E000000070000000000000000000000000000
        000206062C4D1E1EB2FF4A4ACBFF0505B5FF0606B7FF0707B8FF4545C8FF3131
        B7FF141481C90909365C00000007000000020000000000000000000000000000
        000009093555171783C63A3ADBFF3434EAFF3838EFFF3D3DF3FF3D3DF3FF2B2B
        DBFF2020B0FF07072A7600000032000000120000000200000000000000000000
        0008161699E35B5BCFFF0F0FB7FF0404B5FF0606B6FF0B0BB6FF1919AEFF0C0C
        4C840000000D0000000200000000000000000000000000000000000000000000
        000502020E252222B4D82E2EE3FF3232E7FF3535EBFF3838EFFF3A3AF1FF3535
        EAFF2424CAFF1A1A94E900000040000000220000000800000000000000010A0A
        426A3131BBFF3F3FC6FF0303B4FF0404B5FF0909B4FF1919AFFF0A0A41790000
        000D000000020000000000000000000000000000000000000000000000050202
        0D251D1DAFD82828DCFF2B2BE0FF2F2FE4FF3232E7FF3A3AEAFF5151E7FF2F2F
        E6FF2929DBFF1E1EB1FF0B0B408D000000310000001000000001000000041313
        8ED45858CDFF1111B6FF0303B3FF0404B4FF1616AFFF0D0D589A000000140000
        000200000000000000000000000000000000000000000000000502020D251919
        AAD82222D6FF2525D9FF2828DDFF2B2BE0FF2E2EE3FF4848DAFF8A8AEEFF3939
        E0FF2C2CE0FF1E1EC2FF17178ADD0000003C0000001A00000004040421362525
        B6FF5555CDFF0202B2FF0303B3FF0C0CB2FF171798E700000023000000080000
        0000000000000000000000000000000000000000000501010D251515A6D81D1D
        D0FF2020D3FF2222D6FF2525D9FF2727DCFF1A1A8BAF1A1A95E26C6CD6FF6060
        E4FF2929DEFF1F1FCDFF1C1CACFF0606206600000024000000080B0B4D774C4C
        C7FF4444C5FF0202B2FF0202B3FF1616AFFF0909418400000016000000020000
        00000000000000000000000000000000000502020B2513139FD81818CBFF1B1B
        CEFF1D1DD0FF2020D3FF2222D6FF171787AF000000110B0B40633E3EBBFF8080
        E9FF2E2EDAFF2121D1FF1B1BB4FF0C0C4B970000002B0000000C0F0F6DA45F5F
        CEFF4C4CC7FF1010B7FF0505B2FF1919AFFF0000003200000010000000000000
        000000000000000000000000000502020B2510109AD81414C6FF1616C9FF1818
        CBFF1B1BCEFF1D1DD0FF131382B00000001200000003000000001D1DAAFF8888
        E6FF3C3CDAFF1F1FD2FF1818B5FF12126ABA0000002F0000000E121284C36969
        D2FF4B4BC7FF3C3CC5FF1B1BB7FF131383D1000000300000000E000000000000
        0000000000000000000502020B250E0E98D81010C2FF1212C4FF1414C6FF1616
        C8FF1818CAFF131395CB00000015000000040000000000000000151580C37676
        DAFF4949DBFF1D1DCFFF1616B7FF151580D1000000300000000E121284C36666
        D1FF4949C7FF3E3EC5FF2A2ABAFF131383D1000000300000000E000000000000
        00000000000502020B250C0C96D80C0CBEFF0E0EC0FF1010C2FF1212C4FF1414
        C6FF13139ED802020B2500000005000000000000000000000000151580C36767
        D2FF4F4FDAFF1A1ACDFF1414B6FF151580D1000000300000000E121284C36666
        D1FF4A4AC7FF3F3FC6FF2B2BBAFF131383D10000003200000010000000000000
        000502020B25090993D80A0ABBFF0B0BBCFF0D0DBEFF0E0EC0FF1010C2FF1010
        9AD802020B250000000500000000000000000000000000000000151580C36767
        D0FF4545D6FF1717CAFF1313B4FF151581D10000002F0000000E121284C26B6B
        D3FF4E4EC8FF4040C6FF3232BEFF131383D20000003900000016000000070202
        0B25090993D80707B8FF0808B9FF0A0ABBFF0B0BBCFF0C0CBEFF0E0E98D80202
        0B25000000050000000000000000000000000000000000000002151581C57373
        D7FF3838D0FF1414C6FF1111B0FF151581D00000002B0000000C0F0F6FA26161
        CFFF5757CAFF4141C6FF3838C1FF1919AFFF000000420000002802020B2C2626
        9BD82323BFFF1414BBFF0707B8FF0808B9FF0A0ABBFF0C0C96D802020B250000
        0005000000000000000000000000000000000000000002020B171C1CACFF8181
        DFFF1C1CC7FF1111C1FF1111ACFF11116BB800000024000000080A0A4E724E4E
        C8FF6767D0FF4242C6FF4040C6FF1D1DB2FF0909428E01010B4A28289CDA3636
        C4FF3535C4FF3434C5FF3030C4FF2222C0FF0F0F95D802020B25000000050000
        000000000000000000000000000000000000000000020A0A416C3232B7FF6464
        D8FF0F0FC1FF0E0EBBFF1313ABFF0C0C4C920000001B00000004040421312727
        B8FF7D7DD9FF4848C7FF4141C6FF2F2FBCFF151599E92A2A9CDD3A3AC4FF3838
        C4FF3636C4FF3535C4FF3434C4FF24249CD802020B2500000005000000000000
        0000000000000000000000000000000000020000000D171797E46868D0FF3737
        CBFF2424C5FF1D1DB8FF1A1AACFF050521590000001100000001000000001414
        9BE07070D6FF5959CBFF4343C7FF4141C6FF3333BFFF3D3DC5FF3B3BC5FF3A3A
        C4FF3838C4FF3636C4FF26269BD802020B250000000500000000000000000000
        00000000000000000000000000020000000D0E0E57923535B8FF6A6AD7FF2F2F
        C7FF2F2FC7FF1D1DAFFF181897E7000000220000000800000000000000000909
        43613737BFFF7979D8FF4949C8FF4242C6FF4141C6FF3F3FC6FF3D3DC5FF3B3B
        C5FF3A3AC4FF28289BDA02020B2B000000070000000000000000000000000000
        00000000000200000007000000120A0A41782323B1FF5C5CCFFF3030C6FF3030
        C6FF2929BDFF1A1AACFF0A0A417F000000120000000200000000000000000000
        000014149BE07373D8FF6464CFFF4646C7FF4242C6FF4141C6FF3F3FC6FF3D3D
        C5FF2A2A9CDD02020B4700000025000000150000000E0000000C0000000C0000
        000E00000015000000200B0B4C8B1C1CAFFF3434C3FF3131C5FF3131C5FF3030
        C4FF1F1FB0FF171798E60000001E000000070000000000000000000000000000
        000006062C412727B8FF8484DEFF5B5BCBFF4545C7FF4242C6FF4141C6FF3333
        BFFF121283D2080837810000004000000038000000300000002B0000002B0000
        003008083776131382CF2020B2FF2E2EC0FF3333C5FF3333C5FF3333C5FF2626
        B6FF1919AEFF06062C5C0000000C000000010000000000000000000000000000
        0000000000000C0C59812F2FBBFF8080DCFF5B5BCBFF4646C7FF4242C6FF3F3F
        C5FF2C2CBBFF1D1DB2FF1818A5F4131383D20E0E62AF0E0E62AD131383D01818
        A5F41D1DB1FF2929BAFF3535C4FF3535C4FF3535C4FF3535C4FF3B3BC3FF1D1D
        AEFF0D0D58940000001000000002000000000000000000000000000000000000
        000000000000000000000E0E6EA03030BBFF8484DEFF6565CFFF4A4AC8FF4343
        C7FF4141C6FF4040C6FF3838C1FF2E2EBBFF2B2BBAFF2A2ABAFF2C2CBBFF3333
        C0FF3939C4FF3838C4FF3737C4FF3737C4FF3B3BC6FF6969D6FF2B2BB6FF1010
        6CAE000000100000000300000000000000000000000000000000000000000000
        00000000000000000000000000000D0D63902727B8FF7474D8FF7B7BD8FF5B5B
        CCFF4949C7FF4242C6FF4141C6FF4040C6FF3E3EC5FF3E3EC5FF3C3CC5FF3B3B
        C5FF3B3BC5FF3A3AC4FF4141C6FF6161D2FF6A6AD4FF2828B6FF0E0E629D0000
        000D000000030000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000707385114149BE04848C6FF8181
        DEFF7F7FDBFF6969D1FF5959CBFF5050C8FF4C4CC7FF4848C7FF4848C7FF5252
        CAFF5C5CCEFF7373D8FF7C7CDCFF4747C4FF151599E40808375E000000080000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001010B100C0C59811414
        9BE03030BCFF5757CCFF7373D7FF7575D8FF8989E1FF8989E0FF7272D7FF7070
        D7FF5555CBFF3030BAFF151599E30C0C588902020B1800000003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000006062C410C0C5982111184C214148ED21818B0FF1818B0FF14148ED21212
        84C30C0C588706062C4700000005000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
    end
    object cxbRouting: TcxButton
      Left = 336
      Top = 8
      Width = 57
      Height = 57
      Caption = '&Routing'
      TabOrder = 5
      OnClick = cxbRoutingClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000035322F9F78736CFF979189FF6B645BFF423B30FF3D362AF92322
        20A91F1F1F991E1E1E940C0C0C3E0F0F0F4D14141465141414620C0C0C3E0808
        0826000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011111030121211400909
        092B0808082A84807BFFF0EBE5FFEBE5DDFFC8C1B8FF4B443AFF453D31FF2C29
        23C0302B23CE6F6453FF594D3BFF4C402DF72F281EBE1A1A187F171717720F0F
        0F4B0A0A0A330A0A0A310909092F0202020B0000000000000000000000000000
        000000000000000000000000000007060610504C4BAF9F9C9AFF75726FFF5B58
        55FF46433FF99B9792FFECE7E1FFE4DED7FFE8E2D9FF645D53FF554D42FF3D35
        29F7ABA192FFE8DECEFFD3C8B6FF8E826EFF6B5E49FF493D2AED1716156E1313
        13601212125B111111571010104E0A0A0A320000000000000000000000000000
        000000000000000000000000000066605FCFE4E0E0FFFCF9F7FFF3F0EDFF8582
        7FFF76726FFFCECAC5FFEAE5E0FFE4DFD8FFEBE5DCFF8C857BFF5E564BFF8D85
        78FFE7DED0FFD4CABAFFDBD1BFFFBCB09EFF4D402CFF443620FF1F1B15801010
        10510F0F0F4D0F0F0F490C0C0C3B0606061E0606061C04040416000000000000
        00000000000000000000000000009B9393FFFFFCFCFFFBF7F5FFF8F5F3FFE2DF
        DCFFE8E4E0FFF4F0EBFFE9E4DEFFE5E0D9FFE6E0D8FFEAE3DAFFEDE5DBFFEBE3
        D7FFD9D0C3FFD4CABBFFE4D9C9FF998E7CFF574B37FF483B26FF121110530D0D
        0D430D0D0D3F0C0C0C3A0B0B0B360A0A0A310707072306060620000000000000
        00000000000000000000000000005F5958AFFFFDFCFFFCF7F6FFF6F3F1FFF6F3
        F0FFF1EDEAFFECE8E4FFE9E4DFFFE5E0DAFFE3DDD5FFE0D9D0FFDDD6CCFFDDD5
        C9FFD8CFC3FFD6CDBEFFEEE4D6FF736857FF5C503DFF362D1ECE0B0B0B390A0A
        0A340A0A0A300909092C08080827030303100101010300000000000000000000
        0000090808102421224024212140534D4D9FDFDCDBFFFEF9F8FFF8F4F2FFF3F0
        EEFFF0EDEAFFEDE9E5FFEAE5E0FFE6E1DCFFE4DED7FFE1DBD3FFDED7CEFFDCD4
        CAFFDAD2C5FFD9D0C3FFEBE2D3FF7E7463FF645947FF403525E6615541F26154
        3EFF53452EFF3B301DC709080727040404130303030D01010103000000001210
        10209D8D8EEFC4B6B7FFA89B9BFFB0A6A6FFFFFCFCFFFEF9F9FFFAF5F4FFF4F1
        EFFFF1EEEBFFEEEAE7FFEFEBE7FFF1ECE7FFEDE8E2FFE7E1DAFFE0D9D1FFDDD6
        CCFFDBD3C8FFDAD1C5FFE0D7C9FFE5DBCCFFB9AE9EFFDFD4C2FFEBE0CCFFE2D6
        C1FF80735DFF6C5F48FF241D118200000002000000000000000000000000473D
        3E80F1E2E4FFFEF1F2FFFFF5F6FFFFF9F9FFFFFAFAFFFFFAFAFFFCF6F5FFF5F1
        F0FFEFECEAFFF0EDEAFFECE8E5FFECE7E3FFEEE9E3FFF6F0EAFFF9F3EAFFE8E1
        D8FFDDD6CCFFDCD4C8FFDBD2C5FFE2D9CAFFE6DCCCFFDED3C3FFDCD1BFFFECE0
        CDFFB6AA96FF786B56FF594B35FF090704200000000000000000000000009984
        87EFFEEEF0FFFCEAECFFFEEFF0FFFFF5F5FFFFF8F8FFFFFBFAFFECE6E5FFCCC8
        C7FFEBE8E6FFEDEAE7FFECE8E5FFEAE6E2FFE8E3DEFFE6E1DAFFEAE4DDFFFBF4
        ECFFF1EAE1FFDED7CCFFDDD5C9FFDDD4C7FFDDD4C5FFDED4C4FFDFD4C4FFEEE4
        D3FFDFD6C9FF8F836FFF685B46FF110E09400000000000000000000000007F6C
        6ECFF8E7E9FFFDECEEFFFDEDEEFFFFF2F2FFFFF7F7FFECE7E6FFC5BEBDFFF1EC
        EAFFF2EEECFFF1EEEBFFF1EEEBFFEFEBE7FFECE8E3FFE7E2DDFFE5E0D9FFE7E1
        D9FFFBF5ECFFEEE7DEFFE0D8CDFFDFD7CBFFDFD7CAFFE0D7C9FFEEE5D7FFF1E9
        DFFFBCB2A1FFA09583FF312A1E9F000000000000000000000000000000000907
        0710847476CFF8E9EBFFFEEEF0FFFFF0F1FFFFF5F5FFBEB5B4FFEEE6E5FFF8F2
        F0FFF8F4F2FFF9F6F4FFD5D2CFFF999592FFD3CFCBFFF3EEE9FFEAE5DFFFE6E0
        D9FFEBE5DDFFFDF7EEFFE5DED4FFE2DACFFFE2DACEFFEBE2D5FFE7E0D5FFB2A9
        9AFFA19787FF362F259F00000000000000000000000000000000000000000000
        00003B313370D9C8CAFFFDECEEFFFEEEEFFFDED1D1FFCCC1C1FFF8EFEEFFFDF6
        F6FFF6F1EFFF878482FF575554FF3B3A3ACF3F3D3B8F8D8984EFECE8E3FFEBE6
        E0FFE7E1DAFFF4EEE6FFF4EEE5FFE5DED4FFE4DDD2FFEBE3D7FFCDC5B8FF766D
        5FFF655C4EFF0F0E0B3000000000000000000000000000000000110D0E203A2F
        3070736162CFF7E7E9FFFCE8EAFFFDECEDFFC2B3B3FFE4D7D8FFFAF0EFFFFFFA
        FAFFC6C1C0FFA09F9FFF646464EF0505051000000000161515308E8A85EFF4EF
        EAFFE9E4DEFFEFE9E2FFFCF6EEFFE7E1D8FFE7E0D7FFE8E1D7FFE5DDD2FF9D95
        89FF7B7266FF544C40EF362F26AF221E1870050403100000000093787CEFE0C8
        CCFFFFEAEDFFFDEAECFFFBE6E8FFFCEAECFFB1A1A2FFECDDDEFFFBEFEFFFF7F2
        F2FFC4BFBFFFADADADFF2E2E2E800000000000000000000000003C3A3880DEDA
        D6FFEDE9E4FFEAE5DFFFFEF9F2FFECE6DFFFEAE4DBFFEAE4DAFFF0E9DFFFEEE7
        DCFFEBE3D8FFD0C8BCFF847C6FFF6B6356FF352F26AF00000000C1A5A9FFFBE1
        E5FFF6DCDFFFF8E0E3FFFAE4E6FFFCE8EAFFA99899FFEBDBDCFFF9EDEDFFE1D8
        D8FFA8A6A6FF818181FF141414400000000000000000000000001F1E1D40B9B5
        B1FFF2EEE9FFEDE9E4FFFAF5EFFFF1ECE5FFECE7DFFFEDE7DFFFEEE7DFFFEFE8
        DFFFF0E9DFFFF8F1E7FF9E968BFF7B7368FF3C362DBF00000000C1A3A8FFFADF
        E3FFF5DADEFFF7DEE1FFF9E2E4FFFBE6E8FFA79495FFE7D6D7FFF7E8E9FFD9CE
        CEFF8F8B8BFF696969FF1212124000000000000000000000000020201F40BCB8
        B5FFF4F0EDFFF0ECE8FFFBF6F1FFF3EEE8FFEFEAE4FFEFEAE3FFF0EAE3FFF1EB
        E3FFF2ECE3FFFAF3EAFFA49D93FF827B71FF47423ABF000000009B7C80EFE8CC
        D0FFFEE6E9FFFCE5E8FFF8DFE2FFFAE3E6FFAA9698FFE1CED0FFF2E2E3FFEFE2
        E2FF766E6EFF656565FF1A1A1A700000000000000000000000003B3A3970E4E1
        DFFFF5F2EFFFF3EFEBFFFDF9F5FFF3EEEAFFF2EDE8FFF2EDE7FFF6F1EAFFF8F3
        ECFFFAF4EDFFF6F0E8FF9B958DFF868077FF3E3A34AF00000000110C0D204232
        34807A5F63DFEFD8DBFFF8DFE2FFF9E1E4FFB39DA0FFD1BDBFFFEAD8DAFFFAEA
        EBFFA59899FF525050FF333333DF0303031000000000090808109D9A98EFFBF8
        F6FFF6F3F1FFF6F3F0FFFEFAF7FFF4F0EDFFF5F1ECFFF5F1ECFFF4EFEAFFC5C0
        BAFFB7B2ACFF736E67FF4F4B46BF35312D8F11100E3000000000000000000000
        000031252760D0B6B9FFFAE0E3FFF7DEE1FFD0B8BBFFB5A0A2FFE0CCCEFFF0DE
        DFFFF1E2E2FF7C7070FF363030FF292626CF312E2E60948E8EEFF7F4F4FFFDF8
        F7FFF9F5F4FFFAF7F5FFFBF8F6FFF7F4F1FFF7F3F0FFF9F5F1FFDFDBD6FFAFAB
        A6FFA09B96FF1B1A19400000000000000000000000000000000000000000110C
        0D20927378EFF7DDE0FFF8DCE0FFF7DCDFFFF8DFE2FFA38C8FFFCDB8BAFFE3CF
        D1FFF0DEE0FFFBECEDFFD8CBCCFF978C8CFFCEC6C6FFFFFBFAFFFFFAFAFFFEF9
        F8FFFBF6F5FFFEFBFAFFFBF8F6FFFAF7F5FFFAF7F4FFFCF9F6FFBDB9B6FF817D
        7AFF7A7672FF3A38367000000000000000000000000000000000000000007358
        5CBFF7D9DDFFF7D8DDFFF4D6DAFFF6D9DDFFF7DCE0FFE3CBCEFFA48D90FFD1BC
        BEFFE1CDCFFFEBDADBFFF3E4E4FFF8EAEAFFFAEEEEFFFBF0F0FFFAF1F0FFF9F1
        F0FFFDF8F7FFFFFCFCFFFEFBFAFFFEFAF9FFFDFAF8FFFDFAF8FFF6F3F0FFAAA6
        A3FF777370FF817D7AFF2A292860000000000000000000000000000000007C5D
        62CFFEDEE3FFF3D1D6FFF3D3D8FFF7DADEFFF6DADEFFF7DDE0FFCFB7BAFFAD96
        99FFCBB6B8FFDAC6C8FFE3D1D2FFE9D9DAFFECDEDEFFEEE1E1FFEEE2E2FFF9F1
        F0FFFFF8F8FFFFF8F8FFFFFAF9FFFFFAF9FFFFFBF9FFFEFBF9FFFEFBF9FFF4F1
        EFFFAFACA9FF878482FF7B7875FF151514300000000000000000000000003324
        2660D2AFB4FFFCE1E5FFFEEDEFFFF5DEE1FFFADEE2FFF6DADEFFF7DDE0FFEBD2
        D5FFBCA6A8FFBAA5A7FFCCB9BBFFD4C2C3FFD8C8C9FFDDCECEFFF4E6E7FFFEF2
        F2FFFEF3F3FFFEF4F4FFFEF5F4FFFEF7F6FFFEF9F8FFFDF8F6FFFCF7F6FFFCF8
        F7FFDCD9D7FFABA8A6FF928F8DFF1D1C1C400000000000000000000000000000
        000075585CCFBDA4A8FFA38186FF9F7E83FFF7DCE0FFF8DCE0FFF6DADEFFF7DC
        E0FFF8DFE2FFF3DCDFFFE7D1D4FFEDD9DBFFEEDCDDFFFCEBECFFFCECEDFFFCEE
        EFFFFDF0F0FFFDF1F1FFFDF3F3FFFBF3F2FFE3DBDAFFFDF5F5FFFDF6F5FFFEF8
        F6FFBDB7B6FFB2ADABFF615E5CBF000000000000000000000000000000000000
        000000000000110C0D2021181A40291E2050D1B2B6FFF8DADEFFF5D7DBFFF6DA
        DDFFF7DCDFFFF7DEE1FFF8E1E4FFF9E3E6FFFAE5E7FFFAE7E9FFFAE9EAFFFBEA
        EBFFFBECECFFFBEDEDFFF5EBEBFFA69A9AFF998E8EFF9F9595FFBEB5B4FFC2BA
        B9FFA49C9BFF968F8DFF21201F40000000000000000000000000000000000000
        00000000000000000000000000004B36398FF0D0D5FFF4D3D8FFF3D3D8FFF9DD
        E1FFF9DEE1FFF6DBDFFFF7DDE0FFF7DFE2FFF8E2E4FFF8E3E5FFF9E5E7FFF9E7
        E9FFF9E8E9FFF9E9EAFFF4E5E6FF7F7172FF685B5BFF625858CF1A1818302421
        2140242121401211112000000000000000000000000000000000000000000000
        00000000000000000000000000007C5F64BFFDDCE1FFF2CFD4FFF7D8DDFFF9EA
        ECFFEACFD3FFFEE6E9FFF9DFE2FFF6DCDFFFF7DFE2FFFCE7EAFFFEECEEFFFFEE
        F0FFF9E6E8FFF7E5E7FFF9E8EAFFAB9B9CFF776869FF7D6F6FFF110F0F200000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004C36398FD2AEB4FFFCDADFFFFFECEFFFC1A4
        A8FFA9888DFFB39599FFFADFE3FFF5D9DCFFF8DFE2FFE9D2D5FFB59EA1FFBFAA
        ACFFFEEBEDFFF6E2E4FFF8E5E7FFC9B7B8FF7E6C6EFF7F6E6FFF332D2D600000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003C2A2D70AD8A90FFB4959AFF9A75
        7BFF785A5EDF91757ADFFCDFE3FFF3D5D9FFF9DEE2FFD3BABDFFA68C8FFF8C73
        76FFC7B1B3FFFEE9EBFFF9E5E7FFC5B1B3FF958183FF826E70FF191616300000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000906061022181A400806
        0610000000006A5054BFFFE1E5FFF8DADEFFFDE2E5FFBFA2A6FFA98C90FF6652
        54BF5040429FB29A9DFF998183FF927A7DFF655556BF110E0E20000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002A1E2050937277EFC1A1A6FFC1A1A6FF96767BFF947579FF4233
        3580000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Layout = blGlyphTop
    end
  end
  object zGrid: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select Id_Item as Kode,Description as `Nama Barang` from tbl_Ite' +
        'm')
    Params = <>
    Left = 408
    Top = 16
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = zGrid
    Left = 440
    Top = 16
  end
  object zCust: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 480
    Top = 16
  end
  object ds2: TDataSource
    DataSet = zCust
    Left = 512
    Top = 16
  end
  object zqrRouting: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT *  FROM tbl_routing WHERE Id_Item = :Item order by Id asc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'Item'
        ParamType = ptUnknown
      end>
    Left = 544
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Item'
        ParamType = ptUnknown
      end>
  end
  object ds3: TDataSource
    AutoEdit = False
    DataSet = zqrRouting
    Left = 576
    Top = 16
  end
end
