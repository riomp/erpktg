inherited frmInformasiPerbaikanBengkel: TfrmInformasiPerbaikanBengkel
  Left = 192
  Top = 32
  Width = 1029
  Height = 680
  Caption = 'Informasi Perbaikan Bengkel'
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1013
    Height = 41
    inherited lblJudul: TLabel
      Top = 9
      Width = 237
      Caption = 'Informasi Perbaikan Bengkel'
    end
  end
  inherited pnlTengah: TPanel
    Top = 41
    Width = 1013
    Height = 600
    object cxLabel1: TcxLabel
      Left = 15
      Top = 12
      Caption = 'Bengkel'
    end
    object cxCmbBengkel: TcxComboBox
      Left = 83
      Top = 11
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnChange = cxCmbBengkelPropertiesChange
      TabOrder = 3
      Width = 126
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 37
      Caption = 'Mesin'
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 62
      Caption = 'Trgt. Selesai'
    end
    object cxLabel4: TcxLabel
      Left = 15
      Top = 87
      Caption = 'Keterangan'
    end
    object cxMemoKet: TcxMemo
      Left = 83
      Top = 86
      Properties.CharCase = ecUpperCase
      TabOrder = 15
      Height = 67
      Width = 698
    end
    object cxLabel5: TcxLabel
      Left = 15
      Top = 156
      AutoSize = False
      Caption = 'Keterangan Lain-lain'
      Properties.WordWrap = True
      Height = 47
      Width = 66
    end
    object cxMemoKet2: TcxMemo
      Left = 83
      Top = 159
      Properties.CharCase = ecUpperCase
      TabOrder = 19
      Height = 67
      Width = 698
    end
    object cxtrProgress: TcxTrackBar
      Left = 514
      Top = 20
      ParentShowHint = False
      Properties.Frequency = 5
      Properties.Max = 100
      Properties.OnChange = cxtrProgressPropertiesChange
      ShowHint = True
      TabOrder = 6
      Height = 56
      Width = 196
    end
    object cxLabel6: TcxLabel
      Left = 459
      Top = 37
      Caption = 'Progress'
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 232
      Caption = 'PIC'
    end
    object cxtMesin: TcxMaskEdit
      Left = 83
      Top = 36
      Properties.CharCase = ecUpperCase
      TabOrder = 8
      Width = 368
    end
    object cxdTarget: TcxDateEdit
      Left = 83
      Top = 61
      TabOrder = 13
      Width = 121
    end
    object cxtPIC: TcxMaskEdit
      Left = 83
      Top = 231
      Properties.CharCase = ecUpperCase
      TabOrder = 20
      Width = 368
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 257
      Caption = 'Urutan'
    end
    object cxsNomer: TcxSpinEdit
      Left = 83
      Top = 256
      TabOrder = 22
      Width = 53
    end
    object Button1: TButton
      Left = 83
      Top = 281
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 24
      OnClick = Button1Click
    end
    object btnUp: TButton
      Left = 418
      Top = 565
      Width = 56
      Height = 26
      Caption = 'UP'
      TabOrder = 34
      Visible = False
      OnClick = btnUpClick
    end
    object btnDown: TButton
      Left = 297
      Top = 565
      Width = 56
      Height = 26
      Caption = 'DOWN'
      TabOrder = 33
      Visible = False
      OnClick = btnDownClick
    end
    object lblProg: TcxLabel
      Left = 720
      Top = 36
    end
    object cxChkStatus: TcxCheckBox
      Left = 214
      Top = 10
      Caption = 'Selesai'
      TabOrder = 0
      Width = 121
    end
    object pg: TPageControl
      Left = 10
      Top = 310
      Width = 991
      Height = 243
      ActivePage = TabSheet1
      TabOrder = 28
      object TabSheet1: TTabSheet
        Caption = 'Depan'
        object cxGrd: TcxGrid
          Left = 4
          Top = 5
          Width = 974
          Height = 206
          TabOrder = 0
          object cxTbl: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxTblCellDblClick
            DataController.DataSource = ds
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxTblid: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
              Width = 25
            end
            object cxTblnomer: TcxGridDBColumn
              Caption = 'Urutan'
              DataBinding.FieldName = 'nomer'
              Width = 44
            end
            object cxTblColumn1: TcxGridDBColumn
              Caption = 'Tgl. Input'
              DataBinding.FieldName = 'tgl_input'
              Width = 69
            end
            object cxTblbengkel: TcxGridDBColumn
              Caption = 'Bengkel'
              DataBinding.FieldName = 'bengkel'
              Width = 60
            end
            object cxTblmesin: TcxGridDBColumn
              Caption = 'Mesin'
              DataBinding.FieldName = 'mesin'
              Width = 113
            end
            object cxTbltgl_terima: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_terima'
              Visible = False
            end
            object cxTbltgl_target: TcxGridDBColumn
              Caption = 'Target'
              DataBinding.FieldName = 'tgl_target'
            end
            object cxTblketerangan: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Width = 376
            end
            object cxTblprogress: TcxGridDBColumn
              Caption = 'Progress'
              DataBinding.FieldName = 'progress'
            end
            object cxTblketerangan_lain: TcxGridDBColumn
              Caption = 'Keterangan Lain'
              DataBinding.FieldName = 'keterangan_lain'
              Width = 121
            end
            object cxTblpic: TcxGridDBColumn
              Caption = 'PIC'
              DataBinding.FieldName = 'pic'
              Width = 92
            end
            object cxTbluser: TcxGridDBColumn
              DataBinding.FieldName = 'user'
              Visible = False
            end
            object cxTbluser_dept: TcxGridDBColumn
              DataBinding.FieldName = 'user_dept'
              Visible = False
            end
          end
          object cxGrdLevel1: TcxGridLevel
            GridView = cxTbl
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Belakang'
        ImageIndex = 1
        object cxGrd2: TcxGrid
          Left = 4
          Top = 5
          Width = 974
          Height = 206
          TabOrder = 0
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellDblClick = cxGridDBTableView1CellDblClick
            DataController.DataSource = ds2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxGridDBColumn1: TcxGridDBColumn
              DataBinding.FieldName = 'id'
              Visible = False
              Width = 25
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Urutan'
              DataBinding.FieldName = 'nomer'
              Width = 44
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Tgl. Input'
              DataBinding.FieldName = 'tgl_input'
              Width = 72
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Bengkel'
              DataBinding.FieldName = 'bengkel'
              Width = 73
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Mesin'
              DataBinding.FieldName = 'mesin'
              Width = 113
            end
            object cxGridDBColumn5: TcxGridDBColumn
              DataBinding.FieldName = 'tgl_terima'
              Visible = False
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Target'
              DataBinding.FieldName = 'tgl_target'
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Keterangan'
              DataBinding.FieldName = 'keterangan'
              Width = 368
            end
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Progress'
              DataBinding.FieldName = 'progress'
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Keterangan Lain'
              DataBinding.FieldName = 'keterangan_lain'
              Width = 121
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'PIC'
              DataBinding.FieldName = 'pic'
              Width = 92
            end
            object cxGridDBColumn11: TcxGridDBColumn
              DataBinding.FieldName = 'user'
              Visible = False
            end
            object cxGridDBColumn12: TcxGridDBColumn
              DataBinding.FieldName = 'user_dept'
              Visible = False
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
    object cxsProgress: TcxSpinEdit
      Left = 706
      Top = 35
      Properties.OnChange = cxsProgressPropertiesChange
      TabOrder = 7
      Width = 66
    end
    object cxlMesin: TcxLookupComboBox
      Left = 83
      Top = 36
      Properties.DropDownListStyle = lsEditList
      Properties.KeyFieldNames = 'nama'
      Properties.ListColumns = <
        item
          Caption = 'Nama Mesin'
          FieldName = 'nama'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsMesin
      TabOrder = 9
      Width = 368
    end
    object Button2: TButton
      Left = 161
      Top = 281
      Width = 75
      Height = 25
      Caption = 'Batal'
      TabOrder = 25
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 239
      Top = 281
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 26
      OnClick = Button3Click
    end
    object cxLabel9: TcxLabel
      Left = 844
      Top = 310
      Caption = 'Filter : '
    end
    object cxCmbFilter: TcxComboBox
      Left = 879
      Top = 307
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'SEMUA'
        'BLM. SELESAI'
        'SELESAI')
      Properties.OnChange = cxCmbFilterPropertiesChange
      TabOrder = 27
      Width = 121
    end
    object btnCetak: TButton
      Left = 925
      Top = 560
      Width = 75
      Height = 25
      Caption = 'Cetak'
      TabOrder = 30
      OnClick = btnCetakClick
    end
    object cxtID: TcxTextEdit
      Left = 830
      Top = 10
      TabOrder = 2
      Visible = False
      Width = 121
    end
    object btnUbahUrutan: TButton
      Left = 10
      Top = 561
      Width = 75
      Height = 25
      Caption = 'Ubah Urutan'
      TabOrder = 31
      OnClick = btnUbahUrutanClick
    end
    object Panel1: TPanel
      Left = 495
      Top = 105
      Width = 826
      Height = 318
      TabOrder = 17
      Visible = False
      object nxGrdUrutan: TNextGrid
        Left = 22
        Top = 35
        Width = 777
        Height = 224
        Options = [goGrid, goHeader]
        TabOrder = 1
        TabStop = True
        object nxColUrutan: TNxIncrementColumn
          DefaultWidth = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Urutan'
          Position = 0
          SortType = stAlphabetic
          Width = 42
        end
        object nxColMesin: TNxTextColumn
          DefaultWidth = 229
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Mesin'
          Position = 1
          SortType = stAlphabetic
          Width = 229
        end
        object nxColKeterangan: TNxTextColumn
          DefaultWidth = 468
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'Keterangan'
          Position = 2
          SortType = stAlphabetic
          Width = 468
        end
        object nxColID: TNxTextColumn
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Header.Caption = 'ID'
          Position = 3
          SortType = stAlphabetic
          Visible = False
        end
      end
      object btnUp2: TButton
        Left = 12
        Top = 284
        Width = 75
        Height = 25
        Caption = 'NAIK'
        TabOrder = 2
        OnClick = btnUp2Click
      end
      object btnDown2: TButton
        Left = 92
        Top = 284
        Width = 75
        Height = 25
        Caption = 'TURUN'
        TabOrder = 3
        OnClick = btnDown2Click
      end
      object Button4: TButton
        Left = 172
        Top = 284
        Width = 75
        Height = 25
        Caption = 'Simpan'
        TabOrder = 4
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 252
        Top = 284
        Width = 75
        Height = 25
        Caption = 'Batal'
        TabOrder = 5
        OnClick = Button5Click
      end
      object cxLabel10: TcxLabel
        Left = 22
        Top = 6
        Caption = 'Bengkel'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -16
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
    end
    object btnHapus2: TButton
      Left = 87
      Top = 561
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 32
      OnClick = btnHapus2Click
    end
    object cxlbl1: TcxLabel
      Left = 310
      Top = 11
      Caption = 'Tanggal Input'
    end
    object cxdTgl: TcxDateEdit
      Left = 387
      Top = 10
      TabOrder = 1
      Width = 109
    end
  end
  inherited pnlBawah: TPanel
    Top = 641
    Width = 1013
    Visible = False
  end
  object zqr: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_info_bengkel'
      'WHERE bengkel = '#39'DEPAN'#39
      '-- '
      'ORDER BY nomer')
    Params = <>
    Left = 600
    Top = 271
  end
  object ds: TDataSource
    DataSet = zqr
    Left = 630
    Top = 271
  end
  object zqr2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_info_bengkel'
      'WHERE bengkel = '#39'BELAKANG'#39
      '-- '
      'ORDER BY nomer')
    Params = <>
    Left = 660
    Top = 271
  end
  object ds2: TDataSource
    DataSet = zqr2
    Left = 690
    Top = 271
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT nama FROM tbl_mesin '
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 720
    Top = 271
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 750
    Top = 271
  end
end
