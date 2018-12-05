inherited frmMstBrg_KTG: TfrmMstBrg_KTG
  Left = 406
  Top = 109
  VertScrollBar.Visible = False
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = 'Master Barang'
  ClientHeight = 688
  ClientWidth = 1330
  OldCreateOrder = True
  Visible = True
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1330
    inherited lblJudul: TLabel
      Width = 119
      Caption = 'Master Barang'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 1330
    Height = 546
    Align = alClient
    inherited pg: TPageControl
      Width = 1328
      Height = 544
      ActivePage = TabSheet4
      OnChange = pgChange
      inherited TabSheet1: TTabSheet
        Caption = 'Detail dan Dimensi'
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 1320
          Height = 516
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          object Label25: TLabel
            Left = 936
            Top = 622
            Width = 82
            Height = 13
            Caption = 'Aksesoris Berupa'
            Visible = False
          end
          object Label27: TLabel
            Left = 936
            Top = 646
            Width = 94
            Height = 13
            Caption = 'Tebal Aksesoris ('#181') '
            Visible = False
          end
          object Label28: TLabel
            Left = 1200
            Top = 646
            Width = 99
            Height = 13
            Caption = 'Lebar Aksesoris (cm)'
            Visible = False
          end
          object Label26: TLabel
            Left = 936
            Top = 670
            Width = 101
            Height = 13
            Caption = 'Berat Aksesoris Total'
            Visible = False
          end
          object Label29: TLabel
            Left = 928
            Top = 702
            Width = 111
            Height = 13
            Caption = 'Panjang Aksesoris (cm)'
            Visible = False
          end
          object cxGroupBox1: TcxGroupBox
            Left = 4
            Top = 1
            Caption = 'Detail'
            TabOrder = 0
            Height = 265
            Width = 1137
            object Label2: TLabel
              Left = 17
              Top = 77
              Width = 61
              Height = 13
              Caption = 'Kode Barang'
            end
            object Label3: TLabel
              Left = 17
              Top = 148
              Width = 64
              Height = 13
              Caption = 'Nama Barang'
            end
            object Label4: TLabel
              Left = 17
              Top = 224
              Width = 67
              Height = 13
              Caption = 'Fungsi Produk'
            end
            object Label5: TLabel
              Left = 17
              Top = 172
              Width = 46
              Height = 13
              Caption = 'Customer'
            end
            object Label6: TLabel
              Left = 520
              Top = 196
              Width = 64
              Height = 13
              Caption = 'Base Material'
            end
            object Label7: TLabel
              Left = 520
              Top = 172
              Width = 62
              Height = 13
              Caption = 'Sheet / Tube'
            end
            object Label8: TLabel
              Left = 520
              Top = 151
              Width = 53
              Height = 13
              Caption = 'Berat Jenis'
            end
            object Label54: TLabel
              Left = 17
              Top = 102
              Width = 45
              Height = 13
              Caption = 'Kelompok'
            end
            object Label55: TLabel
              Left = 17
              Top = 126
              Width = 66
              Height = 13
              Caption = 'Sub Kelompok'
            end
            object Label62: TLabel
              Left = 17
              Top = 197
              Width = 38
              Height = 13
              Caption = 'Supplier'
            end
            object Label63: TLabel
              Left = 17
              Top = 53
              Width = 30
              Height = 13
              Caption = 'No. IS'
            end
            object Label68: TLabel
              Left = 520
              Top = 224
              Width = 50
              Height = 13
              Caption = 'Sub Group'
            end
            object Label74: TLabel
              Left = 242
              Top = 28
              Width = 33
              Height = 13
              Caption = 'No. CP'
            end
            object Label79: TLabel
              Left = 930
              Top = 58
              Width = 40
              Height = 13
              Caption = 'Kategori'
              Visible = False
            end
            object Label80: TLabel
              Left = 930
              Top = 82
              Width = 57
              Height = 13
              Caption = 'Subkategori'
              Visible = False
            end
            object Label81: TLabel
              Left = 795
              Top = 151
              Width = 24
              Height = 13
              Caption = 'Jenis'
            end
            object Label82: TLabel
              Left = 795
              Top = 176
              Width = 75
              Height = 13
              Caption = 'Pasangan Afval'
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
              Top = 224
              Properties.CharCase = ecUpperCase
              TabOrder = 3
              Width = 401
            end
            object cxCmbBase: TcxComboBox
              Left = 600
              Top = 196
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
              Top = 149
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
            object cxlSupplier: TcxLookupComboBox
              Left = 104
              Top = 197
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
                end
                item
                  Caption = 'Alamat'
                  FieldName = 'alamat'
                end>
              Properties.ListSource = dsSupp
              TabOrder = 13
              Width = 401
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
              TabOrder = 15
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
              TabOrder = 16
              Width = 326
            end
            object cxtNoIS: TcxTextEdit
              Left = 522
              Top = 102
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              TabOrder = 17
              Visible = False
              Width = 169
            end
            object GroupBox1: TGroupBox
              Left = 510
              Top = 10
              Width = 391
              Height = 78
              Caption = 'FINA'
              TabOrder = 18
              object Label51: TLabel
                Left = 12
                Top = 22
                Width = 51
                Height = 13
                Caption = 'Kode FINA'
              end
              object Label64: TLabel
                Left = 12
                Top = 47
                Width = 54
                Height = 13
                Caption = 'Nama FINA'
              end
              object cxtKodeFina: TcxTextEdit
                Left = 81
                Top = 18
                Properties.CharCase = ecUpperCase
                TabOrder = 0
                Width = 169
              end
              object cxtNamaFina: TcxTextEdit
                Left = 80
                Top = 43
                Properties.CharCase = ecUpperCase
                TabOrder = 1
                Width = 299
              end
            end
            object cxtSubGroup: TcxComboBox
              Left = 600
              Top = 220
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'NONE'
                'AO'
                'BANNER'
                'BLACK'
                'BLUE'
                'BROWN'
                'CALCIUM'
                'CARTON BOX'
                'CARTON SHEET'
                'CORE PLUG'
                'DEGRADABLE'
                'DEHY'
                'EYELET'
                'GREEN'
                'HDPE BI'
                'HDPE UNI'
                'HDPE YARN'
                'HDPE-DEGRAD'
                'INK'
                'ISOLASI'
                'KAOS'
                'KARUNG'
                'LABEL'
                'LDPE'
                'LEM'
                'LLDPE-C4'
                'LLDPE-C6'
                'LLDPE-C8'
                'META'
                'MISC ADD'
                'ORANGE'
                'OUTER IN'
                'PAPER CORE'
                'PINK'
                'PP'
                'PP STRING'
                'PURGE COMP'
                'PVC CORE'
                'RECY'
                'RECY-HD-IN'
                'RECY-HD-OUT'
                'RECY-HD-EX'
                'RECY-LLD-IN'
                'RECY-LLD-OUT'
                'RECY-LLD-EX'
                'RED'
                'SILVER'
                'SLIP ADD'
                'SOLVENT'
                'TACKIFIER'
                'TOSCA'
                'UV'
                'VIOLET'
                'WHITE'
                'YELLOW')
              TabOrder = 19
              Width = 185
            end
            object btnCopyDetailBrg: TButton
              Left = 755
              Top = 90
              Width = 146
              Height = 25
              Caption = 'Copy Detail Barang'
              TabOrder = 20
              OnClick = btnCopyDetailBrgClick
            end
            object cxlCP: TcxLookupComboBox
              Left = 285
              Top = 25
              Properties.DropDownWidth = 600
              Properties.KeyFieldNames = 'no_cp'
              Properties.ListColumns = <
                item
                  Width = 20
                  FieldName = 'no_cp'
                end
                item
                  MinWidth = 120
                  Width = 120
                  FieldName = 'deskripsi'
                end>
              Properties.ListSource = dsDaftarCP
              Properties.OnEditValueChanged = cxlCPPropertiesEditValueChanged
              TabOrder = 21
              Width = 201
            end
            object cxCmbKategori: TcxComboBox
              Left = 1010
              Top = 58
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'HDPE'
                'LLDPE'
                'LDPE'
                'PP'
                'MIX HDPE/LLDPE')
              TabOrder = 22
              Visible = False
              Width = 185
            end
            object cxCmbSubKategori: TcxComboBox
              Left = 1010
              Top = 82
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'SHEET'
                'TUBE')
              TabOrder = 23
              Visible = False
              Width = 185
            end
            object cxCmbJenis: TcxComboBox
              Left = 882
              Top = 148
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                'SHEET'
                'TUBE')
              TabOrder = 24
              Width = 185
            end
            object cxlAfval: TcxLookupComboBox
              Left = 885
              Top = 175
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  FieldName = 'Deskripsi'
                end>
              Properties.ListSource = dsAfval
              TabOrder = 25
              Width = 181
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 4
            Top = 423
            Caption = 'Dimensi'
            TabOrder = 1
            Height = 232
            Width = 1137
            object Label9: TLabel
              Left = 16
              Top = 54
              Width = 43
              Height = 13
              Caption = 'Tebal ('#181')'
            end
            object Label10: TLabel
              Left = 16
              Top = 78
              Width = 76
              Height = 13
              Caption = 'Berat Kotor (gr)'
            end
            object Label11: TLabel
              Left = 16
              Top = 126
              Width = 85
              Height = 13
              Caption = 'Berat / Meter (gr)'
            end
            object Label12: TLabel
              Left = 16
              Top = 102
              Width = 79
              Height = 13
              Caption = 'Berat Bersih (gr)'
            end
            object Label13: TLabel
              Left = 16
              Top = 150
              Width = 164
              Height = 13
              Caption = 'Berat Produk Jadi + Aksesoris (gr)'
            end
            object Label14: TLabel
              Left = 435
              Top = 54
              Width = 77
              Height = 13
              Caption = 'Lebar Buka (cm)'
            end
            object Label15: TLabel
              Left = 435
              Top = 78
              Width = 73
              Height = 13
              Caption = 'Lebar Jadi (cm)'
            end
            object Label16: TLabel
              Left = 435
              Top = 102
              Width = 90
              Height = 13
              Caption = 'Panjang Total (cm)'
            end
            object Label17: TLabel
              Left = 435
              Top = 126
              Width = 85
              Height = 13
              Caption = 'Panjang Jadi (cm)'
            end
            object Label18: TLabel
              Left = 435
              Top = 150
              Width = 78
              Height = 13
              Caption = 'Lebar Tube (cm)'
            end
            object Label19: TLabel
              Left = 795
              Top = 54
              Width = 92
              Height = 13
              Caption = 'Panjang Plong (cm)'
            end
            object Label20: TLabel
              Left = 795
              Top = 78
              Width = 80
              Height = 13
              Caption = 'Lebar Plong (cm)'
            end
            object Label21: TLabel
              Left = 795
              Top = 132
              Width = 65
              Height = 13
              Caption = 'Top Fold (cm)'
            end
            object Label22: TLabel
              Left = 795
              Top = 156
              Width = 57
              Height = 13
              Caption = 'Gusset (cm)'
            end
            object Label23: TLabel
              Left = 795
              Top = 180
              Width = 87
              Height = 13
              Caption = 'Lebar Handle (cm)'
            end
            object Label30: TLabel
              Left = 16
              Top = 172
              Width = 96
              Height = 13
              Caption = 'AIR HOLE Size (mm)'
            end
            object Label31: TLabel
              Left = 16
              Top = 196
              Width = 34
              Height = 13
              Caption = '%  Cut'
            end
            object Label58: TLabel
              Left = 16
              Top = 30
              Width = 33
              Height = 13
              Caption = 'Bentuk'
            end
            object Label59: TLabel
              Left = 795
              Top = 204
              Width = 55
              Height = 13
              Caption = 'Tinggi Total'
              Visible = False
            end
            object Label65: TLabel
              Left = 435
              Top = 174
              Width = 55
              Height = 13
              Caption = 'Jumlah Line'
            end
            object Label72: TLabel
              Left = 435
              Top = 199
              Width = 77
              Height = 13
              Caption = 'Standar Per Roll'
            end
            object Label84: TLabel
              Left = 795
              Top = 103
              Width = 94
              Height = 13
              Caption = ' '#216'(cm) / Jmlh  (Roll)'
            end
            object cxsTebal: TcxSpinEdit
              Left = 184
              Top = 54
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 0
              Width = 129
            end
            object cxsBeratKotor: TcxSpinEdit
              Left = 184
              Top = 78
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 1
              Width = 129
            end
            object cxsBeratBersih: TcxSpinEdit
              Left = 184
              Top = 102
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 2
              Width = 129
            end
            object cxsBeratMeter: TcxSpinEdit
              Left = 184
              Top = 126
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 3
              Width = 129
            end
            object cxsBeratJadi: TcxSpinEdit
              Left = 184
              Top = 150
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 4
              Width = 129
            end
            object cxsLebarBuka: TcxSpinEdit
              Left = 531
              Top = 54
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 5
              Width = 129
            end
            object cxsLebarJadi: TcxSpinEdit
              Left = 531
              Top = 78
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 6
              Width = 129
            end
            object cxsPanjang: TcxSpinEdit
              Left = 531
              Top = 102
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 7
              Width = 129
            end
            object cxsPanjangJadi: TcxSpinEdit
              Left = 531
              Top = 126
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 8
              Width = 129
            end
            object cxsLebarTube: TcxSpinEdit
              Left = 531
              Top = 150
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 9
              Width = 129
            end
            object cxsPanjangPlong: TcxSpinEdit
              Left = 899
              Top = 54
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 10
              Width = 129
            end
            object cxsLebarPlong: TcxSpinEdit
              Left = 899
              Top = 78
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 11
              Width = 129
            end
            object cxsTopFlod: TcxSpinEdit
              Left = 899
              Top = 127
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 12
              Width = 129
            end
            object cxsGusset: TcxSpinEdit
              Left = 899
              Top = 151
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 13
              Width = 129
            end
            object cxsLebarHandle: TcxSpinEdit
              Left = 899
              Top = 175
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 14
              Width = 129
            end
            object cxsAirHole: TcxSpinEdit
              Left = 184
              Top = 172
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 15
              Width = 113
            end
            object cxsCut: TcxSpinEdit
              Left = 184
              Top = 196
              Properties.DisplayFormat = '#,##0.000'
              Properties.EditFormat = '#,##0.000'
              Properties.ValueType = vtFloat
              TabOrder = 16
              Width = 113
            end
            object cxCmbBentuk: TcxComboBox
              Left = 184
              Top = 28
              Properties.DropDownListStyle = lsEditFixedList
              TabOrder = 17
              Width = 129
            end
            object cxsTinggiTotal: TcxSpinEdit
              Left = 899
              Top = 199
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 18
              Visible = False
              Width = 129
            end
            object btnHitungBerat: TButton
              Left = 830
              Top = 12
              Width = 75
              Height = 25
              Caption = 'Hitung Berat'
              TabOrder = 19
              OnClick = btnHitungBeratClick
            end
            object cxsLine: TcxSpinEdit
              Left = 531
              Top = 174
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 20
              Width = 129
            end
            object cxsStandar: TcxSpinEdit
              Left = 531
              Top = 199
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 21
              Width = 129
            end
            object cxtttebal: TcxTextEdit
              Left = 314
              Top = 54
              Properties.CharCase = ecUpperCase
              TabOrder = 22
              Width = 117
            end
            object cxttbk: TcxTextEdit
              Left = 314
              Top = 79
              Properties.CharCase = ecUpperCase
              TabOrder = 23
              Text = #177
              Width = 117
            end
            object cxttbb: TcxTextEdit
              Left = 314
              Top = 104
              Properties.CharCase = ecUpperCase
              TabOrder = 24
              Text = #177
              Width = 117
            end
            object cxttberatmeter: TcxTextEdit
              Left = 314
              Top = 129
              Properties.CharCase = ecUpperCase
              TabOrder = 25
              Text = #177
              Width = 117
            end
            object cxttfg: TcxTextEdit
              Left = 314
              Top = 149
              Properties.CharCase = ecUpperCase
              TabOrder = 26
              Text = #177
              Width = 117
            end
            object cxttlb: TcxTextEdit
              Left = 659
              Top = 54
              Properties.CharCase = ecUpperCase
              TabOrder = 27
              Text = #177
              Width = 117
            end
            object cxttlj: TcxTextEdit
              Left = 659
              Top = 79
              Properties.CharCase = ecUpperCase
              TabOrder = 28
              Text = #177
              Width = 117
            end
            object cxttpt: TcxTextEdit
              Left = 659
              Top = 104
              Properties.CharCase = ecUpperCase
              TabOrder = 29
              Text = #177
              Width = 117
            end
            object cxttpj: TcxTextEdit
              Left = 659
              Top = 129
              Properties.CharCase = ecUpperCase
              TabOrder = 30
              Text = #177
              Width = 117
            end
            object cxsDiameter: TcxSpinEdit
              Left = 899
              Top = 103
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 31
              Width = 129
            end
            object cxsjmlPlong: TcxSpinEdit
              Left = 1029
              Top = 103
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 32
              Width = 72
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 4
            Top = 664
            Caption = 'Visual Produk'
            TabOrder = 2
            Height = 104
            Width = 912
            object Label32: TLabel
              Left = 16
              Top = 24
              Width = 69
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
              Width = 72
              Height = 13
              Caption = 'Visual Property'
            end
            object Label36: TLabel
              Left = 520
              Top = 48
              Width = 82
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
            Left = 982
            Top = 1286
            Width = 185
            Height = 96
            BevelOuter = bvNone
            Caption = 'Panel2'
            TabOrder = 3
          end
          object cxGroupBox6: TcxGroupBox
            Left = 964
            Top = 741
            Caption = 'Critical Point'
            TabOrder = 4
            Visible = False
            Height = 394
            Width = 1292
            object cxGrid3: TcxGrid
              Left = 829
              Top = 191
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
              Left = 829
              Top = 27
              Width = 452
              Height = 157
              TabOrder = 1
              Visible = False
              object cxTblCriticalPoint2: TcxGridTableView
                NavigatorButtons.ConfirmDelete = False
                OnCustomDrawCell = cxTblCriticalPointCustomDrawCell
                OnEditing = cxTblCriticalPoint2Editing
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
          end
          object cxGroupBox7: TcxGroupBox
            Left = 4
            Top = 274
            Caption = 'Tebal / Layer '
            TabOrder = 5
            Height = 144
            Width = 913
            object cxGrid5: TcxGrid
              Left = 13
              Top = 150
              Width = 793
              Height = 216
              TabOrder = 0
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
                  Properties.ListSource = dsBrgBom
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
                  Width = 64
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
                  Options.Editing = False
                end
              end
              object cxGridLevel3: TcxGridLevel
                GridView = cxTblMatSaran
              end
            end
            object cxs_MS_Layer1: TcxSpinEdit
              Left = 91
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 1
              Width = 55
            end
            object cxLabel16: TcxLabel
              Left = 15
              Top = 30
              Caption = 'Layer1/Luar'
            end
            object cxs_MS_Layer2: TcxSpinEdit
              Left = 193
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 3
              Width = 53
            end
            object cxLabel17: TcxLabel
              Left = 145
              Top = 30
              Caption = 'Layer2'
            end
            object cxLabel18: TcxLabel
              Left = 252
              Top = 30
              Caption = 'Layer3'
            end
            object cxs_MS_Layer3: TcxSpinEdit
              Left = 302
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 6
              Width = 54
            end
            object cxLabel19: TcxLabel
              Left = 18
              Top = 110
              Caption = 'Total'
            end
            object cxs_MS_Total: TcxSpinEdit
              Left = 90
              Top = 108
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 8
              Width = 79
            end
            object cxLabel20: TcxLabel
              Left = 14
              Top = 70
              Caption = '% Layer1/Luar'
            end
            object cxs_MS_PLayer1: TcxSpinEdit
              Left = 90
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 10
              Width = 51
            end
            object cxLabel21: TcxLabel
              Left = 139
              Top = 70
              Caption = '%Layer2'
            end
            object cxs_MS_PLayer2: TcxSpinEdit
              Left = 190
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 12
              Width = 56
            end
            object cxLabel22: TcxLabel
              Left = 249
              Top = 70
              Caption = '% Layer3'
            end
            object cxs_MS_PLayer3: TcxSpinEdit
              Left = 303
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 14
              Width = 53
            end
            object cxLabel64: TcxLabel
              Left = 357
              Top = 30
              Caption = 'Layer4'
            end
            object cxs_MS_Layer4: TcxSpinEdit
              Left = 417
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 16
              Width = 59
            end
            object cxLabel119: TcxLabel
              Left = 472
              Top = 30
              Caption = 'Layer5'
            end
            object cxs_MS_Layer5: TcxSpinEdit
              Left = 522
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 18
              Width = 59
            end
            object cxLabel120: TcxLabel
              Left = 582
              Top = 30
              Caption = 'Layer6'
            end
            object cxs_MS_Layer6: TcxSpinEdit
              Left = 632
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 20
              Width = 54
            end
            object cxLabel122: TcxLabel
              Left = 687
              Top = 30
              Caption = 'Layer7'
            end
            object cxs_MS_Layer7: TcxSpinEdit
              Left = 742
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 22
              Width = 54
            end
            object cxLabel123: TcxLabel
              Left = 797
              Top = 30
              Caption = 'Layer8'
            end
            object cxs_MS_Layer8: TcxSpinEdit
              Left = 852
              Top = 28
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              Properties.OnChange = cxs_MS_OutPropertiesChange
              TabOrder = 24
              Width = 54
            end
            object cxLabel124: TcxLabel
              Left = 359
              Top = 70
              Caption = '% Layer4'
            end
            object cxs_MS_PLayer4: TcxSpinEdit
              Left = 413
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 26
              Width = 53
            end
            object cxLabel125: TcxLabel
              Left = 469
              Top = 70
              Caption = '% Layer5'
            end
            object cxs_MS_PLayer5: TcxSpinEdit
              Left = 523
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 28
              Width = 53
            end
            object cxLabel126: TcxLabel
              Left = 579
              Top = 70
              Caption = '% Layer6'
            end
            object cxs_MS_PLayer6: TcxSpinEdit
              Left = 633
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 30
              Width = 53
            end
            object cxLabel127: TcxLabel
              Left = 689
              Top = 70
              Caption = '% Layer7'
            end
            object cxs_MS_PLayer7: TcxSpinEdit
              Left = 743
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 32
              Width = 53
            end
            object cxLabel128: TcxLabel
              Left = 799
              Top = 70
              Caption = '% Layer8'
            end
            object cxs_MS_PLayer8: TcxSpinEdit
              Left = 853
              Top = 68
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ReadOnly = True
              Properties.ValueType = vtFloat
              Style.Color = clMoneyGreen
              TabOrder = 34
              Width = 53
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 4
            Top = 771
            Caption = 'Toleransi Dimensi Produk'
            TabOrder = 6
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
          object cxtAksesoris: TcxTextEdit
            Left = 1080
            Top = 622
            Properties.CharCase = ecUpperCase
            TabOrder = 7
            Visible = False
            Width = 377
          end
          object cxsTebalAks: TcxSpinEdit
            Left = 1080
            Top = 646
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 8
            Visible = False
            Width = 113
          end
          object cxsLebarAks: TcxSpinEdit
            Left = 1304
            Top = 646
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 9
            Visible = False
            Width = 113
          end
          object cxsBeratAks: TcxSpinEdit
            Left = 1080
            Top = 670
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 10
            Visible = False
            Width = 113
          end
          object cxsPanjangAks: TcxSpinEdit
            Left = 1088
            Top = 702
            Properties.DisplayFormat = '#,##0.000'
            Properties.EditFormat = '#,##0.000'
            Properties.ValueType = vtFloat
            TabOrder = 11
            Visible = False
            Width = 113
          end
          object cxGroupBox10: TcxGroupBox
            Left = 4
            Top = 876
            Caption = 'Treat Detail'
            TabOrder = 12
            Height = 93
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
              Properties.ValueType = vtFloat
              TabOrder = 6
              Width = 121
            end
            object cxsTreatDalam: TcxSpinEdit
              Left = 160
              Top = 40
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 7
              Width = 121
            end
            object cxLabel63: TcxLabel
              Left = 10
              Top = 69
              Caption = 'Keterangan'
            end
            object cxtKetTread: TcxTextEdit
              Left = 158
              Top = 67
              TabOrder = 9
              Width = 515
            end
          end
          object cxGroupBox11: TcxGroupBox
            Left = 4
            Top = 974
            Caption = 'Printing'
            TabOrder = 13
            Height = 378
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
              Caption = 'Panjang Cylinder (cm)'
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
            Top = 1356
            Caption = 'Gusset  dan Converting'
            TabOrder = 14
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
      object TabSheet3: TTabSheet [1]
        Caption = 'Property / Routing'
        ImageIndex = 2
        object cxGroupBox4: TcxGroupBox
          Left = 4
          Top = 9
          Caption = 'Property Produksi'
          TabOrder = 0
          Height = 312
          Width = 1062
          object Label37: TLabel
            Left = 16
            Top = 40
            Width = 163
            Height = 13
            Caption = 'Tensile / Strength / Break / TD (N)'
          end
          object Label38: TLabel
            Left = 16
            Top = 64
            Width = 165
            Height = 13
            Caption = 'Tensile / Strength / Break / MD (N)'
          end
          object Label39: TLabel
            Left = 16
            Top = 88
            Width = 175
            Height = 13
            Caption = 'Tensile / Elongation / Break / TD (%)'
          end
          object Label40: TLabel
            Left = 16
            Top = 112
            Width = 177
            Height = 13
            Caption = 'Tensile / Elongation / Break / MD (%)'
          end
          object Label41: TLabel
            Left = 16
            Top = 136
            Width = 126
            Height = 13
            Caption = 'Tear Resistance / TD (mN)'
          end
          object Label42: TLabel
            Left = 16
            Top = 160
            Width = 128
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
            Width = 170
            Height = 13
            Caption = 'Dart Drop Impact (g F 50% Failure)'
          end
          object Label48: TLabel
            Left = 16
            Top = 232
            Width = 64
            Height = 13
            Caption = 'Opasitas (%)'
          end
          object Label49: TLabel
            Left = 16
            Top = 256
            Width = 127
            Height = 13
            Caption = 'Acuan Standar Warna Film'
            Visible = False
          end
          object Label52: TLabel
            Left = 624
            Top = 24
            Width = 59
            Height = 13
            Caption = 'Critical Point'
          end
          object Label50: TLabel
            Left = 16
            Top = 280
            Width = 133
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
          object Label24: TLabel
            Left = 624
            Top = 192
            Width = 55
            Height = 13
            Caption = 'Bufer Stock'
          end
          object Label66: TLabel
            Left = 839
            Top = 191
            Width = 78
            Height = 13
            Caption = 'Lead Time (Day)'
          end
          object Label76: TLabel
            Left = 446
            Top = 285
            Width = 61
            Height = 13
            Caption = 'Inline Proses'
          end
          object Label77: TLabel
            Left = 624
            Top = 217
            Width = 65
            Height = 13
            Caption = 'Default Mesin'
          end
          object Label78: TLabel
            Left = 839
            Top = 217
            Width = 60
            Height = 13
            Caption = 'Speed Mesin'
          end
          object Label83: TLabel
            Left = 1019
            Top = 217
            Width = 36
            Height = 13
            Caption = 'KG/Jam'
          end
          object Label85: TLabel
            Left = 624
            Top = 242
            Width = 75
            Height = 13
            Caption = 'Default Gudang'
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
            Visible = False
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
            Left = 363
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
          object cxspBufer: TcxSpinEdit
            Left = 704
            Top = 190
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 31
            Width = 129
          end
          object cxsLead: TcxSpinEdit
            Left = 919
            Top = 189
            Properties.DisplayFormat = '#,##0'
            Properties.EditFormat = '#,##0'
            Properties.ValueType = vtFloat
            TabOrder = 32
            Width = 129
          end
          object cxtInline: TcxTextEdit
            Left = 514
            Top = 281
            Properties.CharCase = ecUpperCase
            TabOrder = 33
            Width = 537
          end
          object cxlMesin: TcxLookupComboBox
            Left = 705
            Top = 215
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'kode'
              end>
            Properties.ListSource = dsMesin
            TabOrder = 34
            Width = 126
          end
          object cxsSpeed: TcxSpinEdit
            Left = 919
            Top = 214
            Properties.DisplayFormat = '#,##0.00'
            Properties.EditFormat = '#,##0.00'
            Properties.ValueType = vtFloat
            TabOrder = 35
            Width = 97
          end
          object cxlGudang: TcxLookupComboBox
            Left = 705
            Top = 240
            Properties.KeyFieldNames = 'kode'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsGudang
            TabOrder = 36
            Width = 151
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 4
          Top = 321
          Caption = 'Routing'
          TabOrder = 1
          Height = 190
          Width = 892
          object cxGrid1: TcxGrid
            Left = 13
            Top = 16
            Width = 863
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
                Properties.OnChange = cxColDeskripsiPropertiesChange
                Width = 358
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
      end
      object TabSheet4: TTabSheet [2]
        Caption = 'BOM'
        ImageIndex = 3
        DesignSize = (
          1320
          516)
        object Label56: TLabel
          Left = 12
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Nama Barang'
        end
        object Label57: TLabel
          Left = 7
          Top = 42
          Width = 76
          Height = 13
          Caption = 'Berat Kotor (gr)'
        end
        object Label73: TLabel
          Left = 7
          Top = 292
          Width = 86
          Height = 13
          Caption = 'Alternatif Material'
        end
        object cxGrid2: TcxGrid
          Left = 10
          Top = 69
          Width = 1303
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
            OnEditing = cxTblBOMEditing
            OnFocusedRecordChanged = cxTblBOMFocusedRecordChanged
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
                Column = cxColPersen
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
                Column = cxColPersen
              end
              item
                Format = '#,#0.00000'
                Kind = skSum
                Column = cxColBomQty
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer1
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer2
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer3
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer4
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer5
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer6
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer7
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = cxColBomLayer8
              end>
            DataController.Summary.SummaryGroups = <>
            DataController.OnNewRecord = cxTblBOMDataControllerNewRecord
            DataController.OnRecordChanged = cxTblBOMDataControllerRecordChanged
            OptionsData.Appending = True
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooterMultiSummaries = True
            object cxColSub: TcxGridColumn
              Visible = False
            end
            object cxCollockGroup: TcxGridColumn
              Caption = 'Lock Group'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 68
            end
            object cxColLockDetail: TcxGridColumn
              Caption = 'Lock Detail'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 73
            end
            object cxCollockpersen: TcxGridColumn
              Caption = 'Lock Persen'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Visible = False
            end
            object cxColBomBahan: TcxGridColumn
              Caption = 'Bahan'
              RepositoryItem = cxEditRepository1ComboBoxItem1
              Width = 82
            end
            object cxColBomKode: TcxGridColumn
              Caption = 'Kode'
              Options.Editing = False
              Width = 88
            end
            object cxColBomDesc: TcxGridColumn
              Caption = 'Deskripsi'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  FieldName = 'deskripsi'
                end
                item
                  FieldName = 'kode'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsBrgBom
              Width = 350
            end
            object cxColJnsBom: TcxGridColumn
              Caption = 'Jenis Isian'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'PERSEN'
                'VOLUME')
              Width = 72
            end
            object cxColBomLayer1: TcxGridColumn
              Caption = 'Layer1/Luar(%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 90
            end
            object cxColBomLayer2: TcxGridColumn
              Caption = 'Layer2 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 104
            end
            object cxColBomLayer3: TcxGridColumn
              Caption = 'Layer3 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 72
            end
            object cxColBomLayer4: TcxGridColumn
              Caption = 'Layer4 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 78
            end
            object cxColBomLayer5: TcxGridColumn
              Caption = 'Layer5 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 73
            end
            object cxColBomLayer6: TcxGridColumn
              Caption = 'Layer6 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColBomLayer7: TcxGridColumn
              Caption = 'Layer7 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 71
            end
            object cxColBomLayer8: TcxGridColumn
              Caption = 'Layer8 (%)'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 84
            end
            object cxColPersen: TcxGridColumn
              Caption = 'Persen'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.00'
              Properties.EditFormat = '#,#0.00'
              Properties.ValueType = vtFloat
            end
            object cxColBomQty: TcxGridColumn
              Caption = 'Qty.'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,#0.0000'
              Properties.ValueType = vtFloat
              Width = 71
            end
            object cxColBomSatuan: TcxGridColumn
              Caption = 'Satuan'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'unitid'
              Properties.ListColumns = <
                item
                  Caption = 'Satuan'
                  FieldName = 'unitid'
                end
                item
                  Caption = 'ID'
                  FieldName = 'unitid'
                end>
              Properties.ListSource = dsUnit
              Width = 66
            end
            object cxColKetebalan: TcxGridColumn
              Caption = '% Ketebalan'
              DataBinding.ValueType = 'Float'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.AssignedValues.EditFormat = True
              Properties.DisplayFormat = '#,#0.00'
              Properties.ValueType = vtFloat
              HeaderAlignmentHorz = taCenter
              Width = 71
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
        object cxtNamaBrg: TcxTextEdit
          Left = 100
          Top = 12
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 401
        end
        object cxsBeratBOM: TcxSpinEdit
          Left = 100
          Top = 37
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          TabOrder = 2
          Width = 121
        end
        object cxGroupBox9: TcxGroupBox
          Left = 975
          Top = 320
          Caption = 'Filter Item For Input BOM'
          TabOrder = 3
          Visible = False
          Height = 49
          Width = 345
          object Label67: TLabel
            Left = 9
            Top = 20
            Width = 45
            Height = 13
            Caption = 'Kelompok'
          end
          object cxlSubKelompok1: TcxLookupComboBox
            Left = 80
            Top = 16
            Properties.DropDownAutoSize = True
            Properties.DropDownSizeable = True
            Properties.KeyFieldNames = 'kode_sub'
            Properties.ListColumns = <
              item
                FieldName = 'sub_kelompok'
              end
              item
                FieldName = 'kelompok'
              end>
            Properties.ListSource = dsSubKelompok1
            Properties.OnChange = cxlSubKelompok1PropertiesChange
            TabOrder = 0
            Width = 249
          end
        end
        object cxtAlt: TcxTextEdit
          Left = 100
          Top = 287
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 126
        end
        object cxGrid9: TcxGrid
          Left = 10
          Top = 315
          Width = 433
          Height = 181
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 5
          object cxTblaLT: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            DataController.OnRecordChanged = cxTblaLTDataControllerRecordChanged
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxColKode: TcxGridColumn
              Caption = 'Kode'
              Width = 90
            end
            object cxColDeskripsi1: TcxGridColumn
              Caption = 'Deskripsi'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  FieldName = 'deskripsi'
                end
                item
                  FieldName = 'kode'
                end>
              Properties.ListSource = dsAlt
              Width = 315
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxTblaLT
          end
        end
        object btnSimpanAlt: TButton
          Left = 230
          Top = 285
          Width = 151
          Height = 25
          Caption = 'Simpan Alternatif'
          TabOrder = 6
          OnClick = btnSimpanAltClick
        end
        object GroupBox3: TGroupBox
          Left = 490
          Top = 305
          Width = 296
          Height = 196
          Caption = 'Konversi Satuan'
          TabOrder = 7
          object cxGrid10: TcxGrid
            Left = 13
            Top = 20
            Width = 268
            Height = 161
            TabOrder = 0
            object cxGridDBTableView3: TcxGridDBTableView
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
            object cxGridLevel8: TcxGridLevel
              GridView = cxTblConversi
            end
          end
        end
      end
      object TabSheet5: TTabSheet [3]
        Caption = 'Aksesoris'
        ImageIndex = 4
        object Label60: TLabel
          Left = 825
          Top = 267
          Width = 61
          Height = 13
          Caption = 'Kode Barang'
          Visible = False
        end
        object Label61: TLabel
          Left = 825
          Top = 296
          Width = 64
          Height = 13
          Caption = 'Nama Barang'
          Visible = False
        end
        object cxLabel1: TcxLabel
          Left = 823
          Top = 343
          Caption = 'Satuan Dasar'
          Visible = False
        end
        object cxtSatDasar: TcxTextEdit
          Left = 926
          Top = 341
          Properties.ReadOnly = True
          TabOrder = 1
          Visible = False
          Width = 73
        end
        object cxLabel2: TcxLabel
          Left = 823
          Top = 368
          Caption = 'Konversi 1 / Jumlah'
          Visible = False
        end
        object cxlKonv1: TcxLookupComboBox
          Left = 926
          Top = 366
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
          Left = 1003
          Top = 366
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 4
          Visible = False
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 823
          Top = 393
          Caption = 'Konversi 2 / Jumlah'
          Visible = False
        end
        object cxlKonv2: TcxLookupComboBox
          Left = 926
          Top = 391
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
          Left = 1003
          Top = 391
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 7
          Visible = False
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 823
          Top = 418
          Caption = 'Konversi 3 / Jumlah'
          Visible = False
        end
        object cxlKonv3: TcxLookupComboBox
          Left = 926
          Top = 416
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
          Left = 1003
          Top = 416
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 10
          Visible = False
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 823
          Top = 443
          Caption = 'Konversi 4 / Jumlah'
          Visible = False
        end
        object cxlKonv4: TcxLookupComboBox
          Left = 926
          Top = 441
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
          Left = 1003
          Top = 441
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 13
          Visible = False
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 823
          Top = 468
          Caption = 'Konversi 5 / Jumlah'
          Visible = False
        end
        object cxlKonv5: TcxLookupComboBox
          Left = 926
          Top = 466
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
          Left = 1003
          Top = 466
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 16
          Visible = False
          Width = 121
        end
        object cxtKode2: TcxTextEdit
          Left = 926
          Top = 265
          Properties.CharCase = ecUpperCase
          TabOrder = 17
          Visible = False
          Width = 169
        end
        object cxtNamaBrg2: TcxTextEdit
          Left = 926
          Top = 291
          Properties.CharCase = ecUpperCase
          TabOrder = 18
          Visible = False
          Width = 401
        end
        object cxLabel7: TcxLabel
          Left = 823
          Top = 318
          Caption = 'HPP'
          Visible = False
        end
        object cxsHPP: TcxSpinEdit
          Left = 926
          Top = 316
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
          Left = 92
          Top = 34
          Caption = 'Quantity'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 138
        end
        object cxsPackQty1: TcxSpinEdit
          Tag = 11
          Left = 141
          Top = 31
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 28
          Width = 70
        end
        object cxsPackQty2: TcxSpinEdit
          Tag = 11
          Left = 216
          Top = 31
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 29
          Width = 70
        end
        object cxsPackQty3: TcxSpinEdit
          Tag = 11
          Left = 291
          Top = 31
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 30
          Width = 70
        end
        object cxsPackQty4: TcxSpinEdit
          Tag = 11
          Left = 366
          Top = 31
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 31
          Width = 70
        end
        object cxsPackQty5: TcxSpinEdit
          Tag = 11
          Left = 441
          Top = 31
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 32
          Width = 70
        end
        object cxLabel67: TcxLabel
          Left = 115
          Top = 60
          Caption = 'Unit'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 138
        end
        object cxCmbPackUnit1: TcxComboBox
          Tag = 11
          Left = 141
          Top = 57
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 34
          Width = 70
        end
        object cxCmbPackUnit2: TcxComboBox
          Tag = 11
          Left = 216
          Top = 57
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 35
          Width = 70
        end
        object cxCmbPackUnit3: TcxComboBox
          Tag = 11
          Left = 291
          Top = 57
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 36
          Width = 70
        end
        object cxCmbPackUnit4: TcxComboBox
          Tag = 11
          Left = 366
          Top = 57
          Properties.DropDownListStyle = lsEditFixedList
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
        object cxsPackAccCore: TcxSpinEdit
          Tag = 11
          Left = 308
          Top = 136
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 45
          Width = 80
        end
        object cxsPackAccInner: TcxSpinEdit
          Tag = 11
          Left = 393
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
        object cxsPackAccThickness: TcxSpinEdit
          Tag = 11
          Left = 478
          Top = 136
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 49
          Width = 80
        end
        object cxLabel73: TcxLabel
          Left = 562
          Top = 118
          Caption = 'Length (cm)'
        end
        object cxsPackAccLength: TcxSpinEdit
          Tag = 11
          Left = 563
          Top = 136
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 51
          Width = 80
        end
        object cxLabel74: TcxLabel
          Left = 265
          Top = 161
          Caption = 'Other (pls describe) '
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
          Left = 676
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
        object cxLabel80: TcxLabel
          Left = 675
          Top = 57
          Caption = 'Colours : '
          Properties.Alignment.Horz = taRightJustify
          Properties.ShadowedColor = clHighlightText
          AnchorX = 725
        end
        object cxtColoursIO: TcxTextEdit
          Left = 732
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
        object cxtColoursOuter: TcxTextEdit
          Left = 912
          Top = 54
          TabOrder = 66
          Width = 80
        end
        object cxtColourDispenser: TcxTextEdit
          Left = 998
          Top = 54
          TabOrder = 67
          Width = 80
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
        object cxLabel82: TcxLabel
          Left = 659
          Top = 110
          Caption = 'Width (cm) : '
          Properties.Alignment.Horz = taRightJustify
          Properties.ShadowedColor = clHighlightText
          AnchorX = 725
        end
        object cxsWidthIO: TcxSpinEdit
          Tag = 11
          Left = 732
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
        object cxsWidthOuter: TcxSpinEdit
          Tag = 11
          Left = 913
          Top = 106
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 76
          Width = 80
        end
        object cxsWidthDispenser: TcxSpinEdit
          Tag = 11
          Left = 998
          Top = 106
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 77
          Width = 80
        end
        object cxLabel83: TcxLabel
          Left = 657
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
          Left = 662
          Top = 154
          Caption = 'Print Detail :'
          Properties.Alignment.Horz = taRightJustify
          Properties.ShadowedColor = clHighlightText
          AnchorX = 725
        end
        object cxLabel85: TcxLabel
          Left = 678
          Top = 176
          Caption = 'Colours :'
          Properties.Alignment.Horz = taRightJustify
          Properties.ShadowedColor = clHighlightText
          AnchorX = 725
        end
        object cxLabel86: TcxLabel
          Left = 689
          Top = 199
          Caption = 'Sides :'
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
          TabOrder = 86
          Width = 80
        end
        object cxsPDColoursLabelPB: TcxSpinEdit
          Tag = 11
          Left = 817
          Top = 171
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 87
          Width = 91
        end
        object cxsPDColoursOuter: TcxSpinEdit
          Tag = 11
          Left = 913
          Top = 171
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 88
          Width = 80
        end
        object cxsPDColoursDispenser: TcxSpinEdit
          Tag = 11
          Left = 998
          Top = 171
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 89
          Width = 80
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
          Left = 84
          Top = 245
          Caption = 'Material :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 133
        end
        object cxsFPMaterialInnerSize: TcxSpinEdit
          Tag = 11
          Left = 140
          Top = 243
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 98
          Width = 80
        end
        object cxsFPMaterialOuterSize: TcxSpinEdit
          Tag = 11
          Left = 225
          Top = 243
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 99
          Width = 86
        end
        object cxLabel94: TcxLabel
          Left = 355
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
          TabOrder = 101
          Width = 80
        end
        object cxLabel91: TcxLabel
          Left = 70
          Top = 271
          Caption = 'Width (cm) :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 133
        end
        object cxsFPWidthInnerSize: TcxSpinEdit
          Tag = 11
          Left = 140
          Top = 269
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 103
          Width = 80
        end
        object cxsFPWidthOuterSize: TcxSpinEdit
          Tag = 11
          Left = 225
          Top = 269
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 104
          Width = 86
        end
        object cxLabel95: TcxLabel
          Left = 340
          Top = 271
          Caption = 'Printed :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 385
        end
        object cxLabel92: TcxLabel
          Left = 65
          Top = 297
          Caption = 'Length (cm) :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 133
        end
        object cxsFPLengthInnerSize: TcxSpinEdit
          Tag = 11
          Left = 140
          Top = 295
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 107
          Width = 80
        end
        object cxsFPLengthOuterSize: TcxSpinEdit
          Tag = 11
          Left = 225
          Top = 295
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 108
          Width = 86
        end
        object cxLabel96: TcxLabel
          Left = 338
          Top = 297
          Caption = 'Colours :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 385
        end
        object cxsFPLengthColours: TcxSpinEdit
          Tag = 11
          Left = 398
          Top = 295
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 110
          Width = 80
        end
        object cxLabel93: TcxLabel
          Left = 67
          Top = 323
          Caption = 'Height (cm) :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 133
        end
        object cxsFPHeightInnerSize: TcxSpinEdit
          Tag = 11
          Left = 140
          Top = 321
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 112
          Width = 80
        end
        object cxsFPHeightOuterSize: TcxSpinEdit
          Tag = 11
          Left = 225
          Top = 321
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 113
          Width = 86
        end
        object cxLabel97: TcxLabel
          Left = 349
          Top = 323
          Caption = 'Sides :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 385
        end
        object cxsFPHeightSides: TcxSpinEdit
          Tag = 11
          Left = 398
          Top = 321
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 115
          Width = 80
        end
        object cxLabel98: TcxLabel
          Left = 15
          Top = 350
          Caption = 'Pallet'
        end
        object cxLabel99: TcxLabel
          Left = 77
          Top = 368
          Caption = 'Width (cm)'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 133
        end
        object cxsPalletWidth: TcxSpinEdit
          Tag = 11
          Left = 140
          Top = 366
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 118
          Width = 80
        end
        object cxLabel101: TcxLabel
          Left = 224
          Top = 368
          Caption = 'Length (cm) :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 292
        end
        object cxsPalletLength: TcxSpinEdit
          Tag = 11
          Left = 297
          Top = 366
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 120
          Width = 80
        end
        object cxLabel103: TcxLabel
          Left = 389
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
          TabOrder = 122
          Width = 80
        end
        object cxLabel100: TcxLabel
          Left = 103
          Top = 394
          Caption = 'Entry'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 133
        end
        object cxsPalletEntry: TcxSpinEdit
          Tag = 11
          Left = 140
          Top = 392
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 124
          Width = 80
        end
        object cxLabel102: TcxLabel
          Left = 220
          Top = 394
          Caption = 'Requirement :'
          Properties.Alignment.Horz = taRightJustify
          AnchorX = 292
        end
        object cxsPalletRequirement: TcxSpinEdit
          Tag = 11
          Left = 297
          Top = 392
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 126
          Width = 80
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
          TabOrder = 128
          Height = 57
          Width = 566
        end
      end
      object TabSheet6: TTabSheet [4]
        Caption = 'Gambar'
        ImageIndex = 5
        object Label69: TLabel
          Left = 12
          Top = 16
          Width = 96
          Height = 13
          Caption = 'Keterangan Gambar'
        end
        object Label70: TLabel
          Left = 12
          Top = 42
          Width = 46
          Height = 13
          Caption = 'Nama File'
        end
        object Label71: TLabel
          Left = 702
          Top = 3
          Width = 87
          Height = 13
          Caption = 'Gambar / Image : '
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
        object cxGrid8: TcxGrid
          Left = 10
          Top = 93
          Width = 646
          Height = 210
          TabOrder = 0
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
            OnEditing = cxTblBOMEditing
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
            DataController.OnNewRecord = cxTblBOMDataControllerNewRecord
            DataController.OnRecordChanged = cxTblBOMDataControllerRecordChanged
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
        object cxtKetImg: TcxTextEdit
          Left = 116
          Top = 12
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 401
        end
        object cxtNamaFile: TcxTextEdit
          Left = 116
          Top = 37
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 486
        end
        object btnSimpanGambar: TButton
          Left = 116
          Top = 63
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 3
          OnClick = btnSimpanGambarClick
        end
        object btnBrowse: TButton
          Left = 606
          Top = 37
          Width = 75
          Height = 21
          Caption = 'Browse'
          TabOrder = 4
          OnClick = btnBrowseClick
        end
        object Panel3: TPanel
          Left = 702
          Top = 20
          Width = 576
          Height = 486
          BevelOuter = bvLowered
          TabOrder = 5
          object image: TImage
            Left = 6
            Top = 6
            Width = 565
            Height = 474
          end
        end
        object btnHapusImg: TButton
          Left = 10
          Top = 310
          Width = 75
          Height = 25
          Caption = 'Hapus'
          TabOrder = 6
          OnClick = btnHapusImgClick
        end
        object btnLihatImage: TButton
          Left = 90
          Top = 310
          Width = 121
          Height = 25
          Caption = 'Lihat Image (System)'
          TabOrder = 7
          OnClick = btnLihatImageClick
        end
      end
      object TabSheet7: TTabSheet [5]
        Caption = 'Akun'
        ImageIndex = 6
        object GroupBox2: TGroupBox
          Left = 5
          Top = 0
          Width = 669
          Height = 247
          TabOrder = 0
          object cxLabel105: TcxLabel
            Left = 9
            Top = 15
            Caption = 'Pilih Jenis Barang'
            Transparent = True
          end
          object cxLabel111: TcxLabel
            Left = 9
            Top = 40
            Caption = 'Akun Persediaan'
            Transparent = True
          end
          object cxtAkun1: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 38
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 121
          end
          object cxLabel112: TcxLabel
            Left = 9
            Top = 65
            Caption = 'Akun Penjualan'
            Transparent = True
          end
          object cxtAkun2: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 63
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 121
          end
          object cxLabel113: TcxLabel
            Left = 9
            Top = 90
            Caption = 'Akun Retur Penjualan'
            Transparent = True
          end
          object cxtAkun3: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 88
            Properties.ReadOnly = True
            TabOrder = 6
            Width = 121
          end
          object cxLabel114: TcxLabel
            Left = 9
            Top = 115
            Caption = 'Akun Diskon Penjualan'
            Transparent = True
          end
          object cxtAkun4: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 113
            Properties.ReadOnly = True
            TabOrder = 8
            Width = 121
          end
          object cxLabel115: TcxLabel
            Left = 9
            Top = 140
            Caption = 'Akun Barang Terkirim'
            Transparent = True
          end
          object cxtAkun5: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 138
            Properties.ReadOnly = True
            TabOrder = 10
            Width = 121
          end
          object cxLabel116: TcxLabel
            Left = 9
            Top = 165
            Caption = 'Akun HPP'
            Transparent = True
          end
          object cxtAkun6: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 163
            Properties.ReadOnly = True
            TabOrder = 12
            Width = 121
          end
          object cxLabel117: TcxLabel
            Left = 9
            Top = 190
            Caption = 'Akun Retur Pembelian'
            Transparent = True
          end
          object cxtAkun7: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 188
            Properties.ReadOnly = True
            TabOrder = 14
            Width = 121
          end
          object cxLabel118: TcxLabel
            Left = 9
            Top = 215
            Caption = 'Akun Belum Tertagih'
            Transparent = True
          end
          object cxtAkun8: TcxTextEdit
            Tag = 11
            Left = 125
            Top = 213
            Properties.ReadOnly = True
            TabOrder = 16
            Width = 121
          end
          object cxlAkun1: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 38
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun1PropertiesChange
            TabOrder = 17
            Width = 406
          end
          object cxlAkun2: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 63
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun2PropertiesChange
            TabOrder = 18
            Width = 406
          end
          object cxlAkun3: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 88
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun3PropertiesChange
            TabOrder = 19
            Width = 406
          end
          object cxlAkun4: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 113
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun4PropertiesChange
            TabOrder = 20
            Width = 406
          end
          object cxlAkun5: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 138
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun5PropertiesChange
            TabOrder = 21
            Width = 406
          end
          object cxlAkun6: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 163
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun6PropertiesChange
            TabOrder = 22
            Width = 406
          end
          object cxlAkun7: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 188
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun7PropertiesChange
            TabOrder = 23
            Width = 406
          end
          object cxlAkun8: TcxLookupComboBox
            Tag = 11
            Left = 250
            Top = 213
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'nama'
              end
              item
                FieldName = 'noakun'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkun8PropertiesChange
            TabOrder = 24
            Width = 406
          end
          object cxlAkunJenisBarang: TcxLookupComboBox
            Tag = 11
            Left = 125
            Top = 13
            Properties.KeyFieldNames = 'nama'
            Properties.ListColumns = <
              item
                Caption = 'Jenis Barang'
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsAkunJB
            Properties.OnChange = cxlAkunJenisBarangPropertiesChange
            TabOrder = 25
            Width = 271
          end
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Left = 5
          Top = 495
        end
        inherited cxGrd: TcxGrid
          Width = 1066
          Height = 480
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblViewKODE: TcxGridDBColumn
              DataBinding.FieldName = 'KODE'
              Width = 153
            end
            object cxTblViewDESKRIPSI: TcxGridDBColumn
              DataBinding.FieldName = 'DESKRIPSI'
              Width = 675
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 612
    Width = 1330
    Align = alBottom
    inherited btnKeluar: TButton
      Visible = False
    end
    inherited btnHapus: TButton
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT KODE,DESKRIPSI FROM tbl_barang ')
    Left = 145
    Top = 15
  end
  inherited ds: TDataSource
    Left = 195
    Top = 15
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
  object zqrBrgRouting: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 AND LEFT(kode,1) IN ('#39'B'#39','#39'A'#39','#39'D'#39')'
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
  object zqrKelompok: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, kelompok'
      'FROM tbl_kelompok'
      'ORDER BY kode')
    Params = <>
    Left = 1172
    Top = 163
  end
  object dsKelompok: TDataSource
    DataSet = zqrKelompok
    Left = 1202
    Top = 163
  end
  object dsSubKelompok: TDataSource
    DataSet = zqrSubKelompok
    Left = 1202
    Top = 193
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
    Left = 1172
    Top = 193
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_kelompok'
        ParamType = ptUnknown
      end>
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
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 1023
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
  object zqrBrgBom: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39','#39'F'#39')'
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
  object zSupp: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_supplier'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 1174
    Top = 133
  end
  object dsSupp: TDataSource
    DataSet = zSupp
    Left = 1204
    Top = 133
  end
  object zMesin: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode '
      'FROM tbl_mesin'
      'WHERE f_aktif = 1')
    Params = <>
    Left = 1172
    Top = 223
  end
  object dsMesin: TDataSource
    DataSet = zMesin
    Left = 1202
    Top = 223
  end
  object zqrUnitKTG: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT unit FROM tbl_unit_ktg')
    Params = <>
    Left = 1175
    Top = 253
  end
  object dsUnitKTG: TDataSource
    DataSet = zqrUnitKTG
    Left = 1205
    Top = 253
  end
  object cxEditRepository1: TcxEditRepository
    Left = 921
    Top = 114
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
    Left = 1175
    Top = 283
  end
  object dsUnit2: TDataSource
    DataSet = zqrUnit2
    Left = 1205
    Top = 283
  end
  object zSubKelompok1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kode,kelompok FROM tbl_kelompok WHERE kode in ('#39'B'#39','#39'C'#39','#39'D' +
        #39') ORDER BY kode')
    Params = <>
    Left = 1186
    Top = 331
  end
  object dsSubKelompok1: TDataSource
    DataSet = zSubKelompok1
    Left = 1213
    Top = 331
  end
  object openDlg: TOpenDialog
    Left = 900
    Top = 21
  end
  object zqrAlt: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 1082
    Top = 475
  end
  object dsAlt: TDataSource
    DataSet = zqrAlt
    Left = 1052
    Top = 475
  end
  object zqrDaftarCP: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_cp, a.no_is, a.kode, a.deskripsi,'
      'c.nama'
      'FROM tbl_cp a'
      'LEFT JOIN tbl_is b ON b.no_is = a.no_is'
      'LEFT JOIN tbl_customer c ON c.kode = a.kode_customer'
      'WHERE a.f_aktif = 1'
      'ORDER BY a.deskripsi')
    Params = <>
    Left = 555
    Top = 15
  end
  object dsDaftarCP: TDataSource
    DataSet = zqrDaftarCP
    Left = 585
    Top = 15
  end
  object zqrAkunJB: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama FROM tbl_tplakun_persediaan ORDER BY nama')
    Params = <>
    Left = 632
    Top = 20
  end
  object dsAkunJB: TDataSource
    DataSet = zqrAkunJB
    Left = 662
    Top = 20
  end
  object zqrCoa: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 697
    Top = 20
  end
  object dsCoa: TDataSource
    DataSet = zqrCoa
    Left = 727
    Top = 20
  end
  object zqrAfval: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi FROM tbl_barang WHERE left(kode,1)='#39'F'#39)
    Params = <>
    Left = 1176
    Top = 361
  end
  object dsAfval: TDataSource
    DataSet = zqrAfval
    Left = 1213
    Top = 361
  end
  object zqrGudang: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_gudang'
      '')
    Params = <>
    Left = 1058
    Top = 23
  end
  object dsGudang: TDataSource
    DataSet = zqrGudang
    Left = 1083
    Top = 23
  end
end
