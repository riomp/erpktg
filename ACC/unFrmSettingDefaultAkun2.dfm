inherited frmSettingDefaultAkun2: TfrmSettingDefaultAkun2
  Left = 527
  Top = 220
  Caption = 'Setting Default Akun'
  ClientHeight = 444
  ClientWidth = 768
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 768
    inherited lblJudul: TLabel
      Width = 171
      Caption = 'Setting Default Akun'
    end
    inherited cxtStat: TcxLabel
      Style.IsFontAssigned = True
    end
  end
  inherited pnlTengah: TPanel
    Left = 910
    Top = 195
    Width = 78
    Height = 281
    Align = alNone
    TabOrder = 2
    inherited pg: TPageControl
      Width = 76
      Height = 279
    end
  end
  inherited pnlBawah: TPanel
    Top = 402
    Width = 768
    Height = 42
    Align = alBottom
    TabOrder = 3
    inherited btnKeluar: TButton
      Left = 735
      Top = 40
      TabOrder = 7
      Visible = False
    end
    inherited btnTambah: TButton
      Left = 585
      Top = 15
      TabOrder = 2
      Visible = False
    end
    inherited btnEdit: TButton
      Left = 660
      Top = 15
      TabOrder = 3
      Visible = False
    end
    inherited btnHapus: TButton
      Left = 735
      Top = 15
      TabOrder = 4
      Visible = False
    end
    inherited btnBatal: TButton
      Left = 660
      Top = 40
      TabOrder = 6
      Visible = False
    end
    inherited btnSimpan: TButton
      Left = 585
      Top = 40
      TabOrder = 5
      Visible = False
    end
    object btnSimpan2: TButton
      Left = 9
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Simpan'
      TabOrder = 0
      OnClick = btnSimpan2Click
    end
    object btnKeluar2: TButton
      Left = 89
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Keluar'
      TabOrder = 1
      OnClick = btnKeluar2Click
    end
  end
  object cxGrid1: TcxGrid [3]
    Left = 0
    Top = 66
    Width = 768
    Height = 335
    Align = alTop
    TabOrder = 1
    object cxtbDefAkun: TcxGridTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Delete.Visible = False
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnRecordChanged = cxtbDefAkunDataControllerRecordChanged
      OptionsView.Navigator = True
      object cxColJenis: TcxGridColumn
        Caption = 'Jenis'
        Width = 174
      end
      object cxColKodeAkun: TcxGridColumn
        Caption = 'No. Akun'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.KeyFieldNames = 'noakun'
        Properties.ListColumns = <
          item
            Caption = 'No. Akun'
            FieldName = 'noakun'
          end
          item
            Caption = 'Nama Akun'
            FieldName = 'nama'
          end>
        Properties.ListSource = dsAkunDef
        Width = 94
      end
      object cxColNamaAkun: TcxGridColumn
        Caption = 'Nama Akun'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
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
        Properties.ListSource = dsAkunDef
        Width = 402
      end
      object cxColKodeJenis: TcxGridColumn
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxtbDefAkun
    end
  end
  object zqrAkunDef: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT a.noakun, a.nama FROM tbl_coa a WHERE f_aktif = 1'
      'AND (SELECT COUNT(*) FROM tbl_coa WHERE induk = a.noakun) = 0 '
      'ORDER BY a.noakun')
    Params = <>
    Left = 495
    Top = 20
  end
  object dsAkunDef: TDataSource
    DataSet = zqrAkunDef
    Left = 525
    Top = 20
  end
end
