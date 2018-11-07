inherited frmMstBrg: TfrmMstBrg
  Left = 199
  Top = 95
  Caption = 'Master Barang'
  ClientHeight = 585
  ClientWidth = 1091
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1091
    inherited lblJudul: TLabel
      Width = 119
      Caption = 'Master Barang'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 1091
    Height = 470
    inherited pg: TPageControl
      Width = 1089
      Height = 468
      ActivePage = TabSheet7
      inherited TabSheet1: TTabSheet
        Caption = 'Input'
        object Shape1: TShape
          Left = 690
          Top = 21
          Width = 256
          Height = 211
          Brush.Color = clBtnFace
        end
        object image: TImage
          Left = 690
          Top = 21
          Width = 256
          Height = 211
          Stretch = True
        end
        object cxLabel1: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Kode'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 93
          Caption = 'Deskripsi'
          Transparent = True
        end
        object cxtDeskripsi: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 91
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 336
        end
        object chkAktif: TcxCheckBox
          Left = 218
          Top = 15
          Caption = 'Aktif'
          TabOrder = 1
          Transparent = True
          Width = 58
        end
        object btnBrowse: TButton
          Left = 690
          Top = 238
          Width = 75
          Height = 25
          Caption = 'Browse'
          TabOrder = 22
          OnClick = btnBrowseClick
        end
        object cxLabel3: TcxLabel
          Left = 10
          Top = 118
          Caption = 'Tipe'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = 143
          Caption = 'Kategori'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 10
          Top = 168
          Caption = 'Sub Kategori'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 193
          Caption = 'Satuan'
          Transparent = True
        end
        object cxlTipe: TcxLookupComboBox
          Left = 90
          Top = 116
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'tipe'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsTipe
          TabOrder = 10
          Width = 237
        end
        object cxlKategori: TcxLookupComboBox
          Left = 90
          Top = 141
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'kategori'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsKategori
          TabOrder = 11
          Width = 236
        end
        object cxlSubKategori: TcxLookupComboBox
          Left = 90
          Top = 166
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'subkategori'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSKategori
          TabOrder = 12
          Width = 236
        end
        object cxsKode: TcxSpinEdit
          Left = 90
          Top = 15
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 294
          Caption = 'Stok / Stok Pak'
          Transparent = True
        end
        object cxsStok: TcxSpinEdit
          Left = 115
          Top = 292
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 31
          Width = 121
        end
        object cxlSatuan: TcxLookupComboBox
          Left = 90
          Top = 191
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'satuan'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSatuan
          Properties.OnChange = cxlSatuanPropertiesChange
          TabOrder = 13
          Width = 162
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 218
          Caption = 'Packing'
          Transparent = True
        end
        object cxtPacking: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 216
          Properties.CharCase = ecUpperCase
          TabOrder = 15
          Width = 336
        end
        object cxLabel9: TcxLabel
          Left = 425
          Top = 253
          Caption = 'Berat Standard'
          Transparent = True
          Visible = False
        end
        object cxsBPUnit: TcxSpinEdit
          Left = 463
          Top = 206
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 14
          Visible = False
          Width = 121
        end
        object cxtKodeZahir: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 41
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 336
        end
        object cxLabel10: TcxLabel
          Left = 11
          Top = 43
          Caption = 'Kode Zahir'
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 10
          Top = 319
          Caption = 'Isi / Pak'
          Transparent = True
        end
        object cxsIsiPerPak: TcxSpinEdit
          Left = 115
          Top = 317
          Properties.MinValue = 1.000000000000000000
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          TabOrder = 35
          Value = 1.000000000000000000
          Width = 121
        end
        object cxsStokPak: TcxSpinEdit
          Left = 240
          Top = 292
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 32
          Width = 121
        end
        object cxLabel12: TcxLabel
          Left = 10
          Top = 344
          Caption = 'Buffer Stok'
          Transparent = True
        end
        object cxsBufferStok: TcxSpinEdit
          Left = 115
          Top = 342
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          TabOrder = 39
          Width = 121
        end
        object cxLabel15: TcxLabel
          Left = 240
          Top = 333
          Caption = 'Warna'
          Transparent = True
          Visible = False
        end
        object cxtWarna: TcxTextEdit
          Tag = 1
          Left = 338
          Top = 332
          Properties.CharCase = ecUpperCase
          TabOrder = 36
          Visible = False
          Width = 336
        end
        object GroupBox1: TGroupBox
          Left = 697
          Top = 311
          Width = 246
          Height = 138
          Caption = ' Spesifikasi Teknis '
          TabOrder = 33
          Visible = False
          object cxLabel16: TcxLabel
            Left = 11
            Top = 77
            Caption = 'Panjang'
            Transparent = True
          end
          object cxtPanjang: TcxTextEdit
            Tag = 1
            Left = 77
            Top = 75
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 111
          end
          object cxLabel17: TcxLabel
            Left = 11
            Top = 103
            Caption = 'Lebar'
            Transparent = True
          end
          object cxtLebar: TcxTextEdit
            Tag = 1
            Left = 77
            Top = 101
            Properties.CharCase = ecUpperCase
            TabOrder = 6
            Width = 111
          end
          object cxLabel18: TcxLabel
            Left = 11
            Top = 24
            Caption = 'Tebal'
            Transparent = True
          end
          object cxtTebal: TcxTextEdit
            Tag = 1
            Left = 77
            Top = 23
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 111
          end
          object cxLabel19: TcxLabel
            Left = 11
            Top = 50
            Caption = 'Diameter'
            Transparent = True
          end
          object cxtDiameter: TcxTextEdit
            Tag = 1
            Left = 77
            Top = 49
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 111
          end
        end
        object cxLabel20: TcxLabel
          Left = 10
          Top = 243
          Caption = 'Berat / Unit (BOM)'
          Transparent = True
        end
        object cxsBPUnitBom: TcxSpinEdit
          Left = 115
          Top = 241
          Properties.DisplayFormat = '#,##0.00000'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Properties.OnChange = cxsBPUnitBomPropertiesChange
          TabOrder = 24
          OnExit = cxsBPUnitBomExit
          Width = 121
        end
        object chkDijual: TcxCheckBox
          Left = 8
          Top = 375
          Caption = 'Dijual'
          TabOrder = 42
          Width = 63
        end
        object chkDibeli: TcxCheckBox
          Left = 58
          Top = 375
          Caption = 'Dibeli'
          TabOrder = 43
          Width = 63
        end
        object chkJobOrder: TcxCheckBox
          Left = 108
          Top = 375
          Caption = 'Job Order'
          TabOrder = 44
          Width = 78
        end
        object cxtBPPerUnit: TcxTextEdit
          Tag = 1
          Left = 523
          Top = 251
          Properties.CharCase = ecUpperCase
          TabOrder = 25
          Visible = False
          Width = 158
        end
        object chkPerluED: TcxCheckBox
          Left = 180
          Top = 375
          Caption = 'Perlu ED'
          TabOrder = 46
          Width = 78
        end
        object btnUploadED: TButton
          Left = 250
          Top = 373
          Width = 91
          Height = 25
          Caption = 'Upload ED / TDS'
          TabOrder = 40
          OnClick = btnUploadEDClick
        end
        object btnLihatED: TButton
          Left = 345
          Top = 373
          Width = 81
          Height = 25
          Caption = 'Lihat ED / TDS'
          TabOrder = 41
          OnClick = btnLihatEDClick
        end
        object ed: TEdit
          Left = 800
          Top = 226
          Width = 121
          Height = 21
          TabOrder = 16
          Visible = False
        end
        object chkGmbrED: TcxCheckBox
          Left = 266
          Top = 15
          Caption = 'Gambar ED Sudah Ada'
          Properties.ReadOnly = True
          TabOrder = 2
          Transparent = True
          Width = 143
        end
        object GroupBox2: TGroupBox
          Left = 437
          Top = 17
          Width = 246
          Height = 138
          Caption = ' Peletan '
          TabOrder = 4
          object cxLabel36: TcxLabel
            Left = 11
            Top = 24
            Caption = 'Harga Kel. 1'
            Transparent = True
          end
          object cxLabel37: TcxLabel
            Left = 11
            Top = 50
            Caption = 'Harga Kel. 2'
            Transparent = True
          end
          object cxsHrgKel1: TcxSpinEdit
            Left = 85
            Top = 23
            Properties.DisplayFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 0
            Width = 121
          end
          object cxsHrgKel2: TcxSpinEdit
            Left = 85
            Top = 49
            Properties.DisplayFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 2
            Width = 121
          end
        end
        object btnWebcam: TButton
          Left = 768
          Top = 238
          Width = 75
          Height = 25
          Caption = 'Webcam'
          TabOrder = 23
          OnClick = btnWebcamClick
        end
        object cxLabel35: TcxLabel
          Left = 11
          Top = 68
          Caption = 'Lokasi / Grid'
          Transparent = True
        end
        object cxtLokasi: TcxTextEdit
          Tag = 1
          Left = 90
          Top = 66
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 128
        end
        object cxtLokGrid: TcxTextEdit
          Tag = 1
          Left = 222
          Top = 66
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 128
        end
        object cxChkCons: TcxCheckBox
          Left = 8
          Top = 395
          Caption = 'Consumable'
          TabOrder = 50
          Width = 88
        end
        object cxLabel59: TcxLabel
          Left = 237
          Top = 243
          Caption = 'KG'
          Transparent = True
        end
        object cxLabel60: TcxLabel
          Left = 10
          Top = 268
          Caption = 'Berat Packing / Unit'
          Transparent = True
        end
        object cxsBeratPackPerUnit: TcxSpinEdit
          Left = 115
          Top = 266
          Properties.DisplayFormat = '#,##0.00000'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Properties.OnChange = cxsBPUnitBomPropertiesChange
          TabOrder = 26
          OnExit = cxsBPUnitBomExit
          Width = 121
        end
        object cxLabel61: TcxLabel
          Left = 237
          Top = 268
          Caption = 'KG'
          Transparent = True
        end
        object cxChkLotNumber: TcxCheckBox
          Left = 94
          Top = 395
          Caption = 'Lot Number'
          TabOrder = 51
          Width = 88
        end
        object cxChkFAI: TcxCheckBox
          Left = 8
          Top = 416
          Caption = 'FAI (First Article Inspection)'
          TabOrder = 52
          Width = 193
        end
      end
      object TabSheet4: TTabSheet [1]
        Caption = 'Spesifikasi Teknis'
        ImageIndex = 3
        object cxLabel21: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Kode'
          Transparent = True
        end
        object cxsKode2: TcxSpinEdit
          Left = 115
          Top = 15
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 121
        end
        object cxLabel22: TcxLabel
          Left = 10
          Top = 43
          Caption = 'Deskripsi'
          Transparent = True
        end
        object cxtDeskripsi2: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 41
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 336
        end
        object cxLabel27: TcxLabel
          Left = 10
          Top = 68
          Caption = 'Berat Standard'
          Transparent = True
        end
        object cxsBeratPerUnit: TcxSpinEdit
          Left = 316
          Top = 6
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          TabOrder = 0
          Visible = False
          Width = 121
        end
        object cxLabel28: TcxLabel
          Left = 10
          Top = 93
          Caption = 'Berat / Unit (BOM)'
          Transparent = True
        end
        object cxsBeratPerUnitB: TcxSpinEdit
          Left = 116
          Top = 91
          Properties.DisplayFormat = '#,##0.00000'
          Properties.EditFormat = '#,##0.00000'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Properties.OnChange = cxsBeratPerUnitBPropertiesChange
          TabOrder = 8
          Width = 121
        end
        object cxLabel23: TcxLabel
          Left = 10
          Top = 117
          Caption = 'Warna'
          Transparent = True
        end
        object cxtWarna2: TcxTextEdit
          Tag = 1
          Left = 116
          Top = 116
          Properties.CharCase = ecUpperCase
          TabOrder = 11
          Width = 336
        end
        object cxLabel24: TcxLabel
          Left = 10
          Top = 142
          Caption = 'Panjang'
          Transparent = True
        end
        object cxtPanjang2: TcxTextEdit
          Tag = 1
          Left = 116
          Top = 141
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 138
        end
        object cxlSatPanjang: TcxLookupComboBox
          Left = 258
          Top = 141
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'satuan'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSatuan
          Properties.OnChange = cxlSatuanPropertiesChange
          TabOrder = 14
          Width = 85
        end
        object cxLabel25: TcxLabel
          Left = 11
          Top = 167
          Caption = 'Lebar'
          Transparent = True
        end
        object cxtLebar2: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 166
          Properties.CharCase = ecUpperCase
          TabOrder = 16
          Width = 138
        end
        object cxlSatLebar: TcxLookupComboBox
          Left = 258
          Top = 166
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'satuan'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSatuan
          Properties.OnChange = cxlSatuanPropertiesChange
          TabOrder = 17
          Width = 85
        end
        object cxLabel26: TcxLabel
          Left = 11
          Top = 192
          Caption = 'Tebal'
          Transparent = True
        end
        object cxtTebal2: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 191
          Properties.CharCase = ecUpperCase
          TabOrder = 19
          Width = 138
        end
        object cxlSatTebal: TcxLookupComboBox
          Left = 258
          Top = 191
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'satuan'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSatuan
          Properties.OnChange = cxlSatuanPropertiesChange
          TabOrder = 20
          Width = 85
        end
        object cxLabel29: TcxLabel
          Left = 10
          Top = 217
          Caption = 'Flow Process'
          Transparent = True
        end
        object cxtFlowProcess: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 216
          Properties.CharCase = ecUpperCase
          TabOrder = 22
          Width = 336
        end
        object cxLabel30: TcxLabel
          Left = 10
          Top = 267
          Caption = 'Diameter Dalam'
          Transparent = True
        end
        object cxtDiaDalam: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 266
          Properties.CharCase = ecUpperCase
          TabOrder = 26
          Width = 138
        end
        object cxLabel31: TcxLabel
          Left = 10
          Top = 292
          Caption = 'Diameter Luar'
          Transparent = True
        end
        object cxtDiaLuar: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 291
          Properties.CharCase = ecUpperCase
          TabOrder = 29
          Width = 138
        end
        object cxtSatBeratPerUnit: TcxTextEdit
          Tag = 1
          Left = 302
          Top = 66
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 103
        end
        object cxTextEdit10: TcxTextEdit
          Left = 241
          Top = 91
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 9
          Text = 'KG'
          Width = 103
        end
        object cxLabel32: TcxLabel
          Left = 10
          Top = 242
          Caption = 'Packing'
          Transparent = True
        end
        object cxtPacking2: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 241
          Properties.CharCase = ecUpperCase
          TabOrder = 24
          Width = 422
        end
        object cxLabel33: TcxLabel
          Left = 10
          Top = 317
          Caption = 'Panjang Lurus (NICE)'
          Transparent = True
        end
        object cxtPnjLrs: TcxTextEdit
          Tag = 1
          Left = 117
          Top = 316
          Properties.CharCase = ecUpperCase
          TabOrder = 32
          Width = 138
        end
        object cxlSatDD: TcxLookupComboBox
          Left = 258
          Top = 266
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'satuan'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSatuan
          Properties.OnChange = cxlSatuanPropertiesChange
          TabOrder = 27
          Width = 85
        end
        object cxlSatDL: TcxLookupComboBox
          Left = 258
          Top = 291
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'satuan'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsSatuan
          Properties.OnChange = cxlSatuanPropertiesChange
          TabOrder = 30
          Width = 85
        end
        object cxTextEdit2: TcxTextEdit
          Left = 258
          Top = 316
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 33
          Text = 'CM'
          Width = 85
        end
        object cxtBeratPerUnit: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 66
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 183
        end
        object cxLabel34: TcxLabel
          Left = 10
          Top = 343
          Caption = 'Buffer Stok'
          Transparent = True
        end
        object cxsBufferStok2: TcxSpinEdit
          Left = 117
          Top = 341
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Properties.OnChange = cxsBufferStok2PropertiesChange
          TabOrder = 35
          Width = 121
        end
      end
      object TabSheet5: TTabSheet [2]
        Caption = 'Spesifikasi Rope (Tampar)'
        ImageIndex = 4
        object cxLabel38: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Kode'
          Transparent = True
        end
        object cxtKode3: TcxSpinEdit
          Left = 115
          Top = 15
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxLabel39: TcxLabel
          Left = 10
          Top = 43
          Caption = 'Deskripsi'
          Transparent = True
        end
        object cxtDeskripsi3: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 41
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 336
        end
        object cxLabel40: TcxLabel
          Left = 10
          Top = 68
          Caption = 'Berat Standard'
          Transparent = True
        end
        object cxtBeratPerUnit2: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 66
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 183
        end
        object cxtSatBeratPerUnit2: TcxTextEdit
          Tag = 1
          Left = 302
          Top = 66
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 103
        end
        object cxLabel41: TcxLabel
          Left = 10
          Top = 93
          Caption = 'Diameter'
          Transparent = True
        end
        object cxtSat_DiaRope: TcxTextEdit
          Tag = 1
          Left = 179
          Top = 91
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 77
        end
        object cxLabel42: TcxLabel
          Left = 10
          Top = 118
          Caption = 'Strand'
          Transparent = True
        end
        object cxLabel44: TcxLabel
          Left = 10
          Top = 168
          Caption = 'Bobbins per Strand'
          Transparent = True
        end
        object cxLabel45: TcxLabel
          Left = 10
          Top = 193
          Caption = 'Denier per Strand'
          Transparent = True
        end
        object cxLabel46: TcxLabel
          Left = 10
          Top = 218
          Caption = 'Denier per Bobbin'
          Transparent = True
        end
        object cxLabel47: TcxLabel
          Left = 10
          Top = 243
          Caption = 'Warna'
          Transparent = True
        end
        object cxLabel48: TcxLabel
          Left = 10
          Top = 268
          Caption = 'Fibers per Bobbin'
          Transparent = True
        end
        object cxLabel49: TcxLabel
          Left = 10
          Top = 293
          Caption = 'Denier per Fiber'
          Transparent = True
        end
        object cxLabel50: TcxLabel
          Left = 10
          Top = 318
          Caption = 'GPM per Fiber'
          Transparent = True
        end
        object cxLabel51: TcxLabel
          Left = 10
          Top = 343
          Caption = 'GPM per Bobbin'
          Transparent = True
        end
        object cxLabel52: TcxLabel
          Left = 10
          Top = 368
          Caption = 'Twist'
          Transparent = True
        end
        object cxLabel53: TcxLabel
          Left = 10
          Top = 393
          Caption = 'Lay'
          Transparent = True
        end
        object cxLabel54: TcxLabel
          Left = 10
          Top = 417
          Caption = 'Panjang'
          Transparent = True
        end
        object cxtSat_PanjangRope: TcxTextEdit
          Tag = 1
          Left = 179
          Top = 416
          Properties.CharCase = ecUpperCase
          TabOrder = 38
          Width = 77
        end
        object cxtSat_GPM_PF: TcxTextEdit
          Tag = 1
          Left = 179
          Top = 316
          Properties.CharCase = ecUpperCase
          TabOrder = 28
          Width = 77
        end
        object cxtSat_GPM_PB: TcxTextEdit
          Tag = 1
          Left = 179
          Top = 341
          Properties.CharCase = ecUpperCase
          TabOrder = 31
          Width = 77
        end
        object cxtWarnaRope: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 241
          Properties.CharCase = ecUpperCase
          TabOrder = 21
          Width = 246
        end
        object cxtSat_BPS: TcxTextEdit
          Tag = 1
          Left = 179
          Top = 166
          Properties.CharCase = ecUpperCase
          TabOrder = 15
          Width = 77
        end
        object cxLabel43: TcxLabel
          Left = 10
          Top = 143
          Caption = 'Twist per Meter'
          Transparent = True
        end
        object cxsDiaRope: TcxTextEdit
          Left = 115
          Top = 91
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 61
        end
        object cxsStrand: TcxTextEdit
          Left = 115
          Top = 116
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 61
        end
        object cxsTPM: TcxTextEdit
          Left = 115
          Top = 141
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 61
        end
        object cxsBPS: TcxTextEdit
          Left = 115
          Top = 166
          Properties.CharCase = ecUpperCase
          TabOrder = 14
          Width = 61
        end
        object cxsDPS: TcxTextEdit
          Left = 115
          Top = 191
          Properties.CharCase = ecUpperCase
          TabOrder = 17
          Width = 61
        end
        object cxsDPB: TcxTextEdit
          Left = 115
          Top = 216
          Properties.CharCase = ecUpperCase
          TabOrder = 19
          Width = 61
        end
        object cxsFPB: TcxTextEdit
          Left = 115
          Top = 266
          Properties.CharCase = ecUpperCase
          TabOrder = 23
          Width = 61
        end
        object cxsDPF: TcxTextEdit
          Left = 115
          Top = 291
          Properties.CharCase = ecUpperCase
          TabOrder = 25
          Width = 61
        end
        object cxsGPM_PF: TcxTextEdit
          Left = 115
          Top = 316
          Properties.CharCase = ecUpperCase
          TabOrder = 27
          Width = 61
        end
        object cxsGPM_PB: TcxTextEdit
          Left = 115
          Top = 341
          Properties.CharCase = ecUpperCase
          TabOrder = 30
          Width = 61
        end
        object cxsTwist: TcxTextEdit
          Left = 115
          Top = 366
          Properties.CharCase = ecUpperCase
          TabOrder = 33
          Width = 61
        end
        object cxsLay: TcxTextEdit
          Left = 115
          Top = 391
          Properties.CharCase = ecUpperCase
          TabOrder = 35
          Width = 61
        end
        object cxsPanjangRope: TcxTextEdit
          Left = 115
          Top = 416
          Properties.CharCase = ecUpperCase
          TabOrder = 37
          Width = 61
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 420
        end
        inherited cxGrd: TcxGrid
          Top = 6
          Width = 1056
          Height = 408
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            OnEditValueChanged = cxTblViewEditValueChanged
            OnInitEditValue = cxTblViewInitEditValue
            DataController.DataSource = ds
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = False
            OptionsView.GroupByBox = False
            object cxTblViewkode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode'
              Options.Editing = False
              Width = 54
            end
            object cxTblViewnama: TcxGridDBColumn
              Caption = 'Nama'
              DataBinding.FieldName = 'deskripsi'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Options.Editing = False
              Width = 340
            end
            object cxTblViewColumn1: TcxGridDBColumn
              Caption = 'Stok'
              DataBinding.FieldName = 'stok'
              Width = 49
            end
            object cxTblViewsatuan: TcxGridDBColumn
              Caption = 'Satuan'
              DataBinding.FieldName = 'satuan'
              Options.Editing = False
              Width = 44
            end
            object cxTblViewColumn4: TcxGridDBColumn
              Caption = 'Aktif'
              DataBinding.FieldName = 'f_aktif'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.ReadOnly = True
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 33
            end
            object cxTblViewColumn6: TcxGridDBColumn
              Caption = 'Perlu ED'
              DataBinding.FieldName = 'f_ed'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 50
            end
            object cxTblViewColumn5: TcxGridDBColumn
              Caption = 'Gbr. ED'
              DataBinding.FieldName = 'f_gambar_ed'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 47
            end
            object cxTblViewColumn7: TcxGridDBColumn
              Caption = 'Brt/Unit'
              DataBinding.FieldName = 'berat_per_unit_b'
              Width = 45
            end
            object cxTblViewColumn8: TcxGridDBColumn
              Caption = 'Tipe'
              DataBinding.FieldName = 'tipe'
              Width = 134
            end
            object cxTblViewColumn2: TcxGridDBColumn
              Caption = 'Kategori'
              DataBinding.FieldName = 'kategori'
              Width = 155
            end
            object cxTblViewColumn3: TcxGridDBColumn
              Caption = 'Subkategori'
              DataBinding.FieldName = 'subkategori'
              Width = 162
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Mutasi Stok'
        ImageIndex = 2
        object cxLabel13: TcxLabel
          Left = 10
          Top = 15
          Caption = 'Tgl. Stok Awal'
          Transparent = True
        end
        object cxdTglStkAwal: TcxDateEdit
          Left = 90
          Top = 13
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxGrid1: TcxGrid
          Left = 10
          Top = 43
          Width = 712
          Height = 297
          TabOrder = 5
          object cxTblMutStok: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMutStok
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxTblMutStoktanggal: TcxGridDBColumn
              Caption = 'Tanggal'
              DataBinding.FieldName = 'tanggal'
              Width = 74
            end
            object cxTblMutStoksawal: TcxGridDBColumn
              Caption = 'Stok Awal'
              DataBinding.FieldName = 'sawal'
              Width = 95
            end
            object cxTblMutStokColumn1: TcxGridDBColumn
              Caption = 'Masuk'
              DataBinding.FieldName = 'masuk'
              Width = 84
            end
            object cxTblMutStokColumn2: TcxGridDBColumn
              Caption = 'Keluar'
              DataBinding.FieldName = 'keluar'
              Width = 75
            end
            object cxTblMutStoksakhir: TcxGridDBColumn
              Caption = 'Stok Akhir'
              DataBinding.FieldName = 'sakhir'
              Width = 92
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxTblMutStok
          end
        end
        object cxLabel14: TcxLabel
          Left = 225
          Top = 15
          Caption = 'Gudang'
          Transparent = True
        end
        object cxCmbGdg: TcxComboBox
          Left = 274
          Top = 13
          TabOrder = 1
          Width = 77
        end
        object btnProses: TButton
          Left = 365
          Top = 13
          Width = 75
          Height = 21
          Caption = 'Proses'
          TabOrder = 2
          OnClick = btnProsesClick
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Consumable'
        ImageIndex = 5
        object cxLabel55: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Kode'
          Transparent = True
        end
        object cxLabel56: TcxLabel
          Left = 10
          Top = 43
          Caption = 'Deskripsi'
          Transparent = True
        end
        object cxtKode4: TcxSpinEdit
          Left = 115
          Top = 15
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxtDeskripsi4: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 41
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 336
        end
        object cxLabel57: TcxLabel
          Left = 10
          Top = 69
          Caption = 'Dept'
          Transparent = True
        end
        object cxLabel58: TcxLabel
          Left = 10
          Top = 95
          Caption = 'Divisi'
          Transparent = True
        end
        object cxCmbDept: TcxComboBox
          Left = 115
          Top = 67
          Properties.DropDownListStyle = lsEditFixedList
          Properties.OnCloseUp = cxCmbDeptPropertiesCloseUp
          TabOrder = 4
          Width = 121
        end
        object cxCmbDivisi: TcxComboBox
          Left = 115
          Top = 93
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 6
          Width = 121
        end
        object cxGrdCons: TcxGrid
          Left = 10
          Top = 151
          Width = 336
          Height = 200
          TabOrder = 9
          object cxTblCons: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCons
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblConsid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxTblConskode_brg: TcxGridDBColumn
              DataBinding.FieldName = 'kode_brg'
              Visible = False
            end
            object cxTblConsdept: TcxGridDBColumn
              Caption = 'Dept'
              DataBinding.FieldName = 'dept'
            end
            object cxTblConsdivisi: TcxGridDBColumn
              Caption = 'Divisi'
              DataBinding.FieldName = 'divisi'
            end
          end
          object cxGrdConsLevel1: TcxGridLevel
            GridView = cxTblCons
          end
        end
        object btnTambahCons: TButton
          Left = 115
          Top = 118
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 8
          OnClick = btnTambahConsClick
        end
        object btnHapusCons: TButton
          Left = 10
          Top = 357
          Width = 75
          Height = 25
          Caption = 'Hapus'
          TabOrder = 10
          OnClick = btnHapusConsClick
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Proses Tambahan'
        ImageIndex = 6
        object cxLabel62: TcxLabel
          Left = 10
          Top = 68
          Caption = 'Jenis Proses'
        end
        object cxCmbJenisProses: TcxComboBox
          Left = 115
          Top = 67
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 3
          Width = 239
        end
        object btnTambahJnsProses: TButton
          Left = 116
          Top = 119
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 8
          OnClick = btnTambahJnsProsesClick
        end
        object cxLabel63: TcxLabel
          Left = 10
          Top = 17
          Caption = 'Kode'
          Transparent = True
        end
        object cxtKode5: TcxSpinEdit
          Left = 115
          Top = 15
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 121
        end
        object cxLabel64: TcxLabel
          Left = 10
          Top = 43
          Caption = 'Deskripsi'
          Transparent = True
        end
        object cxtDeskripsi5: TcxTextEdit
          Tag = 1
          Left = 115
          Top = 41
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 336
        end
        object cxlLabel63: TcxLabel
          Left = 10
          Top = 94
          Caption = 'Barang'
        end
        object cxlBrg: TcxLookupComboBox
          Left = 115
          Top = 93
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
          Properties.ListSource = dsBrg
          TabOrder = 4
          Width = 426
        end
        object cxGrid2: TcxGrid
          Left = 10
          Top = 151
          Width = 676
          Height = 200
          TabOrder = 9
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsPT
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxGridDBTableView1proses: TcxGridDBColumn
              Caption = 'Proses'
              DataBinding.FieldName = 'proses'
            end
            object cxGridDBTableView1kode_brg_proses: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode_brg_proses'
              Width = 102
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Width = 369
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object btnHapusProses: TButton
          Left = 10
          Top = 357
          Width = 75
          Height = 25
          Caption = 'Hapus'
          TabOrder = 10
          OnClick = btnHapusProsesClick
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 536
    Width = 1091
    Height = 50
    TabOrder = 3
    inherited btnKeluar: TButton
      Top = 12
    end
    inherited btnTambah: TButton
      Top = 12
    end
    inherited btnEdit: TButton
      Top = 12
    end
    inherited btnHapus: TButton
      Top = 12
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Top = 12
    end
    inherited btnSimpan: TButton
      Top = 12
      OnClick = btnSimpanClick
    end
  end
  object cxtNamaFile: TcxTextEdit [3]
    Left = 749
    Top = 210
    TabOrder = 2
    Visible = False
    Width = 121
  end
  inherited zQry: TZQuery
    SQL.Strings = (
      
        'SELECT kode, deskripsi, stok, satuan, f_aktif, f_ed, berat_per_u' +
        'nit_b, tipe, kategori, subkategori, IF(ISNULL(ed),0,1) f_gambar_' +
        'ed'
      'FROM tbl_barang')
  end
  object OpenDlg: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 970
    Top = 304
  end
  object zqMutStok: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM tbl_tmp_kartu_stok_brg WHERE host = :host AND guda' +
        'ng = :gudang')
    Params = <
      item
        DataType = ftUnknown
        Name = 'host'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gudang'
        ParamType = ptUnknown
      end>
    Left = 445
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'host'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'gudang'
        ParamType = ptUnknown
      end>
  end
  object dsMutStok: TDataSource
    DataSet = zqMutStok
    Left = 475
    Top = 20
  end
  object zqTipe: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_tipe_brg ORDER BY tipe')
    Params = <>
    Left = 930
    Top = 405
  end
  object dsTipe: TDataSource
    DataSet = zqTipe
    Left = 960
    Top = 405
  end
  object zqKategori: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_brg ORDER BY kategori')
    Params = <>
    Left = 930
    Top = 435
  end
  object dsKategori: TDataSource
    DataSet = zqKategori
    Left = 960
    Top = 435
  end
  object zqskategori: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_subkategori_brg ORDER BY subkategori')
    Params = <>
    Left = 990
    Top = 380
  end
  object dsSKategori: TDataSource
    DataSet = zqskategori
    Left = 1020
    Top = 380
  end
  object zqSatuan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_satuan ORDER BY satuan')
    Params = <>
    Left = 990
    Top = 435
  end
  object dsSatuan: TDataSource
    DataSet = zqSatuan
    Left = 1020
    Top = 435
  end
  object OpenDlg2: TOpenDialog
    Filter = 'PDF|*.pdf'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 985
    Top = 314
  end
  object zqrCons: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_barang_det_cons'
      'WHERE kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    Left = 510
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsCons: TDataSource
    DataSet = zqrCons
    Left = 540
    Top = 20
  end
  object zqrBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi FROM tbl_barang '
      'WHERE f_aktif = 1')
    Params = <>
    Left = 575
    Top = 21
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 605
    Top = 20
  end
  object zqrPT: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.deskripsi FROM tbl_barang_proses a'
      'LEFT JOIN tbl_barang b ON a.kode_brg_proses = b.kode'
      'WHERE kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    Left = 635
    Top = 21
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsPT: TDataSource
    DataSet = zqrPT
    Left = 665
    Top = 20
  end
end
