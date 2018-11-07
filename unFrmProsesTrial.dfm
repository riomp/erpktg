inherited frmProsesTrial: TfrmProsesTrial
  Left = 297
  Top = 60
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Proses Trial'
  ClientHeight = 595
  ClientWidth = 986
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 986
    Height = 51
    BevelOuter = bvNone
    inherited lblJudul: TLabel
      Top = 15
      Width = 97
      Caption = 'Proses Trial'
    end
  end
  inherited pnlTengah: TPanel
    Top = 51
    Width = 986
    Height = 480
    object ScrollBox1: TScrollBox
      Left = 1
      Top = 1
      Width = 984
      Height = 478
      HorzScrollBar.Range = 824
      VertScrollBar.Range = 739
      Align = alClient
      AutoScroll = False
      TabOrder = 0
      object cxLabel6: TcxLabel
        Left = 11
        Top = 117
        AutoSize = False
        Caption = 'Deskripsi Trial'
        Properties.WordWrap = True
        Transparent = True
        Height = 60
        Width = 108
      end
      object cxLabel9: TcxLabel
        Left = 11
        Top = 41
        Caption = 'Dibuat Oleh'
        Transparent = True
      end
      object cxtDibuatOleh: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 40
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 0
        Width = 172
      end
      object cxmKetTrial: TcxMemo
        Tag = 1
        Left = 104
        Top = 115
        Properties.CharCase = ecUpperCase
        TabOrder = 2
        Height = 69
        Width = 503
      end
      object cxLabel8: TcxLabel
        Left = 286
        Top = 41
        Caption = 'Status'
        Transparent = True
      end
      object cxtStatus: TcxTextEdit
        Tag = 1
        Left = 325
        Top = 40
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 1
        Width = 101
      end
      object cxLabel17: TcxLabel
        Left = 11
        Top = 92
        Caption = 'Mesin'
        Transparent = True
      end
      object cxLabel10: TcxLabel
        Left = 616
        Top = 48
        Caption = 'App. Management'
        Transparent = True
      end
      object cxLabel3: TcxLabel
        Left = 11
        Top = 17
        Caption = 'No. Trial'
        Transparent = True
      end
      object cxtNoTrial: TcxTextEdit
        Tag = 1
        Left = 104
        Top = 15
        Properties.ReadOnly = True
        TabOrder = 13
        Width = 174
      end
      object cxLabel7: TcxLabel
        Left = 11
        Top = 67
        Caption = 'Tgl. Permohonan'
      end
      object cxdTglPmohonan: TcxDateEdit
        Left = 104
        Top = 65
        Properties.ReadOnly = True
        TabOrder = 17
        Width = 139
      end
      object cxLabel2: TcxLabel
        Left = 591
        Top = 385
        AutoSize = False
        Caption = 'Hasil Trial'
        Properties.WordWrap = True
        Transparent = True
        Height = 60
        Width = 108
      end
      object cxmHasilTrial: TcxMemo
        Tag = 3
        Left = 699
        Top = 667
        Lines.Strings = (
          '')
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.Color = clMoneyGreen
        TabOrder = 4
        Height = 69
        Width = 503
      end
      object cxLabel24: TcxLabel
        Left = 775
        Top = 153
        AutoSize = False
        Caption = '( Diisi oleh Manager QAC )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 141
      end
      object cxLabel26: TcxLabel
        Left = 635
        Top = 100
        AutoSize = False
        Caption = '( Diisi oleh min staff QA )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object cxChkAppTrial: TcxCheckBox
        Left = 719
        Top = 48
        Caption = 'Approval'
        TabOrder = 3
        Width = 172
      end
      object GroupBox1: TGroupBox
        Left = 835
        Top = 538
        Width = 393
        Height = 97
        Caption = ' Gambar '
        TabOrder = 11
        object btnTmbhImage: TButton
          Left = 10
          Top = 60
          Width = 101
          Height = 25
          Caption = 'Tambah Image'
          TabOrder = 1
          OnClick = btnTmbhImageClick
        end
        object cxLabel25: TcxLabel
          Left = 13
          Top = 28
          Caption = 'Jumlah Gambar : '
          Transparent = True
        end
      end
      object cxlukuran: TcxLabel
        Left = 700
        Top = 640
        AutoSize = False
        Caption = '( Ukuran Gambar Max. 50 Kb. )'
        Style.TextColor = clBlue
        Properties.WordWrap = True
        Transparent = True
        Height = 22
        Width = 214
      end
      object cxlMesin: TcxLookupComboBox
        Left = 104
        Top = 90
        Properties.KeyFieldNames = 'kode'
        Properties.ListColumns = <
          item
            Caption = 'Mesin'
            FieldName = 'nama'
          end
          item
            Caption = 'Kode'
            FieldName = 'kode'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsMesin
        TabOrder = 19
        Width = 139
      end
      object GroupBox2: TGroupBox
        Left = 15
        Top = 189
        Width = 766
        Height = 262
        Caption = ' Bill Of Material '
        TabOrder = 20
        object cxLabel1: TcxLabel
          Left = 10
          Top = 20
          Caption = 'Deskripsi'
          Transparent = True
        end
        object pgBom: TPageControl
          Left = 10
          Top = 73
          Width = 696
          Height = 164
          ActivePage = tbA
          TabOrder = 1
          object tbA: TTabSheet
            Caption = 'Bom A'
            object nxGrd1: TNextGrid
              Left = 10
              Top = 6
              Width = 666
              Height = 122
              Options = [goGrid, goHeader]
              TabOrder = 0
              TabStop = True
              object NxGraphicColumn1: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 44
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Hapus'
                Position = 0
                SortType = stNumeric
                Width = 44
                Images = ImageList1
              end
              object nxColNo1: TNxIncrementColumn
                DefaultWidth = 35
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'No.'
                Position = 1
                SortType = stAlphabetic
                Width = 35
              end
              object nxColDesk1: TNxTextColumn
                DefaultWidth = 299
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Deskripsi'
                Position = 2
                SortType = stAlphabetic
                Width = 299
              end
              object nxColQty1: TNxNumberColumn
                DefaultValue = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Qty.'
                Position = 3
                SortType = stNumeric
                Increment = 1.000000000000000000
                Precision = 0
              end
              object nxColSat1: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Satuan'
                Position = 4
                SortType = stAlphabetic
              end
            end
          end
          object tbB: TTabSheet
            Caption = 'Bom B'
            ImageIndex = 1
            object nxGrd2: TNextGrid
              Left = 10
              Top = 6
              Width = 666
              Height = 122
              Options = [goGrid, goHeader]
              TabOrder = 0
              TabStop = True
              object NxImageColumn1: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 44
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Hapus'
                Position = 0
                SortType = stNumeric
                Width = 44
                Images = ImageList1
              end
              object NxIncrementColumn2: TNxIncrementColumn
                DefaultWidth = 35
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'No.'
                Position = 1
                SortType = stAlphabetic
                Width = 35
              end
              object nxColDesk2: TNxTextColumn
                DefaultWidth = 299
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Deskripsi'
                Position = 2
                SortType = stAlphabetic
                Width = 299
              end
              object nxColQty2: TNxNumberColumn
                DefaultValue = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Qty.'
                Position = 3
                SortType = stNumeric
                Increment = 1.000000000000000000
                Precision = 0
              end
              object nxColSat2: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Satuan'
                Position = 4
                SortType = stAlphabetic
              end
            end
          end
          object tbC: TTabSheet
            Caption = 'Bom C'
            ImageIndex = 2
            object nxGrd3: TNextGrid
              Left = 10
              Top = 6
              Width = 666
              Height = 122
              Options = [goGrid, goHeader]
              TabOrder = 0
              TabStop = True
              object NxImageColumn2: TNxImageColumn
                DefaultValue = '0'
                DefaultWidth = 44
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Hapus'
                Position = 0
                SortType = stNumeric
                Width = 44
                Images = ImageList1
              end
              object NxIncrementColumn3: TNxIncrementColumn
                DefaultWidth = 35
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'No.'
                Position = 1
                SortType = stAlphabetic
                Width = 35
              end
              object NxTextColumn5: TNxTextColumn
                DefaultWidth = 299
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Deskripsi'
                Position = 2
                SortType = stAlphabetic
                Width = 299
              end
              object NxNumberColumn3: TNxNumberColumn
                DefaultValue = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Qty.'
                Position = 3
                SortType = stNumeric
                Increment = 1.000000000000000000
                Precision = 0
              end
              object NxTextColumn6: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Header.Caption = 'Satuan'
                Position = 4
                SortType = stAlphabetic
              end
            end
          end
        end
        object cxtDesk: TcxTextEdit
          Left = 65
          Top = 19
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 526
        end
        object cxLabel4: TcxLabel
          Left = 10
          Top = 46
          Caption = 'Qty'
          Transparent = True
        end
        object cxCmbSatuan: TcxComboBox
          Left = 190
          Top = 45
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 4
          Width = 81
        end
        object cxsQtyBom: TcxSpinEdit
          Left = 65
          Top = 45
          Properties.DisplayFormat = '#,##0.0000'
          Properties.EditFormat = '#,##0.0000'
          Properties.ValueType = vtFloat
          TabOrder = 5
          Width = 121
        end
        object btnTambahBom: TButton
          Left = 276
          Top = 43
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 6
          OnClick = btnTambahBomClick
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 531
    Width = 986
    Height = 313
    inherited btnKeluar: TButton
      Left = 407
      TabOrder = 1
      Visible = False
    end
    inherited btnBaru: TButton
      TabOrder = 3
    end
    inherited btnEdit: TButton
      TabOrder = 4
    end
    inherited btnHapus: TButton
      TabOrder = 5
    end
    inherited btnBatal: TButton
      Left = 485
      Top = 25
      TabOrder = 2
    end
    inherited btnSimpan: TButton
      Left = 330
      TabOrder = 0
      Visible = False
    end
    object btnSimpanTrial: TButton
      Left = 14
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 6
      OnClick = btnSimpanTrialClick
    end
    object btnKeluarTrial: TButton
      Left = 94
      Top = 21
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 7
      OnClick = btnKeluarTrialClick
    end
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer WHERE f_aktif = 1 '
      'ORDER BY nama')
    Params = <>
    Left = 461
    Top = 157
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 491
    Top = 157
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 465
    Top = 190
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_mesin ORDER BY nama')
    Params = <>
    Left = 461
    Top = 127
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 491
    Top = 127
  end
  object ImageList1: TImageList
    Left = 550
    Top = 80
    Bitmap = {
      494C010101000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000634A3100634A3100634A3100634A
      3100634A3100634A3100735A4200846B52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7E700FFF7E700FFEFE700947B63000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7E700A59484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF700FFFFF700B5A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000634A3100634A3100634A3100634A
      3100634A3100634A3100634A3100634A3100634A3100634A3100735A42000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFDEC600F7C6A500F7BD9400F7AD
      8400F7A57300F79C7300F7946300F78C5200F78C5200F78C5200846352000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFEFE700FFE7D600FFDEC600FFCE
      B500F7C6A500F7BDA500F7B59400F7AD8400F7A57300F78C5200847363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFF700FFF7F700FFEFE700FFE7
      D600FFDEC600FFD6C600F7CEB500F7C6A500F7B59400F7AD8400A59484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5A59400B5A59400B5A59400B5A5
      9400B59C9400A59C9400A59C9400A5948400A5948400A5948400A59484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7E700FFEFE700FFEFE700A58473000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFF700FFF7F700FFF7E700B59C94000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700B59484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6BDB500C6BDB500C6B5A500C6B5
      A500C6B5A500C6ADA500C6ADA500B5A594000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      00FF00000000000000FF00000000000000FF00000000000000FF000000000000
      001F000000000000001D0000000000000000000000000000001D000000000000
      001F00000000000000FF00000000000000FF00000000000000FF000000000000
      00FF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
end
