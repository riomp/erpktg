inherited frmRouting: TfrmRouting
  Left = 327
  Top = 95
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Routing'
  ClientHeight = 589
  ClientWidth = 948
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 948
    inherited lblJudul: TLabel
      Width = 75
      Caption = 'Routing :'
    end
    object Id: TLabel
      Left = 864
      Top = 24
      Width = 37
      Height = 13
      Caption = 'Routing'
      Visible = False
    end
    object cxtStat: TcxLabel
      Left = 14
      Top = 38
      Caption = 'xxx'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
    end
    object cxtItem: TcxLabel
      Left = 94
      Top = 22
      Caption = 'xxx'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
    end
  end
  inherited pnlTengah: TPanel
    Width = 948
    Height = 423
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 37
      Height = 13
      Caption = 'Routing'
    end
    object Label2: TLabel
      Left = 272
      Top = 16
      Width = 53
      Height = 13
      Caption = 'Description'
    end
    object Label3: TLabel
      Left = 24
      Top = 48
      Width = 78
      Height = 13
      Caption = 'Lebar Tube (cm)'
    end
    object Label4: TLabel
      Left = 24
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Meter/Roll'
    end
    object Label5: TLabel
      Left = 24
      Top = 96
      Width = 81
      Height = 13
      Caption = 'Treat Luar (dyne)'
    end
    object Label6: TLabel
      Left = 24
      Top = 120
      Width = 90
      Height = 13
      Caption = 'Treat Dalam (dyne)'
    end
    object Label7: TLabel
      Left = 24
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Pola Treat 1'
    end
    object Label8: TLabel
      Left = 24
      Top = 168
      Width = 58
      Height = 13
      Caption = 'Pola Treat 2'
    end
    object Label9: TLabel
      Left = 24
      Top = 264
      Width = 54
      Height = 13
      Caption = 'Sisi Printing'
    end
    object Label10: TLabel
      Left = 24
      Top = 240
      Width = 55
      Height = 13
      Caption = 'P.Core (cm)'
    end
    object Label11: TLabel
      Left = 24
      Top = 288
      Width = 39
      Height = 13
      Caption = 'Register'
    end
    object Label12: TLabel
      Left = 24
      Top = 312
      Width = 96
      Height = 13
      Caption = 'Urutan Warna/Tinta'
    end
    object Label13: TLabel
      Left = 512
      Top = 104
      Width = 95
      Height = 13
      Caption = 'Jumlah Desain (MD)'
    end
    object Label14: TLabel
      Left = 24
      Top = 192
      Width = 76
      Height = 13
      Caption = 'Core Type / dim'
    end
    object Label15: TLabel
      Left = 24
      Top = 216
      Width = 88
      Height = 13
      Caption = 'Shifting Bobin (cm)'
    end
    object Label16: TLabel
      Left = 272
      Top = 80
      Width = 140
      Height = 13
      Caption = 'Jarak Gambar Pada Cylinder :'
    end
    object Label17: TLabel
      Left = 272
      Top = 104
      Width = 61
      Height = 13
      Caption = 'Tepi Kiri (cm)'
    end
    object Label18: TLabel
      Left = 272
      Top = 128
      Width = 78
      Height = 13
      Caption = 'Tepi Kanan (cm)'
    end
    object Label19: TLabel
      Left = 272
      Top = 152
      Width = 68
      Height = 13
      Caption = 'Tepi Atas (cm)'
    end
    object Label20: TLabel
      Left = 272
      Top = 176
      Width = 80
      Height = 13
      Caption = 'Tepi Bawah (cm)'
    end
    object Label21: TLabel
      Left = 272
      Top = 200
      Width = 50
      Height = 13
      Caption = 'Lebar (cm)'
    end
    object Label22: TLabel
      Left = 272
      Top = 224
      Width = 62
      Height = 13
      Caption = 'Panjang (cm)'
    end
    object Label23: TLabel
      Left = 24
      Top = 368
      Width = 257
      Height = 13
      Caption = 'Toleransi Registrasi dan Overlapping antar warna (mm)'
    end
    object Label24: TLabel
      Left = 24
      Top = 336
      Width = 71
      Height = 13
      Caption = 'Arah Gulungan'
    end
    object Label25: TLabel
      Left = 688
      Top = 176
      Width = 43
      Height = 13
      Caption = 'Arah Film'
    end
    object Label26: TLabel
      Left = 512
      Top = 128
      Width = 93
      Height = 13
      Caption = 'Jumlah Desain (TD)'
    end
    object Label27: TLabel
      Left = 688
      Top = 104
      Width = 35
      Height = 13
      Caption = 'Cm MD'
    end
    object Label28: TLabel
      Left = 688
      Top = 128
      Width = 33
      Height = 13
      Caption = 'Cm TD'
    end
    object Label29: TLabel
      Left = 512
      Top = 152
      Width = 73
      Height = 13
      Caption = 'Jumlah Cylinder'
    end
    object Label30: TLabel
      Left = 688
      Top = 152
      Width = 55
      Height = 13
      Caption = 'Circum (cm)'
    end
    object Label31: TLabel
      Left = 512
      Top = 176
      Width = 42
      Height = 13
      Caption = 'Diameter'
    end
    object Label33: TLabel
      Left = 272
      Top = 256
      Width = 130
      Height = 13
      Caption = 'Jarak Las Sudut (sisi tegak)'
    end
    object Label34: TLabel
      Left = 544
      Top = 256
      Width = 143
      Height = 13
      Caption = 'Panjang Las Sudut (sisi miring)'
    end
    object Label35: TLabel
      Left = 272
      Top = 288
      Width = 184
      Height = 13
      Caption = 'Jarak Gambar VS Las Dari Bawah (cm)'
    end
    object Label36: TLabel
      Left = 544
      Top = 288
      Width = 172
      Height = 13
      Caption = 'Jarak Gambar VS Las Dari Atas (cm)'
    end
    object Label37: TLabel
      Left = 272
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Cylinder'
    end
    object Label32: TLabel
      Left = 512
      Top = 200
      Width = 79
      Height = 13
      Caption = 'Panjang Cylinder'
    end
    object cxcmbRouting: TcxComboBox
      Left = 136
      Top = 16
      Properties.Items.Strings = (
        'EXTRUSI'
        'PRINTING'
        'CONVERTING')
      TabOrder = 0
      Width = 121
    end
    object cxtDescription: TcxTextEdit
      Left = 336
      Top = 16
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 177
    end
    object cxsLebarTube: TcxSpinEdit
      Left = 136
      Top = 48
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 2
      Width = 129
    end
    object cxsMeterRoll: TcxSpinEdit
      Left = 136
      Top = 72
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 3
      Width = 129
    end
    object cxsTreatLuar: TcxSpinEdit
      Left = 136
      Top = 96
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 4
      Width = 129
    end
    object cxsTreatDalam: TcxSpinEdit
      Left = 136
      Top = 120
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 5
      Width = 129
    end
    object cxtPola1: TcxTextEdit
      Left = 136
      Top = 144
      TabOrder = 6
      Width = 129
    end
    object cxtPola2: TcxTextEdit
      Left = 136
      Top = 168
      TabOrder = 7
      Width = 129
    end
    object cxtCoreType: TcxTextEdit
      Left = 136
      Top = 192
      TabOrder = 8
      Width = 129
    end
    object cxsBobin: TcxSpinEdit
      Left = 136
      Top = 216
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 9
      Width = 129
    end
    object cxsCore: TcxSpinEdit
      Left = 136
      Top = 240
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 10
      Width = 129
    end
    object cxsSisi: TcxSpinEdit
      Left = 136
      Top = 264
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 11
      Width = 129
    end
    object cxtRegister: TcxTextEdit
      Left = 136
      Top = 288
      Properties.CharCase = ecUpperCase
      TabOrder = 12
      Width = 129
    end
    object cxtCylinder: TcxTextEdit
      Left = 336
      Top = 48
      Properties.CharCase = ecUpperCase
      TabOrder = 13
      Width = 281
    end
    object cxsTepiKiri: TcxSpinEdit
      Left = 368
      Top = 104
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 14
      Width = 129
    end
    object cxsTepiKanan: TcxSpinEdit
      Left = 368
      Top = 128
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 15
      Width = 129
    end
    object cxsTepiAtas: TcxSpinEdit
      Left = 368
      Top = 152
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 16
      Width = 129
    end
    object cxsTepiBawah: TcxSpinEdit
      Left = 368
      Top = 176
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 17
      Width = 129
    end
    object cxtUrutanWarna: TcxTextEdit
      Left = 136
      Top = 312
      Properties.CharCase = ecUpperCase
      TabOrder = 18
      Width = 193
    end
    object cxsLebar: TcxSpinEdit
      Left = 368
      Top = 200
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 19
      Width = 129
    end
    object cxsPanjang: TcxSpinEdit
      Left = 368
      Top = 224
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 20
      Width = 129
    end
    object cxsToleransi: TcxSpinEdit
      Left = 24
      Top = 384
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 21
      Width = 129
    end
    object cxcmbGulungan: TcxComboBox
      Left = 136
      Top = 336
      Properties.Items.Strings = (
        'TERBACA'
        'TIDAK TERBACA')
      TabOrder = 22
      Width = 121
    end
    object cxsJmlMD: TcxSpinEdit
      Left = 616
      Top = 104
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 23
      Width = 65
    end
    object cxsCMMD: TcxSpinEdit
      Left = 728
      Top = 104
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 24
      Width = 129
    end
    object cxsJmlTD: TcxSpinEdit
      Left = 616
      Top = 128
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 25
      Width = 65
    end
    object cxsCMTD: TcxSpinEdit
      Left = 728
      Top = 128
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 26
      Width = 129
    end
    object cxsJmlCylinder: TcxSpinEdit
      Left = 616
      Top = 152
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 27
      Width = 65
    end
    object cxsCircum: TcxSpinEdit
      Left = 752
      Top = 152
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 28
      Width = 105
    end
    object cxsDiameter: TcxSpinEdit
      Left = 616
      Top = 176
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 29
      Width = 65
    end
    object cxsPCylinder: TcxSpinEdit
      Left = 616
      Top = 200
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 30
      Width = 65
    end
    object cxtArahFilm: TcxTextEdit
      Left = 752
      Top = 176
      Properties.CharCase = ecUpperCase
      TabOrder = 31
      Width = 105
    end
    object cxsJarakLas: TcxSpinEdit
      Left = 408
      Top = 256
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 32
      Width = 129
    end
    object cxsPanjangLas: TcxSpinEdit
      Left = 696
      Top = 256
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 33
      Width = 129
    end
    object cxsLasAtas: TcxSpinEdit
      Left = 720
      Top = 288
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 34
      Width = 73
    end
    object cxsLasBawah: TcxSpinEdit
      Left = 464
      Top = 288
      Properties.DisplayFormat = '#,##0.000'
      Properties.EditFormat = '#,##0.000'
      Properties.ValueType = vtFloat
      TabOrder = 35
      Width = 73
    end
  end
  inherited pnlBawah: TPanel
    Top = 489
    Width = 948
    Height = 125
    inherited btnHapus: TButton
      Left = 833
      OnClick = btnHapusClick
    end
  end
  object zqrRouting: TZQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT *  FROM tbl_routing')
    Params = <>
    Left = 304
    Top = 24
  end
end
