inherited frmSettingDefaultAkun: TfrmSettingDefaultAkun
  Left = 493
  Top = 55
  Caption = 'Setting Default Akun'
  ClientHeight = 688
  ClientWidth = 998
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 998
    inherited lblJudul: TLabel
      Width = 171
      Caption = 'Setting Default Akun'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 998
    Height = 565
    inherited pg: TPageControl
      Left = 520
      Top = 66
      Width = 399
      Height = 100
      ActivePage = TabSheet2
      Align = alNone
      TabOrder = 1
      Visible = False
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 996
      Height = 563
      ActivePage = TabSheet13
      Align = alClient
      TabOrder = 0
      object TabSheet4: TTabSheet
        Caption = 'Rekap Premi'
        ImageIndex = 1
        TabVisible = False
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object cxLabel1: TcxLabel
            Left = 10
            Top = 56
            Caption = 'Premi Sopir'
          end
          object cxl1: TcxLookupComboBox
            Left = 123
            Top = 54
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel2: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel3: TcxLabel
            Left = 10
            Top = 81
            Caption = 'Premi Kernet'
          end
          object cxt1: TcxTextEdit
            Left = 225
            Top = 54
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 366
          end
          object cxt2: TcxTextEdit
            Left = 225
            Top = 79
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 366
          end
          object cxLabel4: TcxLabel
            Left = 10
            Top = 104
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel5: TcxLabel
            Left = 10
            Top = 125
            Caption = 'Pdpt. Adm. Muatan'
          end
          object cxt3: TcxTextEdit
            Left = 225
            Top = 123
            Properties.ReadOnly = True
            TabOrder = 9
            Width = 366
          end
          object cxLabel6: TcxLabel
            Left = 10
            Top = 150
            Caption = 'Hutang SPBU'
          end
          object cxt4: TcxTextEdit
            Left = 225
            Top = 148
            Properties.ReadOnly = True
            TabOrder = 12
            Width = 366
          end
          object cxLabel8: TcxLabel
            Left = 10
            Top = 200
            Caption = 'Claim Sopir'
          end
          object cxt6: TcxTextEdit
            Left = 225
            Top = 198
            Properties.ReadOnly = True
            TabOrder = 18
            Width = 366
          end
          object cxLabel9: TcxLabel
            Left = 10
            Top = 250
            Caption = 'Total Rekap'
          end
          object cxt7: TcxTextEdit
            Left = 225
            Top = 248
            Properties.ReadOnly = True
            TabOrder = 21
            Width = 366
          end
          object cxLabel10: TcxLabel
            Left = 10
            Top = 273
            Caption = 'BIAYA LAIN-LAIN'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel11: TcxLabel
            Left = 10
            Top = 293
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel12: TcxLabel
            Left = 10
            Top = 314
            Caption = 'Subsidi Kuli'
          end
          object cxt8: TcxTextEdit
            Left = 225
            Top = 312
            Properties.ReadOnly = True
            TabOrder = 26
            Width = 366
          end
          object cxLabel7: TcxLabel
            Left = 10
            Top = 175
            Caption = 'Piutang Sopir'
          end
          object cxt5: TcxTextEdit
            Left = 225
            Top = 173
            Properties.ReadOnly = True
            TabOrder = 15
            Width = 366
          end
          object cxLabel13: TcxLabel
            Left = 10
            Top = 339
            Caption = 'Subsidi Menginap'
          end
          object cxt9: TcxTextEdit
            Left = 225
            Top = 337
            Properties.ReadOnly = True
            TabOrder = 29
            Width = 366
          end
          object cxLabel14: TcxLabel
            Left = 11
            Top = 364
            Caption = 'Subsidi Solar'
          end
          object cxt10: TcxTextEdit
            Left = 226
            Top = 362
            Properties.ReadOnly = True
            TabOrder = 32
            Width = 366
          end
          object cxLabel15: TcxLabel
            Left = 11
            Top = 414
            Caption = 'Subdisi Lain-lain'
          end
          object cxt11: TcxTextEdit
            Left = 226
            Top = 412
            Properties.ReadOnly = True
            TabOrder = 35
            Width = 366
          end
          object cxLabel16: TcxLabel
            Left = 11
            Top = 439
            Caption = 'Biaya Bongkar Muat'
          end
          object cxt12: TcxTextEdit
            Left = 226
            Top = 437
            Properties.ReadOnly = True
            TabOrder = 39
            Width = 366
          end
          object Panel1: TPanel
            Left = 635
            Top = 505
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 37
          end
          object cxLabel17: TcxLabel
            Left = 11
            Top = 464
            Caption = 'B. Bongkat Muat JKT'
          end
          object cxt13: TcxTextEdit
            Left = 226
            Top = 462
            Properties.ReadOnly = True
            TabOrder = 42
            Width = 366
          end
          object cxLabel18: TcxLabel
            Left = 11
            Top = 489
            Caption = 'Bonus'
          end
          object cxt14: TcxTextEdit
            Left = 226
            Top = 487
            Properties.ReadOnly = True
            TabOrder = 45
            Width = 366
          end
          object cxLabel19: TcxLabel
            Left = 10
            Top = 542
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel20: TcxLabel
            Left = 10
            Top = 563
            Caption = 'Total Biaya Lain-lain'
          end
          object cxt15: TcxTextEdit
            Left = 225
            Top = 561
            Properties.ReadOnly = True
            TabOrder = 49
            Width = 366
          end
          object cxl2: TcxLookupComboBox
            Left = 123
            Top = 79
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 4
            Width = 98
          end
          object cxl3: TcxLookupComboBox
            Left = 123
            Top = 123
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 8
            Width = 98
          end
          object cxl4: TcxLookupComboBox
            Left = 123
            Top = 148
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 11
            Width = 98
          end
          object cxl5: TcxLookupComboBox
            Left = 123
            Top = 173
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 14
            Width = 98
          end
          object cxl6: TcxLookupComboBox
            Left = 123
            Top = 198
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 17
            Width = 98
          end
          object cxl8: TcxLookupComboBox
            Left = 123
            Top = 312
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 25
            Width = 98
          end
          object cxl9: TcxLookupComboBox
            Left = 123
            Top = 337
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 28
            Width = 98
          end
          object cxl10: TcxLookupComboBox
            Left = 123
            Top = 362
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 31
            Width = 98
          end
          object cxl11: TcxLookupComboBox
            Left = 123
            Top = 412
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 34
            Width = 98
          end
          object cxl7: TcxLookupComboBox
            Left = 123
            Top = 248
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 20
            Width = 98
          end
          object cxl12: TcxLookupComboBox
            Left = 123
            Top = 437
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 38
            Width = 98
          end
          object cxl13: TcxLookupComboBox
            Left = 123
            Top = 462
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 41
            Width = 98
          end
          object cxl14: TcxLookupComboBox
            Left = 123
            Top = 487
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 44
            Width = 98
          end
          object cxl15: TcxLookupComboBox
            Left = 123
            Top = 561
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 48
            Width = 98
          end
          object cxLabel34: TcxLabel
            Left = 10
            Top = 589
            Caption = 'PEMBELIAN BBM'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
          end
          object cxLabel36: TcxLabel
            Left = 10
            Top = 612
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
          end
          object cxLabel37: TcxLabel
            Left = 10
            Top = 637
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
          end
          object cxl16: TcxLookupComboBox
            Left = 123
            Top = 610
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 54
            Visible = False
            Width = 98
          end
          object cxt16: TcxTextEdit
            Left = 225
            Top = 610
            Properties.ReadOnly = True
            TabOrder = 55
            Visible = False
            Width = 366
          end
          object cxl17: TcxLookupComboBox
            Left = 123
            Top = 635
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 56
            Visible = False
            Width = 98
          end
          object cxt17: TcxTextEdit
            Left = 225
            Top = 635
            Properties.ReadOnly = True
            TabOrder = 57
            Visible = False
            Width = 366
          end
          object Button8: TButton
            Left = 593
            Top = 54
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 58
            OnClick = Button8Click
          end
          object Button9: TButton
            Left = 593
            Top = 79
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 59
            OnClick = Button9Click
          end
          object Button10: TButton
            Left = 593
            Top = 123
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 60
            OnClick = Button10Click
          end
          object Button11: TButton
            Left = 593
            Top = 148
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 61
            OnClick = Button11Click
          end
          object Button12: TButton
            Left = 593
            Top = 173
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 62
            OnClick = Button12Click
          end
          object Button13: TButton
            Left = 593
            Top = 198
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 63
            OnClick = Button13Click
          end
          object Button14: TButton
            Left = 593
            Top = 248
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 64
            OnClick = Button14Click
          end
          object Button15: TButton
            Left = 593
            Top = 312
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 65
            OnClick = Button15Click
          end
          object Button16: TButton
            Left = 593
            Top = 337
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 66
            OnClick = Button16Click
          end
          object Button17: TButton
            Left = 593
            Top = 362
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 67
            OnClick = Button17Click
          end
          object Button18: TButton
            Left = 593
            Top = 412
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 68
            OnClick = Button18Click
          end
          object Button19: TButton
            Left = 593
            Top = 437
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 69
            OnClick = Button19Click
          end
          object Button20: TButton
            Left = 593
            Top = 462
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 70
            OnClick = Button20Click
          end
          object Button21: TButton
            Left = 593
            Top = 487
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 71
            OnClick = Button21Click
          end
          object Button22: TButton
            Left = 593
            Top = 561
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 72
            OnClick = Button22Click
          end
          object Button23: TButton
            Left = 593
            Top = 610
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 73
            Visible = False
            OnClick = Button23Click
          end
          object Button24: TButton
            Left = 593
            Top = 635
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 74
            Visible = False
            OnClick = Button24Click
          end
          object cxLabel43: TcxLabel
            Left = 10
            Top = 9
            Caption = 'REKAPITULASI PREMI '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel47: TcxLabel
            Left = 70
            Top = 21
            Caption = 'Tambahan Uang Saku'
            Visible = False
          end
          object cxl18: TcxLookupComboBox
            Left = 183
            Top = 19
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 77
            Visible = False
            Width = 98
          end
          object cxt18: TcxTextEdit
            Left = 285
            Top = 19
            Properties.ReadOnly = True
            TabOrder = 78
            Visible = False
            Width = 366
          end
          object Button31: TButton
            Left = 653
            Top = 19
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 79
            Visible = False
            OnClick = Button31Click
          end
          object cxLabel48: TcxLabel
            Left = 11
            Top = 389
            Caption = 'Subsidi Muatan'
          end
          object cxl19: TcxLookupComboBox
            Left = 123
            Top = 387
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 81
            Width = 98
          end
          object cxt19: TcxTextEdit
            Left = 226
            Top = 387
            Properties.ReadOnly = True
            TabOrder = 82
            Width = 366
          end
          object Button32: TButton
            Left = 593
            Top = 387
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 83
            OnClick = Button32Click
          end
          object cxLabel49: TcxLabel
            Left = 10
            Top = 225
            Caption = 'Tabungan Sopir'
          end
          object cxl20: TcxLookupComboBox
            Left = 123
            Top = 223
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 85
            Width = 98
          end
          object cxt20: TcxTextEdit
            Left = 225
            Top = 223
            Properties.ReadOnly = True
            TabOrder = 86
            Width = 366
          end
          object Button33: TButton
            Left = 593
            Top = 223
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 87
            OnClick = Button33Click
          end
          object cxLabel80: TcxLabel
            Left = 11
            Top = 514
            Caption = 'Biaya Penyebrangan'
          end
          object cxl21: TcxLookupComboBox
            Left = 123
            Top = 512
            Properties.DropDownAutoSize = True
            Properties.KeyFieldNames = 'noakun'
            Properties.ListColumns = <
              item
                FieldName = 'noakun'
              end
              item
                FieldName = 'nama'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl1PropertiesEditValueChanged
            TabOrder = 89
            Width = 98
          end
          object cxt21: TcxTextEdit
            Left = 226
            Top = 512
            Properties.ReadOnly = True
            TabOrder = 90
            Width = 366
          end
          object Button53: TButton
            Left = 593
            Top = 512
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 91
            OnClick = Button53Click
          end
          object Panel8: TPanel
            Left = 640
            Top = 549
            Width = 35
            Height = 111
            BevelOuter = bvNone
            TabOrder = 92
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Daftar Muatan'
        ImageIndex = 3
        TabVisible = False
        object ScrollBox3: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel3: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 9
          end
          object cxl3_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 0
            Width = 98
          end
          object cxLabel22: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt3_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 1
            Width = 366
          end
          object cxt3_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 366
          end
          object cxLabel24: TcxLabel
            Left = 10
            Top = 9
            Caption = 'UANG SAKU SOPIR'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl3_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 3
            Width = 98
          end
          object cxLabel26: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object btnCari: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 2
            OnClick = btnCariClick
          end
          object btnCari2: TButton
            Left = 593
            Top = 55
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 5
            OnClick = btnCari2Click
          end
          object cxl3_3: TcxLookupComboBox
            Left = 123
            Top = 106
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 10
            Width = 98
          end
          object cxLabel40: TcxLabel
            Left = 10
            Top = 108
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt3_3: TcxTextEdit
            Left = 225
            Top = 106
            Properties.ReadOnly = True
            TabOrder = 12
            Width = 366
          end
          object cxt3_4: TcxTextEdit
            Left = 225
            Top = 132
            Properties.ReadOnly = True
            TabOrder = 13
            Width = 366
          end
          object cxLabel41: TcxLabel
            Left = 10
            Top = 85
            Caption = 'TAMBAHAN UANG SAKU SOPIR'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl3_4: TcxLookupComboBox
            Left = 123
            Top = 132
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 15
            Width = 98
          end
          object cxLabel42: TcxLabel
            Left = 10
            Top = 132
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button27: TButton
            Left = 593
            Top = 105
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 17
            OnClick = Button27Click
          end
          object Button28: TButton
            Left = 593
            Top = 131
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 18
            OnClick = Button28Click
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'TabSheet3'
        TabVisible = False
        object nxGrd: TNextGrid
          Left = 10
          Top = 14
          Width = 491
          Height = 292
          Options = [goGrid, goHeader]
          TabOrder = 0
          TabStop = True
          OnAfterEdit = nxGrdAfterEdit
          OnBeforeEdit = nxGrdBeforeEdit
          object nxColJenisTrs: TNxTextColumn
            DefaultWidth = 140
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Jenis Transaksi'
            Options = [coCanClick, coCanInput, coCanSort, coPublicUsing]
            ParentFont = False
            Position = 0
            SortType = stAlphabetic
            Width = 140
          end
          object nxColDK: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Debet / Kredit'
            ParentFont = False
            Position = 1
            SortType = stAlphabetic
          end
          object nxColCmbAkun: TNxComboBoxColumn
            DefaultWidth = 241
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Header.Caption = 'Kode Akun'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            ParentFont = False
            Position = 2
            SortType = stAlphabetic
            Width = 241
            Style = cbsDropDownList
          end
          object nxColAkun: TNxComboBoxColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Position = 3
            SortType = stAlphabetic
            Visible = False
          end
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Invoice dan Pelunasan'
        ImageIndex = 2
        TabVisible = False
        object ScrollBox2: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel2: TPanel
            Left = 630
            Top = 341
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 12
          end
          object cxl2_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel21: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt2_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 366
          end
          object cxt2_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 366
          end
          object cxLabel23: TcxLabel
            Left = 10
            Top = 9
            Caption = 'INVOICE PENJUALAN'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl2_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 4
            Width = 98
          end
          object cxLabel25: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button1: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 0
            OnClick = Button1Click
          end
          object Button2: TButton
            Left = 593
            Top = 55
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 3
            OnClick = Button2Click
          end
          object cxLabel31: TcxLabel
            Left = 10
            Top = 136
            Caption = 'PELUNASAN PIUTANG ORDER JASA'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel32: TcxLabel
            Left = 10
            Top = 159
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl2_3: TcxLookupComboBox
            Left = 123
            Top = 157
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 15
            Width = 98
          end
          object cxt2_3: TcxTextEdit
            Left = 225
            Top = 157
            Properties.ReadOnly = True
            TabOrder = 16
            Width = 366
          end
          object cxLabel33: TcxLabel
            Left = 10
            Top = 183
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl2_4: TcxLookupComboBox
            Left = 123
            Top = 183
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 18
            Width = 98
          end
          object cxt2_4: TcxTextEdit
            Left = 225
            Top = 183
            Properties.ReadOnly = True
            TabOrder = 19
            Width = 366
          end
          object Button6: TButton
            Left = 593
            Top = 156
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 20
            OnClick = Button6Click
          end
          object Button7: TButton
            Left = 593
            Top = 182
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 21
            OnClick = Button7Click
          end
          object cxLabel28: TcxLabel
            Left = 10
            Top = 216
            Caption = 'DEBET (BIAYA)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel27: TcxLabel
            Left = 10
            Top = 237
            Caption = 'Biaya Klaim'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl2_5: TcxLookupComboBox
            Left = 123
            Top = 236
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 24
            Width = 98
          end
          object cxt2_5: TcxTextEdit
            Left = 225
            Top = 236
            Properties.ReadOnly = True
            TabOrder = 25
            Width = 366
          end
          object cxLabel29: TcxLabel
            Left = 10
            Top = 263
            Caption = 'Biaya Adm'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl2_6: TcxLookupComboBox
            Left = 123
            Top = 262
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 27
            Width = 98
          end
          object cxt2_6: TcxTextEdit
            Left = 225
            Top = 262
            Properties.ReadOnly = True
            TabOrder = 28
            Width = 366
          end
          object cxLabel30: TcxLabel
            Left = 10
            Top = 289
            Caption = 'Biaya PPH'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl2_7: TcxLookupComboBox
            Left = 123
            Top = 288
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 30
            Width = 98
          end
          object cxt2_7: TcxTextEdit
            Left = 225
            Top = 288
            Properties.ReadOnly = True
            TabOrder = 31
            Width = 366
          end
          object Button3: TButton
            Left = 593
            Top = 235
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 32
            OnClick = Button3Click
          end
          object Button4: TButton
            Left = 593
            Top = 261
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 33
            OnClick = Button4Click
          end
          object Button5: TButton
            Left = 593
            Top = 287
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 34
            OnClick = Button5Click
          end
          object cxl2_8: TcxLookupComboBox
            Left = 123
            Top = 361
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 35
            Visible = False
            Width = 98
          end
          object cxLabel44: TcxLabel
            Left = 10
            Top = 363
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
          end
          object cxt2_8: TcxTextEdit
            Left = 225
            Top = 361
            Properties.ReadOnly = True
            TabOrder = 37
            Visible = False
            Width = 366
          end
          object cxt2_9: TcxTextEdit
            Left = 225
            Top = 387
            Properties.ReadOnly = True
            TabOrder = 38
            Visible = False
            Width = 366
          end
          object cxLabel45: TcxLabel
            Left = 10
            Top = 340
            Caption = 'TAGIHAN TAMBAHAN - INVOICE'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
          end
          object cxl2_9: TcxLookupComboBox
            Left = 123
            Top = 387
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 40
            Visible = False
            Width = 98
          end
          object cxLabel46: TcxLabel
            Left = 10
            Top = 387
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            Visible = False
          end
          object Button29: TButton
            Left = 593
            Top = 360
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 42
            Visible = False
            OnClick = Button29Click
          end
          object Button30: TButton
            Left = 593
            Top = 386
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 43
            Visible = False
            OnClick = Button30Click
          end
          object cxLabel78: TcxLabel
            Left = 10
            Top = 103
            Caption = 'Biaya Lain-lain'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl2_10: TcxLookupComboBox
            Left = 123
            Top = 102
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 6
            Width = 98
          end
          object cxt2_10: TcxTextEdit
            Left = 225
            Top = 102
            Properties.ReadOnly = True
            TabOrder = 7
            Width = 366
          end
          object Button52: TButton
            Left = 593
            Top = 101
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 8
            OnClick = Button52Click
          end
          object cxLabel79: TcxLabel
            Left = 10
            Top = 82
            Caption = 'KREDIT (BIAYA LAIN-LAIN)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
        end
      end
      object TabSheet7: TTabSheet
        Caption = 'Pembelian dan Pelunasan'
        ImageIndex = 4
        TabVisible = False
        object ScrollBox4: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel4: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 9
          end
          object cxl4_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel35: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt4_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 366
          end
          object cxt4_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 366
          end
          object cxLabel38: TcxLabel
            Left = 10
            Top = 9
            Caption = 'PELUNASAN PEMBELIAN'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl4_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 4
            Width = 98
          end
          object cxLabel39: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button25: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 0
            OnClick = Button25Click
          end
          object Button26: TButton
            Left = 593
            Top = 55
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 3
            OnClick = Butto26Click
          end
          object cxLabel59: TcxLabel
            Left = 10
            Top = 82
            Caption = 'DISKON'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel60: TcxLabel
            Left = 10
            Top = 103
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl4_3: TcxLookupComboBox
            Left = 123
            Top = 103
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 12
            Width = 98
          end
          object cxt4_3: TcxTextEdit
            Left = 225
            Top = 103
            Properties.ReadOnly = True
            TabOrder = 13
            Width = 366
          end
          object Button40: TButton
            Left = 593
            Top = 102
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 14
            OnClick = Button40Click
          end
        end
      end
      object TabSheet14: TTabSheet
        Caption = 'Penjualan'
        ImageIndex = 11
        object ScrollBox11: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel12: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 0
          end
          object cxl11_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel126: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt11_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 3
            Width = 366
          end
          object cxt11_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 366
          end
          object cxLabel127: TcxLabel
            Left = 10
            Top = 9
            Caption = 'PENJUALAN BARANG JADI'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl11_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 6
            Width = 98
          end
          object cxLabel128: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button81: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 8
            OnClick = Button81Click
          end
          object cxLabel129: TcxLabel
            Left = 10
            Top = 82
            Caption = 'FAKTUR / INVOICE PENJUALAN'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel130: TcxLabel
            Left = 10
            Top = 105
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel131: TcxLabel
            Left = 10
            Top = 129
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl11_3: TcxLookupComboBox
            Left = 123
            Top = 103
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 12
            Width = 98
          end
          object cxl11_4: TcxLookupComboBox
            Left = 123
            Top = 129
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 13
            Width = 98
          end
          object cxt11_4: TcxTextEdit
            Left = 225
            Top = 129
            Properties.ReadOnly = True
            TabOrder = 14
            OnClick = cxt6_6Click
            Width = 366
          end
          object cxt11_3: TcxTextEdit
            Left = 225
            Top = 103
            Properties.ReadOnly = True
            TabOrder = 15
            Width = 366
          end
          object Button82: TButton
            Left = 593
            Top = 102
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 16
            OnClick = Button82Click
          end
          object Button83: TButton
            Left = 593
            Top = 128
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 17
            OnClick = Button83Click
          end
          object Button84: TButton
            Left = 593
            Top = 56
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 18
            OnClick = Button84Click
          end
          object cxLabel135: TcxLabel
            Left = 10
            Top = 156
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl11_5: TcxLookupComboBox
            Left = 123
            Top = 156
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 20
            Width = 98
          end
          object cxt11_5: TcxTextEdit
            Left = 225
            Top = 156
            Properties.ReadOnly = True
            TabOrder = 21
            OnClick = cxt6_6Click
            Width = 366
          end
          object Button87: TButton
            Left = 593
            Top = 155
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 22
            OnClick = Button87Click
          end
        end
      end
      object TabSheet8: TTabSheet
        Caption = 'Sparepart'
        ImageIndex = 5
        TabVisible = False
        object ScrollBox5: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel5: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 9
          end
          object cxl5_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel50: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt5_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 366
          end
          object cxt5_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 366
          end
          object cxLabel51: TcxLabel
            Left = 10
            Top = 9
            Caption = 'PERBAIKAN ARMADA - JASA'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl5_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 4
            Width = 98
          end
          object cxLabel52: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button34: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 0
            OnClick = Button34Click
          end
          object Button35: TButton
            Left = 593
            Top = 55
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 3
            OnClick = Button35Click
          end
          object cxLabel61: TcxLabel
            Left = 11
            Top = 83
            Caption = 'SPARE PART'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel62: TcxLabel
            Left = 11
            Top = 106
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl5_3: TcxLookupComboBox
            Left = 124
            Top = 104
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 12
            Width = 98
          end
          object cxt5_3: TcxTextEdit
            Left = 226
            Top = 104
            Properties.ReadOnly = True
            TabOrder = 13
            Width = 366
          end
          object Button41: TButton
            Left = 594
            Top = 103
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 14
            OnClick = Button41Click
          end
          object Button42: TButton
            Left = 594
            Top = 129
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 15
            OnClick = Button42Click
          end
          object cxt5_4: TcxTextEdit
            Left = 226
            Top = 130
            Properties.ReadOnly = True
            TabOrder = 16
            Width = 366
          end
          object cxl5_4: TcxLookupComboBox
            Left = 124
            Top = 130
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 17
            Width = 98
          end
          object cxLabel63: TcxLabel
            Left = 11
            Top = 130
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
        end
      end
      object TabSheet9: TTabSheet
        Caption = 'Kasbon'
        ImageIndex = 6
        TabVisible = False
        object ScrollBox6: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel6: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 9
          end
          object cxl6_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel53: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt6_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 366
          end
          object cxt6_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 366
          end
          object cxLabel54: TcxLabel
            Left = 10
            Top = 9
            Caption = 'KASBON'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl6_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 4
            Width = 98
          end
          object cxLabel55: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button36: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 0
            OnClick = Button36Click
          end
          object Button37: TButton
            Left = 593
            Top = 55
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 3
            OnClick = Button37Click
          end
          object cxl6_3: TcxLookupComboBox
            Left = 123
            Top = 102
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 10
            Width = 98
          end
          object cxLabel56: TcxLabel
            Left = 10
            Top = 104
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt6_3: TcxTextEdit
            Left = 225
            Top = 102
            Properties.ReadOnly = True
            TabOrder = 12
            Width = 366
          end
          object cxt6_4: TcxTextEdit
            Left = 225
            Top = 128
            Properties.ReadOnly = True
            TabOrder = 13
            Width = 366
          end
          object cxLabel57: TcxLabel
            Left = 10
            Top = 81
            Caption = 'UANG SAKU'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl6_4: TcxLookupComboBox
            Left = 123
            Top = 128
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 15
            Width = 98
          end
          object cxLabel58: TcxLabel
            Left = 10
            Top = 128
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button38: TButton
            Left = 593
            Top = 101
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 17
            OnClick = Button38Click
          end
          object Button39: TButton
            Left = 593
            Top = 127
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 18
            OnClick = Button39Click
          end
          object cxLabel64: TcxLabel
            Left = 10
            Top = 154
            Caption = 'CLAIM'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel65: TcxLabel
            Left = 10
            Top = 177
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel66: TcxLabel
            Left = 10
            Top = 201
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl6_5: TcxLookupComboBox
            Left = 123
            Top = 175
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 22
            Width = 98
          end
          object cxl6_6: TcxLookupComboBox
            Left = 123
            Top = 201
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 23
            Width = 98
          end
          object cxt6_6: TcxTextEdit
            Left = 225
            Top = 201
            Properties.ReadOnly = True
            TabOrder = 24
            OnClick = cxt6_6Click
            Width = 366
          end
          object cxt6_5: TcxTextEdit
            Left = 225
            Top = 175
            Properties.ReadOnly = True
            TabOrder = 25
            Width = 366
          end
          object Button43: TButton
            Left = 593
            Top = 174
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 26
            OnClick = Button43Click
          end
          object Button44: TButton
            Left = 593
            Top = 200
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 27
          end
        end
      end
      object TabSheet10: TTabSheet
        Caption = 'Pembelian'
        ImageIndex = 7
        object ScrollBox7: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel7: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 0
          end
          object cxl7_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel70: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt7_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 3
            Width = 366
          end
          object cxt7_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 366
          end
          object cxLabel71: TcxLabel
            Left = 10
            Top = 9
            Caption = 'PEMBELIAN PERSEDIAAN (ALL STOCK)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl7_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 6
            Width = 98
          end
          object cxLabel72: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button47: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 8
            OnClick = Button47Click
          end
          object cxLabel73: TcxLabel
            Left = 10
            Top = 82
            Caption = 'FAKTUR / INVOICE PEMBELIAN'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel74: TcxLabel
            Left = 10
            Top = 105
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel75: TcxLabel
            Left = 10
            Top = 129
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl7_3: TcxLookupComboBox
            Left = 123
            Top = 103
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 12
            Width = 98
          end
          object cxl7_4: TcxLookupComboBox
            Left = 123
            Top = 129
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 13
            Width = 98
          end
          object cxt7_4: TcxTextEdit
            Left = 225
            Top = 129
            Properties.ReadOnly = True
            TabOrder = 14
            OnClick = cxt6_6Click
            Width = 366
          end
          object cxt7_3: TcxTextEdit
            Left = 225
            Top = 103
            Properties.ReadOnly = True
            TabOrder = 15
            Width = 366
          end
          object Button49: TButton
            Left = 593
            Top = 102
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 16
            OnClick = Button49Click
          end
          object Button50: TButton
            Left = 593
            Top = 128
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 17
            OnClick = Button50Click
          end
          object Button48: TButton
            Left = 593
            Top = 56
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 18
            OnClick = Button48Click
          end
          object cxLabel76: TcxLabel
            Left = 10
            Top = 182
            Caption = 'FAKTUR / INVOICE PEMBELIAN (NON STOCK)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel77: TcxLabel
            Left = 10
            Top = 205
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel111: TcxLabel
            Left = 10
            Top = 229
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl7_6: TcxLookupComboBox
            Left = 123
            Top = 203
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 22
            Width = 98
          end
          object cxl7_7: TcxLookupComboBox
            Left = 123
            Top = 229
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 23
            Width = 98
          end
          object cxt7_7: TcxTextEdit
            Left = 225
            Top = 229
            Properties.ReadOnly = True
            TabOrder = 24
            OnClick = cxt6_6Click
            Width = 366
          end
          object cxt7_6: TcxTextEdit
            Left = 225
            Top = 203
            Properties.ReadOnly = True
            TabOrder = 25
            Width = 366
          end
          object Button51: TButton
            Left = 593
            Top = 202
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 26
            OnClick = Button51Click
          end
          object Button70: TButton
            Left = 593
            Top = 228
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 27
            OnClick = Button70Click
          end
          object cxLabel112: TcxLabel
            Left = 10
            Top = 156
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl7_5: TcxLookupComboBox
            Left = 123
            Top = 156
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 29
            Width = 98
          end
          object cxt7_5: TcxTextEdit
            Left = 225
            Top = 156
            Properties.ReadOnly = True
            TabOrder = 30
            OnClick = cxt6_6Click
            Width = 366
          end
          object Button71: TButton
            Left = 593
            Top = 155
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 31
            OnClick = Button71Click
          end
          object cxLabel113: TcxLabel
            Left = 10
            Top = 256
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl7_8: TcxLookupComboBox
            Left = 123
            Top = 256
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 33
            Width = 98
          end
          object cxt7_8: TcxTextEdit
            Left = 225
            Top = 256
            Properties.ReadOnly = True
            TabOrder = 34
            OnClick = cxt6_6Click
            Width = 366
          end
          object Button72: TButton
            Left = 593
            Top = 255
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 35
            OnClick = Button72Click
          end
        end
      end
      object TabSheet11: TTabSheet
        Caption = 'Daftar Muat - Jakarta'
        ImageIndex = 8
        TabVisible = False
        object ScrollBox8: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel9: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 0
          end
          object cxl8_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel84: TcxLabel
            Left = 10
            Top = 10
            Caption = 'ONGKOS SOPIR'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt8_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 3
            Width = 366
          end
          object Button56: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 4
            OnClick = Button56Click
          end
          object cxLabel81: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel82: TcxLabel
            Left = 10
            Top = 87
            Caption = 'UANG SAKU'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
          end
          object cxLabel83: TcxLabel
            Left = 10
            Top = 109
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl8_3: TcxLookupComboBox
            Left = 123
            Top = 107
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 8
            Width = 98
          end
          object cxt8_3: TcxTextEdit
            Left = 225
            Top = 107
            Properties.ReadOnly = True
            TabOrder = 9
            Width = 366
          end
          object Button54: TButton
            Left = 593
            Top = 106
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 10
            OnClick = Button54Click
          end
          object cxLabel85: TcxLabel
            Left = 10
            Top = 135
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl8_4: TcxLookupComboBox
            Left = 123
            Top = 133
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 12
            Width = 98
          end
          object cxt8_4: TcxTextEdit
            Left = 225
            Top = 133
            Properties.ReadOnly = True
            TabOrder = 13
            Width = 366
          end
          object Button55: TButton
            Left = 593
            Top = 132
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 14
            OnClick = Button55Click
          end
          object cxLabel87: TcxLabel
            Left = 10
            Top = 319
            Caption = 'SUBSIDI DM JAKARTA'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel88: TcxLabel
            Left = 10
            Top = 385
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel89: TcxLabel
            Left = 10
            Top = 407
            Caption = 'Subsidi Muat'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_10: TcxLookupComboBox
            Left = 123
            Top = 405
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 18
            Width = 98
          end
          object cxt8_10: TcxTextEdit
            Left = 225
            Top = 405
            Properties.ReadOnly = True
            TabOrder = 19
            Width = 366
          end
          object Button58: TButton
            Left = 593
            Top = 404
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 20
            OnClick = Button58Click
          end
          object cxLabel90: TcxLabel
            Left = 10
            Top = 433
            Caption = 'Subsidi Bongkar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_11: TcxLookupComboBox
            Left = 123
            Top = 431
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 22
            Width = 98
          end
          object cxt8_11: TcxTextEdit
            Left = 225
            Top = 431
            Properties.ReadOnly = True
            TabOrder = 23
            Width = 366
          end
          object Button59: TButton
            Left = 593
            Top = 430
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 24
            OnClick = Button59Click
          end
          object cxLabel91: TcxLabel
            Left = 10
            Top = 459
            Caption = 'Subsisi Makan + '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_12: TcxLookupComboBox
            Left = 123
            Top = 457
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 26
            Width = 98
          end
          object cxt8_12: TcxTextEdit
            Left = 225
            Top = 457
            Properties.ReadOnly = True
            TabOrder = 27
            Width = 366
          end
          object Button60: TButton
            Left = 593
            Top = 456
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 28
            OnClick = Button60Click
          end
          object cxLabel92: TcxLabel
            Left = 10
            Top = 471
            Caption = 'Menginap'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxLabel93: TcxLabel
            Left = 10
            Top = 489
            Caption = 'Subsidi Solar'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_13: TcxLookupComboBox
            Left = 123
            Top = 487
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 31
            Width = 98
          end
          object cxt8_13: TcxTextEdit
            Left = 225
            Top = 487
            Properties.ReadOnly = True
            TabOrder = 32
            Width = 366
          end
          object Button61: TButton
            Left = 593
            Top = 486
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 33
            OnClick = Button61Click
          end
          object cxLabel94: TcxLabel
            Left = 10
            Top = 515
            Caption = 'Subsidi Timbang'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_14: TcxLookupComboBox
            Left = 123
            Top = 513
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 35
            Width = 98
          end
          object cxt8_14: TcxTextEdit
            Left = 225
            Top = 513
            Properties.ReadOnly = True
            TabOrder = 36
            Width = 366
          end
          object Button62: TButton
            Left = 593
            Top = 512
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 37
            OnClick = Button62Click
          end
          object cxLabel95: TcxLabel
            Left = 10
            Top = 541
            Caption = 'Subsidi Parkir + Tol'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_15: TcxLookupComboBox
            Left = 123
            Top = 539
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 39
            Width = 98
          end
          object cxt8_15: TcxTextEdit
            Left = 225
            Top = 539
            Properties.ReadOnly = True
            TabOrder = 40
            Width = 366
          end
          object Button63: TButton
            Left = 593
            Top = 538
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 41
            OnClick = Button63Click
          end
          object cxLabel96: TcxLabel
            Left = 10
            Top = 567
            Caption = 'Subsidi Lain'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_16: TcxLookupComboBox
            Left = 123
            Top = 565
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 43
            Width = 98
          end
          object cxt8_16: TcxTextEdit
            Left = 225
            Top = 565
            Properties.ReadOnly = True
            TabOrder = 44
            Width = 366
          end
          object Button64: TButton
            Left = 593
            Top = 564
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 45
            OnClick = Button64Click
          end
          object cxLabel97: TcxLabel
            Left = 10
            Top = 340
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel98: TcxLabel
            Left = 10
            Top = 362
            Caption = 'Subsidi DM Total'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object cxl8_9: TcxLookupComboBox
            Left = 123
            Top = 360
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 48
            Width = 98
          end
          object cxt8_9: TcxTextEdit
            Left = 225
            Top = 360
            Properties.ReadOnly = True
            TabOrder = 49
            Width = 366
          end
          object Button65: TButton
            Left = 593
            Top = 359
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 50
            OnClick = Button65Click
          end
          object cxLabel100: TcxLabel
            Left = 10
            Top = 58
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl8_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 52
            Width = 98
          end
          object cxt8_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 53
            Width = 366
          end
          object Button67: TButton
            Left = 593
            Top = 55
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 54
            OnClick = Button67Click
          end
          object cxLabel86: TcxLabel
            Left = 10
            Top = 163
            Caption = 'BBM TRUK'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
          end
          object cxLabel99: TcxLabel
            Left = 10
            Top = 185
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl8_5: TcxLookupComboBox
            Left = 123
            Top = 183
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 57
            Width = 98
          end
          object cxt8_5: TcxTextEdit
            Left = 225
            Top = 183
            Properties.ReadOnly = True
            TabOrder = 58
            Width = 366
          end
          object Button57: TButton
            Left = 593
            Top = 182
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 59
            OnClick = Button57Click
          end
          object cxLabel101: TcxLabel
            Left = 10
            Top = 211
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl8_6: TcxLookupComboBox
            Left = 123
            Top = 209
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 61
            Width = 98
          end
          object cxt8_6: TcxTextEdit
            Left = 225
            Top = 209
            Properties.ReadOnly = True
            TabOrder = 62
            Width = 366
          end
          object Button66: TButton
            Left = 593
            Top = 208
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 63
            OnClick = Button66Click
          end
          object cxLabel102: TcxLabel
            Left = 10
            Top = 240
            Caption = 'ADMINISTRASI'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
          end
          object cxLabel103: TcxLabel
            Left = 10
            Top = 262
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel104: TcxLabel
            Left = 10
            Top = 288
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl8_7: TcxLookupComboBox
            Left = 123
            Top = 260
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 67
            Width = 98
          end
          object cxl8_8: TcxLookupComboBox
            Left = 123
            Top = 286
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 68
            Width = 98
          end
          object cxt8_8: TcxTextEdit
            Left = 225
            Top = 286
            Properties.ReadOnly = True
            TabOrder = 69
            Width = 366
          end
          object cxt8_7: TcxTextEdit
            Left = 225
            Top = 260
            Properties.ReadOnly = True
            TabOrder = 70
            Width = 366
          end
          object Button68: TButton
            Left = 593
            Top = 259
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 71
            OnClick = Button68Click
          end
          object Button69: TButton
            Left = 593
            Top = 285
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 72
            OnClick = Button69Click
          end
        end
      end
      object TabSheet13: TTabSheet
        Caption = 'Transaksi Persediaan'
        ImageIndex = 10
        object ScrollBox10: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel11: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 0
          end
          object cxl10_1: TcxLookupComboBox
            Left = 123
            Top = 30
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 1
            Width = 98
          end
          object cxLabel114: TcxLabel
            Left = 10
            Top = 32
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxt10_1: TcxTextEdit
            Left = 225
            Top = 30
            Properties.ReadOnly = True
            TabOrder = 3
            Width = 366
          end
          object cxt10_2: TcxTextEdit
            Left = 225
            Top = 56
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 366
          end
          object cxLabel115: TcxLabel
            Left = 10
            Top = 9
            Caption = 'PEMAKAIAN PERSEDIAAN BAHAN BAKU'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_2: TcxLookupComboBox
            Left = 123
            Top = 56
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 6
            Width = 98
          end
          object cxLabel116: TcxLabel
            Left = 10
            Top = 56
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Button73: TButton
            Left = 593
            Top = 29
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 8
            OnClick = Button73Click
          end
          object cxLabel117: TcxLabel
            Left = 10
            Top = 160
            Caption = 'PEMAKAIAN PERSEDIAAN BAHAN PEMBANTU'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel118: TcxLabel
            Left = 10
            Top = 183
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_3: TcxLookupComboBox
            Left = 123
            Top = 181
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 11
            Width = 98
          end
          object cxt10_3: TcxTextEdit
            Left = 225
            Top = 181
            Properties.ReadOnly = True
            TabOrder = 12
            Width = 366
          end
          object Button74: TButton
            Left = 593
            Top = 180
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 13
            OnClick = Button74Click
          end
          object Button76: TButton
            Left = 593
            Top = 56
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 14
            OnClick = Button76Click
          end
          object cxLabel120: TcxLabel
            Left = 10
            Top = 233
            Caption = 'PEMAKAIAN PERSEDIAAN BAHAN AFVALAN DAN PELET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel121: TcxLabel
            Left = 10
            Top = 256
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_5: TcxLookupComboBox
            Left = 123
            Top = 254
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 17
            Width = 98
          end
          object cxt10_5: TcxTextEdit
            Left = 225
            Top = 254
            Properties.ReadOnly = True
            TabOrder = 18
            Width = 366
          end
          object Button77: TButton
            Left = 593
            Top = 253
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 19
            OnClick = Button77Click
          end
          object cxLabel123: TcxLabel
            Left = 10
            Top = 207
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_4: TcxLookupComboBox
            Left = 123
            Top = 207
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 21
            Width = 98
          end
          object cxt10_4: TcxTextEdit
            Left = 225
            Top = 207
            Properties.ReadOnly = True
            TabOrder = 22
            Width = 366
          end
          object Button79: TButton
            Left = 593
            Top = 206
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 23
            OnClick = Button79Click
          end
          object cxLabel124: TcxLabel
            Left = 10
            Top = 281
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_6: TcxLookupComboBox
            Left = 123
            Top = 281
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 25
            Width = 98
          end
          object cxt10_6: TcxTextEdit
            Left = 225
            Top = 281
            Properties.ReadOnly = True
            TabOrder = 26
            Width = 366
          end
          object Button80: TButton
            Left = 593
            Top = 280
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 27
            OnClick = Button80Click
          end
          object cxLabel119: TcxLabel
            Left = 10
            Top = 308
            Caption = 'TRANSFER BARANG JADI KE GUDANG'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel122: TcxLabel
            Left = 10
            Top = 331
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_7: TcxLookupComboBox
            Left = 123
            Top = 329
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 30
            Width = 98
          end
          object cxt10_7: TcxTextEdit
            Left = 225
            Top = 329
            Properties.ReadOnly = True
            TabOrder = 31
            Width = 366
          end
          object Button75: TButton
            Left = 593
            Top = 328
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 32
            OnClick = Button75Click
          end
          object Button78: TButton
            Left = 593
            Top = 355
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 33
            OnClick = Button78Click
          end
          object cxt10_8: TcxTextEdit
            Left = 225
            Top = 356
            Properties.ReadOnly = True
            TabOrder = 34
            Width = 366
          end
          object cxl10_8: TcxLookupComboBox
            Left = 123
            Top = 356
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 35
            Width = 98
          end
          object cxLabel125: TcxLabel
            Left = 10
            Top = 356
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel132: TcxLabel
            Left = 10
            Top = 82
            Caption = 'PEMAKAIAN PERSEDIAAN BAHAN BAKU (WIP)'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel133: TcxLabel
            Left = 10
            Top = 105
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel134: TcxLabel
            Left = 10
            Top = 130
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_9: TcxLookupComboBox
            Left = 123
            Top = 103
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 40
            Width = 98
          end
          object cxl10_10: TcxLookupComboBox
            Left = 123
            Top = 130
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 41
            Width = 98
          end
          object cxt10_9: TcxTextEdit
            Left = 225
            Top = 103
            Properties.ReadOnly = True
            TabOrder = 42
            Width = 366
          end
          object cxt10_10: TcxTextEdit
            Left = 225
            Top = 130
            Properties.ReadOnly = True
            TabOrder = 43
            Width = 366
          end
          object Button85: TButton
            Left = 593
            Top = 102
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 44
            OnClick = Button85Click
          end
          object Button86: TButton
            Left = 593
            Top = 129
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 45
            OnClick = Button86Click
          end
          object cxLabel136: TcxLabel
            Left = 10
            Top = 381
            Caption = 'TRANSFER BARANG WIP KE GUDANG'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel137: TcxLabel
            Left = 10
            Top = 404
            Caption = 'DEBET'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_11: TcxLookupComboBox
            Left = 123
            Top = 402
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 48
            Width = 98
          end
          object cxt10_11: TcxTextEdit
            Left = 225
            Top = 402
            Properties.ReadOnly = True
            TabOrder = 49
            Width = 366
          end
          object cxLabel138: TcxLabel
            Left = 10
            Top = 429
            Caption = 'KREDIT'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxl10_12: TcxLookupComboBox
            Left = 123
            Top = 429
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
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsCoa
            Properties.OnEditValueChanged = cxl2_1PropertiesEditValueChanged
            TabOrder = 51
            Width = 98
          end
          object cxt10_12: TcxTextEdit
            Left = 225
            Top = 429
            Properties.ReadOnly = True
            TabOrder = 52
            Width = 366
          end
          object Button88: TButton
            Left = 593
            Top = 401
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 53
            OnClick = Button88Click
          end
          object Button89: TButton
            Left = 593
            Top = 428
            Width = 25
            Height = 21
            Caption = '...'
            TabOrder = 54
            OnClick = Button89Click
          end
        end
      end
      object TabSheet12: TTabSheet
        Caption = 'Akun Persediaan'
        ImageIndex = 9
        object ScrollBox9: TScrollBox
          Left = 0
          Top = 0
          Width = 988
          Height = 535
          Align = alClient
          TabOrder = 0
          object Panel10: TPanel
            Left = 630
            Top = 355
            Width = 26
            Height = 146
            BevelOuter = bvNone
            TabOrder = 0
          end
          object cxGrid1: TcxGrid
            Left = 10
            Top = 6
            Width = 965
            Height = 217
            TabOrder = 1
            object cxTbl: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCellDblClick = cxTblCellDblClick
              DataController.DataSource = dsAkunPersediaan
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              object cxColNama: TcxGridDBColumn
                Caption = 'Nama'
                DataBinding.FieldName = 'nama'
                Width = 141
              end
              object cxTblakun_persediaan: TcxGridDBColumn
                Caption = 'Akun Persediaan'
                DataBinding.FieldName = 'akun_persediaan'
              end
              object cxTblakun_penjualan: TcxGridDBColumn
                Caption = 'Akun Penjualan'
                DataBinding.FieldName = 'akun_penjualan'
              end
              object cxTblakun_retur_penjualan: TcxGridDBColumn
                Caption = 'Akun Retur Penjualan'
                DataBinding.FieldName = 'akun_retur_penjualan'
              end
              object cxTblakun_diskon_penjualan: TcxGridDBColumn
                Caption = 'Akun Diskon Penjualan'
                DataBinding.FieldName = 'akun_diskon_penjualan'
              end
              object cxTblaku_barang_terkirim: TcxGridDBColumn
                Caption = 'Akun Barang Terkirim'
                DataBinding.FieldName = 'aku_barang_terkirim'
              end
              object cxTblakun_hpp: TcxGridDBColumn
                Caption = 'Akun HPP'
                DataBinding.FieldName = 'akun_hpp'
              end
              object cxTblakun_retur_pembelian: TcxGridDBColumn
                Caption = 'Akun Retur Pembelian'
                DataBinding.FieldName = 'akun_retur_pembelian'
              end
              object cxTblakun_blm_tertagih: TcxGridDBColumn
                Caption = 'Akun Belum Tertagih'
                DataBinding.FieldName = 'akun_blm_tertagih'
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxTbl
            end
          end
          object Button45: TButton
            Left = 10
            Top = 227
            Width = 75
            Height = 25
            Caption = 'Hapus'
            TabOrder = 2
          end
          object GroupBox1: TGroupBox
            Left = 10
            Top = 252
            Width = 669
            Height = 273
            TabOrder = 3
            object cxLabel67: TcxLabel
              Left = 9
              Top = 15
              Caption = 'Nama'
            end
            object cxtNamaTpl: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 13
              TabOrder = 1
              Width = 291
            end
            object cxLabel68: TcxLabel
              Left = 9
              Top = 40
              Caption = 'Akun Persediaan'
            end
            object cxtAkun1: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 38
              Properties.ReadOnly = True
              TabOrder = 3
              Width = 121
            end
            object cxLabel69: TcxLabel
              Left = 9
              Top = 65
              Caption = 'Akun Penjualan'
            end
            object cxtAkun2: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 63
              Properties.ReadOnly = True
              TabOrder = 5
              Width = 121
            end
            object cxLabel105: TcxLabel
              Left = 9
              Top = 90
              Caption = 'Akun Retur Penjualan'
            end
            object cxtAkun3: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 88
              Properties.ReadOnly = True
              TabOrder = 7
              Width = 121
            end
            object cxLabel106: TcxLabel
              Left = 9
              Top = 115
              Caption = 'Akun Diskon Penjualan'
            end
            object cxtAkun4: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 113
              Properties.ReadOnly = True
              TabOrder = 9
              Width = 121
            end
            object cxLabel107: TcxLabel
              Left = 9
              Top = 140
              Caption = 'Akun Barang Terkirim'
            end
            object cxtAkun5: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 138
              Properties.ReadOnly = True
              TabOrder = 11
              Width = 121
            end
            object cxLabel108: TcxLabel
              Left = 9
              Top = 165
              Caption = 'Akun HPP'
            end
            object cxtAkun6: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 163
              Properties.ReadOnly = True
              TabOrder = 13
              Width = 121
            end
            object cxLabel109: TcxLabel
              Left = 9
              Top = 190
              Caption = 'Akun Retur Pembelian'
            end
            object cxtAkun7: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 188
              Properties.ReadOnly = True
              TabOrder = 15
              Width = 121
            end
            object cxLabel110: TcxLabel
              Left = 9
              Top = 215
              Caption = 'Akun Belum Tertagih'
            end
            object cxtAkun8: TcxTextEdit
              Tag = 1
              Left = 125
              Top = 213
              Properties.ReadOnly = True
              TabOrder = 17
              Width = 121
            end
            object cxlAkun1: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 38
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 18
              Width = 406
            end
            object cxlAkun2: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 63
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 19
              Width = 406
            end
            object cxlAkun3: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 88
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 20
              Width = 406
            end
            object cxlAkun4: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 113
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 21
              Width = 406
            end
            object cxlAkun5: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 138
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 22
              Width = 406
            end
            object cxlAkun6: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 163
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 23
              Width = 406
            end
            object cxlAkun7: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 188
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 24
              Width = 406
            end
            object cxlAkun8: TcxLookupComboBox
              Tag = 1
              Left = 250
              Top = 213
              Properties.KeyFieldNames = 'noakun'
              Properties.ListColumns = <
                item
                  FieldName = 'nama'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsCoa
              Properties.OnChange = cxlAkun1PropertiesChange
              TabOrder = 25
              Width = 406
            end
            object btnSimpanTpl: TButton
              Left = 125
              Top = 239
              Width = 75
              Height = 25
              Caption = 'Simpan'
              TabOrder = 26
              OnClick = btnSimpanTplClick
            end
            object Button46: TButton
              Left = 202
              Top = 239
              Width = 75
              Height = 25
              Caption = 'Batal'
              TabOrder = 27
              OnClick = Button46Click
            end
          end
          object cxtJenis: TcxTextEdit
            Left = 755
            Top = 335
            TabOrder = 4
            Text = 'cxtJenis'
            Visible = False
            Width = 121
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 631
    Width = 998
    Height = 57
    inherited btnKeluar: TButton
      Left = 565
      Top = 10
      TabOrder = 2
      Visible = False
    end
    inherited btnTambah: TButton
      Left = 325
      TabOrder = 5
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 400
      TabOrder = 6
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 475
      TabOrder = 7
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 490
      Top = 10
      TabOrder = 1
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 415
      Top = 10
      TabOrder = 0
      Visible = False
    end
    object btnSimpan2: TButton
      Left = 15
      Top = 15
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 3
      OnClick = btnSimpan2Click
    end
    object btnKeluar2: TButton
      Left = 90
      Top = 15
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 4
      OnClick = btnTambahClick
    end
  end
  object zqrCoa: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 490
    Top = 25
  end
  object dsCoa: TDataSource
    DataSet = zqrCoa
    Left = 520
    Top = 25
  end
  object zqrAkunPersediaan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_tplakun_persediaan')
    Params = <>
    Left = 555
    Top = 20
  end
  object dsAkunPersediaan: TDataSource
    DataSet = zqrAkunPersediaan
    Left = 585
    Top = 20
  end
end
