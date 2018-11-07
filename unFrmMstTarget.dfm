inherited frmMstTarget: TfrmMstTarget
  Left = 273
  Top = 144
  Width = 835
  Height = 545
  VertScrollBar.Visible = False
  Caption = 'Master Target'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 819
    inherited lblJudul: TLabel
      Width = 116
      Caption = 'Master Target'
    end
  end
  inherited pnlTengah: TPanel
    Width = 819
    Height = 367
    object cxLabel1: TcxLabel
      Left = 15
      Top = 15
      Caption = 'Deskripsi Barang'
    end
    object cxlBrg: TcxLookupComboBox
      Left = 103
      Top = 14
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
      Properties.ListSource = dsBrg
      TabOrder = 1
      Width = 433
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 40
      Caption = 'Mesin'
    end
    object cxlMesin: TcxLookupComboBox
      Left = 103
      Top = 39
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end
        item
          Caption = 'Jenis'
          FieldName = 'jenis'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsMesin
      TabOrder = 3
      Width = 433
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 66
      Caption = 'Target'
    end
    object cxsTarget: TcxSpinEdit
      Left = 103
      Top = 65
      Properties.DisplayFormat = '#,#0.00000'
      Properties.ValueType = vtFloat
      TabOrder = 5
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 92
      Caption = 'Target KG'
    end
    object cxsTargetKG: TcxSpinEdit
      Left = 104
      Top = 91
      Properties.DisplayFormat = '#,#0.00000'
      Properties.ValueType = vtFloat
      TabOrder = 7
      Width = 121
    end
    object cxGrd: TcxGrid
      Left = 16
      Top = 146
      Width = 785
      Height = 185
      TabOrder = 8
      object cxTblView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cxTblViewCellDblClick
        DataController.DataSource = dsTarget
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        object cxTblViewkode_brg: TcxGridDBColumn
          Caption = 'Kode Brg.'
          DataBinding.FieldName = 'kode_brg'
          Width = 70
        end
        object cxTblViewdeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'deskripsi'
          Width = 318
        end
        object cxTblViewColumn2: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'satuan'
          Width = 48
        end
        object cxTblViewkode_mesin: TcxGridDBColumn
          Caption = 'Kode Mesin'
          DataBinding.FieldName = 'kode_mesin'
          Width = 91
        end
        object cxTblViewColumn1: TcxGridDBColumn
          Caption = 'Kapasitas'
          DataBinding.FieldName = 'kapasitas'
          Width = 79
        end
        object cxTblViewtarget: TcxGridDBColumn
          Caption = 'Target'
          DataBinding.FieldName = 'target'
          Width = 71
        end
        object cxTblViewtarget_kg: TcxGridDBColumn
          Caption = 'Target KG'
          DataBinding.FieldName = 'target_kg'
          Width = 65
        end
      end
      object cxGrdLevel1: TcxGridLevel
        GridView = cxTblView
      end
    end
    object btnSimpan2: TButton
      Left = 104
      Top = 115
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 9
      OnClick = btnSimpan2Click
    end
    object cxLabel5: TcxLabel
      Left = 541
      Top = 125
      Caption = '* Double Klik Pada Baris untuk melakukan pengeditan'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      AnchorX = 801
    end
    object cxLabel6: TcxLabel
      Left = 230
      Top = 66
      Caption = 'Kapasitas'
    end
    object cxsKapasitas: TcxSpinEdit
      Left = 285
      Top = 65
      Properties.DisplayFormat = '#,#0.00000'
      Properties.ValueType = vtFloat
      TabOrder = 12
      Width = 121
    end
    object btnExcel: TButton
      Left = 93
      Top = 335
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 13
      OnClick = btnExcelClick
    end
    object btnHapusTarget: TButton
      Left = 16
      Top = 335
      Width = 75
      Height = 25
      Caption = 'Hapus'
      TabOrder = 14
      OnClick = btnHapusTargetClick
    end
  end
  inherited pnlBawah: TPanel
    Top = 433
    Width = 819
  end
  object zqrTarget: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'select a.kode_brg, b.deskripsi, b.satuan, a.kode_mesin, a.target' +
        ', a.target_kg, ifnull(a.kapasitas,0) kapasitas'
      'from tbl_kapasitas_mesin a '
      'left join tbl_barang b on a.kode_brg = b.kode;')
    Params = <>
    Left = 430
    Top = 20
  end
  object dsTarget: TDataSource
    DataSet = zqrTarget
    Left = 460
    Top = 20
  end
  object zqrBrg: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select kode, deskripsi FROM tbl_barang WHERE f_aktif = 1'
      'order by deskripsi')
    Params = <>
    Left = 490
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zqrBrg
    Left = 520
    Top = 20
  end
  object zqrMesin: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'select kode, nama, jenis from tbl_mesin where f_aktif = 1'
      'order by kode;')
    Params = <>
    Left = 545
    Top = 20
  end
  object dsMesin: TDataSource
    DataSet = zqrMesin
    Left = 575
    Top = 20
  end
end
