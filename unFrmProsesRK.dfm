object frmProsesRK: TfrmProsesRK
  Left = 533
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Proses Komplain Customer'
  ClientHeight = 644
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 18
    Top = 18
    Width = 216
    Height = 20
    Caption = 'Proses Komplain Customer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object scrollBox: TScrollBox
    Left = 0
    Top = 57
    Width = 622
    Height = 587
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label5: TLabel
      Left = 445
      Top = 125
      Width = 85
      Height = 13
      Caption = 'Diberikan Kepada'
    end
    object GroupBox3: TGroupBox
      Left = 15
      Top = 879
      Width = 571
      Height = 48
      Caption = ' Approval '
      TabOrder = 34
    end
    object cxeNoFRK: TcxTextEdit
      Tag = 1
      Left = 108
      Top = 22
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 6
      Width = 171
    end
    object cxeDibuatOleh: TcxTextEdit
      Tag = 1
      Left = 108
      Top = 47
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 7
      Width = 171
    end
    object cxeTanggal: TcxTextEdit
      Tag = 1
      Left = 108
      Top = 123
      TabStop = False
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 8
      Width = 108
    end
    object cxeStatus: TcxTextEdit
      Tag = 1
      Left = 414
      Top = 22
      TabStop = False
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 9
      Width = 171
    end
    object cxTglTargetSelesai: TcxDateEdit
      Left = 414
      Top = 72
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 10
      Width = 125
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 154
      Width = 571
      Height = 143
      Caption = ' Data Customer '
      TabOrder = 11
      object Label10: TLabel
        Left = 10
        Top = 20
        Width = 35
        Height = 13
        Caption = 'No. SO'
      end
      object Label11: TLabel
        Left = 10
        Top = 70
        Width = 75
        Height = 13
        Caption = 'Nama Customer'
      end
      object Label12: TLabel
        Left = 10
        Top = 93
        Width = 70
        Height = 13
        Caption = 'Lokasi Pasang'
      end
      object Label13: TLabel
        Left = 10
        Top = 118
        Width = 36
        Height = 13
        Caption = 'Tgl. SO'
      end
      object Label14: TLabel
        Left = 10
        Top = 45
        Width = 72
        Height = 13
        Caption = 'Kode Customer'
      end
      object Label3: TLabel
        Left = 235
        Top = 118
        Width = 73
        Height = 13
        Caption = 'Tgl. Pengiriman'
      end
      object cxeNoSO: TcxTextEdit
        Tag = 1
        Left = 103
        Top = 15
        TabStop = False
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 0
        Width = 171
      end
      object cxeNamaPerusahaan: TcxTextEdit
        Tag = 1
        Left = 103
        Top = 65
        TabStop = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 1
        Width = 443
      end
      object cxeLokasiPasang: TcxTextEdit
        Tag = 1
        Left = 103
        Top = 90
        TabStop = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 2
        Width = 443
      end
      object cxtKodeCust: TcxTextEdit
        Tag = 1
        Left = 103
        Top = 40
        TabStop = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 3
        Width = 118
      end
      object cxdTglPembelian: TcxDateEdit
        Left = 103
        Top = 115
        TabStop = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 4
        Width = 125
      end
      object cxdTglPengiriman: TcxDateEdit
        Left = 316
        Top = 115
        TabStop = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 5
        Width = 125
      end
    end
    object GroupBox2: TGroupBox
      Left = 15
      Top = 305
      Width = 571
      Height = 73
      Caption = ' Data Barang '
      TabOrder = 12
      object Label16: TLabel
        Left = 10
        Top = 20
        Width = 65
        Height = 13
        Caption = 'Nama Barang'
      end
      object Label17: TLabel
        Left = 155
        Top = 18
        Width = 32
        Height = 13
        Caption = 'Warna'
        Visible = False
      end
      object Label18: TLabel
        Left = 10
        Top = 44
        Width = 47
        Height = 13
        Caption = 'Jml. Order'
      end
      object Label19: TLabel
        Left = 230
        Top = 44
        Width = 64
        Height = 13
        Caption = 'Jml. Komplain'
      end
      object cxeNamaBrg: TcxTextEdit
        Tag = 1
        Left = 103
        Top = 15
        TabStop = False
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 0
        Width = 443
      end
      object cxtWarna: TcxTextEdit
        Tag = 1
        Left = 248
        Top = 15
        TabStop = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 1
        Visible = False
        Width = 343
      end
      object cxsJmlOrder: TcxSpinEdit
        Left = 103
        Top = 41
        TabStop = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,##0.00'
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 2
        Width = 113
      end
      object cxtKodeBrg: TcxTextEdit
        Tag = 1
        Left = 350
        Top = 15
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 3
        Visible = False
        Width = 166
      end
      object cxsJmlKomplain: TcxSpinEdit
        Left = 303
        Top = 41
        TabStop = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,##0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 4
        Width = 113
      end
    end
    object btnSimpan: TButton
      Left = 15
      Top = 1207
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 13
      OnClick = btnSimpanClick
    end
    object btnBatal: TButton
      Left = 93
      Top = 1207
      Width = 75
      Height = 25
      Caption = '&Batal'
      TabOrder = 14
      OnClick = btnBatalClick
    end
    object cxmDeskKomplain: TcxMemo
      Left = 15
      Top = 404
      TabStop = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 15
      Height = 90
      Width = 571
    end
    object cxCmbKategori: TcxComboBox
      Left = 414
      Top = 47
      TabStop = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 16
      Width = 170
    end
    object cxLUDiberikanKpd: TcxLookupComboBox
      Left = 108
      Top = 72
      TabStop = False
      Properties.KeyFieldNames = 'namauser'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'namauser'
        end
        item
          Caption = 'Bagian'
          FieldName = 'bagian'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsUserApp
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 17
      Width = 171
    end
    object cxtEmail: TcxTextEdit
      Tag = 1
      Left = 108
      Top = 97
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 18
      Width = 293
    end
    object cxtBagian: TcxTextEdit
      Tag = 1
      Left = 239
      Top = 122
      Style.Color = clMoneyGreen
      TabOrder = 19
      Visible = False
      Width = 171
    end
    object cxmVerifikasi: TcxMemo
      Left = 15
      Top = 519
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 0
      Height = 90
      Width = 571
    end
    object cxmTindakan: TcxMemo
      Left = 15
      Top = 634
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      Height = 90
      Width = 571
    end
    object Panel1: TPanel
      Left = 588
      Top = 884
      Width = 11
      Height = 358
      BevelOuter = bvNone
      TabOrder = 20
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 25
      Caption = 'Nomor'
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 49
      Caption = 'Dibuat Oleh'
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 74
      Caption = 'Diberikan Kepada'
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 99
      Caption = 'Email'
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 124
      Caption = 'Tanggal'
    end
    object cxLabel6: TcxLabel
      Left = 315
      Top = 24
      Caption = 'Status'
    end
    object cxLabel7: TcxLabel
      Left = 315
      Top = 49
      Caption = 'Kategori'
    end
    object cxLabel8: TcxLabel
      Left = 315
      Top = 74
      Caption = 'Tgl. Target Selesai'
    end
    object cxLabel9: TcxLabel
      Left = 14
      Top = 383
      Caption = 'Deskripsi Komplain'
    end
    object cxLabel10: TcxLabel
      Left = 14
      Top = 500
      Caption = 'Verifikasi Analisa Produk'
    end
    object cxLabel11: TcxLabel
      Left = 14
      Top = 614
      Caption = 'Tindakan Perbaikan'
    end
    object btnLihatFoto: TButton
      Left = 15
      Top = 849
      Width = 196
      Height = 25
      Caption = 'Lihat Foto'
      TabOrder = 21
      OnClick = btnLihatFotoClick
    end
    object grpSmg: TGroupBox
      Left = 15
      Top = 935
      Width = 571
      Height = 266
      Caption = ' SMG '
      TabOrder = 22
      object GroupBox4: TGroupBox
        Left = 15
        Top = 91
        Width = 285
        Height = 68
        Caption = ' Barang diganti ?        '
        TabOrder = 12
        object btnSOPengganti: TButton
          Left = 254
          Top = 13
          Width = 22
          Height = 21
          Caption = '...'
          TabOrder = 0
          OnClick = btnSOPenggantiClick
        end
      end
      object cxLabel12: TcxLabel
        Left = 14
        Top = 14
        Caption = 'Tindak Lanjut Komplain Customer'
      end
      object cxmTindakLanjut: TcxMemo
        Left = 15
        Top = 33
        Properties.CharCase = ecUpperCase
        Style.BorderStyle = ebsFlat
        TabOrder = 2
        Height = 50
        Width = 541
      end
      object cxLabel13: TcxLabel
        Left = 23
        Top = 106
        Caption = 'No. SO Pengganti Retur'
      end
      object cxtNoSOGanti: TcxTextEdit
        Left = 146
        Top = 104
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 3
        Width = 121
      end
      object cxLabel14: TcxLabel
        Left = 23
        Top = 130
        Caption = 'No. SJ Pengganti Retur'
      end
      object cxtNoSJGanti: TcxTextEdit
        Left = 146
        Top = 128
        Properties.CharCase = ecUpperCase
        Style.BorderStyle = ebsFlat
        TabOrder = 4
        Width = 121
      end
      object cxLabel15: TcxLabel
        Left = 13
        Top = 162
        Caption = 'Catatan / Penjelasan Tambahan'
      end
      object cxmCatatan: TcxMemo
        Left = 15
        Top = 181
        Properties.CharCase = ecUpperCase
        Style.BorderStyle = ebsFlat
        TabOrder = 5
        Height = 50
        Width = 316
      end
      object cxLabel16: TcxLabel
        Left = 14
        Top = 237
        Caption = 'Tanggal Keputusan tindak lanjut komplain customer'
      end
      object cxdTglKeputusan: TcxDateEdit
        Left = 269
        Top = 235
        Properties.DateButtons = [btnClear]
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Style.BorderStyle = ebsFlat
        Style.Color = clMoneyGreen
        TabOrder = 0
        Width = 125
      end
      object cxLabel17: TcxLabel
        Left = 367
        Top = 107
        Caption = 'Status'
        Visible = False
      end
      object cxCmbStatus: TcxComboBox
        Left = 411
        Top = 103
        Properties.DropDownListStyle = lsEditFixedList
        Style.BorderStyle = ebsFlat
        TabOrder = 1
        Visible = False
        Width = 121
      end
      object chkBrgDiganti: TCheckBox
        Left = 26
        Top = 88
        Width = 97
        Height = 17
        Caption = 'Barang Diganti ? '
        TabOrder = 13
        OnClick = chkBrgDigantiClick
      end
    end
    object chkAppMgrTerkait: TCheckBox
      Left = 27
      Top = 898
      Width = 183
      Height = 17
      Caption = 'Approval Mgr. Terkait'
      TabOrder = 2
      Visible = False
    end
    object chkAppMgrQAC: TCheckBox
      Left = 245
      Top = 893
      Width = 183
      Height = 17
      Caption = 'Approval Mgr. QAC'
      TabOrder = 5
      Visible = False
    end
    object chkAppBDDir: TCheckBox
      Left = 300
      Top = 888
      Width = 251
      Height = 17
      Caption = 'Approval Op. && Buss. Dev. Director'
      TabOrder = 3
      Visible = False
      OnClick = chkAppBDDirClick
    end
    object chkAppSalesDir: TCheckBox
      Left = 300
      Top = 908
      Width = 251
      Height = 17
      Caption = 'Approval SA Director'
      TabOrder = 4
      Visible = False
    end
    object cxtMgrDept: TcxTextEdit
      Tag = 1
      Left = 244
      Top = 127
      Style.Color = clMoneyGreen
      TabOrder = 35
      Visible = False
      Width = 171
    end
    object cxtMgrEmail: TcxTextEdit
      Tag = 1
      Left = 249
      Top = 132
      Style.Color = clMoneyGreen
      TabOrder = 36
      Visible = False
      Width = 171
    end
    object cxLabel18: TcxLabel
      Left = 219
      Top = 853
      Caption = 'Jumlah Foto : '
    end
    object chkNotApp: TCheckBox
      Left = 372
      Top = 898
      Width = 183
      Height = 17
      Caption = 'Tidak Approval'
      TabOrder = 38
      Visible = False
      OnClick = chkNotAppClick
    end
    object cxLabel19: TcxLabel
      Left = 14
      Top = 729
      Caption = 'Tindakan Perbaikan Internal'
    end
    object cxmTindakanInt: TcxMemo
      Left = 15
      Top = 749
      Properties.CharCase = ecUpperCase
      Style.BorderStyle = ebsFlat
      TabOrder = 40
      Height = 90
      Width = 571
    end
  end
  object zrq: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT namauser, bagian, email FROM tbl_userapp ORDER BY namause' +
        'r')
    Params = <>
    Left = 365
    Top = 20
  end
  object dsUserApp: TDataSource
    DataSet = zrq
    Left = 395
    Top = 20
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 475
    Top = 170
  end
end
