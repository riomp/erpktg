object frmTmpControlPlan: TfrmTmpControlPlan
  Left = 213
  Top = 70
  Width = 1058
  Height = 631
  Caption = '-'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
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
    Width = 1042
    Height = 545
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 7
    TabOrder = 0
    ClientRectBottom = 544
    ClientRectLeft = 1
    ClientRectRight = 1041
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = 'Detail / Dimensi'
      ImageIndex = 0
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 1040
        Height = 523
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object cxGroupBox1: TcxGroupBox
          Left = 4
          Top = 12
          Caption = 'Detail'
          TabOrder = 0
          Height = 180
          Width = 912
          object Label2: TLabel
            Left = 17
            Top = 27
            Width = 62
            Height = 13
            Caption = 'Kode Barang'
          end
          object Label3: TLabel
            Left = 16
            Top = 97
            Width = 65
            Height = 13
            Caption = 'Nama Barang'
          end
          object Label4: TLabel
            Left = 16
            Top = 145
            Width = 68
            Height = 13
            Caption = 'Fungsi Produk'
          end
          object Label5: TLabel
            Left = 16
            Top = 121
            Width = 44
            Height = 13
            Caption = 'Customer'
          end
          object Label6: TLabel
            Left = 520
            Top = 97
            Width = 64
            Height = 13
            Caption = 'Base Material'
          end
          object Label7: TLabel
            Left = 520
            Top = 121
            Width = 64
            Height = 13
            Caption = 'Sheet / Tube'
          end
          object Label8: TLabel
            Left = 520
            Top = 145
            Width = 52
            Height = 13
            Caption = 'Berat Jenis'
          end
          object Label1: TLabel
            Left = 16
            Top = 50
            Width = 47
            Height = 13
            Caption = 'Kelompok'
          end
          object Label54: TLabel
            Left = 16
            Top = 74
            Width = 69
            Height = 13
            Caption = 'Sub Kelompok'
          end
          object cxtKode: TcxTextEdit
            Left = 104
            Top = 24
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 169
          end
          object cxtDeskripsi: TcxTextEdit
            Left = 104
            Top = 97
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 401
          end
          object cxlCustomer: TcxLookupComboBox
            Left = 104
            Top = 121
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
            Top = 145
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 401
          end
          object cxCmbBase: TcxComboBox
            Left = 600
            Top = 97
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'HDPE'
              'LLDPE'
              'LDPE'
              'PP'
              'MIX HDPE/LLDPE')
            TabOrder = 4
            Width = 185
          end
          object cxtSheet: TcxComboBox
            Left = 600
            Top = 121
            Properties.CharCase = ecUpperCase
            Properties.Items.Strings = (
              'SHEET'
              'TUBE')
            TabOrder = 5
            Width = 185
          end
          object cxsBeratJenis: TcxSpinEdit
            Left = 600
            Top = 145
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 6
            Width = 185
          end
          object cxChkAktif: TcxCheckBox
            Left = 275
            Top = 24
            Caption = 'Aktif'
            TabOrder = 7
            Visible = False
            Width = 121
          end
          object cxlKelompok: TcxLookupComboBox
            Left = 104
            Top = 48
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
            Top = 72
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
            Properties.ListSource = dsSubKelompok
            Properties.OnChange = cxlSubKelompokPropertiesChange
            TabOrder = 9
            Width = 77
          end
          object cxtKelompok: TcxTextEdit
            Left = 184
            Top = 48
            TabOrder = 10
            Width = 292
          end
          object cxtSubKelompok: TcxTextEdit
            Left = 184
            Top = 72
            TabOrder = 11
            Width = 292
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 4
          Top = 195
          Caption = 'Dimensi'
          TabOrder = 1
          Height = 241
          Width = 912
          object Label9: TLabel
            Left = 16
            Top = 24
            Width = 42
            Height = 13
            Caption = 'Tebal ('#181')'
          end
          object Label10: TLabel
            Left = 16
            Top = 48
            Width = 71
            Height = 13
            Caption = 'Berat Kotor (gr)'
          end
          object Label11: TLabel
            Left = 16
            Top = 96
            Width = 81
            Height = 13
            Caption = 'Berat / Meter (gr)'
          end
          object Label12: TLabel
            Left = 16
            Top = 72
            Width = 75
            Height = 13
            Caption = 'Berat Bersih (gr)'
          end
          object Label13: TLabel
            Left = 16
            Top = 120
            Width = 159
            Height = 13
            Caption = 'Berat Produk Jadi + Aksesoris (gr)'
          end
          object Label14: TLabel
            Left = 320
            Top = 24
            Width = 78
            Height = 13
            Caption = 'Lebar Buka (cm)'
          end
          object Label15: TLabel
            Left = 320
            Top = 48
            Width = 72
            Height = 13
            Caption = 'Lebar Jadi (cm)'
          end
          object Label16: TLabel
            Left = 320
            Top = 72
            Width = 62
            Height = 13
            Caption = 'Panjang (cm)'
          end
          object Label17: TLabel
            Left = 320
            Top = 96
            Width = 84
            Height = 13
            Caption = 'Panjang Jadi (cm)'
          end
          object Label18: TLabel
            Left = 320
            Top = 120
            Width = 78
            Height = 13
            Caption = 'Lebar Tube (cm)'
          end
          object Label19: TLabel
            Left = 560
            Top = 24
            Width = 92
            Height = 13
            Caption = 'Panjang Plong (cm)'
          end
          object Label20: TLabel
            Left = 560
            Top = 48
            Width = 80
            Height = 13
            Caption = 'Lebar Plong (cm)'
          end
          object Label21: TLabel
            Left = 560
            Top = 72
            Width = 65
            Height = 13
            Caption = 'Top Flod (cm)'
          end
          object Label22: TLabel
            Left = 560
            Top = 96
            Width = 56
            Height = 13
            Caption = 'Gusset (cm)'
          end
          object Label23: TLabel
            Left = 560
            Top = 120
            Width = 95
            Height = 13
            Caption = 'Lembar Handle (cm)'
          end
          object Label24: TLabel
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
          object Label25: TLabel
            Left = 16
            Top = 160
            Width = 82
            Height = 13
            Caption = 'Aksesoris Berupa'
          end
          object Label26: TLabel
            Left = 560
            Top = 160
            Width = 100
            Height = 13
            Caption = 'Berat Aksesoris Total'
          end
          object Label27: TLabel
            Left = 16
            Top = 184
            Width = 93
            Height = 13
            Caption = 'Tebal Aksesoris ('#181') '
          end
          object Label28: TLabel
            Left = 280
            Top = 184
            Width = 98
            Height = 13
            Caption = 'Lebar Aksesoris (cm)'
          end
          object Label29: TLabel
            Left = 560
            Top = 184
            Width = 110
            Height = 13
            Caption = 'Panjang Aksesoris (cm)'
          end
          object Label30: TLabel
            Left = 16
            Top = 208
            Width = 98
            Height = 13
            Caption = 'AIR HOLE Size (mm)'
          end
          object Label31: TLabel
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
          Left = 4
          Top = 437
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
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Property / Routing'
      ImageIndex = 1
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 1040
        Height = 523
        Align = alClient
        BorderStyle = bsNone
        TabOrder = 0
        object cxGroupBox4: TcxGroupBox
          Left = 4
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
            Width = 83
            Height = 13
            Caption = 'Unit Set / Satuan'
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
            TabOrder = 20
            Width = 137
          end
          object cxlSatuanDet: TcxLookupComboBox
            Left = 368
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
                HeaderAlignmentHorz = taCenter
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
      object cxGrid2: TcxGrid
        Left = 15
        Top = 18
        Width = 768
        Height = 210
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
          OptionsData.Appending = True
          OptionsView.Navigator = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          object cxColBomKode: TcxGridColumn
            Caption = 'Kode'
            Options.Editing = False
            Width = 100
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
            Width = 350
          end
          object cxColBomQty: TcxGridColumn
            Caption = 'Qty.'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
            Properties.ValueType = vtFloat
            Width = 101
          end
          object cxColBomSatuan: TcxGridColumn
            Caption = 'Satuan'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'unitsetid'
            Properties.ListColumns = <
              item
                FieldName = 'description'
              end>
            Properties.ListSource = ds3
            Width = 78
          end
          object cxColPersen: TcxGridColumn
            Caption = 'Persen'
            DataBinding.ValueType = 'Float'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.DisplayFormat = '#,#0.00'
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
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'HPP'
      ImageIndex = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 545
    Width = 1042
    Height = 47
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object zqrBrgRouting: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and left(kode,1) in ('#39'B'#39','#39'C'#39')'
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
    Active = True
    SQL.Strings = (
      'SELECT kode, kelompok'
      'FROM tbl_kelompok'
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
    Active = True
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
end
