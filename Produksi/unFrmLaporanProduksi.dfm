object frmLaporanProduksi: TfrmLaporanProduksi
  Left = 607
  Top = 220
  Width = 769
  Height = 410
  Caption = 'Laporan Produksi'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 365
    Width = 56
    Height = 13
    Caption = 'Rekap LHP'
    Visible = False
  end
  object Label2: TLabel
    Left = 15
    Top = 415
    Width = 112
    Height = 13
    Caption = 'Summary Mesin & Proses'
    Visible = False
  end
  object Label3: TLabel
    Left = 15
    Top = 505
    Width = 75
    Height = 13
    Caption = 'Detail Afval & DT'
    Visible = False
  end
  object Label4: TLabel
    Left = 20
    Top = 565
    Width = 66
    Height = 13
    Caption = 'Realisasi SPK'
    Visible = False
  end
  object Label5: TLabel
    Left = 165
    Top = 575
    Width = 90
    Height = 13
    Caption = 'KG SPK VS Bahan'
    Visible = False
  end
  object Label6: TLabel
    Left = 305
    Top = 575
    Width = 106
    Height = 13
    Caption = 'Hasil PRoduksi Lokasi'
    Visible = False
  end
  object pg: TPageControl
    Left = 10
    Top = 10
    Width = 386
    Height = 306
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Produksi'
      object lstBox: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
        OnClick = lstBoxClick
      end
      object GroupBox0: TGroupBox
        Tag = 11
        Left = 84
        Top = 96
        Width = 167
        Height = 108
        Caption = ' Tanggal '
        TabOrder = 1
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
    end
    object TabSheet2: TTabSheet
      Caption = 'SO && SJ '
      ImageIndex = 1
      TabVisible = False
      object lstBox2: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Purchase Order'
      ImageIndex = 2
      TabVisible = False
      object lstBox3: TListBox
        Left = 5
        Top = 5
        Width = 367
        Height = 267
        ItemHeight = 13
        TabOrder = 0
      end
    end
  end
  object btnCetak: TButton
    Left = 15
    Top = 323
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 1
    OnClick = btnCetakClick
  end
  object btnClose: TButton
    Left = 95
    Top = 323
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 2
    OnClick = btnCloseClick
  end
  object GroupBox1: TGroupBox
    Tag = 11
    Left = 404
    Top = 31
    Width = 342
    Height = 140
    Caption = ' Tanggal '
    TabOrder = 3
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
      Caption = 'Proses'
    end
    object cxcProses: TcxComboBox
      Left = 65
      Top = 100
      Properties.Items.Strings = (
        'CONVERTING'
        'PRINTING'
        'EXTRUSI'
        'GUSET'
        'GEOMEMBRAN')
      TabOrder = 4
      Width = 156
    end
  end
  object PageControl1: TPageControl
    Left = 410
    Top = 185
    Width = 616
    Height = 336
    ActivePage = TabSheet4
    TabOrder = 4
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
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = '1.2'
      ImageIndex = 1
      object gb12: TGroupBox
        Tag = 11
        Left = 16
        Top = 13
        Width = 445
        Height = 148
        Caption = ' Tanggal '
        TabOrder = 0
        object cxd12_1: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxLabel13: TcxLabel
          Left = 14
          Top = 50
          Caption = 'S / D'
        end
        object cxd12_2: TcxDateEdit
          Left = 14
          Top = 69
          TabOrder = 2
          Width = 121
        end
        object cxLabel16: TcxLabel
          Left = 14
          Top = 173
          Caption = 'Jenis Jurnal'
          Visible = False
        end
        object cxCmbJenisJurnal: TcxComboBox
          Left = 81
          Top = 171
          Properties.MaxLength = 0
          TabOrder = 4
          Visible = False
          Width = 270
        end
        object cxCmbKodeJenisJurnal: TcxComboBox
          Left = 91
          Top = 186
          Properties.MaxLength = 0
          TabOrder = 5
          Visible = False
          Width = 270
        end
        object cxLabel17: TcxLabel
          Left = 15
          Top = 98
          Caption = 'Akun'
        end
        object cxlAkun12: TcxLookupComboBox
          Left = 53
          Top = 96
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'noakun'
          Properties.ListColumns = <
            item
              Caption = 'No. Akun'
              FieldName = 'noakun'
            end
            item
              Caption = 'Nama Akun'
              FieldName = 'nama'
            end>
          TabOrder = 7
          Width = 145
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = '1.3'
      ImageIndex = 2
      object gb13: TGroupBox
        Tag = 11
        Left = 26
        Top = 33
        Width = 507
        Height = 93
        TabOrder = 0
        object cxd13_1: TcxDateEdit
          Left = 14
          Top = 41
          TabOrder = 0
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 137
          Top = 44
          Caption = 'S / D'
          Visible = False
        end
        object cxd13_2: TcxDateEdit
          Left = 169
          Top = 41
          TabOrder = 2
          Visible = False
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 13
          Top = 20
          Caption = 'Tanggal'
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
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 16
    end
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
    Left = 410
    Top = 5
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
    Left = 445
    Top = 5
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
    Left = 475
    Top = 5
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 505
    Top = 5
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
    Left = 535
    Top = 5
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
    Left = 115
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
        Width = 1306.205568000000000000
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
        Width = 1306.205568000000000000
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
        Width = 1306.205568000000000000
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
    Left = 85
    Top = 385
  end
  object dsRekapLHP: TDataSource
    DataSet = zqrRekapLHP
    Left = 50
    Top = 384
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
    Left = 20
    Top = 379
  end
  object dsSumMesin: TDataSource
    DataSet = zqrSumMesin
    Left = 20
    Top = 430
  end
  object zqrSumMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.jenis,sum(a.hasil) as hasil,sum(a.reject) as reject,IFN' +
        'ULL((sum(a.reject)/SUM(a.hasil)),0)*100 as persen,'
      'sum(a.durasi) as durasi,sum(a.dt) as DT,a.unit_ktg FROM '
      
        '(SELECT a.mesin,IF(b.jenis='#39'GEOMEMBRAN'#39','#39'CASTING'#39',b.jenis) jenis' +
        ','
      'ifnull(sum(a.qty_prod_kg),0) as hasil,'
      
        'IFNULL((SELECT if(satuan='#39'GR'#39',SUM(qty)/1000,SUM(qty)) FROM tbl_h' +
        'sl_prd_afvaldt WHERE no_bukti=a.no_bukti AND f_id=1 AND satuan i' +
        'n ('#39'KG'#39','#39'GR'#39') and tanggal between :tgl1 and :tgl2),0) reject,'
      
        '((IFNULL((SELECT if(satuan='#39'GR'#39',SUM(qty)/1000,SUM(qty)) FROM tbl' +
        '_hsl_prd_afvaldt WHERE no_bukti=a.no_bukti AND f_id=1 and satuan' +
        ' in ('#39'KG'#39','#39'GR'#39') and jenis not in ('#39'AFVAL PLONG'#39','#39'AFVAL TRIM'#39','#39'AF' +
        'VAL TRIMING'#39') '
      'and tanggal between :tgl1 and :tgl2),0)/'
      'ifnull(sum(a.qty_prod_kg),0))*100) persen,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_bukti=' +
        'a.no_bukti AND f_id=2 and tanggal between :tgl1 and :tgl2),0) DT' +
        ','
      
        'SUM(ifnull(((hour(TIMEDIFF(a.jam2,a.jam1))*60)+(MINUTE(TIMEDIFF(' +
        'a.jam2,a.jam1))))/60,0)) as durasi,d.unit_ktg'
      
        'FROM tbl_hsl_prd a join tbl_mesin b on a.mesin=b.kode LEFT JOIN ' +
        'tbl_spk c on a.no_spk=c.no_spk LEFT JOIN tbl_barang d on c.kode_' +
        'brg=d.kode'
      'WHERE (a.tanggal between :tgl1 and :tgl2)'
      'GROUP BY a.mesin,d.unit_ktg'
      'ORDER BY d.unit_ktg) as a  '
      'group by a.jenis,a.unit_ktg'
      'order by a.unit_ktg')
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
    Left = 55
    Top = 430
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
      'jenis=jenis'
      'hasil=hasil'
      'reject=reject'
      'persen=persen'
      'durasi=durasi'
      'DT=DT'
      'unit_ktg=unit_ktg')
    DataSet = zqrSumMesin
    BCDToCurrency = False
    Left = 80
    Top = 430
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
      'procedure Cross1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 210
    Top = 465
    Datasets = <
      item
        DataSet = fdbSumAfval
        DataSetName = 'fdbSumAfval'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
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
            'Summary Afval & Downtime Per Proses')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 52.913420000000000000
        Top = 109.606370000000000000
        Width = 755.906000000000000000
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            
              'TOP 5  AFVAL(KG) & DOWNTIME(Menit) PROSES [fdbSumAfval."routing"' +
              '] ')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Afval')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 188.976500000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
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
            'AFVAL/DOWNTIME')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 291.023810000000000000
          Top = 30.236240000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Hasil')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        DataSet = fdbSumAfval
        DataSetName = 'fdbSumAfval'
        RowCount = 0
        object fdbSumAfvaljenis: TfrxMemoView
          Left = 15.118120000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbSumAfval
          DataSetName = 'fdbSumAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbSumAfval."jenis"]')
          ParentFont = False
        end
        object fdbSumAfvalhasil: TfrxMemoView
          Left = 291.023810000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'hasil'
          DataSet = fdbSumAfval
          DataSetName = 'fdbSumAfval'
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
            '[fdbSumAfval."hasil"]')
          ParentFont = False
        end
        object fdbSumAfvalAfval: TfrxMemoView
          Left = 188.976500000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'fdbSumAfvalAfvalOnBeforePrint'
          DataSet = fdbSumAfval
          DataSetName = 'fdbSumAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbSumAfval."Afval"]')
          ParentFont = False
        end
      end
    end
  end
  object fdbSumDT: TfrxDBDataset
    UserName = 'fdbSumDT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'routing=routing'
      'jenis=jenis'
      'hasil=hasil')
    DataSet = zqrSumDT
    BCDToCurrency = False
    Left = 175
    Top = 465
  end
  object zqrSumDT: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT f.* FROM'
      '(SELECT a.routing,a.jenis,ifnull(sum(a.hasil),0) hasil FROM '
      
        '(select b.mesin as kode,a.jenis as routing,'#39'Downtime'#39' as kelompo' +
        'k,ifnull(c.jenis,'#39'OTHERS'#39') as jenis,ifnull(sum(c.qty),0) as hasi' +
        'l'
      
        'from tbl_mesin as a join tbl_hsl_prd as b on a.kode=b.mesin join' +
        ' '
      
        'tbl_hsl_prd_afvaldt as c on b.no_bukti=c.no_bukti where c.f_id=2' +
        '  and (b.tanggal between :tgl1 and :tgl2)  AND (a.jenis= :routin' +
        'g)'
      'group by  b.mesin,a.jenis,c.jenis) as a'
      'GROUP BY a.routing,a.jenis) as f'
      'ORDER BY f.hasil desc limit 5')
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
        Name = 'routing'
        ParamType = ptUnknown
      end>
    Left = 150
    Top = 465
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
        Name = 'routing'
        ParamType = ptUnknown
      end>
  end
  object dsSumDT: TDataSource
    DataSet = zqrSumDT
    Left = 115
    Top = 465
  end
  object fdbSumAfval: TfrxDBDataset
    UserName = 'fdbSumAfval'
    CloseDataSource = False
    FieldAliases.Strings = (
      'routing=routing'
      'jenis=jenis'
      'Afval=Afval'
      'hasil=hasil')
    DataSet = zqrSumAfval
    BCDToCurrency = False
    Left = 80
    Top = 465
  end
  object zqrSumAfval: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT f.* FROM'
      
        '(select a.routing,a.jenis,a.kelompok as Afval,ifnull(SUM(a.hasil' +
        '),0) hasil FROM'
      
        '(select a.jenis as routing,'#39'Afval'#39' as kelompok,ifnull(c.jenis,'#39'O' +
        'THERS'#39') as jenis,ifnull(sum(c.qty),0) as hasil'
      
        'from tbl_mesin as a join tbl_hsl_prd as b on a.kode=b.mesin join' +
        ' '
      
        'tbl_hsl_prd_afvaldt as c on b.no_bukti=c.no_bukti  WHERE c.f_id=' +
        '1 AND  (b.tanggal between :tgl1 and :tgl2) AND a.jenis= :routing'
      'group by  b.mesin,a.jenis,c.jenis) a'
      'group by a.routing,a.jenis'
      'order by a.routing,ifnull(SUM(a.hasil),0) desc limit 5) as f'
      'UNION'
      'SELECT f.* FROM'
      
        '(SELECT a.routing,a.jenis,'#39'DT'#39' as Afval,ifnull(sum(a.hasil),0) h' +
        'asil FROM '
      
        '(select b.mesin as kode,a.jenis as routing,'#39'Downtime'#39' as kelompo' +
        'k,ifnull(c.jenis,'#39'OTHERS'#39') as jenis,ifnull(sum(c.qty),0) as hasi' +
        'l'
      
        'from tbl_mesin as a join tbl_hsl_prd as b on a.kode=b.mesin join' +
        ' '
      
        'tbl_hsl_prd_afvaldt as c on b.no_bukti=c.no_bukti where c.f_id=2' +
        '  and (b.tanggal between :tgl1 and :tgl2)  AND (a.jenis= :routin' +
        'g)'
      'group by  b.mesin,a.jenis,c.jenis) as a'
      'GROUP BY a.routing,a.jenis '
      'order by a.routing,ifnull(sum(a.hasil),0) desc limit 5) as f')
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
        Name = 'routing'
        ParamType = ptUnknown
      end>
    Left = 60
    Top = 465
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
        Name = 'routing'
        ParamType = ptUnknown
      end>
  end
  object dsSumAfval: TDataSource
    DataSet = zqrSumAfval
    Left = 20
    Top = 465
  end
  object rptSumMesin1: TfrxReport
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
    Left = 150
    Top = 430
    Datasets = <
      item
        DataSet = fdbDetailMesin
        DataSetName = 'fdbDetailMesin'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Summary Laporan Hasil Produksi Per Mesin & Proses')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 154.960730000000000000
        Width = 1084.725110000000000000
        Condition = 'fdbSumMesin."unit_ktg"'
        object fdbSumMesinunit_ktg: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'unit_ktg'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbSumMesin."unit_ktg"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 26.456710000000000000
          Width = 117.165430000000000000
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
            'Proses')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 132.283550000000000000
          Top = 26.456710000000000000
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
            'KG Hasil')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 26.456710000000000000
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
            'KG Afval')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 291.023810000000000000
          Top = 26.456710000000000000
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
            '% Afval')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 370.393940000000000000
          Top = 26.456710000000000000
          Width = 90.708720000000000000
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
            'Jam Kerja (Jam)')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 461.102660000000000000
          Top = 26.456710000000000000
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
            'DT (Menit)')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1084.725110000000000000
        DataSet = fdbSumMesin
        DataSetName = 'fdbSumMesin'
        RowCount = 0
        object fdbSumMesinjenis: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbSumMesin."jenis"]')
          ParentFont = False
        end
        object fdbSumMesinhasil: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'hasil'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
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
            '[fdbSumMesin."hasil"]')
          ParentFont = False
        end
        object fdbSumMesinreject: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'reject'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
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
            '[fdbSumMesin."reject"]')
          ParentFont = False
        end
        object fdbSumMesinpersen: TfrxMemoView
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'persen'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
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
            '[fdbSumMesin."persen"]')
          ParentFont = False
        end
        object fdbSumMesindurasi: TfrxMemoView
          Left = 370.393940000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'durasi'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
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
            '[fdbSumMesin."durasi"]')
          ParentFont = False
        end
        object fdbSumMesinDT: TfrxMemoView
          Left = 461.102660000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DT'
          DataSet = fdbSumMesin
          DataSetName = 'fdbSumMesin'
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
            '[fdbSumMesin."DT"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 132.283550000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."hasil">,MasterData1)]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 211.653680000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."reject">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 291.023810000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[SUM(<fdbSumMesin."reject">,MasterData1)/SUM(<fdbSumMesin."hasil' +
              '">,MasterData1)*100]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 370.393940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."durasi">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 461.102660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSumMesin."DT">,MasterData1)]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 1084.725110000000000000
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'Summary Laporan Hasil Produksi Per Proses')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 313.700990000000000000
        Width = 1084.725110000000000000
        object Memo10: TfrxMemoView
          Left = 11.338590000000000000
          Width = 411.968770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'Detail Summary Laporan Hasil Produksi Per Mesin')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 359.055350000000000000
        Width = 1084.725110000000000000
        Condition = 'fdbDetailMesin."unit_ktg"'
        object fdbDetailMesinunit_ktg: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'unit_ktg'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            '[fdbDetailMesin."unit_ktg"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 34.015770000000000000
          Width = 117.165430000000000000
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
            'Proses')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 234.330860000000000000
          Top = 34.015770000000000000
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
            'KG Hasil')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 313.700990000000000000
          Top = 34.015770000000000000
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
            'KG Afval')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 393.071120000000000000
          Top = 34.015770000000000000
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
            '% Afval')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 472.441250000000000000
          Top = 34.015770000000000000
          Width = 90.708720000000000000
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
            'Jam Kerja (Jam)')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 563.149970000000000000
          Top = 34.015770000000000000
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
            'DT (Menit)')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 132.283550000000000000
          Top = 34.015770000000000000
          Width = 102.047310000000000000
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
            'Mesin')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 442.205010000000000000
        Width = 1084.725110000000000000
        DataSet = fdbDetailMesin
        DataSetName = 'fdbDetailMesin'
        RowCount = 0
        object fdbDetailMesinjenis: TfrxMemoView
          Left = 15.118120000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbDetailMesin."jenis"]')
          ParentFont = False
        end
        object fdbDetailMesinmesin: TfrxMemoView
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'mesin'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbDetailMesin."mesin"]')
          ParentFont = False
        end
        object fdbDetailMesinhasil: TfrxMemoView
          Left = 234.330860000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'hasil'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
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
            '[fdbDetailMesin."hasil"]')
          ParentFont = False
        end
        object fdbDetailMesinreject: TfrxMemoView
          Left = 313.700990000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'reject'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
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
            '[fdbDetailMesin."reject"]')
          ParentFont = False
        end
        object fdbDetailMesinpersen: TfrxMemoView
          Left = 393.071120000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'persen'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
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
            '[fdbDetailMesin."persen"]')
          ParentFont = False
        end
        object fdbDetailMesindurasi: TfrxMemoView
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'durasi'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
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
            '[fdbDetailMesin."durasi"]')
          ParentFont = False
        end
        object fdbDetailMesinDT: TfrxMemoView
          Left = 563.149970000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DT'
          DataSet = fdbDetailMesin
          DataSetName = 'fdbDetailMesin'
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
            '[fdbDetailMesin."DT"]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 487.559370000000000000
        Width = 1084.725110000000000000
        object Memo18: TfrxMemoView
          Left = 15.118120000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 234.330860000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbDetailMesin."hasil">,MasterData2)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 313.700990000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbDetailMesin."reject">,MasterData2)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 393.071120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[(SUM(<fdbDetailMesin."reject">,MasterData2)/SUM(<fdbDetailMesin' +
              '."reject">,MasterData2))*100]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 472.441250000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbDetailMesin."durasi">,MasterData2)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbDetailMesin."DT">,MasterData2)]')
          ParentFont = False
        end
      end
    end
  end
  object dsDetailMesin: TDataSource
    DataSet = zqrDetailMesin
    Left = 185
    Top = 430
  end
  object zqrDetailMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.mesin,IF(b.jenis='#39'GEOMEMBRAN'#39','#39'CASTING'#39',b.jenis) jenis,'
      'ifnull(sum(a.qty_prod_kg),0) as hasil,'
      
        'IFNULL((SELECT if(satuan='#39'GR'#39',SUM(qty)/1000,SUM(qty)) FROM tbl_h' +
        'sl_prd_afvaldt WHERE no_bukti=a.no_bukti  AND f_id=1 and satuan ' +
        'in ('#39'KG'#39','#39'GR'#39') and tanggal between :tgl1 and :tgl2),0) reject,'
      
        '((IFNULL((SELECT if(satuan='#39'GR'#39',SUM(qty)/1000,SUM(qty)) FROM tbl' +
        '_hsl_prd_afvaldt WHERE no_bukti=a.no_bukti AND f_id=1 and satuan' +
        ' in ('#39'KG'#39','#39'GR'#39') and jenis not in ('#39'AFVAL PLONG'#39','#39'AFVAL TRIM'#39','#39'AF' +
        'VAL TRIMING'#39') '
      'and tanggal between :tgl1 and :tgl2),0)/'
      'ifnull(sum(a.qty_prod_kg),0))*100) persen,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_bukti=' +
        'a.no_bukti AND f_id=2 and tanggal between :tgl1 and :tgl2),0) DT' +
        ','
      
        'SUM(ifnull(((hour(TIMEDIFF(a.jam2,a.jam1))*60)+(MINUTE(TIMEDIFF(' +
        'a.jam2,a.jam1))))/60,0)) as durasi,d.unit_ktg'
      
        'FROM tbl_hsl_prd a join tbl_mesin b on a.mesin=b.kode LEFT JOIN ' +
        'tbl_spk c on a.no_spk=c.no_spk LEFT JOIN tbl_barang d on c.kode_' +
        'brg=d.kode'
      'WHERE (a.tanggal between :tgl1 and :tgl2)'
      'GROUP BY a.mesin,d.unit_ktg'
      'ORDER BY d.unit_ktg')
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
    Left = 220
    Top = 430
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
  object fdbDetailMesin: TfrxDBDataset
    UserName = 'fdbDetailMesin'
    CloseDataSource = False
    FieldAliases.Strings = (
      'mesin=mesin'
      'jenis=jenis'
      'hasil=hasil'
      'reject=reject'
      'persen=persen'
      'DT=DT'
      'durasi=durasi'
      'unit_ktg=unit_ktg')
    DataSet = zqrDetailMesin
    BCDToCurrency = False
    Left = 250
    Top = 430
  end
  object zqrLHP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT g.*  FROM '
      
        '(SELECT f.no_spk,f.qty as qty_spk,IFNULL(b.no,0) no_urut_routing' +
        ','
      
        'IFNULL((SELECT routing FROM tbl_routing WHERE kode = b.kode_brg ' +
        'and no=IFNULL(b.no,0)),f.jenis_spk) routing,'
      
        '(IFNULL((SELECT SUM(a.qty_kg) FROM tbl_hsl_prd_lhp a join tbl_hs' +
        'l_prd b on a.no_bukti=b.no_bukti WHERE b.no_spk=f.no_spk and  LE' +
        'FT(a.no_bukti,4)<>'#39'HPR1'#39' and tanggal between :tgl1 and :tgl2),0)' +
        '+'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=1  and LEFT(no_bukti,4)<>'#39'HPR1'#39' and  tanggal bet' +
        'ween :tgl1 and :tgl2),0) + '
      
        'IFNULL((SELECT SUM(qty_kg) FROM tbl_karantina_hdr where no_spk=f' +
        '.no_spk and  tanggal between :tgl1 and :tgl2 ),0) ) qty_bahan,'
      
        'IFNULL((SELECT SUM(a.qty_kg) FROM tbl_hsl_prd_lhp a join tbl_hsl' +
        '_prd b on a.no_bukti=b.no_bukti WHERE b.no_spk=f.no_spk and  LEF' +
        'T(a.no_bukti,4)<>'#39'HPR1'#39' and tanggal between :tgl1 and :tgl2),0) ' +
        'qty_hasil,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=1  and LEFT(no_bukti,4)<>'#39'HPR1'#39' and  tanggal bet' +
        'ween :tgl1 and :tgl2),0) qty_afval,'
      
        'IFNULL((SELECT SUM(qty_kg) FROM tbl_karantina_hdr where no_spk=f' +
        '.no_spk and  tanggal between :tgl1 and :tgl2 ),0) qty_karantina,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=1 AND jenis in ('#39'AFVAL TRIM'#39','#39'AFVAL TRIMING'#39','#39'AF' +
        'VAL PLONG'#39') and  tanggal between :tgl1 and :tgl2),0) qty_trim,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=1 AND jenis not in ('#39'AFVAL TRIM'#39','#39'AFVAL TRIMING'#39 +
        ','#39'AFVAL PLONG'#39') and  tanggal between :tgl1 and :tgl2),0) qty_afv' +
        'al1,'
      
        'IFNULL(((IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE ' +
        'no_spk=f.no_spk AND f_id=1 and  tanggal between :tgl1 and :tgl2)' +
        ',0)/'
      
        'IFNULL((SELECT SUM(a.qty_kg) FROM tbl_hsl_prd_lhp a join tbl_hsl' +
        '_prd b on a.no_bukti=b.no_bukti WHERE b.no_spk=f.no_spk and tang' +
        'gal between :tgl1 and :tgl2),0))*100),0) persen_afval,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=1 AND kategori='#39'JENIS AFVAL OPERASIONAL ( KG )'#39' ' +
        'and  tanggal between :tgl1 and :tgl2),0) qty_afvaloperasional, '
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=1 AND kategori='#39'JENIS AFVAL TEHNIK ( KG )'#39' and  ' +
        'tanggal between :tgl1 and :tgl2),0) qty_afvaltehnik,'
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=2 AND kategori='#39'JENIS DOWN TIME NON TEKNIK ( M'#39' ' +
        'and  tanggal between :tgl1 and :tgl2),0) menit_dtoperasional, '
      
        'IFNULL((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt WHERE no_spk=f.' +
        'no_spk AND f_id=2 AND kategori='#39'JENIS DOWN TIME TEHNIK ( MENIT'#39' ' +
        'and  tanggal between :tgl1 and :tgl2),0) menit_dttehnik'
      
        'FROM v_spk f LEFT JOIN (SELECT DISTINCT no, kode_brg FROM tbl_ro' +
        'uting) b ON f.kode_brg = b.kode_brg '
      
        'ORDER BY IFNULL((SELECT routing FROM tbl_routing WHERE kode = b.' +
        'kode_brg and no=IFNULL(b.no,0)),f.jenis_spk)  ASC)  g'
      'WHERE g.qty_hasil<>0 OR g.qty_afval<>0')
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
    Left = 155
    Top = 384
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
  object dsLHP: TDataSource
    DataSet = zqrLHP
    Left = 185
    Top = 384
  end
  object fdbLHP: TfrxDBDataset
    UserName = 'fdbLHP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_spk=no_spk'
      'qty_spk=qty_spk'
      'no_urut_routing=no_urut_routing'
      'routing=routing'
      'qty_bahan=qty_bahan'
      'qty_hasil=qty_hasil'
      'qty_afval=qty_afval'
      'qty_karantina=qty_karantina'
      'qty_trim=qty_trim'
      'qty_afval1=qty_afval1'
      'persen_afval=persen_afval'
      'qty_afvaloperasional=qty_afvaloperasional'
      'qty_afvaltehnik=qty_afvaltehnik'
      'menit_dtoperasional=menit_dtoperasional'
      'menit_dttehnik=menit_dttehnik')
    DataSource = dsLHP
    BCDToCurrency = False
    Left = 220
    Top = 385
  end
  object rptLHP: TfrxReport
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
    Left = 250
    Top = 385
    Datasets = <
      item
        DataSet = fdbLHP
        DataSetName = 'fdbLHP'
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
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 1306.205568000000000000
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
        object Memo18: TfrxMemoView
          Left = 3.779530000000000000
          Top = 22.677180000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 49.133890000000000000
          Width = 1148.977120000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 1306.205568000000000000
        DataSet = fdbLHP
        DataSetName = 'fdbLHP'
        RowCount = 0
        object fdbLHPno_spk: TfrxMemoView
          Left = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'no_spk'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbLHP."no_spk"]')
          ParentFont = False
        end
        object fdbLHPqty_spk: TfrxMemoView
          Left = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_spk'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_spk"]')
          ParentFont = False
        end
        object fdbLHPqty_bahan: TfrxMemoView
          Left = 204.094620000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_bahan'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_bahan"]')
          ParentFont = False
        end
        object fdbLHPqty_hasil: TfrxMemoView
          Left = 283.464750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_hasil'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_hasil"]')
          ParentFont = False
        end
        object fdbLHPqty_afval: TfrxMemoView
          Left = 362.834880000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_afval'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_afval"]')
          ParentFont = False
        end
        object fdbLHPqty_trim: TfrxMemoView
          Left = 521.575140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_trim'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_trim"]')
          ParentFont = False
        end
        object fdbLHPqty_afval1: TfrxMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_afval1'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_afval1"]')
          ParentFont = False
        end
        object fdbLHPpersen_afval: TfrxMemoView
          Left = 680.315400000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'persen_afval'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."persen_afval"]')
          ParentFont = False
        end
        object fdbLHPqty_afvaloperasional: TfrxMemoView
          Left = 759.685530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_afvaloperasional'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_afvaloperasional"]')
          ParentFont = False
        end
        object fdbLHPqty_afvaltehnik: TfrxMemoView
          Left = 839.055660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_afvaltehnik'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_afvaltehnik"]')
          ParentFont = False
        end
        object fdbLHPmenit_dtoperasional: TfrxMemoView
          Left = 918.425790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'menit_dtoperasional'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."menit_dtoperasional"]')
          ParentFont = False
        end
        object fdbLHPmenit_dttehnik: TfrxMemoView
          Left = 997.795920000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'menit_dttehnik'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."menit_dttehnik"]')
          ParentFont = False
        end
        object fdbLHPqty_karantina: TfrxMemoView
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty_karantina'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
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
            '[fdbLHP."qty_karantina"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 132.283550000000000000
        Width = 1306.205568000000000000
        Condition = 'fdbLHP."routing"'
        object fdbLHProuting: TfrxMemoView
          Left = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'routing'
          DataSet = fdbLHP
          DataSetName = 'fdbLHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbLHP."routing"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.SPK')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 124.724490000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG SPK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 204.094620000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG bahan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG Hasil')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 362.834880000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG Afval')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 521.575140000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG Trim')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 600.945270000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG Afval1')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 680.315400000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            '%Afval')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 759.685530000000000000
          Top = 22.677180000000000000
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
            'KG Afval Opr')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 839.055660000000000000
          Top = 22.677180000000000000
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
            'KG Afval Tek')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 918.425790000000000000
          Top = 22.677180000000000000
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
            'Menit DT Opr')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 997.795920000000000000
          Top = 22.677180000000000000
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
            'Menit DT Tek')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 442.205010000000000000
          Top = 22.677180000000000000
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
            'KG Karantina')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 238.110390000000000000
        Width = 1306.205568000000000000
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 124.724490000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_spk">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 204.094620000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_bahan">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 283.464750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_hasil">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 362.834880000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_afval">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 521.575140000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_trim">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_afval1">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 680.315400000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 759.685530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_afvaloperasional">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 839.055660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_afvaltehnik">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 918.425790000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."menit_dtoperasional">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 997.795920000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."menit_dttehnik">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo12: TfrxSysMemoView
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbLHP."qty_karantina">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 1148.977120000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object dsDetAfval: TDataSource
    DataSet = zqrDetAfval
    Left = 15
    Top = 525
  end
  object zqrDetAfval: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_bukti,a.tanggal,a.kategori,a.keterangan,sum(a.qty)qt' +
        'y,b.shift,b.mesin'
      
        'FROM tbl_hsl_prd_afvaldt a join tbl_hsl_prd b on a.no_bukti=b.no' +
        '_bukti'
      'WHERE a.f_id=1 and (a.tanggal between :tgl1 and :tgl2) '
      'GROUP BY a.no_bukti,a.keterangan,a.tanggal,b.shift,b.mesin'
      'ORDER BY sum(a.qty) desc')
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
    Top = 520
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
  object fdBDetAfval: TfrxDBDataset
    UserName = 'fdbDetAfval'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'kategori=kategori'
      'keterangan=keterangan'
      'qty=qty'
      'shift=shift'
      'mesin=mesin')
    DataSet = zqrDetAfval
    BCDToCurrency = False
    Left = 75
    Top = 525
  end
  object rptDetAfval: TfrxReport
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
      'procedure Cross1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 110
    Top = 525
    Datasets = <
      item
        DataSet = fdBDetAfval
        DataSetName = 'fdbDetAfval'
      end
      item
        DataSet = fdbDetDT
        DataSetName = 'fdbDetDT'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
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
            'Detail Afval & Downtime')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 109.606370000000000000
        Width = 1084.725110000000000000
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'AFVAL (KG)')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.LHP')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 139.842610000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
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
            'Tanggal')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 230.551330000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 366.614410000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 710.551640000000000000
          Top = 30.236240000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan Afval')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 291.023810000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Mesin')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 442.205010000000000000
          Top = 30.236240000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Kategori Afval')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 1084.725110000000000000
        DataSet = fdBDetAfval
        DataSetName = 'fdbDetAfval'
        RowCount = 0
        object fdbDetAfvalno_bukti: TfrxMemoView
          Left = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbDetAfval."no_bukti"]')
          ParentFont = False
        end
        object fdbDetAfvaltanggal: TfrxMemoView
          Left = 139.842610000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbDetAfval."tanggal"]')
          ParentFont = False
        end
        object fdbDetAfvalshift: TfrxMemoView
          Left = 230.551330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'shift'
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbDetAfval."shift"]')
          ParentFont = False
        end
        object fdbDetAfvalqty: TfrxMemoView
          Left = 366.614410000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbDetAfval."qty"]')
          ParentFont = False
        end
        object fdbDetAfvalketerangan: TfrxMemoView
          Left = 710.551640000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            ' [fdbDetAfval."keterangan"]')
          ParentFont = False
        end
        object fdbDetAfvalmesin: TfrxMemoView
          Left = 291.023810000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'mesin'
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbDetAfval."mesin"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 15.118120000000000000
          Width = 695.433520000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 139.842610000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line3: TfrxLineView
          Left = 230.551330000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line4: TfrxLineView
          Left = 291.023810000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line5: TfrxLineView
          Left = 366.614410000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line6: TfrxLineView
          Left = 442.205010000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
        object fdbDetAfvalkategori: TfrxMemoView
          Left = 442.205010000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'kategori'
          DataSet = fdBDetAfval
          DataSetName = 'fdbDetAfval'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbDetAfval."kategori"]')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 15.118120000000000000
          Width = 963.780150000000000000
          Height = 18.897650000000000000
        end
        object Line7: TfrxLineView
          Left = 710.551640000000000000
          Height = 18.897650000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 222.992270000000000000
        Width = 1084.725110000000000000
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'DOWNTIME (MENIT)')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.LHP')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 139.842610000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
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
            'Tanggal')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 230.551330000000000000
          Top = 30.236240000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Shift')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 366.614410000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 710.551640000000000000
          Top = 30.236240000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan Downtime')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 291.023810000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Mesin')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 442.205010000000000000
          Top = 30.236240000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Kategori Downtime')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 294.803340000000000000
        Width = 1084.725110000000000000
        DataSet = fdbDetDT
        DataSetName = 'fdbDetDT'
        RowCount = 0
        object fdbDetDTno_bukti: TfrxMemoView
          Left = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'no_bukti'
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbDetDT."no_bukti"]')
          ParentFont = False
        end
        object fdbDetDTtanggal: TfrxMemoView
          Left = 139.842610000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbDetDT."tanggal"]')
          ParentFont = False
        end
        object fdbDetDTshift: TfrxMemoView
          Left = 230.551330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'shift'
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbDetDT."shift"]')
          ParentFont = False
        end
        object fdbDetDTqty: TfrxMemoView
          Left = 366.614410000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
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
            '[fdbDetDT."qty"]')
          ParentFont = False
        end
        object fdbDetDTketerangan: TfrxMemoView
          Left = 710.551640000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbDetDT."keterangan"]')
          ParentFont = False
        end
        object fdbDetDTmesin: TfrxMemoView
          Left = 291.023810000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'mesin'
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbDetDT."mesin"]')
          ParentFont = False
        end
        object fdbDetDTkategori: TfrxMemoView
          Left = 442.205010000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'kategori'
          DataSet = fdbDetDT
          DataSetName = 'fdbDetDT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbDetDT."kategori"]')
          ParentFont = False
        end
      end
    end
  end
  object dsDetDT: TDataSource
    DataSet = zqrDetDT
    Left = 150
    Top = 525
  end
  object zqrDetDT: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_bukti,a.tanggal,a.kategori,a.keterangan,sum(a.qty)qt' +
        'y,b.shift,b.mesin'
      
        'FROM tbl_hsl_prd_afvaldt a join tbl_hsl_prd b on a.no_bukti=b.no' +
        '_bukti'
      'WHERE a.f_id=2 and (a.tanggal between :tgl1 and :tgl2) '
      'GROUP BY a.no_bukti,a.keterangan,a.tanggal,b.shift,b.mesin'
      'ORDER BY sum(a.qty) desc')
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
    Left = 185
    Top = 520
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
  object fdbDetDT: TfrxDBDataset
    UserName = 'fdbDetDT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_bukti=no_bukti'
      'tanggal=tanggal'
      'kategori=kategori'
      'keterangan=keterangan'
      'qty=qty'
      'shift=shift'
      'mesin=mesin')
    DataSet = zqrDetDT
    BCDToCurrency = False
    Left = 215
    Top = 520
  end
  object dsRealSPK: TDataSource
    DataSet = zqrRealSPK
    Left = 20
    Top = 590
  end
  object zqrRealSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select no_spk,tanggal,kode_brg,deskripsi,if(sf_realspk(no_spk)>=' +
        '1,1,0) realisasi,'
      'if(sf_realspk(no_spk)=0,1,0) notrealisasi,'
      
        'if(DATE(mulai)=sf_timelhp(no_spk),1,0)time_lhp,if(DATE(mulai)=sf' +
        '_timelhp(no_spk),0,1)time_lhp1 from v_spk'
      
        'where jenis_spk='#39'BJ'#39' and (mulai between DATE(:tgl1) and DATE(:tg' +
        'l2))  AND no_so<>'#39#39)
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
    Top = 585
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
  object fdbRealSPK: TfrxDBDataset
    UserName = 'fdbRealSPK'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_spk=no_spk'
      'tanggal=tanggal'
      'kode_brg=kode_brg'
      'deskripsi=deskripsi'
      'realisasi=realisasi'
      'notrealisasi=notrealisasi'
      'time_lhp=time_lhp'
      'time_lhp1=time_lhp1')
    DataSet = zqrRealSPK
    BCDToCurrency = False
    Left = 80
    Top = 590
  end
  object rptRealSPK: TfrxReport
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
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 110
    Top = 595
    Datasets = <
      item
        DataSet = fdbRealSPK
        DataSetName = 'fdbRealSPK'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
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
            'Realisasi SPK')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 109.606370000000000000
        Width = 1084.725110000000000000
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            'Detail Realisasi SPK')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 56.692950000000000000
          Top = 30.236240000000000000
          Width = 86.929190000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tgl SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 143.622140000000000000
          Top = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 241.889920000000000000
          Top = 30.236240000000000000
          Width = 476.220780000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 718.110700000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Realisasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 793.701300000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tidak Teralisasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 869.291900000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tepat Waktu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 944.882500000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Tidak Tepat Waktu')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1084.725110000000000000
        DataSet = fdbRealSPK
        DataSetName = 'fdbRealSPK'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object fdbRealSPKtanggal: TfrxMemoView
          Left = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'tanggal'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRealSPK."tanggal"]')
          ParentFont = False
        end
        object fdbRealSPKno_spk: TfrxMemoView
          Left = 143.622140000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'no_spk'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRealSPK."no_spk"]')
          ParentFont = False
        end
        object fdbRealSPKdeskripsi: TfrxMemoView
          Left = 241.889920000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'deskripsi'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbRealSPK."deskripsi"]')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 718.110700000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'realisasi'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object CheckBox2: TfrxCheckBoxView
          Left = 793.701300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'notrealisasi'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object CheckBox3: TfrxCheckBoxView
          Left = 869.291900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'time_lhp'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object CheckBox4: TfrxCheckBoxView
          Left = 944.882500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          CheckColor = clBlack
          CheckStyle = csCheck
          DataField = 'time_lhp1'
          DataSet = fdbRealSPK
          DataSetName = 'fdbRealSPK'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 162.519790000000000000
        Top = 234.330860000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 718.110700000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."realisasi">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 793.701300000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."notrealisasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 34.015770000000000000
          Top = 68.031540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Jumlah SPK')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 128.504020000000000000
          Top = 68.031540000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 151.181200000000000000
          Top = 68.031540000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[SUM(<fdbRealSPK."realisasi">,MasterData1)+SUM(<fdbRealSPK."notr' +
              'ealisasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 34.015770000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Terealisasi')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 128.504020000000000000
          Top = 90.708720000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 34.015770000000000000
          Top = 113.385900000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tidak Terealisasi')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 128.504020000000000000
          Top = 113.385900000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 151.181200000000000000
          Top = 90.708720000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."realisasi">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 151.181200000000000000
          Top = 113.385900000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."notrealisasi">,MasterData1)]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 34.015770000000000000
          Top = 136.063080000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '% Terealisasi')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 128.504020000000000000
          Top = 136.063080000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          Left = 151.181200000000000000
          Top = 136.063080000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[(SUM(<fdbRealSPK."realisasi">,MasterData1)/(SUM(<fdbRealSPK."re' +
              'alisasi">,MasterData1)+SUM(<fdbRealSPK."notrealisasi">,MasterDat' +
              'a1))*100)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 204.094620000000000000
          Top = 136.063080000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          Left = 869.291900000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."time_lhp">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          Left = 944.882500000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."time_lhp1">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 268.346630000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tepat Waktu')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 377.953000000000000000
          Top = 90.708720000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 268.346630000000000000
          Top = 113.385900000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Tidak Tepat Waktu')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 377.953000000000000000
          Top = 113.385900000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 396.850650000000000000
          Top = 90.708720000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."time_lhp">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo10: TfrxSysMemoView
          Left = 396.850650000000000000
          Top = 113.385900000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<fdbRealSPK."time_lhp1">,MasterData1)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 268.346630000000000000
          Top = 136.063080000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '% Tepat Waktu')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 377.953000000000000000
          Top = 136.063080000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object SysMemo11: TfrxSysMemoView
          Left = 396.850650000000000000
          Top = 136.063080000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[(SUM(<fdbRealSPK."time_lhp">,MasterData1)/SUM(<fdbRealSPK."real' +
              'isasi">,MasterData1))*100]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 461.102660000000000000
          Top = 136.063080000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '%')
          ParentFont = False
        end
      end
    end
  end
  object dsSPKBahan: TDataSource
    DataSet = zqrSPKBahan
    Left = 160
    Top = 595
  end
  object zqrSPKBahan: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select no_spk,kode_brg,deskripsi,qty,IFNULL(sf_bonspk(no_spk),0)' +
        ' bon,'
      'IFNULL(sf_bahanspk(no_spk),0)bahan,'
      '(qty-IFNULL(sf_bahanspk(no_spk),0))selisih,'
      
        '(((qty-IFNULL(sf_bahanspk(no_spk),0))/qty)*100) persen from v_sp' +
        'k'
      'where jenis_spk='#39'BJ'#39' and tanggal between :tgl1 and :tgl2')
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
    Left = 190
    Top = 595
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
  object fdbSPKBahan: TfrxDBDataset
    UserName = 'fdbSPKBahan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_spk=no_spk'
      'kode_brg=kode_brg'
      'deskripsi=deskripsi'
      'qty=qty'
      'bon=bon'
      'bahan=bahan'
      'selisih=selisih'
      'persen=persen')
    DataSet = zqrSPKBahan
    BCDToCurrency = False
    Left = 220
    Top = 595
  end
  object rptSPKBahan: TfrxReport
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
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 250
    Top = 600
    Datasets = <
      item
        DataSet = fdbSPKBahan
        DataSetName = 'fdbSPKBahan'
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
      EndlessHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
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
            'KG SPK VS Bahan Terpakai')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 109.606370000000000000
        Width = 1084.725110000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Top = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'No.SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Top = 30.236240000000000000
          Width = 476.220780000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama Produk')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Top = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'KG SPK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 710.551640000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Bon Bahan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 786.142240000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Bahan Terpakai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 861.732840000000000000
          Top = 30.236240000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            'Selisih')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 933.543910000000000000
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clYellow
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 1084.725110000000000000
        DataSet = fdbSPKBahan
        DataSetName = 'fdbSPKBahan'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Left = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
        end
        object fdbSPKBahanno_spk: TfrxMemoView
          Left = 56.692950000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'no_spk'
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fdbSPKBahan."no_spk"]')
          ParentFont = False
        end
        object fdbSPKBahandeskripsi: TfrxMemoView
          Left = 154.960730000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [fdbSPKBahan."deskripsi"]')
          ParentFont = False
        end
        object fdbSPKBahanqty: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
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
            '[fdbSPKBahan."qty"]')
          ParentFont = False
        end
        object fdbSPKBahanbon: TfrxMemoView
          Left = 710.551640000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'bon'
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
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
            '[fdbSPKBahan."bon"]')
          ParentFont = False
        end
        object fdbSPKBahanbahan: TfrxMemoView
          Left = 786.142240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'bahan'
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
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
            '[fdbSPKBahan."bahan"]')
          ParentFont = False
        end
        object fdbSPKBahanselisih: TfrxMemoView
          Left = 861.732840000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'selisih'
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
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
            '[fdbSPKBahan."selisih"]')
          ParentFont = False
        end
        object fdbSPKBahanpersen: TfrxMemoView
          Left = 933.543910000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'persen'
          DataSet = fdbSPKBahan
          DataSetName = 'fdbSPKBahan'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbSPKBahan."persen"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 234.330860000000000000
        Width = 1084.725110000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSPKBahan."qty">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 710.551640000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSPKBahan."bon">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 786.142240000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSPKBahan."bahan">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          Left = 861.732840000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbSPKBahan."selisih">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 929.764380000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[(SUM(<fdbSPKBahan."selisih">,MasterData1)/SUM(<fdbSPKBahan."qty' +
              '">,MasterData1))*100]')
          ParentFont = False
        end
      end
    end
  end
  object dsLokasiProduksi: TDataSource
    DataSet = zqrLokasiProduksi
    Left = 300
    Top = 595
  end
  object zqrLokasiProduksi: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.lokasi,SUM(a.qty_prod_kg) hasil_ok,(0) ng,(SUM(a.qty_pr' +
        'od_kg)+(0)) output,'
      '(SELECT COUNT(f.mesin) '
      'from'
      '(select distinct a.mesin, '
      
        '(select REPLACE(lokasi,'#39'GEDUNG '#39','#39#39') from tbl_mesin where kode=a' +
        '.mesin) lokasi'
      
        'from tbl_hsl_prd a where a.tanggal between:tgl1 and :tgl2) f whe' +
        're f.lokasi=a.lokasi) jml_mesin,'
      
        'SUM(a.durasi) running,SUM(a.jml_operator) operator,IFNULL(SUM(a.' +
        'dt)/60,0) dt'
      'FROM'
      '(select a.no_spk,a.no_bukti,a.qty_prod_kg,a.qty_reject,'
      
        '(select REPLACE(lokasi,'#39'GEDUNG '#39','#39#39') from tbl_mesin where kode=a' +
        '.mesin) lokasi,'
      
        'ifnull(((hour(TIMEDIFF(a.jam2,a.jam1))*60)+(MINUTE(TIMEDIFF(a.ja' +
        'm2,a.jam1))))/60,0) durasi,a.jml_operator,'
      
        'ifnull((SELECT SUM(qty) FROM tbl_hsl_prd_afvaldt where f_id=2 an' +
        'd no_bukti=a.no_bukti),0) dt '
      'from tbl_hsl_prd a where a.tanggal between :tgl1  and :tgl2) a'
      'GROUP BY a.lokasi')
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
    Left = 330
    Top = 590
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
  object fdbLokasiPRoduksi: TfrxDBDataset
    UserName = 'fdbLokasiProduksi'
    CloseDataSource = False
    FieldAliases.Strings = (
      'lokasi=lokasi'
      'hasil_ok=hasil_ok'
      'ng=ng'
      'output=output'
      'jml_mesin=jml_mesin'
      'running=running'
      'operator=operator'
      'dt=dt')
    DataSet = zqrLokasiProduksi
    BCDToCurrency = False
    Left = 360
    Top = 595
  end
  object rptLokasiProduksi: TfrxReport
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
      ''
      ''
      'begin'
      ''
      'end.')
    Left = 390
    Top = 600
    Datasets = <
      item
        DataSet = fdbLokasiPRoduksi
        DataSetName = 'fdbLokasiProduksi'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Laporan Produksi Per Lokasi / Gedung')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 279.685220000000000000
        Top = 128.504020000000000000
        Width = 755.906000000000000000
        DataSet = fdbLokasiPRoduksi
        DataSetName = 'fdbLokasiProduksi'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Top = 7.559060000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LOKASI / GEDUNG')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 15.118120000000000000
          Top = 30.236240000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'HASIL OK (KG)')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 15.118120000000000000
          Top = 52.913420000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'HASIL NG (%)')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 37.795300000000000000
          Top = 79.370130000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Panjang Kurang (KG)')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 37.795300000000000000
          Top = 102.047310000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Reject Film Kasar (KG)')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 15.118120000000000000
          Top = 147.401670000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RATA2 OVER TICHNESS (%)')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 15.118120000000000000
          Top = 170.078850000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RATA2 OVER BERAT')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 15.118120000000000000
          Top = 196.535560000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL RUNNING MESIN')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 15.118120000000000000
          Top = 219.212740000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL DOWN MESIN (JAM)')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 15.118120000000000000
          Top = 241.889920000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL KARYAWAN')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 188.976500000000000000
          Top = 7.559060000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 188.976500000000000000
          Top = 30.236240000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Top = 52.913420000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 188.976500000000000000
          Top = 79.370130000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 188.976500000000000000
          Top = 102.047310000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 188.976500000000000000
          Top = 147.401670000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 188.976500000000000000
          Top = 170.078850000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 188.976500000000000000
          Top = 196.535560000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 188.976500000000000000
          Top = 219.212740000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 188.976500000000000000
          Top = 241.889920000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbLokasiProduksilokasi: TfrxMemoView
          Left = 207.874150000000000000
          Top = 7.559060000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'lokasi'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 16777180
          Memo.UTF8 = (
            '[fdbLokasiProduksi."lokasi"]')
          ParentFont = False
        end
        object fdbLokasiProduksihasil_ok: TfrxMemoView
          Left = 207.874150000000000000
          Top = 30.236240000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'hasil_ok'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."hasil_ok"]')
          ParentFont = False
        end
        object fdbLokasiProduksing: TfrxMemoView
          Left = 207.874150000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'ng'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."ng"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 207.874150000000000000
          Top = 79.370130000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'ng'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."ng"]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 207.874150000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'ng'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."ng"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 15.118120000000000000
          Top = 124.724490000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TOTAL OUTPUT')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 188.976500000000000000
          Top = 124.724490000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':')
          ParentFont = False
        end
        object fdbLokasiProduksioutput: TfrxMemoView
          Left = 207.874150000000000000
          Top = 124.724490000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'output'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."output"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 207.874150000000000000
          Top = 147.401670000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'ng'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."ng"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 207.874150000000000000
          Top = 170.078850000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'ng'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbLokasiProduksi."ng"]')
          ParentFont = False
        end
        object fdbLokasiProduksidt: TfrxMemoView
          Left = 207.874150000000000000
          Top = 219.212740000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'dt'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbLokasiProduksi."dt"]')
          ParentFont = False
        end
        object fdbLokasiProduksioperator: TfrxMemoView
          Left = 207.874150000000000000
          Top = 241.889920000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'operator'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbLokasiProduksi."operator"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Color = 15000804
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 3.779530000000000000
          Top = 272.126160000000000000
          Width = 729.449290000000000000
          Color = clBlack
          Frame.Color = 15000804
          Diagonal = True
        end
        object fdbLokasiProduksijml_mesin: TfrxMemoView
          Left = 207.874150000000000000
          Top = 196.535560000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'jml_mesin'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbLokasiProduksi."jml_mesin"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 268.346630000000000000
          Top = 196.535560000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'MESIN/')
          ParentFont = False
        end
        object fdbLokasiProduksirunning: TfrxMemoView
          Left = 325.039580000000000000
          Top = 196.535560000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'running'
          DataSet = fdbLokasiPRoduksi
          DataSetName = 'fdbLokasiProduksi'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbLokasiProduksi."running"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 419.527830000000000000
          Top = 196.535560000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'JAM')
          ParentFont = False
        end
      end
    end
  end
end
