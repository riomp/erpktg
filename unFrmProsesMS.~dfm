object frmProsesMS: TfrmProsesMS
  Left = 284
  Top = 29
  Width = 1089
  Height = 706
  Caption = 'Proses Master Schedule'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 39
    Width = 48
    Height = 13
    Caption = 'Jenis SPK'
  end
  object Label2: TLabel
    Left = 10
    Top = 87
    Width = 37
    Height = 13
    Caption = 'No. MO'
  end
  object Label3: TLabel
    Left = 10
    Top = 161
    Width = 62
    Height = 13
    Caption = 'Kode Barang'
  end
  object Label4: TLabel
    Left = 10
    Top = 186
    Width = 43
    Height = 13
    Caption = 'Deskripsi'
  end
  object Label5: TLabel
    Left = 10
    Top = 63
    Width = 44
    Height = 13
    Caption = 'Customer'
  end
  object Label6: TLabel
    Left = 10
    Top = 272
    Width = 71
    Height = 13
    Caption = 'Berat Standard'
  end
  object Label7: TLabel
    Left = 10
    Top = 136
    Width = 93
    Height = 13
    Caption = 'Qty. MO / Qty. SPK'
  end
  object Label8: TLabel
    Left = 10
    Top = 297
    Width = 43
    Height = 13
    Caption = 'Toleransi'
  end
  object Label13: TLabel
    Left = 10
    Top = 348
    Width = 94
    Height = 13
    Caption = 'Tgl. Perkiraan Prod.'
  end
  object Label14: TLabel
    Left = 240
    Top = 296
    Width = 8
    Height = 13
    Caption = '%'
  end
  object Label16: TLabel
    Left = 290
    Top = 348
    Width = 94
    Height = 13
    Caption = 'Tgl. Pkiraan Selesai'
  end
  object Label17: TLabel
    Left = 10
    Top = 211
    Width = 73
    Height = 13
    Caption = 'Keterangan SO'
  end
  object Label20: TLabel
    Left = 10
    Top = 321
    Width = 28
    Height = 13
    Caption = 'Mesin'
  end
  object Label9: TLabel
    Left = 10
    Top = 14
    Width = 87
    Height = 13
    Caption = 'No. SPK / No. SO'
  end
  object Label10: TLabel
    Left = 928
    Top = 12
    Width = 67
    Height = 13
    Caption = 'Bill Of Material'
    Visible = False
  end
  object Label15: TLabel
    Left = 10
    Top = 111
    Width = 37
    Height = 13
    Caption = 'Qty. SO'
  end
  object Label11: TLabel
    Left = 318
    Top = 272
    Width = 99
    Height = 13
    Caption = 'Berat Per Unit (BOM)'
  end
  object lblS_Berat: TLabel
    Left = 254
    Top = 272
    Width = 48
    Height = 13
    Caption = 'lblS_Berat'
  end
  object lblS_Berat2: TLabel
    Left = 509
    Top = 272
    Width = 48
    Height = 13
    Caption = 'lblS_Berat'
  end
  object Label18: TLabel
    Left = 10
    Top = 373
    Width = 39
    Height = 13
    Caption = 'Lain-lain'
  end
  object Label19: TLabel
    Left = 290
    Top = 373
    Width = 82
    Height = 13
    Caption = 'Keterangan PPIC'
  end
  object Label21: TLabel
    Left = 465
    Top = 87
    Width = 35
    Height = 13
    Caption = 'No. PO'
  end
  object pg: TPageControl
    Left = 9
    Top = 396
    Width = 1053
    Height = 225
    ActivePage = TabSheet1
    TabOrder = 13
    object TabSheet1: TTabSheet
      Caption = 'Bill Of Material'
      object Shape1: TShape
        Left = -5
        Top = -5
        Width = 1051
        Height = 206
        Brush.Color = clSkyBlue
        Pen.Style = psClear
      end
      object Label12: TLabel
        Left = 6
        Top = 9
        Width = 83
        Height = 13
        Caption = 'Deskripsi Formula'
        Transparent = True
      end
      object nxGrdDet: TNextGrid
        Left = 7
        Top = 56
        Width = 1031
        Height = 105
        Options = [goGrid, goHeader]
        TabOrder = 0
        TabStop = True
        OnCellClick = nxGrdDetCellClick
        OnCellDblClick = nxGrdDetCellDblClick
        object nxColHapus2: TNxImageColumn
          Color = clSkyBlue
          DefaultValue = '0'
          DefaultWidth = 39
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Hapus'
          Header.Alignment = taCenter
          Position = 0
          SortType = stNumeric
          Visible = False
          Width = 39
          Images = frmUtama.ImageList1
        end
        object nxColEdit: TNxHyperlinkColumn
          Color = clSkyBlue
          DefaultWidth = 36
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Edit'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 36
        end
        object NxIncrementColumn1: TNxIncrementColumn
          DefaultWidth = 33
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'No.'
          Position = 2
          SortType = stAlphabetic
          Width = 33
        end
        object nxColKodeBrg: TNxNumberColumn
          Alignment = taLeftJustify
          DefaultValue = '0'
          DefaultWidth = 75
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Kode'
          Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
          Position = 3
          SortType = stNumeric
          Width = 75
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColDesk: TNxTextColumn
          DefaultWidth = 289
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Deskripsi'
          Position = 4
          SortType = stAlphabetic
          Width = 289
        end
        object nxColStok: TNxNumberColumn
          Color = clYellow
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Stok'
          Header.Alignment = taRightJustify
          Position = 5
          SortType = stNumeric
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColGudang: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Gudang'
          Position = 6
          SortType = stAlphabetic
          Visible = False
        end
        object nxCmbSatuan: TNxComboBoxColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Satuan'
          Header.Alignment = taCenter
          Position = 7
          SortType = stAlphabetic
          Visible = False
        end
        object nxColFormulasi: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Formulasi'
          Header.Alignment = taRightJustify
          Position = 8
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColKomposisi: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Komposisi'
          Header.Alignment = taRightJustify
          Position = 9
          SortType = stNumeric
          Visible = False
          FormatMask = '0.#,##'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColQtyMO: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty. SPK'
          Header.Alignment = taRightJustify
          Position = 10
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColQtyBOM2: TNxNumberColumn
          Color = clFuchsia
          DefaultValue = '0'
          DefaultWidth = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Jml. BOM'
          Header.Alignment = taRightJustify
          Position = 11
          SortType = stNumeric
          Width = 90
          FormatMask = '#,##0.0000'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColTotal: TNxNumberColumn
          Color = clAqua
          DefaultValue = '0'
          DefaultWidth = 92
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Footer.Alignment = taRightJustify
          Footer.FormulaKind = fkSum
          Footer.FormatMask = '0.#,###'
          Header.Caption = 'Jumlah Total'
          Header.Alignment = taRightJustify
          Position = 12
          SortType = stNumeric
          Width = 92
          FormatMask = '#,##0.00'
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColSatuan: TNxTextColumn
          DefaultWidth = 53
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Satuan'
          Header.Alignment = taCenter
          Position = 13
          SortType = stAlphabetic
          Width = 53
        end
        object NxTextColumn2: TNxTextColumn
          DefaultWidth = 131
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'LKM'
          Header.Alignment = taCenter
          Position = 14
          SortType = stAlphabetic
          Visible = False
          Width = 131
        end
        object nxColQtyBom: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 15
          SortType = stNumeric
          Visible = False
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColDibuka: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 16
          SortType = stAlphabetic
          Visible = False
        end
        object nxColDibatasi: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Position = 17
          SortType = stAlphabetic
          Visible = False
        end
        object nxColQty2: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Qty 2'
          Position = 18
          SortType = stNumeric
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColSatuan2: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Satuan 2'
          Position = 19
          SortType = stAlphabetic
        end
        object nxColTotal2: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Total 2'
          Position = 20
          SortType = stNumeric
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColBpu: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'BPU'
          Position = 21
          SortType = stNumeric
          Increment = 1.000000000000000000
          Precision = 0
        end
        object nxColNamaFormula: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Nama Formula'
          Position = 22
          SortType = stAlphabetic
        end
      end
      object cxlFormula: TcxLookupComboBox
        Left = 94
        Top = 5
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            Caption = 'Nama Formula'
            Width = 400
            FieldName = 'dekripsi_b'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = dsFormula
        TabOrder = 1
        Width = 597
      end
      object btnProses: TButton
        Left = 759
        Top = 11
        Width = 75
        Height = 22
        Caption = 'Proses'
        TabOrder = 2
        Visible = False
        OnClick = btnProsesClick
      end
      object btnTambah: TButton
        Left = 94
        Top = 29
        Width = 75
        Height = 22
        Caption = 'Proses'
        TabOrder = 3
        OnClick = btnTambahClick
      end
      object cxLabel10: TcxLabel
        Left = 177
        Top = 33
        Caption = 
          'Perhatian : Mohon untuk tekan tombol Proses jika ada perubahan F' +
          'ormula, toleransi atau Qty. SPK'
        Style.TextColor = clRed
        Transparent = True
      end
    end
  end
  object cxtNoSO: TcxTextEdit
    Left = 254
    Top = 11
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 0
    Width = 138
  end
  object cxtNoMO: TcxTextEdit
    Left = 112
    Top = 84
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 1
    Width = 345
  end
  object cxtKodeBrg: TcxTextEdit
    Left = 112
    Top = 158
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 2
    Width = 345
  end
  object cxtDeskripsi: TcxTextEdit
    Left = 112
    Top = 183
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 3
    Width = 449
  end
  object cxtNamaCust: TcxTextEdit
    Left = 112
    Top = 60
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 4
    Width = 345
  end
  object cxsQtyMO: TcxSpinEdit
    Left = 112
    Top = 133
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0.00  '
    Properties.EditFormat = '#,##0.00  '
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    Style.Color = clMoneyGreen
    TabOrder = 5
    Width = 121
  end
  object cxsToleransi: TcxSpinEdit
    Left = 112
    Top = 293
    Properties.Alignment.Horz = taRightJustify
    Properties.AssignedValues.MinValue = True
    Properties.DisplayFormat = '#,##0.00  '
    Properties.EditFormat = '#,##0.00  '
    Properties.MaxValue = 50.000000000000000000
    Properties.ReadOnly = False
    Properties.ValueType = vtFloat
    Properties.OnChange = cxsToleransiPropertiesChange
    TabOrder = 6
    Width = 123
  end
  object btnKeluar: TButton
    Left = 88
    Top = 630
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 7
    OnClick = btnKeluarClick
  end
  object btnSimpan: TButton
    Left = 9
    Top = 630
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 8
    OnClick = btnSimpanClick
  end
  object cxdTglPProd: TcxDateEdit
    Left = 112
    Top = 343
    Properties.InputKind = ikStandard
    Properties.Kind = ckDateTime
    TabOrder = 9
    Width = 173
  end
  object btnBersih: TButton
    Left = 168
    Top = 630
    Width = 75
    Height = 25
    Caption = 'Bersih'
    TabOrder = 10
    Visible = False
  end
  object cxsTotal: TcxSpinEdit
    Left = 594
    Top = 339
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '0.0'
    Properties.ReadOnly = True
    Properties.SpinButtons.Visible = False
    Properties.ValueType = vtFloat
    TabOrder = 11
    Visible = False
    Width = 94
  end
  object cxdTglPSelesai: TcxDateEdit
    Left = 392
    Top = 343
    Properties.InputKind = ikStandard
    Properties.Kind = ckDateTime
    TabOrder = 12
    Width = 173
  end
  object cxsKapasitas: TcxSpinEdit
    Left = 967
    Top = 58
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,#0.00'
    Properties.EditFormat = '#,#0.00'
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    Style.Color = clMoneyGreen
    TabOrder = 14
    Visible = False
    Width = 63
  end
  object cxlMesin: TcxLookupComboBox
    Left = 112
    Top = 318
    Properties.DropDownAutoSize = True
    Properties.KeyFieldNames = 'kode'
    Properties.ListColumns = <
      item
        Caption = 'Nama Mesin'
        FieldName = 'nama'
      end
      item
        Caption = 'Kode'
        Width = 50
        FieldName = 'kode'
      end>
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsMesin
    TabOrder = 15
    Width = 258
  end
  object cxmKetSO: TcxMemo
    Left = 113
    Top = 208
    Lines.Strings = (
      '')
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 16
    Height = 56
    Width = 448
  end
  object cxsBeratPUnit: TcxSpinEdit
    Left = 47
    Top = 233
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0.00  '
    Properties.EditFormat = '#,##0.00  '
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    TabOrder = 17
    Visible = False
    Width = 84
  end
  object cxtNoSPK: TcxTextEdit
    Left = 112
    Top = 11
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 18
    Width = 138
  end
  object cxsQtySPK: TcxSpinEdit
    Left = 237
    Top = 133
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0.00  '
    Properties.EditFormat = '#,##0.00  '
    Properties.ReadOnly = False
    Properties.SpinButtons.ShowFastButtons = True
    Properties.ValueType = vtFloat
    TabOrder = 19
    Width = 121
  end
  object cxCmbJenisSPK: TcxComboBox
    Left = 112
    Top = 35
    Properties.DropDownListStyle = lsEditFixedList
    TabOrder = 20
    Width = 280
  end
  object nxGrdBom: TNextGrid
    Left = 1015
    Top = 92
    Width = 685
    Height = 139
    Options = [goGrid, goHeader]
    TabOrder = 21
    TabStop = True
    Visible = False
    WantReturns = True
    WantTabs = True
    OnAfterEdit = nxGrdBomAfterEdit
    OnCellDblClick = nxGrdBomCellDblClick
    StartRowCount = 1
    object nxNoUrut: TNxIncrementColumn
      Alignment = taCenter
      DefaultWidth = 30
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'No.'
      Position = 0
      SortType = stAlphabetic
      Width = 30
    end
    object nxColDeskBahan: TNxTextColumn
      DefaultWidth = 406
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Deskripsi Bahan'
      InplaceEdit = NxEdit1
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      Position = 1
      SortType = stAlphabetic
      Width = 406
    end
    object nxColCmbSat: TNxComboBoxColumn
      DefaultWidth = 99
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Satuan'
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
      Position = 2
      SortType = stAlphabetic
      Width = 99
      Style = cbsDropDownList
    end
    object nxColQty: TNxNumberColumn
      DefaultValue = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Jumlah'
      Header.Alignment = taRightJustify
      Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
      Position = 3
      SortType = stNumeric
      FormatMask = '#,##0.00'
      Increment = 1.000000000000000000
      Precision = 0
    end
    object nxColHapus: TNxImageColumn
      Alignment = taCenter
      DefaultValue = '0'
      DefaultWidth = 44
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Header.Caption = 'Hapus'
      Header.Alignment = taCenter
      Position = 4
      SortType = stNumeric
      Width = 44
      Images = frmUtama.ImageList1
    end
  end
  object NxEdit1: TNxEdit
    Left = 344
    Top = 538
    Width = 121
    Height = 21
    BorderStyle = bsNone
    CharCase = ecUpperCase
    MaxLength = 100
    TabOrder = 22
    Text = 'NXEDIT1'
    Visible = False
  end
  object btnSimpan2: TButton
    Left = 335
    Top = 630
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 23
    Visible = False
    OnClick = btnSimpan2Click
  end
  object cxsQtySO: TcxSpinEdit
    Left = 112
    Top = 108
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0.00  '
    Properties.EditFormat = '#,##0.00  '
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    Style.Color = clMoneyGreen
    TabOrder = 24
    Width = 121
  end
  object cxsBeratPerUnitBom: TcxSpinEdit
    Left = 422
    Top = 268
    Properties.Alignment.Horz = taRightJustify
    Properties.DisplayFormat = '#,##0.00  '
    Properties.EditFormat = '#,##0.00  '
    Properties.ReadOnly = True
    Properties.ValueType = vtFloat
    TabOrder = 25
    Width = 84
  end
  object GroupBox1: TGroupBox
    Left = 569
    Top = 152
    Width = 446
    Height = 254
    Caption = ' Spesifikasi Teknis '
    TabOrder = 26
    object cxLabel1: TcxLabel
      Left = 12
      Top = 20
      Caption = 'Warna'
    end
    object cxtWarna: TcxTextEdit
      Left = 95
      Top = 19
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 1
      Width = 336
    end
    object cxtPanjang: TcxTextEdit
      Left = 95
      Top = 44
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 2
      Width = 189
    end
    object cxLabel2: TcxLabel
      Left = 12
      Top = 45
      Caption = 'Panjang'
    end
    object cxLabel3: TcxLabel
      Left = 12
      Top = 70
      Caption = 'Lebar'
    end
    object cxtLebar: TcxTextEdit
      Left = 95
      Top = 69
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 5
      Width = 189
    end
    object cxLabel4: TcxLabel
      Left = 12
      Top = 95
      Caption = 'Tebal'
    end
    object cxtTebal: TcxTextEdit
      Left = 95
      Top = 94
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 7
      Width = 189
    end
    object cxLabel5: TcxLabel
      Left = 12
      Top = 120
      Caption = 'Diameter'
    end
    object cxtDiameter: TcxTextEdit
      Left = 95
      Top = 119
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 9
      Width = 189
    end
    object cxLabel6: TcxLabel
      Left = 12
      Top = 145
      Caption = 'Diameter Dalam'
    end
    object cxtDiameterDlm: TcxTextEdit
      Left = 95
      Top = 144
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 11
      Width = 189
    end
    object cxLabel7: TcxLabel
      Left = 12
      Top = 170
      Caption = 'Diameter Luar'
    end
    object cxtDiameterLuar: TcxTextEdit
      Left = 95
      Top = 169
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 13
      Width = 189
    end
    object cxLabel8: TcxLabel
      Left = 12
      Top = 195
      Caption = 'Packing'
    end
    object cxtPacking: TcxTextEdit
      Left = 95
      Top = 194
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 15
      Width = 336
    end
    object cxLabel9: TcxLabel
      Left = 12
      Top = 220
      Caption = 'Flow Process'
    end
    object cxtFlowProc: TcxTextEdit
      Left = 95
      Top = 219
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 17
      Width = 336
    end
  end
  object cxtLain2: TcxTextEdit
    Left = 112
    Top = 369
    Properties.CharCase = ecUpperCase
    TabOrder = 27
    Width = 174
  end
  object cxtKetPPIC: TcxTextEdit
    Left = 392
    Top = 369
    Properties.CharCase = ecUpperCase
    TabOrder = 28
    Width = 174
  end
  object cxtBeratPUnit: TcxTextEdit
    Left = 112
    Top = 268
    TabOrder = 29
    Text = 'cxtBeratPUnit'
    Width = 139
  end
  object cxChkBOM: TcxCheckBox
    Left = 406
    Top = 12
    Caption = 'Barang Ini Memiliki BOM'
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 30
    Width = 170
  end
  object cxtLokasi: TcxTextEdit
    Left = 594
    Top = 11
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 31
    Visible = False
    Width = 138
  end
  object cxtKondisi: TcxTextEdit
    Left = 594
    Top = 36
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 32
    Visible = False
    Width = 138
  end
  object cxtNoPO: TcxTextEdit
    Left = 508
    Top = 84
    Properties.ReadOnly = True
    Style.Color = clMoneyGreen
    TabOrder = 33
    Width = 156
  end
  object pnlSPKGiling: TPanel
    Left = 220
    Top = 506
    Width = 701
    Height = 171
    TabOrder = 34
    Visible = False
    object Label22: TLabel
      Left = 100
      Top = 81
      Width = 52
      Height = 13
      Caption = 'Hasil Giling'
      Visible = False
    end
    object Label23: TLabel
      Left = 15
      Top = 11
      Width = 89
      Height = 13
      Caption = 'Kode Barang Input'
    end
    object Label24: TLabel
      Left = 15
      Top = 34
      Width = 43
      Height = 13
      Caption = 'Deskripsi'
    end
    object cxlHslGiling: TcxLookupComboBox
      Left = 161
      Top = 77
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
      Properties.ListSource = dsHslGiling
      TabOrder = 0
      Visible = False
      Width = 504
    end
    object cxtKodeBrgInput: TcxTextEdit
      Left = 112
      Top = 8
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 1
      Width = 119
    end
    object cxtDeskBrgInput: TcxTextEdit
      Left = 112
      Top = 31
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 2
      Width = 504
    end
  end
  object btnUpdateBOM: TButton
    Left = 362
    Top = 130
    Width = 144
    Height = 25
    Caption = 'Update Perhitungan BOM'
    TabOrder = 35
    Visible = False
  end
  object cxChkWIP: TcxCheckBox
    Left = 406
    Top = 31
    Caption = 'WIP (Akhir)'
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 36
    Width = 100
  end
  object cxChkFAI: TcxCheckBox
    Left = 499
    Top = 31
    Caption = 'FAI (First Article Inspection)'
    ParentFont = False
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 37
    Width = 187
  end
  object zqFormula: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_formula_spk WHERE kode = :kode')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode'
        ParamType = ptUnknown
      end>
    Left = 748
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode'
        ParamType = ptUnknown
      end>
  end
  object dsFormula: TDataSource
    DataSet = zqFormula
    Left = 780
    Top = 68
  end
  object zqMesin: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin WHERE f_aktif = 1')
    Params = <>
    Left = 676
    Top = 51
  end
  object dsMesin: TDataSource
    DataSet = zqMesin
    Left = 708
    Top = 59
  end
  object zTblGrpMesin: TZTable
    Connection = dm.zConn
    TableName = 'tbl_group_mesin'
    Left = 849
    Top = 70
  end
  object dsGrpMesin: TDataSource
    DataSet = zTblGrpMesin
    Left = 883
    Top = 66
  end
  object zqrHslGiling: TZQuery
    Connection = dm.zConn
    ReadOnly = True
    SQL.Strings = (
      'SELECT deskripsi, kode FROM tbl_barang '
      'WHERE f_aktif = 1'
      'ORDER BY deskripsi')
    Params = <>
    Left = 796
    Top = 106
  end
  object dsHslGiling: TDataSource
    DataSet = zqrHslGiling
    Left = 828
    Top = 114
  end
end
