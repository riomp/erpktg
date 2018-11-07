object frmTmpBuatSPK: TfrmTmpBuatSPK
  Left = 96
  Top = 107
  Width = 1305
  Height = 659
  Caption = 'frmTmpBuatSPK'
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
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 1289
    Height = 620
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BorderStyle = bsNone
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 10
      Top = 6
      Caption = 'No. SPK'
    end
    object cxtNoSPK: TcxTextEdit
      Left = 102
      Top = 5
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 127
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 31
      Caption = 'Kode Brg / No IS'
    end
    object cxtKodeBrg: TcxTextEdit
      Left = 102
      Top = 30
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 127
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 56
      Caption = 'Deskripsi'
    end
    object cxtDeskripsi: TcxTextEdit
      Left = 102
      Top = 55
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 634
    end
    object cxdStartUp: TcxDateEdit
      Left = 102
      Top = 230
      Properties.Kind = ckDateTime
      Properties.OnChange = cxdStartUpPropertiesChange
      Style.Color = clYellow
      TabOrder = 6
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 10
      Top = 231
      Caption = 'Start Up'
    end
    object cxLabel5: TcxLabel
      Left = 10
      Top = 256
      Caption = 'Mulai'
    end
    object cxdMulai: TcxDateEdit
      Left = 102
      Top = 255
      Properties.Kind = ckDateTime
      Properties.ReadOnly = False
      Style.Color = clYellow
      TabOrder = 9
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 10
      Top = 281
      Caption = 'Selesai'
    end
    object cxdSelesai: TcxDateEdit
      Left = 102
      Top = 280
      Properties.Kind = ckDateTime
      Style.Color = clYellow
      TabOrder = 11
      Width = 121
    end
    object cxsQtySPK: TcxSpinEdit
      Left = 102
      Top = 155
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = True
      Properties.SpinButtons.ShowFastButtons = True
      Properties.ValueType = vtFloat
      TabOrder = 12
      OnExit = cxsQtySPKExit
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 10
      Top = 157
      Caption = 'Qty. SPK'
    end
    object cxlMesin: TcxLookupComboBox
      Left = 102
      Top = 205
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          FieldName = 'kode'
        end
        item
          FieldName = 'nama'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsMesin
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = cxlMesinPropertiesEditValueChanged
      Style.Color = clYellow
      TabOrder = 14
      Width = 124
    end
    object cxLabel8: TcxLabel
      Left = 10
      Top = 208
      Caption = 'Mesin'
    end
    object btnProses: TButton
      Left = 1004
      Top = 476
      Width = 92
      Height = 22
      Caption = 'Proses'
      TabOrder = 16
      Visible = False
    end
    object cxLabel9: TcxLabel
      Left = 230
      Top = 231
      Caption = 'Keterangan'
    end
    object cxMemoKet: TcxMemo
      Left = 294
      Top = 230
      TabOrder = 18
      Height = 61
      Width = 402
    end
    object cxCmbJenisBentuk: TcxComboBox
      Left = 102
      Top = 105
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      TabOrder = 19
      Width = 154
    end
    object cxLabel11: TcxLabel
      Left = 10
      Top = 106
      Caption = 'Jenis Bentuk'
    end
    object cxtNoIS: TcxTextEdit
      Left = 232
      Top = 30
      Properties.ReadOnly = True
      TabOrder = 21
      Width = 127
    end
    object cxLabel12: TcxLabel
      Left = 10
      Top = 81
      Caption = 'Bahan Dasar'
    end
    object cxtBahanDasar: TcxTextEdit
      Left = 102
      Top = 80
      TabOrder = 23
      Width = 154
    end
    object cxLabel13: TcxLabel
      Left = 262
      Top = 81
      Caption = 'Konstanta Berat Jenis'
    end
    object cxsBeratJenis: TcxSpinEdit
      Left = 373
      Top = 80
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 25
      Width = 121
    end
    object cxsBerat: TcxSpinEdit
      Left = 102
      Top = 180
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = True
      Properties.SpinButtons.ShowFastButtons = True
      Properties.ValueType = vtFloat
      TabOrder = 26
      Width = 121
    end
    object cxLabel14: TcxLabel
      Left = 10
      Top = 182
      Caption = 'Berat'
    end
    object cxtSatA: TcxTextEdit
      Left = 738
      Top = 17
      Properties.ReadOnly = True
      TabOrder = 28
      Visible = False
      Width = 76
    end
    object cxtSatB: TcxTextEdit
      Left = 226
      Top = 180
      Properties.ReadOnly = True
      TabOrder = 29
      Width = 76
    end
    object cxtUnitID: TcxTextEdit
      Left = 304
      Top = 155
      Properties.ReadOnly = True
      TabOrder = 30
      Visible = False
      Width = 76
    end
    object cxlSatuan: TcxLookupComboBox
      Left = 226
      Top = 155
      Properties.KeyFieldNames = 'unitid'
      Properties.ListColumns = <
        item
          Caption = 'Satuan'
          FieldName = 'unitid'
        end>
      Properties.ListSource = dsSatuan
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      TabOrder = 31
      Visible = False
      Width = 75
    end
    object cxLabel16: TcxLabel
      Left = 10
      Top = 131
      Caption = 'Toleransi (%)'
    end
    object cxsToleransi: TcxSpinEdit
      Left = 102
      Top = 130
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = True
      Properties.ValueType = vtInt
      TabOrder = 33
      Width = 104
    end
    object cxLabel15: TcxLabel
      Left = 10
      Top = 307
      Caption = 'Detail BOM'
    end
    object cxlFormula: TcxLookupComboBox
      Left = 102
      Top = 305
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
      Properties.MaxLength = 0
      Style.Color = clYellow
      TabOrder = 35
      Width = 597
    end
    object btnTambah: TButton
      Left = 102
      Top = 329
      Width = 74
      Height = 22
      Caption = 'Proses'
      TabOrder = 36
      OnClick = btnTambahClick
    end
    object nxGrdDet: TNextGrid
      Left = 148
      Top = 473
      Width = 849
      Height = 105
      Options = [goGrid, goHeader]
      TabOrder = 37
      TabStop = True
      Visible = False
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
        DefaultWidth = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 2
        SortType = stAlphabetic
        Width = 25
      end
      object nxColKodeBrg: TNxTextColumn
        DefaultValue = '0'
        DefaultWidth = 113
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Kode'
        Position = 3
        SortType = stAlphabetic
        Width = 113
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
        DefaultWidth = 69
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Stok'
        Header.Alignment = taRightJustify
        Position = 5
        SortType = stNumeric
        Width = 69
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
        DefaultWidth = 77
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Jml. BOM'
        Header.Alignment = taRightJustify
        Position = 11
        SortType = stNumeric
        Width = 77
        FormatMask = '#,##0.0000'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColSatuanBom: TNxTextColumn
        DefaultWidth = 43
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Satuan'
        Position = 12
        SortType = stAlphabetic
        Width = 43
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
        Position = 13
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
        Position = 14
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
        Position = 15
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
        Position = 16
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
        Position = 17
        SortType = stAlphabetic
        Visible = False
      end
      object nxColDibatasi: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Position = 18
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
        Position = 19
        SortType = stNumeric
        Visible = False
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
        Position = 20
        SortType = stAlphabetic
        Visible = False
      end
      object nxColTotal2: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Total 2'
        Position = 21
        SortType = stNumeric
        Visible = False
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
        Position = 22
        SortType = stNumeric
        Visible = False
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
        Position = 23
        SortType = stAlphabetic
        Visible = False
      end
    end
    object cxtRouting: TcxTextEdit
      Left = 232
      Top = 5
      Properties.ReadOnly = True
      TabOrder = 38
      Width = 127
    end
    object cxLabel10: TcxLabel
      Left = 181
      Top = 332
      Caption = 
        'Perhatian : Mohon untuk menekan tombol Proses jika ada perubahan' +
        ' Formula, toleransi atau Qty. SPK'
      Style.TextColor = clRed
      Transparent = True
    end
    object cxskonversipcs: TcxSpinEdit
      Left = 818
      Top = 41
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 40
      Visible = False
      Width = 121
    end
    object cxskonversim: TcxSpinEdit
      Left = 513
      Top = 154
      Properties.DisplayFormat = '#,#0.00'
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 41
      Visible = False
      Width = 121
    end
    object cxtEdit: TcxTextEdit
      Left = 818
      Top = 20
      TabOrder = 42
      Text = 'cxtEdit'
      Visible = False
      Width = 121
    end
    object cxLabel17: TcxLabel
      Left = 631
      Top = 14
      Caption = 'Qty. SPK (ROLL)'
      Visible = False
    end
    object cxLabel18: TcxLabel
      Left = 636
      Top = 36
      Caption = 'Qty. SPK (PCS)'
      Visible = False
    end
    object cxGrid2: TcxGrid
      Left = 15
      Top = 363
      Width = 959
      Height = 135
      TabOrder = 45
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTblBOM: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        OnEditing = cxTblBOMEditing
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
          end
          item
            Format = '#,#0.00'
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,###.00'
            Kind = skSum
            Column = cxColPersen
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnRecordChanged = cxTblBOMDataControllerRecordChanged
        OptionsData.Appending = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooterMultiSummaries = True
        object cxColId: TcxGridColumn
          Caption = 'ID'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 27
        end
        object cxCollockGroup: TcxGridColumn
          Caption = 'Lock Group'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 68
        end
        object cxColLockDetail: TcxGridColumn
          Caption = 'Lock Detail'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Width = 60
        end
        object cxColLockPersen: TcxGridColumn
          Caption = 'LockPersen'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = False
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          Visible = False
          Options.Editing = False
        end
        object cxColSub: TcxGridColumn
          Caption = 'Sub Group'
          Width = 86
        end
        object cxColBomKode1: TcxGridColumn
          Caption = 'Kode1'
          Visible = False
        end
        object cxColBomKode: TcxGridColumn
          Caption = 'Kode'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 107
        end
        object cxColDes2: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxColDes2PropertiesButtonClick
          Width = 244
        end
        object cxColDes: TcxGridColumn
          Caption = 'Deskrpisi'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.CharCase = ecUpperCase
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'deskripsi'
            end
            item
              FieldName = 'kode'
            end
            item
              FieldName = 'sub_group'
            end>
          Properties.ListSource = dsBrgBom
          Visible = False
          Width = 288
        end
        object cxColStock: TcxGridColumn
          Caption = 'Stok'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Options.Editing = False
          Width = 71
        end
        object cxColLayer1: TcxGridColumn
          Caption = 'Layer1/Luar(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Width = 90
        end
        object cxColLayer2: TcxGridColumn
          Caption = 'Layer2(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Width = 79
        end
        object cxColLayer3: TcxGridColumn
          Caption = 'Layer3(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Width = 76
        end
        object cxColLayer4: TcxGridColumn
          Caption = 'Layer4(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Width = 57
        end
        object cxColLayer5: TcxGridColumn
          Caption = 'Layer5(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
        end
        object cxColLayer6: TcxGridColumn
          Caption = 'Layer6(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
        end
        object cxColLayer7: TcxGridColumn
          Caption = 'Layer7(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
        end
        object cxColLayer8: TcxGridColumn
          Caption = 'Layer8(%)'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
        end
        object cxColPersen: TcxGridColumn
          Caption = '%'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.EditFormat = '#,##0.00'
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 45
        end
        object cxColBom: TcxGridColumn
          Caption = 'Jml.BOM'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = False
          Properties.ValueType = vtFloat
          Options.Editing = False
          Width = 78
        end
        object cxColSatuan: TcxGridColumn
          Caption = 'Satuan'
          Options.Editing = False
          Width = 46
        end
        object cxColTotal: TcxGridColumn
          Caption = 'Total'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          Options.Editing = False
        end
        object cxColSatuan1: TcxGridColumn
          Caption = 'Satuan'
          Options.Editing = False
        end
        object cxColMtp1: TcxGridColumn
          Caption = 'mtp_layer1'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp2: TcxGridColumn
          Caption = 'mtp_layer2'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp3: TcxGridColumn
          Caption = 'mtp_layer3'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp4: TcxGridColumn
          Caption = 'mtp_layer4'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp5: TcxGridColumn
          Caption = 'mtp_layer5'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp6: TcxGridColumn
          Caption = 'mtp_layer6'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp7: TcxGridColumn
          Caption = 'mtp_layer7'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
        object cxColMtp8: TcxGridColumn
          Caption = 'mtp_layer8'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.ValueType = vtFloat
          Visible = False
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxTblBOM
      end
    end
    object cxtSub: TcxTextEdit
      Left = 739
      Top = 270
      TabOrder = 46
      Visible = False
      Width = 203
    end
    object cxLabel19: TcxLabel
      Left = 235
      Top = 208
      Caption = 'Speed Mesin/Jam'
    end
    object cxsSpeed: TcxSpinEdit
      Left = 342
      Top = 205
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      TabOrder = 48
      Width = 124
    end
    object cxLabel20: TcxLabel
      Left = 265
      Top = 107
      Caption = 'DIE'
    end
    object cxLabel21: TcxLabel
      Left = 265
      Top = 132
      Caption = 'BUR'
    end
    object cxsDIE: TcxSpinEdit
      Left = 372
      Top = 105
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 51
      Width = 124
    end
    object cxsBUR: TcxSpinEdit
      Left = 372
      Top = 130
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 52
      Width = 124
    end
    object cxLabel22: TcxLabel
      Left = 305
      Top = 182
      Caption = 'Meter'
    end
    object cxsMeter: TcxSpinEdit
      Left = 342
      Top = 180
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.EditFormat = '#,##0'
      Properties.ReadOnly = True
      Properties.SpinButtons.ShowFastButtons = True
      Properties.ValueType = vtFloat
      TabOrder = 54
      Width = 121
    end
    object cxLabel23: TcxLabel
      Left = 760
      Top = 82
      Caption = 'Meter/Roll'
    end
    object cxsMeterRoll: TcxSpinEdit
      Left = 832
      Top = 80
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      Properties.OnChange = cxsMeterRollPropertiesChange
      Properties.OnEditValueChanged = cxsMeterRollPropertiesEditValueChanged
      Style.Color = clYellow
      TabOrder = 56
      Width = 129
    end
    object cxLabel24: TcxLabel
      Left = 760
      Top = 107
      Caption = 'KG/Roll'
    end
    object cxsKgMeter: TcxSpinEdit
      Left = 832
      Top = 105
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 58
      Width = 129
    end
    object cxLabel25: TcxLabel
      Left = 470
      Top = 182
      Caption = 'ROLL'
    end
    object cxsRoll1: TcxSpinEdit
      Left = 507
      Top = 180
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.EditFormat = '#,##0 '
      Properties.ReadOnly = True
      Properties.SpinButtons.ShowFastButtons = True
      Properties.ValueType = vtFloat
      TabOrder = 60
      Width = 121
    end
    object cxsPCS: TcxSpinEdit
      Left = 465
      Top = 5
      TabOrder = 61
      Visible = False
      Width = 121
    end
    object cxsConv: TcxSpinEdit
      Left = 387
      Top = 155
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,##0'
      Properties.EditFormat = '#,##0 '
      Properties.ReadOnly = True
      Properties.SpinButtons.ShowFastButtons = True
      Properties.ValueType = vtFloat
      TabOrder = 62
      Visible = False
      Width = 121
    end
    object cxtFormula: TcxTextEdit
      Left = 739
      Top = 300
      TabOrder = 63
      Text = 'A'
      Visible = False
      Width = 302
    end
    object cxChkAktif: TcxCheckBox
      Left = 360
      Top = 5
      Caption = 'Inline Proses'
      Properties.NullStyle = nssUnchecked
      TabOrder = 64
      Width = 121
    end
    object cxLabel26: TcxLabel
      Left = 500
      Top = 108
      Caption = 'Jumlah Line'
    end
    object cxsLine: TcxSpinEdit
      Left = 607
      Top = 105
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0'
      Properties.EditFormat = '#,##0'
      Properties.ReadOnly = False
      Properties.ValueType = vtInt
      Properties.OnEditValueChanged = cxsLinePropertiesEditValueChanged
      Style.Color = clYellow
      TabOrder = 66
      Value = 1
      Width = 129
    end
    object cxsbj: TcxSpinEdit
      Left = 462
      Top = 30
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      TabOrder = 67
      Visible = False
      Width = 124
    end
    object cxLabel27: TcxLabel
      Left = 500
      Top = 83
      Caption = 'Lebar Tube'
    end
    object cxsTube: TcxSpinEdit
      Left = 607
      Top = 80
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.ReadOnly = False
      Properties.ValueType = vtFloat
      Properties.OnChange = cxsTubePropertiesChange
      Properties.OnEditValueChanged = cxsTubePropertiesEditValueChanged
      Style.Color = clYellow
      TabOrder = 69
      Width = 129
    end
    object cxLabel28: TcxLabel
      Left = 500
      Top = 133
      Caption = 'Panjang Meter Extru'
    end
    object cxLabel29: TcxLabel
      Left = 760
      Top = 133
      Caption = 'Berat/Meter'
    end
    object cxsPanjangExtru: TcxSpinEdit
      Left = 607
      Top = 130
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 72
      Width = 129
    end
    object cxsBeratMeter: TcxSpinEdit
      Left = 832
      Top = 130
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '#,##0.00  '
      Properties.EditFormat = '#,##0.00  '
      Properties.MaxValue = 50.000000000000000000
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 73
      Width = 129
    end
    object cxGroupBox10: TcxGroupBox
      Left = 645
      Top = 154
      Caption = 'Treat Detail'
      TabOrder = 74
      Height = 72
      Width = 641
      object cxLabel30: TcxLabel
        Left = 10
        Top = 20
        Caption = 'Treat Luar (Dyne)'
      end
      object cxLabel31: TcxLabel
        Left = 10
        Top = 45
        Caption = 'Treat Dalam (Dyne)'
      end
      object cxLabel32: TcxLabel
        Left = 185
        Top = 20
        Caption = 'Pola treat Luar'
      end
      object cxLabel33: TcxLabel
        Left = 185
        Top = 45
        Caption = 'Pola Treat Dalam'
      end
      object cxtPolaTreatLuar: TcxTextEdit
        Left = 272
        Top = 18
        Properties.ReadOnly = True
        TabOrder = 4
        Width = 359
      end
      object cxtPolaTreatDalam: TcxTextEdit
        Left = 272
        Top = 43
        Properties.ReadOnly = True
        TabOrder = 5
        Width = 359
      end
      object cxsTreatLuar: TcxSpinEdit
        Left = 115
        Top = 16
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,##0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        TabOrder = 6
        Width = 66
      end
      object cxsTreatDalam: TcxSpinEdit
        Left = 115
        Top = 40
        Properties.DisplayFormat = '#,##0.00'
        Properties.EditFormat = '#,##0.00'
        Properties.ReadOnly = True
        Properties.ValueType = vtFloat
        TabOrder = 7
        Width = 66
      end
    end
  end
  object zqrMesin: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_mesin WHERE f_aktif = 1')
    Params = <>
    Left = 961
    Top = 66
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 993
    Top = 71
  end
  object zqrFormula: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_formula_spk WHERE  kode = :kode')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode'
        ParamType = ptUnknown
      end>
    Left = 1038
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode'
        ParamType = ptUnknown
      end>
  end
  object dsFormula: TDataSource
    DataSet = zqrFormula
    Left = 1065
    Top = 66
  end
  object zqrSatuan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det WHERE unitsetid = '#39'KILO1'#39)
    Params = <>
    Left = 968
    Top = 26
  end
  object dsSatuan: TDataSource
    DataSet = zqrSatuan
    Left = 1000
    Top = 26
  end
  object zqrBrgBom: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi,sub_group'
      'FROM tbl_barang '
      'WHERE (f_aktif = 1) and (LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39'))'
      ''
      'ORDER BY deskripsi')
    Params = <>
    Left = 1030
    Top = 24
  end
  object dsBrgBom: TDataSource
    DataSet = zqrBrgBom
    Left = 1060
    Top = 24
  end
end
