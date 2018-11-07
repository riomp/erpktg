inherited frmMasterCOA: TfrmMasterCOA
  Left = 355
  Top = 188
  Width = 1244
  Height = 667
  Caption = 'Daftar Akun'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1228
    inherited lblJudul: TLabel
      Width = 99
      Caption = 'Daftar Akun'
    end
  end
  inherited pnlTengah: TPanel
    Width = 1228
    Height = 505
    object pg: TcxPageControl
      Left = 1
      Top = 1
      Width = 1226
      Height = 503
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 7
      TabOrder = 0
      ClientRectBottom = 502
      ClientRectLeft = 1
      ClientRectRight = 1225
      ClientRectTop = 21
      object cxTabSheet1: TcxTabSheet
        Caption = 'COA'
        ImageIndex = 0
        object btnTambah: TButton
          Left = 10
          Top = 439
          Width = 75
          Height = 25
          Caption = 'Baru'
          TabOrder = 0
          OnClick = btnTambahClick
        end
        object btnEdit2: TButton
          Left = 170
          Top = 439
          Width = 75
          Height = 25
          Caption = 'Edit'
          TabOrder = 1
          OnClick = btnEdit2Click
        end
        object btnHapus2: TButton
          Left = 250
          Top = 439
          Width = 75
          Height = 25
          Caption = 'Hapus'
          TabOrder = 2
        end
        object TreeCOA: TcxDBTreeList
          Left = 10
          Top = 12
          Width = 1015
          Height = 416
          Bands = <
            item
            end>
          DataController.DataSource = dsAkunHirarki
          DataController.ParentField = 'induk'
          DataController.KeyField = 'noakun'
          OptionsBehavior.HeaderHints = True
          OptionsBehavior.IncSearch = True
          OptionsBehavior.IncSearchItem = cxDBTreeList1cxDBTreeListColumn2
          OptionsData.CancelOnExit = False
          OptionsData.Editing = False
          OptionsData.Deleting = False
          OptionsView.GridLines = tlglBoth
          RootValue = -1
          TabOrder = 3
          object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
            Caption.Text = 'No. Akun'
            DataBinding.FieldName = 'noakun'
            Width = 155
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
            Caption.Text = 'Nama Akun'
            DataBinding.FieldName = 'nama'
            Width = 286
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxdbTreeCoacxDBTreeListColumn1: TcxDBTreeListColumn
            Caption.Text = 'Tipe'
            DataBinding.FieldName = 'tipe'
            Width = 176
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
        object btnTambahSub: TButton
          Left = 90
          Top = 439
          Width = 75
          Height = 25
          Caption = 'Tambah Sub'
          TabOrder = 4
          OnClick = btnTambahSubClick
        end
        object Button1: TButton
          Left = 950
          Top = 440
          Width = 75
          Height = 25
          Caption = 'Collapse All '
          TabOrder = 5
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 870
          Top = 440
          Width = 75
          Height = 25
          Caption = 'Expand All'
          TabOrder = 6
          OnClick = Button2Click
        end
        object GroupBox1: TGroupBox
          Left = 1030
          Top = 10
          Width = 185
          Height = 105
          Caption = ' Filter '
          TabOrder = 7
          object cxLabel6: TcxLabel
            Left = 6
            Top = 20
            Caption = 'Nama Akun'
          end
          object cxtFilter: TcxTextEdit
            Left = 8
            Top = 40
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 167
          end
          object btnFilter: TButton
            Left = 8
            Top = 65
            Width = 75
            Height = 25
            Caption = 'Filter'
            TabOrder = 2
            OnClick = btnFilterClick
          end
          object btnHapusFilter: TButton
            Left = 88
            Top = 65
            Width = 75
            Height = 25
            Caption = 'Hapus Filter'
            TabOrder = 3
            OnClick = btnHapusFilterClick
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Input / Edit'
        ImageIndex = 1
        object cxLabel1: TcxLabel
          Left = 11
          Top = 63
          Caption = 'No. Akun'
          Transparent = True
        end
        object cxtNoAkun: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 61
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 114
        end
        object cxLabel2: TcxLabel
          Left = 11
          Top = 89
          Caption = 'Nama Akun'
          Transparent = True
        end
        object cxtNamaAKun: TcxTextEdit
          Tag = 1
          Left = 92
          Top = 87
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 379
        end
        object cxLabel4: TcxLabel
          Left = 11
          Top = 12
          Caption = 'Tipe Akun'
          Transparent = True
        end
        object cxChkAktif: TcxCheckBox
          Left = 351
          Top = 10
          Caption = ' Aktif'
          TabOrder = 5
          Width = 121
        end
        object cxlTipeAkun: TcxLookupComboBox
          Left = 92
          Top = 10
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              Caption = 'Tipe Akun'
              FieldName = 'tipe'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsTipeAkun
          TabOrder = 6
          Width = 254
        end
        object cxLabel5: TcxLabel
          Left = 11
          Top = 114
          Caption = 'Saldo Awal'
          Transparent = True
        end
        object cxsSaldoAwal: TcxSpinEdit
          Left = 92
          Top = 112
          Properties.DisplayFormat = '#,#0.00'
          Properties.EditFormat = '#,#0.00'
          Properties.ValueType = vtFloat
          TabOrder = 8
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 11
          Top = 38
          Caption = 'Sub Akun Dari'
          Transparent = True
        end
        object cxlIndukAkun: TcxLookupComboBox
          Left = 92
          Top = 36
          Properties.DropDownWidth = 400
          Properties.GridMode = True
          Properties.KeyFieldNames = 'noakun'
          Properties.ListColumns = <
            item
              Caption = 'Nama Akun'
              FieldName = 'nama'
            end
            item
              Caption = 'No. Akun'
              Width = 100
              FieldName = 'noakun'
            end>
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = dsIndukAkun
          Properties.OnChange = cxlIndukAkunPropertiesChange
          TabOrder = 10
          Width = 209
        end
        object cxLabel7: TcxLabel
          Left = 11
          Top = 139
          Caption = 'Default'
          Transparent = True
        end
        object cxCmbDK: TcxComboBox
          Left = 92
          Top = 137
          Properties.DropDownListStyle = lsEditFixedList
          TabOrder = 12
          Width = 121
        end
        object cxtNoAkunInduk: TcxTextEdit
          Left = 304
          Top = 36
          Properties.ReadOnly = True
          TabOrder = 13
          Width = 82
        end
        object btnSimpan2: TButton
          Left = 11
          Top = 170
          Width = 75
          Height = 25
          Caption = 'Simpan'
          TabOrder = 14
          OnClick = btnSimpan2Click
        end
        object btnBatal2: TButton
          Left = 91
          Top = 170
          Width = 75
          Height = 25
          Caption = 'Batal'
          TabOrder = 15
          OnClick = btnBatal2Click
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Left = 1190
    Top = 291
    Width = 1193
    Align = alNone
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 571
    Width = 1228
    Height = 57
    Align = alClient
    TabOrder = 3
    object btnKeluar2: TButton
      Left = 12
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 0
      OnClick = btnKeluar2Click
    end
  end
  object zqrCOA: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_coa'
      'WHERE induk = '#39'0'#39)
    Params = <>
    Left = 265
    Top = 25
  end
  object dsCOA: TDataSource
    DataSet = zqrCOA
    Left = 295
    Top = 25
  end
  object zqrAkunHirarki: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama, a.induk, b.tipe'
      'FROM tbl_coa a'
      'LEFT JOIN tbl_tipe_akun b ON a.tipe = b.id'
      '-- '
      'ORDER BY noakun')
    Params = <>
    Left = 871
    Top = 26
  end
  object dsAkunHirarki: TDataSource
    DataSet = zqrAkunHirarki
    Left = 901
    Top = 26
  end
  object zqrTipeAkun: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT id, tipe FROM tbl_tipe_akun')
    Params = <>
    Left = 811
    Top = 25
  end
  object dsTipeAkun: TDataSource
    DataSet = zqrTipeAkun
    Left = 841
    Top = 25
  end
  object zqrIndukAkun: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT noakun, nama FROM tbl_coa '
      '-- WHERE induk = '#39'0'#39' '
      'ORDER BY nama')
    Params = <>
    Left = 545
    Top = 20
  end
  object dsIndukAkun: TDataSource
    DataSet = zqrIndukAkun
    Left = 575
    Top = 20
  end
end
