inherited frmInvoice: TfrmInvoice
  Left = 497
  Top = 210
  Width = 917
  Height = 702
  Caption = 'Invoice Penjualan'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    Width = 901
    Height = 56
    inherited lblJudul: TLabel
      Top = 15
      Width = 146
      Caption = 'Invoice Penjualan'
    end
  end
  inherited pnlTengah: TPanel
    Top = 56
    Width = 901
    Height = 530
    object cxLabel1: TcxLabel
      Left = 15
      Top = 64
      Caption = 'Customer'
    end
    object cxlCustomer: TcxLookupComboBox
      Left = 83
      Top = 62
      Properties.KeyFieldNames = 'kode'
      Properties.ListColumns = <
        item
          Caption = 'Nama'
          FieldName = 'nama'
        end
        item
          Caption = 'Kode'
          FieldName = 'kode'
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCust
      Properties.OnChange = cxlCustomerPropertiesChange
      TabOrder = 6
      Width = 446
    end
    object cxLabel2: TcxLabel
      Left = 15
      Top = 89
      Caption = 'Alamat Kirim'
    end
    object cxmAlmKirim: TcxMemo
      Left = 83
      Top = 89
      Lines.Strings = (
        '')
      TabOrder = 7
      Height = 46
      Width = 447
    end
    object cxGrid1: TcxGrid
      Left = 15
      Top = 190
      Width = 851
      Height = 200
      TabOrder = 13
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxTbl: TcxGridTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxColKodeBrg: TcxGridColumn
          Caption = 'Kode Brg.'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 89
        end
        object cxColDesk: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 356
        end
        object cxColQty: TcxGridColumn
          Caption = 'Qty.'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
        end
        object cxColHarga: TcxGridColumn
          Caption = 'Harga'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 101
        end
        object cxColSubTotal: TcxGridColumn
          Caption = 'Subtotal'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,#0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 123
        end
        object cxColPPn: TcxGridColumn
          Caption = 'PPn'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel3: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Invoice'
    end
    object cxtNoTrans: TcxTextEdit
      Left = 83
      Top = 8
      TabOrder = 0
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 15
      Top = 161
      Caption = 'No. Surat Jalan'
    end
    object cxlNoSJ: TcxLookupComboBox
      Left = 98
      Top = 158
      Properties.KeyFieldNames = 'no_bukti'
      Properties.ListColumns = <
        item
          Caption = 'No. Bukti'
          FieldName = 'no_bukti'
        end>
      Properties.ListSource = dsSJ
      TabOrder = 9
      Width = 446
    end
    object btnProses: TButton
      Left = 549
      Top = 155
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 8
      OnClick = btnProsesClick
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 398
      Caption = 'Keterangan'
    end
    object cxmKet: TcxMemo
      Left = 83
      Top = 398
      Lines.Strings = (
        '')
      TabOrder = 17
      Height = 46
      Width = 398
    end
    object cxdTanggal: TcxDateEdit
      Left = 83
      Top = 35
      TabOrder = 3
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 34
      Caption = 'Tanggal'
    end
    object cxChkPosting: TcxCheckBox
      Left = 208
      Top = 8
      Caption = 'Posting'
      State = cbsChecked
      TabOrder = 1
      Visible = False
      Width = 121
    end
    object cxtAkunCust: TcxTextEdit
      Left = 540
      Top = 65
      TabOrder = 4
      Visible = False
      Width = 121
    end
    object cxsTotal: TcxSpinEdit
      Left = 629
      Top = 395
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 14
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 560
      Top = 397
      Caption = 'Total'
    end
    object cxsTotPpn: TcxSpinEdit
      Left = 629
      Top = 425
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,#0.00'
      Properties.ReadOnly = True
      TabOrder = 18
      Width = 121
    end
    object cxlbl1: TcxLabel
      Left = 565
      Top = 427
      Caption = 'Total PPn'
    end
  end
  inherited pnlBawah: TPanel
    Top = 586
    Width = 901
    inherited btnKeluar: TButton
      Left = 682
      TabOrder = 5
    end
    inherited btnBaru: TButton
      Left = 15
      TabOrder = 0
      Visible = True
    end
    inherited btnEdit: TButton
      Left = 92
      TabOrder = 1
      Visible = True
    end
    inherited btnHapus: TButton
      Left = 248
      TabOrder = 3
      Visible = True
    end
    inherited btnBatal: TButton
      Left = 170
      Top = 25
      TabOrder = 2
      Visible = True
    end
    inherited btnSimpan: TButton
      Left = 605
      TabOrder = 4
    end
  end
  object zqrCust: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode, nama FROM tbl_customer'
      'WHERE f_aktif = 1'
      'ORDER BY nama ')
    Params = <>
    Left = 360
    Top = 20
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 330
    Top = 20
  end
  object zqrSO: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti FROM tbl_so_head'
      'WHERE kode_customer = :kode_customer;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 420
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsSO: TDataSource
    DataSet = zqrSO
    Left = 390
    Top = 20
  end
  object zqrEdit: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti FROM tbl_so_head'
      'WHERE kode_customer = :kode_customer;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 480
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsEdit: TDataSource
    DataSet = zqrEdit
    Left = 450
    Top = 20
  end
  object zqrSJ: TZReadOnlyQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT no_bukti '
      'FROM tbl_sj_head '
      'WHERE kode_customer = :kode_customer')
    Params = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
    Left = 515
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'kode_customer'
        ParamType = ptUnknown
      end>
  end
  object dsSJ: TDataSource
    DataSet = zqrSJ
    Left = 545
    Top = 20
  end
end
