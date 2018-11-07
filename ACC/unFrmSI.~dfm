inherited frmSI: TfrmSI
  Left = 628
  Top = 229
  Height = 647
  Caption = 'Invoice Penjualan'
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlAtas: TPanel
    inherited lblJudul: TLabel
      Width = 146
      Caption = 'Invoice Penjualan'
    end
  end
  inherited pnlTengah: TPanel
    Height = 465
    object cxLabel3: TcxLabel
      Left = 15
      Top = 10
      Caption = 'No. Invoice'
    end
    object cxtNoTrans: TcxTextEdit
      Left = 83
      Top = 8
      TabOrder = 1
      Width = 121
    end
    object cxChkPosting: TcxCheckBox
      Left = 208
      Top = 8
      Caption = 'Posting'
      TabOrder = 2
      Width = 121
    end
    object cxdTanggal: TcxDateEdit
      Left = 83
      Top = 35
      Properties.OnChange = cxdTanggalPropertiesChange
      TabOrder = 3
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 34
      Caption = 'Tanggal'
    end
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
      Properties.OnEditValueChanged = cxlCustomerPropertiesEditValueChanged
      TabOrder = 6
      Width = 446
    end
    object cxtAkunCust: TcxTextEdit
      Left = 545
      Top = 60
      TabOrder = 7
      Visible = False
      Width = 121
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
      Properties.CharCase = ecUpperCase
      TabOrder = 9
      Height = 46
      Width = 447
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
      TabOrder = 11
      Width = 446
    end
    object btnProses: TButton
      Left = 549
      Top = 155
      Width = 75
      Height = 25
      Caption = 'Proses'
      TabOrder = 12
      OnClick = btnProsesClick
    end
    object cxGrid1: TcxGrid
      Left = 15
      Top = 190
      Width = 761
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
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '#,##0.00'
            Kind = skSum
            Column = cxColSubTotal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        object cxColKodeBrg: TcxGridColumn
          Caption = 'Kode Brg.'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Width = 89
        end
        object cxColDesk: TcxGridColumn
          Caption = 'Deskripsi'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'kode'
          Properties.ListColumns = <
            item
              FieldName = 'deskripsi'
            end
            item
              FieldName = 'kode'
            end>
          Properties.ListSource = dsBrg
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
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 101
        end
        object cxColSubTotal: TcxGridColumn
          Caption = 'Subtotal'
          DataBinding.ValueType = 'Float'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '#,##0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taRightJustify
          Width = 123
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxTbl
      end
    end
    object cxLabel7: TcxLabel
      Left = 15
      Top = 398
      Caption = 'Keterangan'
    end
    object cxmKet: TcxMemo
      Left = 78
      Top = 399
      Lines.Strings = (
        '')
      TabOrder = 15
      Height = 46
      Width = 398
    end
  end
  inherited pnlBawah: TPanel
    Top = 531
    inherited btnSimpan: TButton
      Left = 10
    end
  end
  object dsCust: TDataSource
    DataSet = zqrCust
    Left = 330
    Top = 20
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
  object dsSO: TDataSource
    DataSet = zqrSO
    Left = 390
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
  object dsEdit: TDataSource
    DataSet = zqrEdit
    Left = 450
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
  object zBrg: TZQuery
    Connection = dm.zConn
    SQL.Strings = (
      'SELECT kode,deskripsi FROM tbl_barang ')
    Params = <>
    Left = 570
    Top = 20
  end
  object dsBrg: TDataSource
    DataSet = zBrg
    Left = 600
    Top = 20
  end
end
