object frmLaporanAcc: TfrmLaporanAcc
  Left = 407
  Top = 331
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Laporan'
  ClientHeight = 541
  ClientWidth = 1068
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
    Left = 25
    Top = 375
    Width = 55
    Height = 13
    Caption = 'Buku Besar'
  end
  object Label2: TLabel
    Left = 25
    Top = 470
    Width = 115
    Height = 13
    Caption = 'Buku Pembantu Piutang'
  end
  object Label3: TLabel
    Left = 170
    Top = 380
    Width = 114
    Height = 13
    Caption = 'Buku Pembantu Hutang'
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
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Akuntansi'
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
      TabVisible = False
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
      TabVisible = False
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
      Properties.MaxLength = 0
      TabOrder = 3
      Width = 160
    end
  end
  object PageControl1: TPageControl
    Left = 420
    Top = 175
    Width = 616
    Height = 336
    ActivePage = TabSheet5
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
          OnClick = btnNmBrgHargaClick
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
      object GroupBox3: TGroupBox
        Tag = 11
        Left = 14
        Top = 16
        Width = 481
        Height = 75
        TabOrder = 0
        object cxlCustomer1: TcxLookupComboBox
          Left = 10
          Top = 35
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
          Properties.ListSource = dsCustomer
          TabOrder = 0
          Width = 391
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 15
          Caption = 'Customer'
        end
      end
      object GroupBox6: TGroupBox
        Tag = 11
        Left = 12
        Top = 97
        Width = 484
        Height = 69
        TabOrder = 1
        object cxlSupp: TcxLookupComboBox
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
          Properties.ListSource = dsSupplier
          Properties.MaxLength = 0
          TabOrder = 1
          Width = 396
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = 13
          Caption = 'Supplier'
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 17
      object GroupBox18: TGroupBox
        Tag = 11
        Left = 16
        Top = 13
        Width = 445
        Height = 283
        Caption = ' Tanggal '
        TabOrder = 0
        object cxChkAkun18: TcxCheckBox
          Left = 14
          Top = 57
          Caption = 'Akun'
          Properties.OnChange = cxChkAkun18PropertiesChange
          State = cbsChecked
          TabOrder = 4
          Width = 121
        end
        object cxTgl1_gp18: TcxDateEdit
          Left = 14
          Top = 26
          TabOrder = 0
          Width = 121
        end
        object cxLabel61: TcxLabel
          Left = 144
          Top = 30
          Caption = 'S / D'
        end
        object cxTgl2_gp18: TcxDateEdit
          Left = 179
          Top = 26
          TabOrder = 1
          Width = 121
        end
        object cxlAkun18: TcxLookupComboBox
          Left = 68
          Top = 56
          Enabled = False
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
          Properties.ListSource = dsAkun
          TabOrder = 2
          Visible = False
          Width = 145
        end
        object cxchklistAkun: TCheckListBox
          Left = 20
          Top = 85
          Width = 406
          Height = 186
          Enabled = False
          ItemHeight = 13
          Items.Strings = (
            '')
          TabOrder = 5
        end
      end
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
  object zqrBB: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.akun,b.nama,c.tanggal,a.no_jurnal,a.keterangan,a.debet,' +
        'a.kredit'
      
        'from tbl_jurnal_det a join (SELECT noakun, nama, (SELECT COUNT(n' +
        'oakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak '
      
        'FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE in' +
        'duk = a.noakun) = 0) b on a.akun=b.noakun'
      
        'left join tbl_jurnal c on a.no_jurnal=c.no_jurnal WHERE (c.tangg' +
        'al  between :tgl1 and :tgl2)'
      'order by a.akun,a.tanggal')
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
    Left = 20
    Top = 394
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
  object dsBB: TDataSource
    DataSet = zqrBB
    Left = 50
    Top = 394
  end
  object fdbBB: TfrxDBDataset
    UserName = 'fdbBB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'akun=akun'
      'nama=nama'
      'tanggal=tanggal'
      'no_jurnal=no_jurnal'
      'keterangan=keterangan'
      'debet=debet'
      'kredit=kredit')
    DataSource = dsBB
    BCDToCurrency = False
    Left = 80
    Top = 395
  end
  object rptBB: TfrxReport
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
      'var'
      't,t1 : real ;'
      '  '
      'procedure Memo13OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '       a : real ;                                  '
      'begin'
      
        '      a :=<fdbSA."debet">+SUM(<fdbBB."debet">,MasterData1)-SUM(<' +
        'fdbBB."kredit">,MasterData1) ;'
      
        '      Memo13.Text := formatfloat('#39'#,##0.00'#39',a) ;                ' +
        '                                      '
      'end;'
      ''
      ''
      
        'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);      ' +
        '                      '
      'begin'
      ' t := 0 ;                             '
      'end;'
      ''
      'procedure MasterData1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '      '
      'end;'
      ''
      'procedure Memo16OnBeforePrint(Sender: TfrxComponent);'
      'begin    '
      
        '   t := t + (<fdbBB."debet">) - (<fdbBB."kredit">)+<fdbSA."debet' +
        '">  ;                                       '
      '  Memo16.Text := formatfloat('#39'#,##0.00'#39',t) ;  '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 110
    Top = 395
    Datasets = <
      item
        DataSet = fdbBB
        DataSetName = 'fdbBB'
      end
      item
        DataSet = fdbSA
        DataSetName = 'fdbSA'
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
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo8: TfrxMemoView
          Left = 222.992270000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'BUKU BESAR')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 222.992270000000000000
          Top = 22.677180000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 136.063080000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'fdbBB."akun"'
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Width = 744.567410000000000000
          Height = 30.236240000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Style = fsDash
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 34.015770000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 98.267780000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Jurnal')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 200.315090000000000000
          Top = 34.015770000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 411.968770000000000000
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Debet')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 525.354670000000000000
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kredit')
          ParentFont = False
        end
        object fdbBBakun: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          DataSet = fdbBB
          DataSetName = 'fdbBB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[fdbBB."akun"] - [fdbBB."nama"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Width = 737.008350000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Color = clGray
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 638.740570000000000000
          Top = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = fdbSA
          DataSetName = 'fdbSA'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSA."debet"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 7.559060000000000000
          Top = 56.692950000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Saldo Awal :')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 638.740570000000000000
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Saldo')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 238.110390000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'MasterData1OnAfterPrint'
        DataSet = fdbBB
        DataSetName = 'fdbBB'
        RowCount = 0
        Stretched = True
        object fdbBBtanggal: TfrxMemoView
          Left = 7.559060000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbBB
          DataSetName = 'fdbBB'
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBB."tanggal"]')
          ParentFont = False
        end
        object fdbBBno_jurnal: TfrxMemoView
          Left = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'no_jurnal'
          DataSet = fdbBB
          DataSetName = 'fdbBB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBB."no_jurnal"]')
          ParentFont = False
        end
        object fdbBBketerangan: TfrxMemoView
          Left = 200.315090000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'keterangan'
          DataSet = fdbBB
          DataSetName = 'fdbBB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBB."keterangan"]')
          ParentFont = False
        end
        object fdbBBdebet: TfrxMemoView
          Left = 411.968770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'fdbBBdebetOnBeforePrint'
          DataField = 'debet'
          DataSet = fdbBB
          DataSetName = 'fdbBB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBB."debet"]')
          ParentFont = False
        end
        object fdbBBkredit: TfrxMemoView
          Left = 525.354670000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'kredit'
          DataSet = fdbBB
          DataSetName = 'fdbBB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBB."kredit"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 638.740570000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo16OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 279.685220000000000000
        Width = 755.906000000000000000
        object Shape2: TfrxShapeView
          Left = 3.779530000000000000
          Width = 744.567410000000000000
          Height = 45.354360000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
          Frame.Style = fsDash
        end
        object SysMemo1: TfrxSysMemoView
          Left = 411.968770000000000000
          Width = 105.826840000000000000
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
            '[SUM(<fdbBB."debet">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 525.354670000000000000
          Width = 105.826840000000000000
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
            '[SUM(<fdbBB."kredit">,MasterData1)]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 313.700990000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Total :')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 313.700990000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Mutasi :')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 411.968770000000000000
          Top = 22.677180000000000000
          Width = 105.826840000000000000
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
            
              '[SUM(<fdbBB."debet">,MasterData1)-SUM(<fdbBB."kredit">,MasterDat' +
              'a1)]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Saldo Awal :')
          ParentFont = False
        end
        object fdbSAdebet: TfrxMemoView
          Left = 105.826840000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataSet = fdbSA
          DataSetName = 'fdbSA'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbSA."debet"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Saldo Akhir :')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 105.826840000000000000
          Top = 26.456710000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo13OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 400.630180000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Left = 7.559060000000000000
          Width = 744.567410000000000000
          Color = clBlack
          Frame.Color = clGray
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Halaman :')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 64.252010000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
      end
    end
  end
  object zqrCustomer: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select kode, nama from tbl_customer order by nama')
    Params = <>
    Left = 885
    Top = 65
  end
  object dsCustomer: TDataSource
    DataSet = zqrCustomer
    Left = 920
    Top = 65
  end
  object zqrBPP: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.akun,b.nama,a.tanggal,a.no_jurnal,(c.nama) cust,a.keter' +
        'angan,sum(a.kredit) debet,sum(a.debet)kredit'
      
        'from tbl_jurnal_det a left join tbl_coa b on a.akun=b.noakun lef' +
        't join tbl_customer c on a.kode_suppcust=c.kode'
      'where  a.kode_suppcust = :kode_cust'
      'group by a.akun,b.nama,a.tanggal,a.no_jurnal,a.keterangan,c.nama')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_cust'
        ParamType = ptUnknown
      end>
    Left = 20
    Top = 489
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_cust'
        ParamType = ptUnknown
      end>
  end
  object dsBPP: TDataSource
    DataSet = zqrBPP
    Left = 50
    Top = 489
  end
  object fdbBPP: TfrxDBDataset
    UserName = 'fdbBPP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'akun=akun'
      'nama=nama'
      'tanggal=tanggal'
      'no_jurnal=no_jurnal'
      'cust=cust'
      'keterangan=keterangan'
      'debet=debet'
      'kredit=kredit')
    DataSource = dsBPP
    BCDToCurrency = False
    Left = 80
    Top = 490
  end
  object rptBPP: TfrxReport
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
    Left = 110
    Top = 490
    Datasets = <
      item
        DataSet = fdbBPP
        DataSetName = 'fdbBPP'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 350.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 1285.040200000000000000
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
            'BUKU PEMBANTU PIUTANG')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 1285.040200000000000000
        DataSet = fdbBPP
        DataSetName = 'fdbBPP'
        RowCount = 0
        Stretched = True
        object fdbBPPakun: TfrxMemoView
          Left = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'akun'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBPP."akun"]')
          ParentFont = False
        end
        object fdbBPPnama: TfrxMemoView
          Left = 117.165430000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBPP."nama"]')
          ParentFont = False
        end
        object fdbBPPtanggal: TfrxMemoView
          Left = 306.141930000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBPP."tanggal"]')
          ParentFont = False
        end
        object fdbBPPno_jurnal: TfrxMemoView
          Left = 400.630180000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'no_jurnal'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBPP."no_jurnal"]')
          ParentFont = False
        end
        object fdbBPPketerangan: TfrxMemoView
          Left = 532.913730000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'keterangan'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBPP."keterangan"]')
          ParentFont = False
        end
        object fdbBPPkredit: TfrxMemoView
          Left = 1148.977120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'kredit'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBPP."kredit"]')
          ParentFont = False
        end
        object fdbBPPdebet: TfrxMemoView
          Left = 982.677800000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBPP."debet"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 98.267780000000000000
        Width = 1285.040200000000000000
        Condition = 'fdbBPP."cust"'
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 1269.922080000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
        end
        object fdbBPPcust: TfrxMemoView
          Left = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'cust'
          DataSet = fdbBPP
          DataSetName = 'fdbBPP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            '[fdbBPP."cust"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Akun')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 120.944960000000000000
          Top = 37.795300000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jenis Akun')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 306.141930000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 404.409710000000000000
          Top = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Jurnal')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 532.913730000000000000
          Top = 37.795300000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 982.677800000000000000
          Top = 37.795300000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Debet')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 1148.977120000000000000
          Top = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kredit')
          ParentFont = False
        end
      end
    end
  end
  object zqrBPH: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.akun,b.nama,a.tanggal,a.no_jurnal,(c.nama) cust,a.keter' +
        'angan,'
      
        'IF(LEFT(a.no_jurnal,2)='#39'PI'#39',(sum(a.kredit)+(SELECT ifnull(SUM(kr' +
        'edit),0) from tbl_jurnal_det WHERE no_jurnal=a.no_jurnal and aku' +
        'n<>'#39'210201'#39')),sum(a.kredit)) debet,'
      'sum(debet) kredit'
      
        'from tbl_jurnal_det a left join tbl_coa b on a.akun=b.noakun lef' +
        't join tbl_supplier c on a.kode_suppcust=c.kode'
      'where  a.kode_suppcust =:kode_cust and a.akun='#39'210201'#39
      'group by a.akun,b.nama,a.tanggal,a.no_jurnal,a.keterangan,c.nama')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_cust'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 394
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_cust'
        ParamType = ptUnknown
      end>
  end
  object dsBPH: TDataSource
    DataSet = zqrBPH
    Left = 190
    Top = 394
  end
  object fdbBPH: TfrxDBDataset
    UserName = 'fdbBPH'
    CloseDataSource = False
    FieldAliases.Strings = (
      'akun=akun'
      'nama=nama'
      'tanggal=tanggal'
      'no_jurnal=no_jurnal'
      'cust=cust'
      'keterangan=keterangan'
      'debet=debet'
      'kredit=kredit')
    DataSource = dsBPH
    BCDToCurrency = False
    Left = 220
    Top = 395
  end
  object rptBPH: TfrxReport
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
      'var'
      't,t1 : real ;'
      '  '
      'procedure Memo2OnBeforePrint(Sender: TfrxComponent);      '
      'begin'
      
        '      t := t + (<fdbBPH."debet">) - (<fdbBPH."kredit">)  ;      ' +
        '                                 '
      '        Memo2.Text := formatfloat('#39'#,##0.00'#39',t) ;      '
      'end;'
      ''
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '   t := 0 ;     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 250
    Top = 395
    Datasets = <
      item
        DataSet = fdbBPH
        DataSetName = 'fdbBPH'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 240.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 869.291900000000000000
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'BUKU PEMBANTU HUTANG')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 869.291900000000000000
        DataSet = fdbBPH
        DataSetName = 'fdbBPH'
        RowCount = 0
        Stretched = True
        object fdbBPPtanggal: TfrxMemoView
          Left = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'tanggal'
          DataSet = fdbBPH
          DataSetName = 'fdbBPH'
          DisplayFormat.FormatStr = 'mm.dd.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBPH."tanggal"]')
          ParentFont = False
        end
        object fdbBPPno_jurnal: TfrxMemoView
          Left = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'no_jurnal'
          DataSet = fdbBPH
          DataSetName = 'fdbBPH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fdbBPH."no_jurnal"]')
          ParentFont = False
        end
        object fdbBPPketerangan: TfrxMemoView
          Left = 211.653680000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'keterangan'
          DataSet = fdbBPH
          DataSetName = 'fdbBPH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[fdbBPH."keterangan"]')
          ParentFont = False
        end
        object fdbBPPkredit: TfrxMemoView
          Left = 597.165740000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'kredit'
          DataSet = fdbBPH
          DataSetName = 'fdbBPH'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBPH."kredit"]')
          ParentFont = False
        end
        object fdbBPPdebet: TfrxMemoView
          Left = 453.543600000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'debet'
          DataSet = fdbBPH
          DataSetName = 'fdbBPH'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[fdbBPH."debet"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 725.669760000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo2OnBeforePrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 56.692950000000000000
        Top = 98.267780000000000000
        Width = 869.291900000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'fdbBPH."cust"'
        object Shape1: TfrxShapeView
          Left = 3.779530000000000000
          Top = 12.795300000000000000
          Width = 846.614720000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
        end
        object fdbBPPcust: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'cust'
          DataSet = fdbBPH
          DataSetName = 'fdbBPH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12615680
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Memo.UTF8 = (
            '[fdbBPH."cust"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 102.047310000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.Jurnal')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 211.653680000000000000
          Top = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Keterangan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 453.543600000000000000
          Top = 37.795300000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Debet')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 597.165740000000000000
          Top = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kredit')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 725.669760000000000000
          Top = 37.795300000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Saldo')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 846.614720000000000000
          Color = clBlack
          Frame.Color = 13421772
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 219.212740000000000000
        Width = 869.291900000000000000
        object Shape2: TfrxShapeView
          Left = 3.779530000000000000
          Width = 846.614720000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 15000804
          Frame.Color = clNone
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Hutang')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 453.543600000000000000
          Width = 139.842610000000000000
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
            '[SUM(<fdbBPH."debet">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 597.165740000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<fdbBPH."kredit">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object zqrSupplier: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select kode, nama from tbl_supplier order by nama')
    Params = <>
    Left = 770
    Top = 100
  end
  object dsSupplier: TDataSource
    DataSet = zqrSupplier
    Left = 805
    Top = 100
  end
  object zqrSA: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.akun,b.nama,IFNULL((SELECT sum(debet) from tbl_jurnal_d' +
        'et where akun=a.akun and tanggal < :tgl1),0)- '
      
        'IFNULL((SELECT sum(kredit) from tbl_jurnal_det where akun=a.akun' +
        ' and tanggal <:tgl1),0) debet,(0)kredit'
      
        'from tbl_jurnal_det a join (SELECT noakun, nama, (SELECT COUNT(n' +
        'oakun) FROM tbl_coa WHERE induk = a.noakun) jml_anak '
      
        'FROM tbl_coa a WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE in' +
        'duk = a.noakun) = 0) b on a.akun=b.noakun'
      'left join tbl_jurnal c on a.no_jurnal=c.no_jurnal'
      'group by a.`akun`,b.nama')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end>
    MasterFields = 'akun'
    MasterSource = dsBB
    LinkedFields = 'akun'
    Left = 20
    Top = 429
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end>
  end
  object dsSA: TDataSource
    DataSet = zqrSA
    Left = 50
    Top = 429
  end
  object fdbSA: TfrxDBDataset
    UserName = 'fdbSA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'akun=akun'
      'nama=nama'
      'debet=debet'
      'kredit=kredit')
    DataSource = dsSA
    BCDToCurrency = False
    Left = 80
    Top = 430
  end
  object zqrAkun: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select f.noakun,f.nama,f.sawal'
      
        'from tbl_coa f where (SELECT COUNT(noakun) FROM tbl_coa WHERE in' +
        'duk = f.noakun) = 0')
    Params = <>
    Left = 840
    Top = 100
  end
  object dsAkun: TDataSource
    DataSet = zqrAkun
    Left = 875
    Top = 100
  end
end
