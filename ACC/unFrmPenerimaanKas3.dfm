inherited frmPenerimaanKas: TfrmPenerimaanKas
  Left = 481
  Top = 245
  Width = 1079
  Height = 610
  Caption = 'Penerimaan Kas'
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1063
    inherited lblJudul: TLabel
      Width = 132
      Caption = 'Penerimaan Kas'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1063
    Height = 425
    object nxGrd: TNextGrid
      Left = 15
      Top = 124
      Width = 853
      Height = 156
      Options = [goGrid, goHeader]
      TabOrder = 15
      TabStop = True
      WantReturns = True
      WantTabs = True
      OnAfterEdit = nxGrdAfterEdit
      OnCellDblClick = nxGrdCellDblClick
      StartRowCount = 5
      object nxColNoUrut: TNxIncrementColumn
        DefaultWidth = 34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 0
        SortType = stAlphabetic
        Width = 34
      end
      object nxColHapus: TNxImageColumn
        Alignment = taCenter
        DefaultValue = '0'
        DefaultWidth = 41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hapus'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
        Position = 1
        SortType = stNumeric
        Width = 41
        Images = ImageList1
      end
      object nxColAkun: TNxButtonColumn
        DefaultWidth = 83
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Akun'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 2
        SortType = stAlphabetic
        Width = 83
        ButtonCaption = '...'
      end
      object nxColNamaAkun: TNxTextColumn
        DefaultWidth = 228
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Nama Akun'
        Position = 3
        SortType = stAlphabetic
        Width = 228
      end
      object nxColJml: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 92
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Jumlah'
        Header.Alignment = taRightJustify
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 4
        SortType = stNumeric
        Width = 92
        EditOptions = [eoAllowFloat, eoAllowSigns]
        FormatMask = '#,##0.00'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object nxColNoTrans: TNxButtonColumn
        DefaultWidth = 102
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. Trans'
        Position = 5
        SortType = stAlphabetic
        Visible = False
        Width = 102
        ButtonCaption = '...'
        EditOptions = [epDisableTyping]
      end
      object nxColKeterangan: TNxTextColumn
        DefaultWidth = 246
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Keterangan'
        Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing, coShowTextFitHint]
        Position = 6
        SortType = stAlphabetic
        Width = 246
      end
      object nxColJurnal: TNxTextColumn
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
    object cxLabel1: TcxLabel
      Left = 15
      Top = 13
      Caption = 'Penerimaan Ke'
    end
    object cxlAkun: TcxLookupComboBox
      Left = 106
      Top = 11
      Properties.KeyFieldNames = 'noakun'
      Properties.ListColumns = <
        item
          Caption = 'Nama Akun'
          FieldName = 'nama'
        end
        item
          Caption = 'No. Akun'
          FieldName = 'noakun'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAkun
      Properties.OnChange = cxlAkunPropertiesChange
      TabOrder = 0
      Width = 320
    end
    object cxtNoAkun: TcxTextEdit
      Left = 429
      Top = 11
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 82
    end
    object cxChkPosting: TcxCheckBox
      Left = 513
      Top = 12
      Caption = 'Posting'
      TabOrder = 2
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 39
      Caption = 'Tanggal'
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 66
      Caption = 'No. Bukti'
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 91
      Caption = 'Keterangan'
    end
    object cxtKeterangan: TcxTextEdit
      Left = 106
      Top = 89
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.Color = clWindow
      TabOrder = 3
      Width = 410
    end
    object cxtNoTrans: TcxTextEdit
      Left = 106
      Top = 64
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      TabOrder = 4
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 248
      Top = 39
      Caption = 'Unit'
      Visible = False
    end
    object cxLabel7: TcxLabel
      Left = 248
      Top = 66
      Caption = 'Dept'
      Visible = False
    end
    object cxlUnit: TcxLookupComboBox
      Left = 339
      Top = 37
      Properties.KeyFieldNames = 'unit'
      Properties.ListColumns = <
        item
          Caption = 'Unit'
          FieldName = 'unit'
        end>
      Properties.ListSource = dsUnit
      TabOrder = 5
      Visible = False
      Width = 145
    end
    object cxlDept: TcxLookupComboBox
      Left = 339
      Top = 64
      Properties.KeyFieldNames = 'dept'
      Properties.ListColumns = <
        item
          Caption = 'Dept'
          FieldName = 'dept'
        end>
      Properties.ListSource = dsDept
      TabOrder = 6
      Visible = False
      Width = 145
    end
    object cxGrd: TcxGrid
      Left = 13
      Top = 113
      Width = 1036
      Height = 249
      TabOrder = 7
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = False
        NavigatorButtons.NextPage.Visible = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = False
        DataController.DataSource = ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,#0.00'
            Kind = skSum
            Column = cxTbljumlah
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Appending = True
        OptionsView.Navigator = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxTblnoakun: TcxGridDBColumn
          Caption = 'No. Akun'
          DataBinding.FieldName = 'noakun'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'noakun'
          Properties.ListColumns = <
            item
              Caption = 'No. Akun'
              FieldName = 'noakun'
            end
            item
              Caption = 'Akun'
              FieldName = 'nama'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsDetAkun
          Options.Sorting = False
        end
        object cxTblnama_akun: TcxGridDBColumn
          Caption = 'Nama Akun'
          DataBinding.FieldName = 'noakun'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.DropDownAutoSize = True
          Properties.KeyFieldNames = 'noakun'
          Properties.ListColumns = <
            item
              Caption = 'Akun'
              FieldName = 'nama'
            end
            item
              Caption = 'No. Akun'
              FieldName = 'noakun'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsDetAkun
          Options.Sorting = False
          Width = 271
        end
        object cxTbljumlah: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,#0.00'
          Options.Sorting = False
          Width = 95
        end
        object cxColUnit: TcxGridDBColumn
          Caption = 'Unit'
          DataBinding.FieldName = 'unit'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'unit'
          Properties.ListColumns = <
            item
              Caption = 'Unit'
              FieldName = 'unit'
            end>
          Properties.ListSource = dsUnit
          Width = 69
        end
        object cxColDept: TcxGridDBColumn
          Caption = 'Dept'
          DataBinding.FieldName = 'dept'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'dept'
          Properties.ListColumns = <
            item
              Caption = 'Dept'
              FieldName = 'dept'
            end>
          Properties.ListSource = dsDept
          Width = 111
        end
        object cxTblketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Options.Sorting = False
          Width = 338
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 15
      Top = 375
      Width = 180
      Height = 25
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      InfoPanel.Font.Charset = DEFAULT_CHARSET
      InfoPanel.Font.Color = clDefault
      InfoPanel.Font.Height = -11
      InfoPanel.Font.Name = 'MS Sans Serif'
      InfoPanel.Font.Style = []
      TabOrder = 8
      Visible = False
    end
    object cxsTotal: TcxSpinEdit
      Left = 694
      Top = 387
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 16
      Visible = False
      Width = 121
    end
    object cxdTgl: TcxDateEdit
      Left = 106
      Top = 37
      Properties.ReadOnly = False
      Properties.OnChange = cxdTglPropertiesChange
      TabOrder = 17
      OnExit = cxdTglExit
      Width = 121
    end
  end
  inherited pnlBawah: TPanel
    Top = 491
    Width = 1063
    inherited btnKeluar: TButton
      Left = 957
    end
  end
  object zqrAkun: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT noakun, nama, '
      
        '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_a' +
        'nak '
      'FROM tbl_coa a'
      '-- WHERE tipe = 1 AND induk <> '#39'0'#39';'
      
        'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun)' +
        ' = 0;')
    Params = <>
    Left = 265
    Top = 15
  end
  object dsAkun: TDataSource
    DataSet = zqrAkun
    Left = 295
    Top = 15
  end
  object zqrEdit: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a.no_jurnal, a.tanggal, a.keterangan, b.debet + b.kredit ' +
        'jumlah FROM '
      
        'tbl_jurnal a INNER JOIN tbl_jurnal_det b ON a.no_jurnal = b.no_j' +
        'urnal'
      'LEFT JOIN tbl_coa c ON c.noakun = b.akun'
      'WHERE a.jenis = '#39'IK'#39' AND b.f_head = 1')
    Params = <>
    Left = 325
    Top = 15
  end
  object dsEdit2: TDataSource
    DataSet = zqrEdit
    Left = 355
    Top = 15
  end
  object zqrDetAkun: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT noakun, nama, '
      
        '(SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun) jml_a' +
        'nak '
      'FROM tbl_coa a'
      
        'WHERE (SELECT COUNT(noakun) FROM tbl_coa WHERE induk = a.noakun)' +
        ' = 0;')
    Params = <>
    Left = 386
    Top = 15
  end
  object dsDetAkun: TDataSource
    DataSet = zqrDetAkun
    Left = 416
    Top = 15
  end
  object ImageList1: TImageList
    Left = 425
    Top = 115
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
  object cxEditRepository1: TcxEditRepository
    Left = 590
    Top = 151
    object cxEditRepository1SpinItem1: TcxEditRepositorySpinItem
      Properties.DisplayFormat = '#,#0.00'
    end
  end
  object memTbl: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'nama_akun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'noakun'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'jumlah'
        DataType = ftFloat
      end
      item
        Name = 'keterangan'
        DataType = ftString
        Size = 200
      end>
    IndexFieldNames = 'id'
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
    Left = 660
    Top = 101
    object memTblnama_akun: TStringField
      FieldName = 'nama_akun'
    end
    object memTblnoakun: TStringField
      FieldName = 'noakun'
    end
    object memTbljumlah: TFloatField
      FieldName = 'jumlah'
    end
    object memTblketerangan: TStringField
      FieldName = 'keterangan'
      Size = 200
    end
    object memTblid: TAutoIncField
      FieldName = 'id'
    end
    object memTblunit: TStringField
      FieldName = 'unit'
    end
    object memTbldept: TStringField
      FieldName = 'dept'
    end
  end
  object ds: TDataSource
    DataSet = memTbl
    Left = 685
    Top = 100
  end
  object zqrUnit: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT unit FROM tbl_unit_ktg ORDER BY unit')
    Params = <>
    Left = 751
    Top = 70
  end
  object dsUnit: TDataSource
    DataSet = zqrUnit
    Left = 781
    Top = 70
  end
  object zqrDept: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT dept FROM tbl_dept_ktg ORDER BY dept')
    Params = <>
    Left = 816
    Top = 70
  end
  object dsDept: TDataSource
    DataSet = zqrDept
    Left = 846
    Top = 70
  end
end
