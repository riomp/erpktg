object frmCCR: TfrmCCR
  Left = 366
  Top = 19
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Komplain Customer'
  ClientHeight = 668
  ClientWidth = 594
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
  object Label3: TLabel
    Left = 15
    Top = 37
    Width = 41
    Height = 13
    Caption = 'No. FRK'
  end
  object Label4: TLabel
    Left = 15
    Top = 62
    Width = 56
    Height = 13
    Caption = 'Dibuat Oleh'
  end
  object Label5: TLabel
    Left = 15
    Top = 87
    Width = 85
    Height = 13
    Caption = 'Diberikan Kepada'
  end
  object Label6: TLabel
    Left = 15
    Top = 112
    Width = 39
    Height = 13
    Caption = 'Tanggal'
  end
  object Label7: TLabel
    Left = 315
    Top = 37
    Width = 30
    Height = 13
    Caption = 'Status'
  end
  object Label8: TLabel
    Left = 315
    Top = 62
    Width = 39
    Height = 13
    Caption = 'Kategori'
  end
  object Label9: TLabel
    Left = 435
    Top = 102
    Width = 89
    Height = 13
    Caption = 'Tgl. Target Selesai'
    Visible = False
  end
  object Label20: TLabel
    Left = 15
    Top = 539
    Width = 139
    Height = 13
    Caption = 'Deskripsi Komplain / Keluhan'
  end
  object Label21: TLabel
    Left = 440
    Top = 152
    Width = 25
    Height = 13
    Caption = 'Email'
    Visible = False
  end
  object lblJmlImage: TLabel
    Left = 278
    Top = 141
    Width = 74
    Height = 13
    Caption = 'Jumlah Image : '
  end
  object Label2: TLabel
    Left = 15
    Top = 7
    Width = 156
    Height = 20
    Caption = 'Komplain Customer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 440
    Top = 127
    Width = 33
    Height = 13
    Caption = 'Bagian'
    Visible = False
  end
  object cxeNoFRK: TcxTextEdit
    Tag = 1
    Left = 108
    Top = 34
    TabStop = False
    Properties.ReadOnly = True
    Style.BorderStyle = ebsFlat
    Style.Color = clMoneyGreen
    TabOrder = 0
    Width = 171
  end
  object cxeDibuatOleh: TcxTextEdit
    Tag = 1
    Left = 108
    Top = 59
    TabStop = False
    Properties.ReadOnly = True
    Style.BorderStyle = ebsFlat
    Style.Color = clMoneyGreen
    TabOrder = 2
    Width = 171
  end
  object cxeTanggal: TcxTextEdit
    Tag = 1
    Left = 108
    Top = 109
    TabStop = False
    Style.BorderStyle = ebsFlat
    Style.Color = clMoneyGreen
    TabOrder = 8
    Width = 108
  end
  object cxeStatus: TcxTextEdit
    Tag = 1
    Left = 414
    Top = 34
    TabStop = False
    Style.BorderStyle = ebsFlat
    Style.Color = clMoneyGreen
    TabOrder = 1
    Width = 171
  end
  object cxTglTargetSelesai: TcxDateEdit
    Left = 534
    Top = 99
    Style.BorderStyle = ebsFlat
    TabOrder = 5
    Visible = False
    Width = 125
  end
  object GroupBox1: TGroupBox
    Left = 15
    Top = 223
    Width = 571
    Height = 194
    Caption = ' Data Customer '
    TabOrder = 10
    object Label10: TLabel
      Left = 10
      Top = 16
      Width = 35
      Height = 13
      Caption = 'No. SO'
    end
    object Label11: TLabel
      Left = 10
      Top = 66
      Width = 75
      Height = 13
      Caption = 'Nama Customer'
    end
    object Label12: TLabel
      Left = 10
      Top = 89
      Width = 70
      Height = 13
      Caption = 'Lokasi Pasang'
    end
    object Label13: TLabel
      Left = 10
      Top = 114
      Width = 36
      Height = 13
      Caption = 'Tgl. SO'
    end
    object Label14: TLabel
      Left = 10
      Top = 41
      Width = 32
      Height = 13
      Caption = 'No. SJ'
    end
    object Label15: TLabel
      Left = 235
      Top = 114
      Width = 64
      Height = 13
      Caption = 'Jml. Komplain'
      Visible = False
    end
    object Label22: TLabel
      Left = 10
      Top = 140
      Width = 73
      Height = 13
      Caption = 'Tgl. Pengiriman'
    end
    object Label25: TLabel
      Left = 282
      Top = 41
      Width = 41
      Height = 13
      Caption = 'No. SPK'
    end
    object Label26: TLabel
      Left = 234
      Top = 140
      Width = 46
      Height = 13
      Caption = 'Lamp. CP'
    end
    object Label27: TLabel
      Left = 10
      Top = 164
      Width = 73
      Height = 13
      Caption = 'Aplikasi Produk'
    end
    object cxeNoSO: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 11
      TabStop = False
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 0
      Width = 171
    end
    object btnCariSO: TButton
      Left = 276
      Top = 11
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 1
      TabStop = False
      OnClick = btnCariSOClick
    end
    object cxeNamaPerusahaan: TcxTextEdit
      Tag = 1
      Left = 248
      Top = 61
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 7
      Width = 298
    end
    object cxeLokasiPasang: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 86
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 8
      Width = 443
    end
    object cxtKodeCust: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 60
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 4
      Width = 118
    end
    object cxdTglPembelian: TcxDateEdit
      Left = 103
      Top = 111
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 9
      Width = 125
    end
    object cxsJmlKomplain: TcxSpinEdit
      Left = 305
      Top = 111
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.ReadOnly = True
      Properties.SpinButtons.Visible = False
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 10
      Visible = False
      Width = 71
    end
    object chkPeletan: TCheckBox
      Left = 495
      Top = 8
      Width = 66
      Height = 17
      Caption = 'Peletan'
      TabOrder = 2
      Visible = False
    end
    object cxdTglPengiriman: TcxDateEdit
      Left = 103
      Top = 137
      TabStop = False
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 11
      Width = 125
    end
    object chkManual: TCheckBox
      Left = 302
      Top = 14
      Width = 97
      Height = 17
      Caption = 'Input Manual'
      TabOrder = 3
      OnClick = chkManualClick
    end
    object btnCariCust: TButton
      Left = 223
      Top = 60
      Width = 20
      Height = 21
      Caption = '...'
      TabOrder = 5
      TabStop = False
      OnClick = btnCariCustClick
    end
    object cxtNoPO: TcxTextEdit
      Tag = 1
      Left = 384
      Top = 116
      TabStop = False
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 6
      Visible = False
      Width = 171
    end
    object cxtSJ: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 38
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 12
      Width = 170
    end
    object cxtSPK: TcxTextEdit
      Tag = 1
      Left = 327
      Top = 38
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 13
      Width = 218
    end
    object cxtCP: TcxTextEdit
      Tag = 1
      Left = 303
      Top = 134
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 14
      Width = 218
    end
    object cxtAplikasi: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 158
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 15
      Width = 450
    end
  end
  object GroupBox2: TGroupBox
    Left = 15
    Top = 421
    Width = 571
    Height = 120
    Caption = ' Data Barang '
    TabOrder = 11
    object Label16: TLabel
      Left = 10
      Top = 46
      Width = 65
      Height = 13
      Caption = 'Nama Barang'
    end
    object Label17: TLabel
      Left = 320
      Top = 54
      Width = 32
      Height = 13
      Caption = 'Warna'
      Visible = False
    end
    object Label18: TLabel
      Left = 10
      Top = 70
      Width = 47
      Height = 13
      Caption = 'Jml. Order'
    end
    object Label19: TLabel
      Left = 250
      Top = 74
      Width = 64
      Height = 13
      Caption = 'Jml. Komplain'
      Visible = False
    end
    object Label23: TLabel
      Left = 10
      Top = 95
      Width = 64
      Height = 13
      Caption = 'Jml. Komplain'
    end
    object Label24: TLabel
      Left = 11
      Top = 21
      Width = 62
      Height = 13
      Caption = 'Kode Barang'
    end
    object cxeNamaBrg: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 41
      TabStop = False
      Properties.ReadOnly = True
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 1
      Width = 443
    end
    object cxtWarna: TcxTextEdit
      Tag = 1
      Left = 413
      Top = 42
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.Color = clWindow
      TabOrder = 2
      Visible = False
      Width = 343
    end
    object cxTextEdit8: TcxTextEdit
      Tag = 1
      Left = 343
      Top = 71
      Style.Color = clMoneyGreen
      TabOrder = 4
      Visible = False
      Width = 113
    end
    object cxsJmlOrder: TcxSpinEdit
      Left = 103
      Top = 67
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      Style.BorderStyle = ebsFlat
      Style.Color = clMoneyGreen
      TabOrder = 3
      Width = 113
    end
    object cxtKodeBrg: TcxTextEdit
      Tag = 1
      Left = 103
      Top = 16
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 0
      Width = 103
    end
    object cxsQtyKomplain: TcxSpinEdit
      Left = 103
      Top = 92
      TabStop = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00'
      Properties.EditFormat = '#,##0.00'
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 5
      Width = 113
    end
  end
  object btnSimpan: TButton
    Left = 15
    Top = 638
    Width = 75
    Height = 25
    Caption = '&Simpan'
    TabOrder = 13
    OnClick = btnSimpanClick
  end
  object btnBatal: TButton
    Left = 95
    Top = 638
    Width = 75
    Height = 25
    Caption = '&Batal'
    TabOrder = 14
    OnClick = btnBatalClick
  end
  object cxmDeskKomplain: TcxMemo
    Left = 15
    Top = 556
    Properties.CharCase = ecUpperCase
    Style.BorderStyle = ebsFlat
    TabOrder = 12
    Height = 73
    Width = 571
  end
  object cxCmbKategori: TcxComboBox
    Left = 414
    Top = 59
    Properties.DropDownListStyle = lsEditFixedList
    Properties.OnEditValueChanged = cxCmbKategoriPropertiesEditValueChanged
    Style.BorderStyle = ebsFlat
    TabOrder = 3
    Width = 170
  end
  object cxLUDiberikanKpd: TcxLookupComboBox
    Left = 108
    Top = 84
    Properties.KeyFieldNames = 'bagian'
    Properties.ListColumns = <
      item
        Caption = 'Dept'
        FieldName = 'bagian'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsUserApp
    Properties.OnChange = cxLUDiberikanKpdPropertiesChange
    Style.BorderStyle = ebsFlat
    TabOrder = 4
    Width = 171
  end
  object cxtEmail: TcxTextEdit
    Tag = 1
    Left = 533
    Top = 149
    TabStop = False
    Properties.ReadOnly = True
    Style.BorderStyle = ebsFlat
    Style.Color = clMoneyGreen
    TabOrder = 7
    Visible = False
    Width = 293
  end
  object cxtBagian: TcxTextEdit
    Tag = 1
    Left = 533
    Top = 124
    Style.BorderStyle = ebsFlat
    Style.Color = clMoneyGreen
    TabOrder = 6
    Visible = False
    Width = 171
  end
  object btnTambahPic: TButton
    Left = 108
    Top = 135
    Width = 163
    Height = 25
    Caption = 'Tambah Image'
    TabOrder = 9
    OnClick = btnTambahPicClick
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 168
    Width = 89
    Height = 49
    Caption = 'Pelayanan'
    TabOrder = 15
    object ComboBox1: TComboBox
      Left = 8
      Top = 16
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object GroupBox4: TGroupBox
    Left = 112
    Top = 168
    Width = 89
    Height = 49
    Caption = 'Kualitas'
    TabOrder = 16
    object ComboBox2: TComboBox
      Left = 8
      Top = 16
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object GroupBox5: TGroupBox
    Left = 208
    Top = 168
    Width = 89
    Height = 49
    Caption = 'Pengiriman'
    TabOrder = 17
    object ComboBox3: TComboBox
      Left = 8
      Top = 16
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5')
    end
  end
  object GroupBox6: TGroupBox
    Left = 304
    Top = 168
    Width = 281
    Height = 49
    Caption = 'Noted'
    TabOrder = 18
    object cxtNoted: TcxTextEdit
      Tag = 1
      Left = 7
      Top = 20
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.BorderStyle = ebsFlat
      Style.Color = clWindow
      TabOrder = 0
      Width = 266
    end
  end
  object zrq: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_bagian '
      'ORDER BY bagian'
      ''
      '-- SELECT nama, user_dept, email '
      '-- FROM tbl_user ORDER BY nama')
    Params = <>
    Left = 365
    Top = 4
  end
  object dsUserApp: TDataSource
    DataSet = zrq
    Left = 395
    Top = 4
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 288
    Top = 2
  end
end