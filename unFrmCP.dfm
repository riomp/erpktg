inherited frmCP: TfrmCP
  Left = 468
  Top = 130
  Width = 1292
  Height = 771
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Control Plan'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1276
    inherited lblJudul: TLabel
      Width = 101
      Caption = 'Control Plan'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1276
    Height = 590
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 1274
      Height = 588
      ActivePage = cxTabSheet1
      Align = alClient
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      Style = 7
      TabOrder = 0
      ClientRectBottom = 587
      ClientRectLeft = 1
      ClientRectRight = 1273
      ClientRectTop = 21
      object cxTabSheet1: TcxTabSheet
        Caption = 'Detail dan Dimensi'
        ImageIndex = 0
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 1272
          Height = 566
          Align = alClient
          TabOrder = 0
          object cxGroupBox1: TcxGroupBox
            Left = 9
            Top = 6
            Caption = 'Detail'
            TabOrder = 0
            Height = 230
            Width = 912
            object Label2: TLabel
              Left = 17
              Top = 77
              Width = 62
              Height = 13
              Caption = 'Kode Barang'
            end
            object Label3: TLabel
              Left = 16
              Top = 148
              Width = 65
              Height = 13
              Caption = 'Nama Barang'
            end
            object Label4: TLabel
              Left = 16
              Top = 199
              Width = 68
              Height = 13
              Caption = 'Fungsi Produk'
            end
            object Label5: TLabel
              Left = 16
              Top = 175
              Width = 44
              Height = 13
              Caption = 'Customer'
            end
            object Label6: TLabel
              Left = 520
              Top = 148
              Width = 64
              Height = 13
              Caption = 'Base Material'
            end
            object Label7: TLabel
              Left = 520
              Top = 172
              Width = 64
              Height = 13
              Caption = 'Sheet / Tube'
            end
            object Label8: TLabel
              Left = 520
              Top = 196
              Width = 52
              Height = 13
              Caption = 'Berat Jenis'
            end
            object Label54: TLabel
              Left = 17
              Top = 104
              Width = 47
              Height = 13
              Caption = 'Kelompok'
            end
            object Label55: TLabel
              Left = 17
              Top = 127
              Width = 69
              Height = 13
              Caption = 'Sub Kelompok'
            end
            object Label63: TLabel
              Left = 17
              Top = 53
              Width = 30
              Height = 13
              Caption = 'No. IS'
            end
            object cxtKode: TcxTextEdit
              Left = 104
              Top = 75
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              Width = 169
            end
            object cxtDeskripsi: TcxTextEdit
              Left = 104
              Top = 148
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 401
            end
            object cxlCustomer: TcxLookupComboBox
              Left = 104
              Top = 172
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
              Properties.ListSource = dsCust
              TabOrder = 2
              Width = 401
            end
            object cxtFungsi: TcxTextEdit
              Left = 104
              Top = 199
              Properties.CharCase = ecUpperCase
              TabOrder = 3
              Width = 401
            end
            object cxCmbBase: TcxComboBox
              Left = 600
              Top = 148
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'HDPE'
                'LLDPE'
                'LDPE'
                'PP'
                'MIX HDPE/LLDPE')
              Properties.OnChange = cxCmbBasePropertiesChange
              TabOrder = 4
              Width = 185
            end
            object cxtSheet: TcxComboBox
              Left = 600
              Top = 172
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'SHEET'
                'TUBE')
              TabOrder = 5
              Width = 185
            end
            object cxsBeratJenis: TcxSpinEdit
              Left = 600
              Top = 196
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 6
              Width = 185
            end
            object cxChkAktif: TcxCheckBox
              Left = 376
              Top = 76
              Caption = 'Aktif'
              State = cbsChecked
              TabOrder = 7
              Width = 66
            end
            object cxlKelompok: TcxLookupComboBox
              Left = 104
              Top = 100
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
              Top = 124
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
            object cxtSubKelompok: TcxTextEdit
              Left = 184
              Top = 124
              TabOrder = 10
              Width = 312
            end
            object cxtKelompok: TcxTextEdit
              Left = 184
              Top = 100
              TabOrder = 11
              Width = 312
            end
            object btnGenerateKode: TButton
              Left = 276
              Top = 75
              Width = 95
              Height = 21
              Caption = 'Generate Kode'
              TabOrder = 12
              OnClick = btnGenerateKodeClick
            end
            object cxLabel121: TcxLabel
              Left = 17
              Top = 30
              Caption = 'Unit'
            end
            object cxlUnitKTG: TcxLookupComboBox
              Left = 104
              Top = 27
              Properties.KeyFieldNames = 'unit'
              Properties.ListColumns = <
                item
                  Caption = 'Unit'
                  FieldName = 'unit'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsUnitKTG
              TabOrder = 14
              Width = 130
            end
            object cxlIS: TcxLookupComboBox
              Left = 104
              Top = 51
              Properties.KeyFieldNames = 'no_is'
              Properties.ListColumns = <
                item
                  Caption = 'No. IS'
                  FieldName = 'no_is'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsIS
              Properties.OnEditValueChanged = cxlISPropertiesEditValueChanged
              TabOrder = 15
              Width = 237
            end
            object cxLabel1: TcxLabel
              Left = 242
              Top = 30
              Caption = 'No.CP'
            end
            object cxtNoCP: TcxTextEdit
              Left = 280
              Top = 27
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.Color = 16777088
              TabOrder = 17
              Width = 206
            end
            object btnCopyDetailBrg: TButton
              Left = 520
              Top = 105
              Width = 146
              Height = 25
              Caption = 'Copy Detail Barang'
              TabOrder = 18
              OnClick = btnCopyDetailBrgClick
            end
            object cxLabel36: TcxLabel
              Left = 347
              Top = 55
              Caption = 'Tgl.Release'
            end
            object cxdTgl1: TcxDateEdit
              Left = 415
              Top = 55
              TabOrder = 20
              Width = 136
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 8
            Top = 237
            Caption = 'Dimensi'
            TabOrder = 1
            Height = 423
            Width = 918
            object Label9: TLabel
              Left = 16
              Top = 54
              Width = 42
              Height = 13
              Caption = 'Tebal ('#181')'
            end
            object Label10: TLabel
              Left = 16
              Top = 78
              Width = 71
              Height = 13
              Caption = 'Berat Kotor (gr)'
            end
            object Label11: TLabel
              Left = 16
              Top = 126
              Width = 81
              Height = 13
              Caption = 'Berat / Meter (gr)'
            end
            object Label12: TLabel
              Left = 16
              Top = 102
              Width = 75
              Height = 13
              Caption = 'Berat Bersih (gr)'
            end
            object Label13: TLabel
              Left = 16
              Top = 150
              Width = 159
              Height = 13
              Caption = 'Berat Produk Jadi + Aksesoris (gr)'
            end
            object Label14: TLabel
              Left = 15
              Top = 174
              Width = 78
              Height = 13
              Caption = 'Lebar Buka (cm)'
            end
            object Label15: TLabel
              Left = 15
              Top = 200
              Width = 72
              Height = 13
              Caption = 'Lebar Jadi (cm)'
            end
            object Label16: TLabel
              Left = 15
              Top = 226
              Width = 89
              Height = 13
              Caption = 'Panjang Total (cm)'
            end
            object Label17: TLabel
              Left = 15
              Top = 250
              Width = 84
              Height = 13
              Caption = 'Panjang Jadi (cm)'
            end
            object Label18: TLabel
              Left = 440
              Top = 55
              Width = 78
              Height = 13
              Caption = 'Lebar Tube (cm)'
            end
            object Label19: TLabel
              Left = 680
              Top = 54
              Width = 92
              Height = 13
              Caption = 'Panjang Plong (cm)'
            end
            object Label20: TLabel
              Left = 680
              Top = 78
              Width = 80
              Height = 13
              Caption = 'Lebar Plong (cm)'
            end
            object Label21: TLabel
              Left = 440
              Top = 127
              Width = 65
              Height = 13
              Caption = 'Top Fold (cm)'
            end
            object Label22: TLabel
              Left = 440
              Top = 151
              Width = 56
              Height = 13
              Caption = 'Gusset (cm)'
            end
            object Label23: TLabel
              Left = 440
              Top = 175
              Width = 87
              Height = 13
              Caption = 'Lebar Handle (cm)'
            end
            object Label58: TLabel
              Left = 16
              Top = 30
              Width = 34
              Height = 13
              Caption = 'Bentuk'
            end
            object Label59: TLabel
              Left = 440
              Top = 199
              Width = 56
              Height = 13
              Caption = 'Tinggi Total'
              Visible = False
            end
            object Label65: TLabel
              Left = 440
              Top = 79
              Width = 56
              Height = 13
              Caption = 'Jumlah Line'
            end
            object Label72: TLabel
              Left = 440
              Top = 104
              Width = 77
              Height = 13
              Caption = 'Standar Per Roll'
            end
            object Label1: TLabel
              Left = 16
              Top = 277
              Width = 82
              Height = 13
              Caption = 'Aksesoris Berupa'
            end
            object Label24: TLabel
              Left = 15
              Top = 301
              Width = 90
              Height = 13
              Caption = 'Tebal Akseosris ('#181')'
            end
            object Label25: TLabel
              Left = 15
              Top = 325
              Width = 98
              Height = 13
              Caption = 'Lebar Aksesoris (cm)'
            end
            object Label26: TLabel
              Left = 15
              Top = 349
              Width = 110
              Height = 13
              Caption = 'Panjang Aksesoris (cm)'
            end
            object Label27: TLabel
              Left = 15
              Top = 373
              Width = 123
              Height = 13
              Caption = 'Berat Bersih Aksesoris (gr)'
            end
            object Label28: TLabel
              Left = 15
              Top = 393
              Width = 53
              Height = 13
              Caption = 'Alur Proses'
            end
            object lbl1: TLabel
              Left = 680
              Top = 104
              Width = 63
              Height = 13
              Caption = 'Jumlah Plong'
              Visible = False
            end
            object cxsTebal: TcxSpinEdit
              Left = 184
              Top = 54
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 0
              Width = 129
            end
            object cxsBeratKotor: TcxSpinEdit
              Left = 184
              Top = 78
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 1
              Width = 129
            end
            object cxsBeratBersih: TcxSpinEdit
              Left = 184
              Top = 102
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 2
              Width = 129
            end
            object cxsBeratMeter: TcxSpinEdit
              Left = 184
              Top = 126
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 3
              Width = 129
            end
            object cxsBeratJadi: TcxSpinEdit
              Left = 184
              Top = 150
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 4
              Width = 129
            end
            object cxsLebarBuka: TcxSpinEdit
              Left = 184
              Top = 174
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 5
              Width = 129
            end
            object cxsLebarJadi: TcxSpinEdit
              Left = 184
              Top = 198
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 6
              Width = 129
            end
            object cxsPanjang: TcxSpinEdit
              Left = 184
              Top = 222
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 7
              Width = 129
            end
            object cxsPanjangJadi: TcxSpinEdit
              Left = 184
              Top = 246
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 8
              Width = 129
            end
            object cxsLebarTube: TcxSpinEdit
              Left = 544
              Top = 55
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 9
              Width = 129
            end
            object cxsPanjangPlong: TcxSpinEdit
              Left = 784
              Top = 54
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 10
              Width = 129
            end
            object cxsLebarPlong: TcxSpinEdit
              Left = 784
              Top = 78
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 11
              Width = 129
            end
            object cxsTopFlod: TcxSpinEdit
              Left = 544
              Top = 127
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 12
              Width = 129
            end
            object cxsGusset: TcxSpinEdit
              Left = 544
              Top = 151
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 13
              Width = 129
            end
            object cxsLebarHandle: TcxSpinEdit
              Left = 544
              Top = 175
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 14
              Width = 129
            end
            object cxCmbBentuk: TcxComboBox
              Left = 184
              Top = 28
              Properties.DropDownListStyle = lsEditFixedList
              TabOrder = 15
              Width = 129
            end
            object cxsTinggiTotal: TcxSpinEdit
              Left = 544
              Top = 199
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 16
              Visible = False
              Width = 129
            end
            object btnHitungBerat: TButton
              Left = 590
              Top = 17
              Width = 75
              Height = 25
              Caption = 'Hitung Berat'
              TabOrder = 17
              OnClick = btnHitungBeratClick
            end
            object cxsLine: TcxSpinEdit
              Left = 544
              Top = 79
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 18
              Width = 129
            end
            object cxsStandar: TcxSpinEdit
              Left = 544
              Top = 104
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 19
              Width = 129
            end
            object cxtttebal: TcxTextEdit
              Left = 314
              Top = 54
              Properties.CharCase = ecUpperCase
              TabOrder = 20
              Width = 117
            end
            object cxttbk: TcxTextEdit
              Left = 314
              Top = 79
              Properties.CharCase = ecUpperCase
              TabOrder = 21
              Text = #177
              Width = 117
            end
            object cxttbb: TcxTextEdit
              Left = 314
              Top = 104
              Properties.CharCase = ecUpperCase
              TabOrder = 22
              Text = #177
              Width = 117
            end
            object cxttberatmeter: TcxTextEdit
              Left = 314
              Top = 129
              Properties.CharCase = ecUpperCase
              TabOrder = 23
              Text = #177
              Width = 117
            end
            object cxttfg: TcxTextEdit
              Left = 314
              Top = 149
              Properties.CharCase = ecUpperCase
              TabOrder = 24
              Text = #177
              Width = 117
            end
            object cxttlb: TcxTextEdit
              Left = 314
              Top = 174
              Properties.CharCase = ecUpperCase
              TabOrder = 25
              Text = #177
              Width = 117
            end
            object cxttlj: TcxTextEdit
              Left = 314
              Top = 199
              Properties.CharCase = ecUpperCase
              TabOrder = 26
              Text = #177
              Width = 117
            end
            object cxttpt: TcxTextEdit
              Left = 314
              Top = 219
              Properties.CharCase = ecUpperCase
              TabOrder = 27
              Text = #177
              Width = 117
            end
            object cxttpj: TcxTextEdit
              Left = 314
              Top = 246
              Properties.CharCase = ecUpperCase
              TabOrder = 28
              Text = #177
              Width = 117
            end
            object cxtAksesoris: TcxTextEdit
              Left = 184
              Top = 269
              Properties.CharCase = ecUpperCase
              TabOrder = 29
              Width = 377
            end
            object cxsTebalAks: TcxSpinEdit
              Left = 185
              Top = 292
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 30
              Width = 113
            end
            object cxsBeratAks: TcxSpinEdit
              Left = 185
              Top = 366
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 31
              Width = 113
            end
            object cxsLebarAks: TcxSpinEdit
              Left = 185
              Top = 317
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 32
              Width = 113
            end
            object cxsPanjangAks: TcxSpinEdit
              Left = 185
              Top = 343
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 33
              Width = 113
            end
            object cxttt_aks: TcxTextEdit
              Left = 309
              Top = 296
              Properties.CharCase = ecUpperCase
              TabOrder = 34
              Text = #177
              Width = 117
            end
            object cxttl_aks: TcxTextEdit
              Left = 309
              Top = 321
              Properties.CharCase = ecUpperCase
              TabOrder = 35
              Text = #177
              Width = 117
            end
            object cxttp_aks: TcxTextEdit
              Left = 309
              Top = 341
              Properties.CharCase = ecUpperCase
              TabOrder = 36
              Text = #177
              Width = 117
            end
            object cxttb_aks: TcxTextEdit
              Left = 309
              Top = 366
              Properties.CharCase = ecUpperCase
              TabOrder = 37
              Text = #177
              Width = 117
            end
            object cxtAlur: TcxTextEdit
              Left = 185
              Top = 393
              Properties.CharCase = ecUpperCase
              TabOrder = 38
              Width = 680
            end
            object cxsPlong: TcxSpinEdit
              Left = 784
              Top = 104
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 39
              Visible = False
              Width = 129
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 13
            Top = 663
            Caption = 'Visual Produk'
            TabOrder = 2
            Height = 104
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
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Properti'
        ImageIndex = 1
        object cxGroupBox4: TcxGroupBox
          Left = 4
          Top = 9
          Caption = 'Property Produksi'
          TabOrder = 0
          Height = 382
          Width = 1062
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
            Top = 311
            Width = 127
            Height = 13
            Caption = 'Acuan Standar Warna Film'
            Visible = False
          end
          object Label50: TLabel
            Left = 16
            Top = 335
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
          object Label52: TLabel
            Left = 624
            Top = 24
            Width = 58
            Height = 13
            Caption = 'Critical Point'
          end
          object Label30: TLabel
            Left = 16
            Top = 262
            Width = 87
            Height = 13
            Caption = 'Opasitas Silver (%)'
          end
          object Label31: TLabel
            Left = 16
            Top = 287
            Width = 88
            Height = 13
            Caption = 'Opasitas Black (%)'
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
            Top = 306
            Properties.CharCase = ecUpperCase
            TabOrder = 18
            Visible = False
            Width = 249
          end
          object cxlSatuan: TcxLookupComboBox
            Left = 224
            Top = 330
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
            TabOrder = 19
            Width = 137
          end
          object cxlSatuanDet: TcxLookupComboBox
            Left = 363
            Top = 330
            Properties.CharCase = ecUpperCase
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'unitid'
            Properties.ListColumns = <
              item
                FieldName = 'unitid'
              end>
            Properties.ListSource = ds4
            TabOrder = 20
            Width = 73
          end
          object cxsTSTD: TcxSpinEdit
            Left = 351
            Top = 40
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 21
            Width = 121
          end
          object cxsTSMD: TcxSpinEdit
            Left = 351
            Top = 64
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 22
            Width = 121
          end
          object cxsTETD: TcxSpinEdit
            Left = 351
            Top = 88
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 23
            Width = 121
          end
          object cxsTEMD: TcxSpinEdit
            Left = 351
            Top = 112
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 24
            Width = 121
          end
          object cxsTearTD: TcxSpinEdit
            Left = 351
            Top = 136
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 25
            Width = 121
          end
          object cxsTearMD: TcxSpinEdit
            Left = 351
            Top = 160
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 26
            Width = 121
          end
          object cxsPuncture: TcxSpinEdit
            Left = 351
            Top = 184
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 27
            Width = 121
          end
          object cxsOpasitas: TcxSpinEdit
            Left = 351
            Top = 232
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 28
            Width = 121
          end
          object cxsDrat: TcxSpinEdit
            Left = 351
            Top = 208
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 29
            Width = 121
          end
          object cxtCritical: TcxMemo
            Left = 625
            Top = 40
            TabOrder = 30
            Height = 141
            Width = 264
          end
          object cxsMinOpasitas1: TcxSpinEdit
            Left = 224
            Top = 257
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 31
            Width = 121
          end
          object cxsOpasitas1: TcxSpinEdit
            Left = 351
            Top = 257
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 32
            Width = 121
          end
          object cxsMaxOpasitas1: TcxSpinEdit
            Left = 478
            Top = 257
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 33
            Width = 121
          end
          object cxsMinOpasitas2: TcxSpinEdit
            Left = 224
            Top = 282
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 34
            Width = 121
          end
          object cxsOpasitas2: TcxSpinEdit
            Left = 351
            Top = 282
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 35
            Width = 121
          end
          object cxsMaxOpasitas2: TcxSpinEdit
            Left = 478
            Top = 282
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 36
            Width = 121
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Alur Proses'
        ImageIndex = 2
        object cxGroupBox5: TcxGroupBox
          Left = 1249
          Top = 10
          Caption = 'Routing'
          TabOrder = 0
          Visible = False
          Height = 406
          Width = 1067
          object cxGrid1: TcxGrid
            Left = 13
            Top = 16
            Width = 1028
            Height = 380
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
                Options.Editing = False
                Width = 51
              end
              object cxColRouting: TcxGridColumn
                Caption = 'Jenis Routing'
                PropertiesClassName = 'TcxComboBoxProperties'
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
                Width = 402
              end
              object cxColMesin: TcxGridColumn
                Caption = 'Mesin'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    Caption = 'Mesin'
                    FieldName = 'kode'
                  end>
                Properties.ListSource = dsMesin
                Width = 91
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxTblRouting
            end
          end
        end
        object ScrollBox2: TScrollBox
          Left = 0
          Top = 0
          Width = 1272
          Height = 566
          Align = alClient
          TabOrder = 1
          object cxGroupBox6: TcxGroupBox
            Left = 9
            Top = 10
            Caption = 'Extrusi 1'
            TabOrder = 0
            Height = 121
            Width = 1042
            object cxLabel2: TcxLabel
              Left = 8
              Top = 20
              Caption = 'Keterangan'
            end
            object cxt_ape_nama: TcxTextEdit
              Left = 115
              Top = 17
              TabOrder = 1
              Width = 192
            end
            object cxLabel3: TcxLabel
              Left = 8
              Top = 45
              Caption = 'Core type / Dim'
            end
            object cxt_ape_coretype: TcxTextEdit
              Left = 115
              Top = 42
              TabOrder = 3
              Width = 192
            end
            object cxLabel4: TcxLabel
              Left = 314
              Top = 20
              Caption = 'Lebar tube (cm)'
            end
            object cxLabel5: TcxLabel
              Left = 314
              Top = 45
              Caption = 'Shifting Bobin (cm)'
            end
            object cxLabel6: TcxLabel
              Left = 8
              Top = 70
              Caption = 'Treat Luar'
            end
            object cxLabel7: TcxLabel
              Left = 8
              Top = 95
              Caption = 'Treat Dalam'
            end
            object cxLabel8: TcxLabel
              Left = 314
              Top = 70
              Caption = 'Pola Treat'
            end
            object cxt_ape_pola_treatluar: TcxTextEdit
              Left = 421
              Top = 67
              TabOrder = 9
              Width = 192
            end
            object cxLabel9: TcxLabel
              Left = 314
              Top = 95
              Caption = 'Pola Treat'
            end
            object cxt_ape_pola_treatdalam: TcxTextEdit
              Left = 421
              Top = 92
              TabOrder = 11
              Width = 192
            end
            object cxLabel10: TcxLabel
              Left = 619
              Top = 20
              Caption = 'Meter / Roll'
            end
            object cxLabel11: TcxLabel
              Left = 619
              Top = 45
              Caption = 'Panjang Core (cm)'
            end
            object cxs_ape_treatluar: TcxSpinEdit
              Left = 115
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 14
              Width = 121
            end
            object cxs_ape_treatdalam: TcxSpinEdit
              Left = 115
              Top = 92
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 15
              Width = 121
            end
            object cxLabel34: TcxLabel
              Left = 243
              Top = 70
              Caption = 'Dyne'
            end
            object cxLabel39: TcxLabel
              Left = 243
              Top = 95
              Caption = 'Dyne'
            end
            object cxs_ape_lebartube: TcxSpinEdit
              Left = 421
              Top = 17
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 18
              Width = 121
            end
            object cxs_ape_shifting_bobin: TcxSpinEdit
              Left = 421
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 19
              Width = 121
            end
            object cxs_ape_meter_roll: TcxSpinEdit
              Left = 726
              Top = 17
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 20
              Width = 121
            end
            object cxs_ape_panjang_core: TcxSpinEdit
              Left = 726
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 21
              Width = 121
            end
            object cxChkExtrusi: TcxCheckBox
              Left = 989
              Top = 11
              Caption = 'Aktif'
              TabOrder = 22
              Width = 48
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 9
            Top = 263
            Caption = 'Printing'
            TabOrder = 1
            Height = 226
            Width = 1042
            object cxLabel12: TcxLabel
              Left = 8
              Top = 20
              Caption = 'Keterangan'
            end
            object cxt_app_nama: TcxTextEdit
              Left = 115
              Top = 17
              TabOrder = 1
              Width = 192
            end
            object cxLabel13: TcxLabel
              Left = 8
              Top = 45
              Caption = 'Core type / Dim'
            end
            object cxt_app_coretype: TcxTextEdit
              Left = 115
              Top = 42
              TabOrder = 3
              Width = 192
            end
            object cxLabel14: TcxLabel
              Left = 314
              Top = 20
              Caption = 'Tipe Print'
            end
            object cxt_app_tipe_print: TcxTextEdit
              Left = 421
              Top = 17
              TabOrder = 5
              Width = 192
            end
            object cxLabel15: TcxLabel
              Left = 314
              Top = 45
              Caption = 'Shifting Bobin (cm)'
            end
            object cxLabel16: TcxLabel
              Left = 8
              Top = 70
              Caption = 'Jumlah Silinder'
            end
            object cxLabel17: TcxLabel
              Left = 8
              Top = 95
              Caption = 'Arah Gulungan'
            end
            object cxLabel18: TcxLabel
              Left = 314
              Top = 70
              Caption = 'Keliling Silinder (cm)'
            end
            object cxLabel19: TcxLabel
              Left = 314
              Top = 95
              Caption = 'Repeat Print (cm)'
            end
            object cxLabel20: TcxLabel
              Left = 619
              Top = 20
              Caption = 'Meter / Roll'
            end
            object cxLabel21: TcxLabel
              Left = 619
              Top = 45
              Caption = 'Panjang Core (cm)'
            end
            object cxs_app_jmlsilinder: TcxSpinEdit
              Left = 115
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 13
              Width = 121
            end
            object cxLabel22: TcxLabel
              Left = 8
              Top = 120
              Caption = 'Arah Film'
            end
            object cxLabel23: TcxLabel
              Left = 8
              Top = 145
              Caption = 'Urutan Warna/Tinta'
            end
            object cxLabel24: TcxLabel
              Left = 8
              Top = 170
              Caption = 'Lebar Gbr (cm)'
            end
            object cxs_app_lebar_gbr: TcxSpinEdit
              Left = 115
              Top = 167
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 17
              Width = 121
            end
            object cxLabel25: TcxLabel
              Left = 8
              Top = 195
              Caption = 'Panjang Gbr (cm)'
            end
            object cxs_app_panjang_gbr: TcxSpinEdit
              Left = 115
              Top = 192
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 19
              Width = 121
            end
            object cxLabel26: TcxLabel
              Left = 314
              Top = 120
              Caption = 'Desain Printing'
            end
            object cxt_app_desain_printing: TcxTextEdit
              Left = 421
              Top = 117
              TabOrder = 21
              Width = 192
            end
            object cxLabel27: TcxLabel
              Left = 314
              Top = 170
              Caption = 'Jarak Gbr dr Tepi Kiri (cm)'
            end
            object cxLabel28: TcxLabel
              Left = 314
              Top = 195
              Caption = 'Jarak Gbr dr Tepi Kanan (cm)'
            end
            object cxt_app_urutanwarna: TcxTextEdit
              Left = 115
              Top = 142
              TabOrder = 24
              Width = 539
            end
            object cxt_app_arahfilm: TcxTextEdit
              Left = 115
              Top = 117
              TabOrder = 25
              Width = 192
            end
            object cxt_app_arahgulungan: TcxTextEdit
              Left = 115
              Top = 92
              TabOrder = 26
              Width = 192
            end
            object cxs_app_shifting_bobin: TcxSpinEdit
              Left = 421
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 27
              Width = 121
            end
            object cxs_app_keliling_silinder: TcxSpinEdit
              Left = 421
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 28
              Width = 121
            end
            object cxs_app_repeat_print: TcxSpinEdit
              Left = 421
              Top = 92
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 29
              Width = 121
            end
            object cxs_app_jarak_gbrkiri: TcxSpinEdit
              Left = 461
              Top = 167
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 30
              Width = 121
            end
            object cxs_app_jarak_gbrkanan: TcxSpinEdit
              Left = 461
              Top = 192
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 31
              Width = 121
            end
            object cxs_app_meter_roll: TcxSpinEdit
              Left = 726
              Top = 17
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 32
              Width = 121
            end
            object cxs_app_panjang_core: TcxSpinEdit
              Left = 726
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 33
              Width = 121
            end
            object cxLabel40: TcxLabel
              Left = 619
              Top = 70
              Caption = 'Panjang Silinder (cm)'
            end
            object cxs_app_panjang_silinder: TcxSpinEdit
              Left = 726
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 35
              Width = 121
            end
            object cxs_app_diameter_silinder: TcxSpinEdit
              Left = 726
              Top = 92
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 36
              Width = 121
            end
            object cxLabel41: TcxLabel
              Left = 619
              Top = 95
              Caption = 'Diameter Silinder (cm)'
            end
            object cxLabel42: TcxLabel
              Left = 618
              Top = 170
              Caption = 'Jarak Gbr dr Tepi Atas (cm)'
            end
            object cxLabel43: TcxLabel
              Left = 618
              Top = 195
              Caption = 'Jarak Gbr dr Tepi Bawah (cm)'
            end
            object cxs_app_jarak_gbratas: TcxSpinEdit
              Left = 765
              Top = 167
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 40
              Width = 121
            end
            object cxs_app_jarak_gbrbawah: TcxSpinEdit
              Left = 765
              Top = 192
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 41
              Width = 121
            end
            object cxChkPrinting: TcxCheckBox
              Left = 989
              Top = 11
              Caption = 'Aktif'
              TabOrder = 42
              Width = 48
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 9
            Top = 493
            Caption = 'Converting'
            TabOrder = 2
            Height = 93
            Width = 1042
            object Label29: TLabel
              Left = 580
              Top = 70
              Width = 63
              Height = 13
              Caption = 'Jumlah Plong'
              Visible = False
            end
            object cxLabel29: TcxLabel
              Left = 8
              Top = 20
              Caption = 'Keterangan'
            end
            object cxt_apc_nama: TcxTextEdit
              Left = 115
              Top = 17
              TabOrder = 1
              Width = 691
            end
            object cxLabel30: TcxLabel
              Left = 8
              Top = 45
              Caption = 'Jarak Gbr dr Tepi Kiri (cm)'
            end
            object cxLabel33: TcxLabel
              Left = 8
              Top = 70
              Caption = 'Jarak Gbr dr Tepi Kanan (cm)'
            end
            object cxs_apc_jarak_gbrkanan: TcxSpinEdit
              Left = 161
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 4
              Width = 121
            end
            object cxs_apc_jarak_gbrkiri: TcxSpinEdit
              Left = 161
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 5
              Width = 121
            end
            object cxLabel31: TcxLabel
              Left = 290
              Top = 45
              Caption = 'Jarak Gbr dr Tepi Atas (cm)'
            end
            object cxLabel32: TcxLabel
              Left = 290
              Top = 70
              Caption = 'Jarak Gbr dr Tepi Bawah (cm)'
            end
            object cxs_apc_jarak_gbratas: TcxSpinEdit
              Left = 443
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 8
              Width = 121
            end
            object cxs_apc_jarak_gbrbawah: TcxSpinEdit
              Left = 443
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 9
              Width = 121
            end
            object cxLabel35: TcxLabel
              Left = 575
              Top = 45
              Caption = 'Arah Film'
            end
            object cxt_apc_arahfilm: TcxTextEdit
              Left = 631
              Top = 42
              TabOrder = 11
              Width = 192
            end
            object cxChkConverting: TcxCheckBox
              Left = 989
              Top = 11
              Caption = 'Aktif'
              TabOrder = 12
              Width = 48
            end
            object cxs_apc_plong: TcxSpinEdit
              Left = 654
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 13
              Visible = False
              Width = 129
            end
          end
          object cxGroupBox9: TcxGroupBox
            Left = 9
            Top = 588
            Caption = 'Gusset'
            TabOrder = 3
            Height = 93
            Width = 1042
            object cxLabel37: TcxLabel
              Left = 8
              Top = 20
              Caption = 'Keterangan'
            end
            object cxt_apg_nama: TcxTextEdit
              Left = 110
              Top = 17
              TabOrder = 1
              Width = 691
            end
            object cxLabel38: TcxLabel
              Left = 8
              Top = 45
              Caption = 'Lebar Jadi (cm)'
            end
            object cxLabel44: TcxLabel
              Left = 8
              Top = 70
              Caption = 'Meter/Roll'
            end
            object cxs_apg_meter: TcxSpinEdit
              Left = 111
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 4
              Width = 121
            end
            object cxs_apg_lebar: TcxSpinEdit
              Left = 111
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 5
              Width = 121
            end
            object cxLabel45: TcxLabel
              Left = 245
              Top = 45
              Caption = 'Toleransi Gusset'
            end
            object cxLabel46: TcxLabel
              Left = 245
              Top = 65
              Caption = 'Panjang Core'
            end
            object cxs_apg_toleransi: TcxSpinEdit
              Left = 333
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 8
              Width = 121
            end
            object cxs_apg_panjang: TcxSpinEdit
              Left = 333
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 9
              Width = 121
            end
            object cxLabel47: TcxLabel
              Left = 465
              Top = 45
              Caption = 'Arah Film'
            end
            object cxt_apg_arah: TcxTextEdit
              Left = 556
              Top = 42
              TabOrder = 11
              Width = 250
            end
            object cxChkGusset: TcxCheckBox
              Left = 989
              Top = 11
              Caption = 'Aktif'
              TabOrder = 12
              Width = 48
            end
            object cxLabel48: TcxLabel
              Left = 463
              Top = 70
              Caption = 'Core type / Dim'
            end
            object cxt_apg_core: TcxTextEdit
              Left = 555
              Top = 67
              TabOrder = 14
              Width = 251
            end
          end
          object cxGroupBox10: TcxGroupBox
            Left = 9
            Top = 140
            Caption = 'Extrusi 2'
            TabOrder = 4
            Height = 121
            Width = 1042
            object cxLabel49: TcxLabel
              Left = 8
              Top = 20
              Caption = 'Keterangan'
            end
            object cxt_ape_nama1: TcxTextEdit
              Left = 115
              Top = 17
              TabOrder = 1
              Width = 192
            end
            object cxLabel50: TcxLabel
              Left = 8
              Top = 45
              Caption = 'Core type / Dim'
            end
            object cxt_ape_coretype1: TcxTextEdit
              Left = 115
              Top = 42
              TabOrder = 3
              Width = 192
            end
            object cxLabel51: TcxLabel
              Left = 314
              Top = 20
              Caption = 'Lebar tube (cm)'
            end
            object cxLabel52: TcxLabel
              Left = 314
              Top = 45
              Caption = 'Shifting Bobin (cm)'
            end
            object cxLabel53: TcxLabel
              Left = 8
              Top = 70
              Caption = 'Treat Luar'
            end
            object cxLabel54: TcxLabel
              Left = 8
              Top = 95
              Caption = 'Treat Dalam'
            end
            object cxLabel55: TcxLabel
              Left = 314
              Top = 70
              Caption = 'Pola Treat'
            end
            object cxt_ape_pola_treatluar1: TcxTextEdit
              Left = 421
              Top = 67
              TabOrder = 9
              Width = 192
            end
            object cxLabel56: TcxLabel
              Left = 314
              Top = 95
              Caption = 'Pola Treat'
            end
            object cxt_ape_pola_treatdalam1: TcxTextEdit
              Left = 421
              Top = 92
              TabOrder = 11
              Width = 192
            end
            object cxLabel57: TcxLabel
              Left = 619
              Top = 20
              Caption = 'Meter / Roll'
            end
            object cxLabel58: TcxLabel
              Left = 619
              Top = 45
              Caption = 'Panjang Core (cm)'
            end
            object cxs_ape_treatluar1: TcxSpinEdit
              Left = 115
              Top = 67
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 14
              Width = 121
            end
            object cxs_ape_treatdalam1: TcxSpinEdit
              Left = 115
              Top = 92
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 15
              Width = 121
            end
            object cxLabel59: TcxLabel
              Left = 243
              Top = 70
              Caption = 'Dyne'
            end
            object cxLabel60: TcxLabel
              Left = 243
              Top = 95
              Caption = 'Dyne'
            end
            object cxs_ape_lebartube1: TcxSpinEdit
              Left = 421
              Top = 17
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 18
              Width = 121
            end
            object cxs_ape_shifting_bobin1: TcxSpinEdit
              Left = 421
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 19
              Width = 121
            end
            object cxs_ape_meter_roll1: TcxSpinEdit
              Left = 726
              Top = 17
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 20
              Width = 121
            end
            object cxs_ape_panjang_core1: TcxSpinEdit
              Left = 726
              Top = 42
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 21
              Width = 121
            end
            object cxChkExtrusi1: TcxCheckBox
              Left = 989
              Top = 11
              Caption = 'Aktif'
              TabOrder = 22
              Width = 48
            end
          end
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = 'Gambar'
        ImageIndex = 3
        object Label69: TLabel
          Left = 12
          Top = 16
          Width = 95
          Height = 13
          Caption = 'Keterangan Gambar'
        end
        object Label70: TLabel
          Left = 12
          Top = 42
          Width = 47
          Height = 13
          Caption = 'Nama File'
        end
        object Label75: TLabel
          Left = 404
          Top = 61
          Width = 278
          Height = 13
          Caption = 'Note : Ukuran file gambar maksimal 500KB (*.jpg / *.jpeg)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 692
          Top = 8
          Width = 86
          Height = 13
          Caption = 'Gambar / Image : '
        end
        object cxtKetImg: TcxTextEdit
          Left = 116
          Top = 12
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 401
        end
        object cxtNamaFile: TcxTextEdit
          Left = 116
          Top = 37
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 486
        end
        object btnSimpanGambar: TButton
          Left = 116
          Top = 63
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 2
          OnClick = btnSimpanGambarClick
        end
        object btnBrowse: TButton
          Left = 606
          Top = 37
          Width = 75
          Height = 21
          Caption = 'Browse'
          TabOrder = 3
          OnClick = btnBrowseClick
        end
        object cxGrid8: TcxGrid
          Left = 10
          Top = 93
          Width = 646
          Height = 210
          TabOrder = 4
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
          end
          object cxTblImg: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Append.Visible = True
            OnCellClick = cxTblImgCellClick
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
              end
              item
                Kind = skSum
              end
              item
                Format = '#,#0.00'
                Position = spFooter
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,###'
                Kind = skSum
                DisplayText = 'Total'
              end
              item
                Format = '#,#0.00'
                Kind = skSum
              end
              item
                Format = '#,#0.00000'
                Kind = skSum
              end
              item
                Format = '#,#0.00'
                Kind = skSum
              end
              item
                Format = '#,#0.00'
                Kind = skSum
              end
              item
                Format = '#,#0.00'
                Kind = skSum
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Appending = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object cxColIDImg: TcxGridColumn
              Caption = 'ID'
              Width = 37
            end
            object cxColKetImg: TcxGridColumn
              Caption = 'Keterangan'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 338
            end
            object cxColLihatImg: TcxGridColumn
              Caption = 'Lihat'
              PropertiesClassName = 'TcxHyperLinkEditProperties'
              Properties.ReadOnly = True
              Width = 82
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxTblImg
          end
        end
        object btnHapusImg: TButton
          Left = 10
          Top = 310
          Width = 75
          Height = 25
          Caption = 'Hapus'
          TabOrder = 5
          OnClick = btnHapusImgClick
        end
        object btnLihatImage: TButton
          Left = 90
          Top = 310
          Width = 121
          Height = 25
          Caption = 'Lihat Image (System)'
          TabOrder = 6
          OnClick = btnLihatImageClick
        end
        object Panel3: TPanel
          Left = 691
          Top = 25
          Width = 576
          Height = 486
          BevelOuter = bvLowered
          TabOrder = 7
          object image: TImage
            Left = 6
            Top = 6
            Width = 565
            Height = 474
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 656
    Width = 1276
    inherited btnKeluar: TButton
      Top = 20
    end
    inherited btnSimpan: TButton
      Top = 20
    end
  end
  object zqrIS: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_is '
      'FROM tbl_is2 '
      'WHERE app_rnd = 1'
      'ORDER BY no_is')
    Params = <>
    Left = 177
    Top = 30
  end
  object dsIS: TDataSource
    DataSet = zqrIS
    Left = 207
    Top = 30
  end
  object zCust: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 229
    Top = 15
  end
  object dsCust: TDataSource
    DataSet = zCust
    Left = 259
    Top = 15
  end
  object zUnit: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_head')
    Params = <>
    Left = 293
    Top = 15
  end
  object ds3: TDataSource
    DataSet = zUnit
    Left = 323
    Top = 15
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
    Left = 357
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unitset'
        ParamType = ptUnknown
      end>
  end
  object ds4: TDataSource
    DataSet = zSatuan
    Left = 387
    Top = 15
  end
  object zqrBrgRouting: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 AND LEFT(kode,1) IN ('#39'B'#39','#39'A'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 422
    Top = 15
  end
  object dsBrgRouting: TDataSource
    DataSet = zqrBrgRouting
    Left = 452
    Top = 15
  end
  object zqrBrgBom: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 482
    Top = 15
  end
  object dsBrgBom: TDataSource
    DataSet = zqrBrgBom
    Left = 512
    Top = 15
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 932
    Top = 23
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 962
    Top = 23
  end
  object zqrUnit: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det')
    Params = <>
    Left = 998
    Top = 23
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 1023
    Top = 23
  end
  object zqrKelompok: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, kelompok'
      'FROM tbl_kelompok where kode='#39'A'#39
      'ORDER BY kode')
    Params = <>
    Left = 677
    Top = 23
  end
  object dsKelompok: TDataSource
    DataSet = zqrKelompok
    Left = 707
    Top = 23
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
    Left = 742
    Top = 23
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_kelompok'
        ParamType = ptUnknown
      end>
  end
  object dsSubKelompok: TDataSource
    DataSet = zqrSubKelompok
    Left = 767
    Top = 23
  end
  object zMesin: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode '
      'FROM tbl_mesin'
      'WHERE f_aktif = 1')
    Params = <>
    Left = 1057
    Top = 23
  end
  object dsMesin: TDataSource
    DataSet = zMesin
    Left = 1087
    Top = 23
  end
  object zqrUnitKTG: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT unit FROM tbl_unit_ktg')
    Params = <>
    Left = 1135
    Top = 23
  end
  object dsUnitKTG: TDataSource
    DataSet = zqrUnitKTG
    Left = 1170
    Top = 23
  end
  object zqrUnit2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unit'
      'ORDER BY description')
    Params = <>
    Left = 800
    Top = 23
  end
  object dsUnit2: TDataSource
    DataSet = zqrUnit2
    Left = 830
    Top = 23
  end
  object openDlg: TOpenDialog
    Left = 900
    Top = 21
  end
end
