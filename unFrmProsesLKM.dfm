inherited frmProsesLKM: TfrmProsesLKM
  Left = 342
  Top = 42
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Edit LKM'
  ClientHeight = 604
  ClientWidth = 887
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 887
    Height = 51
    BevelOuter = bvNone
    inherited lblJudul: TLabel
      Top = 15
      Width = 71
      Caption = 'Edit LKM'
    end
  end
  inherited pnlTengah: TPanel
    Top = 51
    Width = 887
    Height = 480
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 885
      Height = 478
      HorzScrollBar.Range = 896
      VertScrollBar.Range = 710
      Align = alClient
      AutoScroll = False
      TabOrder = 0
      object btnCariSO: TButton
        Left = 377
        Top = 60
        Width = 23
        Height = 21
        Caption = '...'
        TabOrder = 70
        OnClick = btnCariSOClick
      end
      object cxtTujuan: TcxTextEdit
        Tag = 1
        Left = 674
        Top = 491
        Properties.CharCase = ecUpperCase
        TabOrder = 10
        Visible = False
        Width = 210
      end
      object cxLabel4: TcxLabel
        Left = 606
        Top = 212
        Caption = 'PIC '
        Transparent = True
        Visible = False
      end
      object cxLabel5: TcxLabel
        Left = 11
        Top = 287
        Caption = 'Dept. Tujuan'
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 11
        Top = 312
        AutoSize = False
        Caption = 'Deskripsi Ketidaksesuaian && Tindak Lanjut Ketidaksesuaian'
        Properties.WordWrap = True
        Transparent = True
        Height = 60
        Width = 108
      end
      object cxlTujuanDept: TcxLookupComboBox
        Left = 104
        Top = 285
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'bagian'
        Properties.ListColumns = <
          item
            FieldName = 'Bagian'
          end
          item
            FieldName = 'Manager'
          end
          item
            FieldName = 'Email'
          end>
        Properties.ListSource = dsBagian
        Properties.OnEditValueChanged = cxlTujuanPropertiesEditValueChanged
        TabOrder = 12
        Width = 147
      end
      object cxLabel9: TcxLabel
        Left = 11
        Top = 635
        Caption = 'Dibuat Oleh'
        Transparent = True
      end
      object cxtDibuatOleh: TcxTextEdit
        Tag = 1
        Left = 105
        Top = 633
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 18
        Width = 98
      end
      object cxLabel11: TcxLabel
        Left = 11
        Top = 62
        Caption = 'No. SPK'
        Transparent = True
      end
      object cxtNoSPK: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 60
        Properties.ReadOnly = True
        TabOrder = 19
        Width = 98
      end
      object cxLabel12: TcxLabel
        Left = 11
        Top = 660
        Caption = 'Tgl. Input '
        Transparent = True
      end
      object cxtTglInput: TcxTextEdit
        Tag = 1
        Left = 105
        Top = 658
        Style.Color = clMoneyGreen
        TabOrder = 21
        Width = 98
      end
      object cxLabel13: TcxLabel
        Left = 11
        Top = 685
        Caption = 'User Input'
        Transparent = True
      end
      object cxtJamInput: TcxTextEdit
        Tag = 1
        Left = 206
        Top = 608
        Style.Color = clMoneyGreen
        TabOrder = 22
        Visible = False
        Width = 80
      end
      object cxtUserInput: TcxTextEdit
        Tag = 1
        Left = 105
        Top = 683
        Style.Color = clMoneyGreen
        TabOrder = 24
        Width = 98
      end
      object cxLabel14: TcxLabel
        Left = 11
        Top = 87
        Caption = 'Kode Barang'
        Transparent = True
      end
      object cxtKodeBrg: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 85
        Properties.ReadOnly = True
        TabOrder = 25
        Width = 98
      end
      object cxtDeskripsi: TcxTextEdit
        Left = 234
        Top = 85
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 27
        Width = 514
      end
      object cxLabel15: TcxLabel
        Left = 11
        Top = 137
        Caption = 'Qty / Satuan'
        Transparent = True
      end
      object cxtSatuan: TcxTextEdit
        Tag = 1
        Left = 206
        Top = 135
        TabOrder = 29
        Width = 98
      end
      object cxmDeskKS: TcxMemo
        Tag = 1
        Left = 104
        Top = 310
        Properties.CharCase = ecUpperCase
        TabOrder = 13
        Height = 69
        Width = 503
      end
      object cxsQty: TcxSpinEdit
        Tag = 1
        Left = 105
        Top = 135
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 28
        Width = 98
      end
      object btnCariNoSPK_Retur: TButton
        Left = 206
        Top = 60
        Width = 23
        Height = 21
        Caption = '...'
        TabOrder = 20
        OnClick = btnCariNoSPK_ReturClick
      end
      object btnCariKodeBrg: TButton
        Left = 206
        Top = 85
        Width = 23
        Height = 21
        Caption = '...'
        TabOrder = 26
        OnClick = btnCariKodeBrgClick
      end
      object cxLabel8: TcxLabel
        Left = 11
        Top = 610
        Caption = 'Status'
        Transparent = True
      end
      object cxtStatus: TcxTextEdit
        Tag = 1
        Left = 105
        Top = 608
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 17
        Width = 98
      end
      object cxlSupp: TcxLookupComboBox
        Left = 129
        Top = 160
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
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsSupp
        TabOrder = 2
        Width = 385
      end
      object cxLabel16: TcxLabel
        Left = 11
        Top = 162
        Caption = 'Supplier'
        Transparent = True
      end
      object cxLabel17: TcxLabel
        Left = 11
        Top = 187
        Caption = 'Customer'
        Transparent = True
      end
      object cxlCust: TcxLookupComboBox
        Left = 129
        Top = 185
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'kode'
        Properties.ListColumns = <
          item
            Caption = 'Nama Customer'
            FieldName = 'nama'
          end
          item
            Caption = 'Kode'
            FieldName = 'kode'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsCust
        TabOrder = 3
        Width = 385
      end
      object cxLabel18: TcxLabel
        Left = 11
        Top = 212
        Caption = 'Shift'
        Transparent = True
      end
      object cxtShift: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 210
        Properties.CharCase = ecUpperCase
        TabOrder = 4
        Width = 115
      end
      object cxtNoMesin: TcxTextEdit
        Tag = 1
        Left = 283
        Top = 210
        Properties.CharCase = ecUpperCase
        TabOrder = 5
        Width = 115
      end
      object cxLabel19: TcxLabel
        Left = 11
        Top = 237
        Caption = 'Kode Produksi'
        Transparent = True
      end
      object cxtKodeProduksi: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 235
        Properties.CharCase = ecUpperCase
        TabOrder = 6
        Width = 145
      end
      object cxLabel20: TcxLabel
        Left = 641
        Top = 567
        Caption = 'No. Tag Produksi'
        Visible = False
      end
      object cxtTagProduksi: TcxTextEdit
        Tag = 1
        Left = 734
        Top = 565
        Properties.CharCase = ecUpperCase
        TabOrder = 7
        Visible = False
        Width = 145
      end
      object cxLabel10: TcxLabel
        Left = 11
        Top = 262
        Caption = 'Alokasi Barang'
        Transparent = True
      end
      object cxtAlokasiBarang: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 260
        Properties.CharCase = ecUpperCase
        TabOrder = 8
        Width = 145
      end
      object cxLabel21: TcxLabel
        Left = 256
        Top = 237
        Caption = 'Jenis Ketidaksesuaian'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 11
        Top = 37
        Caption = 'No. LKM '
        Transparent = True
      end
      object cxtNoLKM: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 35
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 174
      end
      object cxLabel7: TcxLabel
        Left = 286
        Top = 37
        Caption = 'Tanggal Terbit'
      end
      object cxdTglLKM: TcxDateEdit
        Left = 367
        Top = 35
        TabOrder = 1
        Width = 121
      end
      object cxLabel22: TcxLabel
        Left = 11
        Top = 385
        AutoSize = False
        Caption = 'Akar Masalah'
        Properties.WordWrap = True
        Transparent = True
        Height = 60
        Width = 108
      end
      object cxmAkarMasalah: TcxMemo
        Tag = 2
        Left = 103
        Top = 383
        Properties.CharCase = ecUpperCase
        TabOrder = 14
        Height = 69
        Width = 503
      end
      object cxLabel23: TcxLabel
        Left = 226
        Top = 212
        Caption = 'No. Mesin'
      end
      object cxCmbJenis: TcxComboBox
        Left = 373
        Top = 235
        Properties.DropDownListStyle = lsEditFixedList
        Properties.OnChange = cxCmbJenisPropertiesChange
        TabOrder = 9
        Width = 426
      end
      object cxtJenisLainnya: TcxTextEdit
        Left = 373
        Top = 260
        TabOrder = 11
        Width = 426
      end
      object cxLabel2: TcxLabel
        Left = 11
        Top = 445
        AutoSize = False
        Caption = 'Keterangan Tambahan'
        Properties.WordWrap = True
        Transparent = True
        Height = 33
        Width = 108
      end
      object cxCmbKetTambahan: TcxComboBox
        Tag = 3
        Left = 104
        Top = 456
        Properties.DropDownListStyle = lsEditFixedList
        Properties.OnChange = cxCmbJenisPropertiesChange
        TabOrder = 15
        OnClick = cxCmbKetTambahanClick
        Width = 426
      end
      object cxmKetTambahan: TcxMemo
        Tag = 3
        Left = 104
        Top = 508
        Lines.Strings = (
          '')
        Properties.CharCase = ecUpperCase
        TabOrder = 16
        Height = 93
        Width = 503
      end
      object cxLabel24: TcxLabel
        Left = 610
        Top = 383
        AutoSize = False
        Caption = '( Diisi oleh Departemen Terkait )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object cxLabel26: TcxLabel
        Left = 610
        Top = 315
        AutoSize = False
        Caption = '( Diisi oleh min staff QA )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object cxLabel27: TcxLabel
        Left = 610
        Top = 455
        AutoSize = False
        Caption = '( Diisi oleh Manajemen )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object Panel1: TPanel
        Left = 765
        Top = 583
        Width = 131
        Height = 111
        BevelOuter = bvNone
        TabOrder = 23
      end
      object cxChkSupp: TcxCheckBox
        Left = 103
        Top = 161
        TabOrder = 30
        OnClick = cxChkSuppClick
        Width = 21
      end
      object cxChkCust: TcxCheckBox
        Left = 103
        Top = 184
        TabOrder = 31
        OnClick = cxChkCustClick
        Width = 21
      end
      object cxChkAppLKM: TcxCheckBox
        Left = 99
        Top = 13
        Caption = 'Approval'
        TabOrder = 32
        Width = 172
      end
      object cxlUser: TcxLookupComboBox
        Left = 734
        Top = 590
        Properties.KeyFieldNames = 'nama'
        Properties.ListColumns = <
          item
            Caption = 'Nama'
            FieldName = 'nama'
          end
          item
            Caption = 'Dept'
            FieldName = 'user_dept'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsUser
        Properties.OnEditValueChanged = cxlUserPropertiesEditValueChanged
        TabOrder = 33
        Visible = False
        Width = 200
      end
      object cxtDept: TcxTextEdit
        Tag = 1
        Left = 674
        Top = 540
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 34
        Visible = False
        Width = 115
      end
      object cxLabel1: TcxLabel
        Left = 234
        Top = 62
        Caption = 'No. SO'
        Transparent = True
      end
      object cxtNoSO: TcxTextEdit
        Tag = 1
        Left = 276
        Top = 60
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 35
        Width = 98
      end
      object GroupBox1: TGroupBox
        Left = 215
        Top = 608
        Width = 186
        Height = 97
        Caption = ' Gambar '
        TabOrder = 36
        object btnTmbhImage: TButton
          Left = 10
          Top = 60
          Width = 101
          Height = 25
          Caption = 'Tambah Image'
          TabOrder = 0
          OnClick = btnTmbhImageClick
        end
        object cxLabel25: TcxLabel
          Left = 13
          Top = 28
          Caption = 'Jumlah Gambar : '
          Transparent = True
        end
      end
      object cxtnamamanager: TcxTextEdit
        Tag = 1
        Left = 259
        Top = 285
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 37
        Width = 112
      end
      object cxtemail: TcxTextEdit
        Tag = 1
        Left = 375
        Top = 285
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 38
        Width = 231
      end
      object cxtkategoribrg: TcxTextEdit
        Tag = 1
        Left = 675
        Top = 515
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        TabOrder = 39
        Visible = False
        Width = 129
      end
      object cxlNoRetur: TcxLabel
        Left = 11
        Top = 112
        Caption = 'No. Retur'
        Transparent = True
      end
      object cxtNoRetur: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 110
        Properties.ReadOnly = True
        TabOrder = 41
        Width = 98
      end
      object btnCariNoRetur: TButton
        Left = 206
        Top = 110
        Width = 23
        Height = 21
        Caption = '...'
        TabOrder = 42
        OnClick = btnCariNoReturClick
      end
      object pnlDetailSPK: TPanel
        Left = 235
        Top = 110
        Width = 431
        Height = 107
        TabOrder = 40
        Visible = False
        OnExit = pnlDetailSPKExit
        object btnCloseDetSPK: TButton
          Left = 406
          Top = 4
          Width = 21
          Height = 20
          Caption = 'X'
          TabOrder = 0
          OnClick = btnCloseDetSPKClick
        end
        object cxLabel28: TcxLabel
          Left = 11
          Top = 17
          Caption = 'Hasil Produksi'
          Transparent = True
        end
        object cxLabel29: TcxLabel
          Left = 11
          Top = 41
          Caption = 'Jml. Serah Terima'
          Transparent = True
        end
        object cxsHslProd: TcxSpinEdit
          Tag = 1
          Left = 104
          Top = 15
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Style.Color = clMoneyGreen
          TabOrder = 3
          Width = 72
        end
        object cxsSerTem: TcxSpinEdit
          Tag = 1
          Left = 104
          Top = 39
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Style.Color = clMoneyGreen
          TabOrder = 4
          Width = 72
        end
        object cxLabel30: TcxLabel
          Left = 182
          Top = 17
          Caption = 'Jml. Karantina'
          Transparent = True
        end
        object cxLabel31: TcxLabel
          Left = 182
          Top = 41
          Caption = 'Jml. Karantina'
          Transparent = True
        end
        object cxsJmlKar1: TcxSpinEdit
          Tag = 1
          Left = 259
          Top = 15
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 7
          Width = 72
        end
        object cxsJmlKar2: TcxSpinEdit
          Tag = 1
          Left = 259
          Top = 39
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 8
          Width = 72
        end
        object btnSimpanDet: TButton
          Left = 12
          Top = 70
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 9
          OnClick = btnSimpanDetClick
        end
        object btnBatalDet: TButton
          Left = 89
          Top = 70
          Width = 75
          Height = 25
          Caption = 'Batal'
          TabOrder = 10
          OnClick = btnBatalDetClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 405
        Top = 608
        Width = 186
        Height = 97
        Caption = ' Excel '
        TabOrder = 71
        object btnTambahFile: TButton
          Left = 10
          Top = 60
          Width = 76
          Height = 25
          Caption = 'Tambah File'
          TabOrder = 0
          OnClick = btnTambahFileClick
        end
        object cxLabel32: TcxLabel
          Left = 13
          Top = 28
          Caption = 'Jumlah File : '
          Transparent = True
        end
        object cxtNamaFile: TcxTextEdit
          Left = 80
          Top = 30
          TabOrder = 2
          Visible = False
          Width = 121
        end
        object btnLihatFile: TButton
          Left = 90
          Top = 60
          Width = 76
          Height = 25
          Caption = 'Lihat File'
          TabOrder = 3
          OnClick = btnLihatFileClick
        end
      end
      object cxlBarang: TcxLookupComboBox
        Left = 734
        Top = 630
        Enabled = False
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
          end
          item
            Caption = 'Stok'
            FieldName = 'stok'
          end>
        Properties.ListSource = dsBarang
        Properties.ReadOnly = False
        Properties.OnEditValueChanged = cxlTujuanPropertiesEditValueChanged
        TabOrder = 72
        Visible = False
        Width = 127
      end
      object cxLabel33: TcxLabel
        Left = 641
        Top = 625
        AutoSize = False
        Caption = 'Nama Barang Hasil'
        Properties.WordWrap = True
        Transparent = True
        Visible = False
        Height = 33
        Width = 80
      end
      object cxLabel35: TcxLabel
        Left = 11
        Top = 483
        AutoSize = False
        Caption = 'Input Qty Giling'
        Properties.WordWrap = True
        Transparent = True
        Height = 33
        Width = 80
      end
      object cxsQtyGiling: TcxSpinEdit
        Tag = 1
        Left = 104
        Top = 480
        Enabled = False
        Properties.DisplayFormat = '#,#0.00'
        Properties.ValueType = vtFloat
        TabOrder = 75
        Width = 98
      end
      object cxLabel36: TcxLabel
        Left = 611
        Top = 661
        AutoSize = False
        Caption = 'Brg hasil jadi setelah konversi'
        Properties.WordWrap = True
        Transparent = True
        Visible = False
        Height = 23
        Width = 150
      end
      object cxsBrgKonversi: TcxSpinEdit
        Tag = 1
        Left = 764
        Top = 660
        Properties.DisplayFormat = '#,#0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        TabOrder = 77
        Visible = False
        Width = 98
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 531
    Width = 887
    inherited btnKeluar: TButton
      Left = 407
      TabOrder = 3
      Visible = False
    end
    inherited btnBaru: TButton
      TabOrder = 5
    end
    inherited btnEdit: TButton
      TabOrder = 6
    end
    inherited btnHapus: TButton
      TabOrder = 7
    end
    inherited btnBatal: TButton
      Left = 485
      Top = 25
      TabOrder = 4
    end
    inherited btnSimpan: TButton
      Left = 330
      TabOrder = 2
      Visible = False
    end
    object btnSimpanLKM: TButton
      Left = 14
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 0
      OnClick = btnSimpanLKMClick
    end
    object btnKeluarLKM: TButton
      Left = 94
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 1
      OnClick = btnKeluarLKMClick
    end
  end
  object zqrSupp: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_supplier WHERE f_aktif = 1 '
      'ORDER BY nama')
    Params = <>
    Left = 791
    Top = 77
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer WHERE f_aktif = 1 '
      'ORDER BY nama')
    Params = <>
    Left = 791
    Top = 107
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 821
    Top = 77
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 821
    Top = 107
  end
  object zqrBagian: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      
        'SELECT user_dept as bagian, nama as manager, ucase(email) as ema' +
        'il FROM tbl_user where jabatan='#39'MANAGER'#39' '
      'ORDER BY nama')
    Params = <>
    Left = 791
    Top = 137
  end
  object dsBagian: TDataSource
    DataSet = zqrBagian
    Left = 821
    Top = 137
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 825
    Top = 200
  end
  object zqrUser: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama, user_dept, email FROM tbl_user ORDER BY nama')
    Params = <>
    Left = 791
    Top = 167
  end
  object dsUser: TDataSource
    DataSet = zqrUser
    Left = 821
    Top = 167
  end
  object OpenDlg: TOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 275
    Top = 194
  end
  object zqrBarang: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select kode,deskripsi,stok from tbl_barang order by kode')
    Params = <>
    Left = 796
    Top = 232
  end
  object dsBarang: TDataSource
    DataSet = zqrBarang
    Left = 826
    Top = 232
  end
end
