inherited frmDaftarQuotation: TfrmDaftarQuotation
  Left = 419
  Top = 234
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Daftar Quotation'
  ClientHeight = 486
  ClientWidth = 913
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 913
    inherited lblJudul: TLabel
      Top = 11
      Width = 138
      Caption = 'Daftar Quotation'
    end
    object cxLabel1: TcxLabel
      Left = 9
      Top = 37
      Caption = 'Tanggal'
    end
    object cxdTgl1: TcxDateEdit
      Left = 60
      Top = 36
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 185
      Top = 37
      Caption = 'S/D'
    end
    object cxdTgl2: TcxDateEdit
      Left = 213
      Top = 36
      TabOrder = 3
      Width = 121
    end
    object btnProses: TButton
      Left = 342
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 4
      OnClick = btnProsesClick
    end
  end
  inherited pnlTengah: TPanel
    Width = 913
    Height = 344
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 911
      Height = 342
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarQuotation
        DataController.KeyFieldNames = 'no_quote'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnFilteredItemsList = True
        FilterRow.SeparatorWidth = 2
        FilterRow.Visible = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        object cxGridDBTableView1no_quote: TcxGridDBColumn
          Caption = 'No.Quotation'
          DataBinding.FieldName = 'no_quote'
          Width = 94
        end
        object cxGridDBTableView1tgl_trans: TcxGridDBColumn
          Caption = 'Tgl.Quotation'
          DataBinding.FieldName = 'tgl_trans'
          Width = 79
        end
        object cxGridDBTableView1kode_customer: TcxGridDBColumn
          Caption = 'Kode Customer'
          DataBinding.FieldName = 'kode_customer'
          Width = 120
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'nama'
          Width = 543
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsQuotationDet
        DataController.DetailKeyFieldNames = 'no_quote'
        DataController.MasterKeyFieldNames = 'no_quote'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        object cxGrid2DBTableView1no: TcxGridDBColumn
          Caption = 'No'
          DataBinding.FieldName = 'no'
          Width = 31
        end
        object cxGrid2DBTableView1kode_item: TcxGridDBColumn
          Caption = 'Kode Item'
          DataBinding.FieldName = 'kode_item'
          Width = 64
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 390
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
          Options.Editing = False
        end
        object cxGrid2DBTableView1unitid: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'unitid'
          Width = 64
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
    end
  end
  inherited pnlBawah: TPanel
    Top = 410
    Width = 913
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 822
      Top = 26
      Anchors = [akTop, akRight]
      Visible = False
    end
    inherited btnBaru: TButton
      Left = 15
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 95
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 175
      Visible = True
      OnClick = btnHapusClick
    end
    inherited btnSimpan: TButton
      Left = 445
      Top = 10
      Visible = False
    end
    object btnCetak: TButton
      Left = 253
      Top = 25
      Width = 113
      Height = 25
      Caption = '&Cetak Quotetion'
      TabOrder = 6
      OnClick = btnCetakClick
    end
  end
  object zqrDaftarQuotation: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_quote,a.tgl_trans,a.kode_customer,b.nama '
      
        'FROM tbl_quote_head a left join tbl_customer b on a.`kode_custom' +
        'er`=b.kode'
      'where a.tgl_trans between :tgl1 and :tgl2')
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
    Left = 470
    Top = 25
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
  object dsDaftarQuotation: TDataSource
    DataSet = zqrDaftarQuotation
    Left = 500
    Top = 35
  end
  object zQuotationDet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a. *,b.deskripsi FROM tbl_quote_det as a join tbl_barang ' +
        'as b on a.kode_item=b.kode')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsQuotationDet: TDataSource
    DataSet = zQuotationDet
    Left = 576
    Top = 20
  end
end
