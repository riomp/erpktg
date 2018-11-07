object frmViewMstSupplier: TfrmViewMstSupplier
  Left = 120
  Top = 137
  BorderStyle = bsSingle
  Caption = 'View Master Supplier'
  ClientHeight = 446
  ClientWidth = 1125
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  DesignSize = (
    1125
    446)
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 15
    Top = 13
    Width = 1095
    Height = 384
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSupp
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGrid1DBTableView1kode: TcxGridDBColumn
        DataBinding.FieldName = 'kode'
        Visible = False
        Width = 64
      end
      object cxGrid1DBTableView1nama: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama'
        Width = 230
      end
      object cxGrid1DBTableView1kontak: TcxGridDBColumn
        Caption = 'Kontak'
        DataBinding.FieldName = 'kontak'
        Width = 120
      end
      object cxGrid1DBTableView1telpon: TcxGridDBColumn
        Caption = 'Telpon'
        DataBinding.FieldName = 'telpon'
        Width = 123
      end
      object cxGrid1DBTableView1fax: TcxGridDBColumn
        Caption = 'Fax'
        DataBinding.FieldName = 'fax'
        Width = 122
      end
      object cxGrid1DBTableView1hp: TcxGridDBColumn
        Caption = 'HP'
        DataBinding.FieldName = 'hp'
        Width = 119
      end
      object cxGrid1DBTableView1title: TcxGridDBColumn
        DataBinding.FieldName = 'title'
        Visible = False
        Width = 44
      end
      object cxGrid1DBTableView1alamat: TcxGridDBColumn
        Caption = 'Alamat'
        DataBinding.FieldName = 'alamat'
        Width = 338
      end
      object cxGrid1DBTableView1alamat2: TcxGridDBColumn
        DataBinding.FieldName = 'alamat2'
        Visible = False
      end
      object cxGrid1DBTableView1kota: TcxGridDBColumn
        Caption = 'Kota'
        DataBinding.FieldName = 'kota'
        Width = 121
      end
      object cxGrid1DBTableView1kodepos: TcxGridDBColumn
        DataBinding.FieldName = 'kodepos'
        Visible = False
        Width = 56
      end
      object cxGrid1DBTableView1provinsi: TcxGridDBColumn
        Caption = 'Provinsi'
        DataBinding.FieldName = 'provinsi'
        Width = 104
      end
      object cxGrid1DBTableView1negara: TcxGridDBColumn
        Caption = 'Negara'
        DataBinding.FieldName = 'negara'
        Width = 97
      end
      object cxGrid1DBTableView1f_aktif: TcxGridDBColumn
        Caption = 'Aktif'
        DataBinding.FieldName = 'f_aktif'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
      end
      object cxGrid1DBTableView1email: TcxGridDBColumn
        Caption = 'Email'
        DataBinding.FieldName = 'email'
        Width = 221
      end
      object cxGrid1DBTableView1pembayaran: TcxGridDBColumn
        Caption = 'Pembayaran'
        DataBinding.FieldName = 'pembayaran'
        Width = 171
      end
      object cxGrid1DBTableView1direct: TcxGridDBColumn
        DataBinding.FieldName = 'direct'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object btnCetakExcel: TButton
    Left = 15
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Cetak Excel'
    TabOrder = 1
    OnClick = btnCetakExcelClick
  end
  object btnKeluar: TButton
    Left = 94
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 2
    OnClick = btnKeluarClick
  end
  object zqrSupp: TZReadOnlyQuery
    Connection = dm.zConn
    Active = True
    SQL.Strings = (
      'SELECT * FROM tbl_supplier ORDER BY nama')
    Params = <>
    Left = 205
    Top = 125
  end
  object dsSupp: TDataSource
    DataSet = zqrSupp
    Left = 235
    Top = 125
  end
end
