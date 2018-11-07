object frmTmpControlPlan: TfrmTmpControlPlan
  Left = 146
  Top = 59
  Width = 1211
  Height = 631
  Caption = 'TMP Control Plan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label51: TLabel
    Left = 16
    Top = 50
    Width = 47
    Height = 13
    Caption = 'Kelompok'
  end
  object cxPg: TcxPageControl
    Left = 0
    Top = 0
    Width = 1195
    Height = 546
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 7
    TabOrder = 0
    OnChange = cxPgChange
    ClientRectBottom = 545
    ClientRectLeft = 1
    ClientRectRight = 1194
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detail / Dimensi'
      ImageIndex = 0
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1193
        Height = 524
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object cxGroupBox1: TcxGroupBox
          Left = 4
          Top = 12
          Caption = 'Detail'
          TabOrder = 0
          Height = 203
          Width = 912
          object Label2: TLabel
            Left = 17
            Top = 51
            Width = 62
            Height = 13
            Caption = 'Kode Barang'
          end
          object Label3: TLabel
            Left = 16
            Top = 121
            Width = 65
            Height = 13
            Caption = 'Nama Barang'
          end
          object Label4: TLabel
            Left = 16
            Top = 169
            Width = 68
            Height = 13
            Caption = 'Fungsi Produk'
          end
          object Label5: TLabel
            Left = 16
            Top = 145
            Width = 44
            Height = 13
            Caption = 'Customer'
          end
          object Label6: TLabel
            Left = 520
            Top = 121
            Width = 64
            Height = 13
            Caption = 'Base Material'
          end
          object Label7: TLabel
            Left = 520
            Top = 145
            Width = 64
            Height = 13
            Caption = 'Sheet / Tube'
          end
          object Label8: TLabel
            Left = 520
            Top = 169
            Width = 52
            Height = 13
            Caption = 'Berat Jenis'
          end
          object Label1: TLabel
            Left = 16
            Top = 74
            Width = 47
            Height = 13
            Caption = 'Kelompok'
          end
          object Label54: TLabel
            Left = 16
            Top = 98
            Width = 69
            Height = 13
            Caption = 'Sub Kelompok'
          end
          object Label58: TLabel
            Left = 17
            Top = 26
            Width = 19
            Height = 13
            Caption = 'Unit'
          end
          object cxtKode: TcxTextEdit
            Left = 104
            Top = 48
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 169
          end
          object cxtDeskripsi: TcxTextEdit
            Left = 104
            Top = 121
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 401
          end
          object cxlCustomer: TcxLookupComboBox
            Left = 104
            Top = 145
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Nama'
                FieldName = 'nama'
              end
              item
                Caption = 'Kode'
                FieldName = 'kode'
              end>
            Properties.ListSource = dsCust
            TabOrder = 2
            Width = 401
          end
          object cxtFungsi: TcxTextEdit
            Left = 104
            Top = 169
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 401
          end
          object cxCmbBase: TcxComboBox
            Left = 600
            Top = 121
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 185
          end
          object cxtSheet: TcxComboBox
            Left = 600
            Top = 145
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'SHEET'
              'TUBE')
            TabOrder = 5
            Width = 185
          end
          object cxsBeratJenis: TcxSpinEdit
            Left = 600
            Top = 169
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 185
          end
          object cxChkAktif: TcxCheckBox
            Left = 275
            Top = 48
            Caption = 'Aktif'
            TabOrder = 7
            Visible = False
            Width = 66
          end
          object cxlKelompok: TcxLookupComboBox
            Left = 104
            Top = 72
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Kode'
                FieldName = 'kode'
              end
              item
                Caption = 'Kelompok'
                FieldName = 'kelompok'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsKelompok
            Properties.OnChange = cxlKelompokPropertiesChange
            TabOrder = 8
            Width = 77
          end
          object cxlSubKelompok: TcxLookupComboBox
            Left = 104
            Top = 96
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Kode'
                FieldName = 'kode'
              end
              item
                Caption = 'Sub Kelompok'
                FieldName = 'sub_kelompok'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsSubKelompok
            Properties.OnChange = cxlSubKelompokPropertiesChange
            TabOrder = 9
            Width = 77
          end
          object cxtKelompok: TcxTextEdit
            Left = 184
            Top = 72
            TabOrder = 10
            Width = 292
          end
          object cxtSubKelompok: TcxTextEdit
            Left = 184
            Top = 96
            TabOrder = 11
            Width = 292
          end
          object cxlUniKTG: TcxLookupComboBox
            Left = 104
            Top = 23
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'unit'
            Properties.ListColumns = <
              item
                Caption = 'Unit'
                FieldName = 'unit'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsUnitKTG
            Properties.OnChange = cxlKelompokPropertiesChange
            TabOrder = 12
            Width = 103
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 4
          Top = 218
          Caption = 'Dimensi Produk Jadi'
          TabOrder = 1
          Height = 300
          Width = 912
          object Label9: TLabel
            Left = 16
            Top = 60
            Width = 129
            Height = 13
            Caption = 'Tebal / Thickness Total ('#181')'
          end
          object Label10: TLabel
            Left = 16
            Top = 84
            Width = 71
            Height = 13
            Caption = 'Berat Kotor (gr)'
          end
          object Label11: TLabel
            Left = 16
            Top = 132
            Width = 81
            Height = 13
            Caption = 'Berat / Meter (gr)'
          end
          object Label12: TLabel
            Left = 16
            Top = 108
            Width = 75
            Height = 13
            Caption = 'Berat Bersih (gr)'
          end
          object Label13: TLabel
            Left = 16
            Top = 156
            Width = 159
            Height = 13
            Caption = 'Berat Produk Jadi + Aksesoris (gr)'
          end
          object Label14: TLabel
            Left = 320
            Top = 60
            Width = 78
            Height = 13
            Caption = 'Lebar Buka (cm)'
          end
          object Label15: TLabel
            Left = 320
            Top = 84
            Width = 72
            Height = 13
            Caption = 'Lebar Jadi (cm)'
          end
          object Label16: TLabel
            Left = 320
            Top = 108
            Width = 62
            Height = 13
            Caption = 'Panjang (cm)'
          end
          object Label17: TLabel
            Left = 320
            Top = 132
            Width = 84
            Height = 13
            Caption = 'Panjang Jadi (cm)'
          end
          object Label18: TLabel
            Left = 320
            Top = 156
            Width = 78
            Height = 13
            Caption = 'Lebar Tube (cm)'
          end
          object Label19: TLabel
            Left = 560
            Top = 60
            Width = 92
            Height = 13
            Caption = 'Panjang Plong (cm)'
          end
          object Label20: TLabel
            Left = 560
            Top = 84
            Width = 80
            Height = 13
            Caption = 'Lebar Plong (cm)'
          end
          object Label21: TLabel
            Left = 560
            Top = 108
            Width = 65
            Height = 13
            Caption = 'Top Flod (cm)'
          end
          object Label22: TLabel
            Left = 560
            Top = 132
            Width = 56
            Height = 13
            Caption = 'Gusset (cm)'
          end
          object Label23: TLabel
            Left = 560
            Top = 156
            Width = 87
            Height = 13
            Caption = 'Lebar Handle (cm)'
          end
          object Label24: TLabel
            Left = 8
            Top = 180
            Width = 828
            Height = 13
            Caption = 
              '----------------------------------------------------------------' +
              '----------------------------------------------------- Aksesoris ' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '--------------'
          end
          object Label25: TLabel
            Left = 16
            Top = 196
            Width = 82
            Height = 13
            Caption = 'Aksesoris Berupa'
          end
          object Label26: TLabel
            Left = 560
            Top = 196
            Width = 100
            Height = 13
            Caption = 'Berat Aksesoris Total'
          end
          object Label27: TLabel
            Left = 16
            Top = 220
            Width = 93
            Height = 13
            Caption = 'Tebal Aksesoris ('#181') '
          end
          object Label28: TLabel
            Left = 280
            Top = 220
            Width = 98
            Height = 13
            Caption = 'Lebar Aksesoris (cm)'
          end
          object Label29: TLabel
            Left = 560
            Top = 220
            Width = 110
            Height = 13
            Caption = 'Panjang Aksesoris (cm)'
          end
          object Label30: TLabel
            Left = 16
            Top = 244
            Width = 98
            Height = 13
            Caption = 'AIR HOLE Size (mm)'
          end
          object Label31: TLabel
            Left = 280
            Top = 244
            Width = 30
            Height = 13
            Caption = '%  Cut'
          end
          object Label57: TLabel
            Left = 16
            Top = 39
            Width = 155
            Height = 13
            Caption = 'Thickness Outer / Middle / Inner'
          end
          object cxtAksesoris: TcxTextEdit
            Left = 160
            Top = 196
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 377
          end
          object cxsTebal: TcxSpinEdit
            Left = 184
            Top = 60
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 1
            Width = 129
          end
          object cxsBeratKotor: TcxSpinEdit
            Left = 184
            Top = 84
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 2
            Width = 129
          end
          object cxsBeratBersih: TcxSpinEdit
            Left = 184
            Top = 108
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 3
            Width = 129
          end
          object cxsBeratMeter: TcxSpinEdit
            Left = 184
            Top = 132
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 4
            Width = 129
          end
          object cxsBeratJadi: TcxSpinEdit
            Left = 184
            Top = 156
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 5
            Width = 129
          end
          object cxsLebarBuka: TcxSpinEdit
            Left = 416
            Top = 60
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 129
          end
          object cxsLebarJadi: TcxSpinEdit
            Left = 416
            Top = 84
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 7
            Width = 129
          end
          object cxsPanjang: TcxSpinEdit
            Left = 416
            Top = 108
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 8
            Width = 129
          end
          object cxsPanjangJadi: TcxSpinEdit
            Left = 416
            Top = 132
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 9
            Width = 129
          end
          object cxsLebarTube: TcxSpinEdit
            Left = 416
            Top = 156
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 10
            Width = 129
          end
          object cxsPanjangPlong: TcxSpinEdit
            Left = 664
            Top = 60
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 11
            Width = 129
          end
          object cxsLebarPlong: TcxSpinEdit
            Left = 664
            Top = 84
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 12
            Width = 129
          end
          object cxsTopFlod: TcxSpinEdit
            Left = 664
            Top = 108
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 13
            Width = 129
          end
          object cxsGusset: TcxSpinEdit
            Left = 664
            Top = 132
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 14
            Width = 129
          end
          object cxsLebarHandle: TcxSpinEdit
            Left = 664
            Top = 156
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 15
            Width = 129
          end
          object cxsBeratAks: TcxSpinEdit
            Left = 680
            Top = 196
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 16
            Width = 113
          end
          object cxsPanjangAks: TcxSpinEdit
            Left = 680
            Top = 220
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 17
            Width = 113
          end
          object cxsTebalAks: TcxSpinEdit
            Left = 160
            Top = 220
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 18
            Width = 113
          end
          object cxsAirHole: TcxSpinEdit
            Left = 160
            Top = 244
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 19
            Width = 113
          end
          object cxsLebarAks: TcxSpinEdit
            Left = 384
            Top = 220
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 20
            Width = 113
          end
          object cxsCut: TcxSpinEdit
            Left = 384
            Top = 244
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 21
            Width = 113
          end
          object cxsThicknessOL: TcxSpinEdit
            Left = 184
            Top = 35
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            Properties.OnChange = cxsThicknessOLPropertiesChange
            TabOrder = 22
            Width = 129
          end
          object cxsThicknessMiddle: TcxSpinEdit
            Left = 318
            Top = 35
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            Properties.OnChange = cxsThicknessOLPropertiesChange
            TabOrder = 23
            Width = 129
          end
          object cxsThicknessInner: TcxSpinEdit
            Left = 452
            Top = 35
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            Properties.OnChange = cxsThicknessOLPropertiesChange
            TabOrder = 24
            Width = 129
          end
          object btnHitungBerat: TButton
            Left = 830
            Top = 12
            Width = 75
            Height = 25
            Caption = 'Hitung Berat'
            TabOrder = 25
            OnClick = btnHitungBeratClick
          end
        end
        object cxGroupBox3: TcxGroupBox
          Left = 4
          Top = 534
          Caption = 'Visual Produk'
          TabOrder = 2
          Height = 129
          Width = 912
          object Label32: TLabel
            Left = 16
            Top = 24
            Width = 71
            Height = 13
            Caption = 'Bentuk Produk'
          end
          object Label33: TLabel
            Left = 16
            Top = 48
            Width = 71
            Height = 13
            Caption = 'Desain Printing'
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
        object Panel2: TPanel
          Left = 975
          Top = 381
          Width = 25
          Height = 316
          BevelOuter = bvNone
          TabOrder = 3
        end
        object cxGroupBox7: TcxGroupBox
          Left = 4
          Top = 668
          Caption = 'Material Yang Disarankan '
          TabOrder = 4
          Height = 67
          Width = 1137
          object cxGrid5: TcxGrid
            Left = 8
            Top = 112
            Width = 1063
            Height = 195
            TabOrder = 0
            Visible = False
            object cxTblMatSaran: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Insert.Visible = False
              NavigatorButtons.Append.Visible = True
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '#,#0.00'
                  Kind = skSum
                  Column = cxCol_MS_Layer1
                end
                item
                  Format = '#,#0.00'
                  Kind = skSum
                  Column = cxCol_MS_Layer2
                end
                item
                  Format = '#,#0.00'
                  Kind = skSum
                  Column = cxCol_MS_Layer3
                end
                item
                  Format = '#,#0.00'
                  Kind = skSum
                  Column = cxCol_MS_Mono
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.OnNewRecord = cxTblMatSaranDataControllerNewRecord
              DataController.OnRecordChanged = cxTblMatSaranDataControllerRecordChanged
              OptionsData.Appending = True
              OptionsView.Navigator = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              object cxCol_MS_Bahan: TcxGridColumn
                Caption = 'Bahan'
                RepositoryItem = cxEditRepository1ComboBoxItem1
                Options.Sorting = False
                Width = 116
              end
              object cxCol_MS_KodeBrg: TcxGridColumn
                Caption = 'Kode Barang'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Width = 92
              end
              object cxCol_MS_Deskripsi: TcxGridColumn
                Caption = 'Deskripsi'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    Caption = 'Deskripsi'
                    FieldName = 'deskripsi'
                  end>
                Properties.ListSource = dsBB
                HeaderAlignmentHorz = taCenter
                Width = 262
              end
              object cxCol_MS_Layer1: TcxGridColumn
                Caption = 'Layer 1'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_MS_Layer2: TcxGridColumn
                Caption = 'Layer 2'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_MS_Layer3: TcxGridColumn
                Caption = 'Layer 3'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_MS_Mono: TcxGridColumn
                Caption = 'Mono'
                DataBinding.ValueType = 'Float'
                PropertiesClassName = 'TcxSpinEditProperties'
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ValueType = vtFloat
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxTblMatSaran
            end
          end
          object cxs_MS_Out: TcxSpinEdit
            Left = 37
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Properties.OnChange = cxs_MS_OutPropertiesChange
            TabOrder = 1
            Width = 79
          end
          object cxLabel16: TcxLabel
            Left = 10
            Top = 30
            Caption = 'Out'
          end
          object cxs_MS_Mid: TcxSpinEdit
            Left = 148
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Properties.OnChange = cxs_MS_OutPropertiesChange
            TabOrder = 3
            Width = 79
          end
          object cxLabel17: TcxLabel
            Left = 121
            Top = 30
            Caption = 'Mid'
          end
          object cxLabel18: TcxLabel
            Left = 232
            Top = 30
            Caption = 'In'
          end
          object cxs_MS_In: TcxSpinEdit
            Left = 251
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Properties.OnChange = cxs_MS_OutPropertiesChange
            TabOrder = 6
            Width = 79
          end
          object cxLabel19: TcxLabel
            Left = 334
            Top = 30
            Caption = 'Total'
          end
          object cxs_MS_Total: TcxSpinEdit
            Left = 366
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ReadOnly = True
            Properties.ValueType = vtFloat
            Style.Color = clMoneyGreen
            TabOrder = 8
            Width = 79
          end
          object cxLabel20: TcxLabel
            Left = 450
            Top = 30
            Caption = '% Out'
          end
          object cxs_MS_POut: TcxSpinEdit
            Left = 486
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ReadOnly = True
            Properties.ValueType = vtFloat
            Style.Color = clMoneyGreen
            TabOrder = 10
            Width = 79
          end
          object cxLabel21: TcxLabel
            Left = 570
            Top = 30
            Caption = '% Mid'
          end
          object cxs_MS_PMid: TcxSpinEdit
            Left = 606
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ReadOnly = True
            Properties.ValueType = vtFloat
            Style.Color = clMoneyGreen
            TabOrder = 12
            Width = 79
          end
          object cxLabel22: TcxLabel
            Left = 690
            Top = 30
            Caption = '% In'
          end
          object cxs_MS_PIn: TcxSpinEdit
            Left = 719
            Top = 28
            Properties.DisplayFormat = '#,#0.00'
            Properties.EditFormat = '#,#0.00'
            Properties.ReadOnly = True
            Properties.ValueType = vtFloat
            Style.Color = clMoneyGreen
            TabOrder = 14
            Width = 79
          end
        end
        object cxGroupBox6: TcxGroupBox
          Left = 4
          Top = 742
          Caption = 'Critical Point'
          TabOrder = 5
          Height = 397
          Width = 1137
          object cxGrid6: TcxGrid
            Left = 8
            Top = 20
            Width = 805
            Height = 200
            TabOrder = 2
            object cxTblCriticalPoint_21: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxTblCriticalPoint_21CustomDrawCell
              OnEditing = cxTblCriticalPoint_21Editing
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxCol_CP_Ket_21: TcxGridColumn
                Caption = 'Keterangan'
                Options.Sorting = False
                Width = 107
              end
              object cxCol_CP_Ukuran: TcxGridColumn
                Caption = 'Ukuran'
                HeaderAlignmentHorz = taCenter
                Width = 138
              end
              object cxCol_CP_Min: TcxGridColumn
                Caption = 'Min'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxCol_CP_Max: TcxGridColumn
                Caption = 'Max'
                HeaderAlignmentHorz = taCenter
                Width = 437
              end
            end
            object cxGridLevel4: TcxGridLevel
              GridView = cxTblCriticalPoint_21
            end
          end
          object cxGrid7: TcxGrid
            Left = 8
            Top = 226
            Width = 805
            Height = 157
            TabOrder = 3
            object cxTblCriticalPoint_22: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxTblCriticalPoint_22CustomDrawCell
              OnEditing = cxTblCriticalPoint_22Editing
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              object cxGridColumn11: TcxGridColumn
                Caption = 'Keterangan'
                Options.Sorting = False
                Width = 107
              end
              object cxGridColumn12: TcxGridColumn
                Caption = 'Ukuran'
                HeaderAlignmentHorz = taCenter
                Width = 138
              end
              object cxGridColumn13: TcxGridColumn
                Caption = 'Min'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxGridColumn14: TcxGridColumn
                Caption = 'Max'
                HeaderAlignmentHorz = taCenter
                Width = 437
              end
            end
            object cxGridLevel5: TcxGridLevel
              GridView = cxTblCriticalPoint_22
            end
          end
          object cxGrid3: TcxGrid
            Left = 794
            Top = 26
            Width = 452
            Height = 200
            TabOrder = 0
            Visible = False
            object cxTblCriticalPoint: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxTblCriticalPointCustomDrawCell
              OnEditing = cxTblCriticalPointEditing
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              DataController.OnBeforePost = cxTblCriticalPointDataControllerBeforePost
              OptionsView.GroupByBox = False
              object cxCol_CP_Ket: TcxGridColumn
                Caption = 'Keterangan'
                Options.Sorting = False
                Width = 107
              end
              object cxCol_CP_1: TcxGridColumn
                Caption = '1'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_CP_2: TcxGridColumn
                Caption = '2'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_CP_3: TcxGridColumn
                Caption = '3'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_CP_4: TcxGridColumn
                Caption = '4'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxCol_CP_5: TcxGridColumn
                Caption = '5'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxTblCriticalPoint
            end
          end
          object cxGrid4: TcxGrid
            Left = 794
            Top = 227
            Width = 452
            Height = 157
            TabOrder = 1
            Visible = False
            object cxTblCriticalPoint2: TcxGridTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxTblCriticalPoint2CustomDrawCell
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              DataController.OnBeforePost = cxTblCriticalPoint2DataControllerBeforePost
              OptionsView.GroupByBox = False
              object cxGridColumn1: TcxGridColumn
                Caption = 'Keterangan'
                Options.Sorting = False
                Width = 107
              end
              object cxGridColumn2: TcxGridColumn
                Caption = '1'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxGridColumn3: TcxGridColumn
                Caption = '2'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxGridColumn4: TcxGridColumn
                Caption = '3'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxGridColumn5: TcxGridColumn
                Caption = '4'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxGridColumn6: TcxGridColumn
                Caption = '5'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxTblCriticalPoint2
            end
          end
        end
        object Panel3: TPanel
          Left = 943
          Top = 1755
          Width = 185
          Height = 186
          BevelOuter = bvNone
          Caption = 'Panel2'
          TabOrder = 6
        end
        object cxGroupBox8: TcxGroupBox
          Left = 4
          Top = 1145
          Caption = 'Toleransi Dimensi Produk'
          TabOrder = 7
          Height = 101
          Width = 912
          object cxLabel8: TcxLabel
            Left = 10
            Top = 20
            Caption = 'Toleransi Tebal Film ('#181')'
          end
          object cxLabel9: TcxLabel
            Left = 10
            Top = 45
            Caption = 'Toleransi Repeat Print (cm)'
          end
          object cxLabel10: TcxLabel
            Left = 10
            Top = 70
            Caption = 'Toleransi Berat Jadi'
          end
          object cxLabel11: TcxLabel
            Left = 290
            Top = 20
            Caption = 'Toleransi Lebar Film (cm)'
          end
          object cxLabel12: TcxLabel
            Left = 290
            Top = 45
            Caption = 'Toleransi Gbr dr Tepi Kanan (cm)'
          end
          object cxLabel13: TcxLabel
            Left = 290
            Top = 70
            Caption = 'Toleransi Panjang Jadi'
          end
          object cxt_td_TebalFilm: TcxTextEdit
            Left = 158
            Top = 17
            TabOrder = 6
            Width = 121
          end
          object cxt_td_RepeatFilm: TcxTextEdit
            Left = 158
            Top = 42
            TabOrder = 7
            Width = 121
          end
          object cxt_td_BeratJadi: TcxTextEdit
            Left = 158
            Top = 67
            TabOrder = 8
            Width = 121
          end
          object cxt_td_LebarFilm: TcxTextEdit
            Left = 456
            Top = 17
            TabOrder = 9
            Width = 121
          end
          object cxt_td_GbrTepiKanan: TcxTextEdit
            Left = 456
            Top = 42
            TabOrder = 10
            Width = 121
          end
          object cxt_td_PanjangJadi: TcxTextEdit
            Left = 456
            Top = 67
            TabOrder = 11
            Width = 121
          end
          object cxLabel14: TcxLabel
            Left = 588
            Top = 20
            Caption = 'Toleransi Berat / Meter (gr)'
          end
          object cxt_td_BeratPerMeter: TcxTextEdit
            Left = 754
            Top = 17
            TabOrder = 13
            Width = 121
          end
          object cxLabel15: TcxLabel
            Left = 588
            Top = 45
            Caption = 'Toleransi Gbr dr Tepi Kiri (cm)'
          end
          object cxt_td_GbrTepiKiri: TcxTextEdit
            Left = 754
            Top = 42
            TabOrder = 15
            Width = 121
          end
        end
        object cxGroupBox10: TcxGroupBox
          Left = 4
          Top = 1252
          Caption = 'Treat Detail'
          TabOrder = 8
          Height = 77
          Width = 912
          object cxLabel23: TcxLabel
            Left = 10
            Top = 20
            Caption = 'Treat Luar (Dyne)'
          end
          object cxLabel24: TcxLabel
            Left = 10
            Top = 45
            Caption = 'Treat Dalam (Dyne)'
          end
          object cxLabel26: TcxLabel
            Left = 290
            Top = 20
            Caption = 'Pola treat Luar'
          end
          object cxLabel27: TcxLabel
            Left = 290
            Top = 45
            Caption = 'Pola Treat Dalam'
          end
          object cxtPolaTreatLuar: TcxTextEdit
            Left = 382
            Top = 18
            TabOrder = 4
            Width = 515
          end
          object cxtPolaTreatDalam: TcxTextEdit
            Left = 382
            Top = 43
            TabOrder = 5
            Width = 515
          end
          object cxsTreatLuar: TcxSpinEdit
            Left = 160
            Top = 16
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            TabOrder = 6
            Width = 121
          end
          object cxsTreatDalam: TcxSpinEdit
            Left = 160
            Top = 40
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            TabOrder = 7
            Width = 121
          end
        end
        object cxGroupBox11: TcxGroupBox
          Left = 4
          Top = 1336
          Caption = 'Printing'
          TabOrder = 9
          Height = 381
          Width = 912
          object cxLabel25: TcxLabel
            Left = 18
            Top = 92
            Caption = 'Jumlah Warna'
          end
          object cxLabel28: TcxLabel
            Left = 18
            Top = 117
            Caption = 'Detail Warna'
          end
          object cxLabel29: TcxLabel
            Left = 114
            Top = 68
            Caption = 'Sisi 1'
          end
          object cxLabel30: TcxLabel
            Left = 434
            Top = 69
            Caption = 'Sisi 2'
          end
          object cxtDetailWarna1: TcxTextEdit
            Left = 110
            Top = 122
            TabOrder = 4
            Width = 307
          end
          object cxtDetailWarna2: TcxTextEdit
            Left = 432
            Top = 123
            TabOrder = 5
            Width = 433
          end
          object cxsJmlWarna1: TcxSpinEdit
            Left = 112
            Top = 96
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 121
          end
          object cxsJmlWarna2: TcxSpinEdit
            Left = 432
            Top = 96
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 7
            Width = 121
          end
          object cxLabel31: TcxLabel
            Left = 18
            Top = 156
            Caption = 'Jarak Gambar pada Cylinder'
          end
          object cxLabel32: TcxLabel
            Left = 18
            Top = 180
            Caption = 'Tepi Kiri (cm)'
          end
          object cxLabel33: TcxLabel
            Left = 18
            Top = 205
            Caption = 'Tepi Kanan (cm)'
          end
          object cxLabel34: TcxLabel
            Left = 18
            Top = 228
            Caption = 'Tepi Atas (cm)'
          end
          object cxLabel35: TcxLabel
            Left = 18
            Top = 253
            Caption = 'Tepi Bawah (cm)'
          end
          object cxLabel36: TcxLabel
            Left = 18
            Top = 276
            Caption = 'Lebar (cm)'
          end
          object cxLabel37: TcxLabel
            Left = 18
            Top = 301
            Caption = 'Panjang (cm)'
          end
          object cxLabel38: TcxLabel
            Left = 18
            Top = 324
            Caption = 'Toleransi Registrasi/Overlapping (mm)'
          end
          object cxLabel39: TcxLabel
            Left = 18
            Top = 349
            Caption = 'Arah Gulungan'
          end
          object cxLabel40: TcxLabel
            Left = 434
            Top = 172
            Caption = 'Arah Film'
          end
          object cxLabel41: TcxLabel
            Left = 434
            Top = 197
            Caption = 'Jumlah Design (MD)'
          end
          object cxLabel42: TcxLabel
            Left = 434
            Top = 220
            Caption = 'Cm MD'
          end
          object cxLabel43: TcxLabel
            Left = 434
            Top = 245
            Caption = 'Jumlah Design (TD)'
          end
          object cxLabel44: TcxLabel
            Left = 434
            Top = 268
            Caption = 'Cm TD'
          end
          object cxLabel45: TcxLabel
            Left = 434
            Top = 293
            Caption = 'Jumlah Cylinder'
          end
          object cxLabel46: TcxLabel
            Left = 434
            Top = 316
            Caption = 'Keliling (cm)'
          end
          object cxLabel47: TcxLabel
            Left = 434
            Top = 341
            Caption = 'Repeat Print (cm)'
          end
          object cxsTepiKiri: TcxSpinEdit
            Left = 240
            Top = 176
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 25
            Width = 121
          end
          object cxsTepiKanan: TcxSpinEdit
            Left = 240
            Top = 200
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 26
            Width = 121
          end
          object cxsTepiAtas: TcxSpinEdit
            Left = 240
            Top = 224
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 27
            Width = 121
          end
          object cxsTepiBawah: TcxSpinEdit
            Left = 240
            Top = 248
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 28
            Width = 121
          end
          object cxsLebar: TcxSpinEdit
            Left = 240
            Top = 272
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 29
            Width = 121
          end
          object cxsPanjangPrint: TcxSpinEdit
            Left = 240
            Top = 296
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 30
            Width = 121
          end
          object cxsToleransi: TcxSpinEdit
            Left = 240
            Top = 320
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 31
            Width = 121
          end
          object cxtArahGulung: TcxTextEdit
            Left = 238
            Top = 346
            TabOrder = 32
            Width = 179
          end
          object cxtArahFilm: TcxTextEdit
            Left = 550
            Top = 170
            TabOrder = 33
            Width = 179
          end
          object cxsJumlahMD: TcxSpinEdit
            Left = 552
            Top = 192
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 34
            Width = 121
          end
          object cxsCmMD: TcxSpinEdit
            Left = 552
            Top = 216
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 35
            Width = 121
          end
          object cxsJumlahTD: TcxSpinEdit
            Left = 552
            Top = 240
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 36
            Width = 121
          end
          object cxsCmTD: TcxSpinEdit
            Left = 552
            Top = 264
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 37
            Width = 121
          end
          object cxsCylinder: TcxSpinEdit
            Left = 552
            Top = 288
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 38
            Width = 121
          end
          object cxsKeliling: TcxSpinEdit
            Left = 552
            Top = 312
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 39
            Width = 121
          end
          object cxsRepeatPrint: TcxSpinEdit
            Left = 552
            Top = 336
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 40
            Width = 121
          end
          object cxLabel48: TcxLabel
            Left = 18
            Top = 20
            Caption = 'Register/Random'
          end
          object cxLabel49: TcxLabel
            Left = 18
            Top = 45
            Caption = 'Nama Design'
          end
          object cxtRegister: TcxTextEdit
            Left = 120
            Top = 16
            Properties.CharCase = ecUpperCase
            TabOrder = 43
            Width = 121
          end
          object cxtDesign: TcxTextEdit
            Left = 120
            Top = 40
            Properties.CharCase = ecUpperCase
            TabOrder = 44
            Width = 265
          end
        end
        object cxGroupBox12: TcxGroupBox
          Left = 4
          Top = 1720
          Caption = 'Gusset  dan Converting'
          TabOrder = 10
          Height = 226
          Width = 912
          object cxLabel50: TcxLabel
            Left = 10
            Top = 20
            Caption = 'GUSSET'
          end
          object cxLabel51: TcxLabel
            Left = 10
            Top = 45
            Caption = 'Jenis Gusset'
          end
          object cxLabel52: TcxLabel
            Left = 290
            Top = 20
            Caption = 'CONVERTING'
          end
          object cxLabel53: TcxLabel
            Left = 290
            Top = 45
            Caption = 'Keterangan'
          end
          object cxLabel54: TcxLabel
            Left = 10
            Top = 69
            Caption = 'Proses'
          end
          object cxLabel55: TcxLabel
            Left = 10
            Top = 93
            Caption = 'Lebar Jadi'
          end
          object cxLabel56: TcxLabel
            Left = 10
            Top = 117
            Caption = 'Arah Film'
          end
          object cxLabel57: TcxLabel
            Left = 10
            Top = 141
            Caption = 'Toleransi Gusset'
          end
          object cxLabel58: TcxLabel
            Left = 290
            Top = 69
            Caption = 'Jarak Las Sudut (Sisi Tegak)'
          end
          object cxLabel59: TcxLabel
            Left = 290
            Top = 93
            Caption = 'Panjang Las Sudut (Sisi Miring)'
          end
          object cxLabel60: TcxLabel
            Left = 290
            Top = 117
            Caption = 'Arah Film'
          end
          object cxLabel61: TcxLabel
            Left = 290
            Top = 141
            Caption = 'Jarak Gambar vs Atas (cm)'
          end
          object cxLabel62: TcxLabel
            Left = 290
            Top = 165
            Caption = 'Jarak Gambar vs Bawah (cm)'
          end
          object cxtG_Jenis: TcxTextEdit
            Left = 102
            Top = 45
            TabOrder = 13
            Width = 179
          end
          object cxtG_Proses: TcxTextEdit
            Left = 102
            Top = 69
            TabOrder = 14
            Width = 179
          end
          object cxtG_Arah: TcxTextEdit
            Left = 102
            Top = 117
            TabOrder = 15
            Width = 179
          end
          object cxtC_Keterangan: TcxTextEdit
            Left = 454
            Top = 45
            TabOrder = 16
            Width = 179
          end
          object cxtC_Arah: TcxTextEdit
            Left = 454
            Top = 117
            TabOrder = 17
            Width = 179
          end
          object cxsG_lebar: TcxSpinEdit
            Left = 104
            Top = 93
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 18
            Width = 121
          end
          object cxsG_Toleransi: TcxSpinEdit
            Left = 104
            Top = 141
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 19
            Width = 121
          end
          object cxsC_Jarak: TcxSpinEdit
            Left = 456
            Top = 69
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 20
            Width = 121
          end
          object cxsC_panjang: TcxSpinEdit
            Left = 456
            Top = 93
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 21
            Width = 121
          end
          object cxsC_GA: TcxSpinEdit
            Left = 456
            Top = 141
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 22
            Width = 121
          end
          object cxsC_GB: TcxSpinEdit
            Left = 456
            Top = 165
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 23
            Width = 121
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Property / Routing'
      ImageIndex = 1
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 1193
        Height = 524
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object cxGroupBox4: TcxGroupBox
          Left = -6
          Top = 9
          Caption = 'Property Produksi'
          TabOrder = 0
          Height = 312
          Width = 909
          object Label37: TLabel
            Left = 16
            Top = 40
            Width = 167
            Height = 13
            Caption = 'Tensile / Strength / Break / TD (N)'
          end
          object Label38: TLabel
            Left = 16
            Top = 64
            Width = 169
            Height = 13
            Caption = 'Tensile / Strength / Break / MD (N)'
          end
          object Label39: TLabel
            Left = 16
            Top = 88
            Width = 177
            Height = 13
            Caption = 'Tensile / Elongation / Break / TD (%)'
          end
          object Label40: TLabel
            Left = 16
            Top = 112
            Width = 179
            Height = 13
            Caption = 'Tensile / Elongation / Break / MD (%)'
          end
          object Label41: TLabel
            Left = 16
            Top = 136
            Width = 129
            Height = 13
            Caption = 'Tear Resistance / TD (mN)'
          end
          object Label42: TLabel
            Left = 16
            Top = 160
            Width = 131
            Height = 13
            Caption = 'Tear Resistance / MD (mN)'
          end
          object Label43: TLabel
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
          object Label44: TLabel
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
          object Label45: TLabel
            Left = 478
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
          object Label46: TLabel
            Left = 16
            Top = 184
            Width = 116
            Height = 13
            Caption = 'Puncture Resistance (N)'
          end
          object Label47: TLabel
            Left = 16
            Top = 208
            Width = 162
            Height = 13
            Caption = 'Dart Drop Impact (g F 50% Failure)'
          end
          object Label48: TLabel
            Left = 16
            Top = 232
            Width = 58
            Height = 13
            Caption = 'Opasitas (%)'
          end
          object Label49: TLabel
            Left = 16
            Top = 256
            Width = 127
            Height = 13
            Caption = 'Acuan Standar Warna Film'
          end
          object Label52: TLabel
            Left = 624
            Top = 24
            Width = 58
            Height = 13
            Caption = 'Critical Point'
          end
          object Label50: TLabel
            Left = 16
            Top = 280
            Width = 130
            Height = 13
            Caption = 'Unit Set / Satuan Inventory'
          end
          object Label53: TLabel
            Left = 351
            Top = 24
            Width = 60
            Height = 13
            Caption = 'STANDAR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxsMinTSTD: TcxSpinEdit
            Left = 224
            Top = 40
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 0
            Width = 121
          end
          object cxsMaxTSTD: TcxSpinEdit
            Left = 478
            Top = 40
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 1
            Width = 121
          end
          object cxsMinTSMD: TcxSpinEdit
            Left = 224
            Top = 64
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 2
            Width = 121
          end
          object cxsMaxTSMD: TcxSpinEdit
            Left = 478
            Top = 64
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 3
            Width = 121
          end
          object cxsMinTETD: TcxSpinEdit
            Left = 224
            Top = 88
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 4
            Width = 121
          end
          object cxsMaxTETD: TcxSpinEdit
            Left = 478
            Top = 88
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 5
            Width = 121
          end
          object cxsMinTEMD: TcxSpinEdit
            Left = 224
            Top = 112
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 121
          end
          object cxsMaxTEMD: TcxSpinEdit
            Left = 478
            Top = 112
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 7
            Width = 121
          end
          object cxsMinTearTD: TcxSpinEdit
            Left = 224
            Top = 136
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 8
            Width = 121
          end
          object cxsMaxTearTD: TcxSpinEdit
            Left = 478
            Top = 136
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 9
            Width = 121
          end
          object cxsMinTearMD: TcxSpinEdit
            Left = 224
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 10
            Width = 121
          end
          object cxsMaxTearMD: TcxSpinEdit
            Left = 478
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 11
            Width = 121
          end
          object cxsMinPuncture: TcxSpinEdit
            Left = 224
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 12
            Width = 121
          end
          object cxsMaxPuncture: TcxSpinEdit
            Left = 478
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 13
            Width = 121
          end
          object cxsMinOpasitas: TcxSpinEdit
            Left = 224
            Top = 232
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 14
            Width = 121
          end
          object cxsMaxOpasitas: TcxSpinEdit
            Left = 478
            Top = 232
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 15
            Width = 121
          end
          object cxsMinDrat: TcxSpinEdit
            Left = 224
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 16
            Width = 121
          end
          object cxsMaxDrat: TcxSpinEdit
            Left = 478
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 17
            Width = 121
          end
          object cxtAcuan: TcxTextEdit
            Left = 224
            Top = 256
            Properties.CharCase = ecUpperCase
            TabOrder = 18
            Width = 249
          end
          object cxtCritical: TcxMemo
            Left = 625
            Top = 40
            TabOrder = 19
            Height = 141
            Width = 264
          end
          object cxlSatuan: TcxLookupComboBox
            Left = 224
            Top = 280
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'unitsetid'
            Properties.ListColumns = <
              item
                FieldName = 'unitsetid'
              end
              item
                FieldName = 'description'
              end>
            Properties.ListSource = ds3
            Properties.OnChange = cxlSatuanPropertiesChange
            TabOrder = 20
            Width = 137
          end
          object cxlSatuanDet: TcxLookupComboBox
            Left = 364
            Top = 280
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'unitid'
            Properties.ListColumns = <
              item
                FieldName = 'unitid'
              end>
            Properties.ListSource = ds4
            TabOrder = 21
            Width = 73
          end
          object cxsTSTD: TcxSpinEdit
            Left = 351
            Top = 40
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 22
            Width = 121
          end
          object cxsTSMD: TcxSpinEdit
            Left = 351
            Top = 64
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 23
            Width = 121
          end
          object cxsTETD: TcxSpinEdit
            Left = 351
            Top = 88
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 24
            Width = 121
          end
          object cxsTEMD: TcxSpinEdit
            Left = 351
            Top = 112
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 25
            Width = 121
          end
          object cxsTearTD: TcxSpinEdit
            Left = 351
            Top = 136
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 26
            Width = 121
          end
          object cxsTearMD: TcxSpinEdit
            Left = 351
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 27
            Width = 121
          end
          object cxsPuncture: TcxSpinEdit
            Left = 351
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 28
            Width = 121
          end
          object cxsOpasitas: TcxSpinEdit
            Left = 351
            Top = 232
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 29
            Width = 121
          end
          object cxsDrat: TcxSpinEdit
            Left = 351
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 30
            Width = 121
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 4
          Top = 321
          Caption = 'Routing'
          TabOrder = 1
          Height = 190
          Width = 788
          object cxGrid1: TcxGrid
            Left = 8
            Top = 16
            Width = 768
            Height = 161
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
                  Format = '#,###'
                  Kind = skSum
                  DisplayText = 'Total'
                end>
              DataController.Summary.SummaryGroups = <>
              DataController.OnBeforePost = cxTblRoutingDataControllerBeforePost
              DataController.OnRecordChanged = cxTblRoutingDataControllerRecordChanged
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
                Width = 51
              end
              object cxColRouting: TcxGridColumn
                Caption = 'Jenis Routing'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.DropDownListStyle = lsEditFixedList
                Properties.Items.Strings = (
                  'CASTING'
                  'CONVERTING'
                  'CRUSHER'
                  'EXTRUSI'
                  'GUSET'
                  'INJECTION'
                  'MANUAL'
                  'MIXING'
                  'PACKING'
                  'PELET'
                  'PRINTING'
                  'SORTIR'
                  'WASHING')
                Properties.Sorted = True
                HeaderAlignmentHorz = taCenter
                Width = 221
              end
              object cxColKodeRouting: TcxGridColumn
                Caption = 'Kode'
                Options.Editing = False
              end
              object cxColDeskripsi: TcxGridColumn
                Caption = 'Deskripsi'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.DropDownAutoSize = True
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    Caption = 'Deskripsi'
                    FieldName = 'deskripsi'
                  end
                  item
                    Caption = 'Kode'
                    FieldName = 'kode'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dsBrgRouting
                Width = 321
              end
              object cxColMesin: TcxGridColumn
                Caption = 'Mesin'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    FieldName = 'kode'
                  end>
                Properties.ListSource = dsMesin
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxTblRouting
            end
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Bill Of Material'
      ImageIndex = 2
      object Label55: TLabel
        Left = 15
        Top = 13
        Width = 62
        Height = 13
        Caption = 'Kode Barang'
      end
      object Label56: TLabel
        Left = 15
        Top = 36
        Width = 65
        Height = 13
        Caption = 'Nama Barang'
      end
      object cxGrid2: TcxGrid
        Left = 15
        Top = 62
        Width = 1006
        Height = 219
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
              Format = '#,###'
              Kind = skSum
              DisplayText = 'Total'
            end>
          DataController.Summary.SummaryGroups = <>
          DataController.OnRecordChanged = cxTblBOMDataControllerRecordChanged
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxColNoBom: TcxGridColumn
            Caption = 'No.'
            DataBinding.ValueType = 'Integer'
            OnGetDisplayText = cxColNoBomGetDisplayText
            Width = 49
          end
          object cxColRoutingBom: TcxGridColumn
            Caption = 'Routing'
            Width = 98
          end
          object cxColBomKode: TcxGridColumn
            Caption = 'Kode'
            Options.Editing = False
            Width = 119
          end
          object cxColBomDesc: TcxGridColumn
            Caption = 'Deskripsi'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                Caption = 'Deskripsi'
                FieldName = 'deskripsi'
              end
              item
                Caption = 'Kode'
                FieldName = 'kode'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsBrgRouting
            Visible = False
            Width = 314
          end
          object cxColDesc2: TcxGridColumn
            Caption = 'Deskripsi'
            Width = 282
          end
          object cxColJenisIsian: TcxGridColumn
            Caption = 'Jenis Isian'
            Width = 74
          end
          object cxColBomQty: TcxGridColumn
            Caption = 'Qty.'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 76
          end
          object cxColBomSatuan2: TcxGridColumn
            Caption = 'Satuan'
          end
          object cxColBomSatuan: TcxGridColumn
            Caption = 'Satuan'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'unitid'
            Properties.ListColumns = <
              item
                FieldName = 'unitid'
              end>
            Properties.ListSource = dsUnit
            Visible = False
            Width = 78
          end
          object cxColPersen: TcxGridColumn
            Caption = 'Persen'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
          end
          object cxTblBOMColumn1: TcxGridColumn
            Caption = 'HPP'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.ReadOnly = True
            Width = 82
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxTblBOM
        end
      end
      object cxtKode2: TcxTextEdit
        Left = 104
        Top = 9
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 1
        Width = 169
      end
      object cxtDeskripsi2: TcxTextEdit
        Left = 104
        Top = 34
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 401
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Aksesoris'
      ImageIndex = 4
      object Label60: TLabel
        Left = 849
        Top = 291
        Width = 62
        Height = 13
        Caption = 'Kode Barang'
        Visible = False
      end
      object Label61: TLabel
        Left = 849
        Top = 320
        Width = 65
        Height = 13
        Caption = 'Nama Barang'
        Visible = False
      end
      object cxLabel1: TcxLabel
        Left = 847
        Top = 367
        Caption = 'Satuan Dasar'
        Visible = False
      end
      object cxtSatDasar: TcxTextEdit
        Left = 950
        Top = 365
        Properties.ReadOnly = True
        TabOrder = 1
        Visible = False
        Width = 73
      end
      object cxLabel2: TcxLabel
        Left = 847
        Top = 392
        Caption = 'Konversi 1 / Jumlah'
        Visible = False
      end
      object cxlKonv1: TcxLookupComboBox
        Left = 950
        Top = 390
        Properties.KeyFieldNames = 'description'
        Properties.ListColumns = <
          item
            FieldName = 'description'
          end>
        Properties.ListSource = dsUnit2
        TabOrder = 3
        Visible = False
        Width = 73
      end
      object cxsJmlKonv1: TcxSpinEdit
        Left = 1027
        Top = 390
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 4
        Visible = False
        Width = 121
      end
      object cxLabel3: TcxLabel
        Left = 847
        Top = 417
        Caption = 'Konversi 2 / Jumlah'
        Visible = False
      end
      object cxlKonv2: TcxLookupComboBox
        Left = 950
        Top = 415
        Properties.KeyFieldNames = 'description'
        Properties.ListColumns = <
          item
            FieldName = 'description'
          end>
        Properties.ListSource = dsUnit2
        TabOrder = 6
        Visible = False
        Width = 73
      end
      object cxsJmlKonv2: TcxSpinEdit
        Left = 1027
        Top = 415
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 7
        Visible = False
        Width = 121
      end
      object cxLabel4: TcxLabel
        Left = 847
        Top = 442
        Caption = 'Konversi 3 / Jumlah'
        Visible = False
      end
      object cxlKonv3: TcxLookupComboBox
        Left = 950
        Top = 440
        Properties.KeyFieldNames = 'description'
        Properties.ListColumns = <
          item
            FieldName = 'description'
          end>
        Properties.ListSource = dsUnit2
        TabOrder = 9
        Visible = False
        Width = 73
      end
      object cxsJmlKonv3: TcxSpinEdit
        Left = 1027
        Top = 440
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 10
        Visible = False
        Width = 121
      end
      object cxLabel5: TcxLabel
        Left = 847
        Top = 467
        Caption = 'Konversi 4 / Jumlah'
        Visible = False
      end
      object cxlKonv4: TcxLookupComboBox
        Left = 950
        Top = 465
        Properties.KeyFieldNames = 'description'
        Properties.ListColumns = <
          item
            FieldName = 'description'
          end>
        Properties.ListSource = dsUnit2
        TabOrder = 12
        Visible = False
        Width = 73
      end
      object cxsJmlKonv4: TcxSpinEdit
        Left = 1027
        Top = 465
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 13
        Visible = False
        Width = 121
      end
      object cxLabel6: TcxLabel
        Left = 847
        Top = 492
        Caption = 'Konversi 5 / Jumlah'
        Visible = False
      end
      object cxlKonv5: TcxLookupComboBox
        Left = 950
        Top = 490
        Properties.KeyFieldNames = 'description'
        Properties.ListColumns = <
          item
            FieldName = 'description'
          end>
        Properties.ListSource = dsUnit2
        TabOrder = 15
        Visible = False
        Width = 73
      end
      object cxsJmlKonv5: TcxSpinEdit
        Left = 1027
        Top = 490
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 16
        Visible = False
        Width = 121
      end
      object cxtKode3: TcxTextEdit
        Left = 950
        Top = 289
        Properties.CharCase = ecUpperCase
        TabOrder = 17
        Visible = False
        Width = 169
      end
      object cxtDeskripsi3: TcxTextEdit
        Left = 950
        Top = 315
        Properties.CharCase = ecUpperCase
        TabOrder = 18
        Visible = False
        Width = 401
      end
      object cxLabel7: TcxLabel
        Left = 847
        Top = 342
        Caption = 'HPP'
        Visible = False
      end
      object cxsHPP: TcxSpinEdit
        Left = 950
        Top = 340
        Properties.DisplayFormat = '#,#0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        TabOrder = 20
        Visible = False
        Width = 121
      end
      object cxLabel65: TcxLabel
        Left = 15
        Top = 9
        Caption = 'Packaging'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
      object cxLabel106: TcxLabel
        Left = 140
        Top = 14
        Caption = 'Unit 1'
      end
      object cxLabel107: TcxLabel
        Left = 215
        Top = 14
        Caption = 'Unit 2'
      end
      object cxLabel108: TcxLabel
        Left = 290
        Top = 14
        Caption = 'Unit 3'
      end
      object cxLabel109: TcxLabel
        Left = 365
        Top = 14
        Caption = 'Unit 4'
      end
      object cxLabel110: TcxLabel
        Left = 440
        Top = 14
        Caption = 'Unit 5'
      end
      object cxLabel66: TcxLabel
        Left = 95
        Top = 34
        Caption = 'Quantity'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 138
      end
      object cxLabel67: TcxLabel
        Left = 115
        Top = 60
        Caption = 'Unit'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 138
      end
      object cxsPackQty1: TcxSpinEdit
        Tag = 11
        Left = 141
        Top = 31
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 29
        Width = 70
      end
      object cxCmbPackUnit1: TcxComboBox
        Tag = 11
        Left = 141
        Top = 57
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 30
        Width = 70
      end
      object cxsPackQty2: TcxSpinEdit
        Tag = 11
        Left = 216
        Top = 31
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 31
        Width = 70
      end
      object cxCmbPackUnit2: TcxComboBox
        Tag = 11
        Left = 216
        Top = 57
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 32
        Width = 70
      end
      object cxsPackQty3: TcxSpinEdit
        Tag = 11
        Left = 291
        Top = 31
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 33
        Width = 70
      end
      object cxCmbPackUnit3: TcxComboBox
        Tag = 11
        Left = 291
        Top = 57
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 34
        Width = 70
      end
      object cxsPackQty4: TcxSpinEdit
        Tag = 11
        Left = 366
        Top = 31
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 35
        Width = 70
      end
      object cxCmbPackUnit4: TcxComboBox
        Tag = 11
        Left = 366
        Top = 57
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 36
        Width = 70
      end
      object cxsPackQty5: TcxSpinEdit
        Tag = 11
        Left = 441
        Top = 31
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 37
        Width = 70
      end
      object cxCmbPackunit5: TcxComboBox
        Tag = 11
        Left = 441
        Top = 57
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 38
        Width = 70
      end
      object cxLabel68: TcxLabel
        Left = 15
        Top = 86
        Caption = 'Folding'
      end
      object cxCmbFolding1: TcxComboBox
        Tag = 11
        Left = 140
        Top = 84
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 40
        Width = 121
      end
      object cxCmbFolding2: TcxComboBox
        Tag = 11
        Left = 140
        Top = 110
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 41
        Width = 121
      end
      object cxLabel69: TcxLabel
        Left = 15
        Top = 138
        Caption = 'Packing Accesories'
      end
      object cxCmbPackAcc: TcxComboBox
        Tag = 11
        Left = 140
        Top = 136
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 43
        Width = 121
      end
      object cxLabel70: TcxLabel
        Left = 265
        Top = 138
        Caption = 'CORE :'
      end
      object cxLabel74: TcxLabel
        Left = 265
        Top = 161
        Caption = 'Other (pls describe) '
      end
      object cxsPackAccCore: TcxSpinEdit
        Tag = 11
        Left = 308
        Top = 136
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 46
        Width = 80
      end
      object cxLabel71: TcxLabel
        Left = 392
        Top = 118
        Caption = 'Inner o (cm)'
      end
      object cxLabel72: TcxLabel
        Left = 477
        Top = 118
        Caption = 'Thickness (mm)'
      end
      object cxLabel73: TcxLabel
        Left = 562
        Top = 118
        Caption = 'Length (cm)'
      end
      object cxsPackAccInner: TcxSpinEdit
        Tag = 11
        Left = 393
        Top = 136
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 50
        Width = 80
      end
      object cxsPackAccThickness: TcxSpinEdit
        Tag = 11
        Left = 478
        Top = 136
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 51
        Width = 80
      end
      object cxsPackAccLength: TcxSpinEdit
        Tag = 11
        Left = 563
        Top = 136
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 52
        Width = 80
      end
      object cxmPackAccNotes: TcxMemo
        Tag = 11
        Left = 365
        Top = 163
        TabOrder = 53
        Height = 51
        Width = 278
      end
      object cxLabel75: TcxLabel
        Left = 729
        Top = 10
        Caption = 'Inner Outer :'
        Properties.ShadowedColor = clHighlightText
      end
      object cxLabel76: TcxLabel
        Left = 814
        Top = 10
        Caption = 'Label/paper band'
        Properties.ShadowedColor = clHighlightText
      end
      object cxLabel77: TcxLabel
        Left = 912
        Top = 10
        Caption = 'Outer'
        Properties.ShadowedColor = clHighlightText
      end
      object cxLabel78: TcxLabel
        Left = 997
        Top = 10
        Caption = 'Dispenser'
        Properties.ShadowedColor = clHighlightText
      end
      object cxLabel79: TcxLabel
        Left = 678
        Top = 30
        Caption = 'Material :'
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxtMaterialIO: TcxTextEdit
        Left = 732
        Top = 28
        TabOrder = 59
        Width = 80
      end
      object cxtMaterialLblPB: TcxTextEdit
        Left = 817
        Top = 28
        TabOrder = 60
        Width = 91
      end
      object cxtMaterialOuter: TcxTextEdit
        Left = 912
        Top = 28
        TabOrder = 61
        Width = 80
      end
      object cxtMaterialDispenser: TcxTextEdit
        Left = 998
        Top = 28
        TabOrder = 62
        Width = 80
      end
      object cxtColourDispenser: TcxTextEdit
        Left = 998
        Top = 54
        TabOrder = 63
        Width = 80
      end
      object cxtColoursOuter: TcxTextEdit
        Left = 912
        Top = 54
        TabOrder = 64
        Width = 80
      end
      object cxtColoursLblPB: TcxTextEdit
        Left = 817
        Top = 54
        TabOrder = 65
        Width = 91
      end
      object cxtColoursIO: TcxTextEdit
        Left = 732
        Top = 54
        TabOrder = 66
        Width = 80
      end
      object cxLabel80: TcxLabel
        Left = 677
        Top = 57
        Caption = 'Colours : '
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxLabel81: TcxLabel
        Left = 676
        Top = 82
        Caption = 'u / gsm : '
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxsGsmIO: TcxSpinEdit
        Tag = 11
        Left = 732
        Top = 80
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 69
        Width = 80
      end
      object cxsGsmLabelPB: TcxSpinEdit
        Tag = 11
        Left = 817
        Top = 80
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 70
        Width = 91
      end
      object cxsGSMOuter: TcxSpinEdit
        Tag = 11
        Left = 913
        Top = 80
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 71
        Width = 80
      end
      object cxsGSMDispenser: TcxSpinEdit
        Tag = 11
        Left = 998
        Top = 80
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 72
        Width = 80
      end
      object cxsWidthDispenser: TcxSpinEdit
        Tag = 11
        Left = 998
        Top = 106
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 73
        Width = 80
      end
      object cxsWidthOuter: TcxSpinEdit
        Tag = 11
        Left = 913
        Top = 106
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 74
        Width = 80
      end
      object cxsWidthLabelPB: TcxSpinEdit
        Tag = 11
        Left = 817
        Top = 106
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 75
        Width = 91
      end
      object cxsWidthIO: TcxSpinEdit
        Tag = 11
        Left = 732
        Top = 106
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 76
        Width = 80
      end
      object cxLabel82: TcxLabel
        Left = 661
        Top = 110
        Caption = 'Width (cm) : '
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxLabel83: TcxLabel
        Left = 659
        Top = 132
        Caption = 'Length (cm) :'
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxsLengthIO: TcxSpinEdit
        Tag = 11
        Left = 732
        Top = 132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 79
        Width = 80
      end
      object cxsLengthLabelPB: TcxSpinEdit
        Tag = 11
        Left = 817
        Top = 132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 80
        Width = 91
      end
      object cxsLengthOuter: TcxSpinEdit
        Tag = 11
        Left = 913
        Top = 132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 81
        Width = 80
      end
      object cxsLengthDispenser: TcxSpinEdit
        Tag = 11
        Left = 998
        Top = 132
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 82
        Width = 80
      end
      object cxLabel84: TcxLabel
        Left = 664
        Top = 154
        Caption = 'Print Detail :'
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxLabel85: TcxLabel
        Left = 680
        Top = 176
        Caption = 'Colours :'
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxsPDColoursIO: TcxSpinEdit
        Tag = 11
        Left = 732
        Top = 171
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 85
        Width = 80
      end
      object cxsPDColoursLabelPB: TcxSpinEdit
        Tag = 11
        Left = 817
        Top = 171
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 86
        Width = 91
      end
      object cxsPDColoursOuter: TcxSpinEdit
        Tag = 11
        Left = 913
        Top = 171
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 87
        Width = 80
      end
      object cxsPDColoursDispenser: TcxSpinEdit
        Tag = 11
        Left = 998
        Top = 171
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 88
        Width = 80
      end
      object cxLabel86: TcxLabel
        Left = 689
        Top = 199
        Caption = 'Sides :'
        Properties.Alignment.Horz = taRightJustify
        Properties.ShadowedColor = clHighlightText
        AnchorX = 725
      end
      object cxsPDSidesIO: TcxSpinEdit
        Tag = 11
        Left = 732
        Top = 197
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 90
        Width = 80
      end
      object cxsPDSidesLabelPB: TcxSpinEdit
        Tag = 11
        Left = 817
        Top = 197
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 91
        Width = 91
      end
      object cxsPDSidesOuter: TcxSpinEdit
        Tag = 11
        Left = 913
        Top = 197
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 92
        Width = 80
      end
      object cxsPDSidesDispenser: TcxSpinEdit
        Tag = 11
        Left = 998
        Top = 197
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 93
        Width = 80
      end
      object cxLabel87: TcxLabel
        Left = 15
        Top = 225
        Caption = 'Final Packaging'
      end
      object cxLabel88: TcxLabel
        Left = 137
        Top = 225
        Caption = 'Inner Size :'
      end
      object cxLabel89: TcxLabel
        Left = 222
        Top = 225
        Caption = 'Outer Size'
      end
      object cxLabel90: TcxLabel
        Left = 86
        Top = 245
        Caption = 'Material :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel91: TcxLabel
        Left = 72
        Top = 271
        Caption = 'Width (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel92: TcxLabel
        Left = 67
        Top = 297
        Caption = 'Length (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel93: TcxLabel
        Left = 69
        Top = 323
        Caption = 'Height (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel98: TcxLabel
        Left = 15
        Top = 350
        Caption = 'Pallet'
      end
      object cxLabel99: TcxLabel
        Left = 78
        Top = 368
        Caption = 'Width (cm)'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel100: TcxLabel
        Left = 105
        Top = 394
        Caption = 'Entry'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 133
      end
      object cxLabel104: TcxLabel
        Left = 15
        Top = 425
        Caption = 'Compiling Packaging'
      end
      object cxmCompilingPackaging: TcxMemo
        Tag = 11
        Left = 15
        Top = 444
        TabOrder = 105
        Height = 57
        Width = 566
      end
      object cxsPalletEntry: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 392
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 106
        Width = 80
      end
      object cxsPalletWidth: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 366
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 107
        Width = 80
      end
      object cxLabel101: TcxLabel
        Left = 226
        Top = 368
        Caption = 'Length (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 292
      end
      object cxLabel102: TcxLabel
        Left = 222
        Top = 394
        Caption = 'Requirement :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 292
      end
      object cxsPalletLength: TcxSpinEdit
        Tag = 11
        Left = 297
        Top = 366
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 110
        Width = 80
      end
      object cxsPalletRequirement: TcxSpinEdit
        Tag = 11
        Left = 297
        Top = 392
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 111
        Width = 80
      end
      object cxLabel103: TcxLabel
        Left = 391
        Top = 368
        Caption = 'Height (cm) :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 455
      end
      object cxsPalletHeight: TcxSpinEdit
        Tag = 11
        Left = 465
        Top = 366
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 113
        Width = 80
      end
      object cxsFPHeightSides: TcxSpinEdit
        Tag = 11
        Left = 398
        Top = 321
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 114
        Width = 80
      end
      object cxsFPLengthColours: TcxSpinEdit
        Tag = 11
        Left = 398
        Top = 295
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 115
        Width = 80
      end
      object cxLabel97: TcxLabel
        Left = 349
        Top = 323
        Caption = 'Sides :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxLabel96: TcxLabel
        Left = 340
        Top = 297
        Caption = 'Colours :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxLabel95: TcxLabel
        Left = 342
        Top = 271
        Caption = 'Printed :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxLabel94: TcxLabel
        Left = 356
        Top = 245
        Caption = 'gsm :'
        Properties.Alignment.Horz = taRightJustify
        AnchorX = 385
      end
      object cxsFPGsm: TcxSpinEdit
        Tag = 11
        Left = 397
        Top = 243
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 120
        Width = 80
      end
      object cxsFPMaterialOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 243
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 121
        Width = 86
      end
      object cxsFPMaterialInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 243
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 122
        Width = 80
      end
      object cxsFPWidthOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 269
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 123
        Width = 86
      end
      object cxsFPWidthInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 269
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 124
        Width = 80
      end
      object cxsFPLengthOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 295
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 125
        Width = 86
      end
      object cxsFPLengthInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 295
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 126
        Width = 80
      end
      object cxsFPHeightOuterSize: TcxSpinEdit
        Tag = 11
        Left = 225
        Top = 321
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 127
        Width = 86
      end
      object cxsFPHeightInnerSize: TcxSpinEdit
        Tag = 11
        Left = 140
        Top = 321
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 128
        Width = 80
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 546
    Width = 1195
    Height = 47
    Align = alBottom
    TabOrder = 1
    object btnSimpanCP: TButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = btnSimpanCPClick
    end
  end
  object zqrBrgRouting: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and left(kode,1) in ('#39'B'#39','#39'A'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 932
    Top = 35
  end
  object dsBrgRouting: TDataSource
    DataSet = zqrBrgRouting
    Left = 962
    Top = 35
  end
  object zUnit: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_head')
    Params = <>
    Left = 933
    Top = 65
  end
  object ds3: TDataSource
    DataSet = zUnit
    Left = 963
    Top = 65
  end
  object zSatuan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det where unitsetid=:unitset')
    Params = <
      item
        DataType = ftUnknown
        Name = 'unitset'
        ParamType = ptUnknown
      end>
    Left = 932
    Top = 95
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unitset'
        ParamType = ptUnknown
      end>
  end
  object ds4: TDataSource
    DataSet = zSatuan
    Left = 962
    Top = 95
  end
  object zqrCust: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama '
      'FROM tbl_customer '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 932
    Top = 125
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 962
    Top = 125
  end
  object zqrKelompok: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, kelompok'
      'FROM tbl_kelompok WHERE left(kode,1)='#39'A'#39
      'ORDER BY kode')
    Params = <>
    Left = 932
    Top = 155
  end
  object dsKelompok: TDataSource
    DataSet = zqrKelompok
    Left = 962
    Top = 155
  end
  object zqrSubKelompok: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, sub_kelompok'
      'FROM tbl_sub_kelompok'
      'WHERE kode_kelompok = :kode_kelompok'
      'ORDER BY kode')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_kelompok'
        ParamType = ptUnknown
      end>
    Left = 932
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_kelompok'
        ParamType = ptUnknown
      end>
  end
  object dsSubKelompok: TDataSource
    DataSet = zqrSubKelompok
    Left = 962
    Top = 185
  end
  object zMesin: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama'
      'FROM tbl_mesin'
      'ORDER BY kode')
    Params = <>
    Left = 932
    Top = 217
  end
  object dsMesin: TDataSource
    DataSet = zMesin
    Left = 962
    Top = 217
  end
  object zqrUnit: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det')
    Params = <>
    Left = 933
    Top = 248
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 963
    Top = 248
  end
  object zqrUnitKTG: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT unit FROM tbl_unit_ktg')
    Params = <>
    Left = 933
    Top = 278
  end
  object dsUnitKTG: TDataSource
    DataSet = zqrUnitKTG
    Left = 963
    Top = 278
  end
  object zqrBM: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT base_material '
      'FROM tbl_base_material '
      'ORDER BY base_material')
    Params = <>
    Left = 995
    Top = 35
  end
  object dsBM: TDataSource
    DataSet = zqrBM
    Left = 1025
    Top = 35
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 836
    Top = 291
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clBlack
      TextColor = clWhite
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 529
    Top = 243
    object cxEditRepository1ComboBoxItem1: TcxEditRepositoryComboBoxItem
      Properties.DropDownListStyle = lsEditFixedList
    end
  end
  object zqrUnit2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unit'
      'ORDER BY description')
    Params = <>
    Left = 995
    Top = 65
  end
  object dsUnit2: TDataSource
    DataSet = zqrUnit2
    Left = 1025
    Top = 65
  end
  object zqrBB: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang'
      'WHERE LEFT(kode,1) IN ('#39'B'#39','#39'C'#39') AND f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 995
    Top = 95
  end
  object dsBB: TDataSource
    DataSet = zqrBB
    Left = 1025
    Top = 95
  end
end
