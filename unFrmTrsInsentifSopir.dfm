inherited frmTrsInsentifSopir: TfrmTrsInsentifSopir
  Left = 216
  Top = 44
  Width = 998
  Height = 658
  VertScrollBar.Visible = False
  Caption = 'Insentif Sopir'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 982
    Height = 43
    inherited lblJudul: TLabel
      Top = 11
      Width = 110
      Caption = 'Insentif Sopir'
    end
  end
  inherited pnlTengah: TPanel
    Top = 43
    Width = 982
    Height = 533
    object PageControl1: TPageControl
      Left = 750
      Top = 55
      Width = 291
      Height = 411
      ActivePage = TabSheet1
      TabOrder = 0
      Visible = False
      object TabSheet1: TTabSheet
        Caption = 'Input'
        object cxLabel1: TcxLabel
          Left = 11
          Top = 32
          Caption = 'No. SJ'
        end
        object cxLabel2: TcxLabel
          Left = 11
          Top = 82
          Caption = 'No. SPMB'
        end
        object cxLabel3: TcxLabel
          Left = 11
          Top = 107
          Caption = 'Nopol'
        end
        object cxLabel6: TcxLabel
          Left = 11
          Top = 183
          Caption = 'Tujuan'
        end
        object cxLabel7: TcxLabel
          Left = 11
          Top = 396
          Caption = 'Tot. Pngiriman'
        end
        object cxtNoSPMB: TcxTextEdit
          Left = 89
          Top = 81
          TabOrder = 3
          Width = 142
        end
        object cxtNopol: TcxTextEdit
          Left = 89
          Top = 106
          TabOrder = 4
          Width = 142
        end
        object cxtTujuan: TcxTextEdit
          Left = 89
          Top = 181
          TabOrder = 5
          Width = 402
        end
        object btnTambah: TButton
          Left = 495
          Top = 178
          Width = 75
          Height = 25
          Caption = 'Tambah'
          TabOrder = 6
          OnClick = btnTambahClick
        end
        object cxLabel8: TcxLabel
          Left = 9
          Top = 57
          Caption = 'Tgl. SJ'
        end
        object cxdTglSJ: TcxDateEdit
          Left = 89
          Top = 56
          TabOrder = 2
          Width = 121
        end
        object cxsTotal: TcxSpinEdit
          Left = 89
          Top = 395
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 107
        end
        object btnProses: TButton
          Left = 237
          Top = 31
          Width = 56
          Height = 21
          Caption = 'Proses'
          TabOrder = 1
          OnClick = btnProsesClick
        end
        object cxLabel11: TcxLabel
          Left = 11
          Top = 7
          Caption = 'No. Bukti'
        end
        object cxtNoBukti: TcxTextEdit
          Left = 89
          Top = 6
          Properties.CharCase = ecUpperCase
          TabOrder = 15
          Width = 142
        end
        object cxlNoSJ: TcxLookupComboBox
          Left = 89
          Top = 31
          Properties.KeyFieldNames = 'no_bukti'
          Properties.ListColumns = <
            item
              Caption = 'No. Surat Jalan'
              FieldName = 'no_bukti'
            end>
          Properties.ListSource = dsSJ
          TabOrder = 0
          Width = 142
        end
        object nxGrd: TNextGrid
          Left = 10
          Top = 208
          Width = 731
          Height = 128
          FixedCols = 4
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 16
          TabStop = True
          WantTabs = True
          OnCellDblClick = cell
          StartRowCount = 1
          object NxImageColumn1: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 41
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hapus'
            Header.Alignment = taCenter
            Position = 0
            SortType = stNumeric
            Width = 41
            Images = frmUtama.ImageList1
          end
          object nxNoUrut: TNxIncrementColumn
            DefaultWidth = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
            Position = 1
            SortType = stAlphabetic
            Width = 24
          end
          object nxColTujuan: TNxTextColumn
            DefaultWidth = 320
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Kode Brg.'
            Header.Caption = 'Tujuan'
            Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
            Position = 2
            SortType = stAlphabetic
            Width = 320
          end
          object nxColKernet: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Nama Barang'
            Header.Caption = 'Kernet'
            Options = [coCanClick, coCanSort, coPublicUsing, coShowTextFitHint]
            Position = 3
            SortType = stAlphabetic
          end
          object nxColNoSJ: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SJ'
            Position = 4
            SortType = stAlphabetic
          end
          object nxColNoSPMB: TNxTextColumn
            DefaultWidth = 92
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SPMB'
            Position = 5
            SortType = stAlphabetic
            Width = 92
          end
          object nxColTglSJ: TNxTextColumn
            DefaultWidth = 75
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tgl. SJ'
            Position = 6
            SortType = stAlphabetic
            Width = 75
          end
          object nxColSopir: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Nama Sopir'
            Position = 7
            SortType = stAlphabetic
            Visible = False
          end
          object nxColNopol: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Nopol'
            Position = 8
            SortType = stAlphabetic
            Visible = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Rekap Insentif'
        ImageIndex = 1
        object btnCetak: TButton
          Left = 341
          Top = 384
          Width = 75
          Height = 25
          Caption = '&Cetak'
          TabOrder = 0
          OnClick = btnCetakClick
        end
        object cxGrid1: TcxGrid
          Left = 10
          Top = 180
          Width = 731
          Height = 191
          TabOrder = 1
          object cxTblD: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsD
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxTblViewNoRefTblDid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxTblViewNoRefTblDno_bukti: TcxGridDBColumn
              Caption = 'No. Bukti'
              DataBinding.FieldName = 'no_bukti'
              Width = 87
            end
            object cxTblViewNoRefTblDtujuan: TcxGridDBColumn
              Caption = 'Tujuan'
              DataBinding.FieldName = 'tujuan'
              Width = 295
            end
            object cxTblViewNoRefTblDkernet: TcxGridDBColumn
              Caption = 'Nama Kernet'
              DataBinding.FieldName = 'kernet'
              Width = 92
            end
            object cxTblViewNoRefTblDno_sj: TcxGridDBColumn
              Caption = 'No. SJ'
              DataBinding.FieldName = 'no_sj'
              Width = 76
            end
            object cxTblViewNoRefTblDno_spmb: TcxGridDBColumn
              Caption = 'No. SPMB'
              DataBinding.FieldName = 'no_spmb'
              Width = 86
            end
            object cxTblViewNoRefTblDtgl_sj: TcxGridDBColumn
              Caption = 'Tanggal SJ'
              DataBinding.FieldName = 'tgl_sj'
              Width = 88
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxTblD
          end
        end
        object cxGrd: TcxGrid
          Left = 10
          Top = 10
          Width = 731
          Height = 156
          TabOrder = 2
          object cxTblH: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = cxTblHFocusedRecordChanged
            DataController.DataSource = dsH
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object cxTblViewNoRefTblHno_bukti: TcxGridDBColumn
              Caption = 'No. Bukti'
              DataBinding.FieldName = 'no_bukti'
              Width = 80
            end
            object cxTblViewNoRefTblHnopol: TcxGridDBColumn
              Caption = 'No. Polisi'
              DataBinding.FieldName = 'nopol'
              Width = 70
            end
            object cxTblViewNoRefTblHsopir: TcxGridDBColumn
              Caption = 'Nama Sopir'
              DataBinding.FieldName = 'sopir'
              Width = 125
            end
            object cxTblViewNoRefTblHinsentif_sopir: TcxGridDBColumn
              Caption = 'Insentif Sopir'
              DataBinding.FieldName = 'insentif_sopir'
              Width = 72
            end
            object cxTblViewNoRefTblHinsentif_kernet: TcxGridDBColumn
              Caption = 'Insentif Kernet'
              DataBinding.FieldName = 'insentif_kernet'
              Width = 75
            end
            object cxTblViewNoRefTblHjml_kirim: TcxGridDBColumn
              Caption = 'Jml. Kirim'
              DataBinding.FieldName = 'jml_kirim'
              Width = 56
            end
            object cxTblViewNoRefTblHuser: TcxGridDBColumn
              Caption = 'User Input'
              DataBinding.FieldName = 'user'
              Width = 64
            end
            object cxTblViewNoRefTblHuser_dept: TcxGridDBColumn
              Caption = 'Dept.'
              DataBinding.FieldName = 'user_dept'
              Width = 43
            end
            object cxTblViewNoRefTblHtgl_input: TcxGridDBColumn
              Caption = 'Tanggal Input'
              DataBinding.FieldName = 'tgl_input'
              Width = 75
            end
            object cxTblViewNoRefTblHjam: TcxGridDBColumn
              Caption = 'Jam'
              DataBinding.FieldName = 'jam'
              Width = 56
            end
            object cxTblViewNoRefTblHhost: TcxGridDBColumn
              DataBinding.FieldName = 'host'
              Visible = False
            end
          end
          object cxGrdLevel1: TcxGridLevel
            GridView = cxTblH
          end
        end
        object cxLabel12: TcxLabel
          Left = 9
          Top = 387
          Caption = 'Periode'
        end
        object cxdTgl3: TcxDateEdit
          Left = 60
          Top = 386
          TabOrder = 4
          Width = 121
        end
        object cxLabel13: TcxLabel
          Left = 185
          Top = 387
          Caption = 'S/D'
        end
        object cxdTgl4: TcxDateEdit
          Left = 213
          Top = 386
          TabOrder = 6
          Width = 121
        end
      end
    end
    object PageControl2: TPageControl
      Left = 1
      Top = 1
      Width = 980
      Height = 531
      ActivePage = TabSheet3
      Align = alClient
      TabOrder = 1
      object TabSheet3: TTabSheet
        Caption = 'Input'
        object cxlbl1: TcxLabel
          Left = 4
          Top = 142
          Caption = 'Tanggal'
        end
        object cxdTgl1: TcxDateEdit
          Left = 60
          Top = 141
          TabOrder = 8
          Width = 121
        end
        object cxlbl2: TcxLabel
          Left = 185
          Top = 142
          Caption = 'S/D'
        end
        object cxdTgl2: TcxDateEdit
          Left = 213
          Top = 141
          TabOrder = 9
          Width = 121
        end
        object nxGrd1: TNextGrid
          Left = 5
          Top = 170
          Width = 961
          Height = 231
          FixedCols = 3
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 11
          TabStop = True
          WantTabs = True
          OnCellClick = nxGrd1CellClick
          StartRowCount = 1
          object nxColChk: TNxCheckBoxColumn
            Alignment = taCenter
            DefaultWidth = 38
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Check'
            Header.Alignment = taCenter
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 0
            SortType = stBoolean
            Width = 38
          end
          object nxColHapus: TNxImageColumn
            Alignment = taCenter
            DefaultValue = '0'
            DefaultWidth = 43
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Hapus'
            Position = 1
            SortType = stNumeric
            Visible = False
            Width = 43
          end
          object nxColNo1: TNxIncrementColumn
            DefaultWidth = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Options = [coCanClick, coCanInput, coPublicUsing]
            Position = 2
            SortType = stAlphabetic
            Width = 24
          end
          object nxColNoSJ1: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SJ'
            Position = 3
            SortType = stAlphabetic
          end
          object nxColTgl: TNxTextColumn
            DefaultWidth = 76
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tanggal SJ'
            Position = 4
            SortType = stAlphabetic
            Width = 76
          end
          object nxColNoPolisi: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Kode Brg.'
            Header.Caption = 'No. Polisi'
            Options = [coCanClick, coCanInput, coPublicUsing, coShowTextFitHint]
            Position = 5
            SortType = stAlphabetic
          end
          object nxColDriver: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Driver'
            Position = 6
            SortType = stAlphabetic
            Visible = False
          end
          object nxColKernet1: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Kernet'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 7
            SortType = stAlphabetic
            Visible = False
          end
          object nxColInsDriver: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Insentif Driver'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 8
            SortType = stNumeric
            Visible = False
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColInsKernet: TNxNumberColumn
            DefaultValue = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Insentif Kernet'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 9
            SortType = stNumeric
            Visible = False
            Increment = 1.000000000000000000
            Precision = 0
          end
          object nxColNama: TNxTextColumn
            DefaultWidth = 220
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Nama Customer'
            Position = 10
            SortType = stAlphabetic
            Width = 220
          end
          object nxColAlamat: TNxTextColumn
            DefaultWidth = 300
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tujuan'
            Position = 11
            SortType = stAlphabetic
            Width = 300
          end
          object nxColTujuanEx: TNxTextColumn
            DefaultWidth = 200
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tujuan Lain-lain'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 12
            SortType = stAlphabetic
            Width = 200
          end
          object nxColNoSpmb1: TNxTextColumn
            DefaultWidth = 95
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SPMB'
            Position = 13
            SortType = stAlphabetic
            Width = 95
          end
          object nxColTglSPMB: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tgl. SPMB'
            Position = 14
            SortType = stAlphabetic
          end
          object nxColTglRencKirim: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tgl. Renc. Kirim'
            Position = 15
            SortType = stAlphabetic
          end
        end
        object btnprocess: TButton
          Left = 340
          Top = 140
          Width = 76
          Height = 23
          Caption = 'Proses'
          TabOrder = 10
          OnClick = btnprocessClick
        end
        object cxLabel4: TcxLabel
          Left = 4
          Top = 37
          Caption = 'Sopir'
        end
        object cxlSopir: TcxLookupComboBox
          Left = 60
          Top = 36
          Properties.KeyFieldNames = 'nama'
          Properties.ListColumns = <
            item
              FieldName = 'nama'
            end>
          Properties.ListSource = dsSopir
          TabOrder = 0
          Width = 167
        end
        object cxLabel5: TcxLabel
          Left = 4
          Top = 62
          Caption = 'Kernet 1'
        end
        object cxtKernet1: TcxTextEdit
          Left = 60
          Top = 61
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          OnKeyPress = cxtKernet1KeyPress
          Width = 167
        end
        object cxLabel9: TcxLabel
          Left = 239
          Top = 37
          Caption = 'Insentif Sopir.'
        end
        object cxtInsSopir: TcxTextEdit
          Left = 529
          Top = 19
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 12
          Text = '0'
          Visible = False
          Width = 117
        end
        object cxtInstKernet: TcxTextEdit
          Left = 529
          Top = 44
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 13
          Text = '0'
          Visible = False
          Width = 117
        end
        object cxLabel10: TcxLabel
          Left = 239
          Top = 62
          Caption = 'Insentif Kernet 1'
        end
        object cxLabel15: TcxLabel
          Left = 4
          Top = 87
          Caption = 'Kernet 2'
        end
        object cxtKernet2: TcxTextEdit
          Left = 60
          Top = 86
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          OnKeyPress = cxtKernet1KeyPress
          Width = 167
        end
        object cxLabel16: TcxLabel
          Left = 239
          Top = 87
          Caption = 'Insentif Kernet 2'
        end
        object cxTextEdit2: TcxTextEdit
          Left = 529
          Top = 69
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 14
          Text = '0'
          Visible = False
          Width = 117
        end
        object cxsInsSopir: TcxSpinEdit
          Left = 325
          Top = 37
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 1
          Width = 122
        end
        object cxsInsKernet1: TcxSpinEdit
          Left = 325
          Top = 62
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 3
          Width = 122
        end
        object cxsInsKernet2: TcxSpinEdit
          Left = 325
          Top = 87
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 5
          Width = 122
        end
        object cxtkernet: TcxTextEdit
          Left = 660
          Top = 21
          Properties.CharCase = ecUpperCase
          TabOrder = 23
          Visible = False
          OnKeyPress = cxtKernet1KeyPress
          Width = 167
        end
        object cxtNoTrans: TcxTextEdit
          Left = 60
          Top = 11
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.Color = clWindow
          TabOrder = 24
          OnKeyPress = cxtKernet1KeyPress
          Width = 167
        end
        object cxLabel17: TcxLabel
          Left = 5
          Top = 12
          Caption = 'No. Bukti'
        end
        object cxLabel20: TcxLabel
          Left = 4
          Top = 112
          Caption = 'Kernet 3'
        end
        object cxtKernet3: TcxTextEdit
          Left = 60
          Top = 111
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          OnKeyPress = cxtKernet1KeyPress
          Width = 167
        end
        object cxLabel21: TcxLabel
          Left = 239
          Top = 112
          Caption = 'Insentif Kernet 3'
        end
        object cxsInsKernet3: TcxSpinEdit
          Left = 325
          Top = 112
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.EditFormat = True
          Properties.DisplayFormat = '#,##0.00'
          Properties.SpinButtons.Visible = False
          Properties.ValueType = vtFloat
          TabOrder = 7
          Width = 122
        end
        object nxGrd2: TNextGrid
          Left = 5
          Top = 407
          Width = 961
          Height = 61
          FixedCols = 3
          GridLinesStyle = lsActiveRows
          InputSize = 18
          Options = [goGrid, goHeader, goIndicator]
          RowSize = 18
          TabOrder = 28
          TabStop = True
          WantTabs = True
          StartRowCount = 1
          object nxColCheck2: TNxCheckBoxColumn
            Alignment = taCenter
            DefaultWidth = 38
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Check'
            Header.Alignment = taCenter
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
            Position = 0
            SortType = stBoolean
            Visible = False
            Width = 38
          end
          object nxColNo2: TNxIncrementColumn
            DefaultWidth = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No.'
            Options = [coCanClick, coCanInput, coEditing, coPublicUsing]
            Position = 1
            SortType = stAlphabetic
            Width = 24
          end
          object nxColNoSJ2: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SJ'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 2
            SortType = stAlphabetic
          end
          object nxColTglSJ2: TNxDateColumn
            DefaultValue = '16/01/2016'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tanggal SJ'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 3
            SortType = stDate
            NoneCaption = 'None'
            StartDay = dwAutomatic
            TodayCaption = 'Today'
          end
          object nxColNoPol2: TNxTextColumn
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Caption = 'Kode Brg.'
            Header.Caption = 'No. Polisi'
            Options = [coCanClick, coCanInput, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 4
            SortType = stAlphabetic
          end
          object nxColCust2: TNxTextColumn
            DefaultWidth = 220
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Nama Customer'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 5
            SortType = stAlphabetic
            Width = 220
          end
          object nxColTujuan2: TNxTextColumn
            DefaultWidth = 300
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tujuan'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 6
            SortType = stAlphabetic
            Width = 300
          end
          object nxColTujuaLain2: TNxTextColumn
            DefaultWidth = 200
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tujuan Lain-lain'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 7
            SortType = stAlphabetic
            Width = 200
          end
          object nxColNoSPMB2: TNxTextColumn
            DefaultWidth = 95
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'No. SPMB'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 8
            SortType = stAlphabetic
            Width = 95
          end
          object nxColTglSPMB2: TNxDateColumn
            DefaultValue = '16/01/2016'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tgl. SPMB'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 9
            SortType = stDate
            NoneCaption = 'None'
            TodayCaption = 'Today'
          end
          object nxColTglRencKirim2: TNxDateColumn
            DefaultValue = '18/01/2016'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Header.Caption = 'Tgl. Renc Kirim'
            Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
            Position = 10
            SortType = stDate
            NoneCaption = 'None'
            TodayCaption = 'Today'
          end
        end
        object btnTambah1: TButton
          Left = 5
          Top = 475
          Width = 76
          Height = 23
          Caption = 'Tambah'
          TabOrder = 29
          OnClick = btnTambah1Click
        end
        object cxLabel22: TcxLabel
          Left = 239
          Top = 12
          Caption = 'Tgl. Transaksi'
        end
        object cxdTglTrs: TcxDateEdit
          Left = 325
          Top = 11
          TabOrder = 31
          Width = 121
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Rekap Insentif'
        ImageIndex = 1
        object cxLabel14: TcxLabel
          Left = 3
          Top = 12
          Caption = 'Tanggal Input'
        end
        object cxdTgl5: TcxDateEdit
          Left = 79
          Top = 11
          TabOrder = 1
          Width = 121
        end
        object cxdTgl6: TcxDateEdit
          Left = 232
          Top = 11
          TabOrder = 2
          Width = 121
        end
        object btnProsesCXGrid: TButton
          Left = 358
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 3
          OnClick = btnProsesCXGridClick
        end
        object cxnvgtr1: TcxNavigator
          Left = 5
          Top = 400
          Width = 216
          Height = 25
          Control = cxGrid2
          Buttons.ConfirmDelete = False
          Buttons.Insert.Visible = False
          Buttons.Delete.Visible = False
          Buttons.Edit.Visible = False
          Buttons.Post.Visible = False
          Buttons.Cancel.Visible = False
          Buttons.Refresh.Visible = True
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = True
          InfoPanel.Font.Charset = DEFAULT_CHARSET
          InfoPanel.Font.Color = clDefault
          InfoPanel.Font.Height = -11
          InfoPanel.Font.Name = 'MS Sans Serif'
          InfoPanel.Font.Style = []
          TabOrder = 4
        end
        object btnRefresh: TButton
          Left = 232
          Top = 400
          Width = 75
          Height = 25
          Caption = 'Refresh'
          TabOrder = 5
          OnClick = btnRefreshClick
        end
        object Button2: TButton
          Left = 311
          Top = 400
          Width = 107
          Height = 25
          Caption = '&Cetak Excel'
          TabOrder = 6
          OnClick = Button2Click
        end
        object cxlbl3: TcxLabel
          Left = 205
          Top = 12
          Caption = 'S/D'
        end
        object cxGrid2: TcxGrid
          Left = 10
          Top = 40
          Width = 956
          Height = 351
          TabOrder = 8
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsInsHead
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblViewNoRefGridDBTableView1id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxTblViewNoRefGridDBTableView1no_bukti: TcxGridDBColumn
              Caption = 'No. Trans'
              DataBinding.FieldName = 'no_bukti'
              Width = 79
            end
            object cxTblViewNoRefGridDBTableView1sopir: TcxGridDBColumn
              Caption = 'Sopir'
              DataBinding.FieldName = 'sopir'
              Width = 75
            end
            object cxTblViewNoRefGridDBTableView1insentif_sopir: TcxGridDBColumn
              Caption = 'Insentif Sopir'
              DataBinding.FieldName = 'insentif_sopir'
              Width = 71
            end
            object cxTblViewNoRefGridDBTableView1kernet1: TcxGridDBColumn
              Caption = 'Kernet 1'
              DataBinding.FieldName = 'kernet1'
              Width = 78
            end
            object cxTblViewNoRefGridDBTableView1insentif_kernet1: TcxGridDBColumn
              Caption = 'Insentif Kernet 1'
              DataBinding.FieldName = 'insentif_kernet1'
              Width = 83
            end
            object cxTblViewNoRefGridDBTableView1kernet2: TcxGridDBColumn
              Caption = 'Kernet 2'
              DataBinding.FieldName = 'kernet2'
              Width = 84
            end
            object cxTblViewNoRefGridDBTableView1insentif_kernet2: TcxGridDBColumn
              Caption = 'Insentif Kernet 2'
              DataBinding.FieldName = 'insentif_kernet2'
              Width = 85
            end
            object cxTblViewNoRefGridDBTableView1kernet3: TcxGridDBColumn
              Caption = 'Kernet 3'
              DataBinding.FieldName = 'kernet3'
              Width = 88
            end
            object cxTblViewNoRefGridDBTableView1insentif_kernet3: TcxGridDBColumn
              Caption = 'Insentif Kernet 3'
              DataBinding.FieldName = 'insentif_kernet3'
              Width = 84
            end
            object cxTblViewNoRefGridDBTableView1tgl_input: TcxGridDBColumn
              Caption = 'Tgl Input'
              DataBinding.FieldName = 'tgl_input'
              Width = 77
            end
            object cxTblViewNoRefGridDBTableView1user: TcxGridDBColumn
              Caption = 'User'
              DataBinding.FieldName = 'user'
              Width = 62
            end
            object cxTblViewNoRefGridDBTableView1user_dept: TcxGridDBColumn
              Caption = 'User Dept'
              DataBinding.FieldName = 'user_dept'
              Width = 66
            end
          end
          object cxGridDBTableView2: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsInsDet
            DataController.DetailKeyFieldNames = 'no_bukti'
            DataController.KeyFieldNames = 'no_bukti'
            DataController.MasterKeyFieldNames = 'no_bukti'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            object cxTblViewNoRefGridDBTableView2id: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
            end
            object cxTblViewNoRefGridDBTableView2no_bukti: TcxGridDBColumn
              DataBinding.FieldName = 'no_bukti'
              Visible = False
            end
            object cxTblViewNoRefGridDBTableView2nopol: TcxGridDBColumn
              Caption = 'No. Polisi'
              DataBinding.FieldName = 'nopol'
              Width = 90
            end
            object cxTblViewNoRefGridDBTableView2nama: TcxGridDBColumn
              Caption = 'Nama Cust.'
              DataBinding.FieldName = 'nama'
              Width = 250
            end
            object cxTblViewNoRefGridDBTableView2tujuan: TcxGridDBColumn
              Caption = 'Tujuan'
              DataBinding.FieldName = 'tujuan'
              Width = 350
            end
            object cxTblViewNoRefGridDBTableView2tujuan_lain: TcxGridDBColumn
              Caption = 'Tujuan lain'
              DataBinding.FieldName = 'tujuan_lain'
              Width = 300
            end
            object cxTblViewNoRefGridDBTableView2tgl_sj: TcxGridDBColumn
              Caption = 'Tgl. SJ'
              DataBinding.FieldName = 'tgl_sj'
            end
            object cxTblViewNoRefGridDBTableView2no_sj: TcxGridDBColumn
              Caption = 'No. SJ'
              DataBinding.FieldName = 'no_sj'
            end
            object cxTblViewNoRefGridDBTableView2tgl_spmb: TcxGridDBColumn
              Caption = 'Tgl. SPMB'
              DataBinding.FieldName = 'tgl_spmb'
            end
            object cxTblViewNoRefGridDBTableView2no_spmb: TcxGridDBColumn
              Caption = 'No. SPMB'
              DataBinding.FieldName = 'no_spmb'
            end
            object cxTblViewNoRefGridDBTableView2tgl_renc_kirim: TcxGridDBColumn
              Caption = 'Tgl Renc. Kirim'
              DataBinding.FieldName = 'tgl_renc_kirim'
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView1
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView2
            end
            object cxGridLevel4: TcxGridLevel
            end
          end
        end
        object cxLabel18: TcxLabel
          Left = 439
          Top = 403
          Caption = 'Tanggal Input'
        end
        object cxdTgl7: TcxDateEdit
          Left = 519
          Top = 402
          TabOrder = 10
          Width = 121
        end
        object cxLabel19: TcxLabel
          Left = 645
          Top = 404
          Caption = 'S/D'
        end
        object cxdTgl8: TcxDateEdit
          Left = 672
          Top = 402
          TabOrder = 12
          Width = 121
        end
        object btnCetakLap: TButton
          Left = 798
          Top = 399
          Width = 108
          Height = 25
          Caption = 'Cetak Laporan'
          TabOrder = 13
          OnClick = btnCetakLapClick
        end
        object cxlNamaSopir: TcxLookupComboBox
          Left = 520
          Top = 451
          Properties.KeyFieldNames = 'sopir'
          Properties.ListColumns = <
            item
              FieldName = 'sopir'
            end>
          Properties.ListSource = ds1
          TabOrder = 14
          Width = 121
        end
        object cxChkNamaSopir: TcxCheckBox
          Left = 439
          Top = 450
          Caption = 'Sopir'
          TabOrder = 15
          Width = 86
        end
        object cxChkKernet1: TcxCheckBox
          Left = 439
          Top = 475
          Caption = 'Kernet 1'
          TabOrder = 16
          Width = 86
        end
        object cxlNamaKernet1: TcxLookupComboBox
          Left = 520
          Top = 476
          Properties.KeyFieldNames = 'kernet1'
          Properties.ListColumns = <
            item
              Caption = 'kernet 1'
              FieldName = 'kernet1'
            end>
          Properties.ListSource = ds2
          TabOrder = 17
          Width = 121
        end
        object cxChkKernet2: TcxCheckBox
          Left = 670
          Top = 450
          Caption = 'Kernet 2'
          TabOrder = 18
          Width = 86
        end
        object cxChkKernet3: TcxCheckBox
          Left = 670
          Top = 475
          Caption = 'Kernet 3'
          TabOrder = 19
          Width = 86
        end
        object cxlNamaKernet2: TcxLookupComboBox
          Left = 740
          Top = 451
          Properties.KeyFieldNames = 'kernet2'
          Properties.ListColumns = <
            item
              Caption = 'kernet 2'
              FieldName = 'kernet2'
            end>
          Properties.ListSource = ds3
          TabOrder = 20
          Width = 121
        end
        object cxlNamaKernet3: TcxLookupComboBox
          Left = 740
          Top = 476
          Properties.KeyFieldNames = 'kernet3'
          Properties.ListColumns = <
            item
              Caption = 'kernet 3'
              FieldName = 'kernet3'
            end>
          Properties.ListSource = ds4
          TabOrder = 21
          Width = 121
        end
        object cxChkRekap: TcxCheckBox
          Left = 439
          Top = 426
          Caption = 'Laporan Rekap Insentif Sopir dan kernet'
          State = cbsChecked
          TabOrder = 22
          Width = 246
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 576
    Width = 982
    Height = 51
    inherited btnKeluar: TButton
      Left = 87
      Top = 10
      TabOrder = 1
    end
    inherited btnBaru: TButton
      Left = 750
      Top = 10
      TabOrder = 3
    end
    inherited btnEdit: TButton
      Left = 825
      Top = 10
      TabOrder = 4
    end
    inherited btnHapus: TButton
      Left = 900
      Top = 10
      TabOrder = 5
    end
    inherited btnBatal: TButton
      Left = 665
      Top = 10
      TabOrder = 6
    end
    inherited btnSimpan: TButton
      Left = 170
      Top = 10
      TabOrder = 2
      Visible = False
    end
    object btnSimpan1: TButton
      Left = 10
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Simpan'
      TabOrder = 0
      OnClick = btnSimpan1Click
    end
  end
  object ImageList1: TImageList
    Left = 345
    Top = 10
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
  object zqrSJ: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select c.no_bukti,c.tanggal,a.no_bukti as no_spmb,a.nopol,a.driv' +
        'er,b.nama from tbl_spmb_head a'
      'left join tbl_customer b on a.kode_customer=b.kode'
      'left join tbl_sj_head c on a.no_bukti=c.no_spmb'
      'where c.no_bukti is not null'
      'order by c.tanggal DESC')
    Params = <>
    Left = 375
    Top = 9
  end
  object dsSJ: TDataSource
    DataSet = zqrSJ
    Left = 405
    Top = 9
  end
  object zqrSopir: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select * from tbl_sopir')
    Params = <>
    Left = 495
    Top = 9
  end
  object dsSopir: TDataSource
    DataSet = zqrSopir
    Left = 525
    Top = 9
  end
  object zqrH: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_insentifsopir_head')
    Params = <>
    Left = 575
    Top = 10
  end
  object dsH: TDataSource
    DataSet = zqrH
    Left = 605
    Top = 10
  end
  object zqrD: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * from tbl_insentifsopir_det'
      'WHERE no_bukti = :no_bukti')
    Params = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
    Left = 635
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'no_bukti'
        ParamType = ptUnknown
      end>
  end
  object dsD: TDataSource
    DataSet = zqrD
    Left = 665
    Top = 10
  end
  object zqrInsHead: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_insentif_sopir where'
      'tgl_input between :tgl5 and :tgl6')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl6'
        ParamType = ptUnknown
      end>
    Left = 610
    Top = 75
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl5'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl6'
        ParamType = ptUnknown
      end>
  end
  object zqrInsDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_insentif_sopir_det')
    Params = <>
    Left = 670
    Top = 75
  end
  object dsInsHead: TDataSource
    DataSet = zqrInsHead
    Left = 640
    Top = 75
  end
  object dsInsDet: TDataSource
    DataSet = zqrInsDet
    Left = 700
    Top = 75
  end
  object zqr1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select distinct sopir from tbl_insentif_sopir'
      'where sopir<>'#39#39' order by sopir')
    Params = <>
    Left = 15
    Top = 530
  end
  object ds1: TDataSource
    DataSet = zqr1
    Left = 45
    Top = 530
  end
  object zqr2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select distinct kernet1 from tbl_insentif_sopir'
      'where kernet1<>'#39#39' order by kernet1')
    Params = <>
    Left = 75
    Top = 530
  end
  object ds2: TDataSource
    DataSet = zqr2
    Left = 105
    Top = 530
  end
  object zqr3: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select distinct kernet2 from tbl_insentif_sopir'
      'where kernet2<>'#39#39' order by kernet2')
    Params = <>
    Left = 135
    Top = 530
  end
  object ds3: TDataSource
    DataSet = zqr3
    Left = 165
    Top = 530
  end
  object zqr4: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select distinct kernet3 from tbl_insentif_sopir'
      'where kernet3<>'#39#39' order by kernet3')
    Params = <>
    Left = 195
    Top = 530
  end
  object ds4: TDataSource
    DataSet = zqr4
    Left = 225
    Top = 530
  end
end
