inherited frmMstCoa: TfrmMstCoa
  Left = 271
  Top = 65
  Caption = 'Chart Of Account - Daftar Akun'
  ClientHeight = 538
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 252
      Caption = 'Chart of Account - Daftar Akun'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Height = 417
    inherited pg: TPageControl
      Height = 415
      inherited TabSheet1: TTabSheet
        Caption = 'Input'
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
          TabOrder = 6
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
          TabOrder = 7
          Width = 379
        end
        object cxGrdAkun: TcxGrid
          Left = 11
          Top = 181
          Width = 680
          Height = 199
          TabOrder = 16
          object cxTblAkun: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCoa
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            object cxTblAkunColumn1: TcxGridDBColumn
              Caption = 'Induk Akun'
              DataBinding.FieldName = 'nama_induk'
              Options.CellMerging = True
              Width = 71
            end
            object cxTblAkuninduk: TcxGridDBColumn
              DataBinding.FieldName = 'induk'
              Visible = False
              Options.CellMerging = True
              Width = 75
            end
            object cxTblAkunkode: TcxGridDBColumn
              Caption = 'No. Akun'
              DataBinding.FieldName = 'noakun'
              Width = 62
            end
            object cxTblAkunnama: TcxGridDBColumn
              Caption = 'Nama Akun'
              DataBinding.FieldName = 'nama'
              Width = 230
            end
          end
          object cxGrdAkunLevel1: TcxGridLevel
            GridView = cxTblAkun
          end
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
          TabOrder = 1
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
          Properties.OnChange = cxlTipeAkunPropertiesChange
          TabOrder = 0
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
          Caption = 'Induk Akun'
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
          TabOrder = 3
          OnExit = cxlIndukAkunExit
          Width = 209
        end
        object cxLabel6: TcxLabel
          Left = 11
          Top = 161
          Caption = 'Hirarki Akun : '
          Transparent = True
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
          TabOrder = 9
          Width = 121
        end
        object cxtNoAkunInduk: TcxTextEdit
          Left = 304
          Top = 36
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 82
        end
        object cxdbTreeCoa: TcxDBTreeList
          Left = 11
          Top = 181
          Width = 710
          Height = 200
          Bands = <
            item
            end>
          DataController.DataSource = dsAkunHirarki
          DataController.ParentField = 'induk'
          DataController.KeyField = 'noakun'
          OptionsData.CancelOnExit = False
          OptionsData.Editing = False
          OptionsData.Deleting = False
          RootValue = -1
          TabOrder = 10
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
            Width = 482
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
      inherited TabSheet2: TTabSheet
        Caption = 'Cari'
        inherited Label1: TLabel
          Top = 364
        end
        inherited cxGrd: TcxGrid
          Width = 721
          Height = 346
          inherited cxTblView: TcxGridDBTableView
            OnCellDblClick = cxTblViewCellDblClick
            DataController.DataSource = ds
            FilterRow.Visible = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.Footer = False
            object cxTblViewnoakun: TcxGridDBColumn
              Caption = 'No. Akun'
              DataBinding.FieldName = 'noakun'
              Width = 85
            end
            object cxTblViewnama: TcxGridDBColumn
              Caption = 'Nama Akun'
              DataBinding.FieldName = 'nama'
              Width = 215
            end
            object cxTblViewnama_induk: TcxGridDBColumn
              Caption = 'Induk'
              DataBinding.FieldName = 'nama_induk'
            end
            object cxTblViewtipe_1: TcxGridDBColumn
              Caption = 'Tipe AKun'
              DataBinding.FieldName = 'tipe_1'
              Width = 157
            end
            object cxTblViewf_aktif: TcxGridDBColumn
              Caption = 'Aktif'
              DataBinding.FieldName = 'f_aktif'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Width = 63
            end
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 483
    Height = 56
    inherited btnKeluar: TButton
      Top = 15
      TabOrder = 5
    end
    inherited btnTambah: TButton
      Top = 15
      TabOrder = 0
    end
    inherited btnEdit: TButton
      Top = 15
      TabOrder = 1
    end
    inherited btnHapus: TButton
      Top = 15
      TabOrder = 2
      OnClick = btnHapusClick
    end
    inherited btnBatal: TButton
      Top = 15
    end
    inherited btnSimpan: TButton
      Top = 15
      TabOrder = 3
      OnClick = btnSimpanClick
    end
  end
  inherited zQry: TZQuery
    Connection = dm.zConn
    CachedUpdates = True
    SQL.Strings = (
      'SELECT a.*, b.nama nama_induk, c.tipe FROM '
      'tbl_coa a '
      'LEFT JOIN tbl_coa b ON a.induk = b.noakun'
      'LEFT JOIN tbl_tipe_akun c ON c.id = a.tipe'
      'ORDER BY b.nama, a.nama')
  end
  object zqrAkun: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.*, b.nama nama_induk FROM '
      'tbl_coa a LEFT JOIN tbl_coa b ON a.induk = b.noakun'
      ''
      'ORDER BY b.nama, a.nama')
    Params = <>
    Left = 425
    Top = 20
  end
  object dsCoa: TDataSource
    DataSet = zqrAkun
    Left = 455
    Top = 20
  end
  object zqrTipeAkun: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT id, tipe FROM tbl_tipe_akun')
    Params = <>
    Left = 486
    Top = 20
  end
  object dsTipeAkun: TDataSource
    DataSet = zqrTipeAkun
    Left = 516
    Top = 20
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
  object zqrAkunHirarki: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT noakun, nama, induk FROM tbl_coa '
      '-- WHERE induk = '#39'0'#39' '
      'ORDER BY noakun')
    Params = <>
    Left = 606
    Top = 21
  end
  object dsAkunHirarki: TDataSource
    DataSet = zqrAkunHirarki
    Left = 636
    Top = 21
  end
end
