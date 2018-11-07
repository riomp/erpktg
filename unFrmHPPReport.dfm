object frmHPPReport: TfrmHPPReport
  Left = 208
  Top = 62
  Width = 928
  Height = 612
  Caption = 'HPP Report'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 121
    Width = 912
    Height = 401
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 7
    TabOrder = 0
    ClientRectBottom = 400
    ClientRectLeft = 1
    ClientRectRight = 911
    ClientRectTop = 21
    object cxTabSheet1: TcxTabSheet
      Caption = 'HPP Perhitungan'
      ImageIndex = 0
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 910
        Height = 379
        VertScrollBar.Position = 161
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        TabOrder = 0
        object cxLabel4: TcxLabel
          Left = 10
          Top = -151
          Caption = 'Main Item'
        end
        object cxLabel5: TcxLabel
          Left = 10
          Top = -130
          Caption = 'UKURAN'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel6: TcxLabel
          Left = 10
          Top = -110
          Caption = 'Jenis Bentuk'
        end
        object cxCmbJenisBentuk: TcxComboBox
          Left = 110
          Top = -113
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 3
          Width = 121
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = -86
          Caption = 'Lebar Buka'
        end
        object cxsLebarBuka: TcxSpinEdit
          Left = 110
          Top = -89
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 5
          Width = 92
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = -62
          Caption = 'Lebar Jadi'
        end
        object cxsLebarJadi: TcxSpinEdit
          Left = 110
          Top = -65
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 7
          Width = 92
        end
        object cxLabel9: TcxLabel
          Left = 10
          Top = -38
          Caption = 'Lebar Gusset'
        end
        object cxsLebarGusset: TcxSpinEdit
          Left = 110
          Top = -41
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 9
          Width = 92
        end
        object cxLabel10: TcxLabel
          Left = 10
          Top = -14
          Caption = 'Lebar Cutout'
        end
        object cxsLebarCutout: TcxSpinEdit
          Left = 110
          Top = -17
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 11
          Width = 92
        end
        object cxLabel11: TcxLabel
          Left = 10
          Top = 10
          Caption = 'Tinggi Total'
        end
        object cxsTinggiTotal: TcxSpinEdit
          Left = 110
          Top = 7
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 13
          Width = 92
        end
        object cxLabel12: TcxLabel
          Left = 10
          Top = 34
          Caption = 'Tinggi Jadi'
        end
        object cxsTinggiJadi: TcxSpinEdit
          Left = 110
          Top = 31
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 15
          Width = 92
        end
        object cxLabel13: TcxLabel
          Left = 10
          Top = 58
          Caption = 'Top Fold'
        end
        object cxsTopFold: TcxSpinEdit
          Left = 110
          Top = 55
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 17
          Width = 92
        end
        object cxLabel14: TcxLabel
          Left = 10
          Top = 82
          Caption = 'Bottom Gusset'
        end
        object cxsBottomGusset: TcxSpinEdit
          Left = 110
          Top = 79
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 19
          Width = 92
        end
        object cxLabel15: TcxLabel
          Left = 10
          Top = 106
          Caption = 'Tinggi Cutout'
        end
        object cxsTinggiCutout: TcxSpinEdit
          Left = 110
          Top = 103
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 21
          Width = 92
        end
        object cxLabel16: TcxLabel
          Left = 10
          Top = 130
          Caption = 'Tebal Mic'
        end
        object cxsTebalMic: TcxSpinEdit
          Left = 110
          Top = 127
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 23
          Width = 92
        end
        object cxLabel17: TcxLabel
          Left = 10
          Top = 154
          Caption = 'Lebar Plong'
        end
        object cxsLebarPlong: TcxSpinEdit
          Left = 110
          Top = 151
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 25
          Width = 92
        end
        object cxLabel18: TcxLabel
          Left = 10
          Top = 178
          Caption = 'Panjang Plong'
        end
        object cxsPanjangPlong: TcxSpinEdit
          Left = 110
          Top = 175
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 27
          Width = 92
        end
        object cxLabel19: TcxLabel
          Left = 10
          Top = 202
          Caption = '% Plong'
        end
        object cxsPersenPlong: TcxSpinEdit
          Left = 110
          Top = 199
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 29
          Width = 92
        end
        object Panel3: TPanel
          Left = 825
          Top = 171
          Width = 60
          Height = 261
          TabOrder = 30
        end
        object cxLabel20: TcxLabel
          Left = 10
          Top = 226
          Caption = 'Berat Handle/Tali'
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 110
          Top = 223
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 32
          Width = 92
        end
        object cxLabel21: TcxLabel
          Left = 10
          Top = 250
          Caption = 'Berat Bersih'
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 110
          Top = 247
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 34
          Width = 92
        end
        object cxLabel22: TcxLabel
          Left = 10
          Top = 274
          Caption = 'Berat Bersih - Plong'
        end
        object cxSpinEdit3: TcxSpinEdit
          Left = 110
          Top = 271
          Properties.DisplayFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 36
          Width = 92
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'HPP Actual'
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 121
    Align = alTop
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 15
      Top = 25
      Caption = 'No. IS'
    end
    object cxtNoIS: TcxTextEdit
      Left = 90
      Top = 23
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 169
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 49
      Caption = 'Nama Produk'
    end
    object cxtNamaProduk: TcxTextEdit
      Left = 90
      Top = 47
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 401
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 73
      Caption = 'Bahan Dasar'
    end
    object cxtBahanDasar: TcxTextEdit
      Left = 90
      Top = 71
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 169
    end
    object cxLabel23: TcxLabel
      Left = 264
      Top = 73
      Caption = 'Konstanta'
    end
    object cxsKonstanta: TcxSpinEdit
      Left = 321
      Top = 71
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 7
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 912
    Height = 51
    Align = alBottom
    TabOrder = 2
  end
end
