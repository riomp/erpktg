inherited frmApprovalTrial: TfrmApprovalTrial
  Left = 236
  Top = 49
  Width = 1029
  Height = 661
  VertScrollBar.Visible = False
  Caption = 'Approval Trial'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1013
    Height = 47
    inherited lblJudul: TLabel
      Top = 13
      Width = 116
      Caption = 'Approval Trial'
    end
  end
  inherited pnlTengah: TPanel
    Top = 47
    Width = 1013
    Height = 520
    object cxGrd: TcxGrid
      Left = 14
      Top = 10
      Width = 985
      Height = 186
      TabOrder = 0
      object cxTbl: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxTblFocusedRecordChanged
        DataController.DataSource = dsTrial
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxTblno_trial: TcxGridDBColumn
          Caption = 'No. Trial'
          DataBinding.FieldName = 'no_trial'
          Width = 86
        end
        object cxTbltanggal: TcxGridDBColumn
          Caption = 'Tanggal'
          DataBinding.FieldName = 'tanggal'
        end
        object cxTbldeskripsi_trial: TcxGridDBColumn
          Caption = 'Deskripsi Trial'
          DataBinding.FieldName = 'deskripsi_trial'
          Width = 272
        end
        object cxTbldept: TcxGridDBColumn
          DataBinding.FieldName = 'dept'
          Width = 51
        end
        object cxTblkode_customer: TcxGridDBColumn
          DataBinding.FieldName = 'kode_customer'
        end
        object cxTblpemohon: TcxGridDBColumn
          DataBinding.FieldName = 'pemohon'
        end
        object cxTbltgl_selesai: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_selesai'
        end
        object cxTbluser: TcxGridDBColumn
          DataBinding.FieldName = 'user'
          Width = 69
        end
        object cxTbluser_dept: TcxGridDBColumn
          DataBinding.FieldName = 'user_dept'
        end
        object cxTbltgl_input: TcxGridDBColumn
          DataBinding.FieldName = 'tgl_input'
        end
        object cxTblsatuan: TcxGridDBColumn
          DataBinding.FieldName = 'satuan'
        end
        object cxTblwaktu: TcxGridDBColumn
          DataBinding.FieldName = 'waktu'
        end
        object cxTblf_status: TcxGridDBColumn
          DataBinding.FieldName = 'f_status'
        end
        object cxTblf_posted: TcxGridDBColumn
          DataBinding.FieldName = 'f_posted'
        end
        object cxTblkode_brg_jadi: TcxGridDBColumn
          DataBinding.FieldName = 'kode_brg_jadi'
        end
        object cxTblf_app_mgmt: TcxGridDBColumn
          DataBinding.FieldName = 'f_app_mgmt'
        end
        object cxTbldeskripsi: TcxGridDBColumn
          DataBinding.FieldName = 'deskripsi'
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object nxGrdSPK: TNextGrid
      Left = 14
      Top = 205
      Width = 446
      Height = 88
      Options = [goGrid, goHeader]
      TabOrder = 1
      TabStop = True
      object nxColNoUrut: TNxIncrementColumn
        DefaultWidth = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No.'
        Position = 0
        SortType = stAlphabetic
        Width = 33
      end
      object nxColNoSPK: TNxTextColumn
        DefaultWidth = 109
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'No. SPK'
        Position = 1
        SortType = stAlphabetic
        Width = 109
      end
      object nxColHslPrd: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Header.Caption = 'Hasil Produksi'
        Position = 2
        SortType = stNumeric
        Width = 90
        Increment = 1.000000000000000000
        Precision = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 14
      Top = 299
      Width = 727
      Height = 159
      Caption = ' Bill Of Material '
      TabOrder = 2
      object pgBom: TPageControl
        Left = 6
        Top = 19
        Width = 696
        Height = 137
        ActivePage = tbA
        ParentShowHint = False
        ShowHint = False
        Style = tsFlatButtons
        TabOrder = 0
        object tbA: TTabSheet
          Caption = 'Bom A'
          object nxGrd1: TNextGrid
            Left = 0
            Top = 0
            Width = 666
            Height = 103
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Kode'
              Position = 2
              SortType = stAlphabetic
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
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Qty.'
              Position = 4
              SortType = stNumeric
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
              Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
              Position = 5
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
              Position = 6
              SortType = stAlphabetic
            end
            object nxColNoSPK1: TNxTextColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Position = 7
              SortType = stAlphabetic
            end
          end
        end
        object tbB: TTabSheet
          Caption = 'Bom B'
          ImageIndex = 1
          object nxGrd2: TNextGrid
            Left = 0
            Top = 0
            Width = 666
            Height = 103
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
              Visible = False
              Width = 44
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
            object nxColKode2: TNxTextColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Kode'
              Position = 2
              SortType = stAlphabetic
            end
            object nxColDesk2: TNxTextColumn
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
            object nxColQty2: TNxNumberColumn
              DefaultValue = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Qty.'
              Position = 4
              SortType = stNumeric
              Increment = 1.000000000000000000
              Precision = 0
            end
            object nxColPakai2: TNxNumberColumn
              DefaultValue = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Pemakaian'
              Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
              Position = 5
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
              Position = 6
              SortType = stAlphabetic
            end
            object nxColNoSPK2: TNxTextColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Position = 7
              SortType = stAlphabetic
            end
          end
        end
        object tbC: TTabSheet
          Caption = 'Bom C'
          ImageIndex = 2
          object nxGrd3: TNextGrid
            Left = 0
            Top = 0
            Width = 666
            Height = 103
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
              Visible = False
              Width = 44
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
            object nxColKode3: TNxTextColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Kode'
              Position = 2
              SortType = stAlphabetic
            end
            object NxTextColumn5: TNxTextColumn
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
            object NxNumberColumn3: TNxNumberColumn
              DefaultValue = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Qty.'
              Position = 4
              SortType = stNumeric
              Increment = 1.000000000000000000
              Precision = 0
            end
            object nxColPakai3: TNxNumberColumn
              DefaultValue = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Header.Caption = 'Pemakaian'
              Options = [coCanClick, coCanInput, coCanSort, coEditing, coPublicUsing]
              Position = 5
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
              Position = 6
              SortType = stAlphabetic
            end
            object nxColNoSPK3: TNxTextColumn
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Position = 7
              SortType = stAlphabetic
            end
          end
        end
      end
    end
    object cxLabel1: TcxLabel
      Left = 15
      Top = 470
      Caption = 'Keputusan Management '
    end
    object cxCmbKeputusan: TcxComboBox
      Left = 139
      Top = 469
      TabOrder = 4
      Text = 'cxCmbKeputusan'
      Width = 382
    end
  end
  inherited pnlBawah: TPanel
    Top = 567
    Width = 1013
    Height = 62
    inherited btnKeluar: TButton
      Left = 902
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 825
      Visible = False
    end
    object btnApp: TButton
      Left = 15
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Approval'
      TabOrder = 6
      OnClick = btnAppClick
    end
    object btnTidakApp: TButton
      Left = 93
      Top = 15
      Width = 98
      Height = 25
      Caption = 'Tidak Approval'
      TabOrder = 7
      OnClick = btnTidakAppClick
    end
    object btnKeluar2: TButton
      Left = 193
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 8
      OnClick = btnKeluar2Click
    end
  end
  object zqrTrial: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.deskripsi '
      'FROM tbl_logbook_design a '
      'LEFT JOIN tbl_barang b ON a.kode_brg_jadi = b.kode '
      'WHERE f_app_mgmt = -1;')
    Params = <>
    Left = 255
    Top = 25
  end
  object dsTrial: TDataSource
    DataSet = zqrTrial
    Left = 285
    Top = 25
  end
  object idSMTP: TIdSMTP
    SASLMechanisms = <>
    Left = 780
    Top = 15
  end
end
