object frmApprovalSPK: TfrmApprovalSPK
  Left = 74
  Top = 167
  Width = 1136
  Height = 458
  Caption = 'Approval SPK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxdTgl1: TcxDateEdit
    Left = 65
    Top = 15
    TabOrder = 0
    Width = 121
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 17
    Caption = 'Tanggal'
  end
  object cxdTgl2: TcxDateEdit
    Left = 218
    Top = 15
    TabOrder = 2
    Width = 121
  end
  object cxLabel2: TcxLabel
    Left = 190
    Top = 17
    Caption = 'S/D'
  end
  object btnProses: TButton
    Left = 348
    Top = 13
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 4
  end
  object cxGrid1: TcxGrid
    Left = 16
    Top = 49
    Width = 1096
    Height = 328
    TabOrder = 5
    object GridView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSJHead
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      object GridView1no_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
        Width = 85
      end
      object GridView1no_mo: TcxGridDBColumn
        Caption = 'No. MO'
        DataBinding.FieldName = 'no_mo'
        Width = 81
      end
      object GridView1no_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 82
      end
      object GridView1jenis_spk: TcxGridDBColumn
        Caption = 'Jenis SPK'
        DataBinding.FieldName = 'jenis_spk'
        Width = 140
      end
      object GridView1Column1: TcxGridDBColumn
        Caption = 'Nama Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 113
      end
      object GridView1tanggal: TcxGridDBColumn
        Caption = 'Tgl. SPK'
        DataBinding.FieldName = 'tanggal'
      end
      object GridView1jam: TcxGridDBColumn
        Caption = 'Jam'
        DataBinding.FieldName = 'jam'
      end
      object GridView1qty: TcxGridDBColumn
        Caption = 'Qty. SPK'
        DataBinding.FieldName = 'qty'
      end
      object GridView1kode_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
      end
      object GridView1nama: TcxGridDBColumn
        Caption = 'Nama Customer'
        DataBinding.FieldName = 'nama'
        Width = 230
      end
      object GridView1Column2: TcxGridDBColumn
        Caption = 'Tgl. Approval'
        DataBinding.FieldName = 'tgl_prd_check'
      end
      object GridView1tanggal_so: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal_so'
      end
      object GridView1keterangan: TcxGridDBColumn
        DataBinding.FieldName = 'keterangan'
      end
      object GridView1f_app_prd: TcxGridDBColumn
        DataBinding.FieldName = 'f_app_prd'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridView1
    end
  end
  object btnApprove: TButton
    Left = 16
    Top = 385
    Width = 75
    Height = 25
    Caption = 'Approve'
    TabOrder = 6
    OnClick = btnApproveClick
  end
  object btnKeluar: TButton
    Left = 96
    Top = 385
    Width = 75
    Height = 25
    Caption = '&Keluar'
    TabOrder = 7
    OnClick = btnKeluarClick
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_spk WHERE f_app_prd = 0')
    Params = <>
    Left = 250
    Top = 98
  end
  object dsSJHead: TDataSource
    DataSet = zqrSPK
    Left = 280
    Top = 98
  end
end
