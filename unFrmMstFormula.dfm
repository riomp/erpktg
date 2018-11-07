inherited frmMstFormula: TfrmMstFormula
  Left = 404
  Top = 115
  Caption = 'Master Formula'
  ClientHeight = 725
  ClientWidth = 1092
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1092
    Height = 44
    inherited lblJudul: TLabel
      Left = 14
      Top = 6
      Width = 127
      Caption = 'Master Formula'
    end
    inherited cxtStat: TcxLabel
      Left = 13
      Top = 23
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Top = 44
    Width = 1092
    Height = 637
    inherited pg: TPageControl
      Width = 1090
      Height = 635
      inherited TabSheet1: TTabSheet
        Caption = 'Input'
        object cxLabel1: TcxLabel
          Left = 8
          Top = 25
          Caption = 'Deskripsi'
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 49
          Caption = 'Kode'
          Transparent = True
        end
        object pgDet: TPageControl
          Left = 1
          Top = 104
          Width = 1077
          Height = 502
          ActivePage = TabSheet4
          TabOrder = 7
          OnChange = pgDetChange
          OnChanging = pgDetChanging
          object TabSheet3: TTabSheet
            Caption = 'Detail Formula'
            object nxGrdF: TNextGrid
              Left = 8
              Top = 37
              Width = 538
              Height = 207
              Options = [goGrid, goHeader]
              TabOrder = 0
              TabStop = True
              OnCellClick = nxGrdFCellClick
              OnCellDblClick = nxGrdFCellDblClick
              object nxColNoUrut2: TNxIncrementColumn
                DefaultWidth = 29
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'No.'
                ParentFont = False
                Position = 0
                SortType = stAlphabetic
                Width = 29
              end
              object nxColHapus2: TNxImageColumn
                Alignment = taCenter
                DefaultValue = '0'
                DefaultWidth = 41
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Hapus'
                ParentFont = False
                Position = 1
                SortType = stNumeric
                Width = 41
                Images = frmUtama.ImageList1
              end
              object NxImageColumn1: TNxImageColumn
                Alignment = taCenter
                DefaultValue = '0'
                DefaultWidth = 42
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Update'
                ParentFont = False
                Position = 2
                SortType = stNumeric
                Width = 42
                Images = frmUtama.ImageList2
              end
              object nxColNamaF: TNxTextColumn
                DefaultWidth = 334
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Nama Formula'
                Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 3
                SortType = stAlphabetic
                Width = 334
              end
              object nxColIndex: TNxTextColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Position = 4
                SortType = stAlphabetic
                Visible = False
              end
              object nxColLD: TNxHyperlinkColumn
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                Header.Caption = 'Detail'
                Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                ParentFont = False
                Position = 5
                SortType = stAlphabetic
              end
            end
            object cxLabel11: TcxLabel
              Left = 8
              Top = 11
              Caption = 'Nama Formula '
              Transparent = True
            end
            object cxtNamaFormula: TcxTextEdit
              Left = 83
              Top = 10
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 336
            end
            object Button1: TButton
              Left = 422
              Top = 10
              Width = 75
              Height = 21
              Caption = 'Tambah'
              TabOrder = 3
              OnClick = Button1Click
            end
            object PageControl1: TPageControl
              Left = 570
              Top = 105
              Width = 541
              Height = 116
              ActivePage = TabSheet5
              TabOrder = 4
              Visible = False
              object TabSheet5: TTabSheet
                Caption = 'TabSheet5'
              end
              object TabSheet6: TTabSheet
                Caption = 'TabSheet6'
                ImageIndex = 1
              end
              object TabSheet7: TTabSheet
                Caption = 'TabSheet7'
                ImageIndex = 2
              end
            end
            object cxLabel16: TcxLabel
              Left = 9
              Top = 245
              Caption = 
                'Ket : Double Klik pada kolom Hapus untuk menghapus detail formul' +
                'a'
              Style.TextColor = clBlue
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Subdetail Formula'
            ImageIndex = 1
            object btnTmbhDet: TButton
              Left = 10
              Top = 237
              Width = 121
              Height = 25
              Caption = '&Tambah / Update'
              TabOrder = 0
              OnClick = btnTmbhDetClick
            end
            object cxLabel8: TcxLabel
              Left = 10
              Top = 104
              Caption = 'Satuan'
              Transparent = True
            end
            object cxtSatuan: TcxTextEdit
              Left = 85
              Top = 102
              Properties.ReadOnly = True
              Style.Color = clMoneyGreen
              TabOrder = 2
              Visible = False
              Width = 120
            end
            object cxsQty: TcxSpinEdit
              Left = 85
              Top = 77
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.0000'
              Properties.EditFormat = '#,##0.0000'
              Properties.ValueType = vtFloat
              TabOrder = 3
              Width = 121
            end
            object cxLabel4: TcxLabel
              Left = 10
              Top = 79
              Caption = 'Quantity'
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 10
              Top = 54
              Caption = 'Kode Barang'
              Transparent = True
            end
            object cxsKodeDet: TcxSpinEdit
              Left = 85
              Top = 52
              Properties.Alignment.Horz = taLeftJustify
              Properties.ReadOnly = True
              Properties.SpinButtons.Visible = False
              Style.Color = clMoneyGreen
              TabOrder = 6
              Width = 121
            end
            object cxlDeskripsiDet: TcxLookupComboBox
              Left = 85
              Top = 27
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  Caption = 'Deskripsi'
                  FieldName = 'deskripsi'
                end
                item
                  FieldName = 'kode'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsDet
              Properties.OnEditValueChanged = cxlDeskripsiDetPropertiesEditValueChanged
              TabOrder = 7
              Width = 466
            end
            object cxLabel2: TcxLabel
              Left = 10
              Top = 29
              Caption = 'Nama Barang'
              Transparent = True
            end
            object cxLabel10: TcxLabel
              Left = 10
              Top = 4
              Caption = 'Nama Formula'
              Transparent = True
            end
            object btnCari2: TButton
              Left = 553
              Top = 27
              Width = 20
              Height = 21
              Caption = '...'
              TabOrder = 10
              OnClick = btnCari2Click
            end
            object cxtNamaFormula2: TcxTextEdit
              Left = 85
              Top = 2
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.Color = clMoneyGreen
              TabOrder = 11
              Width = 486
            end
            object cxtID: TcxTextEdit
              Left = 580
              Top = 14
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.Color = clMoneyGreen
              TabOrder = 12
              Visible = False
              Width = 101
            end
            object cxLabel12: TcxLabel
              Left = 775
              Top = 36
              Caption = 'Dibuka'
              Transparent = True
              Visible = False
            end
            object cxLabel13: TcxLabel
              Left = 775
              Top = 61
              Caption = 'Dibatasi'
              Transparent = True
              Visible = False
            end
            object cxlDibuka: TcxLookupComboBox
              Left = 824
              Top = 34
              Properties.KeyFieldNames = 'kategori'
              Properties.ListColumns = <
                item
                  Caption = 'Dibuka'
                  FieldName = 'kategori'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsDibuka
              TabOrder = 15
              Visible = False
              Width = 178
            end
            object cxlDibatasi: TcxLookupComboBox
              Left = 824
              Top = 59
              Properties.KeyFieldNames = 'subkategori'
              Properties.ListColumns = <
                item
                  Caption = 'Dibatasi'
                  FieldName = 'subkategori'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsDibatasi
              TabOrder = 16
              Visible = False
              Width = 178
            end
            object ScrollBox1: TScrollBox
              Left = 10
              Top = 265
              Width = 1054
              Height = 206
              VertScrollBar.Position = 8
              TabOrder = 17
              object nxGrd: TNextGrid
                Left = 5
                Top = 2
                Width = 1016
                Height = 185
                Options = [goGrid, goHeader]
                TabOrder = 0
                TabStop = True
                OnCellClick = nxGrdCellClick
                OnCellDblClick = nxGrdCellDblClick
                object nxColNoUrut: TNxIncrementColumn
                  DefaultWidth = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'No.'
                  ParentFont = False
                  Position = 0
                  SortType = stAlphabetic
                  Width = 21
                end
                object nxColHapus: TNxImageColumn
                  Alignment = taCenter
                  DefaultValue = '0'
                  DefaultWidth = 39
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Header.Alignment = taCenter
                  ParentFont = False
                  Position = 1
                  SortType = stNumeric
                  Width = 39
                  Images = frmUtama.ImageList1
                end
                object nxColEdit: TNxImageColumn
                  Alignment = taCenter
                  DefaultValue = '0'
                  DefaultWidth = 33
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Edit'
                  Header.Alignment = taCenter
                  ParentFont = False
                  Position = 2
                  SortType = stNumeric
                  Width = 33
                  Images = frmUtama.ImageList2
                end
                object nxColKode: TNxTextColumn
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  ParentFont = False
                  Position = 3
                  SortType = stAlphabetic
                  Width = 70
                end
                object nxColDeskripsi: TNxTextColumn
                  DefaultWidth = 281
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  ParentFont = False
                  Position = 4
                  SortType = stAlphabetic
                  Width = 281
                end
                object nxColJenisIsian: TNxTextColumn
                  DefaultWidth = 75
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Jenis Isian'
                  ParentFont = False
                  Position = 5
                  SortType = stAlphabetic
                  Width = 75
                end
                object nxColLayer1: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer1 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 6
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer2: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer2 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 7
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer3: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer3 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 8
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer4: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer4 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 9
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer5: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer5 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 10
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer6: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer6 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 11
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer7: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer7 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 12
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColLayer8: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 70
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Layer8 (%)'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 13
                  SortType = stNumeric
                  Width = 70
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColQty: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 39
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Header.Alignment = taRightJustify
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 14
                  SortType = stNumeric
                  Width = 39
                  FormatMask = '#,#0.0000'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColPersen: TNxNumberColumn
                  DefaultValue = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Persen'
                  ParentFont = False
                  Position = 15
                  SortType = stNumeric
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object nxColSatuan: TNxTextColumn
                  DefaultWidth = 45
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  ParentFont = False
                  Position = 16
                  SortType = stAlphabetic
                  Width = 45
                end
                object nxColDibuka: TNxTextColumn
                  DefaultWidth = 126
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Dibuka'
                  ParentFont = False
                  Position = 17
                  SortType = stAlphabetic
                  Visible = False
                  Width = 126
                end
                object nxColDibatasi: TNxTextColumn
                  DefaultWidth = 120
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Dibatasi'
                  ParentFont = False
                  Position = 18
                  SortType = stAlphabetic
                  Visible = False
                  Width = 120
                end
                object NxColAlternatif: TNxImageColumn
                  DefaultValue = '0'
                  DefaultWidth = 40
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Alternatif'
                  ParentFont = False
                  Position = 19
                  SortType = stNumeric
                  Images = frmUtama.ImageList3
                end
                object NxColMLayer1: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 51
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'MLayer1'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 20
                  SortType = stNumeric
                  Visible = False
                  Width = 51
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer2: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 53
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Mid'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 21
                  SortType = stNumeric
                  Visible = False
                  Width = 53
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer3: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 44
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'In'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 22
                  SortType = stNumeric
                  Width = 44
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer4: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 53
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Mid'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 23
                  SortType = stNumeric
                  Visible = False
                  Width = 53
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer5: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 53
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Mid'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 24
                  SortType = stNumeric
                  Visible = False
                  Width = 53
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer6: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 53
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Mid'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 25
                  SortType = stNumeric
                  Visible = False
                  Width = 53
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer7: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 53
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Mid'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 26
                  SortType = stNumeric
                  Visible = False
                  Width = 53
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxColMLayer8: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 53
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Mid'
                  Header.Alignment = taRightJustify
                  ParentFont = False
                  Position = 27
                  SortType = stNumeric
                  Visible = False
                  Width = 53
                  FormatMask = '#,#0.00'
                  Increment = 1.000000000000000000
                  Precision = 0
                end
              end
              object nxGrd2: TNextGrid
                Left = 5
                Top = 264
                Width = 496
                Height = 105
                Options = [goGrid, goHeader]
                TabOrder = 1
                TabStop = True
                OnAfterEdit = nxGrd2AfterEdit
                OnCellDblClick = nxGrd2CellDblClick
                object NxIncrementColumn1: TNxIncrementColumn
                  DefaultWidth = 21
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'No.'
                  ParentFont = False
                  Position = 0
                  SortType = stAlphabetic
                  Width = 21
                end
                object nxColHapusAlt: TNxImageColumn
                  Alignment = taCenter
                  DefaultValue = '0'
                  DefaultWidth = 39
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Hapus'
                  Header.Alignment = taCenter
                  ParentFont = False
                  Position = 1
                  SortType = stNumeric
                  Width = 39
                  Images = frmUtama.ImageList1
                end
                object nxColKodeAlt: TNxTextColumn
                  DefaultWidth = 68
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Kode'
                  ParentFont = False
                  Position = 2
                  SortType = stAlphabetic
                  Width = 68
                end
                object nxColDeskAlt: TNxTextColumn
                  DefaultWidth = 281
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Deskripsi'
                  ParentFont = False
                  Position = 3
                  SortType = stAlphabetic
                  Width = 281
                end
                object NxNumberColumn1: TNxNumberColumn
                  Alignment = taLeftJustify
                  DefaultValue = '0'
                  DefaultWidth = 39
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Qty.'
                  Header.Alignment = taRightJustify
                  Options = [coCanClick, coCanInput, coCanSort, coPublicUsing, coShowTextFitHint]
                  ParentFont = False
                  Position = 4
                  SortType = stNumeric
                  Visible = False
                  Width = 39
                  Increment = 1.000000000000000000
                  Precision = 0
                end
                object NxTextColumn3: TNxTextColumn
                  DefaultWidth = 45
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Satuan'
                  ParentFont = False
                  Position = 5
                  SortType = stAlphabetic
                  Visible = False
                  Width = 45
                end
                object nxColUrutan: TNxNumberColumn
                  DefaultValue = '0'
                  DefaultWidth = 55
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  Header.Caption = 'Urutan'
                  Header.Alignment = taRightJustify
                  Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
                  ParentFont = False
                  Position = 6
                  SortType = stNumeric
                  Width = 55
                  Increment = 1.000000000000000000
                  Precision = 0
                end
              end
              object cxLabel17: TcxLabel
                Left = 5
                Top = 196
                Caption = 'Alternatif'
                Transparent = True
              end
              object Panel1: TPanel
                Left = 815
                Top = 264
                Width = 16
                Height = 126
                BevelOuter = bvNone
                TabOrder = 3
              end
              object cxlDeskripsi2: TcxLookupComboBox
                Left = 5
                Top = 238
                Properties.KeyFieldNames = 'kode'
                Properties.ListColumns = <
                  item
                    Caption = 'Deskripsi'
                    FieldName = 'deskripsi'
                  end
                  item
                    FieldName = 'kode'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dsKodeHead
                TabOrder = 4
                Width = 466
              end
              object btnCari3: TButton
                Left = 474
                Top = 237
                Width = 20
                Height = 21
                Caption = '...'
                TabOrder = 5
                OnClick = btnCari3Click
              end
              object btnTambahAlt: TButton
                Left = 497
                Top = 237
                Width = 69
                Height = 21
                Caption = 'Tambah'
                TabOrder = 6
                OnClick = btnTambahAltClick
              end
              object cxLabel14: TcxLabel
                Left = 512
                Top = 188
                Caption = 'Ket : Double Klik pada kolom Edit untuk melakukan pengeditan'
                Style.TextColor = clBlue
              end
              object cxtDeskAlt: TcxTextEdit
                Left = 5
                Top = 214
                ParentFont = False
                Properties.ReadOnly = True
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clRed
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.IsFontAssigned = True
                TabOrder = 8
                Width = 466
              end
            end
            object cxtKodeDet: TcxTextEdit
              Left = 85
              Top = 52
              TabOrder = 18
              Width = 121
            end
            object cxsPersen: TcxSpinEdit
              Left = 272
              Top = 77
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsPersenPropertiesEditValueChanged
              TabOrder = 19
              Width = 121
            end
            object cxLabel18: TcxLabel
              Left = 215
              Top = 79
              Caption = 'Persen'
              Transparent = True
            end
            object cxLabel19: TcxLabel
              Left = 215
              Top = 54
              Caption = 'Jenis Isian'
              Transparent = True
            end
            object cxCmbJenisIsian: TcxComboBox
              Left = 272
              Top = 52
              Properties.DropDownListStyle = lsEditFixedList
              TabOrder = 22
              Width = 121
            end
            object cxlSatuan: TcxLookupComboBox
              Left = 85
              Top = 102
              Properties.KeyFieldNames = 'unitid'
              Properties.ListColumns = <
                item
                  Caption = 'Unit ID'
                  FieldName = 'unitid'
                end>
              Properties.ListSource = dsUnit
              TabOrder = 23
              Width = 71
            end
            object cxGroupBox7: TcxGroupBox
              Left = 14
              Top = 158
              Caption = 'Tebal / Layer'
              TabOrder = 24
              Height = 73
              Width = 1047
              object cxGrid5: TcxGrid
                Left = 8
                Top = 75
                Width = 793
                Height = 231
                TabOrder = 0
                object cxTblMatSaran: TcxGridTableView
                  NavigatorButtons.ConfirmDelete = False
                  NavigatorButtons.Insert.Visible = False
                  NavigatorButtons.Append.Visible = True
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <
                    item
                      Format = '#,#0.00'
                      Kind = skSum
                      Column = cxCol_MS_Layer1
                    end
                    item
                      Format = '#,#0.00'
                      Kind = skSum
                      Column = cxCol_MS_Layer2
                    end
                    item
                      Format = '#,#0.00'
                      Kind = skSum
                      Column = cxCol_MS_Layer3
                    end
                    item
                      Format = '#,#0.00'
                      Kind = skSum
                      Column = cxCol_MS_Mono
                    end>
                  DataController.Summary.SummaryGroups = <>
                  OptionsData.Appending = True
                  OptionsView.Navigator = True
                  OptionsView.Footer = True
                  OptionsView.GroupByBox = False
                  object cxCol_MS_Bahan: TcxGridColumn
                    Caption = 'Bahan'
                    Options.Sorting = False
                    Width = 116
                  end
                  object cxCol_MS_KodeBrg: TcxGridColumn
                    Caption = 'Kode Barang'
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                    Width = 92
                  end
                  object cxCol_MS_Deskripsi: TcxGridColumn
                    Caption = 'Deskripsi'
                    PropertiesClassName = 'TcxLookupComboBoxProperties'
                    Properties.KeyFieldNames = 'kode'
                    Properties.ListColumns = <
                      item
                        Caption = 'Deskripsi'
                        FieldName = 'deskripsi'
                      end>
                    HeaderAlignmentHorz = taCenter
                    Width = 262
                  end
                  object cxCol_MS_Layer1: TcxGridColumn
                    Caption = 'Layer 1'
                    DataBinding.ValueType = 'Float'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.DisplayFormat = '#,#0.00'
                    Properties.EditFormat = '#,#0.00'
                    Properties.ValueType = vtFloat
                    HeaderAlignmentHorz = taCenter
                    Width = 64
                  end
                  object cxCol_MS_Layer2: TcxGridColumn
                    Caption = 'Layer 2'
                    DataBinding.ValueType = 'Float'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.DisplayFormat = '#,#0.00'
                    Properties.EditFormat = '#,#0.00'
                    Properties.ValueType = vtFloat
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxCol_MS_Layer3: TcxGridColumn
                    Caption = 'Layer 3'
                    DataBinding.ValueType = 'Float'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.DisplayFormat = '#,#0.00'
                    Properties.EditFormat = '#,#0.00'
                    Properties.ValueType = vtFloat
                    HeaderAlignmentHorz = taCenter
                  end
                  object cxCol_MS_Mono: TcxGridColumn
                    Caption = 'Mono'
                    DataBinding.ValueType = 'Float'
                    PropertiesClassName = 'TcxSpinEditProperties'
                    Properties.DisplayFormat = '#,#0.00'
                    Properties.EditFormat = '#,#0.00'
                    Properties.ValueType = vtFloat
                    HeaderAlignmentHorz = taCenter
                    Options.Editing = False
                  end
                end
                object cxGridLevel3: TcxGridLevel
                  GridView = cxTblMatSaran
                end
              end
              object cxs_MS_Layer1: TcxSpinEdit
                Left = 41
                Top = 19
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = False
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_OutPropertiesChange
                TabOrder = 1
                Width = 79
              end
              object cxLabel20: TcxLabel
                Left = 3
                Top = 21
                Caption = 'Layer1'
              end
              object cxs_MS_Layer2: TcxSpinEdit
                Left = 162
                Top = 19
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = False
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_OutPropertiesChange
                TabOrder = 3
                Width = 79
              end
              object cxLabel21: TcxLabel
                Left = 121
                Top = 21
                Caption = 'Layer2'
              end
              object cxLabel22: TcxLabel
                Left = 242
                Top = 21
                Caption = 'Layer3'
              end
              object cxs_MS_Layer3: TcxSpinEdit
                Left = 277
                Top = 19
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = False
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_OutPropertiesChange
                TabOrder = 11
                Width = 79
              end
              object cxLabel23: TcxLabel
                Left = 6
                Top = 46
                Caption = 'Total'
              end
              object cxs_MS_Total: TcxSpinEdit
                Left = 35
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 13
                Width = 79
              end
              object cxLabel24: TcxLabel
                Left = 125
                Top = 46
                Caption = '% Layer1-Layer8'
              end
              object cxs_MS_PLayer1: TcxSpinEdit
                Left = 216
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 15
                Width = 79
              end
              object cxs_MS_PLayer2: TcxSpinEdit
                Left = 297
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 16
                Width = 79
              end
              object cxs_MS_PLayer3: TcxSpinEdit
                Left = 380
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 17
                Width = 79
              end
              object cxs_MS_Layer4: TcxSpinEdit
                Left = 400
                Top = 19
                Properties.Alignment.Horz = taLeftJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.EditFormat = '#,##0.00'
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_Layer4PropertiesChange
                TabOrder = 10
                Width = 76
              end
              object cxs_MS_Layer5: TcxSpinEdit
                Left = 515
                Top = 19
                Properties.Alignment.Horz = taLeftJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.EditFormat = '#,##0.00'
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_Layer5PropertiesChange
                TabOrder = 9
                Width = 76
              end
              object cxs_MS_Layer6: TcxSpinEdit
                Left = 635
                Top = 19
                Properties.Alignment.Horz = taLeftJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.EditFormat = '#,##0.00'
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_Layer6PropertiesChange
                TabOrder = 8
                Width = 76
              end
              object cxs_MS_Layer7: TcxSpinEdit
                Left = 755
                Top = 19
                Properties.Alignment.Horz = taLeftJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.EditFormat = '#,##0.00'
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_Layer7PropertiesChange
                TabOrder = 7
                Width = 76
              end
              object cxs_MS_Layer8: TcxSpinEdit
                Left = 875
                Top = 19
                Properties.Alignment.Horz = taLeftJustify
                Properties.DisplayFormat = '#,##0.00'
                Properties.EditFormat = '#,##0.00'
                Properties.ValueType = vtFloat
                Properties.OnChange = cxs_MS_Layer8PropertiesChange
                TabOrder = 6
                Width = 76
              end
              object cxLabel30: TcxLabel
                Left = 362
                Top = 21
                Caption = 'Layer4'
              end
              object cxLabel31: TcxLabel
                Left = 477
                Top = 21
                Caption = 'Layer5'
              end
              object cxLabel32: TcxLabel
                Left = 597
                Top = 21
                Caption = 'Layer6'
              end
              object cxLabel33: TcxLabel
                Left = 717
                Top = 21
                Caption = 'Layer7'
              end
              object cxLabel34: TcxLabel
                Left = 837
                Top = 21
                Caption = 'Layer8'
              end
              object cxs_MS_PLayer4: TcxSpinEdit
                Left = 460
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 23
                Width = 79
              end
              object cxs_MS_PLayer5: TcxSpinEdit
                Left = 540
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 24
                Width = 79
              end
              object cxs_MS_PLayer6: TcxSpinEdit
                Left = 620
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 25
                Width = 79
              end
              object cxs_MS_PLayer7: TcxSpinEdit
                Left = 700
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 26
                Width = 79
              end
              object cxs_MS_PLayer8: TcxSpinEdit
                Left = 775
                Top = 44
                Properties.DisplayFormat = '#,#0.00'
                Properties.EditFormat = '#,#0.00'
                Properties.ReadOnly = True
                Properties.ValueType = vtFloat
                Style.Color = clMoneyGreen
                TabOrder = 27
                Width = 79
              end
            end
            object cxLabel27: TcxLabel
              Left = 10
              Top = 130
              Caption = '% Bahan / Layer (1 - 8)'
              Transparent = True
            end
            object cxsLayer1: TcxSpinEdit
              Left = 135
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsOutPropertiesEditValueChanged
              TabOrder = 26
              Width = 61
            end
            object cxsLayer2: TcxSpinEdit
              Left = 200
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsMidPropertiesEditValueChanged
              TabOrder = 27
              Width = 61
            end
            object cxsLayer3: TcxSpinEdit
              Left = 265
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsInPropertiesEditValueChanged
              TabOrder = 33
              Width = 61
            end
            object cxsBeratBersih: TcxSpinEdit
              Left = 432
              Top = 57
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 34
              Visible = False
              Width = 121
            end
            object cxsBeratKotor: TcxSpinEdit
              Left = 432
              Top = 82
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 35
              Visible = False
              Width = 121
            end
            object cxsBeratBom: TcxSpinEdit
              Left = 557
              Top = 72
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              TabOrder = 36
              Visible = False
              Width = 121
            end
            object cxChkMix: TcxCheckBox
              Left = 580
              Top = 35
              Caption = 'cxChkMix'
              TabOrder = 37
              Visible = False
              Width = 121
            end
            object cxsLayer4: TcxSpinEdit
              Left = 330
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsLayer4PropertiesEditValueChanged
              TabOrder = 32
              Width = 61
            end
            object cxsLayer5: TcxSpinEdit
              Left = 395
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsLayer5PropertiesEditValueChanged
              TabOrder = 31
              Width = 61
            end
            object cxsLayer6: TcxSpinEdit
              Left = 460
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsLayer6PropertiesEditValueChanged
              TabOrder = 30
              Width = 61
            end
            object cxsLayer7: TcxSpinEdit
              Left = 525
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsLayer7PropertiesEditValueChanged
              TabOrder = 29
              Width = 61
            end
            object cxsLayer8: TcxSpinEdit
              Left = 590
              Top = 127
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = '#,##0.00'
              Properties.EditFormat = '#,##0.00'
              Properties.ValueType = vtFloat
              Properties.OnEditValueChanged = cxsLayer8PropertiesEditValueChanged
              TabOrder = 28
              Width = 61
            end
          end
          object TabSheet8: TTabSheet
            Caption = 'Alternatif'
            ImageIndex = 2
            DesignSize = (
              1069
              474)
            object cxLabel28: TcxLabel
              Left = 10
              Top = 34
              Caption = 'Kode Barang'
              Transparent = True
            end
            object cxtKodeBahan: TcxTextEdit
              Left = 85
              Top = 32
              Properties.ReadOnly = True
              TabOrder = 1
              Width = 121
            end
            object cxLabel29: TcxLabel
              Left = 10
              Top = 9
              Caption = 'Nama Barang'
              Transparent = True
            end
            object cxlNamaBrg: TcxLookupComboBox
              Left = 85
              Top = 7
              Properties.KeyFieldNames = 'kode'
              Properties.ListColumns = <
                item
                  Caption = 'Deskripsi'
                  FieldName = 'deskripsi'
                end
                item
                  FieldName = 'kode'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = dsDet
              Properties.ReadOnly = True
              Properties.OnEditValueChanged = cxlDeskripsiDetPropertiesEditValueChanged
              TabOrder = 3
              Width = 466
            end
            object cxGrid9: TcxGrid
              Left = 10
              Top = 68
              Width = 451
              Height = 273
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 4
              object cxTblaLT: TcxGridTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                DataController.OnRecordChanged = cxTblaLTDataControllerRecordChanged
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                object cxColKode: TcxGridColumn
                  Caption = 'Kode'
                  Width = 90
                end
                object cxColDeskripsi1: TcxGridColumn
                  Caption = 'Deskripsi'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.KeyFieldNames = 'kode'
                  Properties.ListColumns = <
                    item
                      FieldName = 'deskripsi'
                    end
                    item
                      FieldName = 'kode'
                    end>
                  Properties.ListSource = dsDet
                  Width = 315
                end
              end
              object cxGridLevel7: TcxGridLevel
                GridView = cxTblaLT
              end
            end
            object btnSimpanAlt: TButton
              Left = 10
              Top = 350
              Width = 151
              Height = 25
              Caption = 'Simpan Alternatif'
              TabOrder = 5
              OnClick = btnSimpanAltClick
            end
          end
        end
        object cxLabel9: TcxLabel
          Left = 213
          Top = 49
          Caption = 'Kategori'
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 668
          Top = 47
          Caption = 'Keterangan'
          Transparent = True
          Visible = False
        end
        object cxlDeskripsi: TcxLookupComboBox
          Left = 83
          Top = 23
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Deskripsi'
              FieldName = 'deskripsi'
            end
            item
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKodeHead
          Properties.OnEditValueChanged = cxlDeskripsiPropertiesEditValueChanged
          TabOrder = 0
          Width = 466
        end
        object cxsKode: TcxSpinEdit
          Left = 83
          Top = 47
          Properties.Alignment.Horz = taLeftJustify
          Properties.ReadOnly = True
          Properties.SpinButtons.Visible = False
          Style.Color = clMoneyGreen
          TabOrder = 1
          Width = 121
        end
        object cxtKeterangan: TcxTextEdit
          Tag = 1
          Left = 743
          Top = 45
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 50
          TabOrder = 3
          Visible = False
          Width = 436
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 73
          Caption = 'Stok'
          Transparent = True
        end
        object cxsStok: TcxSpinEdit
          Left = 83
          Top = 71
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          Style.Color = clMoneyGreen
          TabOrder = 4
          Width = 121
        end
        object cxChkAktif: TcxCheckBox
          Left = 80
          Top = 1
          Caption = 'Aktif'
          TabOrder = 11
          Width = 121
        end
        object cxlKategori: TcxLookupComboBox
          Left = 702
          Top = 72
          Properties.KeyFieldNames = 'kategori'
          Properties.ListColumns = <
            item
              Caption = 'Kategori'
              FieldName = 'kategori'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsKtgr
          Style.Color = clMoneyGreen
          TabOrder = 2
          Visible = False
          Width = 286
        end
        object btnCariBrg: TButton
          Left = 551
          Top = 23
          Width = 20
          Height = 21
          Caption = '...'
          TabOrder = 12
          OnClick = btnCariBrgClick
        end
        object cxtKategori: TcxTextEdit
          Left = 260
          Top = 47
          Properties.ReadOnly = True
          Style.Color = clMoneyGreen
          TabOrder = 13
          Width = 289
        end
        object cxtKode: TcxTextEdit
          Left = 83
          Top = 47
          TabOrder = 14
          Width = 121
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 497
        end
        inherited cxGrd: TcxGrid
          Width = 816
          Height = 481
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsView.GroupByBox = False
            object cxTblViewkode: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode_brg'
              Options.Editing = False
              Width = 83
            end
            object cxTblViewnama: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Options.Editing = False
              Width = 341
            end
            object cxTblViewColumn1: TcxGridDBColumn
              Caption = 'Kategori'
              DataBinding.FieldName = 'kategori'
              Width = 130
            end
          end
        end
        object cxGrid1: TcxGrid
          Left = 821
          Top = 307
          Width = 817
          Height = 200
          TabOrder = 1
          Visible = False
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = True
            NavigatorButtons.PriorPage.Visible = True
            NavigatorButtons.Prior.Visible = True
            NavigatorButtons.Next.Visible = True
            NavigatorButtons.NextPage.Visible = True
            NavigatorButtons.Last.Visible = True
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Post.Visible = True
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = True
            NavigatorButtons.SaveBookmark.Visible = True
            NavigatorButtons.GotoBookmark.Visible = True
            NavigatorButtons.Filter.Visible = True
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            FilterRow.ApplyChanges = fracImmediately
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Kode'
              DataBinding.FieldName = 'kode_brg'
              Options.Editing = False
              Width = 83
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Options.Editing = False
              Width = 341
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Kategori'
              DataBinding.FieldName = 'kategori'
              Width = 130
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object cxLabel15: TcxLabel
          Left = 821
          Top = 287
          Caption = 'Detail Formula'
          Visible = False
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 681
    Width = 1092
    Height = 44
    inherited btnKeluar: TButton
      Left = 461
      Top = 8
    end
    inherited btnTambah: TButton
      Left = 6
      Top = 8
    end
    inherited btnEdit: TButton
      Left = 81
      Top = 8
    end
    inherited btnHapus: TButton
      Left = 156
      Top = 8
    end
    inherited btnBatal: TButton
      Left = 386
      Top = 8
    end
    inherited btnSimpan: TButton
      Left = 311
      Top = 8
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kode_brg,deskripsi,kategori FROM v_formula_head ORDER BY ' +
        'deskripsi')
    Left = 360
  end
  object zqKodeBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi FROM tbl_barang ORDER BY deskripsi')
    Params = <>
    Left = 565
    Top = 15
  end
  object dsKodeBrg: TDataSource
    DataSet = zqKodeBrg
    Left = 595
    Top = 20
  end
  object zqKtgr: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT DISTINCT kategori FROM tbl_barang ORDER BY kategori')
    Params = <>
    Left = 470
    Top = 20
  end
  object dsKtgr: TDataSource
    DataSet = zqKtgr
    Left = 505
    Top = 20
  end
  object dsKodeHead: TDataSource
    DataSet = zqrKodeHead
    Left = 320
    Top = 20
  end
  object zqrKodeHead: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi,kategori FROM tbl_barang '
      'ORDER BY deskripsi')
    Params = <>
    Left = 290
    Top = 20
  end
  object zqDet: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi,kategori,satuan'
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39','#39'F'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 580
    Top = 140
  end
  object dsDet: TDataSource
    DataSet = zqDet
    Left = 610
    Top = 140
  end
  object zqrDibuka: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT DISTINCT kategori FROM tbl_barang ORDER BY kategori')
    Params = <>
    Left = 580
    Top = 75
  end
  object dsDibuka: TDataSource
    DataSet = zqrDibuka
    Left = 610
    Top = 75
  end
  object zqrDibatasi: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT DISTINCT subkategori FROM tbl_barang ORDER BY subkategori')
    Params = <>
    Left = 580
    Top = 105
  end
  object dsDibatasi: TDataSource
    DataSet = zqrDibatasi
    Left = 610
    Top = 105
  end
  object zqrDet2: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi,kategori, satuan FROM '
      'tbl_barang'
      'ORDER BY deskripsi')
    Params = <>
    Left = 705
    Top = 200
  end
  object dsDet2: TDataSource
    DataSet = zqrDet2
    Left = 735
    Top = 200
  end
  object zqrUnit: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_unitset_det')
    Params = <>
    Left = 645
    Top = 10
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 675
    Top = 15
  end
  object ZQuery1: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi,kategori, satuan FROM '
      'tbl_barang'
      'ORDER BY deskripsi')
    Params = <>
    Left = 705
    Top = 235
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 735
    Top = 235
  end
end
