inherited frmMstCust1: TfrmMstCust1
  Left = 611
  Top = 218
  Height = 620
  BorderIcons = [biSystemMenu]
  Caption = 'Data Customer'
  OldCreateOrder = True
  Position = poScreenCenter
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 122
      Caption = 'Data Customer'
    end
  end
  inherited pnlTengah: TPanel
    Height = 439
    Align = alClient
    object pg: TPageControl
      Left = 1
      Top = 1
      Width = 810
      Height = 437
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Input'
        object cxLabel9: TcxLabel
          Left = 10
          Top = 244
          Caption = 'HP'
          Transparent = True
        end
        object btnGenerate: TButton
          Left = 786
          Top = 246
          Width = 75
          Height = 21
          Caption = 'Generate'
          TabOrder = 1
          Visible = False
        end
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 802
          Height = 409
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BevelKind = bkFlat
          BorderStyle = bsNone
          TabOrder = 2
          object cxLabel1: TcxLabel
            Left = 10
            Top = 17
            Caption = 'Kode'
            Transparent = True
          end
          object cxtKode: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 16
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 216
          end
          object chkAktif: TcxCheckBox
            Left = 330
            Top = 17
            Caption = 'Aktif'
            TabOrder = 2
            Transparent = True
            Width = 121
          end
          object cxLabel10: TcxLabel
            Left = 11
            Top = 44
            Caption = 'Nama'
            Transparent = True
          end
          object cxtNama: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 42
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 336
          end
          object cxLabel4: TcxLabel
            Left = 602
            Top = 109
            Caption = 'Kontak '
            Transparent = True
            Visible = False
          end
          object cxtKontak: TcxTextEdit
            Tag = 1
            Left = 658
            Top = 107
            Properties.CharCase = ecUpperCase
            TabOrder = 6
            Visible = False
            Width = 236
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 94
            Caption = 'Alamat'
            Transparent = True
          end
          object cxtAlamat: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 92
            Properties.CharCase = ecUpperCase
            TabOrder = 8
            Width = 481
          end
          object cxtAlamat2: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 117
            Properties.CharCase = ecUpperCase
            TabOrder = 9
            Width = 479
          end
          object cxLabel14: TcxLabel
            Left = 463
            Top = 15
            Caption = 'Jenis Cust.'
            Transparent = True
            Visible = False
          end
          object cxTextEdit1: TcxTextEdit
            Tag = 1
            Left = 532
            Top = 14
            Properties.CharCase = ecUpperCase
            TabOrder = 11
            Visible = False
            Width = 216
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 168
            Caption = 'Kota'
            Transparent = True
          end
          object cxtKota: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 166
            Properties.CharCase = ecUpperCase
            TabOrder = 13
            Width = 481
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 193
            Caption = 'Provinsi'
            Transparent = True
          end
          object cxtProvinsi: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 191
            Properties.CharCase = ecUpperCase
            TabOrder = 15
            Width = 481
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 218
            Caption = 'Negara'
            Transparent = True
          end
          object cxtNegara: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 216
            Properties.CharCase = ecUpperCase
            TabOrder = 17
            Width = 481
          end
          object cxLabel8: TcxLabel
            Left = 10
            Top = 243
            Caption = 'Telpon/HP/ Fax'
            Transparent = True
          end
          object cxtTelp: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 241
            Properties.CharCase = ecUpperCase
            TabOrder = 19
            Width = 176
          end
          object cxtFax: TcxTextEdit
            Tag = 1
            Left = 501
            Top = 241
            Properties.CharCase = ecUpperCase
            TabOrder = 20
            Width = 176
          end
          object cxLabel13: TcxLabel
            Left = 522
            Top = 272
            Caption = 'Kel. Customer'
            Transparent = True
            Visible = False
          end
          object cxCmbKelHrg: TcxComboBox
            Left = 602
            Top = 269
            Properties.DropDownListStyle = lsEditFixedList
            TabOrder = 22
            Visible = False
            Width = 121
          end
          object cxtHP: TcxTextEdit
            Tag = 1
            Left = 284
            Top = 241
            Properties.CharCase = ecUpperCase
            TabOrder = 23
            Width = 215
          end
          object cxLabel7: TcxLabel
            Left = 10
            Top = 413
            Caption = 'Email'
            Transparent = True
          end
          object cxtEmail: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 411
            Properties.CharCase = ecLowerCase
            TabOrder = 25
            Width = 341
          end
          object cxtUserWeb: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 454
            Properties.ReadOnly = False
            TabOrder = 26
            Width = 236
          end
          object cxtPassword: TcxTextEdit
            Tag = 1
            Left = 664
            Top = 71
            Properties.ReadOnly = True
            TabOrder = 27
            Visible = False
            Width = 236
          end
          object cxLabel11: TcxLabel
            Left = 10
            Top = 456
            Caption = 'User Web'
            Transparent = True
          end
          object cxLabel12: TcxLabel
            Left = 594
            Top = 73
            Caption = 'Password'
            Transparent = True
            Visible = False
          end
          object cxLabel15: TcxLabel
            Left = 10
            Top = 269
            Caption = 'NPWP'
            Transparent = True
          end
          object cxtNPWP: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 267
            Properties.CharCase = ecLowerCase
            TabOrder = 31
            Width = 341
          end
          object cxLabel16: TcxLabel
            Left = 10
            Top = 293
            Caption = 'PKP'
            Transparent = True
          end
          object cxtPKP: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 291
            Properties.CharCase = ecUpperCase
            TabOrder = 33
            Width = 341
          end
          object cxLabel17: TcxLabel
            Left = 10
            Top = 677
            Caption = 'Sales'
            Transparent = True
          end
          object cxlSales: TcxLookupComboBox
            Left = 152
            Top = 672
            Properties.KeyFieldNames = 'kode_sales'
            Properties.ListColumns = <
              item
                FieldName = 'kode_sales'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListSource = dsSales
            TabOrder = 35
            Width = 153
          end
          object cxLabel18: TcxLabel
            Left = 10
            Top = 69
            Caption = 'Jenis Kepemilikan '
            Transparent = True
          end
          object cxLabel19: TcxLabel
            Left = 250
            Top = 69
            Caption = 'Jenis Usaha'
            Transparent = True
          end
          object cxtUsaha: TcxTextEdit
            Tag = 1
            Left = 312
            Top = 66
            Properties.CharCase = ecUpperCase
            TabOrder = 38
            Width = 145
          end
          object cxtJenis: TcxTextEdit
            Tag = 1
            Left = 104
            Top = 66
            Properties.CharCase = ecUpperCase
            TabOrder = 39
            Width = 145
          end
          object cxLabel20: TcxLabel
            Left = 10
            Top = 142
            Caption = 'Kelurahan'
            Transparent = True
          end
          object cxtKelurahan: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 141
            Properties.CharCase = ecUpperCase
            TabOrder = 41
            Width = 215
          end
          object cxLabel21: TcxLabel
            Left = 330
            Top = 142
            Caption = 'Kecamatan'
            Transparent = True
          end
          object cxtKecamatan: TcxTextEdit
            Tag = 1
            Left = 394
            Top = 141
            Properties.CharCase = ecUpperCase
            TabOrder = 43
            Width = 215
          end
          object cxLabel22: TcxLabel
            Left = 10
            Top = 317
            Caption = 'Brand Usaha'
            Transparent = True
          end
          object cxtBrand: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 314
            Properties.CharCase = ecUpperCase
            TabOrder = 45
            Width = 217
          end
          object cxLabel23: TcxLabel
            Left = 10
            Top = 338
            Caption = 'Alamat Kirim'
            Transparent = True
          end
          object cxtAlamatKirim: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 336
            Properties.CharCase = ecUpperCase
            TabOrder = 47
            Width = 481
          end
          object cxLabel24: TcxLabel
            Left = 10
            Top = 362
            Caption = 'Status Perusahaan'
            Transparent = True
          end
          object cxtStatus: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 360
            Properties.CharCase = ecUpperCase
            TabOrder = 49
            Width = 263
          end
          object cxLabel25: TcxLabel
            Left = 10
            Top = 386
            Caption = 'Nama Pemilik'
            Transparent = True
          end
          object cxtPemilik: TcxTextEdit
            Tag = 1
            Left = 106
            Top = 384
            Properties.CharCase = ecUpperCase
            TabOrder = 51
            Width = 263
          end
          object cxLabel26: TcxLabel
            Left = 378
            Top = 387
            Caption = 'Telpon/HP'
            Transparent = True
          end
          object cxtTlpPemilik: TcxTextEdit
            Tag = 1
            Left = 434
            Top = 385
            Properties.CharCase = ecUpperCase
            TabOrder = 53
            Width = 176
          end
          object cxLabel27: TcxLabel
            Left = 10
            Top = 434
            Caption = 'Status Kepemilikan Gedung'
            Transparent = True
          end
          object cxtGedung: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 432
            Properties.CharCase = ecUpperCase
            TabOrder = 55
            Width = 263
          end
          object cxLabel28: TcxLabel
            Left = 10
            Top = 480
            Caption = 'Ara Market'
            Transparent = True
          end
          object cxtArea: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 478
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 57
            Width = 236
          end
          object cxLabel29: TcxLabel
            Left = 10
            Top = 504
            Caption = 'Jumlah Karyawan'
            Transparent = True
          end
          object cxtKaryawan: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 502
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 59
            Width = 236
          end
          object cxLabel30: TcxLabel
            Left = 10
            Top = 528
            Caption = 'Jmlh. Kend Operational'
            Transparent = True
          end
          object cxtKendaraan: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 526
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 61
            Width = 236
          end
          object cxLabel31: TcxLabel
            Left = 10
            Top = 552
            Caption = 'Lama Usaha'
            Transparent = True
          end
          object cxtLama: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 550
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 63
            Width = 145
          end
          object cxLabel32: TcxLabel
            Left = 10
            Top = 576
            Caption = 'No.Rekening Bank'
            Transparent = True
          end
          object cxtRekening: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 574
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 65
            Width = 185
          end
          object cxLabel33: TcxLabel
            Left = 10
            Top = 600
            Caption = 'Nama Rekening Bank'
            Transparent = True
          end
          object cxtNamaRek: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 598
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 67
            Width = 185
          end
          object cxLabel34: TcxLabel
            Left = 10
            Top = 624
            Caption = 'PIC Purchasing Perusahaan'
            Transparent = True
          end
          object cxtPurchasing: TcxTextEdit
            Tag = 1
            Left = 152
            Top = 622
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = False
            TabOrder = 69
            Width = 185
          end
          object cxLabel35: TcxLabel
            Left = 10
            Top = 648
            Caption = 'Limit Kredit'
            Transparent = True
          end
          object cxsKredit: TcxSpinEdit
            Left = 152
            Top = 649
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '#,###'
            Properties.ReadOnly = False
            Properties.ValueType = vtFloat
            Style.HotTrack = True
            TabOrder = 71
            Width = 127
          end
          object cxLabel36: TcxLabel
            Left = 10
            Top = 697
            Caption = 'Akun Piutang'
            Transparent = True
          end
          object cxlAkun: TcxLookupComboBox
            Left = 152
            Top = 695
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                Caption = 'Nama Akun'
                FieldName = 'nama'
              end
              item
                Caption = 'No. Akun'
                FieldName = 'noakun'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnChange = cxlAkunPropertiesChange
            TabOrder = 73
            Width = 281
          end
          object cxtNoAkun: TcxTextEdit
            Left = 437
            Top = 695
            Properties.ReadOnly = True
            TabOrder = 74
            Width = 121
          end
          object Panel1: TPanel
            Left = 655
            Top = 654
            Width = 26
            Height = 116
            BevelOuter = bvNone
            TabOrder = 75
          end
          object chkVer: TcxCheckBox
            Left = 560
            Top = 695
            Caption = 'Verified'
            TabOrder = 76
            Transparent = True
            Width = 121
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Alamat Kirim'
        ImageIndex = 1
        DesignSize = (
          802
          409)
        object cxGrid9: TcxGrid
          Left = 6
          Top = 19
          Width = 791
          Height = 181
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 0
          object cxTblAlamat: TcxGridTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object cxColNama: TcxGridColumn
              Caption = 'Nama Customer'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Width = 206
            end
            object cxColAlamat: TcxGridColumn
              Caption = 'Alamat Kirim'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Width = 422
            end
            object cxColKota: TcxGridColumn
              Caption = 'Kota'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Width = 148
            end
          end
          object cxGridLevel7: TcxGridLevel
            GridView = cxTblAlamat
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 505
    Align = alBottom
  end
  object zqrCoa: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 295
    Top = 15
  end
  object dsCoa: TDataSource
    DataSet = zqrCoa
    Left = 325
    Top = 15
  end
  object zqKategori: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_kategori_brg ORDER BY kategori')
    Params = <>
    Left = 441
    Top = 31
  end
  object zqTipe: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_tipe_brg ORDER BY tipe')
    Params = <>
    Left = 441
    Top = 1
  end
  object dsTipe: TDataSource
    DataSet = zqTipe
    Left = 471
    Top = 1
  end
  object dsKategori: TDataSource
    DataSet = zqKategori
    Left = 471
    Top = 31
  end
  object zqskategori: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_subkategori_brg ORDER BY subkategori')
    Params = <>
    Left = 509
    Top = 1
  end
  object zqSatuan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_satuan ORDER BY satuan')
    Params = <>
    Left = 509
    Top = 31
  end
  object dsSKategori: TDataSource
    DataSet = zqskategori
    Left = 539
    Top = 1
  end
  object dsSatuan: TDataSource
    DataSet = zqSatuan
    Left = 539
    Top = 31
  end
  object zSales: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_sales')
    Params = <>
    Left = 573
    Top = 9
  end
  object dsSales: TDataSource
    DataSet = zSales
    Left = 611
    Top = 1
  end
end
