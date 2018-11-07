inherited frmDaftarKPO: TfrmDaftarKPO
  Left = 320
  Top = 287
  VertScrollBar.Range = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Daftar Konfirmasi PO'
  ClientHeight = 485
  ClientWidth = 913
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 913
    inherited lblJudul: TLabel
      Top = 11
      Width = 172
      Caption = 'Daftar Konfirmasi PO'
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
    Height = 343
    Align = alClient
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 911
      Height = 341
      Align = alClient
      TabOrder = 0
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDaftarKPO
        DataController.KeyFieldNames = 'no_kpo'
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
        object cxGridDBTableView1no_kpo: TcxGridDBColumn
          Caption = 'No.Konfirmasi PO'
          DataBinding.FieldName = 'no_kpo'
          Width = 117
        end
        object cxGridDBTableView1no_quote: TcxGridDBColumn
          Caption = 'No.Quotation'
          DataBinding.FieldName = 'no_quote'
          Width = 111
        end
        object cxGridDBTableView1tgl_kpo: TcxGridDBColumn
          Caption = 'Tgl.Konfirmasi PO'
          DataBinding.FieldName = 'tgl_kpo'
          Width = 98
        end
        object cxGridDBTableView1kode_customer: TcxGridDBColumn
          Caption = 'Kode Customer'
          DataBinding.FieldName = 'kode_customer'
          Width = 83
        end
        object cxGridDBTableView1nama: TcxGridDBColumn
          Caption = 'Nama Customer'
          DataBinding.FieldName = 'nama'
          Width = 440
        end
      end
      object cxGrid2DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsKPODet
        DataController.DetailKeyFieldNames = 'no_kpo'
        DataController.MasterKeyFieldNames = 'no_kpo'
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
          Width = 37
        end
        object cxGrid2DBTableView1kode_item: TcxGridDBColumn
          Caption = 'Kode Item'
          DataBinding.FieldName = 'kode_item'
        end
        object cxGrid2DBTableView1deskripsi: TcxGridDBColumn
          Caption = 'Nama Barang'
          DataBinding.FieldName = 'deskripsi'
          Width = 436
        end
        object cxGrid2DBTableView1qty: TcxGridDBColumn
          Caption = 'Qty'
          DataBinding.FieldName = 'qty'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.DisplayFormat = '#,##0.00'
        end
        object cxGrid2DBTableView1unitid: TcxGridDBColumn
          Caption = 'Satuan'
          DataBinding.FieldName = 'unitid'
          Width = 51
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
    Top = 409
    Width = 913
    Align = alBottom
    inherited btnKeluar: TButton
      Left = 372
      Top = 24
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
      Left = 450
      Top = 5
      Visible = False
    end
    object btnCetak: TButton
      Left = 253
      Top = 25
      Width = 113
      Height = 25
      Caption = 'Cetak'
      TabOrder = 6
      OnClick = btnCetakClick
    end
  end
  object zqrDaftarKPO: TZReadOnlyQuery
    Connection = dm.zConn
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT a.no_kpo,a.no_quote,a.tgl_kpo,a.kode_customer,b.nama '
      
        'FROM tbl_kpo_head a left join tbl_customer b on a.kode_customer=' +
        'b.kode'
      'where a.tgl_kpo between :tgl1 and :tgl2')
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
  object dsDaftarKPO: TDataSource
    DataSet = zqrDaftarKPO
    Left = 500
    Top = 35
  end
  object zKPODet: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      
        'SELECT a. *,b.deskripsi FROM tbl_kpo_det as a join tbl_barang as' +
        ' b on a.kode_item=b.kode')
    Params = <>
    Left = 546
    Top = 25
  end
  object dsKPODet: TDataSource
    DataSet = zKPODet
    Left = 576
    Top = 20
  end
end
