object frmLaporan: TfrmLaporan
  Left = 378
  Top = 249
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Laporan'
  ClientHeight = 560
  ClientWidth = 1089
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 510
    Width = 150
    Height = 13
    Caption = 'Laporan Pemakian Consumable'
    Visible = False
  end
  object Label2: TLabel
    Left = 965
    Top = 230
    Width = 99
    Height = 13
    Caption = 'Laporan Setting Foto'
    Visible = False
  end
  object Label3: TLabel
    Left = 5
    Top = 420
    Width = 94
    Height = 13
    Caption = 'PO VS KEdatangan'
    Visible = False
  end
  object btnCetak: TButton
    Left = 15
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 4
    OnClick = btnCetakClick
  end
  object btnClose: TButton
    Left = 95
    Top = 335
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 5
    OnClick = btnCloseClick
  end
  object pg: TPageControl
    Left = 15
    Top = 20
    Width = 386
    Height = 306
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Transaksi && Stok'
      object lstBox: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'SO && SJ '
      ImageIndex = 1
      object lstBox2: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Purchase Order'
      ImageIndex = 2
      object lstBox3: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'CCR && LKM'
      ImageIndex = 3
      object lstBox4: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'PPIC && PRD'
      ImageIndex = 4
      object lstBox5: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Peletan'
      ImageIndex = 5
      object lstBox6: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'PRD'
      ImageIndex = 6
      object lstBox7: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'ITY'
      ImageIndex = 7
      object lstBox8: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
    end
  end
  object GroupBox0: TGroupBox
    Tag = 11
    Left = 39
    Top = 161
    Width = 167
    Height = 108
    Caption = ' Tanggal '
    TabOrder = 2
    object cxdTgl0_1: TcxDateEdit
      Left = 14
      Top = 26
      TabOrder = 0
      Width = 121
    end
    object cxLabel37: TcxLabel
      Left = 14
      Top = 50
      Caption = 'S / D'
    end
    object cxdTgl0_2: TcxDateEdit
      Left = 14
      Top = 69
      TabOrder = 2
      Width = 121
    end
  end
  object GroupBox1: TGroupBox
    Tag = 11
    Left = 409
    Top = 36
    Width = 342
    Height = 140
    Caption = ' Tanggal '
    TabOrder = 1
    object cxdTgl1: TcxDateEdit
      Left = 14
      Top = 26
      TabOrder = 0
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 14
      Top = 50
      Caption = 'S / D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 14
      Top = 69
      TabOrder = 2
      Width = 121
    end
    object cxLabel18: TcxLabel
      Left = 14
      Top = 102
      Caption = 'No. Transaksi '
    end
    object cxlNoTrans: TcxLookupComboBox
      Left = 92
      Top = 100
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Trans'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoTrans
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 160
    end
  end
  object PageControl1: TPageControl
    Left = 165
    Top = 175
    Width = 841
    Height = 336
    ActivePage = TabSheet15
    TabOrder = 3
    Visible = False
    object TabSheet9: TTabSheet
      Caption = 'TabSheet9'
      object GroupBox13: TGroupBox
        Tag = 11
        Left = 15
        Top = 27
        Width = 496
        Height = 116
        TabOrder = 0
        object cxlCustomers: TcxLookupComboBox
          Left = 10
          Top = 31
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 471
        end
        object cxLabel44: TcxLabel
          Left = 10
          Top = 56
          Caption = 'Nama Barang'
        end
        object cxLabel45: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Customer'
        end
        object cxlNmBrgHarga: TcxLookupComboBox
          Left = 9
          Top = 75
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
          Properties.ListSource = dsNamaBrg
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 361
        end
        object btnNmBrgHarga: TButton
          Left = 373
          Top = 75
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 4
          OnClick = btnNmBrgHargaClick
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'TabSheet10'
      ImageIndex = 1
      object GroupBox6: TGroupBox
        Tag = 11
        Left = 9
        Top = 18
        Width = 507
        Height = 130
        Caption = ' Sales Order '
        TabOrder = 0
        object cxd211_1: TcxDateEdit
          Left = 14
          Top = 41
          TabOrder = 1
          Width = 121
        end
        object cxLabel13: TcxLabel
          Left = 137
          Top = 44
          Caption = 'S / D'
        end
        object cxd211_2: TcxDateEdit
          Left = 169
          Top = 41
          TabOrder = 2
          Width = 121
        end
        object cxlCustomer211: TcxLookupComboBox
          Left = 14
          Top = 90
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 471
        end
        object cxLabel16: TcxLabel
          Left = 13
          Top = 20
          Caption = 'Tanggal'
        end
        object cxLabel17: TcxLabel
          Left = 13
          Top = 70
          Caption = 'Customer'
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'TabSheet11'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Tag = 11
        Left = 20
        Top = 13
        Width = 413
        Height = 235
        Caption = ' Tanggal '
        TabOrder = 0
        object cxdTgl1_5: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 14
          Top = 50
          Caption = 'S / D'
        end
        object cxdTgl2_5: TcxDateEdit
          Left = 14
          Top = 67
          TabOrder = 2
          Width = 121
        end
        object cxCmbJenisTrans: TcxComboBox
          Left = 14
          Top = 109
          Properties.MaxLength = 0
          TabOrder = 4
          Width = 361
        end
        object cxLabel5: TcxLabel
          Left = 14
          Top = 90
          Caption = 'Jenis Transaksi'
        end
        object cxLabel6: TcxLabel
          Left = 14
          Top = 133
          Caption = 'Nama Barang'
        end
        object cxlNamaBrg: TcxLookupComboBox
          Left = 15
          Top = 154
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'deskripsi'
            end
            item
              FieldName = 'kode'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsNamaBrg
          Properties.MaxLength = 0
          TabOrder = 7
          Width = 361
        end
        object chkNamaBrg: TcxCheckBox
          Left = 12
          Top = 132
          Caption = 'Nama Barang'
          TabOrder = 5
          Width = 121
        end
        object cxCmbKategori2: TcxComboBox
          Left = 15
          Top = 199
          Properties.MaxLength = 0
          TabOrder = 10
          Width = 361
        end
        object cxLabel8: TcxLabel
          Left = 15
          Top = 180
          Caption = 'Kategori'
        end
        object btnCari18: TButton
          Left = 379
          Top = 154
          Width = 22
          Height = 20
          Caption = '...'
          TabOrder = 8
          OnClick = btnCari18Click
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'TabSheet12'
      ImageIndex = 3
      object GroupBox8: TGroupBox
        Tag = 11
        Left = 16
        Top = 12
        Width = 502
        Height = 316
        Caption = ' Tanggal '
        TabOrder = 0
        object cxdTgl25_1: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxLabel22: TcxLabel
          Left = 14
          Top = 50
          Caption = 'S / D'
        end
        object cxdTgl25_2: TcxDateEdit
          Left = 14
          Top = 69
          TabOrder = 2
          Width = 121
        end
        object cxLabel23: TcxLabel
          Left = 14
          Top = 102
          Caption = 'No. Transaksi '
        end
        object cxlNoTrans25: TcxLookupComboBox
          Left = 92
          Top = 100
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'no_bukti'
          Properties.ListColumns = <
            item
              Caption = 'No. Trans'
              FieldName = 'no_bukti'
            end
            item
              Caption = 'Tanggal'
              FieldName = 'tanggal'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsNoTrans
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 160
        end
        object cxLabel24: TcxLabel
          Left = 14
          Top = 129
          Caption = 'Customer'
        end
        object cxlCustomer25: TcxLookupComboBox
          Left = 14
          Top = 149
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 6
          Width = 471
        end
        object cxLabel39: TcxLabel
          Left = 14
          Top = 173
          Caption = 'Nama Barang'
        end
        object cxlNmBrg: TcxLookupComboBox
          Left = 14
          Top = 192
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
          Properties.ListSource = dsNamaBrg
          Properties.MaxLength = 0
          TabOrder = 8
          Width = 361
        end
        object btnCariBrg: TButton
          Left = 378
          Top = 192
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 9
          OnClick = btnCariBrgClick
        end
        object cxLabel41: TcxLabel
          Left = 14
          Top = 257
          Caption = 'Subkategori'
        end
        object cxlSubKategori: TcxLookupComboBox
          Left = 14
          Top = 276
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'subkategori'
          Properties.ListColumns = <
            item
              Caption = 'Subkategori'
              FieldName = 'subkategori'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSubKategori
          Properties.MaxLength = 0
          TabOrder = 13
          Width = 361
        end
        object cxLabel50: TcxLabel
          Left = 14
          Top = 215
          Caption = 'Kategori'
        end
        object cxlKategori25: TcxLookupComboBox
          Left = 14
          Top = 234
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kategori'
          Properties.ListColumns = <
            item
              FieldName = 'kategori'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKategori
          Properties.MaxLength = 0
          TabOrder = 11
          Width = 472
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'TabSheet13'
      ImageIndex = 4
      object GroupBox11: TGroupBox
        Tag = 11
        Left = 12
        Top = 15
        Width = 496
        Height = 328
        TabOrder = 0
        object cxDateEdit3: TcxDateEdit
          Left = 185
          Top = 86
          TabOrder = 5
          Visible = False
          Width = 121
        end
        object cxLabel30: TcxLabel
          Left = 310
          Top = 88
          Caption = 'S / D'
          Visible = False
        end
        object cxDateEdit4: TcxDateEdit
          Left = 344
          Top = 86
          TabOrder = 6
          Visible = False
          Width = 121
        end
        object cxlCust28: TcxLookupComboBox
          Left = 10
          Top = 71
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 471
        end
        object cxlKategori28: TcxLookupComboBox
          Left = 10
          Top = 154
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kategori'
          Properties.ListColumns = <
            item
              FieldName = 'kategori'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKategori
          Properties.MaxLength = 0
          TabOrder = 10
          Width = 472
        end
        object cxLabel33: TcxLabel
          Left = 10
          Top = 222
          Caption = 'Status'
        end
        object cxCmbStsSO: TcxComboBox
          Left = 10
          Top = 242
          Properties.DropDownListStyle = lsEditFixedList
          Properties.MaxLength = 0
          TabOrder = 18
          Width = 472
        end
        object cxLabel34: TcxLabel
          Left = 10
          Top = 52
          Caption = 'Customer'
        end
        object cxLabel32: TcxLabel
          Left = 10
          Top = 135
          Caption = 'Kategori'
        end
        object cxLabel35: TcxLabel
          Left = 10
          Top = 8
          Caption = 'Tanggal'
        end
        object cxdTgl28_1: TcxDateEdit
          Left = 11
          Top = 29
          TabOrder = 0
          Width = 121
        end
        object cxLabel36: TcxLabel
          Left = 134
          Top = 32
          Caption = 'S / D'
        end
        object cxdTgl28_2: TcxDateEdit
          Left = 166
          Top = 29
          TabOrder = 1
          Width = 121
        end
        object cxLabel42: TcxLabel
          Left = 10
          Top = 93
          Caption = 'Nama Barang'
        end
        object cxlNmBrg2: TcxLookupComboBox
          Left = 10
          Top = 112
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
          Properties.ListSource = dsNamaBrg
          Properties.MaxLength = 0
          TabOrder = 7
          Width = 361
        end
        object btnCariBrg2: TButton
          Left = 373
          Top = 112
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 8
          OnClick = btnCariBrg2Click
        end
        object cxLabel43: TcxLabel
          Left = 10
          Top = 178
          Caption = 'Subkategori'
        end
        object cxlSubkategori2: TcxLookupComboBox
          Left = 10
          Top = 197
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'subkategori'
          Properties.ListColumns = <
            item
              Caption = 'Subkategori'
              FieldName = 'subkategori'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSubKategori
          Properties.MaxLength = 0
          TabOrder = 11
          Width = 361
        end
        object cxChk26_GroupPerTgl: TcxCheckBox
          Left = 295
          Top = 29
          Caption = 'Group Per Tanggal'
          TabOrder = 2
          Width = 121
        end
        object cxLabel54: TcxLabel
          Left = 10
          Top = 268
          Caption = 'No. Sales Order'
        end
        object cxlNoSO_28: TcxLookupComboBox
          Left = 10
          Top = 288
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'no_bukti'
          Properties.ListColumns = <
            item
              Caption = 'No. SO'
              FieldName = 'no_bukti'
            end
            item
              Caption = 'Tanggal'
              FieldName = 'tanggal'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsNoSO
          Properties.MaxLength = 0
          TabOrder = 20
          Width = 361
        end
      end
    end
    object TabSheet14: TTabSheet
      Caption = 'TabSheet14'
      ImageIndex = 5
      object GroupBox5: TGroupBox
        Tag = 11
        Left = 12
        Top = 15
        Width = 496
        Height = 201
        TabOrder = 0
        object cxDateEdit1: TcxDateEdit
          Left = 185
          Top = 86
          TabOrder = 5
          Visible = False
          Width = 121
        end
        object cxLabel14: TcxLabel
          Left = 310
          Top = 88
          Caption = 'S / D'
          Visible = False
        end
        object cxDateEdit2: TcxDateEdit
          Left = 344
          Top = 86
          TabOrder = 6
          Visible = False
          Width = 121
        end
        object cxLabel15: TcxLabel
          Left = 185
          Top = 66
          Caption = 'Tanggal'
          Visible = False
        end
        object cxChkCustomer: TcxCheckBox
          Left = 7
          Top = 10
          Caption = 'Customer'
          TabOrder = 0
          Width = 121
        end
        object cxlCustomer: TcxLookupComboBox
          Left = 10
          Top = 31
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 471
        end
        object cxChkKategori: TcxCheckBox
          Left = 7
          Top = 55
          Caption = 'Kategori'
          TabOrder = 2
          Width = 121
        end
        object cxlKategori: TcxLookupComboBox
          Left = 10
          Top = 76
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kategori'
          Properties.ListColumns = <
            item
              FieldName = 'kategori'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKategori
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 472
        end
        object cxLabel19: TcxLabel
          Left = 10
          Top = 100
          Caption = 'Urut Berdasarkan'
        end
        object cxCmbUrut: TcxComboBox
          Left = 10
          Top = 120
          Properties.DropDownListStyle = lsEditFixedList
          Properties.MaxLength = 0
          TabOrder = 9
          Width = 472
        end
        object cxLabel46: TcxLabel
          Left = 10
          Top = 145
          Caption = 'User CFT'
        end
        object cxCmbUserCFT: TcxComboBox
          Left = 10
          Top = 165
          Properties.DropDownListStyle = lsEditFixedList
          Properties.MaxLength = 0
          TabOrder = 11
          Width = 472
        end
      end
    end
    object TabSheet15: TTabSheet
      Caption = 'TabSheet15'
      ImageIndex = 6
      object GroupBox4: TGroupBox
        Tag = 11
        Left = 12
        Top = 15
        Width = 416
        Height = 166
        Caption = ' Kartu Stok '
        TabOrder = 0
        object cxl_ksNmBrg: TcxLookupComboBox
          Left = 11
          Top = 41
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
          Properties.ListSource = dsNamaBrg
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 361
        end
        object cxLabel9: TcxLabel
          Left = 11
          Top = 22
          Caption = 'Nama Barang'
        end
        object cxd_ksTgl1: TcxDateEdit
          Left = 11
          Top = 86
          TabOrder = 4
          Width = 121
        end
        object cxLabel10: TcxLabel
          Left = 135
          Top = 88
          Caption = 'S / D'
        end
        object cxd_ksTgl2: TcxDateEdit
          Left = 169
          Top = 86
          TabOrder = 5
          Width = 121
        end
        object cxLabel11: TcxLabel
          Left = 11
          Top = 66
          Caption = 'Tanggal'
        end
        object cxCmbGdgKS: TcxComboBox
          Left = 11
          Top = 130
          Properties.DropDownListStyle = lsFixedList
          Properties.MaxLength = 0
          TabOrder = 8
          Width = 121
        end
        object cxLabel12: TcxLabel
          Left = 11
          Top = 111
          Caption = 'Gudang'
        end
        object btnCari: TButton
          Left = 375
          Top = 41
          Width = 26
          Height = 21
          Caption = '...'
          TabOrder = 2
          OnClick = btnCariClick
        end
      end
    end
    object TabSheet16: TTabSheet
      Caption = 'TabSheet16'
      ImageIndex = 7
      object GroupBox12: TGroupBox
        Tag = 11
        Left = 21
        Top = 23
        Width = 412
        Height = 190
        Caption = ' Departemen dan Divisi  '
        TabOrder = 0
        object cxLabel40: TcxLabel
          Left = 14
          Top = 17
          Caption = 'Departemen'
        end
        object cxCmbDept1: TcxComboBox
          Left = 16
          Top = 35
          TabOrder = 1
          Text = 'cxCmbDept1'
          Width = 121
        end
        object cxLabel38: TcxLabel
          Left = 15
          Top = 57
          Caption = 'Divisi'
        end
        object cxCmbDivisi1: TcxComboBox
          Left = 17
          Top = 75
          TabOrder = 3
          Text = 'cxComboBox1'
          Width = 121
        end
      end
    end
    object TabSheet17: TTabSheet
      Caption = 'TabSheet17'
      ImageIndex = 8
      object GroupBox9: TGroupBox
        Tag = 11
        Left = 31
        Top = 18
        Width = 557
        Height = 190
        Caption = ' Filter  '
        TabOrder = 0
        object cxd51_1: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxLabel25: TcxLabel
          Left = 14
          Top = 50
          Caption = 'S / D'
        end
        object cxd51_2: TcxDateEdit
          Left = 14
          Top = 69
          TabOrder = 2
          Width = 121
        end
        object cxLabel26: TcxLabel
          Left = 14
          Top = 102
          Caption = 'Status'
        end
        object cxCmbStatus: TcxComboBox
          Left = 55
          Top = 100
          Properties.DropDownListStyle = lsEditFixedList
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 121
        end
        object cxLabel27: TcxLabel
          Left = 14
          Top = 127
          Caption = 'Mesin'
        end
        object cxCmbMesin: TcxComboBox
          Left = 55
          Top = 125
          Properties.DropDownListStyle = lsEditFixedList
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 121
        end
        object cxl51: TcxLookupComboBox
          Left = 66
          Top = 150
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 7
          Width = 471
        end
        object cxLabel28: TcxLabel
          Left = 14
          Top = 152
          Caption = 'Customer'
        end
      end
    end
    object TabSheet18: TTabSheet
      Caption = 'TabSheet18'
      ImageIndex = 9
      object GroupBox7: TGroupBox
        Tag = 11
        Left = 77
        Top = 42
        Width = 496
        Height = 111
        TabOrder = 0
        object cxlSupp01: TcxLookupComboBox
          Left = 10
          Top = 32
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Supplier'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSupp01
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 471
        end
        object cxLabel20: TcxLabel
          Left = 10
          Top = 13
          Caption = 'Supplier'
        end
        object cxLabel21: TcxLabel
          Left = 10
          Top = 58
          Caption = 'Barang'
        end
        object cxlBrg01: TcxLookupComboBox
          Left = 10
          Top = 77
          Properties.CharCase = ecUpperCase
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
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsNamaBrg
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 471
        end
      end
    end
    object TabSheet19: TTabSheet
      Caption = 'TabSheet19'
      ImageIndex = 10
      object GroupBox15: TGroupBox
        Tag = 11
        Left = 82
        Top = 32
        Width = 496
        Height = 111
        TabOrder = 0
        object cxlSupp36: TcxLookupComboBox
          Left = 10
          Top = 32
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Supplier'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSupp01
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 471
        end
        object cxLabel51: TcxLabel
          Left = 10
          Top = 13
          Caption = 'Supplier'
        end
        object cxLabel52: TcxLabel
          Left = 10
          Top = 58
          Caption = 'Barang'
        end
        object cxlBrg36: TcxLookupComboBox
          Left = 10
          Top = 77
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'deskripsi'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'deskripsi'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsBrgJasa
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 471
        end
      end
    end
    object TabSheet20: TTabSheet
      Caption = 'TabSheet20'
      ImageIndex = 11
      object GroupBox14: TGroupBox
        Tag = 11
        Left = 90
        Top = 17
        Width = 342
        Height = 171
        TabOrder = 0
        object cxLabel48: TcxLabel
          Left = 15
          Top = 67
          Caption = 'Departemen'
        end
        object cxlDepartemen: TcxLookupComboBox
          Left = 15
          Top = 90
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'user_dept_req'
          Properties.ListColumns = <
            item
              FieldName = 'user_dept_req'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsDepartemen
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 160
        end
        object cxLabel47: TcxLabel
          Left = 15
          Top = 13
          Caption = 'Tanggal'
        end
        object cxdTgl100: TcxDateEdit
          Left = 15
          Top = 34
          TabOrder = 1
          Width = 121
        end
        object cxLabel49: TcxLabel
          Left = 139
          Top = 37
          Caption = 'S / D'
        end
        object cxdTgl101: TcxDateEdit
          Left = 171
          Top = 34
          TabOrder = 2
          Width = 121
        end
        object cxLabel53: TcxLabel
          Left = 15
          Top = 117
          Caption = 'Aplikasi'
        end
        object cxCmb81_Jenis: TcxComboBox
          Left = 15
          Top = 139
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 7
          Width = 121
        end
      end
    end
    object TabSheet21: TTabSheet
      Caption = 'TabSheet21'
      ImageIndex = 12
      object GroupBox10: TGroupBox
        Tag = 11
        Left = 52
        Top = 37
        Width = 496
        Height = 116
        TabOrder = 0
        object cxlCustPel: TcxLookupComboBox
          Left = 10
          Top = 31
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsCust
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 471
        end
        object cxLabel31: TcxLabel
          Left = 10
          Top = 56
          Caption = 'Status Peletan'
        end
        object cxCmbStatusPel: TcxComboBox
          Left = 10
          Top = 76
          Properties.DropDownListStyle = lsEditFixedList
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 472
        end
        object cxLabel29: TcxLabel
          Left = 10
          Top = 12
          Caption = 'Customer'
        end
      end
    end
    object TabSheet22: TTabSheet
      Caption = 'TabSheet22'
      ImageIndex = 13
      object GroupBox2: TGroupBox
        Tag = 11
        Left = 19
        Top = 18
        Width = 337
        Height = 155
        TabOrder = 0
        object cxLabel2: TcxLabel
          Left = 9
          Top = 20
          Caption = 'Stok'
        end
        object cxCmbOperator: TcxComboBox
          Left = 41
          Top = 19
          Properties.MaxLength = 0
          TabOrder = 0
          Width = 65
        end
        object cxsJmlStok: TcxSpinEdit
          Left = 41
          Top = 44
          TabOrder = 2
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 9
          Top = 75
          Caption = 'Kategori'
        end
        object cxCmbKategori: TcxComboBox
          Left = 79
          Top = 74
          Properties.MaxLength = 0
          TabOrder = 3
          Width = 235
        end
        object cxLabel7: TcxLabel
          Left = 9
          Top = 101
          Caption = 'Sub Kategori'
        end
        object cxCmbSubKtgr: TcxComboBox
          Left = 79
          Top = 100
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 235
        end
      end
    end
    object TabSheet23: TTabSheet
      Caption = 'TabSheet23'
      ImageIndex = 14
      object GroupBox16: TGroupBox
        Tag = 11
        Left = 12
        Top = 12
        Width = 496
        Height = 154
        TabOrder = 0
        object cxlDept38: TcxLookupComboBox
          Left = 10
          Top = 72
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'bagian'
          Properties.ListColumns = <
            item
              Caption = 'Departemen'
              FieldName = 'bagian'
            end>
          Properties.ListOptions.ColumnSorting = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsBagian
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 161
        end
        object cxLabel55: TcxLabel
          Left = 10
          Top = 53
          Caption = 'Departemen'
        end
        object cxLabel57: TcxLabel
          Left = 10
          Top = 10
          Caption = 'Tanggal'
        end
        object cxdTgl38_1: TcxDateEdit
          Left = 10
          Top = 29
          TabOrder = 0
          Width = 121
        end
        object cxLabel58: TcxLabel
          Left = 134
          Top = 31
          Caption = 'S/D'
        end
        object cxdTgl38_2: TcxDateEdit
          Left = 163
          Top = 29
          TabOrder = 1
          Width = 121
        end
        object cxLabel56: TcxLabel
          Left = 10
          Top = 96
          Caption = 'Approval'
        end
        object cxCmbApproval38: TcxComboBox
          Left = 10
          Top = 115
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 7
          Width = 121
        end
      end
    end
    object TabSheet24: TTabSheet
      Caption = 'TabSheet24'
      ImageIndex = 15
      object GroupBox17: TGroupBox
        Tag = 11
        Left = 14
        Top = 16
        Width = 481
        Height = 151
        Caption = ' Tanggal '
        TabOrder = 0
        object cxd111_1: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxLabel59: TcxLabel
          Left = 14
          Top = 50
          Caption = 'S / D'
        end
        object cxd111_2: TcxDateEdit
          Left = 14
          Top = 69
          TabOrder = 2
          Width = 121
        end
        object cxl111_cust: TcxLookupComboBox
          Left = 15
          Top = 115
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Customer'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode Customer'
              FieldName = 'kode'
            end>
          Properties.ListSource = dsCust
          TabOrder = 4
          Width = 391
        end
        object cxLabel60: TcxLabel
          Left = 15
          Top = 95
          Caption = 'Customer'
        end
      end
    end
    object ts1: TTabSheet
      Caption = 'TabSheet25'
      ImageIndex = 16
      object GroupBox18: TGroupBox
        Tag = 11
        Left = 29
        Top = 46
        Width = 481
        Height = 151
        Caption = ' Tanggal '
        TabOrder = 0
        object cxd1: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxlbl1: TcxLabel
          Left = 14
          Top = 50
          Caption = 'S / D'
        end
        object cxd2: TcxDateEdit
          Left = 14
          Top = 69
          TabOrder = 2
          Width = 121
        end
      end
    end
  end
  object rptBrgMasuk: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41618.880252094910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 725
    Top = 95
    Datasets = <
      item
        DataSet = fdbBrgMasuk
        DataSetName = 'fdbBrgMasuk'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        DataSet = fdbBrgMasuk
        DataSetName = 'fdbBrgMasuk'
        RowCount = 0
        object fdbBrgMasukno_bukti: TfrxMemoView
          Left = 15.118120000000000000
          Top = 11.338590000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbBrgMasuk
          DataSetName = 'fdbBrgMasuk'
          Memo.UTF8 = (
            '[fdbBrgMasuk."no_bukti"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object zqrBrgMasuk: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_trsmasuk_head')
    Params = <>
    Left = 755
    Top = 95
  end
  object dsBrgMasuk: TDataSource
    DataSet = zqrBrgMasuk
    Left = 785
    Top = 95
  end
  object fdbBrgMasuk: TfrxDBDataset
    UserName = 'fdbBrgMasuk'
    CloseDataSource = False
    DataSource = dsBrgMasuk
    BCDToCurrency = False
    Left = 815
    Top = 95
  end
  object rptStokBrg: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41642.463946574100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 945
    Top = 100
    Datasets = <
      item
        DataSet = fdbStokBrg
        DataSetName = 'fdbStokBrg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 793.323347000000000000
        DataSet = fdbStokBrg
        DataSetName = 'fdbStokBrg'
        RowCount = 0
        Stretched = True
        object Memo3: TfrxMemoView
          Width = 767.244590000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = 15132390
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14342874
          ParentFont = False
        end
        object fdbStokBrgdeskripsi: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          Memo.UTF8 = (
            '[fdbStokBrg."deskripsi"]')
        end
        object fdbStokBrgG01: TfrxMemoView
          Left = 415.748300000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbStokBrg."G01"]')
          ParentFont = False
        end
        object fdbStokBrgG02: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'G02'
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbStokBrg."G02"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 629.031850000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<fdbStokBrg."G01">+<fdbStokBrg."G02">+<fdbStokBrg."G03">]')
          ParentFont = False
        end
        object fdbStokBrgsatuan: TfrxMemoView
          Left = 712.181510000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbStokBrg."satuan"]')
          ParentFont = False
        end
        object fdbStokBrgG03: TfrxMemoView
          Left = 551.811380000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'G03'
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbStokBrg."G03"]')
          ParentFont = False
        end
        object fdbStokBrgkode: TfrxMemoView
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'kode'
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          Memo.UTF8 = (
            '[fdbStokBrg."kode"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 75.590600000000000000
        Width = 793.323347000000000000
        object Memo1: TfrxMemoView
          Left = 75.590600000000000000
          Top = 11.338590000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 415.748300000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'G-SDP')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 3.779530000000000000
          Width = 767.244590000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 37.795300000000000000
          Width = 767.244590000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          Left = 483.779840000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'G-CUST')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 629.031850000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 712.181510000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Satuan')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'G-KAR')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kode')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 793.323347000000000000
        object Memo8: TfrxMemoView
          Top = 7.559060000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN STOK BARANG PER GUDANG')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 275.905690000000000000
        Width = 793.323347000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 767.244590000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Top = 35.015770000000000000
          Width = 767.244590000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          Left = 629.031850000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<fdbStokBrg."G01">+<fdbStokBrg."G02">+<fdbStokBrg."G01">,Ma' +
              'sterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 483.779840000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbStokBrg."G02">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 415.748300000000000000
          Top = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbStokBrg."G01">,MasterData1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 551.811380000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbStokBrg."G03">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 177.637910000000000000
        Width = 793.323347000000000000
        Condition = 'fdbStokBrg."kategori"'
        object fdbStokBrgkategori: TfrxMemoView
          Left = 67.590600000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'kategori'
          DataSet = fdbStokBrg
          DataSetName = 'fdbStokBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbStokBrg."kategori"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = -0.440940000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kategori : ')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 26.456710000000000000
          Width = 767.244590000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrStokBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg_2'
      ''
      ''
      'ORDER BY kategori, deskripsi')
    Params = <>
    Left = 975
    Top = 100
  end
  object dsStokBrg: TDataSource
    DataSet = zqrStokBrg
    Left = 1005
    Top = 100
  end
  object fdbStokBrg: TfrxDBDataset
    UserName = 'fdbStokBrg'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode=kode'
      'deskripsi=deskripsi'
      'G01=G01'
      'G02=G02'
      'G03=G03'
      'total_stok=total_stok'
      'satuan=satuan'
      'tipe=tipe'
      'kategori=kategori'
      'subkategori=subkategori')
    DataSource = dsStokBrg
    BCDToCurrency = False
    Left = 1035
    Top = 100
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 725
    Top = 65
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 760
    Top = 65
  end
  object rptTrsBrgMasuk: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41625.943676932870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 945
    Top = 135
    Datasets = <
      item
        DataSet = fdbTrsBrgMasuk
        DataSetName = 'fdbTrsBrgMasuk'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 778.205227000000000000
        DataSet = fdbTrsBrgMasuk
        DataSetName = 'fdbTrsBrgMasuk'
        RowCount = 0
        Stretched = True
        object fdbTrsBrgMasukkode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 71.047310000000000000
          Top = 1.779530000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukqty: TfrxMemoView
          Left = 328.512060000000000000
          Top = 1.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukkode_gdg: TfrxMemoView
          Left = 381.645950000000000000
          Top = 1.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_gdg'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."kode_gdg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukno_spk: TfrxMemoView
          Left = 445.984540000000000000
          Top = 1.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_spk'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."no_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 525.354670000000000000
          Top = 1.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_so'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."no_so"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukketerangan: TfrxMemoView
          Left = 612.047620000000000000
          Top = 1.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'keterangan'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Top = 7.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TRANSAKSI BARANG MASUK')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 26.456710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 778.205227000000000000
        Condition = 'fdbTrsBrgMasuk."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Top = 2.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Top = 2.000000000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 99.811070000000000000
        Top = 188.976500000000000000
        Width = 778.205227000000000000
        Condition = 'fdbTrsBrgMasuk."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 58.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 54.456710000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 80.913420000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbTrsBrgMasukno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Top = 4.000000000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."no_bukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 4.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 4.000000000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.047310000000000000
          Top = 58.236240000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 328.512060000000000000
          Top = 58.236240000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 381.645950000000000000
          Top = 58.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Gdg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 445.984540000000000000
          Top = 58.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 525.354670000000000000
          Top = 58.236240000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 612.047620000000000000
          Top = 58.236240000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 19.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'User')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 19.118120000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgMasukuser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 19.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."user"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 34.236240000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgMasukuser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.236240000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user_dept'
          DataSet = fdbTrsBrgMasuk
          DataSetName = 'fdbTrsBrgMasuk'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgMasuk."user_dept"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 355.275820000000000000
        Width = 778.205227000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrTrsBrgMasuk: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_trs_brg_masuk WHERE tanggal BETWEEN :tgl1 AN' +
        'D :tgl2')
    Params = <
      item
        DataType = ftDateTime
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 975
    Top = 135
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsTrsBrgMasuk: TDataSource
    DataSet = zqrTrsBrgMasuk
    Left = 1005
    Top = 135
  end
  object fdbTrsBrgMasuk: TfrxDBDataset
    UserName = 'fdbTrsBrgMasuk'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tanggal=tanggal'
      'user=user'
      'user_dept=user_dept'
      'kode_brg=kode_brg'
      'qty=qty'
      'referensi=referensi'
      'keterangan=keterangan'
      'kode_gdg=kode_gdg'
      'no_so=no_so'
      'no_spk=no_spk'
      'no_spmb=no_spmb'
      'deskripsi=deskripsi'
      'kode=kode'
      'no_bukti=no_bukti'
      'satuan=satuan')
    DataSource = dsTrsBrgMasuk
    BCDToCurrency = False
    Left = 1035
    Top = 135
  end
  object rptTrsBrgKeluar: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41620.364681886570000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 725
    Top = 190
    Datasets = <
      item
        DataSet = fdbTrsBrgKeluar
        DataSetName = 'fdbTrsBrgKeluar'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 309.921460000000000000
        Width = 778.205227000000000000
        DataSet = fdbTrsBrgKeluar
        DataSetName = 'fdbTrsBrgKeluar'
        RowCount = 0
        object fdbTrsBrgMasukkode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 71.047310000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukqty: TfrxMemoView
          Left = 350.953000000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukkode_gdg: TfrxMemoView
          Left = 407.645950000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_gdg'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."kode_gdg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukno_spk: TfrxMemoView
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'no_spk'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."no_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'no_so'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."no_so"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukketerangan: TfrxMemoView
          Left = 582.047620000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'keterangan'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TRANSAKSI BARANG KELUAR')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 778.205227000000000000
        Condition = 'fdbTrsBrgKeluar."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 97.692950000000000000
        Top = 188.976500000000000000
        Width = 778.205227000000000000
        Condition = 'fdbTrsBrgKeluar."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 67.456710000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 93.913420000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbTrsBrgMasukno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Top = 8.000000000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."no_bukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 8.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 8.000000000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.047310000000000000
          Top = 71.236240000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 350.953000000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 407.645950000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Gdg')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 464.882190000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 525.354670000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'SO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 582.047620000000000000
          Top = 71.236240000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 23.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'User')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 23.118120000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            ':')
        end
        object fdbTrsBrgKeluaruser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 23.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."user"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 42.015770000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 42.015770000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgKeluaruser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 42.015770000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user_dept'
          DataSet = fdbTrsBrgKeluar
          DataSetName = 'fdbTrsBrgKeluar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsBrgKeluar."user_dept"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 359.055350000000000000
        Width = 778.205227000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrTrsBrgKeluar: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_trs_brg_keluar WHERE tanggal BETWEEN :tgl1 A' +
        'ND :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 755
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsTrsBrgKeluar: TDataSource
    DataSet = zqrTrsBrgKeluar
    Left = 785
    Top = 190
  end
  object fdbTrsBrgKeluar: TfrxDBDataset
    UserName = 'fdbTrsBrgKeluar'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'user=user'
      'user_dept=user_dept'
      'kode_brg=kode_brg'
      'qty=qty'
      'referensi=referensi'
      'keterangan=keterangan'
      'kode_gdg=kode_gdg'
      'no_so=no_so'
      'no_spk=no_spk'
      'no_spmb=no_spmb'
      'deskripsi=deskripsi'
      'satuan=satuan')
    DataSource = dsTrsBrgKeluar
    BCDToCurrency = False
    Left = 815
    Top = 190
  end
  object rptTrsMutasi: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41622.503175092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 725
    Top = 220
    Datasets = <
      item
        DataSet = fdbTrsMutasi
        DataSetName = 'fdbTrsMutasi'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 1018.205382000000000000
        DataSet = fdbTrsMutasi
        DataSetName = 'fdbTrsMutasi'
        RowCount = 0
        object fdbTrsBrgMasukkode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsMutasi."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 71.047310000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsMutasi."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukqty: TfrxMemoView
          Left = 350.953000000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsMutasi."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukkode_gdg: TfrxMemoView
          Left = 407.645950000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'gudang_asal'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbTrsMutasi."gudang_asal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukno_spk: TfrxMemoView
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'gudang_tujuan'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbTrsMutasi."gudang_tujuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsMutasino_so: TfrxMemoView
          Left = 521.575140000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'no_so'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbTrsMutasi."no_so"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsMutasiketerangan: TfrxMemoView
          Left = 578.268090000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          DataField = 'keterangan'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsMutasi."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TRANSAKSI MUTASI BARANG')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 1018.205382000000000000
        Condition = 'fdbTrsMutasi."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbTrsMutasi."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 97.692950000000000000
        Top = 188.976500000000000000
        Width = 1018.205382000000000000
        Condition = 'fdbTrsMutasi."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 67.456710000000000000
          Width = 869.291900000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 93.913420000000000000
          Width = 869.291900000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbTrsBrgMasukno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsMutasi."no_bukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.047310000000000000
          Top = 71.236240000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 350.953000000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 407.645950000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Gdg Asal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 521.575140000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 578.268090000000000000
          Top = 71.236240000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 15.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'User')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 15.118120000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            ':')
        end
        object fdbTrsBrgKeluaruser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 15.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsMutasi."user"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 34.015770000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgKeluaruser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.015770000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user_dept'
          DataSet = fdbTrsMutasi
          DataSetName = 'fdbTrsMutasi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsMutasi."user_dept"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 464.882190000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Gdg Tuj.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 355.275820000000000000
        Width = 1018.205382000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 869.291900000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrTrsMutasi: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_trs_brg_mutasi WHERE tanggal BETWEEN :tgl1 A' +
        'ND :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 755
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsTrsMutasi: TDataSource
    DataSet = zqrTrsMutasi
    Left = 785
    Top = 220
  end
  object fdbTrsMutasi: TfrxDBDataset
    UserName = 'fdbTrsMutasi'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'jam=jam'
      'user=user'
      'user_dept=user_dept'
      'f_batal=f_batal'
      'kode_brg=kode_brg'
      'gudang_asal=gudang_asal'
      'gudang_tujuan=gudang_tujuan'
      'qty=qty'
      'no_so=no_so'
      'no_spk=no_spk'
      'no_spmb=no_spmb'
      'keterangan=keterangan'
      'deskripsi=deskripsi'
      'stok=stok'
      'satuan=satuan')
    DataSource = dsTrsMutasi
    BCDToCurrency = False
    Left = 815
    Top = 220
  end
  object rptHist: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 42181.640056203700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 725
    Top = 250
    Datasets = <
      item
        DataSet = fdbHist
        DataSetName = 'fdbHist'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 400.000000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      EndlessHeight = True
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 1474.016700000000000000
        DataSet = fdbHist
        DataSetName = 'fdbHist'
        RowCount = 0
        object fdbHistno_bukti: TfrxMemoView
          Left = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbHist."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistjenis: TfrxMemoView
          Left = 105.063080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbHist."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistkode_brg: TfrxMemoView
          Left = 188.976500000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbHist."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistdeskripsi: TfrxMemoView
          Left = 268.346630000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbHist."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistgudang: TfrxMemoView
          Left = 694.338900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'gudang'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."gudang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistqty: TfrxMemoView
          Left = 755.031850000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistno_so: TfrxMemoView
          Left = 907.724800000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'no_so'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."no_so"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistno_spk: TfrxMemoView
          Left = 1073.858690000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'no_spk'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."no_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistno_spmb: TfrxMemoView
          Left = 1166.110700000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'no_spmb'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."no_spmb"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistuser: TfrxMemoView
          Left = 1245.480830000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'user'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."user"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistuser_dept: TfrxMemoView
          Left = 1317.291900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'user_dept'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."user_dept"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistsatuan: TfrxMemoView
          Left = 811.504330000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbHistno_sj: TfrxMemoView
          Left = 986.457330000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = 'no_sj'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbHist."no_sj"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1474.016700000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'HISTORY TRANSAKSI')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 136.063080000000000000
        Width = 1474.016700000000000000
        Condition = 'fdbHist."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Top = 3.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbHist
          DataSetName = 'fdbHist'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbHist."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 32.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 28.913420000000000000
          Width = 1379.528450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 55.370130000000000000
          Width = 1379.528450000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          Left = 105.063080000000000000
          Top = 32.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 693.795610000000000000
          Top = 32.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Gudang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 188.976500000000000000
          Top = 32.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kode Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 268.346630000000000000
          Top = 32.692950000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 754.488560000000000000
          Top = 32.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 907.724800000000000000
          Top = 32.692950000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 1073.858690000000000000
          Top = 32.692950000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1166.110700000000000000
          Top = 32.692950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SPMB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 1245.480830000000000000
          Top = 32.692950000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'USER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 1317.291900000000000000
          Top = 32.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DEPT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 811.504330000000000000
          Top = 32.692950000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Satuan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 986.457330000000000000
          Top = 32.692950000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'SJ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 264.567100000000000000
        Width = 1474.016700000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 1379.528450000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrHist: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_history_all WHERE tanggal BETWEEN :tgl1 AND ' +
        ':tgl2'
      'AND kode_brg = :kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
    Left = 755
    Top = 250
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'kode_brg'
        ParamType = ptUnknown
      end>
  end
  object dsHist: TDataSource
    DataSet = zqrHist
    Left = 785
    Top = 250
  end
  object fdbHist: TfrxDBDataset
    UserName = 'fdbHist'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'kode_brg=kode_brg'
      'jenis=jenis'
      'qty=qty'
      'gudang=gudang'
      'no_so=no_so'
      'no_spk=no_spk'
      'no_spmb=no_spmb'
      'referensi=referensi'
      'keterangan=keterangan'
      'user=user'
      'user_dept=user_dept'
      'deskripsi=deskripsi'
      'tipe=tipe'
      'kategori=kategori'
      'subkategori=subkategori'
      'divisi=divisi'
      'satuan=satuan'
      'no_sj=no_sj')
    DataSource = dsHist
    BCDToCurrency = False
    Left = 815
    Top = 250
  end
  object zqrNamaBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi FROM tbl_barang '
      'WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 214
    Top = 66
  end
  object dsNamaBrg: TDataSource
    DataSet = zqrNamaBrg
    Left = 215
    Top = 95
  end
  object rptTrsSpkPotong: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41622.503175092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 420
    Top = 525
    Datasets = <
      item
        DataSet = fdbTrsSpkPotong
        DataSetName = 'fdbTrsSpkPotong'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 325.039580000000000000
        Width = 1084.725110000000000000
        DataSet = fdbTrsSpkPotong
        DataSetName = 'fdbTrsSpkPotong'
        RowCount = 0
        object fdbTrsBrgMasukkode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 71.047310000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsSpkPotongkode_gdg: TfrxMemoView
          Left = 503.645950000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_gdg'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."kode_gdg"]')
          ParentFont = False
        end
        object fdbTrsSpkPotongqty_potong: TfrxMemoView
          Left = 350.953000000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."qty"]')
          ParentFont = False
        end
        object fdbTrsSpkPotongjenis: TfrxMemoView
          Left = 562.882190000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsSpkPotongsatuan: TfrxMemoView
          Left = 411.968770000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TRANSAKSI SPK POTONG')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 1084.725110000000000000
        Condition = 'fdbTrsSpkPotong."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 112.811070000000000000
        Top = 188.976500000000000000
        Width = 1084.725110000000000000
        Condition = 'fdbTrsSpkPotong."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 86.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 82.456710000000000000
          Width = 714.330681810000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 108.913420000000000000
          Width = 714.330681810000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbTrsBrgMasukno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."no_bukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.047310000000000000
          Top = 86.236240000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 350.953000000000000000
          Top = 86.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 503.645950000000000000
          Top = 86.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Gudang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 36.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'User')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 36.118120000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            ':')
        end
        object fdbTrsBrgKeluaruser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 36.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."user"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 55.015770000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 55.015770000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgKeluaruser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 55.015770000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user_dept'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."user_dept"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 17.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. SPK Ptg')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 79.370130000000000000
          Top = 17.897650000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsSpkPotongno_spk: TfrxMemoView
          Left = 90.708720000000000000
          Top = 17.897650000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_spk'
          DataSet = fdbTrsSpkPotong
          DataSetName = 'fdbTrsSpkPotong'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsSpkPotong."no_spk"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 562.882190000000000000
          Top = 85.826840000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 411.968770000000000000
          Top = 85.826840000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Satuan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 370.393940000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 714.330681810000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrTrsSpkPotong: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_trs_spkpotong WHERE tanggal BETWEEN :tgl1 AN' +
        'D :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 450
    Top = 525
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsTrsSpkPotong: TDataSource
    DataSet = zqrTrsSpkPotong
    Left = 480
    Top = 525
  end
  object fdbTrsSpkPotong: TfrxDBDataset
    UserName = 'fdbTrsSpkPotong'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'jam=jam'
      'user=user'
      'user_dept=user_dept'
      'tgl_input=tgl_input'
      'no_spk=no_spk'
      'kode_brg=kode_brg'
      'qty=qty'
      'satuan=satuan'
      'keterangan=keterangan'
      'jenis=jenis'
      'no_so=no_so'
      'deskripsi=deskripsi'
      'kode_gdg=kode_gdg')
    DataSource = dsTrsSpkPotong
    BCDToCurrency = False
    Left = 510
    Top = 525
  end
  object rptKartuStok: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41663.368243634300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 545
    Top = 525
    Datasets = <
      item
        DataSet = fdbKartuStok
        DataSetName = 'fdbKartuStok'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 20.897650000000000000
        Top = 260.787570000000000000
        Width = 1084.725110000000000000
        DataSet = fdbKartuStok
        DataSetName = 'fdbKartuStok'
        RowCount = 0
        object fdbKartuStoktanggal: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbKartuStok."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStokno_bukti: TfrxMemoView
          Left = 94.488250000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbKartuStok."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStokjenis: TfrxMemoView
          Left = 211.653680000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbKartuStok."jenis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStokqty: TfrxMemoView
          Left = 366.614410000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbKartuStok."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStokgudang: TfrxMemoView
          Left = 306.141930000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'gudang'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbKartuStok."gudang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStokstok1: TfrxMemoView
          Left = 445.984540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'stok1'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbKartuStok."stok1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStokstok2: TfrxMemoView
          Left = 529.134200000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'stok2'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbKartuStok."stok2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbKartuStoktotal: TfrxMemoView
          Left = 612.283860000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'total'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbKartuStok."total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Top = 20.897650000000000000
          Width = 910.866241810000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbKartuStokketerangan: TfrxMemoView
          Left = 695.433520000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'keterangan'
          DataSet = fdbKartuStok
          DataSetName = 'fdbKartuStok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbKartuStok."keterangan"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'KARTU STOK')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 90.708720000000000000
        Top = 109.606370000000000000
        Width = 1084.725110000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Kode Brg')
        end
        object Memo3: TfrxMemoView
          Left = 120.944960000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
        object Memo4: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Deskripsi')
        end
        object Memo5: TfrxMemoView
          Left = 120.944960000000000000
          Top = 22.677180000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
        object Memo2: TfrxMemoView
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 332.598640000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Kode Brg')
        end
        object Memo6: TfrxMemoView
          Left = 136.063080000000000000
          Top = 22.677180000000000000
          Width = 771.024120000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Kode Brg')
        end
        object Line1: TfrxLineView
          Top = 90.370130000000000000
          Width = 910.866241810000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 61.252010000000000000
          Width = 910.866241810000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo9: TfrxMemoView
          Left = 94.488250000000000000
          Top = 68.031540000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'No. Trans')
        end
        object Memo10: TfrxMemoView
          Left = 211.653680000000000000
          Top = 68.031540000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Jenis')
        end
        object Memo11: TfrxMemoView
          Left = 306.141930000000000000
          Top = 68.031540000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Gudang')
        end
        object Memo12: TfrxMemoView
          Left = 366.614410000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty.')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 449.764070000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Stok G01')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 532.913730000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Stok G02')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 612.283860000000000000
          Top = 68.031540000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 695.433520000000000000
          Top = 68.031540000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
      end
    end
  end
  object zqrKartuStok: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_tmp_rpt_kartu_stok')
    Params = <>
    Left = 575
    Top = 525
  end
  object dsKartuStok: TDataSource
    DataSet = zqrKartuStok
    Left = 605
    Top = 525
  end
  object fdbKartuStok: TfrxDBDataset
    UserName = 'fdbKartuStok'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'kode_brg=kode_brg'
      'jenis=jenis'
      'qty=qty'
      'gudang=gudang'
      'no_so=no_so'
      'no_spk=no_spk'
      'no_spmb=no_spmb'
      'referensi=referensi'
      'keterangan=keterangan'
      'user=user'
      'user_dept=user_dept'
      'deskripsi=deskripsi'
      'tipe=tipe'
      'kategori=kategori'
      'subkategori=subkategori'
      'divisi=divisi'
      'satuan=satuan'
      'stok1=stok1'
      'stok2=stok2'
      'stok3=stok3'
      'stok4=stok4'
      'total=total'
      'host=host')
    DataSource = dsKartuStok
    BCDToCurrency = False
    Left = 635
    Top = 525
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer ORDER BY nama')
    Params = <>
    Left = 615
    Top = 14
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 645
    Top = 14
  end
  object zqrKategori: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kategori FROM tbl_kategori_brg WHERE kategori <> '#39#39' ORDER' +
        ' BY kategori')
    Params = <>
    Left = 675
    Top = 14
  end
  object dsKategori: TDataSource
    DataSet = zqrKategori
    Left = 705
    Top = 14
  end
  object rptTrsKoreksi: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41620.364681886600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 20
    Top = 380
    Datasets = <
      item
        DataSet = fdbTrsKoreksi
        DataSetName = 'fdbTrsKoreksi'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 240.000000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 309.921460000000000000
        Width = 869.291900000000000000
        DataSet = fdbTrsKoreksi
        DataSetName = 'fdbTrsKoreksi'
        RowCount = 0
        Stretched = True
        object fdbTrsBrgMasukkode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsKoreksi."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 71.047310000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsKoreksi."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukqty: TfrxMemoView
          Left = 350.953000000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'stok_lama'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsKoreksi."stok_lama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukno_spk: TfrxMemoView
          Left = 418.527830000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'stok_koreksi'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsKoreksi."stok_koreksi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 493.897960000000000000
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'stok_baru'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbTrsKoreksi."stok_baru"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukketerangan: TfrxMemoView
          Left = 653.858690000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'keterangan'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsKoreksi."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsKoreksigudang: TfrxMemoView
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'gudang'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbTrsKoreksi."gudang"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 869.291900000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TRANSAKSI KOREKSI')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 869.291900000000000000
        Condition = 'fdbTrsKoreksi."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbTrsKoreksi."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 97.692950000000000000
        Top = 188.976500000000000000
        Width = 869.291900000000000000
        Condition = 'fdbTrsKoreksi."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 71.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 67.456710000000000000
          Width = 850.394250000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 93.913420000000000000
          Width = 850.394250000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbTrsBrgMasukno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Top = 8.000000000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsKoreksi."no_bukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 8.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 8.000000000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.047310000000000000
          Top = 71.236240000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 350.953000000000000000
          Top = 71.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Stok Lama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 653.858690000000000000
          Top = 71.236240000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 23.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'User')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 23.118120000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            ':')
        end
        object fdbTrsBrgKeluaruser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 23.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsKoreksi."user"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 42.015770000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 42.015770000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgKeluaruser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 42.015770000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user_dept'
          DataSet = fdbTrsKoreksi
          DataSetName = 'fdbTrsKoreksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbTrsKoreksi."user_dept"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 418.527830000000000000
          Top = 71.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Stok Koreksi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 493.897960000000000000
          Top = 71.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Stok Baru')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 570.709030000000000000
          Top = 71.236240000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Gudang')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 359.055350000000000000
        Width = 869.291900000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 850.394250000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrTrsKoreksi: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_trs_koreksi WHERE tanggal BETWEEN :tgl1 AND ' +
        ':tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 50
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsTrsKoreksi: TDataSource
    DataSet = zqrTrsKoreksi
    Left = 80
    Top = 380
  end
  object fdbTrsKoreksi: TfrxDBDataset
    UserName = 'fdbTrsKoreksi'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'jam=jam'
      'user=user'
      'user_dept=user_dept'
      'f_approval=f_approval'
      'kode_brg=kode_brg'
      'stok_lama=stok_lama'
      'stok_koreksi=stok_koreksi'
      'stok_baru=stok_baru'
      'gudang=gudang'
      'keterangan=keterangan'
      'deskripsi=deskripsi'
      'satuan=satuan'
      'kategori=kategori'
      'subkategori=subkategori'
      'tipe=tipe')
    DataSource = dsTrsKoreksi
    BCDToCurrency = False
    Left = 110
    Top = 380
  end
  object rptTrsReturPenj: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41703.627886458300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 850
    Top = 25
    Datasets = <
      item
        DataSet = fdbReturPenj
        DataSetName = 'fdbReturPenj'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 500.000000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 1851.969700000000000000
        DataSet = fdbReturPenj
        DataSetName = 'fdbReturPenj'
        RowCount = 0
        Stretched = True
        object fdbReturPenjdeskripsi_brg_awal: TfrxMemoView
          Left = 1046.016390000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi_brg_awal'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."deskripsi_brg_awal"]')
          ParentFont = False
        end
        object fdbReturPenjkode_brg: TfrxMemoView
          Left = 564.354670000000000000
          Top = 2.000000000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."kode_brg"]')
          ParentFont = False
        end
        object fdbReturPenjdeskripsi: TfrxMemoView
          Left = 624.827150000000000000
          Top = 3.779530000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."deskripsi"]')
          ParentFont = False
        end
        object fdbReturPenjqty: TfrxMemoView
          Left = 902.354670000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbReturPenj."qty"]')
          ParentFont = False
        end
        object fdbReturPenjkode_gdg: TfrxMemoView
          Left = 1384.984850000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_gdg'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbReturPenj."kode_gdg"]')
          ParentFont = False
        end
        object fdbReturPenjno_so: TfrxMemoView
          Left = 1445.457330000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'no_so'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."no_so"]')
          ParentFont = False
        end
        object fdbReturPenjketerangan: TfrxMemoView
          Left = 1539.945580000000000000
          Top = 3.779530000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'keterangan'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."keterangan"]')
          ParentFont = False
        end
        object fdbReturPenjno_sj: TfrxMemoView
          Left = 41.574830000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'no_sj'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."no_sj"]')
          ParentFont = False
        end
        object fdbReturPenjno_so1: TfrxMemoView
          Left = 124.724490000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'no_so'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."no_so"]')
          ParentFont = False
        end
        object fdbReturPenjno_spmb: TfrxMemoView
          Left = 207.874150000000000000
          Top = 2.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'no_spmb'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."no_spmb"]')
          ParentFont = False
        end
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Top = 2.000000000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
        end
        object fdbReturPenjnama: TfrxMemoView
          Left = 298.582870000000000000
          Top = 2.000000000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'nama'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."nama"]')
          ParentFont = False
        end
        object fdbReturPenjkode_brg_awal: TfrxMemoView
          Left = 962.307670000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg_awal'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."kode_brg_awal"]')
          ParentFont = False
        end
        object fdbReturPenjqty_awal: TfrxMemoView
          Left = 1324.835500000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty_awal'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."qty_awal"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1851.969700000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TRANSAKSI RETUR PENJUALAN')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 1851.969700000000000000
        Condition = 'fdbReturPenj."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbReturPenj."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 109.031540000000000000
        Top = 188.976500000000000000
        Width = 1851.969700000000000000
        Condition = 'fdbReturPenj."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 564.354670000000000000
          Top = 86.354360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 82.574830000000000000
          Width = 1851.969700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 109.031540000000000000
          Width = 1851.969700000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 8.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 8.000000000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 624.063390000000000000
          Top = 86.354360000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 902.354670000000000000
          Top = 86.354360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 1445.457330000000000000
          Top = 86.354360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. SO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 1539.945580000000000000
          Top = 86.354360000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 24.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'User')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 24.000000000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Memo.UTF8 = (
            ':')
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 42.897650000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Dept')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 42.897650000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 1384.984850000000000000
          Top = 86.354360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Gdg Tuj.')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbReturPenjno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Top = 8.000000000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."no_bukti"]')
          ParentFont = False
        end
        object fdbReturPenjuser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 24.000000000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."user"]')
          ParentFont = False
        end
        object fdbReturPenjuser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 42.897650000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'user_dept'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."user_dept"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 86.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. SJ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Top = 86.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. SO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 207.874150000000000000
          Top = 86.354360000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No. SPMB')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.354360000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 298.582870000000000000
          Top = 86.354360000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Customer')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 11.338590000000000000
          Top = 62.472480000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jenis Ret.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 79.370130000000000000
          Top = 62.472480000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbReturPenjket_jenis_retur: TfrxMemoView
          Left = 90.708720000000000000
          Top = 62.472480000000000000
          Width = 506.457020000000000000
          Height = 15.118120000000000000
          DataField = 'ket_jenis_retur'
          DataSet = fdbReturPenj
          DataSetName = 'fdbReturPenj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbReturPenj."ket_jenis_retur"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 962.307670000000000000
          Top = 86.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg. Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 1046.016390000000000000
          Top = 86.354360000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 1324.835500000000000000
          Top = 86.354360000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Qty. Awal')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 366.614410000000000000
        Width = 1851.969700000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 1851.969700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrTrsReturPenj: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT * FROM v_lap_trs_retur_penj WHERE tanggal BETWEEN :tgl1 A' +
        'ND :tgl2'
      ''
      'ORDER BY tanggal, no_bukti, kode_brg')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 880
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsReturPenj: TDataSource
    DataSet = zqrTrsReturPenj
    Left = 910
    Top = 25
  end
  object fdbReturPenj: TfrxDBDataset
    UserName = 'fdbReturPenj'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'no_spbb=no_spbb'
      'tanggal=tanggal'
      'jam=jam'
      'user=user'
      'user_dept=user_dept'
      'tgl_input=tgl_input'
      'kode_brg=kode_brg'
      'qty=qty'
      'satuan=satuan'
      'keterangan=keterangan'
      'kode_gdg=kode_gdg'
      'no_so=no_so'
      'no_sj=no_sj'
      'no_spmb=no_spmb'
      'deskripsi=deskripsi'
      'nama=nama'
      'ket_jenis_retur=ket_jenis_retur'
      'kode_brg_awal=kode_brg_awal'
      'qty_awal=qty_awal'
      'deskripsi_brg_awal=deskripsi_brg_awal'
      'satuan_brg_awal=satuan_brg_awal')
    DataSource = dsReturPenj
    BCDToCurrency = False
    Left = 940
    Top = 25
  end
  object zqrNoTrans: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal FROM tbl_trsmasuk_head')
    Params = <>
    Left = 405
    Top = 9
  end
  object dsNoTrans: TDataSource
    DataSet = zqrNoTrans
    Left = 430
    Top = 9
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 790
    Top = 65
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 820
    Top = 65
  end
  object zqrSupp01: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_supplier ORDER BY nama')
    Params = <>
    Left = 760
    Top = 379
  end
  object dsSupp01: TDataSource
    DataSet = zqrSupp01
    Left = 790
    Top = 379
  end
  object rptRekapPOPerSupp: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41622.503175092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 725
    Top = 280
    Datasets = <
      item
        DataSet = fdbRekapPOPerSupp
        DataSetName = 'fdbRekapPOPerSupp'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        DataSet = fdbRekapPOPerSupp
        DataSetName = 'fdbRekapPOPerSupp'
        RowCount = 0
        object fdbRekapPOPerSuppno_bukti: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSupptanggal: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppqty: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Width = 748.346940000000000000
          Visible = False
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbRekapPOPerSuppsatuan: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppmata_uang: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'mata_uang'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."mata_uang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppharga: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REKAPITULASI PO PER SUPPLIER')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 755.906000000000000000
        Condition = 'fdbRekapPOPerSupp."nama"'
        KeepTogether = True
        object fdbRekapPOPerSuppnama: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."nama"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 306.141930000000000000
        Width = 755.906000000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        Condition = 'fdbRekapPOPerSupp."deskripsi"'
        object Line1: TfrxLineView
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Deskripsi Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppdeskripsi1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = fdbRekapPOPerSupp
          DataSetName = 'fdbRekapPOPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbRekapPOPerSupp."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Jml. Order')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zqrRekapPOPerSupp: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_rekap_po_per_supp '
      'WHERE kode_supp = :kode_supp'
      'ORDER BY nama, deskripsi, tanggal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
    Left = 755
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
  end
  object dsRekapPOPerSupp: TDataSource
    DataSet = zqrRekapPOPerSupp
    Left = 785
    Top = 280
  end
  object fdbRekapPOPerSupp: TfrxDBDataset
    UserName = 'fdbRekapPOPerSupp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'no_fobj=no_fobj'
      'tanggal=tanggal'
      'kode_supp=kode_supp'
      'tgl_required=tgl_required'
      'jenis_po2=jenis_po2'
      'kode_brg=kode_brg'
      'qty=qty'
      'satuan=satuan'
      'harga=harga'
      'keterangan=keterangan'
      'mata_uang=mata_uang'
      'deskripsi=deskripsi'
      'nama=nama'
      'alamat=alamat')
    DataSource = dsRekapPOPerSupp
    BCDToCurrency = False
    Left = 815
    Top = 280
  end
  object rptRekapPOPerBrg: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41622.503175092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 945
    Top = 185
    Datasets = <
      item
        DataSet = fdbRekapPOPerBrg
        DataSetName = 'fdbRekapPOPerBrg'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        DataSet = fdbRekapPOPerBrg
        DataSetName = 'fdbRekapPOPerBrg'
        RowCount = 0
        object fdbRekapPOPerSuppno_bukti: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSupptanggal: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppqty: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Width = 748.346940000000000000
          Visible = False
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbRekapPOPerSuppsatuan: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppmata_uang: TfrxMemoView
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'mata_uang'
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."mata_uang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppharga: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REKAPITULASI PO PER BARANG')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 755.906000000000000000
        Condition = 'fdbRekapPOPerBrg."deskripsi"'
        KeepTogether = True
        object fdbRekapPOPerSuppnama: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."deskripsi"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Barang')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 306.141930000000000000
        Width = 755.906000000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        Condition = 'fdbRekapPOPerBrg."kode_supp"'
        object Line1: TfrxLineView
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppdeskripsi1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          DataSet = fdbRekapPOPerBrg
          DataSetName = 'fdbRekapPOPerBrg'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbRekapPOPerBrg."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Jml. Order')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zqrRekapPOPerBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_rekap_po_per_supp '
      '-- 1'
      '-- 2'
      'ORDER BY deskripsi, nama, tanggal')
    Params = <>
    Left = 975
    Top = 185
  end
  object dsRekapPOPerBrg: TDataSource
    DataSet = zqrRekapPOPerBrg
    Left = 1005
    Top = 185
  end
  object fdbRekapPOPerBrg: TfrxDBDataset
    UserName = 'fdbRekapPOPerBrg'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'no_fobj=no_fobj'
      'tanggal=tanggal'
      'kode_supp=kode_supp'
      'tgl_required=tgl_required'
      'jenis_po2=jenis_po2'
      'kode_brg=kode_brg'
      'qty=qty'
      'satuan=satuan'
      'harga=harga'
      'keterangan=keterangan'
      'mata_uang=mata_uang'
      'deskripsi=deskripsi'
      'nama=nama'
      'alamat=alamat')
    DataSource = dsRekapPOPerBrg
    BCDToCurrency = False
    Left = 1035
    Top = 185
  end
  object rptBrgPerPO: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42131.555042974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 725
    Top = 310
    Datasets = <
      item
        DataSet = frxBrgPerPO
        DataSetName = 'fdbBrgPerPO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 370.393940000000000000
        Width = 778.205227000000000000
        DataSet = frxBrgPerPO
        DataSetName = 'fdbBrgPerPO'
        RowCount = 0
        Stretched = True
        object fdbTrsBrgMasukqty: TfrxMemoView
          Left = 298.582870000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBrgPerPO."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukketerangan: TfrxMemoView
          Left = 154.960730000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'no_penerimaan'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBrgPerPO."no_penerimaan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbBrgPerPOtgl_penerimaan: TfrxMemoView
          Left = 71.811070000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_penerimaan'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBrgPerPO."tgl_penerimaan"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Top = 7.897650000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PENGIRIMAN BARANG PER PO')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 26.456710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 778.205227000000000000
        Condition = 'fdbBrgPerPO."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 90.708720000000000000
          Top = 2.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbBrgPerPO."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Top = 2.000000000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Top = 2.000000000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 111.149660000000000000
        Top = 188.976500000000000000
        Width = 778.205227000000000000
        Condition = 'fdbBrgPerPO."no_bukti"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 58.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 54.456710000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 79.913420000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbTrsBrgMasukno_bukti: TfrxMemoView
          Left = 90.708720000000000000
          Top = 4.000000000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'no_bukti'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBrgPerPO."no_bukti"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 4.000000000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Top = 4.000000000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 71.047310000000000000
          Top = 58.236240000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 374.086890000000000000
          Top = 58.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Qty PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 445.984540000000000000
          Top = 58.236240000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. PR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 536.693260000000000000
          Top = 58.236240000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Po Pajak')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 630.945270000000000000
          Top = 58.236240000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No. Penerimaan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 11.338590000000000000
          Top = 19.118120000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kode')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 79.370130000000000000
          Top = 19.118120000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgMasukuser: TfrxMemoView
          Left = 90.708720000000000000
          Top = 19.118120000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBrgPerPO."kode_supp"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.236240000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 79.370130000000000000
          Top = 34.236240000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbTrsBrgMasukuser_dept: TfrxMemoView
          Left = 90.708720000000000000
          Top = 34.236240000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBrgPerPO."nama"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 105.826840000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 71.811070000000000000
          Top = 83.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tgl. Terima')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 154.960730000000000000
          Top = 83.149660000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tgl. Penerimaan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 298.582870000000000000
          Top = 83.149660000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Qty. Penerimaan')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 483.779840000000000000
        Width = 778.205227000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 771.024120000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object GroupHeader3: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 321.260050000000000000
        Width = 778.205227000000000000
        Condition = 'fdbBrgPerPO."kode_brg"'
        object fdbTrsBrgMasukkode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 1.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBrgPerPO."kode_brg"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 71.047310000000000000
          Top = 1.779530000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBrgPerPO."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukkode_gdg: TfrxMemoView
          Left = 374.086890000000000000
          Top = 1.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'qty_po'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBrgPerPO."qty_po"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbTrsBrgMasukno_spk: TfrxMemoView
          Left = 445.984540000000000000
          Top = 1.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_fobj'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBrgPerPO."no_fobj"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 536.693260000000000000
          Top = 1.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'no_po_pajak'
          DataSet = frxBrgPerPO
          DataSetName = 'fdbBrgPerPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBrgPerPO."no_po_pajak"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Top = 461.102660000000000000
        Visible = False
        Width = 778.205227000000000000
      end
      object GroupFooter3: TfrxGroupFooter
        FillType = ftBrush
        Height = 25.897650000000000000
        Top = 411.968770000000000000
        Width = 778.205227000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 298.582870000000000000
          Top = 5.000000000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbBrgPerPO."qty">,MasterData1)]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 154.960730000000000000
          Top = 5.000000000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total / Sisa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Left = 71.811070000000000000
          Width = 438.425480000000000000
          Color = clBlack
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          Left = 411.968770000000000000
          Top = 5.000000000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<fdbBrgPerPO."qty_po">-SUM(<fdbBrgPerPO."qty">,MasterData1)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 400.630180000000000000
          Top = 5.000000000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '/')
          ParentFont = False
        end
      end
    end
  end
  object zqrBrgPerPO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti, a.no_fobj, a.no_po_pajak, a.tanggal, a.kode_s' +
        'upp,  e.nama,'
      'b.kode_brg, d.deskripsi, b.qty qty_po, c.no_penerimaan, '
      'f.tanggal tgl_penerimaan, c.qty'
      'from tbl_po_head a'
      'inner join tbl_po_det b on a.no_bukti = b.no_bukti'
      
        'left join tbl_spbb_det c on a.no_bukti = c.no_po and c.kode_brg ' +
        '= b.kode_brg '
      'left join tbl_barang d on d.kode = b.kode_brg '
      'left join tbl_supplier e on e.kode = a.kode_supp'
      
        'left join tbl_spbb_head f on f.no_po = a.no_bukti and f.no_bukti' +
        '=c.no_bukti'
      'where a.tanggal BETWEEN :tgl1 AND :tgl2'
      '-- 10'
      '-- 11')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 755
    Top = 310
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsBrgPerPO: TDataSource
    DataSet = zqrBrgPerPO
    Left = 785
    Top = 310
  end
  object frxBrgPerPO: TfrxDBDataset
    UserName = 'fdbBrgPerPO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'no_fobj=no_fobj'
      'no_po_pajak=no_po_pajak'
      'tanggal=tanggal'
      'kode_supp=kode_supp'
      'nama=nama'
      'kode_brg=kode_brg'
      'deskripsi=deskripsi'
      'qty_po=qty_po'
      'no_penerimaan=no_penerimaan'
      'tgl_penerimaan=tgl_penerimaan'
      'qty=qty')
    DataSource = dsBrgPerPO
    BCDToCurrency = False
    Left = 815
    Top = 310
  end
  object rptPB_VS_HP: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 42131.555042974500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure fterimaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '                                                                ' +
        '     '
      'end;'
      ''
      'procedure fterimaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <fdbPB_VS_HP."fterima"> = '#39'1'#39' then'
      '    fterima.text := '#39'OK'#39
      '  else'
      '    fterima.text := '#39#39';                           '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 285
    Top = 515
    Datasets = <
      item
        DataSet = fdbPB_VS_HP
        DataSetName = 'fdbPB_VS_HP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 264.567100000000000000
        Width = 1018.205382000000000000
        DataSet = fdbPB_VS_HP
        DataSetName = 'fdbPB_VS_HP'
        RowCount = 0
        Stretched = True
        object fdbPB_VS_HPkode_brg_1: TfrxMemoView
          Left = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."no_bukti"]')
          ParentFont = False
        end
        object fdbPB_VS_HPdeskripsi_1: TfrxMemoView
          Left = 198.535560000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi_1'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."deskripsi_1"]')
          ParentFont = False
        end
        object fdbPB_VS_HPqty: TfrxMemoView
          Left = 510.236550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty"]')
          ParentFont = False
        end
        object fdbPB_VS_HPkode_brg_11: TfrxMemoView
          Left = 132.283550000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg_1'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."kode_brg_1"]')
          ParentFont = False
        end
        object fterima: TfrxMemoView
          Left = 718.110700000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Visible = False
          OnBeforePrint = 'fterimaOnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
        object fdbPB_VS_HPqty_bom_kirim: TfrxMemoView
          Left = 593.386210000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'qty_bom_kirim'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_bom_kirim"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1018.205382000000000000
        object Memo8: TfrxMemoView
          Top = 7.897650000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PENGAMBILAN BAHAN PRODUKSI VS HASIL PRODUKSI')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 26.456710000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object mmPeriode: TfrxMemoView
          Left = 71.811070000000000000
          Top = 26.456710000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 188.976500000000000000
        Width = 1018.205382000000000000
        Condition = 'fdbPB_VS_HP."no_spk"'
        object Memo14: TfrxMemoView
          Width = 1016.693570000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '1=1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14737632
          ParentFont = False
        end
        object fdbPB_VS_HPno_spk: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'no_spk'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."no_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPdeskripsi: TfrxMemoView
          Left = 234.330860000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPqty_spk: TfrxMemoView
          Left = 159.519790000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'qty_spk'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPtgl_spk: TfrxMemoView
          Left = 83.149660000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_spk'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbPB_VS_HP."tgl_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPqty_spk1: TfrxMemoView
          Left = 556.370440000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty_spk'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_spk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPqty_prod: TfrxMemoView
          Left = 616.063390000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty_prod'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_prod"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPqty_berat_prod: TfrxMemoView
          Left = 677.315400000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'qty_berat_prod'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_berat_prod"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Left = 49.133890000000000000
          Top = 23.677180000000000000
          Width = 608.504330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Left = 49.133890000000000000
          Top = 49.133890000000000000
          Width = 608.504330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo9: TfrxMemoView
          Left = 49.133890000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. Trans')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 132.283550000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kode Brg.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 198.535560000000000000
          Top = 26.456710000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 510.236550000000000000
          Top = 26.456710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. Request')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 593.386210000000000000
          Top = 26.456710000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. Kirim')
          ParentFont = False
        end
        object fdbPB_VS_HPqty_serah_terima: TfrxMemoView
          Left = 771.024120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'qty_serah_terima'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_serah_terima"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbPB_VS_HPqty_reject: TfrxMemoView
          Left = 873.071430000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'qty_reject'
          DataSet = fdbPB_VS_HP
          DataSetName = 'fdbPB_VS_HP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPB_VS_HP."qty_reject"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 98.267780000000000000
        Width = 1018.205382000000000000
        object Memo1: TfrxMemoView
          Top = 5.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. SPK')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 83.149660000000000000
          Top = 5.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tgl. SPK')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          Top = 26.456710000000000000
          Width = 1016.693570000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 159.519790000000000000
          Top = 5.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kode Brg.')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 234.330860000000000000
          Top = 5.779530000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 556.370440000000000000
          Top = 5.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. SPK')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 616.063390000000000000
          Top = 5.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. Prod')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 677.315400000000000000
          Top = 5.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. Berat Prod')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 771.024120000000000000
          Top = 5.669295000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. Serah Terima')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 873.071430000000000000
          Top = 5.669295000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Qty. Reject (KG)')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 27.236240000000000000
        Top = 306.141930000000000000
        Width = 1018.205382000000000000
        object Line6: TfrxLineView
          Left = 49.133890000000000000
          Width = 608.504330000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 510.236550000000000000
          Top = 4.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbPB_VS_HP."qty">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 411.968770000000000000
          Top = 4.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Total : ')
          ParentFont = False
        end
      end
    end
  end
  object zqrPB_VS_HP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti, c.tanggal tgl_spk, a.jam, a.no_spk, f.no_so, ' +
        'c.kode_brg, d.deskripsi, c.qty qty_spk, d.berat_per_unit_b, c.qt' +
        'y * d.berat_per_unit_b qty_berat,'
      'b.kode_brg, e.deskripsi, b.qty, b.fterima, '
      
        'sum(g.qty_prod) qty_prod, sum(g.qty_prod * d.berat_per_unit) qty' +
        '_berat_prod,'
      
        'ifnull((select sum(qty) from tbl_trskeluar_det where no_spk = b.' +
        'no_spk and kode_brg = b.kode_brg),0) qty_bom_kirim,'
      
        'ifnull((select sum(qty) from tbl_trsmasuk_det where no_spk = b.n' +
        'o_spk and kode_brg = c.kode_brg),0) qty_serah_terima,'
      
        'ifnull((select sum(qty) from tbl_reject where no_spk = b.no_spk)' +
        ',0) qty_reject'
      'from tbl_trspengeluaranbb_head a '
      'inner join tbl_trspengeluaranbb_det b on a.no_bukti = b.no_bukti'
      'left join tbl_spk c on a.no_spk = c.no_spk'
      'left join tbl_barang d on c.kode_brg = d.kode'
      'left join tbl_barang e on b.kode_brg = e.kode '
      'left join tbl_mo f on c.no_spk = f.no_spk'
      'left join tbl_hsl_prd g on g.no_spk = c.no_spk'
      'where c.tanggal between :tgl1 and :tgl2'
      
        'group by c.kode_brg, d.deskripsi, a.no_bukti, c.tanggal, a.jam, ' +
        'a.no_spk, f.no_so, c.kode_brg, d.deskripsi, c.qty, d.berat_per_u' +
        'nit_b, '
      'b.kode_brg, e.deskripsi, b.qty, b.fterima'
      'order by c.tanggal, c.no_spk;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 315
    Top = 515
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsPB_VS_HP: TDataSource
    DataSet = zqrPB_VS_HP
    Left = 345
    Top = 515
  end
  object fdbPB_VS_HP: TfrxDBDataset
    UserName = 'fdbPB_VS_HP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tgl_spk=tgl_spk'
      'jam=jam'
      'no_spk=no_spk'
      'no_so=no_so'
      'kode_brg=kode_brg'
      'deskripsi=deskripsi'
      'qty_spk=qty_spk'
      'berat_per_unit_b=berat_per_unit_b'
      'qty_berat=qty_berat'
      'kode_brg_1=kode_brg_1'
      'deskripsi_1=deskripsi_1'
      'qty=qty'
      'fterima=fterima'
      'qty_prod=qty_prod'
      'qty_berat_prod=qty_berat_prod'
      'qty_bom_kirim=qty_bom_kirim'
      'qty_serah_terima=qty_serah_terima'
      'qty_reject=qty_reject')
    DataSource = dsPB_VS_HP
    BCDToCurrency = False
    Left = 378
    Top = 515
  end
  object rptLapPemakaianCons: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41622.503175092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 10
    Top = 525
    Datasets = <
      item
        DataSet = fdbLapPemakaianCons
        DataSetName = 'fdbLapPemakaianCons'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 1084.725110000000000000
        DataSet = fdbLapPemakaianCons
        DataSetName = 'fdbLapPemakaianCons'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Width = 714.331170000000000000
          Height = 22.677180000000000000
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14803425
        end
        object fdbLapPemakaianConskode_brg: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'kode_brg'
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapPemakaianCons."kode_brg"]')
          ParentFont = False
        end
        object fdbLapPemakaianConsdeskripsi: TfrxMemoView
          Left = 86.165430000000000000
          Top = 3.779530000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'deskripsi'
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapPemakaianCons."deskripsi"]')
          ParentFont = False
        end
        object fdbLapPemakaianConsqty_masuk: TfrxMemoView
          Left = 511.953000000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty_masuk'
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLapPemakaianCons."qty_masuk"]')
          ParentFont = False
        end
        object fdbLapPemakaianConsqty_keluar: TfrxMemoView
          Left = 572.968770000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'qty_keluar'
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLapPemakaianCons."qty_keluar"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 634.409710000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '[<fdbLapPemakaianCons."qty_masuk">-<fdbLapPemakaianCons."qty_kel' +
              'uar">]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN BARANG CONSUMABLE')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 136.063080000000000000
        Width = 1084.725110000000000000
        Condition = 'fdbLapPemakaianCons."dept"'
        KeepTogether = True
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Dept')
        end
        object Memo11: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
        object fdbLapPemakaianConsdept: TfrxMemoView
          Left = 92.488250000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'dept'
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapPemakaianCons."dept"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.338590000000000000
        Top = 188.976500000000000000
        Width = 1084.725110000000000000
        Condition = 'fdbLapPemakaianCons."divisi"'
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 27.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kd. Brg.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 23.456710000000000000
          Width = 714.330681810000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 49.913420000000000000
          Width = 714.330681810000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Divisi')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 86.165430000000000000
          Top = 27.236240000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 511.953000000000000000
          Top = 27.236240000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Masuk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 634.409710000000000000
          Top = 27.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Stok')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 572.968770000000000000
          Top = 26.826840000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            'Keluar')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbLapPemakaianConsdivisi: TfrxMemoView
          Left = 94.488250000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          DataField = 'divisi'
          DataSet = fdbLapPemakaianCons
          DataSetName = 'fdbLapPemakaianCons'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapPemakaianCons."divisi"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 309.921460000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 714.330681810000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object zqrLapPemakaianCons: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.kode_brg, b.deskripsi, a.dept, a.divisi, sum(IF(a.tipe=' +
        #39'IN_'#39', a.qty, 0)) qty_masuk, sum(IF(a.tipe='#39'OUT_'#39', a.qty, 0)) qt' +
        'y_keluar '
      'from tbl_history a '
      'left join tbl_barang b on a.kode_brg = b.kode'
      
        'where (left(no_bukti,3) = '#39'MGC'#39' or left(no_bukti,2) = '#39'OT'#39' or le' +
        'ft(no_bukti,2) = '#39'SA'#39')'
      
        'and gudang = '#39'G-ASIS'#39' and (a.dept is not null) and (a.divisi is ' +
        'not null)'
      '--'
      'group by a.kode_brg, a.dept, a.divisi'
      'order by a.dept, a.divisi, a.kode_brg;')
    Params = <>
    Left = 40
    Top = 525
  end
  object dsLapPemakaianCons: TDataSource
    DataSet = zqrLapPemakaianCons
    Left = 70
    Top = 525
  end
  object fdbLapPemakaianCons: TfrxDBDataset
    UserName = 'fdbLapPemakaianCons'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_brg=kode_brg'
      'deskripsi=deskripsi'
      'dept=dept'
      'divisi=divisi'
      'qty_masuk=qty_masuk'
      'qty_keluar=qty_keluar')
    DataSource = dsLapPemakaianCons
    BCDToCurrency = False
    Left = 100
    Top = 525
  end
  object zqrSubKategori: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT subkategori FROM tbl_subkategori_brg WHERE subkategori <>' +
        ' '#39#39' '
      'ORDER BY subkategori')
    Params = <>
    Left = 910
    Top = 59
  end
  object dsSubKategori: TDataSource
    DataSet = zqrSubKategori
    Left = 940
    Top = 59
  end
  object rptRekapPOJasaPerSupp: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41622.503175092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 748
    Top = 506
    Datasets = <
      item
        DataSet = fdbRekapPOJasaPerSupp
        DataSetName = 'fdbRekapPOJasaPerSupp'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        DataSet = fdbRekapPOJasaPerSupp
        DataSetName = 'fdbRekapPOJasaPerSupp'
        RowCount = 0
        object fdbRekapPOPerSuppno_bukti: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSupptanggal: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppqty: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line4: TfrxLineView
          Width = 748.346940000000000000
          Visible = False
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbRekapPOPerSuppsatuan: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppmata_uang: TfrxMemoView
          Left = 474.984540000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'mata_uang'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."mata_uang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppharga: TfrxMemoView
          Left = 513.779840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'harga'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REKAPITULASI PO JASA PER SUPPLIER')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
        object Memo20: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Visible = False
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 755.906000000000000000
        Condition = 'fdbRekapPOJasaPerSupp."nama"'
        KeepTogether = True
        object fdbRekapPOPerSuppnama: TfrxMemoView
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."nama"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Supplier')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 60.472480000000000000
          Top = 3.779530000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 306.141930000000000000
        Width = 755.906000000000000000
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 181.417440000000000000
        Width = 755.906000000000000000
        Condition = 'fdbRekapPOJasaPerSupp."deskripsi"'
        object Line1: TfrxLineView
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Deskripsi Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'No. PO')
          ParentFont = False
          VAlign = vaCenter
        end
        object fdbRekapPOPerSuppdeskripsi1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbRekapPOJasaPerSupp
          DataSetName = 'fdbRekapPOJasaPerSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbRekapPOJasaPerSupp."deskripsi"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 204.094620000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 302.362400000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Jml. Order')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 513.779840000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'Harga')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object zqrRekapPOJasaPerSupp: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_rekap_po_jasa_per_supp '
      '-- WHERE kode_supp = :kode_supp'
      'ORDER BY nama, deskripsi, tanggal')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
    Left = 778
    Top = 506
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_supp'
        ParamType = ptUnknown
      end>
  end
  object dsRekapPOJasaPerSupp: TDataSource
    DataSet = zqrRekapPOJasaPerSupp
    Left = 808
    Top = 506
  end
  object fdbRekapPOJasaPerSupp: TfrxDBDataset
    UserName = 'fdbRekapPOJasaPerSupp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'no_fobj=no_fobj'
      'tanggal=tanggal'
      'kode_supp=kode_supp'
      'tgl_required=tgl_required'
      'jenis_po2=jenis_po2'
      'qty=qty'
      'harga=harga'
      'satuan=satuan'
      'keterangan=keterangan'
      'mata_uang=mata_uang'
      'deskripsi=deskripsi'
      'nama=nama'
      'alamat=alamat')
    DataSource = dsRekapPOJasaPerSupp
    BCDToCurrency = False
    Left = 838
    Top = 506
  end
  object zqrDepartemen: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select distinct user_dept_req from tbl_revisi_trs ORDER BY user_' +
        'dept_req')
    Params = <>
    Left = 660
    Top = 489
  end
  object dsDepartemen: TDataSource
    DataSet = zqrDepartemen
    Left = 690
    Top = 489
  end
  object rptLapSetFoto: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41703.627886458300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 965
    Top = 245
    Datasets = <
      item
        DataSet = fdbLapSetFoto
        DataSetName = 'fdbLapSetFoto'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 500.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 778.205227000000000000
        DataSet = fdbLapSetFoto
        DataSetName = 'fdbLapSetFoto'
        RowCount = 0
        Stretched = True
        object Line: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object fdbLapSetFotokode: TfrxMemoView
          Left = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'kode'
          DataSet = fdbLapSetFoto
          DataSetName = 'fdbLapSetFoto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapSetFoto."kode"]')
          ParentFont = False
        end
        object fdbLapSetFotodeskripsi: TfrxMemoView
          Left = 124.724490000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'deskripsi'
          DataSet = fdbLapSetFoto
          DataSetName = 'fdbLapSetFoto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapSetFoto."deskripsi"]')
          ParentFont = False
        end
        object fdbLapSetFotouser: TfrxMemoView
          Left = 498.897960000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'user'
          DataSet = fdbLapSetFoto
          DataSetName = 'fdbLapSetFoto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbLapSetFoto."user"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SETTING FOTO BARANG')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 30.236240000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
        object mmPeriode: TfrxMemoView
          Left = 71.811070000000000000
          Top = 30.236240000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Periode : ')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 136.063080000000000000
        Width = 778.205227000000000000
        Condition = 'fdbLapSetFoto."tanggal"'
        KeepTogether = True
        object fdbTrsBrgMasuktanggal: TfrxMemoView
          Left = 79.370130000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbLapSetFoto
          DataSetName = 'fdbLapSetFoto'
          DisplayFormat.FormatStr = 'dd-MM-yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8 = (
            '[fdbLapSetFoto."tanggal"]')
        end
        object Memo10: TfrxMemoView
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Tanggal')
        end
        object Memo11: TfrxMemoView
          Left = 68.031540000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            ':')
        end
        object Line1: TfrxLineView
          Top = 29.661410000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 41.574830000000000000
          Top = 33.440940000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Kode Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 124.724490000000000000
          Top = 33.440940000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Deskripsi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 33.440940000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Top = 56.692950000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo3: TfrxMemoView
          Left = 498.897960000000000000
          Top = 33.440940000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'User')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 260.787570000000000000
        Width = 778.205227000000000000
        object Line3: TfrxLineView
          Top = 3.779530000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Jumlah : ')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 64.252010000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object zqrLapSetFoto: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_lap_setting_foto'
      'WHERE tanggal BETWEEN :tgl1 AND :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 995
    Top = 245
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsLapSetFoto: TDataSource
    DataSet = zqrLapSetFoto
    Left = 1025
    Top = 245
  end
  object fdbLapSetFoto: TfrxDBDataset
    UserName = 'fdbLapSetFoto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode=kode'
      'tanggal=tanggal'
      'user=user'
      'user_dept=user_dept'
      'deskripsi=deskripsi')
    DataSource = dsLapSetFoto
    BCDToCurrency = False
    Left = 1055
    Top = 245
  end
  object zqrBrgJasa: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select distinct deskripsi from tbl_poj_det order by deskripsi')
    Params = <>
    Left = 249
    Top = 71
  end
  object dsBrgJasa: TDataSource
    DataSet = zqrBrgJasa
    Left = 250
    Top = 100
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ','
    OEMCodepage = False
    UTF8 = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 850
    Top = 65
  end
  object zqrNoSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal '
      'FROM tbl_so_head '
      'ORDER BY tanggal ')
    Params = <>
    Left = 735
    Top = 14
  end
  object dsNoSO: TDataSource
    DataSet = zqrNoSO
    Left = 765
    Top = 14
  end
  object zqrBagian: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT bagian FROM tbl_bagian '
      'ORDER BY 1')
    Params = <>
    Left = 875
    Top = 519
  end
  object dsBagian: TDataSource
    DataSet = zqrBagian
    Left = 905
    Top = 519
  end
  object zqrRekapLHP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.tanggal,ifnull(b.hasil,0) as h1,ifnull(c.reject,0) as r' +
        '1,'
      
        'ifnull((ifnull(c.reject,0)/(ifnull(c.reject,0)+ifnull(b.hasil,0)' +
        '))*100,0) as pr1,'
      'ifnull(d.hasil,0) as h2,ifnull(e.reject,0) as r2,'
      
        'ifnull((ifnull(e.reject,0)/(ifnull(e.reject,0)+ifnull(d.hasil,0)' +
        '))*100,0) as pr2,'
      'ifnull(f.hasil,0) as h3,ifnull(g.reject,0) as r3,'
      
        'ifnull((ifnull(g.reject,0)/(ifnull(g.reject,0)+ifnull(f.hasil,0)' +
        '))*100,0) as pr3,'
      'ifnull(h.hasil,0) as h4,ifnull(i.reject,0) as r4,'
      
        'ifnull((ifnull(i.reject,0)/(ifnull(i.reject,0)+ifnull(h.hasil,0)' +
        '))*100,0) as pr4'
      
        'FROM _tmp_tanggal as a left join v_hsl_mixing as b on a.tanggal=' +
        'b.tanggal left join '
      
        'v_reject_mixing as c on a.tanggal=c.tanggal left join v_hsl_extr' +
        'usi as d on a.tanggal=d.`tanggal`'
      
        'left join v_reject_extrusi as e on a.tanggal=e.tanggal left join' +
        ' v_hsl_printing_guset as f on a.`tanggal`=f.tanggal'
      
        'left join `v_reject_printing_guset` as g on a.tanggal=f.tanggal ' +
        'left join v_hsl_converting_manual as h on a.tanggal=h.`tanggal`'
      'left join v_reject_converting_manual as i on a.tanggal=i.tanggal')
    Params = <>
    Left = 185
    Top = 384
  end
  object dsRekapLHP: TDataSource
    DataSet = zqrRekapLHP
    Left = 210
    Top = 384
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fdbRekapLHP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tanggal=tanggal'
      'h1=h1'
      'r1=r1'
      'pr1=pr1'
      'h2=h2'
      'r2=r2'
      'pr2=pr2'
      'h3=h3'
      'r3=r3'
      'pr3=pr3'
      'h4=h4'
      'r4=r4'
      'pr4=pr4')
    DataSource = dsRekapLHP
    BCDToCurrency = False
    Left = 240
    Top = 385
  end
  object rptRekapLHP: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41703.627886458300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 275
    Top = 385
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'fdbRekapLHP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 355.600000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 5
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 1307.717380000000000000
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REKAP LAPORAN HASIL PRODUKSI')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 1307.717380000000000000
        DataSet = frxDBDataset1
        DataSetName = 'fdbRekapLHP'
        RowCount = 0
        object fdbRekapLHPtanggal: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRekapLHP."tanggal"]')
          ParentFont = False
        end
        object fdbRekapLHPh2: TfrxMemoView
          Left = 98.267780000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'h2'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."h2"]')
          ParentFont = False
        end
        object fdbRekapLHPr2: TfrxMemoView
          Left = 177.637910000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'r2'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."r2"]')
          ParentFont = False
        end
        object fdbRekapLHPpr2: TfrxMemoView
          Left = 264.567100000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pr2'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."pr2"]')
          ParentFont = False
        end
        object fdbRekapLHPh3: TfrxMemoView
          Left = 351.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'h3'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."h3"]')
          ParentFont = False
        end
        object fdbRekapLHPr3: TfrxMemoView
          Left = 434.645950000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'r3'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."r3"]')
          ParentFont = False
        end
        object fdbRekapLHPpr3: TfrxMemoView
          Left = 517.795610000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pr3'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."pr3"]')
          ParentFont = False
        end
        object fdbRekapLHPh4: TfrxMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'h4'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."h4"]')
          ParentFont = False
        end
        object fdbRekapLHPr4: TfrxMemoView
          Left = 684.094930000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'r4'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."r4"]')
          ParentFont = False
        end
        object fdbRekapLHPpr4: TfrxMemoView
          Left = 767.244590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'pr4'
          DataSet = frxDBDataset1
          DataSetName = 'fdbRekapLHP'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbRekapLHP."pr4"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 98.267780000000000000
        Width = 1307.717380000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Hasil')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 181.417440000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Reject')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '% Reject')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 351.496290000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Hasil')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 434.645950000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Reject')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 517.795610000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '% Reject')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 600.945270000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Hasil')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 684.094930000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Reject')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 767.244590000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '% Reject')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 181.417440000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'EXTRUSI')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'PRINTING/GUSET')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 646.299630000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CONVERTING/MANUAL')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 98.267780000000000000
          Top = 26.456710000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 347.716760000000000000
          Height = 60.472480000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 600.945270000000000000
          Height = 60.472480000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object dsSumMesin: TDataSource
    DataSet = zqrSumMesin
    Left = 180
    Top = 425
  end
  object zqrSumMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.mesin,e.jenis,ifnull(sum(a.qty_prod_kg),0) as hasil,ifn' +
        'ull(sum(d.qty),0) as reject,ifnull((ifnull(sum(d.qty),0)/(ifnull' +
        '(sum(d.qty),0)+ifnull(sum(a.qty_prod_kg),0)))*100,0) as persen,'
      
        'ifnull(sum(f.qty),0) as DT,ifnull(((hour(TIMEDIFF(a.jam2,a.jam1)' +
        ')*60)+(MINUTE(TIMEDIFF(a.jam2,a.jam1))))/60,0) as durasi '
      
        'FROM tbl_hsl_prd as a join tbl_spk as b  on a.no_spk = b.no_spk ' +
        'LEFT JOIN'
      
        '(select tanggal,no_bukti,sum(qty) as qty from tbl_hsl_prd_afvald' +
        't where f_id=1'
      
        'group by tanggal,no_bukti) as d on a.`no_bukti`=d.no_bukti LEFT ' +
        'JOIN'
      
        '(select tanggal,no_bukti,sum(qty) as qty from tbl_hsl_prd_afvald' +
        't where f_id=2'
      'group by tanggal,no_bukti) as f on a.`no_bukti`=f.no_bukti '
      
        'join tbl_mesin as e on e.kode=a.mesin WHERE (a.tanggal between :' +
        'tgl1 and :tgl2)'
      'group by a.`mesin`,e.jenis'
      'order by e.`jenis`,a.mesin')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 215
    Top = 425
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object fdbSumMesin: TfrxDBDataset
    UserName = 'fdbSumMesin'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mesin=mesin'
      'jenis=jenis'
      'hasil=hasil'
      'reject=reject'
      'persen=persen'
      'DT=DT'
      'durasi=durasi')
    DataSet = zqrSumMesin
    BCDToCurrency = False
    Left = 240
    Top = 425
  end
  object rptSumMesin: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094900000000
    ReportOptions.LastChange = 41703.627886458300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure DBCross1Row0OnPreviewClick(Sender: TfrxView; Button: T' +
        'MouseButton; Shift: Integer; var Modified: Boolean);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 275
    Top = 425
    Datasets = <
      item
        DataSet = fdbSumAfval
        DataSetName = 'fdbSumAfval'
      end
      item
        DataSet = fdbSumDT
        DataSetName = 'fdbSumDT'
      end
      item
        DataSet = fdbSumMesin
        DataSetName = 'fdbSumMesin'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 5
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 778.205227000000000000
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SUMMARY PER MESIN')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 177.637910000000000000
        Width = 778.205227000000000000
        DataSet = fdbSumMesin
        DataSetName = 'fdbSumMesin'
        RowCount = 0
        object fdbSumMesinhasil: TfrxMemoView
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'hasil'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSumMesin."hasil"]')
          ParentFont = False
        end
        object fdbSumMesinreject: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'reject'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSumMesin."reject"]')
          ParentFont = False
        end
        object fdbSumMesindurasi: TfrxMemoView
          Left = 370.393940000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'durasi'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSumMesin."durasi"]')
          ParentFont = False
        end
        object fdbSumMesinDT: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'DT'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSumMesin."DT"]')
          ParentFont = False
        end
        object fdbSumMesinpersen: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'persen'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSumMesin."persen"]')
          ParentFont = False
        end
        object fdbSumMesinmesin: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'mesin'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbSumMesin."mesin"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 109.606370000000000000
        Width = 778.205227000000000000
        Condition = 'fdbSumMesin."jenis"'
        KeepTogether = True
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Kode Mesin')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 83.149660000000000000
          Top = 22.677180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Hasil')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 177.637910000000000000
          Top = 22.677180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Kg Afval')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 272.126160000000000000
          Top = 22.677180000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '% Afval')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 370.393940000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Tol.Jam Kerja (Jam)')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 491.338900000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Tol.DT (Menit)')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 45.354360000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbSumMesinjenis: TfrxMemoView
          Left = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            '[fdbSumMesin."jenis"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 222.992270000000000000
        Width = 778.205227000000000000
        object Memo7: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."hasil">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 177.637910000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."reject">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 370.393940000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."durasi">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."DT">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 162.519790000000000000
        Top = 328.819110000000000000
        Width = 778.205227000000000000
        DataSet = fdbSumAfval
        DataSetName = 'fdbSumAfval'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 269.000000000000000000
          Height = 150.000000000000000000
          ColumnLevels = 2
          DownThenAcross = False
          RowLevels = 2
          ShowColumnTotal = False
          ShowTitle = False
          CellFields.Strings = (
            'hasil')
          ColumnFields.Strings = (
            'kelompok'
            'jenis')
          DataSet = fdbSumAfval
          DataSetName = 'fdbSumAfval'
          RowFields.Strings = (
            'routing'
            'kode')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D38223F3E3C63726F73733E3C63656C6C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223136352E31313831322220546F703D223430302E
            3337383137222057696474683D22393922204865696768743D22323222205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220446973706C6179466F726D61742E466F726D6174537472
            3D2225322E326E2220446973706C6179466F726D61742E4B696E643D22666B4E
            756D657269632220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223022204672616D65
            2E436F6C6F723D22313432313132383822204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22302E3030222F3E3C546672784D656D6F56
            696577204C6566743D223136352E31313831322220546F703D223432322E3337
            383137222057696474683D22393922204865696768743D223232222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223122204672616D652E
            436F6C6F723D22313432313132383822204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22302E3030222F3E3C546672784D656D6F5669
            6577204C6566743D223136352E31313831322220546F703D223434342E333738
            3137222057696474683D22393922204865696768743D22323222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223122204672616D652E43
            6F6C6F723D22313432313132383822204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22302E3030222F3E3C546672784D656D6F566965
            77204C6566743D223137312220546F703D223636222057696474683D22353822
            204865696768743D22323222205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223022204672616D652E436F6C6F723D223134323131323838
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            2E3030222F3E3C546672784D656D6F56696577204C6566743D22313731222054
            6F703D223838222057696474683D22353822204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C2220466F6E742E5374796C653D22302220467261
            6D652E436F6C6F723D22313432313132383822204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            696768742220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D22302E3030222F3E3C546672784D656D
            6F56696577204C6566743D223137312220546F703D2231313022205769647468
            3D22353822204865696768743D22323222205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223022204672616D652E436F6C6F723D22313432
            313132383822204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22302E3030222F3E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C736522204672616D652E5479703D2231352220476170583D223322
            20476170593D2233222048416C69676E3D2268615269676874222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            69676874222056416C69676E3D22766143656E7465722220546578743D22222F
            3E3C546672784D656D6F56696577204C6566743D22302220546F703D22302220
            57696474683D223022204865696768743D223022205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D2268615269676874222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C2F63656C6C6D656D6F733E3C63656C6C686561
            6465726D656D6F733E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E
            436F6C6F723D22313637373732313522204672616D652E5479703D2231352220
            46696C6C2E4261636B436F6C6F723D22373030303036332220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22686173696C222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31332220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223022204672616D652E436F6C6F723D2231363737
            3732313522204672616D652E5479703D223135222046696C6C2E4261636B436F
            6C6F723D22373030303036332220476170583D22332220476170593D22332220
            506172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E
            7465722220546578743D22686173696C222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223022204672616D652E436F6C6F723D22313637373732313522204672616D65
            2E5479703D223135222046696C6C2E4261636B436F6C6F723D22373030303036
            332220476170583D22332220476170593D22332220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            686173696C222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D
            6E6D656D6F733E3C546672784D656D6F56696577204C6566743D223136352E31
            313831322220546F703D223335362E3337383137222057696474683D22393922
            204865696768743D22323222205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223022204672616D652E436F6C6F723D223136373737323135
            22204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D
            22373030303036332220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D223136352E31313831322220546F703D22
            3337382E3337383137222057696474683D22393922204865696768743D223232
            22205265737472696374696F6E733D2232342220416C6C6F7745787072657373
            696F6E733D2246616C736522204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D22686143656E7465722220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F6C
            756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C54667278
            4D656D6F56696577204C6566743D223132322220546F703D2232322220576964
            74683D22383122204865696768743D22323222205265737472696374696F6E73
            3D2238222056697369626C653D2246616C73652220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220
            466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223122
            204672616D652E436F6C6F723D22313637373732313522204672616D652E5479
            703D223135222046696C6C2E4261636B436F6C6F723D22373030303036332220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D224772616E6420546F74616C222F3E3C5466
            72784D656D6F56696577204C6566743D223137312220546F703D223434222057
            696474683D22353822204865696768743D22323222205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3133
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F72
            6E65726D656D6F733E3C546672784D656D6F56696577204C6566743D2233352E
            31313831322220546F703D223335362E3337383137222057696474683D223133
            3022204865696768743D223022205265737472696374696F6E733D2238222056
            697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223022204672616D65
            2E436F6C6F723D22313637373732313522204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D22373030303036332220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            3136352E31313831322220546F703D223335362E333738313722205769647468
            3D22393922204865696768743D223022205265737472696374696F6E733D2238
            222056697369626C653D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
            616D652E436F6C6F723D22313637373732313522204672616D652E5479703D22
            3135222046696C6C2E4261636B436F6C6F723D22373030303036332220476170
            583D22332220476170593D2233222048416C69676E3D22686143656E74657222
            20506172656E74466F6E743D2246616C7365222056416C69676E3D2276614365
            6E7465722220546578743D226B656C6F6D706F6B2C206A656E6973222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230222046
            72616D652E436F6C6F723D22313637373732313522204672616D652E5479703D
            223135222046696C6C2E4261636B436F6C6F723D223730303030363322204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D2233352E31313831322220546F703D223335362E333738313722205769
            6474683D22353422204865696768743D22343422205265737472696374696F6E
            733D22382220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E436F6C6F723D2231
            3637373732313522204672616D652E5479703D223135222046696C6C2E426163
            6B436F6C6F723D22373030303036332220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            526F7574696E67222F3E3C546672784D656D6F56696577204C6566743D223839
            2E31313831322220546F703D223335362E3337383137222057696474683D2237
            3622204865696768743D22343422205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223022204672616D652E436F6C6F723D2231363737373231
            3522204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F72
            3D22373030303036332220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D224B6F6465204D
            6573696E222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C
            546672784D656D6F56696577204C6566743D2233352E31313831322220546F70
            3D223430302E3337383137222057696474683D22353422204865696768743D22
            343422205265737472696374696F6E733D22323422204F6E5072657669657743
            6C69636B3D22444243726F737331526F77304F6E50726576696577436C69636B
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D22417269616C222046
            6F6E742E5374796C653D223022204672616D652E436F6C6F723D223136373737
            32313522204672616D652E5479703D223135222046696C6C2E4261636B436F6C
            6F723D22373030303036332220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22222F3E3C
            546672784D656D6F56696577204C6566743D2238392E31313831322220546F70
            3D223430302E3337383137222057696474683D22373622204865696768743D22
            323222205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
            20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230
            22204672616D652E436F6C6F723D22313637373732313522204672616D652E54
            79703D223135222046696C6C2E4261636B436F6C6F723D223730303030363322
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C72
            6F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            2233352E31313831322220546F703D223434342E333738313722205769647468
            3D2231333022204865696768743D22323222205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E436F6C6F723D22313637
            373732313522204672616D652E5479703D223135222046696C6C2E4261636B43
            6F6C6F723D22373030303036332220476170583D22332220476170593D223322
            2048416C69676E3D22686143656E7465722220506172656E74466F6E743D2246
            616C7365222056416C69676E3D22766143656E7465722220546578743D224772
            616E6420546F74616C222F3E3C546672784D656D6F56696577204C6566743D22
            38392E31313831322220546F703D223432322E3337383137222057696474683D
            22373622204865696768743D22323222205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E
            436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E
            4865696768743D222D31332220466F6E742E4E616D653D22417269616C222046
            6F6E742E5374796C653D223122204672616D652E436F6C6F723D223136373737
            32313522204672616D652E5479703D223135222046696C6C2E4261636B436F6C
            6F723D22373030303036332220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D22546F7461
            6C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F
            6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C
            756D6E736F72743E3C6974656D20322F3E3C6974656D20302F3E3C2F636F6C75
            6D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C6974656D2030
            2F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 283.464750000000000000
        Width = 778.205227000000000000
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'JUMLAH AFVAL PER MESIN (DALAM KG)')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 514.016080000000000000
        Width = 778.205227000000000000
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'JUMLAH DOWNTIME PER MESIN (DALAM MENIT)')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 510.236550000000000000
        Top = 559.370440000000000000
        Width = 778.205227000000000000
        DataSet = fdbSumDT
        DataSetName = 'fdbSumDT'
        RowCount = 0
        object DBCross2: TfrxDBCrossView
          Left = 15.118120000000000000
          Top = 15.118120000000000000
          Width = 269.000000000000000000
          Height = 150.000000000000000000
          ColumnLevels = 2
          DownThenAcross = False
          RowLevels = 2
          ShowColumnTotal = False
          ShowTitle = False
          CellFields.Strings = (
            'hasil')
          ColumnFields.Strings = (
            'kelompok'
            'jenis')
          DataSet = fdbSumDT
          DataSetName = 'fdbSumDT'
          RowFields.Strings = (
            'routing'
            'kode')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D38223F3E3C63726F73733E3C63656C6C6D656D6F733E3C546672784D656D
            6F56696577204C6566743D223136352E31313831322220546F703D223633382E
            3438383536222057696474683D22393922204865696768743D22323222205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220446973706C6179466F726D61742E466F726D6174537472
            3D2225322E326E2220446973706C6179466F726D61742E4B696E643D22666B4E
            756D657269632220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223022204672616D65
            2E436F6C6F723D22313432313132383822204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D226861526967
            68742220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D22302E3030222F3E3C546672784D656D6F56
            696577204C6566743D223136352E31313831322220546F703D223636302E3438
            383536222057696474683D22393922204865696768743D223232222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E
            436F6C6F723D22313432313132383822204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686152696768
            742220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22302E3030222F3E3C546672784D656D6F5669
            6577204C6566743D223136352E31313831322220546F703D223638322E343838
            3536222057696474683D22393922204865696768743D22323222205265737472
            696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223022204672616D652E43
            6F6C6F723D22313432313132383822204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D2268615269676874
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22302E3030222F3E3C546672784D656D6F566965
            77204C6566743D223137312220546F703D223636222057696474683D22353822
            204865696768743D22323222205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223022204672616D652E436F6C6F723D223134323131323838
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2230
            2E3030222F3E3C546672784D656D6F56696577204C6566743D22313731222054
            6F703D223838222057696474683D22353822204865696768743D223232222052
            65737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C2220466F6E742E5374796C653D22302220467261
            6D652E436F6C6F723D22313432313132383822204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686152
            696768742220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D22302E3030222F3E3C546672784D656D
            6F56696577204C6566743D223137312220546F703D2231313022205769647468
            3D22353822204865696768743D22323222205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223022204672616D652E436F6C6F723D22313432
            313132383822204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22302E3030222F3E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D22382220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D
            652E436F6C6F723D22313432313132383822204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268615269
            6768742220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D22222F3E3C546672784D656D6F56696577
            204C6566743D22302220546F703D2230222057696474683D2230222048656967
            68743D223022205265737472696374696F6E733D22382220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223022204672616D652E436F6C6F723D22313432313132383822204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686152696768742220506172656E74466F6E743D2246616C73652220
            56416C69676E3D22766143656E7465722220546578743D22222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223022204672616D652E436F6C6F723D2231343231313238
            3822204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686152696768742220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E
            3C546672784D656D6F56696577204C6566743D22302220546F703D2230222057
            696474683D223022204865696768743D223022205265737472696374696F6E73
            3D22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223022204672616D652E436F6C6F723D223136
            37373732313522204672616D652E5479703D223135222046696C6C2E4261636B
            436F6C6F723D2231363632393134332220476170583D22332220476170593D22
            332220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22686173696C222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E537479
            6C653D223022204672616D652E436F6C6F723D22313637373732313522204672
            616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D22313636
            32393134332220476170583D22332220476170593D22332220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D22686173696C222F3E3C546672784D656D6F56696577204C6566743D22
            302220546F703D2230222057696474683D223022204865696768743D22302220
            5265737472696374696F6E733D22382220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E74
            2E4E616D653D22417269616C2220466F6E742E5374796C653D22302220467261
            6D652E436F6C6F723D22313637373732313522204672616D652E5479703D2231
            35222046696C6C2E4261636B436F6C6F723D2231363632393134332220476170
            583D22332220476170593D22332220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22686173696C22
            2F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F73
            3E3C546672784D656D6F56696577204C6566743D223136352E31313831322220
            546F703D223539342E3438383536222057696474683D22393922204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223022204672616D652E436F6C6F723D22313637373732313522204672616D
            652E5479703D223135222046696C6C2E4261636B436F6C6F723D223136363239
            3134332220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F
            56696577204C6566743D223136352E31313831322220546F703D223631362E34
            38383536222057696474683D22393922204865696768743D2232322220526573
            7472696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223022204672616D65
            2E436F6C6F723D22313637373732313522204672616D652E5479703D22313522
            2046696C6C2E4261636B436F6C6F723D2231363632393134332220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C75
            6D6E746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            223132322220546F703D223232222057696474683D2238312220486569676874
            3D22323222205265737472696374696F6E733D2238222056697369626C653D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269
            616C2220466F6E742E5374796C653D223122204672616D652E436F6C6F723D22
            313637373732313522204672616D652E5479703D223135222046696C6C2E4261
            636B436F6C6F723D2231363632393134332220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D224772616E6420546F74616C222F3E3C546672784D656D6F56696577204C65
            66743D223137312220546F703D223434222057696474683D2235382220486569
            6768743D22323222205265737472696374696F6E733D2238222056697369626C
            653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22
            417269616C2220466F6E742E5374796C653D223122204672616D652E436F6C6F
            723D22313637373732313522204672616D652E5479703D223135222046696C6C
            2E4261636B436F6C6F723D2231363632393134332220476170583D2233222047
            6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22546F74616C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E
            3C636F726E65726D656D6F733E3C546672784D656D6F56696577204C6566743D
            2233352E31313831322220546F703D223539342E343838353622205769647468
            3D2231333022204865696768743D223022205265737472696374696F6E733D22
            38222056697369626C653D2246616C73652220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2230222046
            72616D652E436F6C6F723D22313637373732313522204672616D652E5479703D
            223135222046696C6C2E4261636B436F6C6F723D223136363239313433222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22686173696C222F3E3C546672784D656D6F56
            696577204C6566743D223136352E31313831322220546F703D223539342E3438
            383536222057696474683D22393922204865696768743D223022205265737472
            696374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374
            796C653D223022204672616D652E436F6C6F723D223136373737323135222046
            72616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D223136
            3632393134332220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D226B656C6F6D706F6B2C
            206A656E6973222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D2238222056697369626C653D2246616C73652220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31332220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223022204672616D652E436F6C6F723D22313637373732313522
            204672616D652E5479703D223135222046696C6C2E4261636B436F6C6F723D22
            31363632393134332220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C546672
            784D656D6F56696577204C6566743D2233352E31313831322220546F703D2235
            39342E3438383536222057696474683D22353422204865696768743D22343422
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
            616D652E436F6C6F723D22313637373732313522204672616D652E5479703D22
            3135222046696C6C2E4261636B436F6C6F723D22313636323931343322204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D22526F7574696E67222F3E3C546672784D656D6F
            56696577204C6566743D2238392E31313831322220546F703D223539342E3438
            383536222057696474683D22373622204865696768743D223434222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223022204672616D652E43
            6F6C6F723D22313637373732313522204672616D652E5479703D223135222046
            696C6C2E4261636B436F6C6F723D2231363632393134332220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D224B6F6465204D6573696E222F3E3C2F636F726E65726D656D
            6F733E3C726F776D656D6F733E3C546672784D656D6F56696577204C6566743D
            2233352E31313831322220546F703D223633382E343838353622205769647468
            3D22353422204865696768743D22343422205265737472696374696F6E733D22
            32342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31332220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223022204672616D652E436F6C6F723D22313637
            373732313522204672616D652E5479703D223135222046696C6C2E4261636B43
            6F6C6F723D2231363632393134332220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C546672784D656D6F56696577204C6566743D2238392E31313831322220
            546F703D223633382E3438383536222057696474683D22373622204865696768
            743D22323222205265737472696374696F6E733D2232342220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31332220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223022204672616D652E436F6C6F723D22313637373732313522204672616D
            652E5479703D223135222046696C6C2E4261636B436F6C6F723D223136363239
            3134332220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220506172656E74466F6E743D2246616C7365222056416C69
            676E3D22766143656E7465722220546578743D22222F3E3C2F726F776D656D6F
            733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C
            6566743D2233352E31313831322220546F703D223638322E3438383536222057
            696474683D2231333022204865696768743D2232322220526573747269637469
            6F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C736522
            20466F6E742E436861727365743D22312220466F6E742E436F6C6F723D223022
            20466F6E742E4865696768743D222D31332220466F6E742E4E616D653D224172
            69616C2220466F6E742E5374796C653D223122204672616D652E436F6C6F723D
            22313637373732313522204672616D652E5479703D223135222046696C6C2E42
            61636B436F6C6F723D2231363632393134332220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D224772616E6420546F74616C222F3E3C546672784D656D6F56696577204C
            6566743D2238392E31313831322220546F703D223636302E3438383536222057
            696474683D22373622204865696768743D22323222205265737472696374696F
            6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31332220466F6E742E4E616D653D22417269
            616C2220466F6E742E5374796C653D223122204672616D652E436F6C6F723D22
            313637373732313522204672616D652E5479703D223135222046696C6C2E4261
            636B436F6C6F723D2231363632393134332220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66
            756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E
            733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C6974656D20302F3E
            3C2F636F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C
            6974656D20302F3E3C2F726F77736F72743E3C2F63726F73733E}
        end
        object Chart1: TfrxChartView
          Left = 15.118120000000000000
          Top = 207.874150000000000000
          Width = 483.779840000000000000
          Height = 207.874150000000000000
          HighlightColor = clBlack
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E4272757368
            2E436F6C6F720707636C5768697465144261636B57616C6C2E42727573682E53
            74796C6507076273436C656172144261636B57616C6C2E50656E2E5669736962
            6C65080D4672616D652E56697369626C65080656696577334408165669657733
            444F7074696F6E732E526F746174696F6E02000A426576656C4F757465720706
            62764E6F6E6505436F6C6F720707636C5768697465000B544C696E6553657269
            65730753657269657331114D61726B732E4172726F774C656E67746802080D4D
            61726B732E56697369626C65080B536572696573436F6C6F720705636C526564
            16506F696E7465722E496E666C6174654D617267696E73090D506F696E746572
            2E5374796C65070B707352656374616E676C650F506F696E7465722E56697369
            626C6508105856616C7565732E4461746554696D65080C5856616C7565732E4E
            616D65060158125856616C7565732E4D756C7469706C69657205000000000000
            0080FF3F0D5856616C7565732E4F72646572070B6C6F417363656E64696E6710
            5956616C7565732E4461746554696D65080C5956616C7565732E4E616D650601
            59125956616C7565732E4D756C7469706C696572050000000000000080FF3F0D
            5956616C7565732E4F7264657207066C6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              InheritedName = 'TfrxSeriesItem2'
              DataType = dtDBData
              DataSet = fdbSumDT
              DataSetName = 'fdbSumDT'
              SortOrder = soAscending
              TopN = 0
              XType = xtText
              Source1 = 'fdbSumDT."jenis"'
              Source2 = 'fdbSumDT."hasil"'
              Source3 = 'fdbSumDT."jenis"'
              XSource = 'fdbSumDT."jenis"'
              YSource = 'fdbSumDT."hasil"'
            end>
        end
      end
    end
  end
  object dsSumAfval: TDataSource
    DataSet = zqrSumAfval
    Left = 180
    Top = 460
  end
  object zqrSumAfval: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.mesin as kode,e.jenis as routing,'#39'KG Hasil'#39' as kelompok' +
        ','#39'Hasil'#39' as jenis,ifnull(sum(a.qty_prod_kg),0) as hasil from '
      'tbl_hsl_prd as a join tbl_spk as b  on a.no_spk = b.no_spk'
      
        'join tbl_mesin as e on e.kode=a.mesin WHERE  (a.tanggal between ' +
        ':tgl1 and :tgl2)'
      'group by a.mesin,e.jenis'
      'union'
      
        'select b.mesin as kode,a.jenis as routing,'#39'Afval'#39' as kelompok,if' +
        'null(c.jenis,'#39'OTHERS'#39') as jenis,ifnull(sum(c.qty),0) as hasil'
      
        'from tbl_mesin as a join tbl_hsl_prd as b on a.kode=b.mesin join' +
        ' '
      
        'tbl_hsl_prd_afvaldt as c on b.no_bukti=c.no_bukti where c.f_id=1' +
        '  and (b.tanggal between :tgl1 and :tgl2)'
      'group by  b.mesin,a.jenis,c.jenis')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 215
    Top = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object fdbSumAfval: TfrxDBDataset
    UserName = 'fdbSumAfval'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode=kode'
      'routing=routing'
      'kelompok=kelompok'
      'jenis=jenis'
      'hasil=hasil')
    DataSet = zqrSumAfval
    BCDToCurrency = False
    Left = 240
    Top = 460
  end
  object dsSumDT: TDataSource
    DataSet = zqrSumDT
    Left = 275
    Top = 460
  end
  object zqrSumDT: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.mesin as kode,e.jenis as routing,'#39'KG Hasil'#39' as kelompok' +
        ','#39'Hasil'#39' as jenis,ifnull(sum(a.qty_prod_kg),0) as hasil from '
      'tbl_hsl_prd as a join tbl_spk as b  on a.no_spk = b.no_spk'
      
        'join tbl_mesin as e on e.kode=a.mesin WHERE  (a.tanggal between ' +
        ':tgl1 and :tgl2)'
      'group by a.mesin,e.jenis'
      'union'
      
        'select b.mesin as kode,a.jenis as routing,'#39'Downtime'#39' as kelompok' +
        ',ifnull(c.jenis,'#39'OTHERS'#39') as jenis,ifnull(sum(c.qty),0) as hasil'
      
        'from tbl_mesin as a join tbl_hsl_prd as b on a.kode=b.mesin join' +
        ' '
      
        'tbl_hsl_prd_afvaldt as c on b.no_bukti=c.no_bukti where c.f_id=2' +
        '  and (b.tanggal between :tgl1 and :tgl2)'
      'group by  b.mesin,a.jenis,c.jenis')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 310
    Top = 460
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object fdbSumDT: TfrxDBDataset
    UserName = 'fdbSumDT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode=kode'
      'routing=routing'
      'kelompok=kelompok'
      'jenis=jenis'
      'hasil=hasil')
    DataSet = zqrSumDT
    BCDToCurrency = False
    Left = 335
    Top = 460
  end
  object frxChartObject1: TfrxChartObject
    Left = 314
    Top = 429
  end
  object rptPoLPB: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Modal = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41618.880252094910000000
    ReportOptions.LastChange = 41620.364681886600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 15
    Top = 435
    Datasets = <
      item
        DataSet = fdbPoLPB
        DataSetName = 'fdbPoLPB'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 580.000000000000000000
      PaperHeight = 216.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 2154.332100000000000000
        object Memo8: TfrxMemoView
          Top = 11.338590000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Laporan Rekap Pembelian')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 2154.332100000000000000
        DataSet = fdbPoLPB
        DataSetName = 'fdbPoLPB'
        RowCount = 0
        object fdbPoLPBno_bukti: TfrxMemoView
          Left = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbPoLPB."no_bukti"]')
          ParentFont = False
        end
        object fdbPoLPBno_fobj: TfrxMemoView
          Left = 117.165430000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'no_fobj'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbPoLPB."no_fobj"]')
          ParentFont = False
        end
        object fdbPoLPBtanggal: TfrxMemoView
          Left = 222.992270000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbPoLPB."tanggal"]')
          ParentFont = False
        end
        object fdbPoLPBnama: TfrxMemoView
          Left = 302.362400000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbPoLPB."nama"]')
          ParentFont = False
        end
        object fdbPoLPBkode_brg: TfrxMemoView
          Left = 702.992580000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbPoLPB."kode_brg"]')
          ParentFont = False
        end
        object fdbPoLPBdeskripsi: TfrxMemoView
          Left = 869.291900000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbPoLPB."deskripsi"]')
          ParentFont = False
        end
        object fdbPoLPBqty: TfrxMemoView
          Left = 1269.922080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPoLPB."qty"]')
          ParentFont = False
        end
        object fdbPoLPBqty_kirim: TfrxMemoView
          Left = 1349.292210000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_kirim'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPoLPB."qty_kirim"]')
          ParentFont = False
        end
        object fdbPoLPBouts: TfrxMemoView
          Left = 1428.662340000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'outs'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbPoLPB."outs"]')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 1508.032470000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'komplit'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object fdbPoLPBtgl_required: TfrxMemoView
          Left = 1549.607300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_required'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbPoLPB."tgl_required"]')
          ParentFont = False
        end
        object fdbPoLPBtgl_lpb: TfrxMemoView
          Left = 1628.977430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_lpb'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbPoLPB."tgl_lpb"]')
          ParentFont = False
        end
        object fdbPoLPBselisih: TfrxMemoView
          Left = 1708.347560000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'selisih'
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbPoLPB."selisih"]')
          ParentFont = False
        end
        object fdbPoLPBkategori: TfrxMemoView
          Left = 1761.260980000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbPoLPB."kategori"]')
          ParentFont = False
        end
        object fdbPoLPBsubkategori: TfrxMemoView
          Left = 1927.560300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = fdbPoLPB
          DataSetName = 'fdbPoLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbPoLPB."subkategori"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 83.149660000000000000
        Width = 2154.332100000000000000
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 2154.332100000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.PO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 117.165430000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.PP')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 226.771800000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl.PO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 302.362400000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Supplier')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 702.992580000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Kode Barang')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 869.291900000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Barang')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1269.922080000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Qty.PO')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1349.292210000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Qty.LPB')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1428.662340000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Outstanding')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 1508.032470000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Komplit')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 1549.607300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl.Required')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 1628.977430000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl.LPB')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 1708.347560000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Selisih')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 1761.260980000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Kategori Barang')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 1927.560300000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Sub Kategori Barang')
          ParentFont = False
        end
      end
    end
  end
  object zqrPoLPB: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.no_bukti,a.no_fobj,a.tanggal,a.kode_supp,d.nama,b.kode_' +
        'brg,c.deskripsi,b.`qty`,'
      
        'IFNULL((SELECT sum(qty) FROM tbl_spbb_det where no_po=a.no_bukti' +
        ' and kode_brg=b.kode_brg),0)qty_kirim,'
      
        'IFNULL((b.`qty`- IFNULL((SELECT sum(qty) FROM tbl_spbb_det where' +
        ' no_po=a.no_bukti and kode_brg=b.kode_brg),0)),0) outs,'
      
        'IF(IFNULL((b.`qty`- IFNULL((SELECT sum(qty) FROM tbl_spbb_det wh' +
        'ere no_po=a.no_bukti and kode_brg=b.kode_brg),0)),0)<=0,1,0) kom' +
        'plit,'
      
        'a.tgl_required,sf_tgllpb(a.no_bukti,b.kode_brg) tgl_lpb,datediff' +
        '(sf_tgllpb(a.no_bukti,b.kode_brg),a.tgl_required) selisih,'
      'c.kategori,c.subkategori'
      'from tbl_po_head a join tbl_po_det b on a.no_bukti=b.no_bukti'
      
        'join tbl_barang c on b.kode_brg=c.kode left join tbl_supplier d ' +
        'on a.kode_supp=d.kode '
      'WHERE a.tanggal BETWEEN :tgl1 AND :tgl2')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 45
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsPoLPB: TDataSource
    DataSet = zqrPoLPB
    Left = 75
    Top = 435
  end
  object fdbPoLPB: TfrxDBDataset
    UserName = 'fdbPoLPB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'no_fobj=no_fobj'
      'tanggal=tanggal'
      'kode_supp=kode_supp'
      'nama=nama'
      'kode_brg=kode_brg'
      'deskripsi=deskripsi'
      'qty=qty'
      'qty_kirim=qty_kirim'
      'outs=outs'
      'komplit=komplit'
      'tgl_required=tgl_required'
      'tgl_lpb=tgl_lpb'
      'selisih=selisih'
      'kategori=kategori'
      'subkategori=subkategori')
    DataSource = dsPoLPB
    BCDToCurrency = False
    Left = 105
    Top = 435
  end
end
