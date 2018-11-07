inherited frmSettingBorongan: TfrmSettingBorongan
  Left = 292
  Top = 36
  Caption = 'Setting Item Borongan'
  ClientHeight = 494
  ClientWidth = 1004
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1004
    inherited lblJudul: TLabel
      Width = 186
      Caption = 'Setting Item Borongan'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Width = 1004
    Height = 385
    inherited pg: TPageControl
      Width = 1002
      Height = 383
      inherited TabSheet1: TTabSheet
        Caption = 'Borongan'
        object cxGrdBorongan: TcxGrid
          Left = 493
          Top = 351
          Width = 856
          Height = 331
          TabOrder = 0
          Visible = False
          object cxGrdBoronganDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsBorongan
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            object cxGrdBoronganDBTableView1kode: TcxGridDBColumn
              Caption = 'Kode Brg.'
              DataBinding.FieldName = 'kode'
            end
            object cxGrdBoronganDBTableView1deskripsi: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Width = 371
            end
            object cxGrdBoronganDBTableView1isi_pak: TcxGridDBColumn
              Caption = 'Isi / Bal'
              DataBinding.FieldName = 'isi_pak'
            end
            object cxGrdBoronganDBTableView1targetbal_7jam: TcxGridDBColumn
              Caption = 'Target Bal / 7 Jam'
              DataBinding.FieldName = 'targetbal_7jam'
              Width = 102
            end
            object cxGrdBoronganDBTableView1targetbal_perjam: TcxGridDBColumn
              Caption = 'Target Bal / Jam'
              DataBinding.FieldName = 'targetbal_perjam'
              Width = 99
            end
            object cxGrdBoronganDBTableView1targetrp_perbal: TcxGridDBColumn
              Caption = 'Target RP / Bal'
              DataBinding.FieldName = 'targetrp_perbal'
              Width = 114
            end
          end
          object cxGrdBoronganLevel1: TcxGridLevel
            GridView = cxGrdBoronganDBTableView1
          end
        end
        object cxGrid1: TcxGrid
          Left = 5
          Top = 11
          Width = 981
          Height = 327
          TabOrder = 1
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsBorongan2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            FilterRow.Visible = True
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Kode Brg.'
              DataBinding.FieldName = 'kode'
              Options.Editing = False
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Deskripsi'
              DataBinding.FieldName = 'deskripsi'
              Options.Editing = False
              Width = 315
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Isi / Bal'
              DataBinding.FieldName = 'isi_pak'
              Options.Editing = False
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Target Bal / 7 Jam'
              DataBinding.FieldName = 'targetbal_7jam'
              Width = 99
            end
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Target Bal / Jam'
              DataBinding.FieldName = 'targetbal_perjam'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Options.Editing = False
              Width = 88
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Target RP / Bal'
              DataBinding.FieldName = 'targetrp_perbal'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Options.Editing = False
              Width = 85
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Total'
              DataBinding.FieldName = 'total'
              PropertiesClassName = 'TcxSpinEditProperties'
              Properties.DisplayFormat = '#,##0.00'
              Options.Editing = False
              Width = 67
            end
            object cxGridDBTableView1Column2: TcxGridDBColumn
              Caption = 'Kap. Roll / Shift'
              DataBinding.FieldName = 'kap_rol_per_shift'
              Width = 89
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 451
    Width = 1004
    Height = 45
    inherited btnKeluar: TButton
      Left = 10
      Top = 10
    end
    inherited btnTambah: TButton
      Left = 470
      Visible = False
    end
    inherited btnEdit: TButton
      Visible = False
    end
    inherited btnHapus: TButton
      Visible = False
    end
    inherited btnBatal: TButton
      Visible = False
    end
    inherited btnSimpan: TButton
      Visible = False
    end
    object cxLabel1: TcxLabel
      Left = 687
      Top = 10
      Caption = '* Gaji Per Hari Berdasarkan UMK : '
    end
    object cxsGajiPerHari: TcxSpinEdit
      Left = 857
      Top = 8
      Properties.DisplayFormat = '#,##0.00'
      Properties.ReadOnly = True
      Properties.ValueType = vtFloat
      TabOrder = 7
      Width = 121
    end
  end
  object dsBorongan: TDataSource
    DataSet = zqrBorongan
    Left = 455
    Top = 20
  end
  object zqrBorongan: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT kode, deskripsi, isi_pak, targetbal_7jam, targetbal_perja' +
        'm, targetrp_perbal '
      'from '
      'v_mst_barang WHERE deskripsi like '#39'%SELANG%'#39';')
    Params = <>
    Left = 485
    Top = 20
  end
  object zqrBorongan2: TZQuery
    Connection = dm.zConn
    OnCalcFields = zqrBorongan2CalcFields
    Active = True
    SQL.Strings = (
      
        'SELECT kode, deskripsi, isi_pak, targetbal_7jam, kap_rol_per_shi' +
        'ft'
      'from '
      'tbl_barang WHERE deskripsi like '#39'%SELANG%'#39';')
    Params = <>
    Left = 545
    Top = 20
    object zqrBorongan2kode: TIntegerField
      FieldName = 'kode'
      Required = True
    end
    object zqrBorongan2deskripsi: TStringField
      FieldName = 'deskripsi'
      Size = 100
    end
    object zqrBorongan2isi_pak: TFloatField
      FieldName = 'isi_pak'
    end
    object zqrBorongan2targetbal_perjam: TFloatField
      FieldKind = fkCalculated
      FieldName = 'targetbal_perjam'
      Calculated = True
    end
    object zqrBorongan2targetrp_perbal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'targetrp_perbal'
      Calculated = True
    end
    object zqrBorongan2targetbal_7jam: TFloatField
      FieldName = 'targetbal_7jam'
    end
    object zqrBorongan2total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object zqrBorongan2kap_rol_per_shift: TIntegerField
      FieldName = 'kap_rol_per_shift'
    end
  end
  object dsBorongan2: TDataSource
    DataSet = zqrBorongan2
    Left = 515
    Top = 20
  end
end
