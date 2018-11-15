inherited frmHistoryMutasiValue: TfrmHistoryMutasiValue
  Left = 427
  Top = 159
  VertScrollBar.Range = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'History Mutasi Value'
  ClientHeight = 698
  ClientWidth = 1157
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 1157
    Height = 146
    object cxLabel1: TcxLabel
      Left = 14
      Top = 62
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 95
      Top = 61
      Properties.ReadOnly = True
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 220
      Top = 62
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 248
      Top = 61
      Properties.ReadOnly = True
      TabOrder = 3
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 14
      Top = 92
      Caption = 'Gudang'
    end
    object cxlGudang: TcxLookupComboBox
      Left = 95
      Top = 90
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          FieldName = 'nama'
        end>
      Properties.ListSource = dsGudang
      Properties.ReadOnly = False
      TabOrder = 5
      Width = 216
    end
    object cxLabel4: TcxLabel
      Left = 11
      Top = 121
      Caption = 'Saldo awal '
    end
    object cxsSA: TcxSpinEdit
      Left = 95
      Top = 120
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 7
      Width = 120
    end
    object cxLabel5: TcxLabel
      Left = 226
      Top = 121
      Caption = 'Value awal '
    end
    object cxSAV: TcxSpinEdit
      Left = 290
      Top = 120
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 120
    end
    object cxLabel6: TcxLabel
      Left = 416
      Top = 121
      Caption = 'Total Value awal '
    end
    object cxsTSAV: TcxSpinEdit
      Left = 505
      Top = 120
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 120
    end
  end
  inherited pnlTengah: TPanel
    Top = 146
    Width = 1157
    Height = 476
    Align = alClient
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1155
      Height = 474
      Align = alClient
      TabOrder = 0
      object cxtbKS: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsKS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Bands = <
          item
            Caption = 'Transaksi'
            Width = 369
          end
          item
            Caption = 'Masuk'
            Width = 264
          end
          item
            Caption = 'Keluar'
            Width = 250
          end
          item
            Caption = 'Saldo'
            Width = 264
          end>
        object cxtbKSColumn1: TcxGridDBBandedColumn
          Caption = 'No.Transaksi'
          DataBinding.FieldName = 'no_bukti'
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxtbKSColumn2: TcxGridDBBandedColumn
          Caption = 'Tgl.Transaksi'
          DataBinding.FieldName = 'tanggal'
          Width = 88
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxtbKSColumn3: TcxGridDBBandedColumn
          Caption = 'Tgl.Input'
          DataBinding.FieldName = 'tgl_input'
          Width = 137
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxtbKSColumn4: TcxGridDBBandedColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'unitid'
          Width = 52
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxtbKSColumn5: TcxGridDBBandedColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'masuk'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 78
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxtbKSColumn6: TcxGridDBBandedColumn
          Caption = 'Value'
          DataBinding.FieldName = 'vmasuk'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 94
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxtbKSColumn7: TcxGridDBBandedColumn
          Caption = 'Total'
          DataBinding.FieldName = 'vtmasuk'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          Width = 92
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxtbKSColumn8: TcxGridDBBandedColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'keluar'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 72
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxtbKSColumn9: TcxGridDBBandedColumn
          Caption = 'Value'
          DataBinding.FieldName = 'vkeluar'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 90
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxtbKSColumn10: TcxGridDBBandedColumn
          Caption = 'Total'
          DataBinding.FieldName = 'vtkeluar'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.EditFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 88
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxtbKSColumn11: TcxGridDBBandedColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'stok_akhir'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 85
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxtbKSColumn12: TcxGridDBBandedColumn
          Caption = 'Value'
          DataBinding.FieldName = 'vstok_akhir'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 102
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxtbKSColumn13: TcxGridDBBandedColumn
          Caption = 'Total'
          DataBinding.FieldName = 'vtstok_akhir'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          Properties.ValueType = vtFloat
          HeaderAlignmentHorz = taCenter
          Width = 77
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxtbKS
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 622
    Width = 1157
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 22
      Top = 20
    end
    inherited btnSimpan: TButton
      Left = 460
      Top = 15
      Visible = False
    end
  end
  object zqrKS: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM _ks2')
    Params = <>
    Left = 242
    Top = 10
  end
  object dsKS: TDataSource
    DataSet = zqrKS
    Left = 276
    Top = 10
  end
  object zGudang: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT * FROM tbl_gudang'
      'WHERE f_aktif = 1'
      'ORDER BY nama')
    Params = <>
    Left = 554
    Top = 50
  end
  object dsGudang: TDataSource
    DataSet = zGudang
    Left = 589
    Top = 50
  end
end
