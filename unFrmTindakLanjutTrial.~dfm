inherited frmTindakLanjutTrial: TfrmTindakLanjutTrial
  Left = 340
  Top = 44
  Width = 840
  Height = 611
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Tindak Lanjut Trial'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 824
    Height = 43
    inherited lblJudul: TLabel
      Top = 12
      Width = 156
      Caption = 'Tindak Lanjut Trial'
    end
  end
  inherited pnlTengah: TPanel
    Top = 43
    Width = 824
    Height = 472
    object nxGrd: TNextGrid
      Left = 15
      Top = 247
      Width = 789
      Height = 88
      Options = [goGrid, goHeader]
      TabOrder = 22
      TabStop = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellClick = nxGrdCellClick
      object nxColPilih: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Pilih'
        Position = 0
        SortType = stBoolean
        Visible = False
        Width = 28
      end
      object nxColNoUrut: TNxIncrementColumn
        DefaultWidth = 38
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 1
        SortType = stAlphabetic
        Width = 38
      end
      object nxColJenis: TNxTextColumn
        DefaultWidth = 93
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Jenis'
        Position = 2
        SortType = stAlphabetic
        Width = 93
      end
      object nxColNoSPK: TNxTextColumn
        DefaultWidth = 105
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        Position = 3
        SortType = stAlphabetic
        Width = 105
      end
      object nxColKodeBrg: TNxTextColumn
        DefaultWidth = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode Brg.'
        Position = 4
        SortType = stAlphabetic
        Width = 57
      end
      object nxColDeskripsi: TNxTextColumn
        DefaultWidth = 248
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Deskripsi'
        Position = 5
        SortType = stAlphabetic
        Width = 248
      end
      object nxColSelesai: TNxCheckBoxColumn
        Alignment = taCenter
        DefaultWidth = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Selesai ?'
        Position = 6
        SortType = stBoolean
        Visible = False
        Width = 57
      end
      object nxColQtySPK: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Qty. SPK'
        Position = 7
        SortType = stNumeric
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColHslProd: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 77
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hasil Produksi'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 8
        SortType = stNumeric
        Width = 77
        FormatMask = '#,#0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColSatuan0: TNxComboBoxColumn
        DefaultWidth = 43
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 9
        SortType = stAlphabetic
        Width = 43
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 15
      Caption = 'No. Trial'
    end
    object cxtNoTrial: TcxTextEdit
      Left = 103
      Top = 13
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 66
      Caption = 'Deskripsi Trial'
    end
    object cxmDeskripsiTrial: TcxMemo
      Left = 103
      Top = 65
      Lines.Strings = (
        '')
      Properties.ReadOnly = True
      TabOrder = 9
      Height = 47
      Width = 596
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 226
      Caption = 'Detail SPK :'
    end
    object cxLabel5: TcxLabel
      Left = 325
      Top = 198
      Caption = 'Barang Hasil'
      Visible = False
    end
    object cxlBrgHasil: TcxLookupComboBox
      Left = 413
      Top = 196
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Deskripsi'
          FieldName = 'deskripsi'
        end
        item
          Caption = 'Kode Brg.'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsBrg
      TabOrder = 18
      Visible = False
      Width = 548
    end
    object btnSimpanDetail: TButton
      Left = 660
      Top = 5
      Width = 96
      Height = 25
      Caption = 'Simpan Detail'
      TabOrder = 0
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 15
      Top = 338
      Width = 747
      Height = 127
      Caption = ' Bill Of Material '
      TabOrder = 23
      object nxGrd1: TNextGrid
        Left = 10
        Top = 23
        Width = 666
        Height = 89
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
          Visible = False
          Width = 44
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
        object nxColKode1: TNxTextColumn
          DefaultWidth = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Kode'
          Position = 2
          SortType = stAlphabetic
          Width = 57
        end
        object nxColDesk1: TNxTextColumn
          DefaultWidth = 299
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Deskripsi'
          Position = 3
          SortType = stAlphabetic
          Width = 299
        end
        object nxColQty1: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 47
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty.'
          Position = 4
          SortType = stNumeric
          Width = 47
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColPakai1: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Pemakaian'
          Position = 5
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColSat1: TNxTextColumn
          DefaultWidth = 53
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Satuan'
          Position = 6
          SortType = stAlphabetic
          Width = 53
        end
        object nxColNoSPK1: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 7
          SortType = stAlphabetic
          Visible = False
        end
      end
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 171
      Caption = 'Barang Sample'
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 197
      Caption = 'Qty. Brg. Sample'
    end
    object cxtBrgSample: TcxTextEdit
      Left = 103
      Top = 169
      Properties.ReadOnly = True
      TabOrder = 14
      Width = 493
    end
    object cxsQtyBrgSample: TcxSpinEdit
      Left = 103
      Top = 195
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 16
      Width = 78
    end
    object cxtSatuanSamples: TcxTextEdit
      Left = 185
      Top = 195
      Properties.ReadOnly = True
      TabOrder = 17
      Width = 103
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 118
      Caption = 'Deskripsi'
    end
    object cxmDeskripsiHslPercobaan: TcxMemo
      Left = 103
      Top = 117
      Lines.Strings = (
        '')
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      TabOrder = 11
      Height = 47
      Width = 596
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 132
      Caption = 'Hasil Percobaan'
    end
    object cxLabel9: TcxLabel
      Left = 15
      Top = 41
      Caption = 'Kode Brg.'
    end
    object cxtKodeBrg: TcxTextEdit
      Left = 103
      Top = 39
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 83
    end
    object cxtDesk: TcxTextEdit
      Left = 190
      Top = 39
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 456
    end
    object cxsHslPrd: TcxSpinEdit
      Left = 494
      Top = 13
      Properties.ValueType = vtFloat
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object cxtSatuan: TcxTextEdit
      Left = 619
      Top = 13
      TabOrder = 4
      Text = 'cxtSatuan'
      Visible = False
      Width = 121
    end
    object cxChkPosting: TcxCheckBox
      Left = 227
      Top = 13
      Caption = 'Posting '
      TabOrder = 2
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 515
    Width = 824
    Height = 135
    inherited btnKeluar: TButton
      Left = 482
      Top = 20
      TabOrder = 4
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
    inherited btnSimpan: TButton
      Left = 405
      Top = 20
      TabOrder = 3
      Visible = False
    end
    object btnSimpan2: TButton
      Left = 15
      Top = 18
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 1
      OnClick = btnSimpanClick
    end
    object btnKeluar2: TButton
      Left = 92
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 2
      OnClick = btnKeluarClick
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi FROM tbl_barang '
      'WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 450
    Top = 21
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 480
    Top = 21
  end
  object tmpBOM: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.18.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 515
    Top = 21
    object tmpBOMno_spk: TStringField
      FieldName = 'no_spk'
    end
    object tmpBOMkode_brg: TIntegerField
      FieldName = 'kode_brg'
    end
    object tmpBOMpakai: TIntegerField
      FieldName = 'pakai'
    end
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 715
    Top = 145
  end
end
