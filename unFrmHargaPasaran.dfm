inherited frmHargaPasaran: TfrmHargaPasaran
  Left = 436
  Top = 256
  Width = 1009
  Height = 518
  Caption = 'Daftar Harga Pasaran'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 993
    inherited lblJudul: TLabel
      Width = 120
      Caption = 'Harga Pasaran'
    end
  end
  inherited pnlTengah: TPanel
    Width = 993
    Height = 335
    object cxNavigator1: TcxNavigator
      Left = 8
      Top = 294
      Width = 975
      Height = 25
      Control = cxGrid1
      InfoPanel.Font.Charset = DEFAULT_CHARSET
      InfoPanel.Font.Color = clDefault
      InfoPanel.Font.Height = -11
      InfoPanel.Font.Name = 'MS Sans Serif'
      InfoPanel.Font.Style = []
      TabOrder = 0
    end
    object cxGrid1: TcxGrid
      Left = 8
      Top = 7
      Width = 977
      Height = 282
      TabOrder = 1
      object cxTblHarga: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsSales
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        OptionsData.DeletingConfirmation = False
        object cxTblHargaid: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'id'
          Visible = False
          Width = 30
        end
        object cxTblHargakode_brg: TcxGridDBColumn
          Caption = 'Kode Barang'
          DataBinding.FieldName = 'kode_brg'
          Width = 77
        end
        object cxTblHargadeskripsi: TcxGridDBColumn
          Caption = 'Deskripsi'
          DataBinding.FieldName = 'kode_brg'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'deskripsi'
            end
            item
              FieldName = 'kode'
            end>
          Properties.ListSource = dsBrgBom
          Width = 312
        end
        object cxTblHargastart: TcxGridDBColumn
          Caption = 'Start Price'
          DataBinding.FieldName = 'start'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 103
        end
        object cxTblHargaend: TcxGridDBColumn
          Caption = 'End Price'
          DataBinding.FieldName = 'end'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 105
        end
        object cxTblHargajenis: TcxGridDBColumn
          Caption = 'Jenis'
          DataBinding.FieldName = 'jenis'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'LOCAL'
            'IMPORT')
          Width = 100
        end
        object cxTblHargaharga_include: TcxGridDBColumn
          Caption = 'Include (Rp)'
          DataBinding.FieldName = 'harga_include'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 128
        end
        object cxTblHargaharga_exclude: TcxGridDBColumn
          Caption = 'Exclude (Rp)'
          DataBinding.FieldName = 'harga_exclude'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,###.00'
          Width = 95
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTblHarga
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 401
    Width = 993
    inherited btnKeluar: TButton
      Left = 12
      Top = 17
    end
    inherited btnSimpan: TButton
      Left = 95
      Top = 17
      Visible = False
    end
  end
  object zTblSales: TZTable
    Connection = dm.zConn
    TableName = 'tbl_hargapasar'
    Left = 206
    Top = 12
  end
  object dsSales: TDataSource
    DataSet = zTblSales
    Left = 236
    Top = 12
  end
  object zqrBrgBom: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, deskripsi '
      'FROM tbl_barang '
      'WHERE f_aktif = 1 and LEFT(kode,1) in ('#39'B'#39','#39'C'#39','#39'D'#39')'
      'ORDER BY deskripsi')
    Params = <>
    Left = 306
    Top = 23
  end
  object dsBrgBom: TDataSource
    DataSet = zqrBrgBom
    Left = 336
    Top = 23
  end
end
