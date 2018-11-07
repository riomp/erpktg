object frmHslPrdDetail: TfrmHslPrdDetail
  Left = 418
  Top = 227
  Width = 1136
  Height = 607
  Caption = 'Hasil Produksi Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1120
    Height = 51
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 15
      Top = 17
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 65
      Top = 15
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 190
      Top = 17
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 218
      Top = 15
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 347
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 520
    Width = 1120
    Height = 49
    Align = alBottom
    TabOrder = 1
    object btnKeluar: TButton
      Left = 90
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Keluar'
      TabOrder = 0
      OnClick = btnKeluarClick
    end
    object cxGrid4: TcxGrid
      Left = 932
      Top = -25
      Width = 874
      Height = 46
      TabOrder = 1
      Visible = False
      object cxGridDBTableView2: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsView.GroupByBox = False
        object cxGridDBTableView2no_mo: TcxGridDBColumn
          DataBinding.FieldName = 'no_mo'
          Visible = False
          Width = 85
        end
        object cxGridDBTableView2no_spk: TcxGridDBColumn
          Caption = 'No. SPK'
          DataBinding.FieldName = 'no_spk'
        end
        object cxGridDBTableView2qty_spk: TcxGridDBColumn
          Caption = 'Qty. SPK'
          DataBinding.FieldName = 'qty_spk'
          Width = 87
        end
        object cxGridDBTableView2qty_prod: TcxGridDBColumn
          Caption = 'Qty. Produksi'
          DataBinding.FieldName = 'qty_prod'
          Width = 95
        end
        object cxGridDBTableView2qty_kirim: TcxGridDBColumn
          Caption = 'Qty. Kirim Ke WHL'
          DataBinding.FieldName = 'qty_kirim'
          Width = 109
        end
        object cxGridDBTableView2qty_terima: TcxGridDBColumn
          Caption = 'Qty. Terima WHL'
          DataBinding.FieldName = 'qty_terima'
          Width = 110
        end
      end
      object cxGridLevel2: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object btnCetakExcel: TButton
      Left = 12
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cetak Excel'
      TabOrder = 2
      OnClick = btnCetakExcelClick
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 51
    Width = 1120
    Height = 465
    Align = alTop
    TabOrder = 2
    object tblView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSPK
      DataController.KeyFieldNames = 'no_spk'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object tblViewno_spk: TcxGridDBColumn
        Caption = 'No. SPK'
        DataBinding.FieldName = 'no_spk'
      end
      object tblViewno_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
        Visible = False
      end
      object tblViewtanggal_spk: TcxGridDBColumn
        Caption = 'Tanggal SPK'
        DataBinding.FieldName = 'tanggal'
        Width = 75
      end
      object tblViewqty: TcxGridDBColumn
        Caption = 'Qty. SPK'
        DataBinding.FieldName = 'qty'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 73
      end
      object tblViewqty_prod: TcxGridDBColumn
        Caption = 'Qty. Prod'
        DataBinding.FieldName = 'qty_prod'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.DisplayFormat = '#,##0.00'
        Width = 78
      end
      object tblViewuser: TcxGridDBColumn
        Caption = 'User'
        DataBinding.FieldName = 'user'
        Visible = False
        Width = 86
      end
      object tblViewuser_dept: TcxGridDBColumn
        DataBinding.FieldName = 'user_dept'
        Visible = False
      end
      object tblViewtgl_input: TcxGridDBColumn
        Caption = 'Tgl. Jam Input'
        DataBinding.FieldName = 'tgl_input'
        Visible = False
      end
      object tblViewnama_mesin: TcxGridDBColumn
        Caption = 'Mesin'
        DataBinding.FieldName = 'nama_mesin'
        Width = 150
      end
      object tblViewkode_brg: TcxGridDBColumn
        Caption = 'Kode Brg.'
        DataBinding.FieldName = 'kode_brg'
        Width = 97
      end
      object tblViewdeskripsi: TcxGridDBColumn
        Caption = 'Deskripsi'
        DataBinding.FieldName = 'deskripsi'
        Width = 373
      end
      object tblViewkode_mesin: TcxGridDBColumn
        DataBinding.FieldName = 'kode_mesin'
        Visible = False
      end
      object tblViewsatuan: TcxGridDBColumn
        Caption = 'Satuan'
        DataBinding.FieldName = 'satuan'
        Width = 78
      end
      object tblViewf_completed: TcxGridDBColumn
        DataBinding.FieldName = 'f_completed'
        Width = 76
      end
      object tblViewtgl_p_mulai: TcxGridDBColumn
        Caption = 'Tgl. '
        DataBinding.FieldName = 'tgl_p_mulai'
        Width = 86
      end
      object tblViewtgl_p_selesai: TcxGridDBColumn
        Caption = 'Perkiraan Selesai'
        DataBinding.FieldName = 'tgl_p_selesai'
        Width = 108
      end
      object tblViewno_so: TcxGridDBColumn
        Caption = 'No. SO'
        DataBinding.FieldName = 'no_so'
        Width = 106
      end
      object tblViewnama: TcxGridDBColumn
        Caption = 'Customer'
        DataBinding.FieldName = 'nama'
        Width = 290
      end
    end
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsHslPrd
      DataController.MasterKeyFieldNames = 'no_spk'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'no_spk'
      end
      object cxGrid1DBTableView1no_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
        Width = 64
      end
      object cxGrid1DBTableView1shift: TcxGridDBColumn
        DataBinding.FieldName = 'shift'
        Width = 64
      end
      object cxGrid1DBTableView1tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
      end
      object cxGrid1DBTableView1jam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
      end
      object cxGrid1DBTableView1qty_prod: TcxGridDBColumn
        DataBinding.FieldName = 'qty_prod'
      end
      object cxGrid1DBTableView1qty_prod_kg: TcxGridDBColumn
        DataBinding.FieldName = 'qty_prod_kg'
      end
      object cxGrid1DBTableView1qty_reject: TcxGridDBColumn
        DataBinding.FieldName = 'qty_reject'
      end
      object cxGrid1DBTableView1qty_baik: TcxGridDBColumn
        DataBinding.FieldName = 'qty_baik'
      end
      object cxGrid1DBTableView1qty_afkir: TcxGridDBColumn
        DataBinding.FieldName = 'qty_afkir'
      end
      object cxGrid1DBTableView1qty_retur: TcxGridDBColumn
        DataBinding.FieldName = 'qty_retur'
      end
      object cxGrid1DBTableView1tgl_prod_selesai: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_prod_selesai'
        Width = 64
      end
      object cxGrid1DBTableView1user: TcxGridDBColumn
        DataBinding.FieldName = 'user'
        Width = 64
      end
      object cxGrid1DBTableView1user_dept: TcxGridDBColumn
        DataBinding.FieldName = 'user_dept'
        Width = 64
      end
      object cxGrid1DBTableView1ip_address: TcxGridDBColumn
        DataBinding.FieldName = 'ip_address'
        Width = 64
      end
      object cxGrid1DBTableView1hostname: TcxGridDBColumn
        DataBinding.FieldName = 'hostname'
        Width = 64
      end
      object cxGrid1DBTableView1tgl_input: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_input'
        Width = 64
      end
    end
    object cxGrid1DBTableView2: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsHslPrd
      DataController.DetailKeyFieldNames = 'no_spk'
      DataController.MasterKeyFieldNames = 'no_spk'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView2id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
      end
      object cxGrid1DBTableView2no_spk: TcxGridDBColumn
        DataBinding.FieldName = 'no_spk'
        Width = 117
      end
      object cxGrid1DBTableView2no_bukti: TcxGridDBColumn
        DataBinding.FieldName = 'no_bukti'
        Width = 93
      end
      object cxGrid1DBTableView2shift: TcxGridDBColumn
        DataBinding.FieldName = 'shift'
        Width = 37
      end
      object cxGrid1DBTableView2tanggal: TcxGridDBColumn
        DataBinding.FieldName = 'tanggal'
        Width = 73
      end
      object cxGrid1DBTableView2jam: TcxGridDBColumn
        DataBinding.FieldName = 'jam'
        Visible = False
      end
      object cxGrid1DBTableView2qty_prod: TcxGridDBColumn
        DataBinding.FieldName = 'qty_prod'
        Width = 65
      end
      object cxGrid1DBTableView2qty_prod_kg: TcxGridDBColumn
        DataBinding.FieldName = 'qty_prod_kg'
        Width = 90
      end
      object cxGrid1DBTableView2qty_reject: TcxGridDBColumn
        DataBinding.FieldName = 'qty_reject'
      end
      object cxGrid1DBTableView2qty_baik: TcxGridDBColumn
        DataBinding.FieldName = 'qty_baik'
        Visible = False
      end
      object cxGrid1DBTableView2qty_afkir: TcxGridDBColumn
        DataBinding.FieldName = 'qty_afkir'
        Visible = False
      end
      object cxGrid1DBTableView2qty_retur: TcxGridDBColumn
        DataBinding.FieldName = 'qty_retur'
        Visible = False
      end
      object cxGrid1DBTableView2tgl_prod_selesai: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_prod_selesai'
        Visible = False
        Width = 64
      end
      object cxGrid1DBTableView2user: TcxGridDBColumn
        DataBinding.FieldName = 'user'
        Visible = False
        Width = 64
      end
      object cxGrid1DBTableView2user_dept: TcxGridDBColumn
        DataBinding.FieldName = 'user_dept'
        Visible = False
        Width = 64
      end
      object cxGrid1DBTableView2ip_address: TcxGridDBColumn
        DataBinding.FieldName = 'ip_address'
        Visible = False
        Width = 64
      end
      object cxGrid1DBTableView2hostname: TcxGridDBColumn
        DataBinding.FieldName = 'hostname'
        Visible = False
        Width = 64
      end
      object cxGrid1DBTableView2tgl_input: TcxGridDBColumn
        DataBinding.FieldName = 'tgl_input'
        Width = 64
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = tblView
      object cxGrid1Level2: TcxGridLevel
        GridView = cxGrid1DBTableView2
      end
    end
  end
  object zqrSPK: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM v_spk'
      'WHERE (tanggal BETWEEN :tgl1 AND :tgl2)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
    Left = 270
    Top = 138
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tgl1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tgl2'
        ParamType = ptUnknown
      end>
  end
  object dsSPK: TDataSource
    DataSet = zqrSPK
    Left = 240
    Top = 138
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 305
    Top = 230
    PixelsPerInch = 96
    object cxsSpkSelesai: TcxStyle
      AssignedValues = [svColor]
      Color = clMoneyGreen
    end
  end
  object zqrHslPrd: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT *  FROM tbl_hsl_prd')
    Params = <>
    Left = 270
    Top = 168
  end
  object dsHslPrd: TDataSource
    DataSet = zqrHslPrd
    Left = 240
    Top = 168
  end
  object DataSource1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 885
    Top = 103
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_spk')
    Params = <>
    Left = 915
    Top = 103
  end
  object DataSource2: TDataSource
    DataSet = ZReadOnlyQuery2
    Left = 885
    Top = 133
  end
  object ZReadOnlyQuery2: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_hsl_prd')
    Params = <>
    MasterSource = DataSource1
    Left = 915
    Top = 133
  end
end
