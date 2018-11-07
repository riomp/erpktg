inherited frmTrsPenawaran: TfrmTrsPenawaran
  Left = 208
  Top = 181
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Penawaran Supplier'
  ClientHeight = 501
  ClientWidth = 828
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 828
    Height = 38
    inherited lblJudul: TLabel
      Top = 8
      Width = 164
      Caption = 'Penawaran Supplier'
    end
    object btnEdit2: TButton
      Left = 451
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 0
      OnClick = btnEdit2Click
    end
    object cxlNoBukti: TcxLookupComboBox
      Left = 530
      Top = 8
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsNoBukti
      TabOrder = 1
      Width = 251
    end
  end
  inherited pnlTengah: TPanel
    Top = 38
    Width = 828
    Height = 388
    object cxLabel6: TcxLabel
      Left = 15
      Top = 39
      Caption = 'Tgl. Transaksi'
    end
    object cxdTglTrs: TcxDateEdit
      Left = 99
      Top = 37
      Properties.ReadOnly = True
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 114
      Caption = 'Departemen'
    end
    object cxCmbDept: TcxComboBox
      Left = 99
      Top = 112
      Properties.ReadOnly = True
      Properties.OnChange = cxCmbGdgPropertiesChange
      TabOrder = 4
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 89
      Caption = 'Diajukan Oleh'
    end
    object cxtDiajukanOleh: TcxTextEdit
      Tag = 1
      Left = 99
      Top = 87
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 50
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 297
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 64
      Caption = 'Tgl. Diperlukan'
    end
    object cxdTglDiperlukan: TcxDateEdit
      Left = 99
      Top = 62
      Properties.ReadOnly = True
      Properties.OnChange = cxdTglTrsPropertiesChange
      TabOrder = 2
      Width = 121
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 625
      Top = 3
      Caption = ' Level Kebutuhan '
      Properties.Items = <>
      TabOrder = 9
      Visible = False
      Height = 76
      Width = 116
    end
    object cxRbtPenting: TcxRadioButton
      Left = 638
      Top = 26
      Width = 93
      Height = 17
      Caption = 'Penting'
      Checked = True
      TabOrder = 10
      TabStop = True
      Visible = False
    end
    object cxRbtMendesak: TcxRadioButton
      Left = 638
      Top = 46
      Width = 88
      Height = 17
      Caption = 'Mendesak'
      TabOrder = 11
      Visible = False
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 14
      Caption = 'No. FOBJ'
    end
    object cxlNoFOBJ: TcxLookupComboBox
      Left = 99
      Top = 12
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. FOBJ'
          FieldName = 'no_bukti'
        end
        item
          Caption = 'Diajukan Oleh'
          FieldName = 'diajukan_oleh'
        end
        item
          Caption = 'Diajukan Dept'
          FieldName = 'diajukan_dept'
        end
        item
          Caption = 'Tanggal'
          FieldName = 'tanggal'
        end
        item
          Caption = 'User'
          FieldName = 'user'
        end
        item
          Caption = 'Dept'
          FieldName = 'user_dept'
        end>
      Properties.ListSource = dsFOBJ
      Properties.OnEditValueChanged = cxlNoFOBJPropertiesEditValueChanged
      TabOrder = 0
      Width = 182
    end
    object pg: TPageControl
      Left = 15
      Top = 138
      Width = 796
      Height = 233
      ActivePage = TabSheet1
      TabOrder = 13
      object TabSheet1: TTabSheet
        Caption = 'Supplier 1'
        object Label5: TLabel
          Left = 433
          Top = 182
          Width = 46
          Height = 13
          Caption = 'Total Qty.'
          Visible = False
        end
        object cxLabel3: TcxLabel
          Left = 5
          Top = 9
          Caption = 'Supplier'
        end
        object cxlSupplier: TcxLookupComboBox
          Left = 87
          Top = 7
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Supplier'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSupplier
          TabOrder = 1
          Width = 377
        end
        object nxGrd: TNextGrid
          Left = 7
          Top = 34
          Width = 769
          Height = 138
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 2
          TabStop = True
          WantTabs = True
          OnAfterEdit = nxGrdAfterEdit
          StartRowCount = 1
          object NxImageColumn1: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 42
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hapus'
            Header.Alignment = taCenter
            Position = 0
            SortType = stNumeric
            Width = 42
            Images = frmUtama.ImageList1
          end
          object nxNoUrut: TNxIncrementColumn
            DefaultWidth = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Options = [coCanClick, coCanInput, coPublicUsing]
            Position = 1
            SortType = stAlphabetic
            Width = 30
          end
          object nxColKodeBrg: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Kode Brg.'
            Header.Caption = 'Kode Brg.'
            InplaceEdit = NxEdit1
            Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
            Position = 2
            SortType = stAlphabetic
          end
          object nxColNamaBrg: TNxTextColumn
            DefaultWidth = 253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Nama Barang'
            Header.Caption = 'Nama Barang'
            Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
            Position = 3
            SortType = stAlphabetic
            Width = 253
          end
          object nxColSatuan: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 4
            SortType = stAlphabetic
          end
          object nxColQty: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Qty.'
            Header.Alignment = taRightJustify
            Position = 5
            SortType = stNumeric
            EditOptions = [eoAllowAll, eoAllowFloat]
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColMataUang: TNxComboBoxColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Mata Uang'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 6
            SortType = stAlphabetic
            Style = cbsDropDownList
          end
          object nxColHarga: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Harga'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 7
            SortType = stNumeric
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColKet: TNxTextColumn
            DefaultWidth = 263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Keterangan'
            InplaceEdit = NxEdit2
            Position = 8
            SortType = stAlphabetic
            Visible = False
            Width = 263
          end
        end
        object NxEdit1: TNxEdit
          Left = 199
          Top = 86
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT1'
          ReadOnly = True
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object cxsTotalQty: TcxSpinEdit
          Left = 484
          Top = 178
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 4
          Visible = False
          Width = 99
        end
        object NxEdit2: TNxEdit
          Left = 299
          Top = 86
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'NXEDIT2'
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object NxButtonEdit1: TNxButtonEdit
          Left = 610
          Top = 91
          Width = 121
          Height = 21
          BorderStyle = bsNone
          TabOrder = 6
          Text = 'NxButtonEdit1'
          Visible = False
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object nxBeNoSO: TNxButtonEdit
          Left = 445
          Top = 86
          Width = 121
          Height = 21
          BorderStyle = bsNone
          TabOrder = 7
          Text = 'NxButtonEdit1'
          Visible = False
          OnButtonClick = nxBeNoSOButtonClick
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object nxBtnEditSO: TNxButtonEdit
          Left = 593
          Top = 131
          Width = 121
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'NXBENOSO'
          Visible = False
          OnButtonClick = nxBtnEditSOButtonClick
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object cxLabel10: TcxLabel
          Left = 470
          Top = 9
          Caption = 'No. Penawaran'
          Visible = False
        end
        object cxtNoTrans: TcxTextEdit
          Tag = 1
          Left = 552
          Top = 7
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 10
          Visible = False
          Width = 121
        end
        object cxChkPil1: TcxCheckBox
          Left = 5
          Top = 175
          Caption = 'Pilih'
          TabOrder = 11
          OnClick = cxChkPil1Click
          Width = 121
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Supplier 2'
        ImageIndex = 1
        object Label1: TLabel
          Left = 808
          Top = 182
          Width = 46
          Height = 13
          Caption = 'Total Qty.'
        end
        object cxLabel8: TcxLabel
          Left = 5
          Top = 9
          Caption = 'Supplier'
        end
        object cxlSupplier2: TcxLookupComboBox
          Left = 87
          Top = 7
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Supplier'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSupplier
          TabOrder = 1
          Width = 377
        end
        object nxGrd2: TNextGrid
          Left = 7
          Top = 34
          Width = 769
          Height = 138
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 2
          TabStop = True
          WantTabs = True
          OnAfterEdit = nxGrdAfterEdit
          StartRowCount = 1
          object NxImageColumn2: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 42
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hapus'
            Header.Alignment = taCenter
            Position = 0
            SortType = stNumeric
            Width = 42
            Images = frmUtama.ImageList1
          end
          object NxIncrementColumn1: TNxIncrementColumn
            DefaultWidth = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Options = [coCanClick, coCanInput, coPublicUsing]
            Position = 1
            SortType = stAlphabetic
            Width = 30
          end
          object NxTextColumn1: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Kode Brg.'
            Header.Caption = 'Kode Brg.'
            InplaceEdit = NxEdit3
            Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
            Position = 2
            SortType = stAlphabetic
          end
          object NxTextColumn2: TNxTextColumn
            DefaultWidth = 253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Nama Barang'
            Header.Caption = 'Nama Barang'
            Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
            Position = 3
            SortType = stAlphabetic
            Width = 253
          end
          object NxTextColumn3: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 4
            SortType = stAlphabetic
          end
          object NxNumberColumn1: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Qty.'
            Header.Alignment = taRightJustify
            Position = 5
            SortType = stNumeric
            EditOptions = [eoAllowAll, eoAllowFloat]
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColMataUang2: TNxComboBoxColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Mata Uang'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 6
            SortType = stAlphabetic
            Style = cbsDropDownList
          end
          object NxNumberColumn2: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Harga'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 7
            SortType = stNumeric
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn4: TNxTextColumn
            DefaultWidth = 263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Keterangan'
            InplaceEdit = NxEdit4
            Position = 8
            SortType = stAlphabetic
            Visible = False
            Width = 263
          end
        end
        object NxEdit3: TNxEdit
          Left = 199
          Top = 86
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT1'
          ReadOnly = True
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object cxSpinEdit1: TcxSpinEdit
          Left = 859
          Top = 178
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 4
          Width = 99
        end
        object NxEdit4: TNxEdit
          Left = 299
          Top = 86
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'NXEDIT2'
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object NxButtonEdit2: TNxButtonEdit
          Left = 610
          Top = 91
          Width = 121
          Height = 21
          BorderStyle = bsNone
          TabOrder = 6
          Text = 'NxButtonEdit1'
          Visible = False
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object NxButtonEdit3: TNxButtonEdit
          Left = 445
          Top = 86
          Width = 121
          Height = 21
          BorderStyle = bsNone
          TabOrder = 7
          Text = 'NxButtonEdit1'
          Visible = False
          OnButtonClick = nxBeNoSOButtonClick
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object NxButtonEdit4: TNxButtonEdit
          Left = 768
          Top = 91
          Width = 121
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'NXBENOSO'
          Visible = False
          OnButtonClick = nxBtnEditSOButtonClick
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object cxLabel11: TcxLabel
          Left = 470
          Top = 9
          Caption = 'No. Penawaran'
          Visible = False
        end
        object cxtNoTrans2: TcxTextEdit
          Tag = 1
          Left = 552
          Top = 7
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 10
          Visible = False
          Width = 121
        end
        object cxChkPil2: TcxCheckBox
          Left = 5
          Top = 175
          Caption = 'Pilih'
          TabOrder = 11
          Width = 121
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Supplier 3'
        ImageIndex = 2
        object Label2: TLabel
          Left = 808
          Top = 182
          Width = 46
          Height = 13
          Caption = 'Total Qty.'
        end
        object cxLabel9: TcxLabel
          Left = 5
          Top = 9
          Caption = 'Supplier'
        end
        object cxlSupplier3: TcxLookupComboBox
          Left = 87
          Top = 7
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              Caption = 'Nama Supplier'
              FieldName = 'nama'
            end
            item
              Caption = 'Kode'
              FieldName = 'kode'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsSupplier
          TabOrder = 1
          Width = 377
        end
        object nxGrd3: TNextGrid
          Left = 7
          Top = 34
          Width = 769
          Height = 138
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 2
          TabStop = True
          WantTabs = True
          OnAfterEdit = nxGrdAfterEdit
          StartRowCount = 1
          object NxImageColumn3: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 42
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hapus'
            Header.Alignment = taCenter
            Position = 0
            SortType = stNumeric
            Width = 42
            Images = frmUtama.ImageList1
          end
          object NxIncrementColumn2: TNxIncrementColumn
            DefaultWidth = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Options = [coCanClick, coCanInput, coPublicUsing]
            Position = 1
            SortType = stAlphabetic
            Width = 30
          end
          object NxTextColumn5: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Kode Brg.'
            Header.Caption = 'Kode Brg.'
            InplaceEdit = NxEdit5
            Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
            Position = 2
            SortType = stAlphabetic
          end
          object NxTextColumn6: TNxTextColumn
            DefaultWidth = 253
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Nama Barang'
            Header.Caption = 'Nama Barang'
            Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
            Position = 3
            SortType = stAlphabetic
            Width = 253
          end
          object NxTextColumn7: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Satuan'
            Position = 4
            SortType = stAlphabetic
          end
          object NxNumberColumn3: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Qty.'
            Header.Alignment = taRightJustify
            Position = 5
            SortType = stNumeric
            EditOptions = [eoAllowAll, eoAllowFloat]
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColMataUang3: TNxComboBoxColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Mata Uang'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 6
            SortType = stAlphabetic
            Style = cbsDropDownList
          end
          object NxNumberColumn4: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Harga'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 7
            SortType = stNumeric
            FormatMask = '#,##0.00'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn8: TNxTextColumn
            DefaultWidth = 263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Keterangan'
            InplaceEdit = NxEdit6
            Position = 8
            SortType = stAlphabetic
            Visible = False
            Width = 263
          end
        end
        object NxEdit5: TNxEdit
          Left = 199
          Top = 86
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 3
          Text = 'NXEDIT1'
          ReadOnly = True
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object cxSpinEdit2: TcxSpinEdit
          Left = 859
          Top = 178
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,#.##'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 4
          Width = 99
        end
        object NxEdit6: TNxEdit
          Left = 299
          Top = 86
          Width = 97
          Height = 21
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 5
          Text = 'NXEDIT2'
          Visible = False
          OnDblClick = NxEdit1DblClick
        end
        object NxButtonEdit5: TNxButtonEdit
          Left = 610
          Top = 91
          Width = 121
          Height = 21
          BorderStyle = bsNone
          TabOrder = 6
          Text = 'NxButtonEdit1'
          Visible = False
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object NxButtonEdit6: TNxButtonEdit
          Left = 445
          Top = 86
          Width = 121
          Height = 21
          BorderStyle = bsNone
          TabOrder = 7
          Text = 'NxButtonEdit1'
          Visible = False
          OnButtonClick = nxBeNoSOButtonClick
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object NxButtonEdit7: TNxButtonEdit
          Left = 563
          Top = 126
          Width = 121
          Height = 21
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 8
          Text = 'NXBENOSO'
          Visible = False
          OnButtonClick = nxBtnEditSOButtonClick
          ButtonCaption = '...'
          ButtonWidth = 15
          TransparentColor = clNone
        end
        object cxLabel12: TcxLabel
          Left = 470
          Top = 9
          Caption = 'No. Penawaran'
          Visible = False
        end
        object cxtNoTrans3: TcxTextEdit
          Tag = 1
          Left = 552
          Top = 7
          TabStop = False
          Properties.ReadOnly = True
          TabOrder = 10
          Visible = False
          Width = 121
        end
        object cxChkPil3: TcxCheckBox
          Left = 5
          Top = 175
          Caption = 'Pilih'
          TabOrder = 11
          Width = 121
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 426
    Width = 828
    inherited btnEdit: TButton
      Left = 325
    end
    inherited btnHapus: TButton
      Left = 400
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Left = 190
      Top = 25
    end
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM v_brg_per_gdg ORDER BY deskripsi')
    Params = <>
    Left = 500
    Top = 26
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 530
    Top = 26
  end
  object dsNoBukti: TDataSource
    DataSet = zqrNoBukti
    Left = 370
    Top = 21
  end
  object zqrNoBukti: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti, tanggal, user, user_dept FROM tbl_fobj_head'
      'WHERE f_penawaran = 1'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 340
    Top = 21
  end
  object zqrFOBJ: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT no_bukti, diajukan_oleh, diajukan_dept, tanggal, user, us' +
        'er_dept FROM tbl_fobj_head'
      'WHERE f_penawaran = 0'
      'ORDER BY tanggal DESC')
    Params = <>
    Left = 280
    Top = 21
  end
  object dsFOBJ: TDataSource
    DataSet = zqrFOBJ
    Left = 310
    Top = 21
  end
  object zqrSupplier: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT nama, kode FROM tbl_supplier ORDER BY nama')
    Params = <>
    Left = 500
    Top = 76
  end
  object dsSupplier: TDataSource
    DataSet = zqrSupplier
    Left = 530
    Top = 76
  end
end
